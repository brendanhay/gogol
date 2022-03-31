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
-- Module      : Gogol.TagManager
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API allows clients to access and modify container and tag configuration.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference>
module Gogol.TagManager
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

    -- * Resources

    -- ** tagmanager.accounts.containers.create
    TagManagerAccountsContainersCreateResource,
    newTagManagerAccountsContainersCreate,
    TagManagerAccountsContainersCreate,

    -- ** tagmanager.accounts.containers.delete
    TagManagerAccountsContainersDeleteResource,
    newTagManagerAccountsContainersDelete,
    TagManagerAccountsContainersDelete,

    -- ** tagmanager.accounts.containers.environments.create
    TagManagerAccountsContainersEnvironmentsCreateResource,
    newTagManagerAccountsContainersEnvironmentsCreate,
    TagManagerAccountsContainersEnvironmentsCreate,

    -- ** tagmanager.accounts.containers.environments.delete
    TagManagerAccountsContainersEnvironmentsDeleteResource,
    newTagManagerAccountsContainersEnvironmentsDelete,
    TagManagerAccountsContainersEnvironmentsDelete,

    -- ** tagmanager.accounts.containers.environments.get
    TagManagerAccountsContainersEnvironmentsGetResource,
    newTagManagerAccountsContainersEnvironmentsGet,
    TagManagerAccountsContainersEnvironmentsGet,

    -- ** tagmanager.accounts.containers.environments.list
    TagManagerAccountsContainersEnvironmentsListResource,
    newTagManagerAccountsContainersEnvironmentsList,
    TagManagerAccountsContainersEnvironmentsList,

    -- ** tagmanager.accounts.containers.environments.reauthorize
    TagManagerAccountsContainersEnvironmentsReauthorizeResource,
    newTagManagerAccountsContainersEnvironmentsReauthorize,
    TagManagerAccountsContainersEnvironmentsReauthorize,

    -- ** tagmanager.accounts.containers.environments.update
    TagManagerAccountsContainersEnvironmentsUpdateResource,
    newTagManagerAccountsContainersEnvironmentsUpdate,
    TagManagerAccountsContainersEnvironmentsUpdate,

    -- ** tagmanager.accounts.containers.get
    TagManagerAccountsContainersGetResource,
    newTagManagerAccountsContainersGet,
    TagManagerAccountsContainersGet,

    -- ** tagmanager.accounts.containers.list
    TagManagerAccountsContainersListResource,
    newTagManagerAccountsContainersList,
    TagManagerAccountsContainersList,

    -- ** tagmanager.accounts.containers.update
    TagManagerAccountsContainersUpdateResource,
    newTagManagerAccountsContainersUpdate,
    TagManagerAccountsContainersUpdate,

    -- ** tagmanager.accounts.containers.version_headers.latest
    TagManagerAccountsContainersVersion_headersLatestResource,
    newTagManagerAccountsContainersVersion_headersLatest,
    TagManagerAccountsContainersVersion_headersLatest,

    -- ** tagmanager.accounts.containers.version_headers.list
    TagManagerAccountsContainersVersion_headersListResource,
    newTagManagerAccountsContainersVersion_headersList,
    TagManagerAccountsContainersVersion_headersList,

    -- ** tagmanager.accounts.containers.versions.delete
    TagManagerAccountsContainersVersionsDeleteResource,
    newTagManagerAccountsContainersVersionsDelete,
    TagManagerAccountsContainersVersionsDelete,

    -- ** tagmanager.accounts.containers.versions.get
    TagManagerAccountsContainersVersionsGetResource,
    newTagManagerAccountsContainersVersionsGet,
    TagManagerAccountsContainersVersionsGet,

    -- ** tagmanager.accounts.containers.versions.live
    TagManagerAccountsContainersVersionsLiveResource,
    newTagManagerAccountsContainersVersionsLive,
    TagManagerAccountsContainersVersionsLive,

    -- ** tagmanager.accounts.containers.versions.publish
    TagManagerAccountsContainersVersionsPublishResource,
    newTagManagerAccountsContainersVersionsPublish,
    TagManagerAccountsContainersVersionsPublish,

    -- ** tagmanager.accounts.containers.versions.set_latest
    TagManagerAccountsContainersVersionsSet_latestResource,
    newTagManagerAccountsContainersVersionsSet_latest,
    TagManagerAccountsContainersVersionsSet_latest,

    -- ** tagmanager.accounts.containers.versions.undelete
    TagManagerAccountsContainersVersionsUndeleteResource,
    newTagManagerAccountsContainersVersionsUndelete,
    TagManagerAccountsContainersVersionsUndelete,

    -- ** tagmanager.accounts.containers.versions.update
    TagManagerAccountsContainersVersionsUpdateResource,
    newTagManagerAccountsContainersVersionsUpdate,
    TagManagerAccountsContainersVersionsUpdate,

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.create
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreateResource,
    newTagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate,
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate,

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.delete
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesDeleteResource,
    newTagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete,
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete,

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.list
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesListResource,
    newTagManagerAccountsContainersWorkspacesBuilt_in_variablesList,
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesList,

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.revert
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevertResource,
    newTagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert,
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert,

    -- ** tagmanager.accounts.containers.workspaces.clients.create
    TagManagerAccountsContainersWorkspacesClientsCreateResource,
    newTagManagerAccountsContainersWorkspacesClientsCreate,
    TagManagerAccountsContainersWorkspacesClientsCreate,

    -- ** tagmanager.accounts.containers.workspaces.clients.delete
    TagManagerAccountsContainersWorkspacesClientsDeleteResource,
    newTagManagerAccountsContainersWorkspacesClientsDelete,
    TagManagerAccountsContainersWorkspacesClientsDelete,

    -- ** tagmanager.accounts.containers.workspaces.clients.get
    TagManagerAccountsContainersWorkspacesClientsGetResource,
    newTagManagerAccountsContainersWorkspacesClientsGet,
    TagManagerAccountsContainersWorkspacesClientsGet,

    -- ** tagmanager.accounts.containers.workspaces.clients.list
    TagManagerAccountsContainersWorkspacesClientsListResource,
    newTagManagerAccountsContainersWorkspacesClientsList,
    TagManagerAccountsContainersWorkspacesClientsList,

    -- ** tagmanager.accounts.containers.workspaces.clients.revert
    TagManagerAccountsContainersWorkspacesClientsRevertResource,
    newTagManagerAccountsContainersWorkspacesClientsRevert,
    TagManagerAccountsContainersWorkspacesClientsRevert,

    -- ** tagmanager.accounts.containers.workspaces.clients.update
    TagManagerAccountsContainersWorkspacesClientsUpdateResource,
    newTagManagerAccountsContainersWorkspacesClientsUpdate,
    TagManagerAccountsContainersWorkspacesClientsUpdate,

    -- ** tagmanager.accounts.containers.workspaces.create
    TagManagerAccountsContainersWorkspacesCreateResource,
    newTagManagerAccountsContainersWorkspacesCreate,
    TagManagerAccountsContainersWorkspacesCreate,

    -- ** tagmanager.accounts.containers.workspaces.create_version
    TagManagerAccountsContainersWorkspacesCreate_versionResource,
    newTagManagerAccountsContainersWorkspacesCreate_version,
    TagManagerAccountsContainersWorkspacesCreate_version,

    -- ** tagmanager.accounts.containers.workspaces.delete
    TagManagerAccountsContainersWorkspacesDeleteResource,
    newTagManagerAccountsContainersWorkspacesDelete,
    TagManagerAccountsContainersWorkspacesDelete,

    -- ** tagmanager.accounts.containers.workspaces.folders.create
    TagManagerAccountsContainersWorkspacesFoldersCreateResource,
    newTagManagerAccountsContainersWorkspacesFoldersCreate,
    TagManagerAccountsContainersWorkspacesFoldersCreate,

    -- ** tagmanager.accounts.containers.workspaces.folders.delete
    TagManagerAccountsContainersWorkspacesFoldersDeleteResource,
    newTagManagerAccountsContainersWorkspacesFoldersDelete,
    TagManagerAccountsContainersWorkspacesFoldersDelete,

    -- ** tagmanager.accounts.containers.workspaces.folders.entities
    TagManagerAccountsContainersWorkspacesFoldersEntitiesResource,
    newTagManagerAccountsContainersWorkspacesFoldersEntities,
    TagManagerAccountsContainersWorkspacesFoldersEntities,

    -- ** tagmanager.accounts.containers.workspaces.folders.get
    TagManagerAccountsContainersWorkspacesFoldersGetResource,
    newTagManagerAccountsContainersWorkspacesFoldersGet,
    TagManagerAccountsContainersWorkspacesFoldersGet,

    -- ** tagmanager.accounts.containers.workspaces.folders.list
    TagManagerAccountsContainersWorkspacesFoldersListResource,
    newTagManagerAccountsContainersWorkspacesFoldersList,
    TagManagerAccountsContainersWorkspacesFoldersList,

    -- ** tagmanager.accounts.containers.workspaces.folders.move_entities_to_folder
    TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folderResource,
    newTagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder,
    TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder,

    -- ** tagmanager.accounts.containers.workspaces.folders.revert
    TagManagerAccountsContainersWorkspacesFoldersRevertResource,
    newTagManagerAccountsContainersWorkspacesFoldersRevert,
    TagManagerAccountsContainersWorkspacesFoldersRevert,

    -- ** tagmanager.accounts.containers.workspaces.folders.update
    TagManagerAccountsContainersWorkspacesFoldersUpdateResource,
    newTagManagerAccountsContainersWorkspacesFoldersUpdate,
    TagManagerAccountsContainersWorkspacesFoldersUpdate,

    -- ** tagmanager.accounts.containers.workspaces.get
    TagManagerAccountsContainersWorkspacesGetResource,
    newTagManagerAccountsContainersWorkspacesGet,
    TagManagerAccountsContainersWorkspacesGet,

    -- ** tagmanager.accounts.containers.workspaces.getStatus
    TagManagerAccountsContainersWorkspacesGetStatusResource,
    newTagManagerAccountsContainersWorkspacesGetStatus,
    TagManagerAccountsContainersWorkspacesGetStatus,

    -- ** tagmanager.accounts.containers.workspaces.list
    TagManagerAccountsContainersWorkspacesListResource,
    newTagManagerAccountsContainersWorkspacesList,
    TagManagerAccountsContainersWorkspacesList,

    -- ** tagmanager.accounts.containers.workspaces.quick_preview
    TagManagerAccountsContainersWorkspacesQuick_previewResource,
    newTagManagerAccountsContainersWorkspacesQuick_preview,
    TagManagerAccountsContainersWorkspacesQuick_preview,

    -- ** tagmanager.accounts.containers.workspaces.resolve_conflict
    TagManagerAccountsContainersWorkspacesResolve_conflictResource,
    newTagManagerAccountsContainersWorkspacesResolve_conflict,
    TagManagerAccountsContainersWorkspacesResolve_conflict,

    -- ** tagmanager.accounts.containers.workspaces.sync
    TagManagerAccountsContainersWorkspacesSyncResource,
    newTagManagerAccountsContainersWorkspacesSync,
    TagManagerAccountsContainersWorkspacesSync,

    -- ** tagmanager.accounts.containers.workspaces.tags.create
    TagManagerAccountsContainersWorkspacesTagsCreateResource,
    newTagManagerAccountsContainersWorkspacesTagsCreate,
    TagManagerAccountsContainersWorkspacesTagsCreate,

    -- ** tagmanager.accounts.containers.workspaces.tags.delete
    TagManagerAccountsContainersWorkspacesTagsDeleteResource,
    newTagManagerAccountsContainersWorkspacesTagsDelete,
    TagManagerAccountsContainersWorkspacesTagsDelete,

    -- ** tagmanager.accounts.containers.workspaces.tags.get
    TagManagerAccountsContainersWorkspacesTagsGetResource,
    newTagManagerAccountsContainersWorkspacesTagsGet,
    TagManagerAccountsContainersWorkspacesTagsGet,

    -- ** tagmanager.accounts.containers.workspaces.tags.list
    TagManagerAccountsContainersWorkspacesTagsListResource,
    newTagManagerAccountsContainersWorkspacesTagsList,
    TagManagerAccountsContainersWorkspacesTagsList,

    -- ** tagmanager.accounts.containers.workspaces.tags.revert
    TagManagerAccountsContainersWorkspacesTagsRevertResource,
    newTagManagerAccountsContainersWorkspacesTagsRevert,
    TagManagerAccountsContainersWorkspacesTagsRevert,

    -- ** tagmanager.accounts.containers.workspaces.tags.update
    TagManagerAccountsContainersWorkspacesTagsUpdateResource,
    newTagManagerAccountsContainersWorkspacesTagsUpdate,
    TagManagerAccountsContainersWorkspacesTagsUpdate,

    -- ** tagmanager.accounts.containers.workspaces.templates.create
    TagManagerAccountsContainersWorkspacesTemplatesCreateResource,
    newTagManagerAccountsContainersWorkspacesTemplatesCreate,
    TagManagerAccountsContainersWorkspacesTemplatesCreate,

    -- ** tagmanager.accounts.containers.workspaces.templates.delete
    TagManagerAccountsContainersWorkspacesTemplatesDeleteResource,
    newTagManagerAccountsContainersWorkspacesTemplatesDelete,
    TagManagerAccountsContainersWorkspacesTemplatesDelete,

    -- ** tagmanager.accounts.containers.workspaces.templates.get
    TagManagerAccountsContainersWorkspacesTemplatesGetResource,
    newTagManagerAccountsContainersWorkspacesTemplatesGet,
    TagManagerAccountsContainersWorkspacesTemplatesGet,

    -- ** tagmanager.accounts.containers.workspaces.templates.list
    TagManagerAccountsContainersWorkspacesTemplatesListResource,
    newTagManagerAccountsContainersWorkspacesTemplatesList,
    TagManagerAccountsContainersWorkspacesTemplatesList,

    -- ** tagmanager.accounts.containers.workspaces.templates.revert
    TagManagerAccountsContainersWorkspacesTemplatesRevertResource,
    newTagManagerAccountsContainersWorkspacesTemplatesRevert,
    TagManagerAccountsContainersWorkspacesTemplatesRevert,

    -- ** tagmanager.accounts.containers.workspaces.templates.update
    TagManagerAccountsContainersWorkspacesTemplatesUpdateResource,
    newTagManagerAccountsContainersWorkspacesTemplatesUpdate,
    TagManagerAccountsContainersWorkspacesTemplatesUpdate,

    -- ** tagmanager.accounts.containers.workspaces.triggers.create
    TagManagerAccountsContainersWorkspacesTriggersCreateResource,
    newTagManagerAccountsContainersWorkspacesTriggersCreate,
    TagManagerAccountsContainersWorkspacesTriggersCreate,

    -- ** tagmanager.accounts.containers.workspaces.triggers.delete
    TagManagerAccountsContainersWorkspacesTriggersDeleteResource,
    newTagManagerAccountsContainersWorkspacesTriggersDelete,
    TagManagerAccountsContainersWorkspacesTriggersDelete,

    -- ** tagmanager.accounts.containers.workspaces.triggers.get
    TagManagerAccountsContainersWorkspacesTriggersGetResource,
    newTagManagerAccountsContainersWorkspacesTriggersGet,
    TagManagerAccountsContainersWorkspacesTriggersGet,

    -- ** tagmanager.accounts.containers.workspaces.triggers.list
    TagManagerAccountsContainersWorkspacesTriggersListResource,
    newTagManagerAccountsContainersWorkspacesTriggersList,
    TagManagerAccountsContainersWorkspacesTriggersList,

    -- ** tagmanager.accounts.containers.workspaces.triggers.revert
    TagManagerAccountsContainersWorkspacesTriggersRevertResource,
    newTagManagerAccountsContainersWorkspacesTriggersRevert,
    TagManagerAccountsContainersWorkspacesTriggersRevert,

    -- ** tagmanager.accounts.containers.workspaces.triggers.update
    TagManagerAccountsContainersWorkspacesTriggersUpdateResource,
    newTagManagerAccountsContainersWorkspacesTriggersUpdate,
    TagManagerAccountsContainersWorkspacesTriggersUpdate,

    -- ** tagmanager.accounts.containers.workspaces.update
    TagManagerAccountsContainersWorkspacesUpdateResource,
    newTagManagerAccountsContainersWorkspacesUpdate,
    TagManagerAccountsContainersWorkspacesUpdate,

    -- ** tagmanager.accounts.containers.workspaces.variables.create
    TagManagerAccountsContainersWorkspacesVariablesCreateResource,
    newTagManagerAccountsContainersWorkspacesVariablesCreate,
    TagManagerAccountsContainersWorkspacesVariablesCreate,

    -- ** tagmanager.accounts.containers.workspaces.variables.delete
    TagManagerAccountsContainersWorkspacesVariablesDeleteResource,
    newTagManagerAccountsContainersWorkspacesVariablesDelete,
    TagManagerAccountsContainersWorkspacesVariablesDelete,

    -- ** tagmanager.accounts.containers.workspaces.variables.get
    TagManagerAccountsContainersWorkspacesVariablesGetResource,
    newTagManagerAccountsContainersWorkspacesVariablesGet,
    TagManagerAccountsContainersWorkspacesVariablesGet,

    -- ** tagmanager.accounts.containers.workspaces.variables.list
    TagManagerAccountsContainersWorkspacesVariablesListResource,
    newTagManagerAccountsContainersWorkspacesVariablesList,
    TagManagerAccountsContainersWorkspacesVariablesList,

    -- ** tagmanager.accounts.containers.workspaces.variables.revert
    TagManagerAccountsContainersWorkspacesVariablesRevertResource,
    newTagManagerAccountsContainersWorkspacesVariablesRevert,
    TagManagerAccountsContainersWorkspacesVariablesRevert,

    -- ** tagmanager.accounts.containers.workspaces.variables.update
    TagManagerAccountsContainersWorkspacesVariablesUpdateResource,
    newTagManagerAccountsContainersWorkspacesVariablesUpdate,
    TagManagerAccountsContainersWorkspacesVariablesUpdate,

    -- ** tagmanager.accounts.containers.workspaces.zones.create
    TagManagerAccountsContainersWorkspacesZonesCreateResource,
    newTagManagerAccountsContainersWorkspacesZonesCreate,
    TagManagerAccountsContainersWorkspacesZonesCreate,

    -- ** tagmanager.accounts.containers.workspaces.zones.delete
    TagManagerAccountsContainersWorkspacesZonesDeleteResource,
    newTagManagerAccountsContainersWorkspacesZonesDelete,
    TagManagerAccountsContainersWorkspacesZonesDelete,

    -- ** tagmanager.accounts.containers.workspaces.zones.get
    TagManagerAccountsContainersWorkspacesZonesGetResource,
    newTagManagerAccountsContainersWorkspacesZonesGet,
    TagManagerAccountsContainersWorkspacesZonesGet,

    -- ** tagmanager.accounts.containers.workspaces.zones.list
    TagManagerAccountsContainersWorkspacesZonesListResource,
    newTagManagerAccountsContainersWorkspacesZonesList,
    TagManagerAccountsContainersWorkspacesZonesList,

    -- ** tagmanager.accounts.containers.workspaces.zones.revert
    TagManagerAccountsContainersWorkspacesZonesRevertResource,
    newTagManagerAccountsContainersWorkspacesZonesRevert,
    TagManagerAccountsContainersWorkspacesZonesRevert,

    -- ** tagmanager.accounts.containers.workspaces.zones.update
    TagManagerAccountsContainersWorkspacesZonesUpdateResource,
    newTagManagerAccountsContainersWorkspacesZonesUpdate,
    TagManagerAccountsContainersWorkspacesZonesUpdate,

    -- ** tagmanager.accounts.get
    TagManagerAccountsGetResource,
    newTagManagerAccountsGet,
    TagManagerAccountsGet,

    -- ** tagmanager.accounts.list
    TagManagerAccountsListResource,
    newTagManagerAccountsList,
    TagManagerAccountsList,

    -- ** tagmanager.accounts.update
    TagManagerAccountsUpdateResource,
    newTagManagerAccountsUpdate,
    TagManagerAccountsUpdate,

    -- ** tagmanager.accounts.user_permissions.create
    TagManagerAccountsUser_permissionsCreateResource,
    newTagManagerAccountsUser_permissionsCreate,
    TagManagerAccountsUser_permissionsCreate,

    -- ** tagmanager.accounts.user_permissions.delete
    TagManagerAccountsUser_permissionsDeleteResource,
    newTagManagerAccountsUser_permissionsDelete,
    TagManagerAccountsUser_permissionsDelete,

    -- ** tagmanager.accounts.user_permissions.get
    TagManagerAccountsUser_permissionsGetResource,
    newTagManagerAccountsUser_permissionsGet,
    TagManagerAccountsUser_permissionsGet,

    -- ** tagmanager.accounts.user_permissions.list
    TagManagerAccountsUser_permissionsListResource,
    newTagManagerAccountsUser_permissionsList,
    TagManagerAccountsUser_permissionsList,

    -- ** tagmanager.accounts.user_permissions.update
    TagManagerAccountsUser_permissionsUpdateResource,
    newTagManagerAccountsUser_permissionsUpdate,
    TagManagerAccountsUser_permissionsUpdate,

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

