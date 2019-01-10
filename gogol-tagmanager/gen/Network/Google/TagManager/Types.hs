{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TagManager.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TagManager.Types
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

    -- * CreateWorkspaceProposalRequest
    , CreateWorkspaceProposalRequest
    , createWorkspaceProposalRequest
    , cwprInitialComment
    , cwprReviewers

    -- * ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrNextPageToken
    , lvrVariable

    -- * ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrNextPageToken
    , lfrFolder

    -- * ListEnvironmentsResponse
    , ListEnvironmentsResponse
    , listEnvironmentsResponse
    , lerNextPageToken
    , lerEnvironment

    -- * RevertFolderResponse
    , RevertFolderResponse
    , revertFolderResponse
    , rfrFolder

    -- * BuiltInVariableType
    , BuiltInVariableType (..)

    -- * RevertVariableResponse
    , RevertVariableResponse
    , revertVariableResponse
    , rvrVariable

    -- * PublishContainerVersionResponse
    , PublishContainerVersionResponse
    , publishContainerVersionResponse
    , pcvrCompilerError
    , pcvrContainerVersion

    -- * ListWorkspacesResponse
    , ListWorkspacesResponse
    , listWorkspacesResponse
    , lwrNextPageToken
    , lwrWorkspace

    -- * ContainerVersionHeader
    , ContainerVersionHeader
    , containerVersionHeader
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

    -- * TeardownTag
    , TeardownTag
    , teardownTag
    , ttStopTeardownOnFailure
    , ttTagName

    -- * ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , ltrNextPageToken
    , ltrTrigger

    -- * Tag
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
    , tNotes
    , tPaused
    , tFiringRuleId
    , tParameter

    -- * ZoneTypeRestriction
    , ZoneTypeRestriction
    , zoneTypeRestriction
    , ztrEnable
    , ztrWhiteListedTypeId

    -- * WorkspaceProposalHistoryStatusChangeOldStatus
    , WorkspaceProposalHistoryStatusChangeOldStatus (..)

    -- * CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrNewWorkspacePath
    , ccvrContainerVersion
    , ccvrSyncStatus

    -- * CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoNotes

    -- * Workspace
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

    -- * UpdateWorkspaceProposalRequestStatus
    , UpdateWorkspaceProposalRequestStatus (..)

    -- * AccountsContainersWorkspacesBuilt_in_variablesDeleteType
    , AccountsContainersWorkspacesBuilt_in_variablesDeleteType (..)

    -- * Environment
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

    -- * AccountAccess
    , AccountAccess
    , accountAccess
    , aaPermission

    -- * TriggerType
    , TriggerType (..)

    -- * ListUserPermissionsResponse
    , ListUserPermissionsResponse
    , listUserPermissionsResponse
    , luprNextPageToken
    , luprUserPermission

    -- * ContainerAccessPermission
    , ContainerAccessPermission (..)

    -- * ContainerUsageContextItem
    , ContainerUsageContextItem (..)

    -- * AccountsContainersWorkspacesBuilt_in_variablesCreateType
    , AccountsContainersWorkspacesBuilt_in_variablesCreateType (..)

    -- * WorkspaceProposalHistoryComment
    , WorkspaceProposalHistoryComment
    , workspaceProposalHistoryComment
    , wphcContent

    -- * CreateBuiltInVariableResponse
    , CreateBuiltInVariableResponse
    , createBuiltInVariableResponse
    , cbivrBuiltInVariable

    -- * WorkspaceProposalUserType
    , WorkspaceProposalUserType (..)

    -- * WorkspaceProposalHistory
    , WorkspaceProposalHistory
    , workspaceProposalHistory
    , wphCreatedBy
    , wphStatusChange
    , wphType
    , wphComment
    , wphCreatedTimestamp

    -- * ZoneChildContainer
    , ZoneChildContainer
    , zoneChildContainer
    , zccPublicId
    , zccNickname

    -- * ConditionType
    , ConditionType (..)

    -- * ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larNextPageToken
    , larAccount

    -- * MergeConflict
    , MergeConflict
    , mergeConflict
    , mcEntityInBaseVersion
    , mcEntityInWorkspace

    -- * TagTagFiringOption
    , TagTagFiringOption (..)

    -- * Folder
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

    -- * ZoneBoundary
    , ZoneBoundary
    , zoneBoundary
    , zbCustomEvaluationTriggerId
    , zbCondition

    -- * Variable
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
    , vWorkspaceId
    , vType
    , vScheduleStartMs
    , vNotes
    , vEnablingTriggerId
    , vParameter

    -- * Zone
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

    -- * AccountAccessPermission
    , AccountAccessPermission (..)

    -- * SyncWorkspaceResponse
    , SyncWorkspaceResponse
    , syncWorkspaceResponse
    , swrMergeConflict
    , swrSyncStatus

    -- * RevertTriggerResponse
    , RevertTriggerResponse
    , revertTriggerResponse
    , rtrTrigger

    -- * ParameterType
    , ParameterType (..)

    -- * Account
    , Account
    , account
    , aPath
    , aShareData
    , aFingerprint
    , aAccountId
    , aName
    , aTagManagerURL

    -- * EntityChangeStatus
    , EntityChangeStatus (..)

    -- * UpdateWorkspaceProposalRequest
    , UpdateWorkspaceProposalRequest
    , updateWorkspaceProposalRequest
    , uwprStatus
    , uwprNewComment
    , uwprFingerprint
    , uwprReviewers

    -- * GetWorkspaceStatusResponse
    , GetWorkspaceStatusResponse
    , getWorkspaceStatusResponse
    , gwsrMergeConflict
    , gwsrWorkspaceChange

    -- * QuickPreviewResponse
    , QuickPreviewResponse
    , quickPreviewResponse
    , qprCompilerError
    , qprContainerVersion
    , qprSyncStatus

    -- * ListContainerVersionsResponse
    , ListContainerVersionsResponse
    , listContainerVersionsResponse
    , lcvrNextPageToken
    , lcvrContainerVersionHeader

    -- * Container
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

    -- * BuiltInVariable
    , BuiltInVariable
    , builtInVariable
    , bivContainerId
    , bivPath
    , bivAccountId
    , bivName
    , bivWorkspaceId
    , bivType

    -- * UserPermission
    , UserPermission
    , userPermission
    , upPath
    , upAccountAccess
    , upAccountId
    , upEmailAddress
    , upContainerAccess

    -- * ContainerVersion
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
    , cvDescription

    -- * EnvironmentType
    , EnvironmentType (..)

    -- * SetupTag
    , SetupTag
    , setupTag
    , stTagName
    , stStopOnSetupFailure

    -- * WorkspaceProposalStatus
    , WorkspaceProposalStatus (..)

    -- * ListContainersResponse
    , ListContainersResponse
    , listContainersResponse
    , lcrNextPageToken
    , lcrContainer

    -- * Trigger
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

    -- * ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , lNextPageToken
    , lTag

    -- * ListEnabledBuiltInVariablesResponse
    , ListEnabledBuiltInVariablesResponse
    , listEnabledBuiltInVariablesResponse
    , lebivrNextPageToken
    , lebivrBuiltInVariable

    -- * WorkspaceProposalUser
    , WorkspaceProposalUser
    , workspaceProposalUser
    , wpuGaiaId
    , wpuType

    -- * FolderEntities
    , FolderEntities
    , folderEntities
    , feNextPageToken
    , feTag
    , feVariable
    , feTrigger

    -- * SyncStatus
    , SyncStatus
    , syncStatus
    , ssSyncError
    , ssMergeConflict

    -- * RevertTagResponse
    , RevertTagResponse
    , revertTagResponse
    , rtrTag

    -- * Condition
    , Condition
    , condition
    , cType
    , cParameter

    -- * WorkspaceProposalHistoryType
    , WorkspaceProposalHistoryType (..)

    -- * Entity
    , Entity
    , entity
    , eTag
    , eFolder
    , eVariable
    , eChangeStatus
    , eTrigger

    -- * ContainerAccess
    , ContainerAccess
    , containerAccess
    , caContainerId
    , caPermission

    -- * Timestamp
    , Timestamp
    , timestamp
    , tNanos
    , tSeconds

    -- * RevertBuiltInVariableResponse
    , RevertBuiltInVariableResponse
    , revertBuiltInVariableResponse
    , rbivrEnabled

    -- * AccountsContainersWorkspacesBuilt_in_variablesRevertType
    , AccountsContainersWorkspacesBuilt_in_variablesRevertType (..)

    -- * WorkspaceProposalHistoryStatusChangeNewStatus
    , WorkspaceProposalHistoryStatusChangeNewStatus (..)

    -- * WorkspaceProposalHistoryStatusChange
    , WorkspaceProposalHistoryStatusChange
    , workspaceProposalHistoryStatusChange
    , wphscOldStatus
    , wphscNewStatus

    -- * WorkspaceProposal
    , WorkspaceProposal
    , workspaceProposal
    , wpStatus
    , wpHistory
    , wpPath
    , wpFingerprint
    , wpAuthors
    , wpReviewers

    -- * Parameter
    , Parameter
    , parameter
    , pList
    , pValue
    , pMap
    , pKey
    , pType
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types.Product
import           Network.Google.TagManager.Types.Sum

-- | Default request referring to version 'v2' of the Tag Manager API. This contains the host and root path used as a starting point for constructing service requests.
tagManagerService :: ServiceConfig
tagManagerService
  = defaultService (ServiceId "tagmanager:v2")
      "www.googleapis.com"

-- | View your Google Tag Manager container and its subcomponents
tagManagerReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.readonly"]
tagManagerReadOnlyScope = Proxy;

-- | Manage your Google Tag Manager container and its subcomponents,
-- excluding versioning and publishing
tagManagerEditContainersScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
tagManagerEditContainersScope = Proxy;

-- | View and manage your Google Tag Manager accounts
tagManagerManageAccountsScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.manage.accounts"]
tagManagerManageAccountsScope = Proxy;

-- | Delete your Google Tag Manager containers
tagManagerDeleteContainersScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.delete.containers"]
tagManagerDeleteContainersScope = Proxy;

-- | Manage user permissions of your Google Tag Manager account and container
tagManagerManageUsersScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.manage.users"]
tagManagerManageUsersScope = Proxy;

-- | Publish your Google Tag Manager container versions
tagManagerPublishScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.publish"]
tagManagerPublishScope = Proxy;

-- | Manage your Google Tag Manager container versions
tagManagerEditContainerversionsScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
tagManagerEditContainerversionsScope = Proxy;
