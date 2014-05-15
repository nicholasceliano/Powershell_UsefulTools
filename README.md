PowerShell Useful Tools
====

####Description
Contians various useful tools to improve effiency of day to day desktop tasks.

####Configuration

1. Locate Microsoft.PowerShell_profile.ps1(As default located @ C:/Users/user/Documents/WindowsPowerShell). Fill in the file with the following code:

	```
	Set-Location local path for script repository location(ex: C:\scripts);
	$env:PATH = $env:PATH + ".";
	```
2. Move scripts into script repository defined above.
3. Configure Scripts for local enviornment and personal use.
4. Open up PowerShell.exe and execute script commands as needed.

####Commands


<br /><b>c</b> - Lists all availble commands and displays a short descritpions of each.
<br /><b>curl <curl command></b> - Direct connection to cURL. Avoids having to move cmd to the directory each time I want to use it.
<br /><b>rt <server alias name></b> - Stores useful remote desktop connections and credentials. On command call will open up and log into remote server without any prompts.
<br /><b>startup</b> - Upon call, this checks if applications in a predefined list are running. If not it will open an instance of the program.