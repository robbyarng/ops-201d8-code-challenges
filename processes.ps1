<#Create a Powershell script that performs these operations on separate lines. 
The overall script is not designed to operate holistically, but rather act 
as a reference for how to execute various interesting operations with the 
process family of Powershell commandlets. Clearly indicate with comments 
each component below.
---------------------------------------------------------------------------
Print to the terminal screen all active processes ordered by highest CPU 
time consumption at the top.
Print to the terminal screen all active processes ordered by highest Process 
Identification Number at the top.
Print to the terminal screen the top five active processes ordered by highest 
Working Set (WS(K)) at the top.
Start a browser process (such as Google Chrome or MS Edge) and have it open 
https://owasp.org/www-project-top-ten/.
Start the process Notepad ten times using a for loop.
Close all instances of the Notepad.
Kill a process by its Process Identification Number. Choose a process whose 
termination won’t destabilize the system, such as Google Chrome or MS Edge.#>

# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object Id -Descending

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5

# Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
Start-Process MicrosoftEdge "https://owasp.org/www-project-top-ten/"

# Start the process Notepad ten times using a for loop.
for ($i = 0; $i -lt 10; $i++) {
    Start-Process notepad
}

# Close all instances of the Notepad.
Get-Process notepad | Stop-Process

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
Get-Process MicrosoftEdge | Stop-Process
