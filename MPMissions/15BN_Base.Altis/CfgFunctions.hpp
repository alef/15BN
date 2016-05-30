class ALEF {
	tag = "ALEF";
	class _15BN_ {
	class medicsAvailable
	{
		description = "Check if all medics are alive.";
	};
	class saveTemplates
	{
		description = "Save templates into players Arsenal.";
	};
      	class preInit
      	{
      		description = "Things to do before mission inits.";
      		preInit = 1;
      	};
	class skipBriefingScreen
	{
		description = "Clicks on CONTINUE";
		preInit = 1;
	};
	class enterSafeZone
	{
		description = "Delete projectiles and add Arsenal";
	};
	class leaveSafeZone
	{
		description = "Cancel Arsenal and restore projectiles";
	};
	class hcSetGroup
	{
		description = "Units can be added to High Command";
	};
};
};
