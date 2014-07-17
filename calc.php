<?
//
//  calc.php
//
//  Created by Mr. Gecko <GRMrGecko@gmail.com> on 10/31/12.
//  No Copyright Claimed. Public Domain.
//
while (1) {
	$command = readline("> ");
	try {
		if (preg_match("/^[0-9]+/i", $command) || !preg_match("/;/i", $command)) {
			$result = eval("return ".$command.";");
			echo $result."\n";
		} else {
			eval($command);
		}
	} catch (Exception $e) {
		echo "Error: ".$e->getMessage()."\n";
	}
}
?>