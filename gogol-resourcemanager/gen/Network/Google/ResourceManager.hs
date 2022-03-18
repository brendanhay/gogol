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
-- Module      : Network.Google.ResourceManager
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates, reads, and updates metadata for Google Cloud Platform resource containers.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference>
module Network.Google.ResourceManager
  ( -- * Configuration
    resourceManagerService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,

    -- * Resources

    -- ** cloudresourcemanager.folders.create
    CloudresourcemanagerFoldersCreateResource,
    newCloudresourcemanagerFoldersCreate,
    CloudresourcemanagerFoldersCreate,

    -- ** cloudresourcemanager.folders.delete
    CloudresourcemanagerFoldersDeleteResource,
    newCloudresourcemanagerFoldersDelete,
    CloudresourcemanagerFoldersDelete,

    -- ** cloudresourcemanager.folders.get
    CloudresourcemanagerFoldersGetResource,
    newCloudresourcemanagerFoldersGet,
    CloudresourcemanagerFoldersGet,

    -- ** cloudresourcemanager.folders.getIamPolicy
    CloudresourcemanagerFoldersGetIamPolicyResource,
    newCloudresourcemanagerFoldersGetIamPolicy,
    CloudresourcemanagerFoldersGetIamPolicy,

    -- ** cloudresourcemanager.folders.list
    CloudresourcemanagerFoldersListResource,
    newCloudresourcemanagerFoldersList,
    CloudresourcemanagerFoldersList,

    -- ** cloudresourcemanager.folders.move
    CloudresourcemanagerFoldersMoveResource,
    newCloudresourcemanagerFoldersMove,
    CloudresourcemanagerFoldersMove,

    -- ** cloudresourcemanager.folders.patch
    CloudresourcemanagerFoldersPatchResource,
    newCloudresourcemanagerFoldersPatch,
    CloudresourcemanagerFoldersPatch,

    -- ** cloudresourcemanager.folders.search
    CloudresourcemanagerFoldersSearchResource,
    newCloudresourcemanagerFoldersSearch,
    CloudresourcemanagerFoldersSearch,

    -- ** cloudresourcemanager.folders.setIamPolicy
    CloudresourcemanagerFoldersSetIamPolicyResource,
    newCloudresourcemanagerFoldersSetIamPolicy,
    CloudresourcemanagerFoldersSetIamPolicy,

    -- ** cloudresourcemanager.folders.testIamPermissions
    CloudresourcemanagerFoldersTestIamPermissionsResource,
    newCloudresourcemanagerFoldersTestIamPermissions,
    CloudresourcemanagerFoldersTestIamPermissions,

    -- ** cloudresourcemanager.folders.undelete
    CloudresourcemanagerFoldersUndeleteResource,
    newCloudresourcemanagerFoldersUndelete,
    CloudresourcemanagerFoldersUndelete,

    -- ** cloudresourcemanager.liens.create
    CloudresourcemanagerLiensCreateResource,
    newCloudresourcemanagerLiensCreate,
    CloudresourcemanagerLiensCreate,

    -- ** cloudresourcemanager.liens.delete
    CloudresourcemanagerLiensDeleteResource,
    newCloudresourcemanagerLiensDelete,
    CloudresourcemanagerLiensDelete,

    -- ** cloudresourcemanager.liens.get
    CloudresourcemanagerLiensGetResource,
    newCloudresourcemanagerLiensGet,
    CloudresourcemanagerLiensGet,

    -- ** cloudresourcemanager.liens.list
    CloudresourcemanagerLiensListResource,
    newCloudresourcemanagerLiensList,
    CloudresourcemanagerLiensList,

    -- ** cloudresourcemanager.operations.get
    CloudresourcemanagerOperationsGetResource,
    newCloudresourcemanagerOperationsGet,
    CloudresourcemanagerOperationsGet,

    -- ** cloudresourcemanager.organizations.get
    CloudresourcemanagerOrganizationsGetResource,
    newCloudresourcemanagerOrganizationsGet,
    CloudresourcemanagerOrganizationsGet,

    -- ** cloudresourcemanager.organizations.getIamPolicy
    CloudresourcemanagerOrganizationsGetIamPolicyResource,
    newCloudresourcemanagerOrganizationsGetIamPolicy,
    CloudresourcemanagerOrganizationsGetIamPolicy,

    -- ** cloudresourcemanager.organizations.search
    CloudresourcemanagerOrganizationsSearchResource,
    newCloudresourcemanagerOrganizationsSearch,
    CloudresourcemanagerOrganizationsSearch,

    -- ** cloudresourcemanager.organizations.setIamPolicy
    CloudresourcemanagerOrganizationsSetIamPolicyResource,
    newCloudresourcemanagerOrganizationsSetIamPolicy,
    CloudresourcemanagerOrganizationsSetIamPolicy,

    -- ** cloudresourcemanager.organizations.testIamPermissions
    CloudresourcemanagerOrganizationsTestIamPermissionsResource,
    newCloudresourcemanagerOrganizationsTestIamPermissions,
    CloudresourcemanagerOrganizationsTestIamPermissions,

    -- ** cloudresourcemanager.projects.create
    CloudresourcemanagerProjectsCreateResource,
    newCloudresourcemanagerProjectsCreate,
    CloudresourcemanagerProjectsCreate,

    -- ** cloudresourcemanager.projects.delete
    CloudresourcemanagerProjectsDeleteResource,
    newCloudresourcemanagerProjectsDelete,
    CloudresourcemanagerProjectsDelete,

    -- ** cloudresourcemanager.projects.get
    CloudresourcemanagerProjectsGetResource,
    newCloudresourcemanagerProjectsGet,
    CloudresourcemanagerProjectsGet,

    -- ** cloudresourcemanager.projects.getIamPolicy
    CloudresourcemanagerProjectsGetIamPolicyResource,
    newCloudresourcemanagerProjectsGetIamPolicy,
    CloudresourcemanagerProjectsGetIamPolicy,

    -- ** cloudresourcemanager.projects.list
    CloudresourcemanagerProjectsListResource,
    newCloudresourcemanagerProjectsList,
    CloudresourcemanagerProjectsList,

    -- ** cloudresourcemanager.projects.move
    CloudresourcemanagerProjectsMoveResource,
    newCloudresourcemanagerProjectsMove,
    CloudresourcemanagerProjectsMove,

    -- ** cloudresourcemanager.projects.patch
    CloudresourcemanagerProjectsPatchResource,
    newCloudresourcemanagerProjectsPatch,
    CloudresourcemanagerProjectsPatch,

    -- ** cloudresourcemanager.projects.search
    CloudresourcemanagerProjectsSearchResource,
    newCloudresourcemanagerProjectsSearch,
    CloudresourcemanagerProjectsSearch,

    -- ** cloudresourcemanager.projects.setIamPolicy
    CloudresourcemanagerProjectsSetIamPolicyResource,
    newCloudresourcemanagerProjectsSetIamPolicy,
    CloudresourcemanagerProjectsSetIamPolicy,

    -- ** cloudresourcemanager.projects.testIamPermissions
    CloudresourcemanagerProjectsTestIamPermissionsResource,
    newCloudresourcemanagerProjectsTestIamPermissions,
    CloudresourcemanagerProjectsTestIamPermissions,

    -- ** cloudresourcemanager.projects.undelete
    CloudresourcemanagerProjectsUndeleteResource,
    newCloudresourcemanagerProjectsUndelete,
    CloudresourcemanagerProjectsUndelete,

    -- ** cloudresourcemanager.tagBindings.create
    CloudresourcemanagerTagBindingsCreateResource,
    newCloudresourcemanagerTagBindingsCreate,
    CloudresourcemanagerTagBindingsCreate,

    -- ** cloudresourcemanager.tagBindings.delete
    CloudresourcemanagerTagBindingsDeleteResource,
    newCloudresourcemanagerTagBindingsDelete,
    CloudresourcemanagerTagBindingsDelete,

    -- ** cloudresourcemanager.tagBindings.list
    CloudresourcemanagerTagBindingsListResource,
    newCloudresourcemanagerTagBindingsList,
    CloudresourcemanagerTagBindingsList,

    -- ** cloudresourcemanager.tagKeys.create
    CloudresourcemanagerTagKeysCreateResource,
    newCloudresourcemanagerTagKeysCreate,
    CloudresourcemanagerTagKeysCreate,

    -- ** cloudresourcemanager.tagKeys.delete
    CloudresourcemanagerTagKeysDeleteResource,
    newCloudresourcemanagerTagKeysDelete,
    CloudresourcemanagerTagKeysDelete,

    -- ** cloudresourcemanager.tagKeys.get
    CloudresourcemanagerTagKeysGetResource,
    newCloudresourcemanagerTagKeysGet,
    CloudresourcemanagerTagKeysGet,

    -- ** cloudresourcemanager.tagKeys.getIamPolicy
    CloudresourcemanagerTagKeysGetIamPolicyResource,
    newCloudresourcemanagerTagKeysGetIamPolicy,
    CloudresourcemanagerTagKeysGetIamPolicy,

    -- ** cloudresourcemanager.tagKeys.list
    CloudresourcemanagerTagKeysListResource,
    newCloudresourcemanagerTagKeysList,
    CloudresourcemanagerTagKeysList,

    -- ** cloudresourcemanager.tagKeys.patch
    CloudresourcemanagerTagKeysPatchResource,
    newCloudresourcemanagerTagKeysPatch,
    CloudresourcemanagerTagKeysPatch,

    -- ** cloudresourcemanager.tagKeys.setIamPolicy
    CloudresourcemanagerTagKeysSetIamPolicyResource,
    newCloudresourcemanagerTagKeysSetIamPolicy,
    CloudresourcemanagerTagKeysSetIamPolicy,

    -- ** cloudresourcemanager.tagKeys.testIamPermissions
    CloudresourcemanagerTagKeysTestIamPermissionsResource,
    newCloudresourcemanagerTagKeysTestIamPermissions,
    CloudresourcemanagerTagKeysTestIamPermissions,

    -- ** cloudresourcemanager.tagValues.create
    CloudresourcemanagerTagValuesCreateResource,
    newCloudresourcemanagerTagValuesCreate,
    CloudresourcemanagerTagValuesCreate,

    -- ** cloudresourcemanager.tagValues.delete
    CloudresourcemanagerTagValuesDeleteResource,
    newCloudresourcemanagerTagValuesDelete,
    CloudresourcemanagerTagValuesDelete,

    -- ** cloudresourcemanager.tagValues.get
    CloudresourcemanagerTagValuesGetResource,
    newCloudresourcemanagerTagValuesGet,
    CloudresourcemanagerTagValuesGet,

    -- ** cloudresourcemanager.tagValues.getIamPolicy
    CloudresourcemanagerTagValuesGetIamPolicyResource,
    newCloudresourcemanagerTagValuesGetIamPolicy,
    CloudresourcemanagerTagValuesGetIamPolicy,

    -- ** cloudresourcemanager.tagValues.list
    CloudresourcemanagerTagValuesListResource,
    newCloudresourcemanagerTagValuesList,
    CloudresourcemanagerTagValuesList,

    -- ** cloudresourcemanager.tagValues.patch
    CloudresourcemanagerTagValuesPatchResource,
    newCloudresourcemanagerTagValuesPatch,
    CloudresourcemanagerTagValuesPatch,

    -- ** cloudresourcemanager.tagValues.setIamPolicy
    CloudresourcemanagerTagValuesSetIamPolicyResource,
    newCloudresourcemanagerTagValuesSetIamPolicy,
    CloudresourcemanagerTagValuesSetIamPolicy,

    -- ** cloudresourcemanager.tagValues.testIamPermissions
    CloudresourcemanagerTagValuesTestIamPermissionsResource,
    newCloudresourcemanagerTagValuesTestIamPermissions,
    CloudresourcemanagerTagValuesTestIamPermissions,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation (..),
    newCloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation,

    -- ** CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType (..),

    -- ** CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation (..),
    newCloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation,

    -- ** CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType (..),

    -- ** CreateFolderMetadata
    CreateFolderMetadata (..),
    newCreateFolderMetadata,

    -- ** CreateProjectMetadata
    CreateProjectMetadata (..),
    newCreateProjectMetadata,

    -- ** CreateTagBindingMetadata
    CreateTagBindingMetadata (..),
    newCreateTagBindingMetadata,

    -- ** CreateTagKeyMetadata
    CreateTagKeyMetadata (..),
    newCreateTagKeyMetadata,

    -- ** CreateTagValueMetadata
    CreateTagValueMetadata (..),
    newCreateTagValueMetadata,

    -- ** DeleteFolderMetadata
    DeleteFolderMetadata (..),
    newDeleteFolderMetadata,

    -- ** DeleteOrganizationMetadata
    DeleteOrganizationMetadata (..),
    newDeleteOrganizationMetadata,

    -- ** DeleteProjectMetadata
    DeleteProjectMetadata (..),
    newDeleteProjectMetadata,

    -- ** DeleteTagBindingMetadata
    DeleteTagBindingMetadata (..),
    newDeleteTagBindingMetadata,

    -- ** DeleteTagKeyMetadata
    DeleteTagKeyMetadata (..),
    newDeleteTagKeyMetadata,

    -- ** DeleteTagValueMetadata
    DeleteTagValueMetadata (..),
    newDeleteTagValueMetadata,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** Folder
    Folder (..),
    newFolder,

    -- ** Folder_State
    Folder_State (..),

    -- ** FolderOperation
    FolderOperation (..),
    newFolderOperation,

    -- ** FolderOperation_OperationType
    FolderOperation_OperationType (..),

    -- ** FolderOperationError
    FolderOperationError (..),
    newFolderOperationError,

    -- ** FolderOperationError_ErrorMessageId
    FolderOperationError_ErrorMessageId (..),

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** Lien
    Lien (..),
    newLien,

    -- ** ListFoldersResponse
    ListFoldersResponse (..),
    newListFoldersResponse,

    -- ** ListLiensResponse
    ListLiensResponse (..),
    newListLiensResponse,

    -- ** ListProjectsResponse
    ListProjectsResponse (..),
    newListProjectsResponse,

    -- ** ListTagBindingsResponse
    ListTagBindingsResponse (..),
    newListTagBindingsResponse,

    -- ** ListTagKeysResponse
    ListTagKeysResponse (..),
    newListTagKeysResponse,

    -- ** ListTagValuesResponse
    ListTagValuesResponse (..),
    newListTagValuesResponse,

    -- ** MoveFolderMetadata
    MoveFolderMetadata (..),
    newMoveFolderMetadata,

    -- ** MoveFolderRequest
    MoveFolderRequest (..),
    newMoveFolderRequest,

    -- ** MoveProjectMetadata
    MoveProjectMetadata (..),
    newMoveProjectMetadata,

    -- ** MoveProjectRequest
    MoveProjectRequest (..),
    newMoveProjectRequest,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** Organization
    Organization (..),
    newOrganization,

    -- ** Organization_State
    Organization_State (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Project
    Project (..),
    newProject,

    -- ** Project_Labels
    Project_Labels (..),
    newProject_Labels,

    -- ** Project_State
    Project_State (..),

    -- ** ProjectCreationStatus
    ProjectCreationStatus (..),
    newProjectCreationStatus,

    -- ** SearchFoldersResponse
    SearchFoldersResponse (..),
    newSearchFoldersResponse,

    -- ** SearchOrganizationsResponse
    SearchOrganizationsResponse (..),
    newSearchOrganizationsResponse,

    -- ** SearchProjectsResponse
    SearchProjectsResponse (..),
    newSearchProjectsResponse,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TagBinding
    TagBinding (..),
    newTagBinding,

    -- ** TagKey
    TagKey (..),
    newTagKey,

    -- ** TagValue
    TagValue (..),
    newTagValue,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UndeleteFolderMetadata
    UndeleteFolderMetadata (..),
    newUndeleteFolderMetadata,

    -- ** UndeleteFolderRequest
    UndeleteFolderRequest (..),
    newUndeleteFolderRequest,

    -- ** UndeleteOrganizationMetadata
    UndeleteOrganizationMetadata (..),
    newUndeleteOrganizationMetadata,

    -- ** UndeleteProjectMetadata
    UndeleteProjectMetadata (..),
    newUndeleteProjectMetadata,

    -- ** UndeleteProjectRequest
    UndeleteProjectRequest (..),
    newUndeleteProjectRequest,

    -- ** UpdateFolderMetadata
    UpdateFolderMetadata (..),
    newUpdateFolderMetadata,

    -- ** UpdateProjectMetadata
    UpdateProjectMetadata (..),
    newUpdateProjectMetadata,

    -- ** UpdateTagKeyMetadata
    UpdateTagKeyMetadata (..),
    newUpdateTagKeyMetadata,

    -- ** UpdateTagValueMetadata
    UpdateTagValueMetadata (..),
    newUpdateTagValueMetadata,
  )
where

import Network.Google.ResourceManager.Cloudresourcemanager.Folders.Create
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.Delete
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.Get
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.GetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.List
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.Move
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.Patch
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.Search
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.SetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.TestIamPermissions
import Network.Google.ResourceManager.Cloudresourcemanager.Folders.Undelete
import Network.Google.ResourceManager.Cloudresourcemanager.Liens.Create
import Network.Google.ResourceManager.Cloudresourcemanager.Liens.Delete
import Network.Google.ResourceManager.Cloudresourcemanager.Liens.Get
import Network.Google.ResourceManager.Cloudresourcemanager.Liens.List
import Network.Google.ResourceManager.Cloudresourcemanager.Operations.Get
import Network.Google.ResourceManager.Cloudresourcemanager.Organizations.Get
import Network.Google.ResourceManager.Cloudresourcemanager.Organizations.GetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.Organizations.Search
import Network.Google.ResourceManager.Cloudresourcemanager.Organizations.SetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.Organizations.TestIamPermissions
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.Create
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.Delete
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.Get
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.GetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.List
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.Move
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.Patch
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.Search
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.SetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.TestIamPermissions
import Network.Google.ResourceManager.Cloudresourcemanager.Projects.Undelete
import Network.Google.ResourceManager.Cloudresourcemanager.TagBindings.Create
import Network.Google.ResourceManager.Cloudresourcemanager.TagBindings.Delete
import Network.Google.ResourceManager.Cloudresourcemanager.TagBindings.List
import Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.Create
import Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.Delete
import Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.Get
import Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.GetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.List
import Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.Patch
import Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.SetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.TestIamPermissions
import Network.Google.ResourceManager.Cloudresourcemanager.TagValues.Create
import Network.Google.ResourceManager.Cloudresourcemanager.TagValues.Delete
import Network.Google.ResourceManager.Cloudresourcemanager.TagValues.Get
import Network.Google.ResourceManager.Cloudresourcemanager.TagValues.GetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.TagValues.List
import Network.Google.ResourceManager.Cloudresourcemanager.TagValues.Patch
import Network.Google.ResourceManager.Cloudresourcemanager.TagValues.SetIamPolicy
import Network.Google.ResourceManager.Cloudresourcemanager.TagValues.TestIamPermissions
import Network.Google.ResourceManager.Types
