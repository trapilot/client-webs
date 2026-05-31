import re
import polib
from deep_translator import GoogleTranslator

PO_FILE = "project/locale/vi/LC_MESSAGES/django.po"

with open(PO_FILE, "r", encoding="utf-8") as f:
    content = f.read()

content = content.replace(
    '"Plural-Forms: nplurals=1; plural=0;\\n"\n#:',
    '"Plural-Forms: nplurals=1; plural=0;\\n"\n\n#:'
)

with open(PO_FILE, "w", encoding="utf-8") as f:
    f.write(content)

po = polib.pofile(PO_FILE)

translator = GoogleTranslator(
    source="en",
    target="vi"
)

SKIP_WORDS = {
    "slug",
    "icon",
    "logo",
    "image",
    "thumbnail",
    "video",
    "url",
    "id",
    "uuid",
    "code",
    "file",
    "path",
    "active",
    "sitemap",
    "robots",
    "hero",
    "popup",
    "slider",
    "promo",
}

def should_translate(text: str) -> bool:
    t = text.strip().lower()

    if not t:
        return False
    
    if re.fullmatch(r"[\w_\-]+", t):
        if t in SKIP_WORDS:
            return False

    if "%(" in text or "%s" in text or "%d" in text:
        return False
    
    if "<" in text and ">" in text:
        return False

    return True

for entry in po:
    if entry.obsolete or entry.msgstr:
        continue

    if len(entry.msgid) > 200:
        continue

    if not should_translate(entry.msgid):
        print(f"⏭ skip: {entry.msgid}")
        continue
    
    try:
        translated = translator.translate(entry.msgid)

        leading_newlines = len(entry.msgid) - len(entry.msgid.lstrip("\n"))
        translated = translated.lstrip("\n")
        translated = ("\n" * leading_newlines) + translated

        entry.msgstr = translated
        print(f"✓ {entry.msgid} -> {translated}")
    except Exception as e:
        print(f"✗ {entry.msgid}: {e}")

po.save()