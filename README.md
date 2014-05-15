PowerShell Useful Tools
====

<h4>Description</h4>
Contians various useful tools to improve effiency of day to day desktop tasks.

<h4>Configuration</h4>
<ul style="list-style-type:none;">
	<li>1. Locate Microsoft.PowerShell_profile.ps1(As default located @ C:/Users/user/Documents/WindowsPowerShell). Fill in the file with the following code:</li>
		<ul style="list-style-type:none;">
		<li>Set-Location <i>local path for script repository location(ex: C:\scripts\)</i></li>
		<li>$env:PATH = $env:PATH + "."</li>
		</ul>
	<li>2. Move scripts into script repository defined above.</li>
	<li>3. Configure Scripts for local enviornment and personal use.</li>
	<li>4. Open up PowerShell.exe and execute script commands as needed.</li>
</ul>

<h4>Commands</h4>
<ul style="list-style-type:none;">
	<li><b>c</b> - Lists all availble commands and displays a short descritpions of each.</li>
	<li><b>curl <curl command></b> - Direct connection to cURL. Avoids having to move cmd to the directory each time I want to use it.</li>
	<li><b>rt <server alias name></b> - Stores useful remote desktop connections and credentials. On command call will open up and log into remote server without any prompts.</li>
	<li><b>startup</b> - Upon call, this checks if applications in a predefined list are running. If not it will open an instance of the program.</li>
</ul>