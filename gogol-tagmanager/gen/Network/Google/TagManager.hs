{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.TagManager
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for accessing Tag Manager accounts and containers.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference>
module Network.Google.TagManager
    (
    -- * Resources
      TagManager
    , AccountsAPI
    , ContainersAPI
    , RulesAPI
    , RulesList
    , RulesGet
    , RulesCreate
    , RulesDelete
    , RulesUpdate
    , VariablesAPI
    , VariablesList
    , VariablesGet
    , VariablesCreate
    , VariablesDelete
    , VariablesUpdate
    , FoldersAPI
    , EntitiesAPI
    , EntitiesList
    , TriggersAPI
    , TriggersList
    , TriggersGet
    , TriggersCreate
    , TriggersDelete
    , TriggersUpdate
    , VersionsAPI
    , VersionsList
    , VersionsUndelete
    , VersionsRestore
    , VersionsGet
    , VersionsCreate
    , VersionsDelete
    , VersionsUpdate
    , VersionsPublish
    , Move_foldersAPI
    , Move_foldersUpdate
    , MacrosAPI
    , MacrosList
    , MacrosGet
    , MacrosCreate
    , MacrosDelete
    , MacrosUpdate
    , TagsAPI
    , TagsList
    , TagsGet
    , TagsCreate
    , TagsDelete
    , TagsUpdate
    , PermissionsAPI
    , PermissionsList
    , PermissionsGet
    , PermissionsCreate
    , PermissionsDelete
    , PermissionsUpdate

    -- * Types

    -- ** Account
    , Account
    , account
    , aShareData
    , aFingerprint
    , aAccountId
    , aName

    -- ** AccountAccess
    , AccountAccess
    , accountAccess
    , aaPermission

    -- ** AccountAccessItemPermission
    , AccountAccessItemPermission (..)

    -- ** Condition
    , Condition
    , condition
    , cType
    , cParameter

    -- ** ConditionType
    , ConditionType (..)

    -- ** Container
    , Container
    , container
    , cPublicId
    , cUsageContext
    , cEnabledBuiltInVariable
    , cContainerId
    , cFingerprint
    , cTimeZoneCountryId
    , cAccountId
    , cDomainName
    , cName
    , cNotes
    , cTimeZoneId

    -- ** ContainerAccess
    , ContainerAccess
    , containerAccess
    , caContainerId
    , caPermission

    -- ** ContainerAccessItemPermission
    , ContainerAccessItemPermission (..)

    -- ** ContainerItemEnabledBuiltInVariable
    , ContainerItemEnabledBuiltInVariable (..)

    -- ** ContainerItemUsageContext
    , ContainerItemUsageContext (..)

    -- ** ContainerVersion
    , ContainerVersion
    , containerVersion
    , cvMacro
    , cvTag
    , cvContainerId
    , cvFingerprint
    , cvContainerVersionId
    , cvRule
    , cvFolder
    , cvVariable
    , cvAccountId
    , cvName
    , cvContainer
    , cvDeleted
    , cvTrigger
    , cvNotes

    -- ** ContainerVersionHeader
    , ContainerVersionHeader
    , containerVersionHeader
    , cvhNumTags
    , cvhNumMacros
    , cvhContainerId
    , cvhContainerVersionId
    , cvhAccountId
    , cvhName
    , cvhNumTriggers
    , cvhDeleted
    , cvhNumRules
    , cvhNumVariables

    -- ** CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoQuickPreview
    , ccvrvoNotes

    -- ** CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrContainerVersion

    -- ** Folder
    , Folder
    , folder
    , fContainerId
    , fFingerprint
    , fFolderId
    , fAccountId
    , fName

    -- ** FolderEntities
    , FolderEntities
    , folderEntities
    , feTag
    , feVariable
    , feTrigger

    -- ** ListAccountUsersResponse
    , ListAccountUsersResponse
    , listAccountUsersResponse
    , laurUserAccess

    -- ** ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larAccounts

    -- ** ListContainerVersionsResponse
    , ListContainerVersionsResponse
    , listContainerVersionsResponse
    , lcvrContainerVersionHeader
    , lcvrContainerVersion

    -- ** ListContainersResponse
    , ListContainersResponse
    , listContainersResponse
    , lcrContainers

    -- ** ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrFolders

    -- ** ListMacrosResponse
    , ListMacrosResponse
    , listMacrosResponse
    , lmrMacros

    -- ** ListRulesResponse
    , ListRulesResponse
    , listRulesResponse
    , lrrRules

    -- ** ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , ltrTags

    -- ** ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , ltrTriggers

    -- ** ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrVariables

    -- ** Macro
    , Macro
    , macro
    , macScheduleEndMs
    , macParentFolderId
    , macContainerId
    , macDisablingRuleId
    , macFingerprint
    , macAccountId
    , macName
    , macEnablingRuleId
    , macMacroId
    , macType
    , macScheduleStartMs
    , macNotes
    , macParameter

    -- ** Parameter
    , Parameter
    , parameter
    , pList
    , pValue
    , pMap
    , pKey
    , pType

    -- ** ParameterType
    , ParameterType (..)

    -- ** PublishContainerVersionResponse
    , PublishContainerVersionResponse
    , publishContainerVersionResponse
    , pcvrCompilerError
    , pcvrContainerVersion

    -- ** Rule
    , Rule
    , rule
    , rContainerId
    , rFingerprint
    , rRuleId
    , rAccountId
    , rName
    , rNotes
    , rCondition

    -- ** SetupTag
    , SetupTag
    , setupTag
    , stTagName
    , stStopOnSetupFailure

    -- ** Tag
    , Tag
    , tag
    , tagBlockingTriggerId
    , tagScheduleEndMs
    , tagParentFolderId
    , tagLiveOnly
    , tagContainerId
    , tagPriority
    , tagTeardownTag
    , tagFingerprint
    , tagTagFiringOption
    , tagAccountId
    , tagTagId
    , tagName
    , tagBlockingRuleId
    , tagSetupTag
    , tagFiringTriggerId
    , tagType
    , tagScheduleStartMs
    , tagNotes
    , tagFiringRuleId
    , tagParameter

    -- ** TagTagFiringOption
    , TagTagFiringOption (..)

    -- ** TeardownTag
    , TeardownTag
    , teardownTag
    , ttStopTeardownOnFailure
    , ttTagName

    -- ** Trigger
    , Trigger
    , trigger
    , tCustomEventFilter
    , tParentFolderId
    , tContainerId
    , tTriggerId
    , tCheckValidation
    , tFingerprint
    , tAutoEventFilter
    , tUniqueTriggerId
    , tAccountId
    , tName
    , tInterval
    , tEnableAllVideos
    , tWaitForTagsTimeout
    , tLimit
    , tFilter
    , tType
    , tVideoPercentageList
    , tEventName
    , tWaitForTags

    -- ** TriggerType
    , TriggerType (..)

    -- ** UserAccess
    , UserAccess
    , userAccess
    , uaAccountAccess
    , uaAccountId
    , uaEmailAddress
    , uaContainerAccess
    , uaPermissionId

    -- ** Variable
    , Variable
    , variable
    , vScheduleEndMs
    , vParentFolderId
    , vContainerId
    , vFingerprint
    , vVariableId
    , vAccountId
    , vDisablingTriggerId
    , vName
    , vType
    , vScheduleStartMs
    , vNotes
    , vEnablingTriggerId
    , vParameter
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

{- $resources
TODO
-}

type TagManager = AccountsAPI

type AccountsAPI = ContainersAPI :<|> PermissionsAPI

type ContainersAPI =
     RulesAPI :<|> VariablesAPI :<|> FoldersAPI :<|>
       TriggersAPI
       :<|> VersionsAPI
       :<|> Move_foldersAPI
       :<|> MacrosAPI
       :<|> TagsAPI

type RulesAPI =
     RulesList :<|> RulesGet :<|> RulesCreate :<|>
       RulesDelete
       :<|> RulesUpdate

-- | Lists all GTM Rules of a Container.
type RulesList =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "rules" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ListRulesResponse

-- | Gets a GTM Rule.
type RulesGet =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "rules" :>
                   Capture "ruleId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Rule

-- | Creates a GTM Rule.
type RulesCreate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "rules" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Rule

-- | Deletes a GTM Rule.
type RulesDelete =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "rules" :>
                   Capture "ruleId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a GTM Rule.
type RulesUpdate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "rules" :>
                   Capture "ruleId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fingerprint" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Put '[JSON] Rule

type VariablesAPI =
     VariablesList :<|> VariablesGet :<|> VariablesCreate
       :<|> VariablesDelete
       :<|> VariablesUpdate

-- | Lists all GTM Variables of a Container.
type VariablesList =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "variables" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ListVariablesResponse

-- | Gets a GTM Variable.
type VariablesGet =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "variables" :>
                   Capture "variableId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Variable

-- | Creates a GTM Variable.
type VariablesCreate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "variables" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Variable

-- | Deletes a GTM Variable.
type VariablesDelete =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "variables" :>
                   Capture "variableId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a GTM Variable.
type VariablesUpdate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "variables" :>
                   Capture "variableId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fingerprint" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Put '[JSON] Variable

type FoldersAPI = EntitiesAPI

type EntitiesAPI = EntitiesList

-- | List all entities in a GTM Folder.
type EntitiesList =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "folders" :>
                   Capture "folderId" Text :>
                     "entities" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] FolderEntities

type TriggersAPI =
     TriggersList :<|> TriggersGet :<|> TriggersCreate
       :<|> TriggersDelete
       :<|> TriggersUpdate

-- | Lists all GTM Triggers of a Container.
type TriggersList =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "triggers" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ListTriggersResponse

-- | Gets a GTM Trigger.
type TriggersGet =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "triggers" :>
                   Capture "triggerId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Trigger

-- | Creates a GTM Trigger.
type TriggersCreate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "triggers" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Trigger

-- | Deletes a GTM Trigger.
type TriggersDelete =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "triggers" :>
                   Capture "triggerId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a GTM Trigger.
type TriggersUpdate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "triggers" :>
                   Capture "triggerId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fingerprint" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Put '[JSON] Trigger

type VersionsAPI =
     VersionsList :<|> VersionsUndelete :<|>
       VersionsRestore
       :<|> VersionsGet
       :<|> VersionsCreate
       :<|> VersionsDelete
       :<|> VersionsUpdate
       :<|> VersionsPublish

-- | Lists all Container Versions of a GTM Container.
type VersionsList =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "headers" Bool :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] ListContainerVersionsResponse

