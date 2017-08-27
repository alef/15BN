class _15BN_Base {
displayName = "15° Ricognitori Bande Nere";
class Istruzioni
{
	logicalOrder = 1;
	displayName = "15° Ricognitori Bande Nere";
	noImage = false;
	image = "img\15logo_BW.paa";
	description = "\
Benvenuto %11.<br/>\
Premi %3[ESC]%4 e scegli %3MANUALE OPERATIVO%4\
 per leggere queste ed ulteriori istruzioni.<br/>\
L'%3Arsenale Virtuale%4 è disponibile in base<br/>\
presso i cartelli delle squadre.\
";
	tip = "\
Buon divertimento!<br/>\
";
	arguments[] = {
		"name player"
	};
};
class ProntoSoccorso
{
	logicalOrder = 2;
	displayName = "Pronto Soccorso";
	noImage = false;
	image = "img\15logo_BW.paa";
	description = "\
%2 Il medico rimane al coperto, non troppo vicino ai muri, lontano dalle finestre<br/>\
%2 I feriti vanno bendati appena possibile da uno o più commilitoni contemporaneamente<br/>\
%2 I feriti vanno personalmente dal medico a farsi curare<br/>\
%2 I feriti incoscenti vengono portati in spalla o trascinati<br/>\
%2 Il paziente ignora ordini dallo SL o TL fino a fine della cura del medico<br/>\
%2 Il medico comunica a voce cosa sta facendo per farlo sapere sia al paziente che agli altri che stanno intorno<br/>\
%2 Nessuno deve posizionarsi tra il medico ed il paziente, il menu interazioni di ACE diventa altrimenti inutilizzabile<br/>\
%2 Il paziente può tornare a muoversi solo dopo che il medico glielo permette<br/>\
%2 Il paziente comunica allo SL o TL che è di nuovo ai suoi ordini<br/>\
%2 In caso di ferite multiple, il medico può ordinare ad altri di bendare il paziente<br/>\
%2 Nessuno inietta ad altri morfine o epinefrine senza l'approvazione del medico\
";
	tip = "\
<a underline='true' href='http://www.15bandenere.com/forum/index.php?threads/medico.450/'>Medico</a><br/>\
";
};
class Equipaggiamenti
{
	logicalOrder = 3;
	displayName = "Equipaggiamenti";
	noImage = false;
	image = "img\15logo_BW.paa";
	description = "\
Carica un equipaggiamento predefinito dall'Arsenale Virtuale.<br/>\
%2 Con la rotellina del mouse seleziona %3Arsenale Virtuale%4<br/>\
%2 Clicca %3CARICA%4<br/>\
%2 Seleziona un equipaggiamento marcato %3[=15BN=]%4<br/>\
%2 Clicca %3CARICA%4<br/>\
";
	tip = "\
Puoi anche salvare, ma la prossima volta verrà sovrascritto.<br/>\
";
};
class RadioTruppa
{
	logicalOrder = 4;
	displayName = "Radio Truppa";
	noImage = false;
	image = "img\15logo_BW.paa";
	description = "\
<img size='8' shadow='1' image='\idi\acre\addons\sys_prc343\Data\static\prc343_icon.paa' /><br/>\
AN/PRC-343, 16 canali / 800m<br/>\
%2 Alpha-1 sul canale 1<br/>\
%2 Alpha-2 sul canale 2<br/>\
%2 Alpha-3 sul canale 3<br/>\
In caso di ulteriori squadre, si decide in gioco\
"; 
};
class RadioComando
{
	logicalOrder = 5;
	displayName = "Radio Comando";
	noImage = false;
	image = "img\15logo_BW.paa";
	description = "\
<img size='8' shadow='1' image='\idi\acre\addons\sys_prc148\Data\static\prc148_icon.paa' /><br/>\
AN/PRC-148, 30-152MHz / 5 km<br/>\
%2 Comando squadra sul canale 1<br/>\
";
};
class IstruzioniRadio
{
	logicalOrder = 6;
	displayName = "Istruzioni Radio";
	noImage = false;
	image = "img\15logo_BW.paa";
	description = "\
Premi %3[%11]%4 per aprire la radio sullo schermo,%3[ESC]%4 per chiuderla.<br/>\
In alternativa, apri l'inventario e fai doppio clic sulla radio.<br/>\
Puoi girare le manopole cliccandoci col tasto destro o sinistro.<br/>\
Salvo tasti personalizzati, questi sono quelli più usati per le radio:<br/>\
%2 %3[%12]%4 trasmetti dalla prima<br/>\
%2 %3[%13]%4 trasmetti dalla seconda<br/>\
%2 %3[%14]%4 seleziona un'altra radio<br/>\
%2 %3[%15]%4 trasmetti dall'ultima selezionata<br/>\
";
	tip = "\
Per prima o seconda si intende l'ordine in cui sono state caricate nell'inventario personale.\
";
	arguments[] = {
		 "missionNamespace getVariable 'ALEF_15BN_Base_ACRE2_OpenRadio'"
		,"missionNamespace getVariable 'ALEF_15BN_Base_ACRE2_AltPTTKey1'"
		,"missionNamespace getVariable 'ALEF_15BN_Base_ACRE2_AltPTTKey2'"
		,"missionNamespace getVariable 'ALEF_15BN_Base_ACRE2_CycleRadio'"
		,"missionNamespace getVariable 'ALEF_15BN_Base_ACRE2_DefaultPTTKey'"
	};
};
class Forum
{
	logicalOrder = 7;
	displayName = "Forum";
	noImage = false;
	image = "img\15logo_BW.paa";
	description = "\
Clicca per aprire il thread dal tuo browser Internet.<br/>\
%2 <a underline='true' href='http://www.15bandenere.com/forum/index.php?threads/manuale-di-campo.2/'>Manuale di Campo</a><br/>\
%2 <a underline='true' href='http://www.15bandenere.com/forum/index.php?threads/determinare-la-distanza-di-un-bersaglio.5/'>Distanza bersaglio</a><br/>\
%2 <a underline='true' href='http://www.15bandenere.com/forum/index.php?threads/installazione-ed-utilizzo-di-acre-advanced-combat-radio-enviroment.4/'>ACRE</a><br/>\
%2 <a underline='true' href='http://www.15bandenere.com/forum/index.php?threads/base-per-altis-stratis-e-bornholm.408/'>Questa missione</a><br/>\
";
	tip = "\
Premi %3[Alt+Tab]%4 per tornare al gioco.<br/>\
";
};
};
