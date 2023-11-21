var isReading = false;
var paragraphs;
var currentIndex = 0;
var currentWordIndex = 0;

function readAloud() {
    if (!isReading) {
        paragraphs = document.querySelectorAll('.card-body p');
        currentIndex = 0;

        // Start reading aloud
        readNextParagraph();
    } else {
        // Stop reading
        window.speechSynthesis.cancel();
        isReading = false;

        // Remove highlighting
        removeHighlight();
    }
}

function readNextParagraph() {
    if (currentIndex < paragraphs.length) {
        var paragraph = paragraphs[currentIndex];
        var textToRead = paragraph.textContent;

        // Start reading the current paragraph after a short delay
        setTimeout(function () {
            speak(textToRead, function () {
                currentIndex++;
                readNextParagraph();
            });
            isReading = true;
        }, 500); // Adjust the delay as needed
    } else {
        // Stop reading if all paragraphs have been read
        isReading = false;
        removeHighlight();
    }
}

function speak(text, callback) {
    var words = text.split(' ');
    currentWordIndex = 0;

    function readNextWord() {
        if (currentWordIndex < words.length) {
            var word = words[currentWordIndex];
            speakWord(word, function () {
                currentWordIndex++;
                readNextWord();
            });
        } else {
            callback();
        }
    }

    readNextWord();
}

function speakWord(text, callback) {
    var utterance = new SpeechSynthesisUtterance(text);
  
    utterance.lang = 'en-GB'; // Set the language if needed
    utterance.onend = callback;
    window.speechSynthesis.speak(utterance);
}

function removeHighlight() {
    paragraphs.forEach(paragraph => {
        paragraph.innerHTML = paragraph.textContent; // Restore original text
    });
}

function highlightText(paragraph) {
    var words = paragraph.textContent.split(' ');
    paragraph.innerHTML = ''; // Clear the content

    words.forEach(word => {
        var span = document.createElement('span');
        span.className = 'highlight';
        span.textContent = word + ' ';
        paragraph.appendChild(span);

        span.addEventListener('click', function () {
            speakWord(word, function () {}); // Read the clicked word
        });
    });

    // Dynamically inject the required styles for highlighting
    injectHighlightStyles();
}

function injectHighlightStyles() {
    if (!document.getElementById('highlightStyles')) {
        var styleElement = document.createElement('style');
        styleElement.id = 'highlightStyles';
        styleElement.innerHTML = '.highlight { background-color: yellow; cursor: pointer; }';
        document.head.appendChild(styleElement);
    }
}

function onReadingEnd() {
    removeHighlight();
    readNextParagraph();
}