-- | Undeletes a Container Version.
type VersionsUndelete =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     "undelete" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] ContainerVersion

-- | Restores a Container Version. This will overwrite the container\'s
-- current configuration (including its macros, rules and tags). The
-- operation will not have any effect on the version that is being served
-- (i.e. the published version).
type VersionsRestore =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     "restore" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] ContainerVersion

-- | Gets a Container Version.
type VersionsGet =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] ContainerVersion

-- | Creates a Container Version.
type VersionsCreate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Post '[JSON] CreateContainerVersionResponse

-- | Deletes a Container Version.
type VersionsDelete =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a Container Version.
type VersionsUpdate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fingerprint" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Put '[JSON] ContainerVersion

-- | Publishes a Container Version.
type VersionsPublish =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     "publish" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fingerprint" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON]
                                         PublishContainerVersionResponse

type Move_foldersAPI = Move_foldersUpdate

-- | Moves entities to a GTM Folder.
type Move_foldersUpdate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "move_folders" :>
                   Capture "folderId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "triggerId" Text :>
                           QueryParam "userIp" Text :>
                             QueryParam "variableId" Text :>
                               QueryParam "tagId" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Text :> Put '[JSON] ()

type MacrosAPI =
     MacrosList :<|> MacrosGet :<|> MacrosCreate :<|>
       MacrosDelete
       :<|> MacrosUpdate