import Gogol.TagManager.Accounts.Containers.Create
import Gogol.TagManager.Accounts.Containers.Delete
import Gogol.TagManager.Accounts.Containers.Environments.Create
import Gogol.TagManager.Accounts.Containers.Environments.Delete
import Gogol.TagManager.Accounts.Containers.Environments.Get
import Gogol.TagManager.Accounts.Containers.Environments.List
import Gogol.TagManager.Accounts.Containers.Environments.Reauthorize
import Gogol.TagManager.Accounts.Containers.Environments.Update
import Gogol.TagManager.Accounts.Containers.Get
import Gogol.TagManager.Accounts.Containers.List
import Gogol.TagManager.Accounts.Containers.Update
import Gogol.TagManager.Accounts.Containers.Version_headers.Latest
import Gogol.TagManager.Accounts.Containers.Version_headers.List
import Gogol.TagManager.Accounts.Containers.Versions.Delete
import Gogol.TagManager.Accounts.Containers.Versions.Get
import Gogol.TagManager.Accounts.Containers.Versions.Live
import Gogol.TagManager.Accounts.Containers.Versions.Publish
import Gogol.TagManager.Accounts.Containers.Versions.Set_latest
import Gogol.TagManager.Accounts.Containers.Versions.Undelete
import Gogol.TagManager.Accounts.Containers.Versions.Update
import Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Clients.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Update
import Gogol.TagManager.Accounts.Containers.Workspaces.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Create_version
import Gogol.TagManager.Accounts.Containers.Workspaces.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Entities
import Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Folders.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Move_entities_to_folder
import Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Update
import Gogol.TagManager.Accounts.Containers.Workspaces.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.GetStatus
import Gogol.TagManager.Accounts.Containers.Workspaces.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Quick_preview
import Gogol.TagManager.Accounts.Containers.Workspaces.Resolve_conflict
import Gogol.TagManager.Accounts.Containers.Workspaces.Sync
import Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Tags.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Update
import Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Templates.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Update
import Gogol.TagManager.Accounts.Containers.Workspaces.Triggers.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Triggers.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Triggers.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Triggers.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Triggers.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Triggers.Update
import Gogol.TagManager.Accounts.Containers.Workspaces.Update
import Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Variables.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Update
import Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Zones.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Update
import Gogol.TagManager.Accounts.Get
import Gogol.TagManager.Accounts.List
import Gogol.TagManager.Accounts.Update
import Gogol.TagManager.Accounts.User_permissions.Create
import Gogol.TagManager.Accounts.User_permissions.Delete
import Gogol.TagManager.Accounts.User_permissions.Get
import Gogol.TagManager.Accounts.User_permissions.List
import Gogol.TagManager.Accounts.User_permissions.Update
import Gogol.TagManager.Types
