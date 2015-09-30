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
    -- * API
      TagManagerAPI
    , tagManagerAPI
    , tagManagerURL

    -- * Service Methods

    -- * REST Resources

    -- ** TagmanagerAccountsContainersCreate
    , module TagManager.Accounts.Containers.Create

    -- ** TagmanagerAccountsContainersDelete
    , module TagManager.Accounts.Containers.Delete

    -- ** TagmanagerAccountsContainersFoldersCreate
    , module TagManager.Accounts.Containers.Folders.Create

    -- ** TagmanagerAccountsContainersFoldersDelete
    , module TagManager.Accounts.Containers.Folders.Delete

    -- ** TagmanagerAccountsContainersFoldersEntitiesList
    , module TagManager.Accounts.Containers.Folders.Entities.List

    -- ** TagmanagerAccountsContainersFoldersGet
    , module TagManager.Accounts.Containers.Folders.Get

    -- ** TagmanagerAccountsContainersFoldersList
    , module TagManager.Accounts.Containers.Folders.List

    -- ** TagmanagerAccountsContainersFoldersUpdate
    , module TagManager.Accounts.Containers.Folders.Update

    -- ** TagmanagerAccountsContainersGet
    , module TagManager.Accounts.Containers.Get

    -- ** TagmanagerAccountsContainersList
    , module TagManager.Accounts.Containers.List

    -- ** TagmanagerAccountsContainersMACrosCreate
    , module TagManager.Accounts.Containers.MACros.Create

    -- ** TagmanagerAccountsContainersMACrosDelete
    , module TagManager.Accounts.Containers.MACros.Delete

    -- ** TagmanagerAccountsContainersMACrosGet
    , module TagManager.Accounts.Containers.MACros.Get

    -- ** TagmanagerAccountsContainersMACrosList
    , module TagManager.Accounts.Containers.MACros.List

    -- ** TagmanagerAccountsContainersMACrosUpdate
    , module TagManager.Accounts.Containers.MACros.Update

    -- ** TagmanagerAccountsContainersMove_foldersUpdate
    , module TagManager.Accounts.Containers.Move_folders.Update

    -- ** TagmanagerAccountsContainersRulesCreate
    , module TagManager.Accounts.Containers.Rules.Create

    -- ** TagmanagerAccountsContainersRulesDelete
    , module TagManager.Accounts.Containers.Rules.Delete

    -- ** TagmanagerAccountsContainersRulesGet
    , module TagManager.Accounts.Containers.Rules.Get

    -- ** TagmanagerAccountsContainersRulesList
    , module TagManager.Accounts.Containers.Rules.List

    -- ** TagmanagerAccountsContainersRulesUpdate
    , module TagManager.Accounts.Containers.Rules.Update

    -- ** TagmanagerAccountsContainersTagsCreate
    , module TagManager.Accounts.Containers.Tags.Create

    -- ** TagmanagerAccountsContainersTagsDelete
    , module TagManager.Accounts.Containers.Tags.Delete

    -- ** TagmanagerAccountsContainersTagsGet
    , module TagManager.Accounts.Containers.Tags.Get

    -- ** TagmanagerAccountsContainersTagsList
    , module TagManager.Accounts.Containers.Tags.List

    -- ** TagmanagerAccountsContainersTagsUpdate
    , module TagManager.Accounts.Containers.Tags.Update

    -- ** TagmanagerAccountsContainersTriggersCreate
    , module TagManager.Accounts.Containers.Triggers.Create

    -- ** TagmanagerAccountsContainersTriggersDelete
    , module TagManager.Accounts.Containers.Triggers.Delete

    -- ** TagmanagerAccountsContainersTriggersGet
    , module TagManager.Accounts.Containers.Triggers.Get

    -- ** TagmanagerAccountsContainersTriggersList
    , module TagManager.Accounts.Containers.Triggers.List

    -- ** TagmanagerAccountsContainersTriggersUpdate
    , module TagManager.Accounts.Containers.Triggers.Update

    -- ** TagmanagerAccountsContainersUpdate
    , module TagManager.Accounts.Containers.Update

    -- ** TagmanagerAccountsContainersVariablesCreate
    , module TagManager.Accounts.Containers.Variables.Create

    -- ** TagmanagerAccountsContainersVariablesDelete
    , module TagManager.Accounts.Containers.Variables.Delete

    -- ** TagmanagerAccountsContainersVariablesGet
    , module TagManager.Accounts.Containers.Variables.Get

    -- ** TagmanagerAccountsContainersVariablesList
    , module TagManager.Accounts.Containers.Variables.List

    -- ** TagmanagerAccountsContainersVariablesUpdate
    , module TagManager.Accounts.Containers.Variables.Update

    -- ** TagmanagerAccountsContainersVersionsCreate
    , module TagManager.Accounts.Containers.Versions.Create

    -- ** TagmanagerAccountsContainersVersionsDelete
    , module TagManager.Accounts.Containers.Versions.Delete

    -- ** TagmanagerAccountsContainersVersionsGet
    , module TagManager.Accounts.Containers.Versions.Get

    -- ** TagmanagerAccountsContainersVersionsList
    , module TagManager.Accounts.Containers.Versions.List

    -- ** TagmanagerAccountsContainersVersionsPublish
    , module TagManager.Accounts.Containers.Versions.Publish

    -- ** TagmanagerAccountsContainersVersionsRestore
    , module TagManager.Accounts.Containers.Versions.Restore

    -- ** TagmanagerAccountsContainersVersionsUndelete
    , module TagManager.Accounts.Containers.Versions.Undelete

    -- ** TagmanagerAccountsContainersVersionsUpdate
    , module TagManager.Accounts.Containers.Versions.Update

    -- ** TagmanagerAccountsGet
    , module TagManager.Accounts.Get

    -- ** TagmanagerAccountsList
    , module TagManager.Accounts.List

    -- ** TagmanagerAccountsPermissionsCreate
    , module TagManager.Accounts.Permissions.Create

    -- ** TagmanagerAccountsPermissionsDelete
    , module TagManager.Accounts.Permissions.Delete

    -- ** TagmanagerAccountsPermissionsGet
    , module TagManager.Accounts.Permissions.Get

    -- ** TagmanagerAccountsPermissionsList
    , module TagManager.Accounts.Permissions.List

    -- ** TagmanagerAccountsPermissionsUpdate
    , module TagManager.Accounts.Permissions.Update

    -- ** TagmanagerAccountsUpdate
    , module TagManager.Accounts.Update

    -- * Types

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

    -- ** MACro
    , MACro
    , mACro
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

    -- ** CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrContainerVersion

    -- ** ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , ltrTriggers

    -- ** CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoQuickPreview
    , ccvrvoNotes

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

    -- ** AccountAccess
    , AccountAccess
    , accountAccess
    , aaPermission

    -- ** UserAccess
    , UserAccess
    , userAccess
    , uaAccountAccess
    , uaAccountId
    , uaEmailAddress
    , uaContainerAccess
    , uaPermissionId

    -- ** ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larAccounts

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

    -- ** Folder
    , Folder
    , folder
    , fContainerId
    , fFingerprint
    , fFolderId
    , fAccountId
    , fName

    -- ** Account
    , Account
    , account
    , aShareData
    , aFingerprint
    , aAccountId
    , aName

    -- ** ListContainerVersionsResponse
    , ListContainerVersionsResponse
    , listContainerVersionsResponse
    , lcvrContainerVersionHeader
    , lcvrContainerVersion

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

    -- ** ListAccountUsersResponse
    , ListAccountUsersResponse
    , listAccountUsersResponse
    , laurUserAccess

    -- ** ListContainersResponse
    , ListContainersResponse
    , listContainersResponse
    , lcrContainers

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

    -- ** ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , ltrTags

    -- ** ListMACrosResponse
    , ListMACrosResponse
    , listMACrosResponse
    , lmacrMacros

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

    -- ** Condition
    , Condition
    , condition
    , cType
    , cParameter

    -- ** FolderEntities
    , FolderEntities
    , folderEntities
    , feTag
    , feVariable
    , feTrigger

    -- ** ContainerAccess
    , ContainerAccess
    , containerAccess
    , caContainerId
    , caPermission

    -- ** Parameter
    , Parameter
    , parameter
    , pList
    , pValue
    , pMap
    , pKey
    , pType
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.TagManager.Accounts.Containers.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.List
import           Network.Google.Resource.TagManager.Accounts.Containers.MACros.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.MACros.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.MACros.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.MACros.List
import           Network.Google.Resource.TagManager.Accounts.Containers.MACros.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Move_folders.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Rules.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Rules.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Rules.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Rules.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Rules.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Tags.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Tags.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Tags.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Tags.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Tags.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Triggers.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Variables.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Variables.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Variables.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Versions.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish
import           Network.Google.Resource.TagManager.Accounts.Containers.Versions.Restore
import           Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
import           Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
import           Network.Google.Resource.TagManager.Accounts.Get
import           Network.Google.Resource.TagManager.Accounts.List
import           Network.Google.Resource.TagManager.Accounts.Permissions.Create
import           Network.Google.Resource.TagManager.Accounts.Permissions.Delete
import           Network.Google.Resource.TagManager.Accounts.Permissions.Get
import           Network.Google.Resource.TagManager.Accounts.Permissions.List
import           Network.Google.Resource.TagManager.Accounts.Permissions.Update
import           Network.Google.Resource.TagManager.Accounts.Update
import           Network.Google.TagManager.Types

{- $resources
TODO
-}

type TagManagerAPI = Accounts

tagManagerAPI :: Proxy TagManagerAPI
tagManagerAPI = Proxy
