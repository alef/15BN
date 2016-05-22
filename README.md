15° Ricognitori "Bande Nere"
============================

- Never save as binarized ( menu "Attributes" , "General" , "Misc" , "Binarize the Scenario File" shall be off )
- All files are ignore by GIT by default ( see .gitignore  ). Use "-f" to force operations on files
- 'filter.version' only works under Unix or Cygwin
- [Forum discussion (in Italian)][1]

[1]: http://www.15bandenere.com/forum/index.php?threads/base-per-altis-stratis-e-bornholm.408/

Deployment
==========

1. Set the mission date to today
2. Set the binarization on
2. Export to multiplayer missions
3. Set the binarization back off
3. Rename the `15BN_Base.Altis.pbo` file to match `onLoadName` parameter in `description.ext` 
4. Stop the server and upload, modify `server.cfg` to match the new file name, start the server
