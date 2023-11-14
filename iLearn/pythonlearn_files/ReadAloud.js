
    var isReading = false;
    var paragraphs;
    var currentIndex = 0;

    function readAloud() {
    if (!isReading) {
        paragraphs = document.querySelectorAll('.card-body p');
    currentIndex = 0;

    // Start reading aloud
    readNextParagraph();
    } else {
        // Stop reading
        responsiveVoice.cancel();
    isReading = false;

    // Remove highlighting
    removeHighlight();
    }
}

    function readNextParagraph() {
    if (currentIndex < paragraphs.length) {
        var paragraph = paragraphs[currentIndex];
    var textToRead = paragraph.textContent;

    // Highlight the text
    highlightText(paragraph);

    // Start reading the current paragraph
    responsiveVoice.speak(textToRead, "UK English Female", {onend: onReadingEnd });
    isReading = true;
    } else {
        // Stop reading if all paragraphs have been read
        isReading = false;
    removeHighlight();
    }
}

    function highlightText(paragraph) {
        paragraph.innerHTML = paragraph.textContent.replace(/(\S+)/g, "<span class='highlight'>$1</span>");

    var words = paragraph.querySelectorAll('.highlight');
    words.forEach(word => {
        word.addEventListener('click', function () {
            responsiveVoice.speak(word.textContent);
        });
    });
}

    function removeHighlight() {
        paragraphs.forEach(paragraph => {
            paragraph.innerHTML = paragraph.textContent; // Restore original text
        });
}

    function onReadingEnd() {
        // Move to the next paragraph
        currentIndex++;
    readNextParagraph();
}
