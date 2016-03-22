{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.TagManager
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses Tag Manager accounts and containers.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference>
module Network.Google.TagManager
    (
    -- * Service Configuration
      tagManagerService

    -- * OAuth Scopes
    , tagManagerReadOnlyScope
    , tagManagerEditContainersScope
    , tagManagerManageAccountsScope
    , tagManagerDeleteContainersScope
    , tagManagerManageUsersScope
    , tagManagerPublishScope
    , tagManagerEditContainerversionsScope

    -- * API Declaration
    , TagManagerAPI

    -- * Resources

    -- ** tagmanager.accounts.containers.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Create

    -- ** tagmanager.accounts.containers.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Delete

    -- ** tagmanager.accounts.containers.environments.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Create

    -- ** tagmanager.accounts.containers.environments.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete

    -- ** tagmanager.accounts.containers.environments.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Get

    -- ** tagmanager.accounts.containers.environments.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Environments.List

    -- ** tagmanager.accounts.containers.environments.patch
    , module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Patch

    -- ** tagmanager.accounts.containers.environments.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update

    -- ** tagmanager.accounts.containers.folders.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create

    -- ** tagmanager.accounts.containers.folders.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete

    -- ** tagmanager.accounts.containers.folders.entities.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List

    -- ** tagmanager.accounts.containers.folders.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Get

    -- ** tagmanager.accounts.containers.folders.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.List

    -- ** tagmanager.accounts.containers.folders.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Update

    -- ** tagmanager.accounts.containers.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Get

    -- ** tagmanager.accounts.containers.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.List

    -- ** tagmanager.accounts.containers.move_folders.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.MoveFolders.Update

    -- ** tagmanager.accounts.containers.reauthorize_environments.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.ReauthorizeEnvironments.Update

    -- ** tagmanager.accounts.containers.tags.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Create

    -- ** tagmanager.accounts.containers.tags.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Delete

    -- ** tagmanager.accounts.containers.tags.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Get

    -- ** tagmanager.accounts.containers.tags.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.List

    -- ** tagmanager.accounts.containers.tags.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Update

    -- ** tagmanager.accounts.containers.triggers.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create

    -- ** tagmanager.accounts.containers.triggers.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Delete

    -- ** tagmanager.accounts.containers.triggers.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Get

    -- ** tagmanager.accounts.containers.triggers.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.List

    -- ** tagmanager.accounts.containers.triggers.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Update

    -- ** tagmanager.accounts.containers.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Update

    -- ** tagmanager.accounts.containers.variables.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create

    -- ** tagmanager.accounts.containers.variables.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Delete

    -- ** tagmanager.accounts.containers.variables.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Get

    -- ** tagmanager.accounts.containers.variables.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.List

    -- ** tagmanager.accounts.containers.variables.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update

    -- ** tagmanager.accounts.containers.versions.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create

    -- ** tagmanager.accounts.containers.versions.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete

    -- ** tagmanager.accounts.containers.versions.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get

    -- ** tagmanager.accounts.containers.versions.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.List

    -- ** tagmanager.accounts.containers.versions.publish
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish

    -- ** tagmanager.accounts.containers.versions.restore
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Restore

    -- ** tagmanager.accounts.containers.versions.undelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete

    -- ** tagmanager.accounts.containers.versions.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update

    -- ** tagmanager.accounts.get
    , module Network.Google.Resource.TagManager.Accounts.Get

    -- ** tagmanager.accounts.list
    , module Network.Google.Resource.TagManager.Accounts.List

    -- ** tagmanager.accounts.permissions.create
    , module Network.Google.Resource.TagManager.Accounts.Permissions.Create

    -- ** tagmanager.accounts.permissions.delete
    , module Network.Google.Resource.TagManager.Accounts.Permissions.Delete

    -- ** tagmanager.accounts.permissions.get
    , module Network.Google.Resource.TagManager.Accounts.Permissions.Get

    -- ** tagmanager.accounts.permissions.list
    , module Network.Google.Resource.TagManager.Accounts.Permissions.List

    -- ** tagmanager.accounts.permissions.update
    , module Network.Google.Resource.TagManager.Accounts.Permissions.Update

    -- ** tagmanager.accounts.update
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

    -- ** ListEnvironmentsResponse
    , ListEnvironmentsResponse
    , listEnvironmentsResponse
    , lerEnvironments

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

    -- ** Environment
    , Environment
    , environment
    , eContainerId
    , eFingerprint
    , eContainerVersionId
    , eURL
    , eAuthorizationCode
    , eAccountId
    , eName
    , eEnableDebug
    , eEnvironmentId
    , eType
    , eAuthorizationTimestampMs
    , eDescription

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

    -- ** EnvironmentType
    , EnvironmentType (..)

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
import           Network.Google.Resource.TagManager.Accounts.Containers.Environments.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Environments.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Environments.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Environments.Patch
import           Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.List
import           Network.Google.Resource.TagManager.Accounts.Containers.Folders.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.Get
import           Network.Google.Resource.TagManager.Accounts.Containers.List
import           Network.Google.Resource.TagManager.Accounts.Containers.MoveFolders.Update
import           Network.Google.Resource.TagManager.Accounts.Containers.ReauthorizeEnvironments.Update
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

-- | Represents the entirety of the methods and resources available for the Tag Manager API service.
type TagManagerAPI =
     AccountsContainersVariablesListResource :<|>
       AccountsContainersVariablesGetResource
       :<|> AccountsContainersVariablesCreateResource
       :<|> AccountsContainersVariablesDeleteResource
       :<|> AccountsContainersVariablesUpdateResource
       :<|>
       AccountsContainersReauthorizeEnvironmentsUpdateResource
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
       :<|> AccountsContainersEnvironmentsListResource
       :<|> AccountsContainersEnvironmentsPatchResource
       :<|> AccountsContainersEnvironmentsGetResource
       :<|> AccountsContainersEnvironmentsCreateResource
       :<|> AccountsContainersEnvironmentsDeleteResource
       :<|> AccountsContainersEnvironmentsUpdateResource
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
