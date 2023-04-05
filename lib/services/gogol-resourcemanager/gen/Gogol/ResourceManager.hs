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
-- Module      : Gogol.ResourceManager
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates, reads, and updates metadata for Google Cloud Platform resource containers.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference>
module Gogol.ResourceManager
  ( -- * Configuration
    resourceManagerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

    -- * Resources

    -- ** cloudresourcemanager.effectiveTags.list
    CloudresourcemanagerEffectiveTagsListResource,
    CloudresourcemanagerEffectiveTagsList (..),
    newCloudresourcemanagerEffectiveTagsList,

    -- ** cloudresourcemanager.folders.create
    CloudresourcemanagerFoldersCreateResource,
    CloudresourcemanagerFoldersCreate (..),
    newCloudresourcemanagerFoldersCreate,

    -- ** cloudresourcemanager.folders.delete
    CloudresourcemanagerFoldersDeleteResource,
    CloudresourcemanagerFoldersDelete (..),
    newCloudresourcemanagerFoldersDelete,

    -- ** cloudresourcemanager.folders.get
    CloudresourcemanagerFoldersGetResource,
    CloudresourcemanagerFoldersGet (..),
    newCloudresourcemanagerFoldersGet,

    -- ** cloudresourcemanager.folders.getIamPolicy
    CloudresourcemanagerFoldersGetIamPolicyResource,
    CloudresourcemanagerFoldersGetIamPolicy (..),
    newCloudresourcemanagerFoldersGetIamPolicy,

    -- ** cloudresourcemanager.folders.list
    CloudresourcemanagerFoldersListResource,
    CloudresourcemanagerFoldersList (..),
    newCloudresourcemanagerFoldersList,

    -- ** cloudresourcemanager.folders.move
    CloudresourcemanagerFoldersMoveResource,
    CloudresourcemanagerFoldersMove (..),
    newCloudresourcemanagerFoldersMove,

    -- ** cloudresourcemanager.folders.patch
    CloudresourcemanagerFoldersPatchResource,
    CloudresourcemanagerFoldersPatch (..),
    newCloudresourcemanagerFoldersPatch,

    -- ** cloudresourcemanager.folders.search
    CloudresourcemanagerFoldersSearchResource,
    CloudresourcemanagerFoldersSearch (..),
    newCloudresourcemanagerFoldersSearch,

    -- ** cloudresourcemanager.folders.setIamPolicy
    CloudresourcemanagerFoldersSetIamPolicyResource,
    CloudresourcemanagerFoldersSetIamPolicy (..),
    newCloudresourcemanagerFoldersSetIamPolicy,

    -- ** cloudresourcemanager.folders.testIamPermissions
    CloudresourcemanagerFoldersTestIamPermissionsResource,
    CloudresourcemanagerFoldersTestIamPermissions (..),
    newCloudresourcemanagerFoldersTestIamPermissions,

    -- ** cloudresourcemanager.folders.undelete
    CloudresourcemanagerFoldersUndeleteResource,
    CloudresourcemanagerFoldersUndelete (..),
    newCloudresourcemanagerFoldersUndelete,

    -- ** cloudresourcemanager.liens.create
    CloudresourcemanagerLiensCreateResource,
    CloudresourcemanagerLiensCreate (..),
    newCloudresourcemanagerLiensCreate,

    -- ** cloudresourcemanager.liens.delete
    CloudresourcemanagerLiensDeleteResource,
    CloudresourcemanagerLiensDelete (..),
    newCloudresourcemanagerLiensDelete,

    -- ** cloudresourcemanager.liens.get
    CloudresourcemanagerLiensGetResource,
    CloudresourcemanagerLiensGet (..),
    newCloudresourcemanagerLiensGet,

    -- ** cloudresourcemanager.liens.list
    CloudresourcemanagerLiensListResource,
    CloudresourcemanagerLiensList (..),
    newCloudresourcemanagerLiensList,

    -- ** cloudresourcemanager.operations.get
    CloudresourcemanagerOperationsGetResource,
    CloudresourcemanagerOperationsGet (..),
    newCloudresourcemanagerOperationsGet,

    -- ** cloudresourcemanager.organizations.get
    CloudresourcemanagerOrganizationsGetResource,
    CloudresourcemanagerOrganizationsGet (..),
    newCloudresourcemanagerOrganizationsGet,

    -- ** cloudresourcemanager.organizations.getIamPolicy
    CloudresourcemanagerOrganizationsGetIamPolicyResource,
    CloudresourcemanagerOrganizationsGetIamPolicy (..),
    newCloudresourcemanagerOrganizationsGetIamPolicy,

    -- ** cloudresourcemanager.organizations.search
    CloudresourcemanagerOrganizationsSearchResource,
    CloudresourcemanagerOrganizationsSearch (..),
    newCloudresourcemanagerOrganizationsSearch,

    -- ** cloudresourcemanager.organizations.setIamPolicy
    CloudresourcemanagerOrganizationsSetIamPolicyResource,
    CloudresourcemanagerOrganizationsSetIamPolicy (..),
    newCloudresourcemanagerOrganizationsSetIamPolicy,

    -- ** cloudresourcemanager.organizations.testIamPermissions
    CloudresourcemanagerOrganizationsTestIamPermissionsResource,
    CloudresourcemanagerOrganizationsTestIamPermissions (..),
    newCloudresourcemanagerOrganizationsTestIamPermissions,

    -- ** cloudresourcemanager.projects.create
    CloudresourcemanagerProjectsCreateResource,
    CloudresourcemanagerProjectsCreate (..),
    newCloudresourcemanagerProjectsCreate,

    -- ** cloudresourcemanager.projects.delete
    CloudresourcemanagerProjectsDeleteResource,
    CloudresourcemanagerProjectsDelete (..),
    newCloudresourcemanagerProjectsDelete,

    -- ** cloudresourcemanager.projects.get
    CloudresourcemanagerProjectsGetResource,
    CloudresourcemanagerProjectsGet (..),
    newCloudresourcemanagerProjectsGet,

    -- ** cloudresourcemanager.projects.getIamPolicy
    CloudresourcemanagerProjectsGetIamPolicyResource,
    CloudresourcemanagerProjectsGetIamPolicy (..),
    newCloudresourcemanagerProjectsGetIamPolicy,

    -- ** cloudresourcemanager.projects.list
    CloudresourcemanagerProjectsListResource,
    CloudresourcemanagerProjectsList (..),
    newCloudresourcemanagerProjectsList,

    -- ** cloudresourcemanager.projects.move
    CloudresourcemanagerProjectsMoveResource,
    CloudresourcemanagerProjectsMove (..),
    newCloudresourcemanagerProjectsMove,

    -- ** cloudresourcemanager.projects.patch
    CloudresourcemanagerProjectsPatchResource,
    CloudresourcemanagerProjectsPatch (..),
    newCloudresourcemanagerProjectsPatch,

    -- ** cloudresourcemanager.projects.search
    CloudresourcemanagerProjectsSearchResource,
    CloudresourcemanagerProjectsSearch (..),
    newCloudresourcemanagerProjectsSearch,

    -- ** cloudresourcemanager.projects.setIamPolicy
    CloudresourcemanagerProjectsSetIamPolicyResource,
    CloudresourcemanagerProjectsSetIamPolicy (..),
    newCloudresourcemanagerProjectsSetIamPolicy,

    -- ** cloudresourcemanager.projects.testIamPermissions
    CloudresourcemanagerProjectsTestIamPermissionsResource,
    CloudresourcemanagerProjectsTestIamPermissions (..),
    newCloudresourcemanagerProjectsTestIamPermissions,

    -- ** cloudresourcemanager.projects.undelete
    CloudresourcemanagerProjectsUndeleteResource,
    CloudresourcemanagerProjectsUndelete (..),
    newCloudresourcemanagerProjectsUndelete,

    -- ** cloudresourcemanager.tagBindings.create
    CloudresourcemanagerTagBindingsCreateResource,
    CloudresourcemanagerTagBindingsCreate (..),
    newCloudresourcemanagerTagBindingsCreate,

    -- ** cloudresourcemanager.tagBindings.delete
    CloudresourcemanagerTagBindingsDeleteResource,
    CloudresourcemanagerTagBindingsDelete (..),
    newCloudresourcemanagerTagBindingsDelete,

    -- ** cloudresourcemanager.tagBindings.list
    CloudresourcemanagerTagBindingsListResource,
    CloudresourcemanagerTagBindingsList (..),
    newCloudresourcemanagerTagBindingsList,

    -- ** cloudresourcemanager.tagKeys.create
    CloudresourcemanagerTagKeysCreateResource,
    CloudresourcemanagerTagKeysCreate (..),
    newCloudresourcemanagerTagKeysCreate,

    -- ** cloudresourcemanager.tagKeys.delete
    CloudresourcemanagerTagKeysDeleteResource,
    CloudresourcemanagerTagKeysDelete (..),
    newCloudresourcemanagerTagKeysDelete,

    -- ** cloudresourcemanager.tagKeys.get
    CloudresourcemanagerTagKeysGetResource,
    CloudresourcemanagerTagKeysGet (..),
    newCloudresourcemanagerTagKeysGet,

    -- ** cloudresourcemanager.tagKeys.getIamPolicy
    CloudresourcemanagerTagKeysGetIamPolicyResource,
    CloudresourcemanagerTagKeysGetIamPolicy (..),
    newCloudresourcemanagerTagKeysGetIamPolicy,

    -- ** cloudresourcemanager.tagKeys.list
    CloudresourcemanagerTagKeysListResource,
    CloudresourcemanagerTagKeysList (..),
    newCloudresourcemanagerTagKeysList,

    -- ** cloudresourcemanager.tagKeys.patch
    CloudresourcemanagerTagKeysPatchResource,
    CloudresourcemanagerTagKeysPatch (..),
    newCloudresourcemanagerTagKeysPatch,

    -- ** cloudresourcemanager.tagKeys.setIamPolicy
    CloudresourcemanagerTagKeysSetIamPolicyResource,
    CloudresourcemanagerTagKeysSetIamPolicy (..),
    newCloudresourcemanagerTagKeysSetIamPolicy,

    -- ** cloudresourcemanager.tagKeys.testIamPermissions
    CloudresourcemanagerTagKeysTestIamPermissionsResource,
    CloudresourcemanagerTagKeysTestIamPermissions (..),
    newCloudresourcemanagerTagKeysTestIamPermissions,

    -- ** cloudresourcemanager.tagValues.create
    CloudresourcemanagerTagValuesCreateResource,
    CloudresourcemanagerTagValuesCreate (..),
    newCloudresourcemanagerTagValuesCreate,

    -- ** cloudresourcemanager.tagValues.delete
    CloudresourcemanagerTagValuesDeleteResource,
    CloudresourcemanagerTagValuesDelete (..),
    newCloudresourcemanagerTagValuesDelete,

    -- ** cloudresourcemanager.tagValues.get
    CloudresourcemanagerTagValuesGetResource,
    CloudresourcemanagerTagValuesGet (..),
    newCloudresourcemanagerTagValuesGet,

    -- ** cloudresourcemanager.tagValues.getIamPolicy
    CloudresourcemanagerTagValuesGetIamPolicyResource,
    CloudresourcemanagerTagValuesGetIamPolicy (..),
    newCloudresourcemanagerTagValuesGetIamPolicy,

    -- ** cloudresourcemanager.tagValues.list
    CloudresourcemanagerTagValuesListResource,
    CloudresourcemanagerTagValuesList (..),
    newCloudresourcemanagerTagValuesList,

    -- ** cloudresourcemanager.tagValues.patch
    CloudresourcemanagerTagValuesPatchResource,
    CloudresourcemanagerTagValuesPatch (..),
    newCloudresourcemanagerTagValuesPatch,

    -- ** cloudresourcemanager.tagValues.setIamPolicy
    CloudresourcemanagerTagValuesSetIamPolicyResource,
    CloudresourcemanagerTagValuesSetIamPolicy (..),
    newCloudresourcemanagerTagValuesSetIamPolicy,

    -- ** cloudresourcemanager.tagValues.tagHolds.create
    CloudresourcemanagerTagValuesTagHoldsCreateResource,
    CloudresourcemanagerTagValuesTagHoldsCreate (..),
    newCloudresourcemanagerTagValuesTagHoldsCreate,

    -- ** cloudresourcemanager.tagValues.tagHolds.delete
    CloudresourcemanagerTagValuesTagHoldsDeleteResource,
    CloudresourcemanagerTagValuesTagHoldsDelete (..),
    newCloudresourcemanagerTagValuesTagHoldsDelete,

    -- ** cloudresourcemanager.tagValues.tagHolds.list
    CloudresourcemanagerTagValuesTagHoldsListResource,
    CloudresourcemanagerTagValuesTagHoldsList (..),
    newCloudresourcemanagerTagValuesTagHoldsList,

    -- ** cloudresourcemanager.tagValues.testIamPermissions
    CloudresourcemanagerTagValuesTestIamPermissionsResource,
    CloudresourcemanagerTagValuesTestIamPermissions (..),
    newCloudresourcemanagerTagValuesTestIamPermissions,

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

    -- ** EffectiveTag
    EffectiveTag (..),
    newEffectiveTag,

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

    -- ** ListEffectiveTagsResponse
    ListEffectiveTagsResponse (..),
    newListEffectiveTagsResponse,

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

    -- ** ListTagHoldsResponse
    ListTagHoldsResponse (..),
    newListTagHoldsResponse,

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

    -- ** TagHold
    TagHold (..),
    newTagHold,

    -- ** TagKey
    TagKey (..),
    newTagKey,

    -- ** TagKey_Purpose
    TagKey_Purpose (..),

    -- ** TagKey_PurposeData
    TagKey_PurposeData (..),
    newTagKey_PurposeData,

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

import Gogol.ResourceManager.Cloudresourcemanager.EffectiveTags.List
import Gogol.ResourceManager.Cloudresourcemanager.Folders.Create
import Gogol.ResourceManager.Cloudresourcemanager.Folders.Delete
import Gogol.ResourceManager.Cloudresourcemanager.Folders.Get
import Gogol.ResourceManager.Cloudresourcemanager.Folders.GetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.Folders.List
import Gogol.ResourceManager.Cloudresourcemanager.Folders.Move
import Gogol.ResourceManager.Cloudresourcemanager.Folders.Patch
import Gogol.ResourceManager.Cloudresourcemanager.Folders.Search
import Gogol.ResourceManager.Cloudresourcemanager.Folders.SetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.Folders.TestIamPermissions
import Gogol.ResourceManager.Cloudresourcemanager.Folders.Undelete
import Gogol.ResourceManager.Cloudresourcemanager.Liens.Create
import Gogol.ResourceManager.Cloudresourcemanager.Liens.Delete
import Gogol.ResourceManager.Cloudresourcemanager.Liens.Get
import Gogol.ResourceManager.Cloudresourcemanager.Liens.List
import Gogol.ResourceManager.Cloudresourcemanager.Operations.Get
import Gogol.ResourceManager.Cloudresourcemanager.Organizations.Get
import Gogol.ResourceManager.Cloudresourcemanager.Organizations.GetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.Organizations.Search
import Gogol.ResourceManager.Cloudresourcemanager.Organizations.SetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.Organizations.TestIamPermissions
import Gogol.ResourceManager.Cloudresourcemanager.Projects.Create
import Gogol.ResourceManager.Cloudresourcemanager.Projects.Delete
import Gogol.ResourceManager.Cloudresourcemanager.Projects.Get
import Gogol.ResourceManager.Cloudresourcemanager.Projects.GetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.Projects.List
import Gogol.ResourceManager.Cloudresourcemanager.Projects.Move
import Gogol.ResourceManager.Cloudresourcemanager.Projects.Patch
import Gogol.ResourceManager.Cloudresourcemanager.Projects.Search
import Gogol.ResourceManager.Cloudresourcemanager.Projects.SetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.Projects.TestIamPermissions
import Gogol.ResourceManager.Cloudresourcemanager.Projects.Undelete
import Gogol.ResourceManager.Cloudresourcemanager.TagBindings.Create
import Gogol.ResourceManager.Cloudresourcemanager.TagBindings.Delete
import Gogol.ResourceManager.Cloudresourcemanager.TagBindings.List
import Gogol.ResourceManager.Cloudresourcemanager.TagKeys.Create
import Gogol.ResourceManager.Cloudresourcemanager.TagKeys.Delete
import Gogol.ResourceManager.Cloudresourcemanager.TagKeys.Get
import Gogol.ResourceManager.Cloudresourcemanager.TagKeys.GetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.TagKeys.List
import Gogol.ResourceManager.Cloudresourcemanager.TagKeys.Patch
import Gogol.ResourceManager.Cloudresourcemanager.TagKeys.SetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.TagKeys.TestIamPermissions
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.Create
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.Delete
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.Get
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.GetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.List
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.Patch
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.SetIamPolicy
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.Create
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.Delete
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.List
import Gogol.ResourceManager.Cloudresourcemanager.TagValues.TestIamPermissions
import Gogol.ResourceManager.Types
