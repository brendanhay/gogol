{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.TagManager.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.TagManager.Types
  ( -- * Configuration
    tagManagerService,

    -- * OAuth Scopes
    tagManagerDeleteContainersScope,
    tagManagerEditContainersScope,
    tagManagerEditContainerversionsScope,
    tagManagerManageAccountsScope,
    tagManagerManageUsersScope,
    tagManagerPublishScope,
    tagManagerReadOnlyScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Account
    Account (..),
    newAccount,

    -- ** AccountAccess
    AccountAccess (..),
    newAccountAccess,

    -- ** AccountAccess_Permission
    AccountAccess_Permission (..),

    -- ** BuiltInVariable
    BuiltInVariable (..),
    newBuiltInVariable,

    -- ** BuiltInVariable_Type
    BuiltInVariable_Type (..),

    -- ** Client
    Client (..),
    newClient,

    -- ** Condition
    Condition (..),
    newCondition,

    -- ** Condition_Type
    Condition_Type (..),

    -- ** Container
    Container (..),
    newContainer,

    -- ** Container_UsageContextItem
    Container_UsageContextItem (..),

    -- ** ContainerAccess
    ContainerAccess (..),
    newContainerAccess,

    -- ** ContainerAccess_Permission
    ContainerAccess_Permission (..),

    -- ** ContainerVersion
    ContainerVersion (..),
    newContainerVersion,

    -- ** ContainerVersionHeader
    ContainerVersionHeader (..),
    newContainerVersionHeader,

    -- ** CreateBuiltInVariableResponse
    CreateBuiltInVariableResponse (..),
    newCreateBuiltInVariableResponse,

    -- ** CreateContainerVersionRequestVersionOptions
    CreateContainerVersionRequestVersionOptions (..),
    newCreateContainerVersionRequestVersionOptions,

    -- ** CreateContainerVersionResponse
    CreateContainerVersionResponse (..),
    newCreateContainerVersionResponse,

    -- ** CustomTemplate
    CustomTemplate (..),
    newCustomTemplate,

    -- ** Entity
    Entity (..),
    newEntity,

    -- ** Entity_ChangeStatus
    Entity_ChangeStatus (..),

    -- ** Environment
    Environment (..),
    newEnvironment,

    -- ** Environment_Type
    Environment_Type (..),

    -- ** Folder
    Folder (..),
    newFolder,

    -- ** FolderEntities
    FolderEntities (..),
    newFolderEntities,

    -- ** GalleryReference
    GalleryReference (..),
    newGalleryReference,

    -- ** GetWorkspaceStatusResponse
    GetWorkspaceStatusResponse (..),
    newGetWorkspaceStatusResponse,

    -- ** ListAccountsResponse
    ListAccountsResponse (..),
    newListAccountsResponse,

    -- ** ListClientsResponse
    ListClientsResponse (..),
    newListClientsResponse,

    -- ** ListContainerVersionsResponse
    ListContainerVersionsResponse (..),
    newListContainerVersionsResponse,

    -- ** ListContainersResponse
    ListContainersResponse (..),
    newListContainersResponse,

    -- ** ListEnabledBuiltInVariablesResponse
    ListEnabledBuiltInVariablesResponse (..),
    newListEnabledBuiltInVariablesResponse,

    -- ** ListEnvironmentsResponse
    ListEnvironmentsResponse (..),
    newListEnvironmentsResponse,

    -- ** ListFoldersResponse
    ListFoldersResponse (..),
    newListFoldersResponse,

    -- ** ListTagsResponse
    ListTagsResponse (..),
    newListTagsResponse,

    -- ** ListTemplatesResponse
    ListTemplatesResponse (..),
    newListTemplatesResponse,

    -- ** ListTriggersResponse
    ListTriggersResponse (..),
    newListTriggersResponse,

    -- ** ListUserPermissionsResponse
    ListUserPermissionsResponse (..),
    newListUserPermissionsResponse,

    -- ** ListVariablesResponse
    ListVariablesResponse (..),
    newListVariablesResponse,

    -- ** ListWorkspacesResponse
    ListWorkspacesResponse (..),
    newListWorkspacesResponse,

    -- ** ListZonesResponse
    ListZonesResponse (..),
    newListZonesResponse,

    -- ** MergeConflict
    MergeConflict (..),
    newMergeConflict,

    -- ** Parameter
    Parameter (..),
    newParameter,

    -- ** Parameter_Type
    Parameter_Type (..),

    -- ** PublishContainerVersionResponse
    PublishContainerVersionResponse (..),
    newPublishContainerVersionResponse,

    -- ** QuickPreviewResponse
    QuickPreviewResponse (..),
    newQuickPreviewResponse,

    -- ** RevertBuiltInVariableResponse
    RevertBuiltInVariableResponse (..),
    newRevertBuiltInVariableResponse,

    -- ** RevertClientResponse
    RevertClientResponse (..),
    newRevertClientResponse,

    -- ** RevertFolderResponse
    RevertFolderResponse (..),
    newRevertFolderResponse,

    -- ** RevertTagResponse
    RevertTagResponse (..),
    newRevertTagResponse,

    -- ** RevertTemplateResponse
    RevertTemplateResponse (..),
    newRevertTemplateResponse,

    -- ** RevertTriggerResponse
    RevertTriggerResponse (..),
    newRevertTriggerResponse,

    -- ** RevertVariableResponse
    RevertVariableResponse (..),
    newRevertVariableResponse,

    -- ** RevertZoneResponse
    RevertZoneResponse (..),
    newRevertZoneResponse,

    -- ** SetupTag
    SetupTag (..),
    newSetupTag,

    -- ** SyncStatus
    SyncStatus (..),
    newSyncStatus,

    -- ** SyncWorkspaceResponse
    SyncWorkspaceResponse (..),
    newSyncWorkspaceResponse,

    -- ** Tag
    Tag (..),
    newTag,

    -- ** Tag_TagFiringOption
    Tag_TagFiringOption (..),

    -- ** TagConsentSetting
    TagConsentSetting (..),
    newTagConsentSetting,

    -- ** TagConsentSetting_ConsentStatus
    TagConsentSetting_ConsentStatus (..),

    -- ** TeardownTag
    TeardownTag (..),
    newTeardownTag,

    -- ** Trigger
    Trigger (..),
    newTrigger,

    -- ** Trigger_Type
    Trigger_Type (..),

    -- ** UserPermission
    UserPermission (..),
    newUserPermission,

    -- ** Variable
    Variable (..),
    newVariable,

    -- ** VariableFormatValue
    VariableFormatValue (..),
    newVariableFormatValue,

    -- ** VariableFormatValue_CaseConversionType
    VariableFormatValue_CaseConversionType (..),

    -- ** Workspace
    Workspace (..),
    newWorkspace,

    -- ** Zone
    Zone (..),
    newZone,

    -- ** ZoneBoundary
    ZoneBoundary (..),
    newZoneBoundary,

    -- ** ZoneChildContainer
    ZoneChildContainer (..),
    newZoneChildContainer,

    -- ** ZoneTypeRestriction
    ZoneTypeRestriction (..),
    newZoneTypeRestriction,

    -- ** AccountsContainersWorkspacesBuilt_in_variablesCreateType
    AccountsContainersWorkspacesBuilt_in_variablesCreateType (..),

    -- ** AccountsContainersWorkspacesBuilt_in_variablesDeleteType
    AccountsContainersWorkspacesBuilt_in_variablesDeleteType (..),

    -- ** AccountsContainersWorkspacesBuilt_in_variablesRevertType
    AccountsContainersWorkspacesBuilt_in_variablesRevertType (..),
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TagManager.Internal.Product
import Network.Google.TagManager.Internal.Sum

-- | Default request referring to version @v2@ of the Tag Manager API. This contains the host and root path used as a starting point for constructing service requests.
tagManagerService :: Core.ServiceConfig
tagManagerService =
  Core.defaultService
    (Core.ServiceId "tagmanager:v2")
    "tagmanager.googleapis.com"

-- | Delete your Google Tag Manager containers
tagManagerDeleteContainersScope :: Core.Proxy '["https://www.googleapis.com/auth/tagmanager.delete.containers"]
tagManagerDeleteContainersScope = Core.Proxy

-- | Manage your Google Tag Manager container and its subcomponents, excluding versioning and publishing
tagManagerEditContainersScope :: Core.Proxy '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
tagManagerEditContainersScope = Core.Proxy

-- | Manage your Google Tag Manager container versions
tagManagerEditContainerversionsScope :: Core.Proxy '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
tagManagerEditContainerversionsScope = Core.Proxy

-- | View and manage your Google Tag Manager accounts
tagManagerManageAccountsScope :: Core.Proxy '["https://www.googleapis.com/auth/tagmanager.manage.accounts"]
tagManagerManageAccountsScope = Core.Proxy

-- | Manage user permissions of your Google Tag Manager account and container
tagManagerManageUsersScope :: Core.Proxy '["https://www.googleapis.com/auth/tagmanager.manage.users"]
tagManagerManageUsersScope = Core.Proxy

-- | Publish your Google Tag Manager container versions
tagManagerPublishScope :: Core.Proxy '["https://www.googleapis.com/auth/tagmanager.publish"]
tagManagerPublishScope = Core.Proxy

-- | View your Google Tag Manager container and its subcomponents
tagManagerReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/tagmanager.readonly"]
tagManagerReadOnlyScope = Core.Proxy
