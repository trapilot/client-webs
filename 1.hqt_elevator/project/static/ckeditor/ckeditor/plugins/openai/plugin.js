CKEDITOR.plugins.add('openai', {

    icons: 'openai',

    init: function(editor) {

        editor.addCommand('openaiGenerateHTML', {
            exec: async function(editor) {
                editor.setReadOnly(true);
                
                try {
                    const formData = new FormData();

                    const div = document.createElement("div");
                    div.innerHTML = editor.getData();
                    const content = div.textContent.trim();

                    formData.append("content", content);
                    formData.append("provider", "openai");

                    const response = await fetch('/ai/generate-html/', {
                        method: 'POST',
                        headers: {
                            'X-CSRFToken': getCookie('csrftoken')
                        },
                        body: formData
                    });

                    const data = await response.json();

                    if (data.success) {
                        editor.setData(data.html);
                    } else if (data.error) {
                        prompt(data.error);
                    }
                } catch (e) {
                    console.error(e);
                    alert("AI generate failed");
                } finally {
                    editor.setReadOnly(false);
                }
            }
        });

        editor.ui.addButton('OpenAI', {
            label: 'Generate HTML by OpenAI',
            command: 'openaiGenerateHTML',
            toolbar: 'insert',
            icon: this.path + 'icons/ai.png'
        });
    }
});


function getCookie(name) {

    let cookieValue = null;

    if (document.cookie && document.cookie !== '') {

        const cookies = document.cookie.split(';');

        for (let cookie of cookies) {

            cookie = cookie.trim();

            if (cookie.substring(0, name.length + 1) === (name + '=')) {

                cookieValue = decodeURIComponent(
                    cookie.substring(name.length + 1)
                );

                break;
            }
        }
    }

    return cookieValue;
}