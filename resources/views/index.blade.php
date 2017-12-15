<!-- https://github.com/muaz-khan/Translator -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Translator.js / WebRTC Voice & Text Translator</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <link rel="author" type="text/html" href="https://plus.google.com/+MuazKhan">
        <meta name="author" content="Muaz Khan">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <link rel="stylesheet" href="{{asset('public/css/style.css')}}">
        <!-- <link rel="stylesheet" href="https://cdn.webrtc-experiment.com/style.css"> -->

    </head>

    <body>
        <article>
        

        <section class="experiment">

       
        
        <section class="section-divider">
            <h2>J.A.R.V.I.S.</h2>
            <h6>Just A Rather Very Intelligent System</h6>
            <select id="convert-from" style="display: none">               
                <option>id (Indonesia)</option>               
            </select>
                
            <textarea id="textarea-from"></textarea><br>
            <!-- <button id="btn-convert-text" style="font-size: 16px;">Convert Your Text Input</button><br> -->
            <button id="btn-convert-voice" style="font-size: 16px;">Speak & Convert Your Voice</button>
            <button onclick="cekJawaban()" style="font-size: 16px;">Ask</button>
        </section>
        
        <section class="section-divider" style="display: none">
            <h2>Convert Into</h2><br><br>
            <select id="convert-into">
                        <option>en (English)</option>
                        <option>ar (العربية)</option>
                        <option>de (Deutsch)</option>
                        <option>fr (Français)</option>
                        <option>hi (हिंदी)</option>
                        <option>pt (Português)</option>
                        <option>ru (Русский)</option>
                        <option>es (Español)</option>
                        <option>tr (Türk)</option>
                        <option>nl (Nederlands)</option>
                        <option>it (Italiano)</option>
                        <option>pl (Polski)</option>
                        <option>ro (Român)</option>
                        <option>sv (Svensk)</option>
                        <option>vi (Việt)</option>
                        <option>th (ภาษาไทย)</option>
                        <option>zh-CN (中文简体)</option>
                        <option>zh-TW (中國傳統)</option>
                        <option>ko (한국의)</option>
                        <option>ja (日本人)</option>
                        <option>el (ελληνικά)</option>
                        <option>ts (தமிழ்)</option>
                        <option>hy (հայերեն)</option>
                        <option>bs (Bosanski)</option>
                        <option>ca (Català)</option>
                        <option>hr (Hrvatski)</option>
                        <option>dq (Dansk)</option>
                        <option>eo (Esperanto)</option>
                        <option>fi (Suomalainen)</option>
                        <option>ht (Haian kreyòl)</option>
                        <option>hu (Magyar)</option>
                        <option>is (Icelandic)</option>
                        <option>id (Indonesia)</option>
                        <option>la (Latinum)</option>
                        <option>lv (Latvijas)</option>
                        <option>mk (Македонски)</option>
                        <option>no (Norsk)</option>
                        <option>sr (Српски)</option>
                        <option>sk (Slovenský)</option>
                        <option>sw (Kiswahili)</option>
                        <option>cy (Cymraeg)</option>
                    </select>
            
            <br><br>
            <textarea id="textarea-to" disabled style="background: #f9f9f9!important;border: 1px solid #f7f1f1;cursor: not-allowed;" title="Output! ReadOnly!"></textarea>

            <br>

            <input type="checkbox" id="robot-voice" title="A client-side robot that can speak your voice in target language!" style="vertical-align: middle;">

            <label for="robot-voice" style="vertical-align: middle;" title="Use robot to play translated texts">Robot Speaker?</label>

            </section>

            </section>

           

        </article>

            <!-- <a href="https://github.com/muaz-khan/Translator" class="fork-left"></a> -->

           
    </body>

    <!-- <script src="https://cdn.webrtc-experiment.com/Translator.js"></script> -->
    <script src="{{asset('public/js/Translator.js')}}"></script>
    
    <script>
        var translator = new Translator();

        function getOption(language) {
            var option = document.createElement('option');
            option.value = language.language;
            if(language.name) {
                option.innerHTML = language.name + ' (' + language.language + ')'
            }
            else {
                option.innerHTML = language.language;
            }

            if(language.language == 'en') {
                option.selected = true;
            }

            return option;
        }

        var convertFrom = document.getElementById('convert-from');
        var convertInto = document.getElementById('convert-into');

        translator.getListOfLanguages(function(languages) {
            if(!(languages instanceof Array)) return;

            convertFrom.innerHTML = '';
            convertInto.innerHTML = '';

            languages.forEach(function(language) {
                var option = getOption(language);
                convertFrom.appendChild(option);

                var option2 = getOption(language);
                convertInto.appendChild(option2);
            });

            localStorageGetItem();

            var blockquote = document.getElementById('blockquote');
            blockquote.style.display = 'block';
            blockquote.innerHTML = 'You can translate your voice & texts among <strong class="highlight">' + languages.length + '</strong> languages.';
        });
        
        var textareaFrom = document.getElementById('textarea-from');
        var textareaTo = document.getElementById('textarea-to');
        
        function getLanguages() {
            var from = document.getElementById('convert-from').value.split(' (')[0];
            var to = document.getElementById('convert-into').value.split(' (')[0];
            
            return {
                from: from,
                to: to
            };
        }
        
        document.getElementById('btn-convert-voice').onclick = function() {
            this.disabled = true;
            this.innerHTML = 'Start Speaking!';

            var languages = getLanguages();
            
            translator.voiceToText(function(text) {
                textareaFrom.value = text;
                
                document.getElementById('btn-convert-text').onclick(true);
            }, languages.from);
        };
        
        document.getElementById('btn-convert-text').onclick = function(speakAsWell) {
            var languages = getLanguages();
            
            textareaTo.value = 'Converting into >> ' + document.getElementById('convert-into').value;
        
            translator.translateLanguage(textareaFrom.value, {
                from: languages.from,
                to: languages.to,
                callback: function(translatedText) {
                    textareaTo.value = translatedText;
                    localStorage.setItem('textarea-to', textareaTo.value);
                
                    if(speakAsWell !== true) return;
                    if (document.getElementById('robot-voice').checked) {
                        translator.speakTextUsingRobot(translatedText, {
                            workerPath: '{{asset("public/js/Robot-Speaker.js")}}',
                            onWorkerFileDownloadStart: function() {
                                console.log('Downloading worker file. It is about 2MB in size.');
                            },
                            onWorkerFileDownloadEnd: function() {
                                console.log('Worker file is downloaded.');
                            }
                        });
                    } else {
                        translator.speakTextUsingGoogleSpeaker({
                            textToSpeak: translatedText,
                            targetLanguage: languages.to,

                            // please use your own API key; if possible
                            api_key: 'AIzaSyCgB5hmFY74WYB-EoWkhr9cAGr6TiTHrEE'
                        });
                    }
                }
            });
        };
        
        document.getElementById('convert-from').onchange = function() {
            localStorage.setItem('convert-from', this.value);
        };
        
        document.getElementById('convert-into').onchange = function() {
            localStorage.setItem('convert-into', this.value);
        };
        
        textareaFrom.onchange = function() {
            localStorage.setItem('textarea-from', this.value);
        };
        
        textareaTo.onchange = function() {
            localStorage.setItem('textarea-to', this.value);
        };
        
        document.getElementById('robot-voice').onchange = function() {
            localStorage.setItem('robot-checked', this.checked + '');
        };

        function localStorageGetItem() {
            if(localStorage.getItem('convert-from')) {
                document.getElementById('convert-from').value = localStorage.getItem('convert-from');
            }
            
            if(localStorage.getItem('convert-into')) {
                document.getElementById('convert-into').value = localStorage.getItem('convert-into');
            }

            if(localStorage.getItem('textarea-from')) {
                textareaFrom.value = localStorage.getItem('textarea-from');
            }
            
            if(localStorage.getItem('textarea-to')) {
                textareaTo.value = localStorage.getItem('textarea-to');
            }
            
            if(localStorage.getItem('robot-checked')) {
                document.getElementById('robot-voice').checked = localStorage.getItem('robot-checked') === 'true';
            }
        }

        localStorageGetItem();
    </script>

    <!-- commits.js is useless for you! -->
    <script>
        window.useThisGithubPath = 'muaz-khan/Translator';
    </script>
    <script src="https://cdn.webrtc-experiment.com/commits.js" async> </script>

    <!-- Main Js -->
    <script type="text/javascript" src="{{asset('public/js/jquery-1.11.0.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/js/main.js')}}"></script>
    
</html>
