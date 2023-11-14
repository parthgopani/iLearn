
    var isReading = false;
    var utterance;

    // Function to read the text content of the page
    function readPageContent() {
          var pageContent = document.body.innerText;
    utterance = new SpeechSynthesisUtterance(pageContent);
    window.speechSynthesis.speak(utterance);
    isReading = true;
      }

    // Function to stop the speech synthesis
    function stopReading() {
        window.speechSynthesis.cancel();
    isReading = false;
      }

    // Function to be called when the button is clicked
    function onButtonClick() {
          if (isReading) {
        stopReading();
          } else {
        readPageContent();
          }
      }
