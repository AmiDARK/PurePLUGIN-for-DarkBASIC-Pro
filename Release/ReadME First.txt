PurePLUGIN Installation walkthrough:
------------------------------------

PurePLUGIN is a package developed to help in DarkBASIC Professional plugin development.
Don't forget that you need to own a copy of PureBASIC Version 4 (http://www.purebasic.com) and DarkBASIC Professional with upgrade 6.3+ (http://www.thegamecreators.com)
Here is the detail of content:

COMPILER:
---------
This directory contain the PUREPLUGIN.DLL you'll have to copy in the DarkBASIC Professional Compiler\Plugin-USER directory.
PUREPLUGIN.DLL can be distributed (and it's adviced to distribute it) with your plugins packages because your plugin will need this DLL to work.

HELP:
-----
This directory contain additional help on how to build your own TPC Plugin, how to edit the DLL string table and how to create enough empty string table resource for your TPC Plugin.

PurePLUGIN Development:
-----------------------
Here is the heart of the system. Some directories must not be modified or altered.
If you modify files from:
DBPro_Commands,
DBPro_Structures,
DBProPLUGIN-LICENSED_Commands,
DBProPLUGIN-LICENSED_Structures,
DBProPLUGIN-USER_Commands,
DBProPLUGIN-USER_Structures
your plugin may not properly.
These 6 directories contain all includes related to DarkBASIC Professional DLL to allow you access the DarkBASIC Professional command set.
You can open these files to see the names of each commands available but do not modify them!
I can't setup the list of all commands available because it can change with DarkBASIC Professional and PurePLUGIN upgrades and, it's a too massive list.
All available commandes are in these 3 directories :
DBPro_Commands: Native DarkBASIC Profesisonal command set.
DBProPLUGIN-LICENSED_Commands: Additional Plugin-Licensed supported DLL command set
DBProPLUGIN-USER_Commands: Additional Plugin-User supported DLL command set.

DarkBASIC Professional-SampleUSE:
---------------------------------
Contain DarkBASIC Professional source code showing the DBPro PurePLUGIN-SampleDLL in action.

PurePLUGIN-SampleDLL:
---------------------
Contain a TPC skeleton with some commands showing how to receive/send integer, floats, strings and how to use DarkBASIC Professional commands in your TPC Plugin.

String Tables:
--------------
Contain some free String tables you can use for your plugin.
Additional help in HELP directory show how to alter these string tables to make more free resources.

If you encounter problems or have a question, feel free to post it here:
http://forum.odyssey-creators.com
or send us an e-mail at : support@odyssey-creators.com

Note that for copyright reasons, we do not include the original PureBASIC TPC tutorial but, you may find additional help on it here:
http://www.thegamecreators.com/data/newsletter/newsletter_issue_22.html#17 

I hope you'll enjoy plugin development with PurePLUGIN.
Regards,
Fred
Odyssey-Creators


