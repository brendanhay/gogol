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
-- Module      : Gogol.ResourceManager.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ResourceManager.Types
  ( -- * Configuration
    resourceManagerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

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

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Internal.Product
import Gogol.ResourceManager.Internal.Sum

-- | Default request referring to version @v3@ of the Cloud Resource Manager API. This contains the host and root path used as a starting point for constructing service requests.
resourceManagerService :: Core.ServiceConfig
resourceManagerService =
  Core.defaultService
    (Core.ServiceId "cloudresourcemanager:v3")
    "cloudresourcemanager.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly = "https://www.googleapis.com/auth/cloud-platform.read-only"
