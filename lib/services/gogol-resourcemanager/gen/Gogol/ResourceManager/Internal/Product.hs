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
-- Module      : Gogol.ResourceManager.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ResourceManager.Internal.Product
  ( -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation (..),
    newCloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation,

    -- * CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation (..),
    newCloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation,

    -- * CreateFolderMetadata
    CreateFolderMetadata (..),
    newCreateFolderMetadata,

    -- * CreateProjectMetadata
    CreateProjectMetadata (..),
    newCreateProjectMetadata,

    -- * CreateTagBindingMetadata
    CreateTagBindingMetadata (..),
    newCreateTagBindingMetadata,

    -- * CreateTagKeyMetadata
    CreateTagKeyMetadata (..),
    newCreateTagKeyMetadata,

    -- * CreateTagValueMetadata
    CreateTagValueMetadata (..),
    newCreateTagValueMetadata,

    -- * DeleteFolderMetadata
    DeleteFolderMetadata (..),
    newDeleteFolderMetadata,

    -- * DeleteOrganizationMetadata
    DeleteOrganizationMetadata (..),
    newDeleteOrganizationMetadata,

    -- * DeleteProjectMetadata
    DeleteProjectMetadata (..),
    newDeleteProjectMetadata,

    -- * DeleteTagBindingMetadata
    DeleteTagBindingMetadata (..),
    newDeleteTagBindingMetadata,

    -- * DeleteTagKeyMetadata
    DeleteTagKeyMetadata (..),
    newDeleteTagKeyMetadata,

    -- * DeleteTagValueMetadata
    DeleteTagValueMetadata (..),
    newDeleteTagValueMetadata,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Expr
    Expr (..),
    newExpr,

    -- * Folder
    Folder (..),
    newFolder,

    -- * FolderOperation
    FolderOperation (..),
    newFolderOperation,

    -- * FolderOperationError
    FolderOperationError (..),
    newFolderOperationError,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * Lien
    Lien (..),
    newLien,

    -- * ListFoldersResponse
    ListFoldersResponse (..),
    newListFoldersResponse,

    -- * ListLiensResponse
    ListLiensResponse (..),
    newListLiensResponse,

    -- * ListProjectsResponse
    ListProjectsResponse (..),
    newListProjectsResponse,

    -- * ListTagBindingsResponse
    ListTagBindingsResponse (..),
    newListTagBindingsResponse,

    -- * ListTagKeysResponse
    ListTagKeysResponse (..),
    newListTagKeysResponse,

    -- * ListTagValuesResponse
    ListTagValuesResponse (..),
    newListTagValuesResponse,

    -- * MoveFolderMetadata
    MoveFolderMetadata (..),
    newMoveFolderMetadata,

    -- * MoveFolderRequest
    MoveFolderRequest (..),
    newMoveFolderRequest,

    -- * MoveProjectMetadata
    MoveProjectMetadata (..),
    newMoveProjectMetadata,

    -- * MoveProjectRequest
    MoveProjectRequest (..),
    newMoveProjectRequest,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * Organization
    Organization (..),
    newOrganization,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Project
    Project (..),
    newProject,

    -- * Project_Labels
    Project_Labels (..),
    newProject_Labels,

    -- * ProjectCreationStatus
    ProjectCreationStatus (..),
    newProjectCreationStatus,

    -- * SearchFoldersResponse
    SearchFoldersResponse (..),
    newSearchFoldersResponse,

    -- * SearchOrganizationsResponse
    SearchOrganizationsResponse (..),
    newSearchOrganizationsResponse,

    -- * SearchProjectsResponse
    SearchProjectsResponse (..),
    newSearchProjectsResponse,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TagBinding
    TagBinding (..),
    newTagBinding,

    -- * TagKey
    TagKey (..),
    newTagKey,

    -- * TagValue
    TagValue (..),
    newTagValue,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * UndeleteFolderMetadata
    UndeleteFolderMetadata (..),
    newUndeleteFolderMetadata,

    -- * UndeleteFolderRequest
    UndeleteFolderRequest (..),
    newUndeleteFolderRequest,

    -- * UndeleteOrganizationMetadata
    UndeleteOrganizationMetadata (..),
    newUndeleteOrganizationMetadata,

    -- * UndeleteProjectMetadata
    UndeleteProjectMetadata (..),
    newUndeleteProjectMetadata,

    -- * UndeleteProjectRequest
    UndeleteProjectRequest (..),
    newUndeleteProjectRequest,

    -- * UpdateFolderMetadata
    UpdateFolderMetadata (..),
    newUpdateFolderMetadata,

    -- * UpdateProjectMetadata
    UpdateProjectMetadata (..),
    newUpdateProjectMetadata,

    -- * UpdateTagKeyMetadata
    UpdateTagKeyMetadata (..),
    newUpdateTagKeyMetadata,

    -- * UpdateTagValueMetadata
    UpdateTagValueMetadata (..),
    newUpdateTagValueMetadata,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Internal.Sum

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts jose\@example.com from DATA/READ logging, and aliya\@example.com from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig ::
  AuditConfig
newAuditConfig =
  AuditConfig {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON AuditConfig where
  parseJSON =
    Core.withObject
      "AuditConfig"
      ( \o ->
          AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON AuditConfig where
  toJSON AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig ::
  AuditLogConfig
newAuditLogConfig =
  AuditLogConfig {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON AuditLogConfig where
  parseJSON =
    Core.withObject
      "AuditLogConfig"
      ( \o ->
          AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON AuditLogConfig where
  toJSON AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
    -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding ::
  Binding
newBinding =
  Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON Binding where
  parseJSON =
    Core.withObject
      "Binding"
      ( \o ->
          Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members" Core..!= Core.mempty)
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Binding where
  toJSON Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | Metadata describing a long running folder operation
--
-- /See:/ 'newCloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation' smart constructor.
data CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation = CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
  { -- | The resource name of the folder or organization we are either creating the folder under or moving the folder to.
    destinationParent :: (Core.Maybe Core.Text),
    -- | The display name of the folder.
    displayName :: (Core.Maybe Core.Text),
    -- | The type of this operation.
    operationType ::
      ( Core.Maybe
          CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType
      ),
    -- | The resource name of the folder\'s parent. Only applicable when the operation_type is MOVE.
    sourceParent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation' with the minimum fields required to make a request.
newCloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation ::
  CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
newCloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation =
  CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
    { destinationParent = Core.Nothing,
      displayName = Core.Nothing,
      operationType = Core.Nothing,
      sourceParent = Core.Nothing
    }

instance
  Core.FromJSON
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
  where
  parseJSON =
    Core.withObject
      "CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation"
      ( \o ->
          CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
            Core.<$> (o Core..:? "destinationParent")
              Core.<*> (o Core..:? "displayName")
              Core.<*> (o Core..:? "operationType")
              Core.<*> (o Core..:? "sourceParent")
      )

instance
  Core.ToJSON
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
  where
  toJSON
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation {..} =
      Core.object
        ( Core.catMaybes
            [ ("destinationParent" Core..=)
                Core.<$> destinationParent,
              ("displayName" Core..=) Core.<$> displayName,
              ("operationType" Core..=) Core.<$> operationType,
              ("sourceParent" Core..=) Core.<$> sourceParent
            ]
        )

-- | Metadata describing a long running folder operation
--
-- /See:/ 'newCloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation' smart constructor.
data CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation = CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
  { -- | The resource name of the folder or organization we are either creating the folder under or moving the folder to.
    destinationParent :: (Core.Maybe Core.Text),
    -- | The display name of the folder.
    displayName :: (Core.Maybe Core.Text),
    -- | The type of this operation.
    operationType ::
      ( Core.Maybe
          CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType
      ),
    -- | The resource name of the folder\'s parent. Only applicable when the operation_type is MOVE.
    sourceParent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation' with the minimum fields required to make a request.
newCloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation ::
  CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
newCloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation =
  CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
    { destinationParent = Core.Nothing,
      displayName = Core.Nothing,
      operationType = Core.Nothing,
      sourceParent = Core.Nothing
    }

instance
  Core.FromJSON
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
  where
  parseJSON =
    Core.withObject
      "CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation"
      ( \o ->
          CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
            Core.<$> (o Core..:? "destinationParent")
              Core.<*> (o Core..:? "displayName")
              Core.<*> (o Core..:? "operationType")
              Core.<*> (o Core..:? "sourceParent")
      )

instance
  Core.ToJSON
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
  where
  toJSON
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation {..} =
      Core.object
        ( Core.catMaybes
            [ ("destinationParent" Core..=)
                Core.<$> destinationParent,
              ("displayName" Core..=) Core.<$> displayName,
              ("operationType" Core..=) Core.<$> operationType,
              ("sourceParent" Core..=) Core.<$> sourceParent
            ]
        )

-- | Metadata pertaining to the Folder creation process.
--
-- /See:/ 'newCreateFolderMetadata' smart constructor.
data CreateFolderMetadata = CreateFolderMetadata
  { -- | The display name of the folder.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the folder or organization we are creating the folder under.
    parent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateFolderMetadata' with the minimum fields required to make a request.
newCreateFolderMetadata ::
  CreateFolderMetadata
newCreateFolderMetadata =
  CreateFolderMetadata {displayName = Core.Nothing, parent = Core.Nothing}

instance Core.FromJSON CreateFolderMetadata where
  parseJSON =
    Core.withObject
      "CreateFolderMetadata"
      ( \o ->
          CreateFolderMetadata
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "parent")
      )

instance Core.ToJSON CreateFolderMetadata where
  toJSON CreateFolderMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("parent" Core..=) Core.<$> parent
          ]
      )

-- | A status object which is used as the @metadata@ field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.
--
-- /See:/ 'newCreateProjectMetadata' smart constructor.
data CreateProjectMetadata = CreateProjectMetadata
  { -- | Creation time of the project creation workflow.
    createTime :: (Core.Maybe Core.DateTime),
    -- | True if the project can be retrieved using @GetProject@. No other operations on the project are guaranteed to work until the project creation is complete.
    gettable :: (Core.Maybe Core.Bool),
    -- | True if the project creation process is complete.
    ready :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateProjectMetadata' with the minimum fields required to make a request.
newCreateProjectMetadata ::
  CreateProjectMetadata
newCreateProjectMetadata =
  CreateProjectMetadata
    { createTime = Core.Nothing,
      gettable = Core.Nothing,
      ready = Core.Nothing
    }

instance Core.FromJSON CreateProjectMetadata where
  parseJSON =
    Core.withObject
      "CreateProjectMetadata"
      ( \o ->
          CreateProjectMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "gettable")
            Core.<*> (o Core..:? "ready")
      )

instance Core.ToJSON CreateProjectMetadata where
  toJSON CreateProjectMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("gettable" Core..=) Core.<$> gettable,
            ("ready" Core..=) Core.<$> ready
          ]
      )

-- | Runtime operation information for creating a TagValue.
--
-- /See:/ 'newCreateTagBindingMetadata' smart constructor.
data CreateTagBindingMetadata = CreateTagBindingMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTagBindingMetadata' with the minimum fields required to make a request.
newCreateTagBindingMetadata ::
  CreateTagBindingMetadata
newCreateTagBindingMetadata = CreateTagBindingMetadata

instance Core.FromJSON CreateTagBindingMetadata where
  parseJSON =
    Core.withObject
      "CreateTagBindingMetadata"
      (\o -> Core.pure CreateTagBindingMetadata)

instance Core.ToJSON CreateTagBindingMetadata where
  toJSON = Core.const Core.emptyObject

-- | Runtime operation information for creating a TagKey.
--
-- /See:/ 'newCreateTagKeyMetadata' smart constructor.
data CreateTagKeyMetadata = CreateTagKeyMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTagKeyMetadata' with the minimum fields required to make a request.
newCreateTagKeyMetadata ::
  CreateTagKeyMetadata
newCreateTagKeyMetadata = CreateTagKeyMetadata

instance Core.FromJSON CreateTagKeyMetadata where
  parseJSON =
    Core.withObject
      "CreateTagKeyMetadata"
      (\o -> Core.pure CreateTagKeyMetadata)

instance Core.ToJSON CreateTagKeyMetadata where
  toJSON = Core.const Core.emptyObject

-- | Runtime operation information for creating a TagValue.
--
-- /See:/ 'newCreateTagValueMetadata' smart constructor.
data CreateTagValueMetadata = CreateTagValueMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTagValueMetadata' with the minimum fields required to make a request.
newCreateTagValueMetadata ::
  CreateTagValueMetadata
newCreateTagValueMetadata = CreateTagValueMetadata

instance Core.FromJSON CreateTagValueMetadata where
  parseJSON =
    Core.withObject
      "CreateTagValueMetadata"
      (\o -> Core.pure CreateTagValueMetadata)

instance Core.ToJSON CreateTagValueMetadata where
  toJSON = Core.const Core.emptyObject

-- | A status object which is used as the @metadata@ field for the @Operation@ returned by @DeleteFolder@.
--
-- /See:/ 'newDeleteFolderMetadata' smart constructor.
data DeleteFolderMetadata = DeleteFolderMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteFolderMetadata' with the minimum fields required to make a request.
newDeleteFolderMetadata ::
  DeleteFolderMetadata
newDeleteFolderMetadata = DeleteFolderMetadata

instance Core.FromJSON DeleteFolderMetadata where
  parseJSON =
    Core.withObject
      "DeleteFolderMetadata"
      (\o -> Core.pure DeleteFolderMetadata)

instance Core.ToJSON DeleteFolderMetadata where
  toJSON = Core.const Core.emptyObject

-- | A status object which is used as the @metadata@ field for the operation returned by DeleteOrganization.
--
-- /See:/ 'newDeleteOrganizationMetadata' smart constructor.
data DeleteOrganizationMetadata = DeleteOrganizationMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteOrganizationMetadata' with the minimum fields required to make a request.
newDeleteOrganizationMetadata ::
  DeleteOrganizationMetadata
newDeleteOrganizationMetadata = DeleteOrganizationMetadata

instance Core.FromJSON DeleteOrganizationMetadata where
  parseJSON =
    Core.withObject
      "DeleteOrganizationMetadata"
      (\o -> Core.pure DeleteOrganizationMetadata)

instance Core.ToJSON DeleteOrganizationMetadata where
  toJSON = Core.const Core.emptyObject

-- | A status object which is used as the @metadata@ field for the Operation returned by @DeleteProject@.
--
-- /See:/ 'newDeleteProjectMetadata' smart constructor.
data DeleteProjectMetadata = DeleteProjectMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteProjectMetadata' with the minimum fields required to make a request.
newDeleteProjectMetadata ::
  DeleteProjectMetadata
newDeleteProjectMetadata = DeleteProjectMetadata

instance Core.FromJSON DeleteProjectMetadata where
  parseJSON =
    Core.withObject
      "DeleteProjectMetadata"
      (\o -> Core.pure DeleteProjectMetadata)

instance Core.ToJSON DeleteProjectMetadata where
  toJSON = Core.const Core.emptyObject

-- | Runtime operation information for deleting a TagBinding.
--
-- /See:/ 'newDeleteTagBindingMetadata' smart constructor.
data DeleteTagBindingMetadata = DeleteTagBindingMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteTagBindingMetadata' with the minimum fields required to make a request.
newDeleteTagBindingMetadata ::
  DeleteTagBindingMetadata
newDeleteTagBindingMetadata = DeleteTagBindingMetadata

instance Core.FromJSON DeleteTagBindingMetadata where
  parseJSON =
    Core.withObject
      "DeleteTagBindingMetadata"
      (\o -> Core.pure DeleteTagBindingMetadata)

instance Core.ToJSON DeleteTagBindingMetadata where
  toJSON = Core.const Core.emptyObject

-- | Runtime operation information for deleting a TagKey.
--
-- /See:/ 'newDeleteTagKeyMetadata' smart constructor.
data DeleteTagKeyMetadata = DeleteTagKeyMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteTagKeyMetadata' with the minimum fields required to make a request.
newDeleteTagKeyMetadata ::
  DeleteTagKeyMetadata
newDeleteTagKeyMetadata = DeleteTagKeyMetadata

instance Core.FromJSON DeleteTagKeyMetadata where
  parseJSON =
    Core.withObject
      "DeleteTagKeyMetadata"
      (\o -> Core.pure DeleteTagKeyMetadata)

instance Core.ToJSON DeleteTagKeyMetadata where
  toJSON = Core.const Core.emptyObject

-- | Runtime operation information for deleting a TagValue.
--
-- /See:/ 'newDeleteTagValueMetadata' smart constructor.
data DeleteTagValueMetadata = DeleteTagValueMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteTagValueMetadata' with the minimum fields required to make a request.
newDeleteTagValueMetadata ::
  DeleteTagValueMetadata
newDeleteTagValueMetadata = DeleteTagValueMetadata

instance Core.FromJSON DeleteTagValueMetadata where
  parseJSON =
    Core.withObject
      "DeleteTagValueMetadata"
      (\o -> Core.pure DeleteTagValueMetadata)

instance Core.ToJSON DeleteTagValueMetadata where
  toJSON = Core.const Core.emptyObject

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
  { -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    expression :: (Core.Maybe Core.Text),
    -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr ::
  Expr
newExpr =
  Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Expr where
  parseJSON =
    Core.withObject
      "Expr"
      ( \o ->
          Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Expr where
  toJSON Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A folder in an organization\'s resource hierarchy, used to organize that organization\'s resources.
--
-- /See:/ 'newFolder' smart constructor.
data Folder = Folder
  { -- | Output only. Timestamp when the folder was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Timestamp when the folder was requested to be deleted.
    deleteTime :: (Core.Maybe Core.DateTime),
    -- | The folder\'s display name. A folder\'s display name must be unique amongst its siblings. For example, no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: @[\\p{L}\\p{N}]([\\p{L}\\p{N}_- ]{0,28}[\\p{L}\\p{N}])?@.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. A checksum computed by the server based on the current value of the folder resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the folder. Its format is @folders\/{folder_id}@, for example: \"folders\/1234\".
    name :: (Core.Maybe Core.Text),
    -- | Required. The folder\'s parent\'s resource name. Updates to the folder\'s parent must be performed using MoveFolder.
    parent :: (Core.Maybe Core.Text),
    -- | Output only. The lifecycle state of the folder. Updates to the state must be performed using DeleteFolder and UndeleteFolder.
    state :: (Core.Maybe Folder_State),
    -- | Output only. Timestamp when the folder was last modified.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Folder' with the minimum fields required to make a request.
newFolder ::
  Folder
newFolder =
  Folder
    { createTime = Core.Nothing,
      deleteTime = Core.Nothing,
      displayName = Core.Nothing,
      etag = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Folder where
  parseJSON =
    Core.withObject
      "Folder"
      ( \o ->
          Folder
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "deleteTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Folder where
  toJSON Folder {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("deleteTime" Core..=) Core.<$> deleteTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("etag" Core..=) Core.<$> etag,
            ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Metadata describing a long running folder operation
--
-- /See:/ 'newFolderOperation' smart constructor.
data FolderOperation = FolderOperation
  { -- | The resource name of the folder or organization we are either creating the folder under or moving the folder to.
    destinationParent :: (Core.Maybe Core.Text),
    -- | The display name of the folder.
    displayName :: (Core.Maybe Core.Text),
    -- | The type of this operation.
    operationType :: (Core.Maybe FolderOperation_OperationType),
    -- | The resource name of the folder\'s parent. Only applicable when the operation_type is MOVE.
    sourceParent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FolderOperation' with the minimum fields required to make a request.
newFolderOperation ::
  FolderOperation
newFolderOperation =
  FolderOperation
    { destinationParent = Core.Nothing,
      displayName = Core.Nothing,
      operationType = Core.Nothing,
      sourceParent = Core.Nothing
    }

instance Core.FromJSON FolderOperation where
  parseJSON =
    Core.withObject
      "FolderOperation"
      ( \o ->
          FolderOperation
            Core.<$> (o Core..:? "destinationParent")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "sourceParent")
      )

instance Core.ToJSON FolderOperation where
  toJSON FolderOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("destinationParent" Core..=)
              Core.<$> destinationParent,
            ("displayName" Core..=) Core.<$> displayName,
            ("operationType" Core..=) Core.<$> operationType,
            ("sourceParent" Core..=) Core.<$> sourceParent
          ]
      )

-- | A classification of the Folder Operation error.
--
-- /See:/ 'newFolderOperationError' smart constructor.
newtype FolderOperationError = FolderOperationError
  { -- | The type of operation error experienced.
    errorMessageId :: (Core.Maybe FolderOperationError_ErrorMessageId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FolderOperationError' with the minimum fields required to make a request.
newFolderOperationError ::
  FolderOperationError
newFolderOperationError = FolderOperationError {errorMessageId = Core.Nothing}

instance Core.FromJSON FolderOperationError where
  parseJSON =
    Core.withObject
      "FolderOperationError"
      ( \o ->
          FolderOperationError
            Core.<$> (o Core..:? "errorMessageId")
      )

instance Core.ToJSON FolderOperationError where
  toJSON FolderOperationError {..} =
    Core.object
      ( Core.catMaybes
          [("errorMessageId" Core..=) Core.<$> errorMessageId]
      )

-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
  { -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
    options :: (Core.Maybe GetPolicyOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest ::
  GetIamPolicyRequest
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GetIamPolicyRequest"
      ( \o ->
          GetIamPolicyRequest Core.<$> (o Core..:? "options")
      )

instance Core.ToJSON GetIamPolicyRequest where
  toJSON GetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [("options" Core..=) Core.<$> options]
      )

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
  { -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    requestedPolicyVersion :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions ::
  GetPolicyOptions
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
  parseJSON =
    Core.withObject
      "GetPolicyOptions"
      ( \o ->
          GetPolicyOptions
            Core.<$> (o Core..:? "requestedPolicyVersion")
      )

instance Core.ToJSON GetPolicyOptions where
  toJSON GetPolicyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestedPolicyVersion" Core..=)
              Core.<$> requestedPolicyVersion
          ]
      )

-- | A Lien represents an encumbrance on the actions that can be performed on a resource.
--
-- /See:/ 'newLien' smart constructor.
data Lien = Lien
  { -- | The creation time of this Lien.
    createTime :: (Core.Maybe Core.DateTime),
    -- | A system-generated unique identifier for this Lien. Example: @liens\/1234abcd@
    name :: (Core.Maybe Core.Text),
    -- | A stable, user-visible\/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: \'compute.googleapis.com\'
    origin :: (Core.Maybe Core.Text),
    -- | A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: @projects\/1234@
    parent :: (Core.Maybe Core.Text),
    -- | Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: \'Holds production API key\'
    reason :: (Core.Maybe Core.Text),
    -- | The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: [\'resourcemanager.projects.delete\']
    restrictions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Lien' with the minimum fields required to make a request.
newLien ::
  Lien
newLien =
  Lien
    { createTime = Core.Nothing,
      name = Core.Nothing,
      origin = Core.Nothing,
      parent = Core.Nothing,
      reason = Core.Nothing,
      restrictions = Core.Nothing
    }

instance Core.FromJSON Lien where
  parseJSON =
    Core.withObject
      "Lien"
      ( \o ->
          Lien
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "origin")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "restrictions" Core..!= Core.mempty)
      )

instance Core.ToJSON Lien where
  toJSON Lien {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("name" Core..=) Core.<$> name,
            ("origin" Core..=) Core.<$> origin,
            ("parent" Core..=) Core.<$> parent,
            ("reason" Core..=) Core.<$> reason,
            ("restrictions" Core..=) Core.<$> restrictions
          ]
      )

-- | The ListFolders response message.
--
-- /See:/ 'newListFoldersResponse' smart constructor.
data ListFoldersResponse = ListFoldersResponse
  { -- | A possibly paginated list of folders that are direct descendants of the specified parent resource.
    folders :: (Core.Maybe [Folder]),
    -- | A pagination token returned from a previous call to @ListFolders@ that indicates from where listing should continue.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFoldersResponse' with the minimum fields required to make a request.
newListFoldersResponse ::
  ListFoldersResponse
newListFoldersResponse =
  ListFoldersResponse {folders = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListFoldersResponse where
  parseJSON =
    Core.withObject
      "ListFoldersResponse"
      ( \o ->
          ListFoldersResponse
            Core.<$> (o Core..:? "folders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListFoldersResponse where
  toJSON ListFoldersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("folders" Core..=) Core.<$> folders,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Liens.ListLiens.
--
-- /See:/ 'newListLiensResponse' smart constructor.
data ListLiensResponse = ListLiensResponse
  { -- | A list of Liens.
    liens :: (Core.Maybe [Lien]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLiensResponse' with the minimum fields required to make a request.
newListLiensResponse ::
  ListLiensResponse
newListLiensResponse =
  ListLiensResponse {liens = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLiensResponse where
  parseJSON =
    Core.withObject
      "ListLiensResponse"
      ( \o ->
          ListLiensResponse
            Core.<$> (o Core..:? "liens" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLiensResponse where
  toJSON ListLiensResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("liens" Core..=) Core.<$> liens,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A page of the response received from the ListProjects method. A paginated response where more pages are available has @next_page_token@ set. This token can be used in a subsequent request to retrieve the next request page. NOTE: A response may contain fewer elements than the request @page_size@ and still have a @next_page_token@.
--
-- /See:/ 'newListProjectsResponse' smart constructor.
data ListProjectsResponse = ListProjectsResponse
  { -- | Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the @page_token@ parameter gives the next page of the results. When @next_page_token@ is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of Projects under the parent. This list can be paginated.
    projects :: (Core.Maybe [Project])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListProjectsResponse' with the minimum fields required to make a request.
newListProjectsResponse ::
  ListProjectsResponse
newListProjectsResponse =
  ListProjectsResponse {nextPageToken = Core.Nothing, projects = Core.Nothing}

instance Core.FromJSON ListProjectsResponse where
  parseJSON =
    Core.withObject
      "ListProjectsResponse"
      ( \o ->
          ListProjectsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "projects" Core..!= Core.mempty)
      )

instance Core.ToJSON ListProjectsResponse where
  toJSON ListProjectsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("projects" Core..=) Core.<$> projects
          ]
      )

-- | The ListTagBindings response.
--
-- /See:/ 'newListTagBindingsResponse' smart constructor.
data ListTagBindingsResponse = ListTagBindingsResponse
  { -- | Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the @page_token@ parameter gives the next page of the results. When @next_page_token@ is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A possibly paginated list of TagBindings for the specified resource.
    tagBindings :: (Core.Maybe [TagBinding])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTagBindingsResponse' with the minimum fields required to make a request.
newListTagBindingsResponse ::
  ListTagBindingsResponse
newListTagBindingsResponse =
  ListTagBindingsResponse
    { nextPageToken = Core.Nothing,
      tagBindings = Core.Nothing
    }

instance Core.FromJSON ListTagBindingsResponse where
  parseJSON =
    Core.withObject
      "ListTagBindingsResponse"
      ( \o ->
          ListTagBindingsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "tagBindings" Core..!= Core.mempty)
      )

instance Core.ToJSON ListTagBindingsResponse where
  toJSON ListTagBindingsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("tagBindings" Core..=) Core.<$> tagBindings
          ]
      )

-- | The ListTagKeys response message.
--
-- /See:/ 'newListTagKeysResponse' smart constructor.
data ListTagKeysResponse = ListTagKeysResponse
  { -- | A pagination token returned from a previous call to @ListTagKeys@ that indicates from where listing should continue.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of TagKeys that live under the specified parent in the request.
    tagKeys :: (Core.Maybe [TagKey])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTagKeysResponse' with the minimum fields required to make a request.
newListTagKeysResponse ::
  ListTagKeysResponse
newListTagKeysResponse =
  ListTagKeysResponse {nextPageToken = Core.Nothing, tagKeys = Core.Nothing}

instance Core.FromJSON ListTagKeysResponse where
  parseJSON =
    Core.withObject
      "ListTagKeysResponse"
      ( \o ->
          ListTagKeysResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "tagKeys" Core..!= Core.mempty)
      )

instance Core.ToJSON ListTagKeysResponse where
  toJSON ListTagKeysResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("tagKeys" Core..=) Core.<$> tagKeys
          ]
      )

-- | The ListTagValues response.
--
-- /See:/ 'newListTagValuesResponse' smart constructor.
data ListTagValuesResponse = ListTagValuesResponse
  { -- | A pagination token returned from a previous call to @ListTagValues@ that indicates from where listing should continue. This is currently not used, but the server may at any point start supplying a valid token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A possibly paginated list of TagValues that are direct descendants of the specified parent TagKey.
    tagValues :: (Core.Maybe [TagValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTagValuesResponse' with the minimum fields required to make a request.
newListTagValuesResponse ::
  ListTagValuesResponse
newListTagValuesResponse =
  ListTagValuesResponse {nextPageToken = Core.Nothing, tagValues = Core.Nothing}

instance Core.FromJSON ListTagValuesResponse where
  parseJSON =
    Core.withObject
      "ListTagValuesResponse"
      ( \o ->
          ListTagValuesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "tagValues" Core..!= Core.mempty)
      )

instance Core.ToJSON ListTagValuesResponse where
  toJSON ListTagValuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("tagValues" Core..=) Core.<$> tagValues
          ]
      )

-- | Metadata pertaining to the folder move process.
--
-- /See:/ 'newMoveFolderMetadata' smart constructor.
data MoveFolderMetadata = MoveFolderMetadata
  { -- | The resource name of the folder or organization to move the folder to.
    destinationParent :: (Core.Maybe Core.Text),
    -- | The display name of the folder.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the folder\'s parent.
    sourceParent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MoveFolderMetadata' with the minimum fields required to make a request.
newMoveFolderMetadata ::
  MoveFolderMetadata
newMoveFolderMetadata =
  MoveFolderMetadata
    { destinationParent = Core.Nothing,
      displayName = Core.Nothing,
      sourceParent = Core.Nothing
    }

instance Core.FromJSON MoveFolderMetadata where
  parseJSON =
    Core.withObject
      "MoveFolderMetadata"
      ( \o ->
          MoveFolderMetadata
            Core.<$> (o Core..:? "destinationParent")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "sourceParent")
      )

instance Core.ToJSON MoveFolderMetadata where
  toJSON MoveFolderMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("destinationParent" Core..=)
              Core.<$> destinationParent,
            ("displayName" Core..=) Core.<$> displayName,
            ("sourceParent" Core..=) Core.<$> sourceParent
          ]
      )

-- | The MoveFolder request message.
--
-- /See:/ 'newMoveFolderRequest' smart constructor.
newtype MoveFolderRequest = MoveFolderRequest
  { -- | Required. The resource name of the folder or organization which should be the folder\'s new parent. Must be of the form @folders\/{folder_id}@ or @organizations\/{org_id}@.
    destinationParent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MoveFolderRequest' with the minimum fields required to make a request.
newMoveFolderRequest ::
  MoveFolderRequest
newMoveFolderRequest = MoveFolderRequest {destinationParent = Core.Nothing}

instance Core.FromJSON MoveFolderRequest where
  parseJSON =
    Core.withObject
      "MoveFolderRequest"
      ( \o ->
          MoveFolderRequest
            Core.<$> (o Core..:? "destinationParent")
      )

instance Core.ToJSON MoveFolderRequest where
  toJSON MoveFolderRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("destinationParent" Core..=)
              Core.<$> destinationParent
          ]
      )

-- | A status object which is used as the @metadata@ field for the Operation returned by MoveProject.
--
-- /See:/ 'newMoveProjectMetadata' smart constructor.
data MoveProjectMetadata = MoveProjectMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MoveProjectMetadata' with the minimum fields required to make a request.
newMoveProjectMetadata ::
  MoveProjectMetadata
newMoveProjectMetadata = MoveProjectMetadata

instance Core.FromJSON MoveProjectMetadata where
  parseJSON =
    Core.withObject
      "MoveProjectMetadata"
      (\o -> Core.pure MoveProjectMetadata)

instance Core.ToJSON MoveProjectMetadata where
  toJSON = Core.const Core.emptyObject

-- | The request sent to MoveProject method.
--
-- /See:/ 'newMoveProjectRequest' smart constructor.
newtype MoveProjectRequest = MoveProjectRequest
  { -- | Required. The new parent to move the Project under.
    destinationParent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MoveProjectRequest' with the minimum fields required to make a request.
newMoveProjectRequest ::
  MoveProjectRequest
newMoveProjectRequest = MoveProjectRequest {destinationParent = Core.Nothing}

instance Core.FromJSON MoveProjectRequest where
  parseJSON =
    Core.withObject
      "MoveProjectRequest"
      ( \o ->
          MoveProjectRequest
            Core.<$> (o Core..:? "destinationParent")
      )

instance Core.ToJSON MoveProjectRequest where
  toJSON MoveProjectRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("destinationParent" Core..=)
              Core.<$> destinationParent
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | The root node in the resource hierarchy to which a particular entity\'s (a company, for example) resources belong.
--
-- /See:/ 'newOrganization' smart constructor.
data Organization = Organization
  { -- | Output only. Timestamp when the Organization was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Timestamp when the Organization was requested for deletion.
    deleteTime :: (Core.Maybe Core.DateTime),
    -- | Immutable. The G Suite \/ Workspace customer id used in the Directory API.
    directoryCustomerId :: (Core.Maybe Core.Text),
    -- | Output only. A human-readable string that refers to the organization in the Google Cloud Console. This string is set by the server and cannot be changed. The string will be set to the primary domain (for example, \"google.com\") of the Google Workspace customer that owns the organization.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. A checksum computed by the server based on the current value of the Organization resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the organization. This is the organization\'s relative path in the API. Its format is \"organizations\/[organization_id]\". For example, \"organizations\/1234\".
    name :: (Core.Maybe Core.Text),
    -- | Output only. The organization\'s current lifecycle state.
    state :: (Core.Maybe Organization_State),
    -- | Output only. Timestamp when the Organization was last modified.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Organization' with the minimum fields required to make a request.
newOrganization ::
  Organization
newOrganization =
  Organization
    { createTime = Core.Nothing,
      deleteTime = Core.Nothing,
      directoryCustomerId = Core.Nothing,
      displayName = Core.Nothing,
      etag = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Organization where
  parseJSON =
    Core.withObject
      "Organization"
      ( \o ->
          Organization
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "deleteTime")
            Core.<*> (o Core..:? "directoryCustomerId")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Organization where
  toJSON Organization {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("deleteTime" Core..=) Core.<$> deleteTime,
            ("directoryCustomerId" Core..=)
              Core.<$> directoryCustomerId,
            ("displayName" Core..=) Core.<$> displayName,
            ("etag" Core..=) Core.<$> etag,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [AuditConfig]),
    -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    bindings :: (Core.Maybe [Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
    -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "auditConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bindings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | A project is a high-level Google Cloud entity. It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.
--
-- /See:/ 'newProject' smart constructor.
data Project = Project
  { -- | Output only. Creation time.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time at which this resource was requested for deletion.
    deleteTime :: (Core.Maybe Core.DateTime),
    -- | Optional. A user-assigned display name of the project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: @My Project@
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. A checksum computed by the server based on the current value of the Project resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | Optional. The labels associated with this project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]/[a-z0-9])?. Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]/[a-z0-9])?)?. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: @\"myBusinessDimension\" : \"businessValue\"@
    labels :: (Core.Maybe Project_Labels),
    -- | Output only. The unique resource name of the project. It is an int64 generated number prefixed by \"projects\/\". Example: @projects\/415104041262@
    name :: (Core.Maybe Core.Text),
    -- | Optional. A reference to a parent Resource. eg., @organizations\/123@ or @folders\/876@.
    parent :: (Core.Maybe Core.Text),
    -- | Immutable. The unique, user-assigned id of the project. It must be 6 to 30 lowercase ASCII letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: @tokyo-rain-123@
    projectId :: (Core.Maybe Core.Text),
    -- | Output only. The project lifecycle state.
    state :: (Core.Maybe Project_State),
    -- | Output only. The most recent time this resource was modified.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
newProject ::
  Project
newProject =
  Project
    { createTime = Core.Nothing,
      deleteTime = Core.Nothing,
      displayName = Core.Nothing,
      etag = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      projectId = Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Project where
  parseJSON =
    Core.withObject
      "Project"
      ( \o ->
          Project
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "deleteTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Project where
  toJSON Project {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("deleteTime" Core..=) Core.<$> deleteTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("etag" Core..=) Core.<$> etag,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("projectId" Core..=) Core.<$> projectId,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Optional. The labels associated with this project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]/[a-z0-9])?. Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]/[a-z0-9])?)?. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: @\"myBusinessDimension\" : \"businessValue\"@
--
-- /See:/ 'newProject_Labels' smart constructor.
newtype Project_Labels = Project_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Project_Labels' with the minimum fields required to make a request.
newProject_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Project_Labels
newProject_Labels additional = Project_Labels {additional = additional}

instance Core.FromJSON Project_Labels where
  parseJSON =
    Core.withObject
      "Project_Labels"
      ( \o ->
          Project_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Project_Labels where
  toJSON Project_Labels {..} = Core.toJSON additional

-- | A status object which is used as the @metadata@ field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.
--
-- /See:/ 'newProjectCreationStatus' smart constructor.
data ProjectCreationStatus = ProjectCreationStatus
  { -- | Creation time of the project creation workflow.
    createTime :: (Core.Maybe Core.DateTime),
    -- | True if the project can be retrieved using GetProject. No other operations on the project are guaranteed to work until the project creation is complete.
    gettable :: (Core.Maybe Core.Bool),
    -- | True if the project creation process is complete.
    ready :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectCreationStatus' with the minimum fields required to make a request.
newProjectCreationStatus ::
  ProjectCreationStatus
newProjectCreationStatus =
  ProjectCreationStatus
    { createTime = Core.Nothing,
      gettable = Core.Nothing,
      ready = Core.Nothing
    }

instance Core.FromJSON ProjectCreationStatus where
  parseJSON =
    Core.withObject
      "ProjectCreationStatus"
      ( \o ->
          ProjectCreationStatus
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "gettable")
            Core.<*> (o Core..:? "ready")
      )

instance Core.ToJSON ProjectCreationStatus where
  toJSON ProjectCreationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("gettable" Core..=) Core.<$> gettable,
            ("ready" Core..=) Core.<$> ready
          ]
      )

-- | The response message for searching folders.
--
-- /See:/ 'newSearchFoldersResponse' smart constructor.
data SearchFoldersResponse = SearchFoldersResponse
  { -- | A possibly paginated folder search results. the specified parent resource.
    folders :: (Core.Maybe [Folder]),
    -- | A pagination token returned from a previous call to @SearchFolders@ that indicates from where searching should continue.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchFoldersResponse' with the minimum fields required to make a request.
newSearchFoldersResponse ::
  SearchFoldersResponse
newSearchFoldersResponse =
  SearchFoldersResponse {folders = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON SearchFoldersResponse where
  parseJSON =
    Core.withObject
      "SearchFoldersResponse"
      ( \o ->
          SearchFoldersResponse
            Core.<$> (o Core..:? "folders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON SearchFoldersResponse where
  toJSON SearchFoldersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("folders" Core..=) Core.<$> folders,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response returned from the @SearchOrganizations@ method.
--
-- /See:/ 'newSearchOrganizationsResponse' smart constructor.
data SearchOrganizationsResponse = SearchOrganizationsResponse
  { -- | A pagination token to be used to retrieve the next page of results. If the result is too large to fit within the page size specified in the request, this field will be set with a token that can be used to fetch the next page of results. If this field is empty, it indicates that this response contains the last page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of Organizations that matched the search query, possibly paginated.
    organizations :: (Core.Maybe [Organization])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchOrganizationsResponse' with the minimum fields required to make a request.
newSearchOrganizationsResponse ::
  SearchOrganizationsResponse
newSearchOrganizationsResponse =
  SearchOrganizationsResponse
    { nextPageToken = Core.Nothing,
      organizations = Core.Nothing
    }

instance Core.FromJSON SearchOrganizationsResponse where
  parseJSON =
    Core.withObject
      "SearchOrganizationsResponse"
      ( \o ->
          SearchOrganizationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "organizations" Core..!= Core.mempty)
      )

instance Core.ToJSON SearchOrganizationsResponse where
  toJSON SearchOrganizationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("organizations" Core..=) Core.<$> organizations
          ]
      )

-- | A page of the response received from the SearchProjects method. A paginated response where more pages are available has @next_page_token@ set. This token can be used in a subsequent request to retrieve the next request page.
--
-- /See:/ 'newSearchProjectsResponse' smart constructor.
data SearchProjectsResponse = SearchProjectsResponse
  { -- | Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the @page_token@ parameter gives the next page of the results. When @next_page_token@ is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of Projects that matched the list filter query. This list can be paginated.
    projects :: (Core.Maybe [Project])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchProjectsResponse' with the minimum fields required to make a request.
newSearchProjectsResponse ::
  SearchProjectsResponse
newSearchProjectsResponse =
  SearchProjectsResponse {nextPageToken = Core.Nothing, projects = Core.Nothing}

instance Core.FromJSON SearchProjectsResponse where
  parseJSON =
    Core.withObject
      "SearchProjectsResponse"
      ( \o ->
          SearchProjectsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "projects" Core..!= Core.mempty)
      )

instance Core.ToJSON SearchProjectsResponse where
  toJSON SearchProjectsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("projects" Core..=) Core.<$> projects
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest {policy = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | A TagBinding represents a connection between a TagValue and a cloud resource (currently project, folder, or organization). Once a TagBinding is created, the TagValue is applied to all the descendants of the cloud resource.
--
-- /See:/ 'newTagBinding' smart constructor.
data TagBinding = TagBinding
  { -- | Output only. The name of the TagBinding. This is a String of the form: @tagBindings\/{full-resource-name}\/{tag-value-name}@ (e.g. @tagBindings\/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123\/tagValues\/456@).
    name :: (Core.Maybe Core.Text),
    -- | The full resource name of the resource the TagValue is bound to. E.g. @\/\/cloudresourcemanager.googleapis.com\/projects\/123@
    parent :: (Core.Maybe Core.Text),
    -- | The TagValue of the TagBinding. Must be of the form @tagValues\/456@.
    tagValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagBinding' with the minimum fields required to make a request.
newTagBinding ::
  TagBinding
newTagBinding =
  TagBinding
    { name = Core.Nothing,
      parent = Core.Nothing,
      tagValue = Core.Nothing
    }

instance Core.FromJSON TagBinding where
  parseJSON =
    Core.withObject
      "TagBinding"
      ( \o ->
          TagBinding
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "tagValue")
      )

instance Core.ToJSON TagBinding where
  toJSON TagBinding {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("tagValue" Core..=) Core.<$> tagValue
          ]
      )

-- | A TagKey, used to group a set of TagValues.
--
-- /See:/ 'newTagKey' smart constructor.
data TagKey = TagKey
  { -- | Output only. Creation time.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.
    description :: (Core.Maybe Core.Text),
    -- | Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.
    etag :: (Core.Maybe Core.Text),
    -- | Immutable. The resource name for a TagKey. Must be in the format @tagKeys\/{tag_key_id}@, where @tag_key_id@ is the generated numeric id for the TagKey.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Immutable. Namespaced name of the TagKey.
    namespacedName :: (Core.Maybe Core.Text),
    -- | Immutable. The resource name of the new TagKey\'s parent. Must be of the form @organizations\/{org_id}@.
    parent :: (Core.Maybe Core.Text),
    -- | Required. Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
    shortName :: (Core.Maybe Core.Text),
    -- | Output only. Update time.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagKey' with the minimum fields required to make a request.
newTagKey ::
  TagKey
newTagKey =
  TagKey
    { createTime = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      name = Core.Nothing,
      namespacedName = Core.Nothing,
      parent = Core.Nothing,
      shortName = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON TagKey where
  parseJSON =
    Core.withObject
      "TagKey"
      ( \o ->
          TagKey
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "namespacedName")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "shortName")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON TagKey where
  toJSON TagKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("name" Core..=) Core.<$> name,
            ("namespacedName" Core..=) Core.<$> namespacedName,
            ("parent" Core..=) Core.<$> parent,
            ("shortName" Core..=) Core.<$> shortName,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | A TagValue is a child of a particular TagKey. This is used to group cloud resources for the purpose of controlling them using policies.
--
-- /See:/ 'newTagValue' smart constructor.
data TagValue = TagValue
  { -- | Output only. Creation time.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
    description :: (Core.Maybe Core.Text),
    -- | Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
    etag :: (Core.Maybe Core.Text),
    -- | Immutable. Resource name for TagValue in the format @tagValues\/456@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Namespaced name of the TagValue. Must be in the format @{organization_id}\/{tag_key_short_name}\/{short_name}@.
    namespacedName :: (Core.Maybe Core.Text),
    -- | Immutable. The resource name of the new TagValue\'s parent TagKey. Must be of the form @tagKeys\/{tag_key_id}@.
    parent :: (Core.Maybe Core.Text),
    -- | Required. Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
    shortName :: (Core.Maybe Core.Text),
    -- | Output only. Update time.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagValue' with the minimum fields required to make a request.
newTagValue ::
  TagValue
newTagValue =
  TagValue
    { createTime = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      name = Core.Nothing,
      namespacedName = Core.Nothing,
      parent = Core.Nothing,
      shortName = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON TagValue where
  parseJSON =
    Core.withObject
      "TagValue"
      ( \o ->
          TagValue
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "namespacedName")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "shortName")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON TagValue where
  toJSON TagValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("name" Core..=) Core.<$> name,
            ("namespacedName" Core..=) Core.<$> namespacedName,
            ("parent" Core..=) Core.<$> parent,
            ("shortName" Core..=) Core.<$> shortName,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest ::
  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest where
  parseJSON =
    Core.withObject
      "TestIamPermissionsRequest"
      ( \o ->
          TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse ::
  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestIamPermissionsResponse"
      ( \o ->
          TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | A status object which is used as the @metadata@ field for the @Operation@ returned by @UndeleteFolder@.
--
-- /See:/ 'newUndeleteFolderMetadata' smart constructor.
data UndeleteFolderMetadata = UndeleteFolderMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteFolderMetadata' with the minimum fields required to make a request.
newUndeleteFolderMetadata ::
  UndeleteFolderMetadata
newUndeleteFolderMetadata = UndeleteFolderMetadata

instance Core.FromJSON UndeleteFolderMetadata where
  parseJSON =
    Core.withObject
      "UndeleteFolderMetadata"
      (\o -> Core.pure UndeleteFolderMetadata)

instance Core.ToJSON UndeleteFolderMetadata where
  toJSON = Core.const Core.emptyObject

-- | The UndeleteFolder request message.
--
-- /See:/ 'newUndeleteFolderRequest' smart constructor.
data UndeleteFolderRequest = UndeleteFolderRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteFolderRequest' with the minimum fields required to make a request.
newUndeleteFolderRequest ::
  UndeleteFolderRequest
newUndeleteFolderRequest = UndeleteFolderRequest

instance Core.FromJSON UndeleteFolderRequest where
  parseJSON =
    Core.withObject
      "UndeleteFolderRequest"
      (\o -> Core.pure UndeleteFolderRequest)

instance Core.ToJSON UndeleteFolderRequest where
  toJSON = Core.const Core.emptyObject

-- | A status object which is used as the @metadata@ field for the Operation returned by UndeleteOrganization.
--
-- /See:/ 'newUndeleteOrganizationMetadata' smart constructor.
data UndeleteOrganizationMetadata = UndeleteOrganizationMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteOrganizationMetadata' with the minimum fields required to make a request.
newUndeleteOrganizationMetadata ::
  UndeleteOrganizationMetadata
newUndeleteOrganizationMetadata = UndeleteOrganizationMetadata

instance Core.FromJSON UndeleteOrganizationMetadata where
  parseJSON =
    Core.withObject
      "UndeleteOrganizationMetadata"
      (\o -> Core.pure UndeleteOrganizationMetadata)

instance Core.ToJSON UndeleteOrganizationMetadata where
  toJSON = Core.const Core.emptyObject

-- | A status object which is used as the @metadata@ field for the Operation returned by @UndeleteProject@.
--
-- /See:/ 'newUndeleteProjectMetadata' smart constructor.
data UndeleteProjectMetadata = UndeleteProjectMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteProjectMetadata' with the minimum fields required to make a request.
newUndeleteProjectMetadata ::
  UndeleteProjectMetadata
newUndeleteProjectMetadata = UndeleteProjectMetadata

instance Core.FromJSON UndeleteProjectMetadata where
  parseJSON =
    Core.withObject
      "UndeleteProjectMetadata"
      (\o -> Core.pure UndeleteProjectMetadata)

instance Core.ToJSON UndeleteProjectMetadata where
  toJSON = Core.const Core.emptyObject

-- | The request sent to the UndeleteProject method.
--
-- /See:/ 'newUndeleteProjectRequest' smart constructor.
data UndeleteProjectRequest = UndeleteProjectRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteProjectRequest' with the minimum fields required to make a request.
newUndeleteProjectRequest ::
  UndeleteProjectRequest
newUndeleteProjectRequest = UndeleteProjectRequest

instance Core.FromJSON UndeleteProjectRequest where
  parseJSON =
    Core.withObject
      "UndeleteProjectRequest"
      (\o -> Core.pure UndeleteProjectRequest)

instance Core.ToJSON UndeleteProjectRequest where
  toJSON = Core.const Core.emptyObject

-- | A status object which is used as the @metadata@ field for the Operation returned by UpdateFolder.
--
-- /See:/ 'newUpdateFolderMetadata' smart constructor.
data UpdateFolderMetadata = UpdateFolderMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateFolderMetadata' with the minimum fields required to make a request.
newUpdateFolderMetadata ::
  UpdateFolderMetadata
newUpdateFolderMetadata = UpdateFolderMetadata

instance Core.FromJSON UpdateFolderMetadata where
  parseJSON =
    Core.withObject
      "UpdateFolderMetadata"
      (\o -> Core.pure UpdateFolderMetadata)

instance Core.ToJSON UpdateFolderMetadata where
  toJSON = Core.const Core.emptyObject

-- | A status object which is used as the @metadata@ field for the Operation returned by UpdateProject.
--
-- /See:/ 'newUpdateProjectMetadata' smart constructor.
data UpdateProjectMetadata = UpdateProjectMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateProjectMetadata' with the minimum fields required to make a request.
newUpdateProjectMetadata ::
  UpdateProjectMetadata
newUpdateProjectMetadata = UpdateProjectMetadata

instance Core.FromJSON UpdateProjectMetadata where
  parseJSON =
    Core.withObject
      "UpdateProjectMetadata"
      (\o -> Core.pure UpdateProjectMetadata)

instance Core.ToJSON UpdateProjectMetadata where
  toJSON = Core.const Core.emptyObject

-- | Runtime operation information for updating a TagKey.
--
-- /See:/ 'newUpdateTagKeyMetadata' smart constructor.
data UpdateTagKeyMetadata = UpdateTagKeyMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTagKeyMetadata' with the minimum fields required to make a request.
newUpdateTagKeyMetadata ::
  UpdateTagKeyMetadata
newUpdateTagKeyMetadata = UpdateTagKeyMetadata

instance Core.FromJSON UpdateTagKeyMetadata where
  parseJSON =
    Core.withObject
      "UpdateTagKeyMetadata"
      (\o -> Core.pure UpdateTagKeyMetadata)

instance Core.ToJSON UpdateTagKeyMetadata where
  toJSON = Core.const Core.emptyObject

-- | Runtime operation information for updating a TagValue.
--
-- /See:/ 'newUpdateTagValueMetadata' smart constructor.
data UpdateTagValueMetadata = UpdateTagValueMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTagValueMetadata' with the minimum fields required to make a request.
newUpdateTagValueMetadata ::
  UpdateTagValueMetadata
newUpdateTagValueMetadata = UpdateTagValueMetadata

instance Core.FromJSON UpdateTagValueMetadata where
  parseJSON =
    Core.withObject
      "UpdateTagValueMetadata"
      (\o -> Core.pure UpdateTagValueMetadata)

instance Core.ToJSON UpdateTagValueMetadata where
  toJSON = Core.const Core.emptyObject