-- | Lists all GTM Macros of a Container.
type MacrosList =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "macros" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ListMacrosResponse

-- | Gets a GTM Macro.
type MacrosGet =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "macros" :>
                   Capture "macroId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Macro

-- | Creates a GTM Macro.
type MacrosCreate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "macros" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Macro

-- | Deletes a GTM Macro.
type MacrosDelete =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "macros" :>
                   Capture "macroId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a GTM Macro.
type MacrosUpdate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "macros" :>
                   Capture "macroId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fingerprint" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Put '[JSON] Macro

type TagsAPI =
     TagsList :<|> TagsGet :<|> TagsCreate :<|> TagsDelete
       :<|> TagsUpdate

-- | Lists all GTM Tags of a Container.
type TagsList =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ListTagsResponse

-- | Gets a GTM Tag.
type TagsGet =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   Capture "tagId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Tag

-- | Creates a GTM Tag.
type TagsCreate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Tag

-- | Deletes a GTM Tag.
type TagsDelete =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   Capture "tagId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a GTM Tag.
type TagsUpdate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   Capture "tagId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fingerprint" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Put '[JSON] Tag

type PermissionsAPI =
     PermissionsList :<|> PermissionsGet :<|>
       PermissionsCreate
       :<|> PermissionsDelete
       :<|> PermissionsUpdate

-- | List all users that have access to the account along with Account and
-- Container Permissions granted to each of them.
type PermissionsList =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "permissions" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] ListAccountUsersResponse

-- | Gets a user\'s Account & Container Permissions.
type PermissionsGet =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] UserAccess

-- | Creates a user\'s Account & Container Permissions.
type PermissionsCreate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "permissions" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] UserAccess

-- | Removes a user from the account, revoking access to it and all of its
-- containers.
type PermissionsDelete =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates a user\'s Account & Container Permissions.
type PermissionsUpdate =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "permissions" :>
               Capture "permissionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Put '[JSON] UserAccess
