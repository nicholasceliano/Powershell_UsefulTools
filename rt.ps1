$global:ComputerName = $null;
$global:User = $null;
$global:Pass = $null;

function ParseCmd($params) 
{    
	$paramCount = $params.length;
	
	if ($paramCount -eq 0)
	{
		DisplayAvailableConnections;
	}
	else
	{
		$connID = $params[0];
		switch($connID)
		{
			"con1" 	{ PopulateConnection "user" "username" "password"; }
			"con2"  { PopulateConnWithName "server" "USER"; }
			default { 	
						write-host "**INVALID SERVER" -foregroundcolor "red"; 
						[System.Threading.Thread]::Sleep(500);
						DisplayAvailableConnections; 
						return; 
					}
		}
				
		$silent = cmdkey.exe /generic:TERMSRV/$global:ComputerName /user:$global:User /pass:$global:Pass;
		$silent = mstsc.exe /v $global:ComputerName;
		write-host "Successful connection to $connID" -foregroundcolor "green";
	}
}

function PopulateConnWithName($computerName, $connName)
{
	$global:ComputerName = $computerName;
	
	switch($connName)
	{
		"GEMS" { USERCRED1; }
		"USER" { USERCRED2; }
		default { write-host "Interal Script Error" -foregroundcolor "red"; }
	}
}

function USERCRED1()
{
	$global:User = "username";
	$global:Pass = "password"
}

function USERCRED2()
{
	$global:User = "username";
	$global:Pass = "password";
}

function PopulateConnection($computerName, $user, $pass)
{
	$global:ComputerName = $computerName;
	$global:User = $user;
	$global:Pass = $pass;
}

function DisplayAvailableConnections()
{
	write-host "  con1 -- Server Description";
	write-host "  con2 -- Server Description";
}

ParseCmd $args;