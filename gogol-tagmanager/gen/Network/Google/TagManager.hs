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
    -- * REST Resources

    -- ** Tag Manager API
      TagManager
    , tagManager
    , tagManagerURL

    -- ** tagmanager.accounts.containers.folders.entities.list
    , module Network.Google.API.TagManager.Accounts.Containers.Folders.Entities.List

    -- ** tagmanager.accounts.containers.macros.create
    , module Network.Google.API.TagManager.Accounts.Containers.MACros.Create

    -- ** tagmanager.accounts.containers.macros.delete
    , module Network.Google.API.TagManager.Accounts.Containers.MACros.Delete

    -- ** tagmanager.accounts.containers.macros.get
    , module Network.Google.API.TagManager.Accounts.Containers.MACros.Get

    -- ** tagmanager.accounts.containers.macros.list
    , module Network.Google.API.TagManager.Accounts.Containers.MACros.List

    -- ** tagmanager.accounts.containers.macros.update
    , module Network.Google.API.TagManager.Accounts.Containers.MACros.Update

    -- ** tagmanager.accounts.containers.move_folders.update
    , module Network.Google.API.TagManager.Accounts.Containers.Move_folders.Update

    -- ** tagmanager.accounts.containers.rules.create
    , module Network.Google.API.TagManager.Accounts.Containers.Rules.Create

    -- ** tagmanager.accounts.containers.rules.delete
    , module Network.Google.API.TagManager.Accounts.Containers.Rules.Delete

    -- ** tagmanager.accounts.containers.rules.get
    , module Network.Google.API.TagManager.Accounts.Containers.Rules.Get

    -- ** tagmanager.accounts.containers.rules.list
    , module Network.Google.API.TagManager.Accounts.Containers.Rules.List

    -- ** tagmanager.accounts.containers.rules.update
    , module Network.Google.API.TagManager.Accounts.Containers.Rules.Update

    -- ** tagmanager.accounts.containers.tags.create
    , module Network.Google.API.TagManager.Accounts.Containers.Tags.Create

    -- ** tagmanager.accounts.containers.tags.delete
    , module Network.Google.API.TagManager.Accounts.Containers.Tags.Delete

    -- ** tagmanager.accounts.containers.tags.get
    , module Network.Google.API.TagManager.Accounts.Containers.Tags.Get

    -- ** tagmanager.accounts.containers.tags.list
    , module Network.Google.API.TagManager.Accounts.Containers.Tags.List

    -- ** tagmanager.accounts.containers.tags.update
    , module Network.Google.API.TagManager.Accounts.Containers.Tags.Update

    -- ** tagmanager.accounts.containers.triggers.create
    , module Network.Google.API.TagManager.Accounts.Containers.Triggers.Create

    -- ** tagmanager.accounts.containers.triggers.delete
    , module Network.Google.API.TagManager.Accounts.Containers.Triggers.Delete

    -- ** tagmanager.accounts.containers.triggers.get
    , module Network.Google.API.TagManager.Accounts.Containers.Triggers.Get

    -- ** tagmanager.accounts.containers.triggers.list
    , module Network.Google.API.TagManager.Accounts.Containers.Triggers.List

    -- ** tagmanager.accounts.containers.triggers.update
    , module Network.Google.API.TagManager.Accounts.Containers.Triggers.Update

    -- ** tagmanager.accounts.containers.variables.create
    , module Network.Google.API.TagManager.Accounts.Containers.Variables.Create

    -- ** tagmanager.accounts.containers.variables.delete
    , module Network.Google.API.TagManager.Accounts.Containers.Variables.Delete

    -- ** tagmanager.accounts.containers.variables.get
    , module Network.Google.API.TagManager.Accounts.Containers.Variables.Get

    -- ** tagmanager.accounts.containers.variables.list
    , module Network.Google.API.TagManager.Accounts.Containers.Variables.List

    -- ** tagmanager.accounts.containers.variables.update
    , module Network.Google.API.TagManager.Accounts.Containers.Variables.Update

    -- ** tagmanager.accounts.containers.versions.create
    , module Network.Google.API.TagManager.Accounts.Containers.Versions.Create

    -- ** tagmanager.accounts.containers.versions.delete
    , module Network.Google.API.TagManager.Accounts.Containers.Versions.Delete

    -- ** tagmanager.accounts.containers.versions.get
    , module Network.Google.API.TagManager.Accounts.Containers.Versions.Get

    -- ** tagmanager.accounts.containers.versions.list
    , module Network.Google.API.TagManager.Accounts.Containers.Versions.List

    -- ** tagmanager.accounts.containers.versions.publish
    , module Network.Google.API.TagManager.Accounts.Containers.Versions.Publish

    -- ** tagmanager.accounts.containers.versions.restore
    , module Network.Google.API.TagManager.Accounts.Containers.Versions.Restore

    -- ** tagmanager.accounts.containers.versions.undelete
    , module Network.Google.API.TagManager.Accounts.Containers.Versions.Undelete

    -- ** tagmanager.accounts.containers.versions.update
    , module Network.Google.API.TagManager.Accounts.Containers.Versions.Update

    -- ** tagmanager.accounts.permissions.create
    , module Network.Google.API.TagManager.Accounts.Permissions.Create

    -- ** tagmanager.accounts.permissions.delete
    , module Network.Google.API.TagManager.Accounts.Permissions.Delete

    -- ** tagmanager.accounts.permissions.get
    , module Network.Google.API.TagManager.Accounts.Permissions.Get

    -- ** tagmanager.accounts.permissions.list
    , module Network.Google.API.TagManager.Accounts.Permissions.List

    -- ** tagmanager.accounts.permissions.update
    , module Network.Google.API.TagManager.Accounts.Permissions.Update

    -- * Types

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

    -- ** ListContainerVersionsResponse
    , ListContainerVersionsResponse
    , listContainerVersionsResponse
    , lcvrContainerVersionHeader
    , lcvrContainerVersion

    -- ** ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , ltrTriggers

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

    -- ** TeardownTag
    , TeardownTag
    , teardownTag
    , ttStopTeardownOnFailure
    , ttTagName

    -- ** CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoQuickPreview
    , ccvrvoNotes

    -- ** Alt
    , Alt (..)

    -- ** CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrContainerVersion

    -- ** SetupTag
    , SetupTag
    , setupTag
    , stTagName
    , stStopOnSetupFailure

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

    -- ** ListContainersResponse
    , ListContainersResponse
    , listContainersResponse
    , lcrContainers

    -- ** TagTagFiringOption
    , TagTagFiringOption (..)

    -- ** AccountAccessItemPermission
    , AccountAccessItemPermission (..)

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

    -- ** ConditionType
    , ConditionType (..)

    -- ** ListMacrosResponse
    , ListMacrosResponse
    , listMacrosResponse
    , lmrMacros

    -- ** ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , ltrTags

    -- ** ContainerItemEnabledBuiltInVariable
    , ContainerItemEnabledBuiltInVariable (..)

    -- ** Condition
    , Condition
    , condition
    , cType
    , cParameter

    -- ** ContainerAccess
    , ContainerAccess
    , containerAccess
    , caContainerId
    , caPermission

    -- ** TriggerType
    , TriggerType (..)

    -- ** ContainerItemUsageContext
    , ContainerItemUsageContext (..)

    -- ** FolderEntities
    , FolderEntities
    , folderEntities
    , feTag
    , feVariable
    , feTrigger

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

    -- ** Folder
    , Folder
    , folder
    , fContainerId
    , fFingerprint
    , fFolderId
    , fAccountId
    , fName

    -- ** Parameter
    , Parameter
    , parameter
    , pList
    , pValue
    , pMap
    , pKey
    , pType

    -- ** ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrFolders

    -- ** ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrVariables

    -- ** ListRulesResponse
    , ListRulesResponse
    , listRulesResponse
    , lrrRules

    -- ** PublishContainerVersionResponse
    , PublishContainerVersionResponse
    , publishContainerVersionResponse
    , pcvrCompilerError
    , pcvrContainerVersion

    -- ** ListAccountUsersResponse
    , ListAccountUsersResponse
    , listAccountUsersResponse
    , laurUserAccess

    -- ** ParameterType
    , ParameterType (..)

    -- ** UserAccess
    , UserAccess
    , userAccess
    , uaAccountAccess
    , uaAccountId
    , uaEmailAddress
    , uaContainerAccess
    , uaPermissionId

    -- ** AccountAccess
    , AccountAccess
    , accountAccess
    , aaPermission

    -- ** ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larAccounts

    -- ** ContainerAccessItemPermission
    , ContainerAccessItemPermission (..)

    -- ** Account
    , Account
    , account
    , aaShareData
    , aaFingerprint
    , aaAccountId
    , aaName
    ) where

