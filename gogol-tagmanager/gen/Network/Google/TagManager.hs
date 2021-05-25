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
-- This API allows clients to access and modify container and tag
-- configuration.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference>
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

    -- ** tagmanager.accounts.containers.environments.reauthorize
    , module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Reauthorize

    -- ** tagmanager.accounts.containers.environments.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update

    -- ** tagmanager.accounts.containers.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Get

    -- ** tagmanager.accounts.containers.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.List

    -- ** tagmanager.accounts.containers.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Update

    -- ** tagmanager.accounts.containers.version_headers.latest
    , module Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.Latest

    -- ** tagmanager.accounts.containers.version_headers.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.List

    -- ** tagmanager.accounts.containers.versions.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete

    -- ** tagmanager.accounts.containers.versions.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get

    -- ** tagmanager.accounts.containers.versions.live
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Live

    -- ** tagmanager.accounts.containers.versions.publish
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish

    -- ** tagmanager.accounts.containers.versions.set_latest
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.SetLatest

    -- ** tagmanager.accounts.containers.versions.undelete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete

    -- ** tagmanager.accounts.containers.versions.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Create

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Delete

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.List

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.revert
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Revert

    -- ** tagmanager.accounts.containers.workspaces.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Create

    -- ** tagmanager.accounts.containers.workspaces.create_version
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.CreateVersion

    -- ** tagmanager.accounts.containers.workspaces.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Delete

    -- ** tagmanager.accounts.containers.workspaces.folders.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Create

    -- ** tagmanager.accounts.containers.workspaces.folders.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Delete

    -- ** tagmanager.accounts.containers.workspaces.folders.entities
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Entities

    -- ** tagmanager.accounts.containers.workspaces.folders.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Get

    -- ** tagmanager.accounts.containers.workspaces.folders.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.List

    -- ** tagmanager.accounts.containers.workspaces.folders.move_entities_to_folder
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.MoveEntitiesToFolder

    -- ** tagmanager.accounts.containers.workspaces.folders.revert
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Revert

    -- ** tagmanager.accounts.containers.workspaces.folders.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Update

    -- ** tagmanager.accounts.containers.workspaces.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Get

    -- ** tagmanager.accounts.containers.workspaces.getStatus
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.GetStatus

    -- ** tagmanager.accounts.containers.workspaces.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.List

    -- ** tagmanager.accounts.containers.workspaces.quick_preview
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.QuickPreview

    -- ** tagmanager.accounts.containers.workspaces.resolve_conflict
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.ResolveConflict

    -- ** tagmanager.accounts.containers.workspaces.sync
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Sync

    -- ** tagmanager.accounts.containers.workspaces.tags.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Create

    -- ** tagmanager.accounts.containers.workspaces.tags.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Delete

    -- ** tagmanager.accounts.containers.workspaces.tags.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Get

    -- ** tagmanager.accounts.containers.workspaces.tags.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.List

    -- ** tagmanager.accounts.containers.workspaces.tags.revert
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Revert

    -- ** tagmanager.accounts.containers.workspaces.tags.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Update

    -- ** tagmanager.accounts.containers.workspaces.templates.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Create

    -- ** tagmanager.accounts.containers.workspaces.templates.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Delete

    -- ** tagmanager.accounts.containers.workspaces.templates.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Get

    -- ** tagmanager.accounts.containers.workspaces.templates.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.List

    -- ** tagmanager.accounts.containers.workspaces.templates.revert
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Revert

    -- ** tagmanager.accounts.containers.workspaces.templates.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Update

    -- ** tagmanager.accounts.containers.workspaces.triggers.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Create

    -- ** tagmanager.accounts.containers.workspaces.triggers.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Delete

    -- ** tagmanager.accounts.containers.workspaces.triggers.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Get

    -- ** tagmanager.accounts.containers.workspaces.triggers.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.List

    -- ** tagmanager.accounts.containers.workspaces.triggers.revert
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Revert

    -- ** tagmanager.accounts.containers.workspaces.triggers.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Update

    -- ** tagmanager.accounts.containers.workspaces.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Update

    -- ** tagmanager.accounts.containers.workspaces.variables.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Create

    -- ** tagmanager.accounts.containers.workspaces.variables.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Delete

    -- ** tagmanager.accounts.containers.workspaces.variables.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Get

    -- ** tagmanager.accounts.containers.workspaces.variables.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.List

    -- ** tagmanager.accounts.containers.workspaces.variables.revert
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Revert

    -- ** tagmanager.accounts.containers.workspaces.variables.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Update

    -- ** tagmanager.accounts.containers.workspaces.zones.create
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Create

    -- ** tagmanager.accounts.containers.workspaces.zones.delete
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Delete

    -- ** tagmanager.accounts.containers.workspaces.zones.get
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Get

    -- ** tagmanager.accounts.containers.workspaces.zones.list
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.List

    -- ** tagmanager.accounts.containers.workspaces.zones.revert
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Revert

    -- ** tagmanager.accounts.containers.workspaces.zones.update
    , module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Update

    -- ** tagmanager.accounts.get
    , module Network.Google.Resource.TagManager.Accounts.Get

    -- ** tagmanager.accounts.list
    , module Network.Google.Resource.TagManager.Accounts.List

    -- ** tagmanager.accounts.update
    , module Network.Google.Resource.TagManager.Accounts.Update

    -- ** tagmanager.accounts.user_permissions.create
    , module Network.Google.Resource.TagManager.Accounts.UserPermissions.Create

    -- ** tagmanager.accounts.user_permissions.delete
    , module Network.Google.Resource.TagManager.Accounts.UserPermissions.Delete

    -- ** tagmanager.accounts.user_permissions.get
    , module Network.Google.Resource.TagManager.Accounts.UserPermissions.Get

    -- ** tagmanager.accounts.user_permissions.list
    , module Network.Google.Resource.TagManager.Accounts.UserPermissions.List

    -- ** tagmanager.accounts.user_permissions.update
    , module Network.Google.Resource.TagManager.Accounts.UserPermissions.Update

    -- * Types

    -- ** ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrNextPageToken
    , lvrVariable

    -- ** ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrNextPageToken
    , lfrFolder

    -- ** ListZonesResponse
    , ListZonesResponse
    , listZonesResponse
    , lzrNextPageToken
    , lzrZone

    -- ** RevertZoneResponse
    , RevertZoneResponse
    , revertZoneResponse
    , rzrZone

    -- ** ListEnvironmentsResponse
    , ListEnvironmentsResponse
    , listEnvironmentsResponse
    , lerNextPageToken
    , lerEnvironment

    -- ** RevertFolderResponse
    , RevertFolderResponse
    , revertFolderResponse
    , rfrFolder

    -- ** BuiltInVariableType
    , BuiltInVariableType (..)

    -- ** RevertVariableResponse
    , RevertVariableResponse
    , revertVariableResponse
    , rvrVariable

    -- ** PublishContainerVersionResponse
    , PublishContainerVersionResponse
    , publishContainerVersionResponse
    , pcvrCompilerError
    , pcvrContainerVersion

    -- ** ListWorkspacesResponse
    , ListWorkspacesResponse
    , listWorkspacesResponse
    , lwrNextPageToken
    , lwrWorkspace

    -- ** ContainerVersionHeader
    , ContainerVersionHeader
    , containerVersionHeader
    , cvhNumClients
    , cvhNumTags
    , cvhNumMacros
    , cvhContainerId
    , cvhPath
    , cvhContainerVersionId
    , cvhAccountId
    , cvhName
    , cvhNumTriggers
    , cvhDeleted
    , cvhNumZones
    , cvhNumRules
    , cvhNumVariables
    , cvhNumCustomTemplates

    -- ** TeardownTag
    , TeardownTag
    , teardownTag
    , ttStopTeardownOnFailure
    , ttTagName

    -- ** ListTemplatesResponse
    , ListTemplatesResponse
    , listTemplatesResponse
    , ltrNextPageToken
    , ltrTemplate

    -- ** ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , lNextPageToken
    , lTrigger

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
    , tPath
    , tFingerprint
    , tMonitoringMetadata
    , tTagFiringOption
    , tAccountId
    , tTagId
    , tName
    , tTagManagerURL
    , tBlockingRuleId
    , tSetupTag
    , tFiringTriggerId
    , tWorkspaceId
    , tType
    , tScheduleStartMs
    , tMonitoringMetadataTagNameKey
    , tNotes
    , tPaused
    , tFiringRuleId
    , tParameter

    -- ** ZoneTypeRestriction
    , ZoneTypeRestriction
    , zoneTypeRestriction
    , ztrEnable
    , ztrWhiteListedTypeId

    -- ** CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrNewWorkspacePath
    , ccvrContainerVersion
    , ccvrSyncStatus

    -- ** CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoNotes

    -- ** Workspace
    , Workspace
    , workspace
    , wContainerId
    , wPath
    , wFingerprint
    , wAccountId
    , wName
    , wTagManagerURL
    , wWorkspaceId
    , wDescription

    -- ** AccountsContainersWorkspacesBuilt_in_variablesDeleteType
    , AccountsContainersWorkspacesBuilt_in_variablesDeleteType (..)

    -- ** Environment
    , Environment
    , environment
    , eContainerId
    , ePath
    , eFingerprint
    , eContainerVersionId
    , eURL
    , eAuthorizationCode
    , eAccountId
    , eName
    , eTagManagerURL
    , eAuthorizationTimestamp
    , eEnableDebug
    , eEnvironmentId
    , eWorkspaceId
    , eType
    , eDescription

    -- ** AccountAccess
    , AccountAccess
    , accountAccess
    , aaPermission

    -- ** TriggerType
    , TriggerType (..)

    -- ** ListUserPermissionsResponse
    , ListUserPermissionsResponse
    , listUserPermissionsResponse
    , luprNextPageToken
    , luprUserPermission

    -- ** ContainerAccessPermission
    , ContainerAccessPermission (..)

    -- ** ContainerUsageContextItem
    , ContainerUsageContextItem (..)

    -- ** AccountsContainersWorkspacesBuilt_in_variablesCreateType
    , AccountsContainersWorkspacesBuilt_in_variablesCreateType (..)

    -- ** CreateBuiltInVariableResponse
    , CreateBuiltInVariableResponse
    , createBuiltInVariableResponse
    , cbivrBuiltInVariable

    -- ** ZoneChildContainer
    , ZoneChildContainer
    , zoneChildContainer
    , zccPublicId
    , zccNickname

    -- ** ConditionType
    , ConditionType (..)

    -- ** ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larNextPageToken
    , larAccount

    -- ** GalleryReference
    , GalleryReference
    , galleryReference
    , grSignature
    , grRepository
    , grOwner
    , grVersion
    , grHost
    , grIsModified

    -- ** MergeConflict
    , MergeConflict
    , mergeConflict
    , mcEntityInBaseVersion
    , mcEntityInWorkspace

    -- ** TagTagFiringOption
    , TagTagFiringOption (..)

    -- ** Folder
    , Folder
    , folder
    , fContainerId
    , fPath
    , fFingerprint
    , fFolderId
    , fAccountId
    , fName
    , fTagManagerURL
    , fWorkspaceId
    , fNotes

    -- ** ZoneBoundary
    , ZoneBoundary
    , zoneBoundary
    , zbCustomEvaluationTriggerId
    , zbCondition

    -- ** Variable
    , Variable
    , variable
    , vScheduleEndMs
    , vParentFolderId
    , vContainerId
    , vPath
    , vFingerprint
    , vVariableId
    , vAccountId
    , vDisablingTriggerId
    , vName
    , vTagManagerURL
    , vFormatValue
    , vWorkspaceId
    , vType
    , vScheduleStartMs
    , vNotes
    , vEnablingTriggerId
    , vParameter

    -- ** Zone
    , Zone
    , zone
    , zContainerId
    , zPath
    , zBoundary
    , zFingerprint
    , zZoneId
    , zTypeRestriction
    , zAccountId
    , zName
    , zTagManagerURL
    , zChildContainer
    , zWorkspaceId
    , zNotes

    -- ** AccountAccessPermission
    , AccountAccessPermission (..)

    -- ** RevertTemplateResponse
    , RevertTemplateResponse
    , revertTemplateResponse
    , rtrTemplate

    -- ** SyncWorkspaceResponse
    , SyncWorkspaceResponse
    , syncWorkspaceResponse
    , swrMergeConflict
    , swrSyncStatus

    -- ** RevertTriggerResponse
    , RevertTriggerResponse
    , revertTriggerResponse
    , rtrTrigger

    -- ** ParameterType
    , ParameterType (..)

    -- ** Account
    , Account
    , account
    , aPath
    , aShareData
    , aFingerprint
    , aAccountId
    , aName
    , aTagManagerURL

    -- ** EntityChangeStatus
    , EntityChangeStatus (..)

    -- ** GetWorkspaceStatusResponse
    , GetWorkspaceStatusResponse
    , getWorkspaceStatusResponse
    , gwsrMergeConflict
    , gwsrWorkspaceChange

    -- ** QuickPreviewResponse
    , QuickPreviewResponse
    , quickPreviewResponse
    , qprCompilerError
    , qprContainerVersion
    , qprSyncStatus

    -- ** ListContainerVersionsResponse
    , ListContainerVersionsResponse
    , listContainerVersionsResponse
    , lcvrNextPageToken
    , lcvrContainerVersionHeader

    -- ** Container
    , Container
    , container
    , cPublicId
    , cUsageContext
    , cContainerId
    , cPath
    , cFingerprint
    , cAccountId
    , cDomainName
    , cName
    , cTagManagerURL
    , cNotes

    -- ** BuiltInVariable
    , BuiltInVariable
    , builtInVariable
    , bivContainerId
    , bivPath
    , bivAccountId
    , bivName
    , bivWorkspaceId
    , bivType

    -- ** UserPermission
    , UserPermission
    , userPermission
    , upPath
    , upAccountAccess
    , upAccountId
    , upEmailAddress
    , upContainerAccess

    -- ** VariableFormatValueCaseConversionType
    , VariableFormatValueCaseConversionType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** ContainerVersion
    , ContainerVersion
    , containerVersion
    , cvTag
    , cvContainerId
    , cvPath
    , cvFingerprint
    , cvContainerVersionId
    , cvFolder
    , cvVariable
    , cvZone
    , cvAccountId
    , cvName
    , cvContainer
    , cvBuiltInVariable
    , cvTagManagerURL
    , cvDeleted
    , cvTrigger
    , cvCustomTemplate
    , cvDescription
    , cvClient

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
    , lcrNextPageToken
    , lcrContainer

    -- ** Trigger
    , Trigger
    , trigger
    , triContinuousTimeMinMilliseconds
    , triMaxTimerLengthSeconds
    , triCustomEventFilter
    , triParentFolderId
    , triVisiblePercentageMax
    , triContainerId
    , triPath
    , triSelector
    , triTriggerId
    , triCheckValidation
    , triFingerprint
    , triTotalTimeMinMilliseconds
    , triAutoEventFilter
    , triUniqueTriggerId
    , triHorizontalScrollPercentageList
    , triIntervalSeconds
    , triVisiblePercentageMin
    , triAccountId
    , triName
    , triInterval
    , triTagManagerURL
    , triWaitForTagsTimeout
    , triLimit
    , triVerticalScrollPercentageList
    , triFilter
    , triWorkspaceId
    , triType
    , triNotes
    , triVisibilitySelector
    , triEventName
    , triWaitForTags
    , triParameter

    -- ** ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , lisNextPageToken
    , lisTag

    -- ** ListEnabledBuiltInVariablesResponse
    , ListEnabledBuiltInVariablesResponse
    , listEnabledBuiltInVariablesResponse
    , lebivrNextPageToken
    , lebivrBuiltInVariable

    -- ** CustomTemplate
    , CustomTemplate
    , customTemplate
    , ctContainerId
    , ctPath
    , ctTemplateId
    , ctFingerprint
    , ctGalleryReference
    , ctAccountId
    , ctName
    , ctTagManagerURL
    , ctTemplateData
    , ctWorkspaceId

    -- ** FolderEntities
    , FolderEntities
    , folderEntities
    , feNextPageToken
    , feTag
    , feVariable
    , feTrigger

    -- ** SyncStatus
    , SyncStatus
    , syncStatus
    , ssSyncError
    , ssMergeConflict

    -- ** RevertTagResponse
    , RevertTagResponse
    , revertTagResponse
    , rtrTag

    -- ** Condition
    , Condition
    , condition
    , cType
    , cParameter

    -- ** Entity
    , Entity
    , entity
    , eTag
    , eFolder
    , eVariable
    , eChangeStatus
    , eTrigger
    , eClient

    -- ** ContainerAccess
    , ContainerAccess
    , containerAccess
    , caContainerId
    , caPermission

    -- ** VariableFormatValue
    , VariableFormatValue
    , variableFormatValue
    , vfvConvertNullToValue
    , vfvConvertTrueToValue
    , vfvCaseConversionType
    , vfvConvertFalseToValue
    , vfvConvertUndefinedToValue

    -- ** RevertBuiltInVariableResponse
    , RevertBuiltInVariableResponse
    , revertBuiltInVariableResponse
    , rbivrEnabled

    -- ** AccountsContainersWorkspacesBuilt_in_variablesRevertType
    , AccountsContainersWorkspacesBuilt_in_variablesRevertType (..)

    -- ** Client
    , Client
    , client
    , cliClientId
    , cliParentFolderId
    , cliContainerId
    , cliPriority
    , cliPath
    , cliFingerprint
    , cliAccountId
    , cliName
    , cliTagManagerURL
    , cliWorkspaceId
    , cliType
    , cliNotes
    , cliParameter

    -- ** Parameter
    , Parameter
    , parameter
    , pList
    , pValue
    , pMap
    , pKey
    , pType
    ) where

