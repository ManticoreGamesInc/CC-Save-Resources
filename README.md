<div align="center">

# Save Resources

[![Build Status](https://github.com/ManticoreGamesInc/Bootcamp-Save-Resources/workflows/CI/badge.svg)](https://github.com/ManticoreGamesInc/Bootcamp-Save-Resources/actions/workflows/ci.yml?query=workflow%3ACI%29)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/ManticoreGamesInc/Bootcamp-Save-Resources?style=plastic)

![Preview](/Screenshots/Main.png)

</div>

## Finding the Component

This component can be found under the **CoreAcademy** account on Community Content.

## Overview

The Save Resources component makes saving resources easier for creators. A data table can have a list of resources used in the game that will be saved and loaded for the player. This can help with keeping a player's progression between game sessions. For example, saving how many coins they have.

## How to use

Make sure to enable Player Storage on the Game Settings object in the Hierarchy.

	Add the Save Resources component to your hierarchy and modify the 2 custom properties on the root of the template.

- **Resources**

	This custom property points to a data table that needs to contain the resources you want to save in player storage.

	This allows you to be selective on which resources are saved.

- **SaveDataKey**

	The key to use when saving the resources in player data. This needs to be unique.
