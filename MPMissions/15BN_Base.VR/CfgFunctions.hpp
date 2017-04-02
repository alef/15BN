class ALEF {
	tag = "ALEF";
	class _15BN_ {
	class 3DEN_Replace
	{
		description = "Replace this mission objects with merged template mission.";
	};
	class fixACREnuisance
	{
		description = "Reset ACRE desync message.";
	};
	class medicsAvailable
	{
		description = "Check if all medics are alive.";
	};
	class saveInventories
	{
		description = "Save 15BN inventories into players Arsenal on mission start.";
		postInit = 1;
	};
      	class preInit
      	{
      		description = "Things to do before mission inits.";
      		preInit = 1;
      	};
	class MCC_init
	{
		description = "Initialize MCC.";
	};
	class skipBriefingScreen
	{
		description = "Clicks on CONTINUE";
		preInit = 1;
	};
	class chestpack {
		description = "Add a chestpack possibility";
	};
	class dumpInventory {
		description = "Copy to clipboard a text version of the unit inventory";
	};
	};
};
