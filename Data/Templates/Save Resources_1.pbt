Assets {
  Id: 14127429389118144072
  Name: "Save Resources"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 413597166237325063
      Objects {
        Id: 413597166237325063
        Name: "TemplateBundleDummy"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 3186554482519760332
            }
          }
        }
      }
    }
    Assets {
      Id: 3186554482519760332
      Name: "Save Resources"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 7466951487174909617
          Objects {
            Id: 7466951487174909617
            Name: "Save Resources"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 3597282888580529562
            ChildIds: 6339815791690982515
            UnregisteredParameters {
              Overrides {
                Name: "cs:Resources"
                AssetReference {
                  Id: 4727722946745693187
                }
              }
              Overrides {
                Name: "cs:SaveDataKey"
                String: "res"
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
              FilePartitionName: "Save Resources"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 3597282888580529562
            Name: "README"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 7466951487174909617
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 1869679964714515330
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6339815791690982515
            Name: "Server"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 7466951487174909617
            ChildIds: 15008756496807022701
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
              Type: Server
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15008756496807022701
            Name: "Save_Resources_Server"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 6339815791690982515
            UnregisteredParameters {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 7466951487174909617
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 1510668951477628360
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
    }
    Assets {
      Id: 1510668951477628360
      Name: "Save_Resources_Server"
      PlatformAssetType: 3
      TextAsset {
        Text: "local ROOT = script:GetCustomProperty(\"Root\"):WaitForObject()\r\n\r\nlocal RESOURCES = require(ROOT:GetCustomProperty(\"Resources\"))\r\n\r\nlocal SAVE_DATA_KEY = ROOT:GetCustomProperty(\"SaveDataKey\")\r\n\r\nlocal function save_resources(player)\r\n\tlocal data = Storage.GetPlayerData(player)\r\n\r\n\tif(not data[SAVE_DATA_KEY]) then\r\n\t\tdata[SAVE_DATA_KEY] = {}\r\n\tend\r\n\r\n\tfor index, row in ipairs(RESOURCES) do\r\n\t\tdata[SAVE_DATA_KEY][row.ResourceKey] = player:GetResource(row.ResourceKey)\r\n\tend\r\n\r\n\tStorage.SetPlayerData(player, data)\r\nend\r\n\r\nlocal function load_resources(player)\r\n\tlocal data = Storage.GetPlayerData(player)\r\n\r\n\tfor index, row in ipairs(RESOURCES) do\r\n\t\tif(data[SAVE_DATA_KEY] ~= nil and data[SAVE_DATA_KEY][row.ResourceKey] ~= nil) then\r\n\t\t\tplayer:SetResource(row.ResourceKey, data[SAVE_DATA_KEY][row.ResourceKey])\r\n\t\tend\r\n\tend\r\nend\r\n\r\nGame.playerJoinedEvent:Connect(load_resources)\r\nGame.playerLeftEvent:Connect(save_resources)\r\n\r\nEvents.ConnectForPlayer(\"Resources.Save\", save_resources)"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Save Resources"
    }
    Assets {
      Id: 1869679964714515330
      Name: "README"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\n   _____                   _____\r\n  / ____|                 |  __ \\\r\n | (___   __ ___   _____  | |__) |___  ___  ___  _   _ _ __ ___ ___  ___\r\n  \\___ \\ / _` \\ \\ / / _ \\ |  _  // _ \\/ __|/ _ \\| | | | \'__/ __/ _ \\/ __|\r\n  ____) | (_| |\\ V /  __/ | | \\ \\  __/\\__ \\ (_) | |_| | | | (_|  __/\\__ \\\r\n |_____/ \\__,_| \\_/ \\___| |_|  \\_\\___||___/\\___/ \\__,_|_|  \\___\\___||___/\r\n\r\n-------------------------------------------------------------------------\r\n\r\nThe Save Resources component makes saving resources easier for creators. A data table can have a list of resources\r\nused in the game that will be saved and loaded for the player. This can help with keeping a player\'s progression\r\nbetween game sessions. For example, saving how many coins they have.\r\n\r\n-----------------------------------------------------------------------------------------------------------------\r\n\r\n==========\r\nHow to use\r\n==========\r\n\r\nMake sure to enable Player Storage on the Game Settings object in the Hierarchy.\r\n\r\nAdd the Save Resources component to your hierarchy and modify the 2 custom properties on the root of the template.\r\n\r\n- Resources\r\n\r\nThis custom property points to a data table that needs to contain the resources you want to save in player storage.\r\nThis allows you to be selective on which resources are saved.\r\n\r\n- SaveDataKey\r\n\r\nThe key to use when saving the resources in player data. This needs to be unique.\r\n\r\n--]]\r\n"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Save Resources"
    }
    Assets {
      Id: 4727722946745693187
      Name: "Resources"
      PlatformAssetType: 31
      VirtualFolderPath: "Save Resources"
      DataTableAsset {
        Columns {
          Name: "ResourceKey"
          Type: 3
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "48da7649d8f046c592838ac679540373"
    OwnerAccountId: "bd602d5201b04b3fbf7be10f59c8f974"
    OwnerName: "CoreAcademy"
  }
  SerializationVersion: 119
}
IncludesAllDependencies: true
