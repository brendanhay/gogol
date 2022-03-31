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
-- Module      : Gogol.TagManager.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.TagManager.Types
  ( -- * Configuration
    tagManagerService,

    -- * OAuth Scopes
    Tagmanager'Delete'Containers,
    Tagmanager'Edit'Containers,
    Tagmanager'Edit'Containerversions,
    Tagmanager'Manage'Accounts,
    Tagmanager'Manage'Users,
    Tagmanager'Publish,
    Tagmanager'Readonly,

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

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Internal.Product
import Gogol.TagManager.Internal.Sum

-- | Default request referring to version @v2@ of the Tag Manager API. This contains the host and root path used as a starting point for constructing service requests.
tagManagerService :: Core.ServiceConfig
tagManagerService =
  Core.defaultService
    (Core.ServiceId "tagmanager:v2")
    "tagmanager.googleapis.com"

-- | Delete your Google Tag Manager containers
type Tagmanager'Delete'Containers = "https://www.googleapis.com/auth/tagmanager.delete.containers"

-- | Manage your Google Tag Manager container and its subcomponents, excluding versioning and publishing
type Tagmanager'Edit'Containers = "https://www.googleapis.com/auth/tagmanager.edit.containers"

-- | Manage your Google Tag Manager container versions
type Tagmanager'Edit'Containerversions = "https://www.googleapis.com/auth/tagmanager.edit.containerversions"

-- | View and manage your Google Tag Manager accounts
type Tagmanager'Manage'Accounts = "https://www.googleapis.com/auth/tagmanager.manage.accounts"

-- | Manage user permissions of your Google Tag Manager account and container
type Tagmanager'Manage'Users = "https://www.googleapis.com/auth/tagmanager.manage.users"

-- | Publish your Google Tag Manager container versions
type Tagmanager'Publish = "https://www.googleapis.com/auth/tagmanager.publish"

-- | View your Google Tag Manager container and its subcomponents
type Tagmanager'Readonly = "https://www.googleapis.com/auth/tagmanager.readonly"
