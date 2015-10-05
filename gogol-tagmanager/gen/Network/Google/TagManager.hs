{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | API for accessing Tag Manager accounts and containers.
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

    -- ** TagManagerAccountsContainersCreate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Create

    -- ** TagManagerAccountsContainersDelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Delete

    -- ** TagManagerAccountsContainersFoldersCreate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create

    -- ** TagManagerAccountsContainersFoldersDelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete

    -- ** TagManagerAccountsContainersFoldersEntitiesList
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List

    -- ** TagManagerAccountsContainersFoldersGet
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Get

    -- ** TagManagerAccountsContainersFoldersList
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.List

    -- ** TagManagerAccountsContainersFoldersUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Update

    -- ** TagManagerAccountsContainersGet
    , module Network.Google.Resource.TagManager.Accounts.Containers.Get

    -- ** TagManagerAccountsContainersList
    , module Network.Google.Resource.TagManager.Accounts.Containers.List

    -- ** TagManagerAccountsContainersMacrosCreate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Create

    -- ** TagManagerAccountsContainersMacrosDelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Delete

    -- ** TagManagerAccountsContainersMacrosGet
    , module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Get

    -- ** TagManagerAccountsContainersMacrosList
    , module Network.Google.Resource.TagManager.Accounts.Containers.Macros.List

    -- ** TagManagerAccountsContainersMacrosUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Update

    -- ** TagManagerAccountsContainersMove_foldersUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.MoveFolders.Update

    -- ** TagManagerAccountsContainersRulesCreate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Create

    -- ** TagManagerAccountsContainersRulesDelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Delete

    -- ** TagManagerAccountsContainersRulesGet
    , module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Get

    -- ** TagManagerAccountsContainersRulesList
    , module Network.Google.Resource.TagManager.Accounts.Containers.Rules.List

    -- ** TagManagerAccountsContainersRulesUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Update

    -- ** TagManagerAccountsContainersTagsCreate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Create

    -- ** TagManagerAccountsContainersTagsDelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Delete

    -- ** TagManagerAccountsContainersTagsGet
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Get

    -- ** TagManagerAccountsContainersTagsList
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.List

    -- ** TagManagerAccountsContainersTagsUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Update

    -- ** TagManagerAccountsContainersTriggersCreate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create

    -- ** TagManagerAccountsContainersTriggersDelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Delete

    -- ** TagManagerAccountsContainersTriggersGet
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Get

    -- ** TagManagerAccountsContainersTriggersList
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.List

    -- ** TagManagerAccountsContainersTriggersUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Update

    -- ** TagManagerAccountsContainersUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Update

    -- ** TagManagerAccountsContainersVariablesCreate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create

    -- ** TagManagerAccountsContainersVariablesDelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Delete

    -- ** TagManagerAccountsContainersVariablesGet
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Get

    -- ** TagManagerAccountsContainersVariablesList
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.List

    -- ** TagManagerAccountsContainersVariablesUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update

    -- ** TagManagerAccountsContainersVersionsCreate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create

    -- ** TagManagerAccountsContainersVersionsDelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete

    -- ** TagManagerAccountsContainersVersionsGet
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get

    -- ** TagManagerAccountsContainersVersionsList
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.List

    -- ** TagManagerAccountsContainersVersionsPublish
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish

    -- ** TagManagerAccountsContainersVersionsRestore
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Restore

    -- ** TagManagerAccountsContainersVersionsUndelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete

    -- ** TagManagerAccountsContainersVersionsUpdate
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update

    -- ** TagManagerAccountsGet
    , module Network.Google.Resource.TagManager.Accounts.Get

    -- ** TagManagerAccountsList
    , module Network.Google.Resource.TagManager.Accounts.List

    -- ** TagManagerAccountsPermissionsCreate
    , module Network.Google.Resource.TagManager.Accounts.Permissions.Create

    -- ** TagManagerAccountsPermissionsDelete
    , module Network.Google.Resource.TagManager.Accounts.Permissions.Delete

    -- ** TagManagerAccountsPermissionsGet
    , module Network.Google.Resource.TagManager.Accounts.Permissions.Get

    -- ** TagManagerAccountsPermissionsList
    , module Network.Google.Resource.TagManager.Accounts.Permissions.List

    -- ** TagManagerAccountsPermissionsUpdate
    , module Network.Google.Resource.TagManager.Accounts.Permissions.Update

    -- ** TagManagerAccountsUpdate
    , module Network.Google.Resource.TagManager.Accounts.Update

    -- * Types

    -- ** ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrVariables

    -- ** ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrFolders

    -- ** ListRulesResponse
    , ListRulesResponse
    , listRulesResponse
    , lrrRules

    -- ** PublishContainerVersionResponse
    , PublishContainerVersionResponse
    , publishContainerVersionResponse
    , pcvrCompilerError
    , pcvrContainerVersion

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

    -- ** TeardownTag
    , TeardownTag
    , teardownTag
    , ttStopTeardownOnFailure
    , ttTagName

    -- ** ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , ltrTriggers

    -- ** Macro
    , Macro
    , macro
    , mScheduleEndMs
    , mParentFolderId
    , mContainerId
    , mDisablingRuleId
    , mFingerprint
    , mAccountId
    , mName
    , mEnablingRuleId
    , mMacroId
    , mType
    , mScheduleStartMs
    , mNotes
    , mParameter

    -- ** Tag
    , Tag
    , tag
    , tBlockingTriggerId
    , tScheduleEndMs
    , tParentFolderId
    , tLiveOnly
    , tContainerId
    , tPriority
    , tTeardownTag
    , tFingerprint
    , tTagFiringOption
    , tAccountId
    , tTagId
    , tName
    , tBlockingRuleId
    , tSetupTag
    , tFiringTriggerId
    , tType
    , tScheduleStartMs
    , tNotes
    , tFiringRuleId
    , tParameter

    -- ** CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrContainerVersion

    -- ** CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoQuickPreview
    , ccvrvoNotes

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

    -- ** TriggerType
    , TriggerType (..)

    -- ** ContainerEnabledBuiltInVariableItem
    , ContainerEnabledBuiltInVariableItem (..)

    -- ** ContainerUsageContextItem
    , ContainerUsageContextItem (..)

    -- ** ConditionType
    , ConditionType (..)

    -- ** ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larAccounts

    -- ** AccountAccessPermissionItem
    , AccountAccessPermissionItem (..)

    -- ** TagTagFiringOption
    , TagTagFiringOption (..)

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

    -- ** ParameterType
    , ParameterType (..)

    -- ** Account
    , Account
    , account
    , aaShareData
    , aaFingerprint
    , aaAccountId
    , aaName

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

    -- ** ContainerAccessPermissionItem
    , ContainerAccessPermissionItem (..)

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

    -- ** SetupTag
    , SetupTag
    , setupTag
    , stTagName
    , stStopOnSetupFailure

    -- ** ListContainersResponse
    , ListContainersResponse
    , listContainersResponse
    , lcrContainers

    -- ** Trigger
    , Trigger
    , trigger
    , triCustomEventFilter
    , triParentFolderId
    , triContainerId
    , triTriggerId
    , triCheckValidation
    , triFingerprint
    , triAutoEventFilter
    , triUniqueTriggerId
    , triAccountId
    , triName
    , triInterval
    , triEnableAllVideos
    , triWaitForTagsTimeout
    , triLimit
    , triFilter
    , triType
    , triVideoPercentageList
    , triEventName
    , triWaitForTags

    -- ** ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , ltrTags

    -- ** ListMacrosResponse
    , ListMacrosResponse
    , listMacrosResponse
    , lmrMacros

    -- ** FolderEntities
    , FolderEntities
    , folderEntities
    , feTag
    , feVariable
    , feTrigger

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
import           Network.Google.Resource.TagManager.Accounts.Containers.Macros.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Macros.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Macros.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Macros.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Macros.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.MoveFolders.Update
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

type TagManagerAPI =
     AccountsContainersRulesListResource :<|>
       AccountsContainersRulesGetResource
       :<|> AccountsContainersRulesCreateResource
       :<|> AccountsContainersRulesDeleteResource
       :<|> AccountsContainersRulesUpdateResource
       :<|> AccountsContainersVariablesListResource
       :<|> AccountsContainersVariablesGetResource
       :<|> AccountsContainersVariablesCreateResource
       :<|> AccountsContainersVariablesDeleteResource
       :<|> AccountsContainersVariablesUpdateResource
       :<|> AccountsContainersFoldersEntitiesListResource
       :<|> AccountsContainersFoldersListResource
       :<|> AccountsContainersFoldersGetResource
       :<|> AccountsContainersFoldersCreateResource
       :<|> AccountsContainersFoldersDeleteResource
       :<|> AccountsContainersFoldersUpdateResource
       :<|> AccountsContainersTriggersListResource
       :<|> AccountsContainersTriggersGetResource
       :<|> AccountsContainersTriggersCreateResource
       :<|> AccountsContainersTriggersDeleteResource
       :<|> AccountsContainersTriggersUpdateResource
       :<|> AccountsContainersVersionsListResource
       :<|> AccountsContainersVersionsUndeleteResource
       :<|> AccountsContainersVersionsRestoreResource
       :<|> AccountsContainersVersionsGetResource
       :<|> AccountsContainersVersionsCreateResource
       :<|> AccountsContainersVersionsDeleteResource
       :<|> AccountsContainersVersionsUpdateResource
       :<|> AccountsContainersVersionsPublishResource
       :<|> AccountsContainersMoveFoldersUpdateResource
       :<|> AccountsContainersMacrosListResource
       :<|> AccountsContainersMacrosGetResource
       :<|> AccountsContainersMacrosCreateResource
       :<|> AccountsContainersMacrosDeleteResource
       :<|> AccountsContainersMacrosUpdateResource
       :<|> AccountsContainersTagsListResource
       :<|> AccountsContainersTagsGetResource
       :<|> AccountsContainersTagsCreateResource
       :<|> AccountsContainersTagsDeleteResource
       :<|> AccountsContainersTagsUpdateResource
       :<|> AccountsContainersListResource
       :<|> AccountsContainersGetResource
       :<|> AccountsContainersCreateResource
       :<|> AccountsContainersDeleteResource
       :<|> AccountsContainersUpdateResource
       :<|> AccountsPermissionsListResource
       :<|> AccountsPermissionsGetResource
       :<|> AccountsPermissionsCreateResource
       :<|> AccountsPermissionsDeleteResource
       :<|> AccountsPermissionsUpdateResource
       :<|> AccountsListResource
       :<|> AccountsGetResource
       :<|> AccountsUpdateResource

tagManagerAPI :: Proxy TagManagerAPI
tagManagerAPI = Proxy
