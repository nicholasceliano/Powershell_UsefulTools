function DisplayScriptsAndOptions()
{
	WriteScriptDesc "Remote Connection";
	WriteScriptAndOptions "rt" @("connection name");
	WriteScriptDesc "cURL Requests";
	WriteScriptAndOptions "curl" @("cURL parameter");
	WriteScriptDesc "Load programs on Startup";
	WriteScriptAndOptions "startup" @($null);
}

function WriteScriptDesc($desc)
{
	write-host "$desc" -backgroundcolor "darkcyan";
}

function WriteScriptAndOptions($script, $options)
{
	write-host "  $script " -nonewline;

	foreach ($o in $options)
	{
		if($o)
		{
			if ($o -eq $options[$($options.length - 1)])
			{ write-host "<$o> " -foregroundcolor "darkcyan"; }
			else
			{ write-host "<$o> " -foregroundcolor "darkcyan" -nonewline; }
		}
		else
		{ write-host "<no parameters> " -foregroundcolor "darkgray"; } 		
	}
}

DisplayScriptsAndOptions;