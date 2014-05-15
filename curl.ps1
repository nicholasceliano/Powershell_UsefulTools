function ParseCmd($params)
{
	ExecutecURL @($params);
}

function ExecutecURL($params)
{
	$cURLLocation = "C:\curl-7.34.0-win64\bin\curl.exe";
	
	$exec = $null;
	foreach ($p in $params)
	{ $exec = [string]::Concat($exec," $p") }
	
	$exec = [string]::Concat($cURLLocation, $exec);
	
	iex $exec;
}

ParseCmd $args;