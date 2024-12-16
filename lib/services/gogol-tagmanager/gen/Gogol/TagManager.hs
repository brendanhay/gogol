{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
    (
    -- * Configuration
      tagManagerService

    -- * OAuth Scopes
    , Tagmanager'Delete'Containers
    , Tagmanager'Edit'Containers
    , Tagmanager'Edit'Containerversions
    , Tagmanager'Manage'Accounts
    , Tagmanager'Manage'Users
    , Tagmanager'Publish
    , Tagmanager'Readonly

    -- * Resources

    -- ** tagmanager.accounts.containers.combine
    , TagManagerAccountsContainersCombineResource
    , TagManagerAccountsContainersCombine (..)
    , newTagManagerAccountsContainersCombine

    -- ** tagmanager.accounts.containers.create
    , TagManagerAccountsContainersCreateResource
    , TagManagerAccountsContainersCreate (..)
    , newTagManagerAccountsContainersCreate

    -- ** tagmanager.accounts.containers.delete
    , TagManagerAccountsContainersDeleteResource
    , TagManagerAccountsContainersDelete (..)
    , newTagManagerAccountsContainersDelete

    -- ** tagmanager.accounts.containers.destinations.get
    , TagManagerAccountsContainersDestinationsGetResource
    , TagManagerAccountsContainersDestinationsGet (..)
    , newTagManagerAccountsContainersDestinationsGet

    -- ** tagmanager.accounts.containers.destinations.link
    , TagManagerAccountsContainersDestinationsLinkResource
    , TagManagerAccountsContainersDestinationsLink (..)
    , newTagManagerAccountsContainersDestinationsLink

    -- ** tagmanager.accounts.containers.destinations.list
    , TagManagerAccountsContainersDestinationsListResource
    , TagManagerAccountsContainersDestinationsList (..)
    , newTagManagerAccountsContainersDestinationsList

    -- ** tagmanager.accounts.containers.environments.create
    , TagManagerAccountsContainersEnvironmentsCreateResource
    , TagManagerAccountsContainersEnvironmentsCreate (..)
    , newTagManagerAccountsContainersEnvironmentsCreate

    -- ** tagmanager.accounts.containers.environments.delete
    , TagManagerAccountsContainersEnvironmentsDeleteResource
    , TagManagerAccountsContainersEnvironmentsDelete (..)
    , newTagManagerAccountsContainersEnvironmentsDelete

    -- ** tagmanager.accounts.containers.environments.get
    , TagManagerAccountsContainersEnvironmentsGetResource
    , TagManagerAccountsContainersEnvironmentsGet (..)
    , newTagManagerAccountsContainersEnvironmentsGet

    -- ** tagmanager.accounts.containers.environments.list
    , TagManagerAccountsContainersEnvironmentsListResource
    , TagManagerAccountsContainersEnvironmentsList (..)
    , newTagManagerAccountsContainersEnvironmentsList

    -- ** tagmanager.accounts.containers.environments.reauthorize
    , TagManagerAccountsContainersEnvironmentsReauthorizeResource
    , TagManagerAccountsContainersEnvironmentsReauthorize (..)
    , newTagManagerAccountsContainersEnvironmentsReauthorize

    -- ** tagmanager.accounts.containers.environments.update
    , TagManagerAccountsContainersEnvironmentsUpdateResource
    , TagManagerAccountsContainersEnvironmentsUpdate (..)
    , newTagManagerAccountsContainersEnvironmentsUpdate

    -- ** tagmanager.accounts.containers.get
    , TagManagerAccountsContainersGetResource
    , TagManagerAccountsContainersGet (..)
    , newTagManagerAccountsContainersGet

    -- ** tagmanager.accounts.containers.list
    , TagManagerAccountsContainersListResource
    , TagManagerAccountsContainersList (..)
    , newTagManagerAccountsContainersList

    -- ** tagmanager.accounts.containers.lookup
    , TagManagerAccountsContainersLookupResource
    , TagManagerAccountsContainersLookup (..)
    , newTagManagerAccountsContainersLookup

    -- ** tagmanager.accounts.containers.move_tag_id
    , TagManagerAccountsContainersMove_tag_idResource
    , TagManagerAccountsContainersMove_tag_id (..)
    , newTagManagerAccountsContainersMove_tag_id

    -- ** tagmanager.accounts.containers.snippet
    , TagManagerAccountsContainersSnippetResource
    , TagManagerAccountsContainersSnippet (..)
    , newTagManagerAccountsContainersSnippet

    -- ** tagmanager.accounts.containers.update
    , TagManagerAccountsContainersUpdateResource
    , TagManagerAccountsContainersUpdate (..)
    , newTagManagerAccountsContainersUpdate

    -- ** tagmanager.accounts.containers.version_headers.latest
    , TagManagerAccountsContainersVersion_headersLatestResource
    , TagManagerAccountsContainersVersion_headersLatest (..)
    , newTagManagerAccountsContainersVersion_headersLatest

    -- ** tagmanager.accounts.containers.version_headers.list
    , TagManagerAccountsContainersVersion_headersListResource
    , TagManagerAccountsContainersVersion_headersList (..)
    , newTagManagerAccountsContainersVersion_headersList

    -- ** tagmanager.accounts.containers.versions.delete
    , TagManagerAccountsContainersVersionsDeleteResource
    , TagManagerAccountsContainersVersionsDelete (..)
    , newTagManagerAccountsContainersVersionsDelete

    -- ** tagmanager.accounts.containers.versions.get
    , TagManagerAccountsContainersVersionsGetResource
    , TagManagerAccountsContainersVersionsGet (..)
    , newTagManagerAccountsContainersVersionsGet

    -- ** tagmanager.accounts.containers.versions.live
    , TagManagerAccountsContainersVersionsLiveResource
    , TagManagerAccountsContainersVersionsLive (..)
    , newTagManagerAccountsContainersVersionsLive

    -- ** tagmanager.accounts.containers.versions.publish
    , TagManagerAccountsContainersVersionsPublishResource
    , TagManagerAccountsContainersVersionsPublish (..)
    , newTagManagerAccountsContainersVersionsPublish

    -- ** tagmanager.accounts.containers.versions.set_latest
    , TagManagerAccountsContainersVersionsSet_latestResource
    , TagManagerAccountsContainersVersionsSet_latest (..)
    , newTagManagerAccountsContainersVersionsSet_latest

    -- ** tagmanager.accounts.containers.versions.undelete
    , TagManagerAccountsContainersVersionsUndeleteResource
    , TagManagerAccountsContainersVersionsUndelete (..)
    , newTagManagerAccountsContainersVersionsUndelete

    -- ** tagmanager.accounts.containers.versions.update
    , TagManagerAccountsContainersVersionsUpdateResource
    , TagManagerAccountsContainersVersionsUpdate (..)
    , newTagManagerAccountsContainersVersionsUpdate

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.create
    , TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreateResource
    , TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate (..)
    , newTagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.delete
    , TagManagerAccountsContainersWorkspacesBuilt_in_variablesDeleteResource
    , TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete (..)
    , newTagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.list
    , TagManagerAccountsContainersWorkspacesBuilt_in_variablesListResource
    , TagManagerAccountsContainersWorkspacesBuilt_in_variablesList (..)
    , newTagManagerAccountsContainersWorkspacesBuilt_in_variablesList

    -- ** tagmanager.accounts.containers.workspaces.built_in_variables.revert
    , TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevertResource
    , TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert (..)
    , newTagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert

    -- ** tagmanager.accounts.containers.workspaces.clients.create
    , TagManagerAccountsContainersWorkspacesClientsCreateResource
    , TagManagerAccountsContainersWorkspacesClientsCreate (..)
    , newTagManagerAccountsContainersWorkspacesClientsCreate

    -- ** tagmanager.accounts.containers.workspaces.clients.delete
    , TagManagerAccountsContainersWorkspacesClientsDeleteResource
    , TagManagerAccountsContainersWorkspacesClientsDelete (..)
    , newTagManagerAccountsContainersWorkspacesClientsDelete

    -- ** tagmanager.accounts.containers.workspaces.clients.get
    , TagManagerAccountsContainersWorkspacesClientsGetResource
    , TagManagerAccountsContainersWorkspacesClientsGet (..)
    , newTagManagerAccountsContainersWorkspacesClientsGet

    -- ** tagmanager.accounts.containers.workspaces.clients.list
    , TagManagerAccountsContainersWorkspacesClientsListResource
    , TagManagerAccountsContainersWorkspacesClientsList (..)
    , newTagManagerAccountsContainersWorkspacesClientsList

    -- ** tagmanager.accounts.containers.workspaces.clients.revert
    , TagManagerAccountsContainersWorkspacesClientsRevertResource
    , TagManagerAccountsContainersWorkspacesClientsRevert (..)
    , newTagManagerAccountsContainersWorkspacesClientsRevert

    -- ** tagmanager.accounts.containers.workspaces.clients.update
    , TagManagerAccountsContainersWorkspacesClientsUpdateResource
    , TagManagerAccountsContainersWorkspacesClientsUpdate (..)
    , newTagManagerAccountsContainersWorkspacesClientsUpdate

    -- ** tagmanager.accounts.containers.workspaces.create
    , TagManagerAccountsContainersWorkspacesCreateResource
    , TagManagerAccountsContainersWorkspacesCreate (..)
    , newTagManagerAccountsContainersWorkspacesCreate

    -- ** tagmanager.accounts.containers.workspaces.create_version
    , TagManagerAccountsContainersWorkspacesCreate_versionResource
    , TagManagerAccountsContainersWorkspacesCreate_version (..)
    , newTagManagerAccountsContainersWorkspacesCreate_version

    -- ** tagmanager.accounts.containers.workspaces.delete
    , TagManagerAccountsContainersWorkspacesDeleteResource
    , TagManagerAccountsContainersWorkspacesDelete (..)
    , newTagManagerAccountsContainersWorkspacesDelete

    -- ** tagmanager.accounts.containers.workspaces.folders.create
    , TagManagerAccountsContainersWorkspacesFoldersCreateResource
    , TagManagerAccountsContainersWorkspacesFoldersCreate (..)
    , newTagManagerAccountsContainersWorkspacesFoldersCreate

    -- ** tagmanager.accounts.containers.workspaces.folders.delete
    , TagManagerAccountsContainersWorkspacesFoldersDeleteResource
    , TagManagerAccountsContainersWorkspacesFoldersDelete (..)
    , newTagManagerAccountsContainersWorkspacesFoldersDelete

    -- ** tagmanager.accounts.containers.workspaces.folders.entities
    , TagManagerAccountsContainersWorkspacesFoldersEntitiesResource
    , TagManagerAccountsContainersWorkspacesFoldersEntities (..)
    , newTagManagerAccountsContainersWorkspacesFoldersEntities

    -- ** tagmanager.accounts.containers.workspaces.folders.get
    , TagManagerAccountsContainersWorkspacesFoldersGetResource
    , TagManagerAccountsContainersWorkspacesFoldersGet (..)
    , newTagManagerAccountsContainersWorkspacesFoldersGet

    -- ** tagmanager.accounts.containers.workspaces.folders.list
    , TagManagerAccountsContainersWorkspacesFoldersListResource
    , TagManagerAccountsContainersWorkspacesFoldersList (..)
    , newTagManagerAccountsContainersWorkspacesFoldersList

    -- ** tagmanager.accounts.containers.workspaces.folders.move_entities_to_folder
    , TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folderResource
    , TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder (..)
    , newTagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder

    -- ** tagmanager.accounts.containers.workspaces.folders.revert
    , TagManagerAccountsContainersWorkspacesFoldersRevertResource
    , TagManagerAccountsContainersWorkspacesFoldersRevert (..)
    , newTagManagerAccountsContainersWorkspacesFoldersRevert

    -- ** tagmanager.accounts.containers.workspaces.folders.update
    , TagManagerAccountsContainersWorkspacesFoldersUpdateResource
    , TagManagerAccountsContainersWorkspacesFoldersUpdate (..)
    , newTagManagerAccountsContainersWorkspacesFoldersUpdate

    -- ** tagmanager.accounts.containers.workspaces.get
    , TagManagerAccountsContainersWorkspacesGetResource
    , TagManagerAccountsContainersWorkspacesGet (..)
    , newTagManagerAccountsContainersWorkspacesGet

    -- ** tagmanager.accounts.containers.workspaces.getStatus
    , TagManagerAccountsContainersWorkspacesGetStatusResource
    , TagManagerAccountsContainersWorkspacesGetStatus (..)
    , newTagManagerAccountsContainersWorkspacesGetStatus

    -- ** tagmanager.accounts.containers.workspaces.gtag_config.create
    , TagManagerAccountsContainersWorkspacesGtag_configCreateResource
    , TagManagerAccountsContainersWorkspacesGtag_configCreate (..)
    , newTagManagerAccountsContainersWorkspacesGtag_configCreate

    -- ** tagmanager.accounts.containers.workspaces.gtag_config.delete
    , TagManagerAccountsContainersWorkspacesGtag_configDeleteResource
    , TagManagerAccountsContainersWorkspacesGtag_configDelete (..)
    , newTagManagerAccountsContainersWorkspacesGtag_configDelete

    -- ** tagmanager.accounts.containers.workspaces.gtag_config.get
    , TagManagerAccountsContainersWorkspacesGtag_configGetResource
    , TagManagerAccountsContainersWorkspacesGtag_configGet (..)
    , newTagManagerAccountsContainersWorkspacesGtag_configGet

    -- ** tagmanager.accounts.containers.workspaces.gtag_config.list
    , TagManagerAccountsContainersWorkspacesGtag_configListResource
    , TagManagerAccountsContainersWorkspacesGtag_configList (..)
    , newTagManagerAccountsContainersWorkspacesGtag_configList

    -- ** tagmanager.accounts.containers.workspaces.gtag_config.update
    , TagManagerAccountsContainersWorkspacesGtag_configUpdateResource
    , TagManagerAccountsContainersWorkspacesGtag_configUpdate (..)
    , newTagManagerAccountsContainersWorkspacesGtag_configUpdate

    -- ** tagmanager.accounts.containers.workspaces.list
    , TagManagerAccountsContainersWorkspacesListResource
    , TagManagerAccountsContainersWorkspacesList (..)
    , newTagManagerAccountsContainersWorkspacesList

    -- ** tagmanager.accounts.containers.workspaces.quick_preview
    , TagManagerAccountsContainersWorkspacesQuick_previewResource
    , TagManagerAccountsContainersWorkspacesQuick_preview (..)
    , newTagManagerAccountsContainersWorkspacesQuick_preview

    -- ** tagmanager.accounts.containers.workspaces.resolve_conflict
    , TagManagerAccountsContainersWorkspacesResolve_conflictResource
    , TagManagerAccountsContainersWorkspacesResolve_conflict (..)
    , newTagManagerAccountsContainersWorkspacesResolve_conflict

    -- ** tagmanager.accounts.containers.workspaces.sync
    , TagManagerAccountsContainersWorkspacesSyncResource
    , TagManagerAccountsContainersWorkspacesSync (..)
    , newTagManagerAccountsContainersWorkspacesSync

    -- ** tagmanager.accounts.containers.workspaces.tags.create
    , TagManagerAccountsContainersWorkspacesTagsCreateResource
    , TagManagerAccountsContainersWorkspacesTagsCreate (..)
    , newTagManagerAccountsContainersWorkspacesTagsCreate

    -- ** tagmanager.accounts.containers.workspaces.tags.delete
    , TagManagerAccountsContainersWorkspacesTagsDeleteResource
    , TagManagerAccountsContainersWorkspacesTagsDelete (..)
    , newTagManagerAccountsContainersWorkspacesTagsDelete

    -- ** tagmanager.accounts.containers.workspaces.tags.get
    , TagManagerAccountsContainersWorkspacesTagsGetResource
    , TagManagerAccountsContainersWorkspacesTagsGet (..)
    , newTagManagerAccountsContainersWorkspacesTagsGet

    -- ** tagmanager.accounts.containers.workspaces.tags.list
    , TagManagerAccountsContainersWorkspacesTagsListResource
    , TagManagerAccountsContainersWorkspacesTagsList (..)
    , newTagManagerAccountsContainersWorkspacesTagsList

    -- ** tagmanager.accounts.containers.workspaces.tags.revert
    , TagManagerAccountsContainersWorkspacesTagsRevertResource
    , TagManagerAccountsContainersWorkspacesTagsRevert (..)
    , newTagManagerAccountsContainersWorkspacesTagsRevert

    -- ** tagmanager.accounts.containers.workspaces.tags.update
    , TagManagerAccountsContainersWorkspacesTagsUpdateResource
    , TagManagerAccountsContainersWorkspacesTagsUpdate (..)
    , newTagManagerAccountsContainersWorkspacesTagsUpdate

    -- ** tagmanager.accounts.containers.workspaces.templates.create
    , TagManagerAccountsContainersWorkspacesTemplatesCreateResource
    , TagManagerAccountsContainersWorkspacesTemplatesCreate (..)
    , newTagManagerAccountsContainersWorkspacesTemplatesCreate

    -- ** tagmanager.accounts.containers.workspaces.templates.delete
    , TagManagerAccountsContainersWorkspacesTemplatesDeleteResource
    , TagManagerAccountsContainersWorkspacesTemplatesDelete (..)
    , newTagManagerAccountsContainersWorkspacesTemplatesDelete

    -- ** tagmanager.accounts.containers.workspaces.templates.get
    , TagManagerAccountsContainersWorkspacesTemplatesGetResource
    , TagManagerAccountsContainersWorkspacesTemplatesGet (..)
    , newTagManagerAccountsContainersWorkspacesTemplatesGet

    -- ** tagmanager.accounts.containers.workspaces.templates.list
    , TagManagerAccountsContainersWorkspacesTemplatesListResource
    , TagManagerAccountsContainersWorkspacesTemplatesList (..)
    , newTagManagerAccountsContainersWorkspacesTemplatesList

    -- ** tagmanager.accounts.containers.workspaces.templates.revert
    , TagManagerAccountsContainersWorkspacesTemplatesRevertResource
    , TagManagerAccountsContainersWorkspacesTemplatesRevert (..)
    , newTagManagerAccountsContainersWorkspacesTemplatesRevert

    -- ** tagmanager.accounts.containers.workspaces.templates.update
    , TagManagerAccountsContainersWorkspacesTemplatesUpdateResource
    , TagManagerAccountsContainersWorkspacesTemplatesUpdate (..)
    , newTagManagerAccountsContainersWorkspacesTemplatesUpdate

    -- ** tagmanager.accounts.containers.workspaces.transformations.create
    , TagManagerAccountsContainersWorkspacesTransformationsCreateResource
    , TagManagerAccountsContainersWorkspacesTransformationsCreate (..)
    , newTagManagerAccountsContainersWorkspacesTransformationsCreate

    -- ** tagmanager.accounts.containers.workspaces.transformations.delete
    , TagManagerAccountsContainersWorkspacesTransformationsDeleteResource
    , TagManagerAccountsContainersWorkspacesTransformationsDelete (..)
    , newTagManagerAccountsContainersWorkspacesTransformationsDelete

    -- ** tagmanager.accounts.containers.workspaces.transformations.get
    , TagManagerAccountsContainersWorkspacesTransformationsGetResource
    , TagManagerAccountsContainersWorkspacesTransformationsGet (..)
    , newTagManagerAccountsContainersWorkspacesTransformationsGet

    -- ** tagmanager.accounts.containers.workspaces.transformations.list
    , TagManagerAccountsContainersWorkspacesTransformationsListResource
    , TagManagerAccountsContainersWorkspacesTransformationsList (..)
    , newTagManagerAccountsContainersWorkspacesTransformationsList

    -- ** tagmanager.accounts.containers.workspaces.transformations.revert
    , TagManagerAccountsContainersWorkspacesTransformationsRevertResource
    , TagManagerAccountsContainersWorkspacesTransformationsRevert (..)
    , newTagManagerAccountsContainersWorkspacesTransformationsRevert

    -- ** tagmanager.accounts.containers.workspaces.transformations.update
    , TagManagerAccountsContainersWorkspacesTransformationsUpdateResource
    , TagManagerAccountsContainersWorkspacesTransformationsUpdate (..)
    , newTagManagerAccountsContainersWorkspacesTransformationsUpdate

    -- ** tagmanager.accounts.containers.workspaces.triggers.create
    , TagManagerAccountsContainersWorkspacesTriggersCreateResource
    , TagManagerAccountsContainersWorkspacesTriggersCreate (..)
    , newTagManagerAccountsContainersWorkspacesTriggersCreate

    -- ** tagmanager.accounts.containers.workspaces.triggers.delete
    , TagManagerAccountsContainersWorkspacesTriggersDeleteResource
    , TagManagerAccountsContainersWorkspacesTriggersDelete (..)
    , newTagManagerAccountsContainersWorkspacesTriggersDelete

    -- ** tagmanager.accounts.containers.workspaces.triggers.get
    , TagManagerAccountsContainersWorkspacesTriggersGetResource
    , TagManagerAccountsContainersWorkspacesTriggersGet (..)
    , newTagManagerAccountsContainersWorkspacesTriggersGet

    -- ** tagmanager.accounts.containers.workspaces.triggers.list
    , TagManagerAccountsContainersWorkspacesTriggersListResource
    , TagManagerAccountsContainersWorkspacesTriggersList (..)
    , newTagManagerAccountsContainersWorkspacesTriggersList

    -- ** tagmanager.accounts.containers.workspaces.triggers.revert
    , TagManagerAccountsContainersWorkspacesTriggersRevertResource
    , TagManagerAccountsContainersWorkspacesTriggersRevert (..)
    , newTagManagerAccountsContainersWorkspacesTriggersRevert

    -- ** tagmanager.accounts.containers.workspaces.triggers.update
    , TagManagerAccountsContainersWorkspacesTriggersUpdateResource
    , TagManagerAccountsContainersWorkspacesTriggersUpdate (..)
    , newTagManagerAccountsContainersWorkspacesTriggersUpdate

    -- ** tagmanager.accounts.containers.workspaces.update
    , TagManagerAccountsContainersWorkspacesUpdateResource
    , TagManagerAccountsContainersWorkspacesUpdate (..)
    , newTagManagerAccountsContainersWorkspacesUpdate

    -- ** tagmanager.accounts.containers.workspaces.variables.create
    , TagManagerAccountsContainersWorkspacesVariablesCreateResource
    , TagManagerAccountsContainersWorkspacesVariablesCreate (..)
    , newTagManagerAccountsContainersWorkspacesVariablesCreate

    -- ** tagmanager.accounts.containers.workspaces.variables.delete
    , TagManagerAccountsContainersWorkspacesVariablesDeleteResource
    , TagManagerAccountsContainersWorkspacesVariablesDelete (..)
    , newTagManagerAccountsContainersWorkspacesVariablesDelete

    -- ** tagmanager.accounts.containers.workspaces.variables.get
    , TagManagerAccountsContainersWorkspacesVariablesGetResource
    , TagManagerAccountsContainersWorkspacesVariablesGet (..)
    , newTagManagerAccountsContainersWorkspacesVariablesGet

    -- ** tagmanager.accounts.containers.workspaces.variables.list
    , TagManagerAccountsContainersWorkspacesVariablesListResource
    , TagManagerAccountsContainersWorkspacesVariablesList (..)
    , newTagManagerAccountsContainersWorkspacesVariablesList

    -- ** tagmanager.accounts.containers.workspaces.variables.revert
    , TagManagerAccountsContainersWorkspacesVariablesRevertResource
    , TagManagerAccountsContainersWorkspacesVariablesRevert (..)
    , newTagManagerAccountsContainersWorkspacesVariablesRevert

    -- ** tagmanager.accounts.containers.workspaces.variables.update
    , TagManagerAccountsContainersWorkspacesVariablesUpdateResource
    , TagManagerAccountsContainersWorkspacesVariablesUpdate (..)
    , newTagManagerAccountsContainersWorkspacesVariablesUpdate

    -- ** tagmanager.accounts.containers.workspaces.zones.create
    , TagManagerAccountsContainersWorkspacesZonesCreateResource
    , TagManagerAccountsContainersWorkspacesZonesCreate (..)
    , newTagManagerAccountsContainersWorkspacesZonesCreate

    -- ** tagmanager.accounts.containers.workspaces.zones.delete
    , TagManagerAccountsContainersWorkspacesZonesDeleteResource
    , TagManagerAccountsContainersWorkspacesZonesDelete (..)
    , newTagManagerAccountsContainersWorkspacesZonesDelete

    -- ** tagmanager.accounts.containers.workspaces.zones.get
    , TagManagerAccountsContainersWorkspacesZonesGetResource
    , TagManagerAccountsContainersWorkspacesZonesGet (..)
    , newTagManagerAccountsContainersWorkspacesZonesGet

    -- ** tagmanager.accounts.containers.workspaces.zones.list
    , TagManagerAccountsContainersWorkspacesZonesListResource
    , TagManagerAccountsContainersWorkspacesZonesList (..)
    , newTagManagerAccountsContainersWorkspacesZonesList

    -- ** tagmanager.accounts.containers.workspaces.zones.revert
    , TagManagerAccountsContainersWorkspacesZonesRevertResource
    , TagManagerAccountsContainersWorkspacesZonesRevert (..)
    , newTagManagerAccountsContainersWorkspacesZonesRevert

    -- ** tagmanager.accounts.containers.workspaces.zones.update
    , TagManagerAccountsContainersWorkspacesZonesUpdateResource
    , TagManagerAccountsContainersWorkspacesZonesUpdate (..)
    , newTagManagerAccountsContainersWorkspacesZonesUpdate

    -- ** tagmanager.accounts.get
    , TagManagerAccountsGetResource
    , TagManagerAccountsGet (..)
    , newTagManagerAccountsGet

    -- ** tagmanager.accounts.list
    , TagManagerAccountsListResource
    , TagManagerAccountsList (..)
    , newTagManagerAccountsList

    -- ** tagmanager.accounts.update
    , TagManagerAccountsUpdateResource
    , TagManagerAccountsUpdate (..)
    , newTagManagerAccountsUpdate

    -- ** tagmanager.accounts.user_permissions.create
    , TagManagerAccountsUser_permissionsCreateResource
    , TagManagerAccountsUser_permissionsCreate (..)
    , newTagManagerAccountsUser_permissionsCreate

    -- ** tagmanager.accounts.user_permissions.delete
    , TagManagerAccountsUser_permissionsDeleteResource
    , TagManagerAccountsUser_permissionsDelete (..)
    , newTagManagerAccountsUser_permissionsDelete

    -- ** tagmanager.accounts.user_permissions.get
    , TagManagerAccountsUser_permissionsGetResource
    , TagManagerAccountsUser_permissionsGet (..)
    , newTagManagerAccountsUser_permissionsGet

    -- ** tagmanager.accounts.user_permissions.list
    , TagManagerAccountsUser_permissionsListResource
    , TagManagerAccountsUser_permissionsList (..)
    , newTagManagerAccountsUser_permissionsList

    -- ** tagmanager.accounts.user_permissions.update
    , TagManagerAccountsUser_permissionsUpdateResource
    , TagManagerAccountsUser_permissionsUpdate (..)
    , newTagManagerAccountsUser_permissionsUpdate

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Account
    , Account (..)
    , newAccount

    -- ** AccountAccess
    , AccountAccess (..)
    , newAccountAccess

    -- ** AccountAccess_Permission
    , AccountAccess_Permission (..)

    -- ** AccountFeatures
    , AccountFeatures (..)
    , newAccountFeatures

    -- ** BuiltInVariable
    , BuiltInVariable (..)
    , newBuiltInVariable

    -- ** BuiltInVariable_Type
    , BuiltInVariable_Type (..)

    -- ** Client
    , Client (..)
    , newClient

    -- ** Condition
    , Condition (..)
    , newCondition

    -- ** Condition_Type
    , Condition_Type (..)

    -- ** Container
    , Container (..)
    , newContainer

    -- ** Container_UsageContextItem
    , Container_UsageContextItem (..)

    -- ** ContainerAccess
    , ContainerAccess (..)
    , newContainerAccess

    -- ** ContainerAccess_Permission
    , ContainerAccess_Permission (..)

    -- ** ContainerFeatures
    , ContainerFeatures (..)
    , newContainerFeatures

    -- ** ContainerVersion
    , ContainerVersion (..)
    , newContainerVersion

    -- ** ContainerVersionHeader
    , ContainerVersionHeader (..)
    , newContainerVersionHeader

    -- ** CreateBuiltInVariableResponse
    , CreateBuiltInVariableResponse (..)
    , newCreateBuiltInVariableResponse

    -- ** CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions (..)
    , newCreateContainerVersionRequestVersionOptions

    -- ** CreateContainerVersionResponse
    , CreateContainerVersionResponse (..)
    , newCreateContainerVersionResponse

    -- ** CustomTemplate
    , CustomTemplate (..)
    , newCustomTemplate

    -- ** Destination
    , Destination (..)
    , newDestination

    -- ** Entity
    , Entity (..)
    , newEntity

    -- ** Entity_ChangeStatus
    , Entity_ChangeStatus (..)

    -- ** Environment
    , Environment (..)
    , newEnvironment

    -- ** Environment_Type
    , Environment_Type (..)

    -- ** Folder
    , Folder (..)
    , newFolder

    -- ** FolderEntities
    , FolderEntities (..)
    , newFolderEntities

    -- ** GalleryReference
    , GalleryReference (..)
    , newGalleryReference

    -- ** GetContainerSnippetResponse
    , GetContainerSnippetResponse (..)
    , newGetContainerSnippetResponse

    -- ** GetWorkspaceStatusResponse
    , GetWorkspaceStatusResponse (..)
    , newGetWorkspaceStatusResponse

    -- ** GtagConfig
    , GtagConfig (..)
    , newGtagConfig

    -- ** ListAccountsResponse
    , ListAccountsResponse (..)
    , newListAccountsResponse

    -- ** ListClientsResponse
    , ListClientsResponse (..)
    , newListClientsResponse

    -- ** ListContainerVersionsResponse
    , ListContainerVersionsResponse (..)
    , newListContainerVersionsResponse

    -- ** ListContainersResponse
    , ListContainersResponse (..)
    , newListContainersResponse

    -- ** ListDestinationsResponse
    , ListDestinationsResponse (..)
    , newListDestinationsResponse

    -- ** ListEnabledBuiltInVariablesResponse
    , ListEnabledBuiltInVariablesResponse (..)
    , newListEnabledBuiltInVariablesResponse

    -- ** ListEnvironmentsResponse
    , ListEnvironmentsResponse (..)
    , newListEnvironmentsResponse

    -- ** ListFoldersResponse
    , ListFoldersResponse (..)
    , newListFoldersResponse

    -- ** ListGtagConfigResponse
    , ListGtagConfigResponse (..)
    , newListGtagConfigResponse

    -- ** ListTagsResponse
    , ListTagsResponse (..)
    , newListTagsResponse

    -- ** ListTemplatesResponse
    , ListTemplatesResponse (..)
    , newListTemplatesResponse

    -- ** ListTransformationsResponse
    , ListTransformationsResponse (..)
    , newListTransformationsResponse

    -- ** ListTriggersResponse
    , ListTriggersResponse (..)
    , newListTriggersResponse

    -- ** ListUserPermissionsResponse
    , ListUserPermissionsResponse (..)
    , newListUserPermissionsResponse

    -- ** ListVariablesResponse
    , ListVariablesResponse (..)
    , newListVariablesResponse

    -- ** ListWorkspacesResponse
    , ListWorkspacesResponse (..)
    , newListWorkspacesResponse

    -- ** ListZonesResponse
    , ListZonesResponse (..)
    , newListZonesResponse

    -- ** MergeConflict
    , MergeConflict (..)
    , newMergeConflict

    -- ** Parameter
    , Parameter (..)
    , newParameter

    -- ** Parameter_Type
    , Parameter_Type (..)

    -- ** PublishContainerVersionResponse
    , PublishContainerVersionResponse (..)
    , newPublishContainerVersionResponse

    -- ** QuickPreviewResponse
    , QuickPreviewResponse (..)
    , newQuickPreviewResponse

    -- ** RevertBuiltInVariableResponse
    , RevertBuiltInVariableResponse (..)
    , newRevertBuiltInVariableResponse

    -- ** RevertClientResponse
    , RevertClientResponse (..)
    , newRevertClientResponse

    -- ** RevertFolderResponse
    , RevertFolderResponse (..)
    , newRevertFolderResponse

    -- ** RevertTagResponse
    , RevertTagResponse (..)
    , newRevertTagResponse

    -- ** RevertTemplateResponse
    , RevertTemplateResponse (..)
    , newRevertTemplateResponse

    -- ** RevertTransformationResponse
    , RevertTransformationResponse (..)
    , newRevertTransformationResponse

    -- ** RevertTriggerResponse
    , RevertTriggerResponse (..)
    , newRevertTriggerResponse

    -- ** RevertVariableResponse
    , RevertVariableResponse (..)
    , newRevertVariableResponse

    -- ** RevertZoneResponse
    , RevertZoneResponse (..)
    , newRevertZoneResponse

    -- ** SetupTag
    , SetupTag (..)
    , newSetupTag

    -- ** SyncStatus
    , SyncStatus (..)
    , newSyncStatus

    -- ** SyncWorkspaceResponse
    , SyncWorkspaceResponse (..)
    , newSyncWorkspaceResponse

    -- ** Tag
    , Tag (..)
    , newTag

    -- ** Tag_TagFiringOption
    , Tag_TagFiringOption (..)

    -- ** TagConsentSetting
    , TagConsentSetting (..)
    , newTagConsentSetting

    -- ** TagConsentSetting_ConsentStatus
    , TagConsentSetting_ConsentStatus (..)

    -- ** TeardownTag
    , TeardownTag (..)
    , newTeardownTag

    -- ** Transformation
    , Transformation (..)
    , newTransformation

    -- ** Trigger
    , Trigger (..)
    , newTrigger

    -- ** Trigger_Type
    , Trigger_Type (..)

    -- ** UserPermission
    , UserPermission (..)
    , newUserPermission

    -- ** Variable
    , Variable (..)
    , newVariable

    -- ** VariableFormatValue
    , VariableFormatValue (..)
    , newVariableFormatValue

    -- ** VariableFormatValue_CaseConversionType
    , VariableFormatValue_CaseConversionType (..)

    -- ** Workspace
    , Workspace (..)
    , newWorkspace

    -- ** Zone
    , Zone (..)
    , newZone

    -- ** ZoneBoundary
    , ZoneBoundary (..)
    , newZoneBoundary

    -- ** ZoneChildContainer
    , ZoneChildContainer (..)
    , newZoneChildContainer

    -- ** ZoneTypeRestriction
    , ZoneTypeRestriction (..)
    , newZoneTypeRestriction

    -- ** AccountsContainersCombineSettingSource
    , AccountsContainersCombineSettingSource (..)

    -- ** AccountsContainersWorkspacesBuilt_in_variablesCreateType
    , AccountsContainersWorkspacesBuilt_in_variablesCreateType (..)

    -- ** AccountsContainersWorkspacesBuilt_in_variablesDeleteType
    , AccountsContainersWorkspacesBuilt_in_variablesDeleteType (..)

    -- ** AccountsContainersWorkspacesBuilt_in_variablesRevertType
    , AccountsContainersWorkspacesBuilt_in_variablesRevertType (..)
    ) where

import Gogol.TagManager.Accounts.Containers.Combine
import Gogol.TagManager.Accounts.Containers.Create
import Gogol.TagManager.Accounts.Containers.Delete
import Gogol.TagManager.Accounts.Containers.Destinations.Get
import Gogol.TagManager.Accounts.Containers.Destinations.Link
import Gogol.TagManager.Accounts.Containers.Destinations.List
import Gogol.TagManager.Accounts.Containers.Environments.Create
import Gogol.TagManager.Accounts.Containers.Environments.Delete
import Gogol.TagManager.Accounts.Containers.Environments.Get
import Gogol.TagManager.Accounts.Containers.Environments.List
import Gogol.TagManager.Accounts.Containers.Environments.Reauthorize
import Gogol.TagManager.Accounts.Containers.Environments.Update
import Gogol.TagManager.Accounts.Containers.Get
import Gogol.TagManager.Accounts.Containers.List
import Gogol.TagManager.Accounts.Containers.Lookup
import Gogol.TagManager.Accounts.Containers.Move_tag_id
import Gogol.TagManager.Accounts.Containers.Snippet
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
import Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Update
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
import Gogol.TagManager.Accounts.Containers.Workspaces.Transformations.Create
import Gogol.TagManager.Accounts.Containers.Workspaces.Transformations.Delete
import Gogol.TagManager.Accounts.Containers.Workspaces.Transformations.Get
import Gogol.TagManager.Accounts.Containers.Workspaces.Transformations.List
import Gogol.TagManager.Accounts.Containers.Workspaces.Transformations.Revert
import Gogol.TagManager.Accounts.Containers.Workspaces.Transformations.Update
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
