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
2. Turn the binarization off
3. Save and commit
4. Remove `mission.sqm` and check it out
5. Open from editor
6. Turn the binarization back on
7. Export to multiplayer missions
8. Rename the `15BN_Base.Altis.pbo` file to match `onLoadName` parameter in `description.ext` 
4. Stop the server and upload, modify `server.cfg` to match the new file name, start the server
