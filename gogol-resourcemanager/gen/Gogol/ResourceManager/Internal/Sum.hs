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
-- Module      : Gogol.ResourceManager.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ResourceManager.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType
      ( CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED,
        CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_Create,
        CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_Move,
        ..
      ),

    -- * CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType
      ( CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED,
        CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_Create,
        CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_Move,
        ..
      ),

    -- * Folder_State
    Folder_State
      ( Folder_State_STATEUNSPECIFIED,
        Folder_State_Active,
        Folder_State_DELETEREQUESTED,
        ..
      ),

    -- * FolderOperation_OperationType
    FolderOperation_OperationType
      ( FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED,
        FolderOperation_OperationType_Create,
        FolderOperation_OperationType_Move,
        ..
      ),

    -- * FolderOperationError_ErrorMessageId
    FolderOperationError_ErrorMessageId
      ( FolderOperationError_ErrorMessageId_ERRORTYPEUNSPECIFIED,
        FolderOperationError_ErrorMessageId_ACTIVEFOLDERHEIGHTVIOLATION,
        FolderOperationError_ErrorMessageId_MAXCHILDFOLDERSVIOLATION,
        FolderOperationError_ErrorMessageId_FOLDERNAMEUNIQUENESSVIOLATION,
        FolderOperationError_ErrorMessageId_RESOURCEDELETEDVIOLATION,
        FolderOperationError_ErrorMessageId_PARENTDELETEDVIOLATION,
        FolderOperationError_ErrorMessageId_CYCLEINTRODUCEDVIOLATION,
        FolderOperationError_ErrorMessageId_FOLDERBEINGMOVEDVIOLATION,
        FolderOperationError_ErrorMessageId_FOLDERTODELETENONEMPTYVIOLATION,
        FolderOperationError_ErrorMessageId_DELETEDFOLDERHEIGHTVIOLATION,
        ..
      ),

    -- * Organization_State
    Organization_State
      ( Organization_State_STATEUNSPECIFIED,
        Organization_State_Active,
        Organization_State_DELETEREQUESTED,
        ..
      ),

    -- * Project_State
    Project_State
      ( Project_State_STATEUNSPECIFIED,
        Project_State_Active,
        Project_State_DELETEREQUESTED,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | The type of this operation.
newtype CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType = CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType {fromCloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Operation type not specified.
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED :: CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED = CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType "OPERATION_TYPE_UNSPECIFIED"

-- | A create folder operation.
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_Create :: CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_Create = CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType "CREATE"

-- | A move folder operation.
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_Move :: CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_Move = CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType "MOVE"

{-# COMPLETE
  CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED,
  CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_Create,
  CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType_Move,
  CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation_OperationType
  #-}

-- | The type of this operation.
newtype CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType = CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType {fromCloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Operation type not specified.
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED :: CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED = CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType "OPERATION_TYPE_UNSPECIFIED"

-- | A create folder operation.
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_Create :: CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_Create = CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType "CREATE"

-- | A move folder operation.
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_Move :: CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType
pattern CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_Move = CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType "MOVE"

{-# COMPLETE
  CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED,
  CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_Create,
  CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType_Move,
  CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation_OperationType
  #-}

-- | Output only. The lifecycle state of the folder. Updates to the state must be performed using DeleteFolder and UndeleteFolder.
newtype Folder_State = Folder_State {fromFolder_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified state.
pattern Folder_State_STATEUNSPECIFIED :: Folder_State
pattern Folder_State_STATEUNSPECIFIED = Folder_State "STATE_UNSPECIFIED"

-- | The normal and active state.
pattern Folder_State_Active :: Folder_State
pattern Folder_State_Active = Folder_State "ACTIVE"

-- | The folder has been marked for deletion by the user.
pattern Folder_State_DELETEREQUESTED :: Folder_State
pattern Folder_State_DELETEREQUESTED = Folder_State "DELETE_REQUESTED"

{-# COMPLETE
  Folder_State_STATEUNSPECIFIED,
  Folder_State_Active,
  Folder_State_DELETEREQUESTED,
  Folder_State
  #-}

-- | The type of this operation.
newtype FolderOperation_OperationType = FolderOperation_OperationType {fromFolderOperation_OperationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Operation type not specified.
pattern FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED :: FolderOperation_OperationType
pattern FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED = FolderOperation_OperationType "OPERATION_TYPE_UNSPECIFIED"

-- | A create folder operation.
pattern FolderOperation_OperationType_Create :: FolderOperation_OperationType
pattern FolderOperation_OperationType_Create = FolderOperation_OperationType "CREATE"

-- | A move folder operation.
pattern FolderOperation_OperationType_Move :: FolderOperation_OperationType
pattern FolderOperation_OperationType_Move = FolderOperation_OperationType "MOVE"

{-# COMPLETE
  FolderOperation_OperationType_OPERATIONTYPEUNSPECIFIED,
  FolderOperation_OperationType_Create,
  FolderOperation_OperationType_Move,
  FolderOperation_OperationType
  #-}

-- | The type of operation error experienced.
newtype FolderOperationError_ErrorMessageId = FolderOperationError_ErrorMessageId {fromFolderOperationError_ErrorMessageId :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The error type was unrecognized or unspecified.
pattern FolderOperationError_ErrorMessageId_ERRORTYPEUNSPECIFIED :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_ERRORTYPEUNSPECIFIED = FolderOperationError_ErrorMessageId "ERROR_TYPE_UNSPECIFIED"

-- | The attempted action would violate the max folder depth constraint.
pattern FolderOperationError_ErrorMessageId_ACTIVEFOLDERHEIGHTVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_ACTIVEFOLDERHEIGHTVIOLATION = FolderOperationError_ErrorMessageId "ACTIVE_FOLDER_HEIGHT_VIOLATION"

-- | The attempted action would violate the max child folders constraint.
pattern FolderOperationError_ErrorMessageId_MAXCHILDFOLDERSVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_MAXCHILDFOLDERSVIOLATION = FolderOperationError_ErrorMessageId "MAX_CHILD_FOLDERS_VIOLATION"

-- | The attempted action would violate the locally-unique folder display_name constraint.
pattern FolderOperationError_ErrorMessageId_FOLDERNAMEUNIQUENESSVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_FOLDERNAMEUNIQUENESSVIOLATION = FolderOperationError_ErrorMessageId "FOLDER_NAME_UNIQUENESS_VIOLATION"

-- | The resource being moved has been deleted.
pattern FolderOperationError_ErrorMessageId_RESOURCEDELETEDVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_RESOURCEDELETEDVIOLATION = FolderOperationError_ErrorMessageId "RESOURCE_DELETED_VIOLATION"

-- | The resource a folder was being added to has been deleted.
pattern FolderOperationError_ErrorMessageId_PARENTDELETEDVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_PARENTDELETEDVIOLATION = FolderOperationError_ErrorMessageId "PARENT_DELETED_VIOLATION"

-- | The attempted action would introduce cycle in resource path.
pattern FolderOperationError_ErrorMessageId_CYCLEINTRODUCEDVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_CYCLEINTRODUCEDVIOLATION = FolderOperationError_ErrorMessageId "CYCLE_INTRODUCED_VIOLATION"

-- | The attempted action would move a folder that is already being moved.
pattern FolderOperationError_ErrorMessageId_FOLDERBEINGMOVEDVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_FOLDERBEINGMOVEDVIOLATION = FolderOperationError_ErrorMessageId "FOLDER_BEING_MOVED_VIOLATION"

-- | The folder the caller is trying to delete contains active resources.
pattern FolderOperationError_ErrorMessageId_FOLDERTODELETENONEMPTYVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_FOLDERTODELETENONEMPTYVIOLATION = FolderOperationError_ErrorMessageId "FOLDER_TO_DELETE_NON_EMPTY_VIOLATION"

-- | The attempted action would violate the max deleted folder depth constraint.
pattern FolderOperationError_ErrorMessageId_DELETEDFOLDERHEIGHTVIOLATION :: FolderOperationError_ErrorMessageId
pattern FolderOperationError_ErrorMessageId_DELETEDFOLDERHEIGHTVIOLATION = FolderOperationError_ErrorMessageId "DELETED_FOLDER_HEIGHT_VIOLATION"

{-# COMPLETE
  FolderOperationError_ErrorMessageId_ERRORTYPEUNSPECIFIED,
  FolderOperationError_ErrorMessageId_ACTIVEFOLDERHEIGHTVIOLATION,
  FolderOperationError_ErrorMessageId_MAXCHILDFOLDERSVIOLATION,
  FolderOperationError_ErrorMessageId_FOLDERNAMEUNIQUENESSVIOLATION,
  FolderOperationError_ErrorMessageId_RESOURCEDELETEDVIOLATION,
  FolderOperationError_ErrorMessageId_PARENTDELETEDVIOLATION,
  FolderOperationError_ErrorMessageId_CYCLEINTRODUCEDVIOLATION,
  FolderOperationError_ErrorMessageId_FOLDERBEINGMOVEDVIOLATION,
  FolderOperationError_ErrorMessageId_FOLDERTODELETENONEMPTYVIOLATION,
  FolderOperationError_ErrorMessageId_DELETEDFOLDERHEIGHTVIOLATION,
  FolderOperationError_ErrorMessageId
  #-}

-- | Output only. The organization\'s current lifecycle state.
newtype Organization_State = Organization_State {fromOrganization_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified state. This is only useful for distinguishing unset values.
pattern Organization_State_STATEUNSPECIFIED :: Organization_State
pattern Organization_State_STATEUNSPECIFIED = Organization_State "STATE_UNSPECIFIED"

-- | The normal and active state.
pattern Organization_State_Active :: Organization_State
pattern Organization_State_Active = Organization_State "ACTIVE"

-- | The organization has been marked for deletion by the user.
pattern Organization_State_DELETEREQUESTED :: Organization_State
pattern Organization_State_DELETEREQUESTED = Organization_State "DELETE_REQUESTED"

{-# COMPLETE
  Organization_State_STATEUNSPECIFIED,
  Organization_State_Active,
  Organization_State_DELETEREQUESTED,
  Organization_State
  #-}

-- | Output only. The project lifecycle state.
newtype Project_State = Project_State {fromProject_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified state. This is only used\/useful for distinguishing unset values.
pattern Project_State_STATEUNSPECIFIED :: Project_State
pattern Project_State_STATEUNSPECIFIED = Project_State "STATE_UNSPECIFIED"

-- | The normal and active state.
pattern Project_State_Active :: Project_State
pattern Project_State_Active = Project_State "ACTIVE"

-- | The project has been marked for deletion by the user (by invoking DeleteProject) or by the system (Google Cloud Platform). This can generally be reversed by invoking UndeleteProject.
pattern Project_State_DELETEREQUESTED :: Project_State
pattern Project_State_DELETEREQUESTED = Project_State "DELETE_REQUESTED"

{-# COMPLETE
  Project_State_STATEUNSPECIFIED,
  Project_State_Active,
  Project_State_DELETEREQUESTED,
  Project_State
  #-}
