Set objShell = CreateObject("WScript.Shell")

' Array of random search phrases
searchPhrases = Array("Fish", "skibidi toilet", "those who know", "sigma sigma", "thick of it")

' Loop to open multiple windows
For i = 1 To 69699696969699696 ' You can change 5 to the number of windows you want to open
    ' Wait for a random time between 5 and 15 seconds
    WScript.Sleep Int((15 - 5 + 1) * Rnd + 5) * 1000
    
    ' Pick a random search phrase from the array
    randomPhrase = searchPhrases(Int(Rnd * 5)) ' Random index for search phrase
    
    ' Encode spaces as %20 for URL
    encodedPhrase = Replace(randomPhrase, " ", "%20")
    
    ' Open Chrome window with the random search query and enforced size
    objShell.Run "chrome.exe --new-window --window-size=400,400 https://www.google.com/search?q=" & encodedPhrase
Next
