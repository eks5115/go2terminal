tell application "Finder"
  set currentDir to (quoted form of POSIX path of (folder of the front window as alias))
end tell

tell application "Terminal"
  if it is running then
    do script "cd " & currentDir
  else
    activate
    do script "cd " & currentDir in window 1
  end if
end tell