import Network.Google.Prelude
import Network.Google.Resource.TagManager.Accounts.Containers.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Environments.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Environments.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Environments.List
import Network.Google.Resource.TagManager.Accounts.Containers.Environments.Reauthorize
import Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update
import Network.Google.Resource.TagManager.Accounts.Containers.Get
import Network.Google.Resource.TagManager.Accounts.Containers.List
import Network.Google.Resource.TagManager.Accounts.Containers.Update
import Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.Latest
import Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.List
import Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Versions.Live
import Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish
import Network.Google.Resource.TagManager.Accounts.Containers.Versions.SetLatest
import Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
import Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.List
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Revert
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.CreateVersion
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Entities
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.List
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.MoveEntitiesToFolder
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Revert
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Update
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.GetStatus
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.List
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.QuickPreview
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.ResolveConflict
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Sync
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.List
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Revert
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Update
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.List
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Revert
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Update
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.List
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Revert
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Update
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Update
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.List
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Revert
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Update
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Create
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Delete
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Get
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.List
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Revert
import Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Update
import Network.Google.Resource.TagManager.Accounts.Get
import Network.Google.Resource.TagManager.Accounts.List
import Network.Google.Resource.TagManager.Accounts.Update
import Network.Google.Resource.TagManager.Accounts.UserPermissions.Create
import Network.Google.Resource.TagManager.Accounts.UserPermissions.Delete
import Network.Google.Resource.TagManager.Accounts.UserPermissions.Get
import Network.Google.Resource.TagManager.Accounts.UserPermissions.List
import Network.Google.Resource.TagManager.Accounts.UserPermissions.Update
import Network.Google.TagManager.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Tag Manager API service.
type TagManagerAPI =
     AccountsUserPermissionsListResource :<|>
       AccountsUserPermissionsGetResource
       :<|> AccountsUserPermissionsCreateResource
       :<|> AccountsUserPermissionsDeleteResource
       :<|> AccountsUserPermissionsUpdateResource
       :<|> AccountsContainersVersionsUndeleteResource
       :<|> AccountsContainersVersionsGetResource
       :<|> AccountsContainersVersionsSetLatestResource
       :<|> AccountsContainersVersionsLiveResource
       :<|> AccountsContainersVersionsDeleteResource
       :<|> AccountsContainersVersionsUpdateResource
       :<|> AccountsContainersVersionsPublishResource
       :<|> AccountsContainersVersionHeadersListResource
       :<|> AccountsContainersVersionHeadersLatestResource
       :<|> AccountsContainersEnvironmentsListResource
       :<|> AccountsContainersEnvironmentsGetResource
       :<|> AccountsContainersEnvironmentsCreateResource
       :<|>
       AccountsContainersEnvironmentsReauthorizeResource
       :<|> AccountsContainersEnvironmentsDeleteResource
       :<|> AccountsContainersEnvironmentsUpdateResource
       :<|> AccountsContainersWorkspacesZonesListResource
       :<|> AccountsContainersWorkspacesZonesGetResource
       :<|> AccountsContainersWorkspacesZonesCreateResource
       :<|> AccountsContainersWorkspacesZonesRevertResource
       :<|> AccountsContainersWorkspacesZonesDeleteResource
       :<|> AccountsContainersWorkspacesZonesUpdateResource
       :<|>
       AccountsContainersWorkspacesVariablesListResource
       :<|> AccountsContainersWorkspacesVariablesGetResource
       :<|>
       AccountsContainersWorkspacesVariablesCreateResource
       :<|>
       AccountsContainersWorkspacesVariablesRevertResource
       :<|>
       AccountsContainersWorkspacesVariablesDeleteResource
       :<|>
       AccountsContainersWorkspacesVariablesUpdateResource
       :<|> AccountsContainersWorkspacesFoldersListResource
       :<|>
       AccountsContainersWorkspacesFoldersEntitiesResource
       :<|> AccountsContainersWorkspacesFoldersGetResource
       :<|>
       AccountsContainersWorkspacesFoldersCreateResource
       :<|>
       AccountsContainersWorkspacesFoldersRevertResource
       :<|>
       AccountsContainersWorkspacesFoldersMoveEntitiesToFolderResource
       :<|>
       AccountsContainersWorkspacesFoldersDeleteResource
       :<|>
       AccountsContainersWorkspacesFoldersUpdateResource
       :<|>
       AccountsContainersWorkspacesTemplatesListResource
       :<|> AccountsContainersWorkspacesTemplatesGetResource
       :<|>
       AccountsContainersWorkspacesTemplatesCreateResource
       :<|>
       AccountsContainersWorkspacesTemplatesRevertResource
       :<|>
       AccountsContainersWorkspacesTemplatesDeleteResource
       :<|>
       AccountsContainersWorkspacesTemplatesUpdateResource
       :<|> AccountsContainersWorkspacesTriggersListResource
       :<|> AccountsContainersWorkspacesTriggersGetResource
       :<|>
       AccountsContainersWorkspacesTriggersCreateResource
       :<|>
       AccountsContainersWorkspacesTriggersRevertResource
       :<|>
       AccountsContainersWorkspacesTriggersDeleteResource
       :<|>
       AccountsContainersWorkspacesTriggersUpdateResource
       :<|>
       AccountsContainersWorkspacesBuiltInVariablesListResource
       :<|>
       AccountsContainersWorkspacesBuiltInVariablesCreateResource
       :<|>
       AccountsContainersWorkspacesBuiltInVariablesRevertResource
       :<|>
       AccountsContainersWorkspacesBuiltInVariablesDeleteResource
       :<|> AccountsContainersWorkspacesTagsListResource
       :<|> AccountsContainersWorkspacesTagsGetResource
       :<|> AccountsContainersWorkspacesTagsCreateResource
       :<|> AccountsContainersWorkspacesTagsRevertResource
       :<|> AccountsContainersWorkspacesTagsDeleteResource
       :<|> AccountsContainersWorkspacesTagsUpdateResource
       :<|> AccountsContainersWorkspacesListResource
       :<|>
       AccountsContainersWorkspacesResolveConflictResource
       :<|> AccountsContainersWorkspacesQuickPreviewResource
       :<|> AccountsContainersWorkspacesGetResource
       :<|>
       AccountsContainersWorkspacesCreateVersionResource
       :<|> AccountsContainersWorkspacesCreateResource
       :<|> AccountsContainersWorkspacesSyncResource
       :<|> AccountsContainersWorkspacesGetStatusResource
       :<|> AccountsContainersWorkspacesDeleteResource
       :<|> AccountsContainersWorkspacesUpdateResource
       :<|> AccountsContainersListResource
       :<|> AccountsContainersGetResource
       :<|> AccountsContainersCreateResource
       :<|> AccountsContainersDeleteResource
       :<|> AccountsContainersUpdateResource
       :<|> AccountsListResource
       :<|> AccountsGetResource
       :<|> AccountsUpdateResource