import           Network.Google.API.TagManager.Accounts.Containers.Folders.Entities.List
import           Network.Google.API.TagManager.Accounts.Containers.MACros.Create
import           Network.Google.API.TagManager.Accounts.Containers.MACros.Delete
import           Network.Google.API.TagManager.Accounts.Containers.MACros.Get
import           Network.Google.API.TagManager.Accounts.Containers.MACros.List
import           Network.Google.API.TagManager.Accounts.Containers.MACros.Update
import           Network.Google.API.TagManager.Accounts.Containers.Move_folders.Update
import           Network.Google.API.TagManager.Accounts.Containers.Rules.Create
import           Network.Google.API.TagManager.Accounts.Containers.Rules.Delete
import           Network.Google.API.TagManager.Accounts.Containers.Rules.Get
import           Network.Google.API.TagManager.Accounts.Containers.Rules.List
import           Network.Google.API.TagManager.Accounts.Containers.Rules.Update
import           Network.Google.API.TagManager.Accounts.Containers.Tags.Create
import           Network.Google.API.TagManager.Accounts.Containers.Tags.Delete
import           Network.Google.API.TagManager.Accounts.Containers.Tags.Get
import           Network.Google.API.TagManager.Accounts.Containers.Tags.List
import           Network.Google.API.TagManager.Accounts.Containers.Tags.Update
import           Network.Google.API.TagManager.Accounts.Containers.Triggers.Create
import           Network.Google.API.TagManager.Accounts.Containers.Triggers.Delete
import           Network.Google.API.TagManager.Accounts.Containers.Triggers.Get
import           Network.Google.API.TagManager.Accounts.Containers.Triggers.List
import           Network.Google.API.TagManager.Accounts.Containers.Triggers.Update
import           Network.Google.API.TagManager.Accounts.Containers.Variables.Create
import           Network.Google.API.TagManager.Accounts.Containers.Variables.Delete
import           Network.Google.API.TagManager.Accounts.Containers.Variables.Get
import           Network.Google.API.TagManager.Accounts.Containers.Variables.List
import           Network.Google.API.TagManager.Accounts.Containers.Variables.Update
import           Network.Google.API.TagManager.Accounts.Containers.Versions.Create
import           Network.Google.API.TagManager.Accounts.Containers.Versions.Delete
import           Network.Google.API.TagManager.Accounts.Containers.Versions.Get
import           Network.Google.API.TagManager.Accounts.Containers.Versions.List
import           Network.Google.API.TagManager.Accounts.Containers.Versions.Publish
import           Network.Google.API.TagManager.Accounts.Containers.Versions.Restore
import           Network.Google.API.TagManager.Accounts.Containers.Versions.Undelete
import           Network.Google.API.TagManager.Accounts.Containers.Versions.Update
import           Network.Google.API.TagManager.Accounts.Permissions.Create
import           Network.Google.API.TagManager.Accounts.Permissions.Delete
import           Network.Google.API.TagManager.Accounts.Permissions.Get
import           Network.Google.API.TagManager.Accounts.Permissions.List
import           Network.Google.API.TagManager.Accounts.Permissions.Update
import           Network.Google.Prelude
import           Network.Google.TagManager.Types

