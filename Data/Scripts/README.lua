--[[
   _____                   _____
  / ____|                 |  __ \
 | (___   __ ___   _____  | |__) |___  ___  ___  _   _ _ __ ___ ___  ___
  \___ \ / _` \ \ / / _ \ |  _  // _ \/ __|/ _ \| | | | '__/ __/ _ \/ __|
  ____) | (_| |\ V /  __/ | | \ \  __/\__ \ (_) | |_| | | | (_|  __/\__ \
 |_____/ \__,_| \_/ \___| |_|  \_\___||___/\___/ \__,_|_|  \___\___||___/

-------------------------------------------------------------------------

The Save Resources component makes saving resources easier for creators. A data table can have a list of resources
used in the game that will be saved and loaded for the player. This can help with keeping a player's progression
between game sessions. For example, saving how many coins they have.

-----------------------------------------------------------------------------------------------------------------

====
NOTE
====

If the Dependent folders are empty in Project Content under Imported Content for this component, save and reload the project to fix it.

==========
How to use
==========

Make sure to enable Player Storage on the Game Settings object in the Hierarchy.

Add the Save Resources component to your hierarchy and modify the 2 custom properties on the root of the template.

- Resources

This custom property points to a data table that needs to contain the resources you want to save in player storage.
This allows you to be selective on which resources are saved.

- SaveDataKey

The key to use when saving the resources in player data. This needs to be unique.

--]]
