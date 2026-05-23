import polib
from deep_translator import GoogleTranslator

FILE = "locale/vi/LC_MESSAGES/django.po"

po = polib.pofile(FILE)
translator = GoogleTranslator(source="en", target="vi")

SKIP = [
    "%", "{", "}", "http", "www", "django", "id=", "msgid"
]

def should_skip(text):
    if not text:
        return True
    return any(s in text for s in SKIP)

for entry in po:
    if entry.msgid and not entry.msgstr:
        try:
            if should_skip(entry.msgid):
                entry.msgstr = entry.msgid
            else:
                print(entry.msgid)
                entry.msgstr = translator.translate(entry.msgid)
        except:
            entry.msgstr = entry.msgid

po.save(FILE)

print("Translated:", FILE)