{- $resources
TODO
-}

type TagManager =
     AccountsContainersRulesDeleteAPI :<|>
       AccountsContainersMACrosUpdateAPI
       :<|> AccountsPermissionsCreateAPI
       :<|> AccountsContainersMACrosCreateAPI
       :<|> AccountsContainersVersionsUndeleteAPI
       :<|> AccountsContainersRulesUpdateAPI
       :<|> AccountsContainersFoldersEntitiesListAPI
       :<|> AccountsContainersRulesListAPI
       :<|> AccountsContainersRulesCreateAPI
       :<|> AccountsContainersVersionsGetAPI
       :<|> AccountsContainersTriggersGetAPI
       :<|> AccountsContainersVersionsPublishAPI
       :<|> AccountsContainersVersionsListAPI
       :<|> AccountsContainersVariablesCreateAPI
       :<|> AccountsContainersTagsCreateAPI
       :<|> AccountsContainersVersionsRestoreAPI
       :<|> AccountsContainersTriggersListAPI
       :<|> AccountsContainersVersionsDeleteAPI
       :<|> AccountsContainersTriggersDeleteAPI
       :<|> AccountsContainersVariablesGetAPI
       :<|> AccountsPermissionsDeleteAPI
       :<|> AccountsContainersTagsGetAPI
       :<|> AccountsContainersVersionsUpdateAPI
       :<|> AccountsPermissionsGetAPI
       :<|> AccountsContainersTriggersUpdateAPI
       :<|> AccountsContainersVersionsCreateAPI
       :<|> AccountsContainersVariablesListAPI
       :<|> AccountsContainersTagsListAPI
       :<|> AccountsContainersTriggersCreateAPI
       :<|> AccountsContainersVariablesDeleteAPI
       :<|> AccountsContainersMove_foldersUpdateAPI
       :<|> AccountsContainersTagsDeleteAPI
       :<|> AccountsContainersMACrosGetAPI
       :<|> AccountsContainersVariablesUpdateAPI
       :<|> AccountsPermissionsListAPI
       :<|> AccountsContainersTagsUpdateAPI
       :<|> AccountsContainersMACrosListAPI
       :<|> AccountsPermissionsUpdateAPI
       :<|> AccountsContainersRulesGetAPI
       :<|> AccountsContainersMACrosDeleteAPI

tagManager :: Proxy TagManager
tagManager = Proxy
