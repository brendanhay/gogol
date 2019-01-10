{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceManager.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Output only. The lifecycle state of the folder. Updates to the
-- lifecycle_state must be performed via DeleteFolder and UndeleteFolder.
data FolderLifecycleState
    = LifecycleStateUnspecified
      -- ^ @LIFECYCLE_STATE_UNSPECIFIED@
      -- Unspecified state.
    | Active
      -- ^ @ACTIVE@
      -- The normal and active state.
    | DeleteRequested
      -- ^ @DELETE_REQUESTED@
      -- The folder has been marked for deletion by the user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FolderLifecycleState

instance FromHttpApiData FolderLifecycleState where
    parseQueryParam = \case
        "LIFECYCLE_STATE_UNSPECIFIED" -> Right LifecycleStateUnspecified
        "ACTIVE" -> Right Active
        "DELETE_REQUESTED" -> Right DeleteRequested
        x -> Left ("Unable to parse FolderLifecycleState from: " <> x)

instance ToHttpApiData FolderLifecycleState where
    toQueryParam = \case
        LifecycleStateUnspecified -> "LIFECYCLE_STATE_UNSPECIFIED"
        Active -> "ACTIVE"
        DeleteRequested -> "DELETE_REQUESTED"

instance FromJSON FolderLifecycleState where
    parseJSON = parseJSONText "FolderLifecycleState"

instance ToJSON FolderLifecycleState where
    toJSON = toJSONText

-- | The type of operation error experienced.
data FolderOperationErrorErrorMessageId
    = ErrorTypeUnspecified
      -- ^ @ERROR_TYPE_UNSPECIFIED@
      -- The error type was unrecognized or unspecified.
    | ActiveFolderHeightViolation
      -- ^ @ACTIVE_FOLDER_HEIGHT_VIOLATION@
      -- The attempted action would violate the max folder depth constraint.
    | MaxChildFoldersViolation
      -- ^ @MAX_CHILD_FOLDERS_VIOLATION@
      -- The attempted action would violate the max child folders constraint.
    | FolderNameUniquenessViolation
      -- ^ @FOLDER_NAME_UNIQUENESS_VIOLATION@
      -- The attempted action would violate the locally-unique folder
      -- display_name constraint.
    | ResourceDeletedViolation
      -- ^ @RESOURCE_DELETED_VIOLATION@
      -- The resource being moved has been deleted.
    | ParentDeletedViolation
      -- ^ @PARENT_DELETED_VIOLATION@
      -- The resource a folder was being added to has been deleted.
    | CycleIntroducedViolation
      -- ^ @CYCLE_INTRODUCED_VIOLATION@
      -- The attempted action would introduce cycle in resource path.
    | FolderBeingMovedViolation
      -- ^ @FOLDER_BEING_MOVED_VIOLATION@
      -- The attempted action would move a folder that is already being moved.
    | FolderToDeleteNonEmptyViolation
      -- ^ @FOLDER_TO_DELETE_NON_EMPTY_VIOLATION@
      -- The folder the caller is trying to delete contains active resources.
    | DeletedFolderHeightViolation
      -- ^ @DELETED_FOLDER_HEIGHT_VIOLATION@
      -- The attempted action would violate the max deleted folder depth
      -- constraint.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FolderOperationErrorErrorMessageId

instance FromHttpApiData FolderOperationErrorErrorMessageId where
    parseQueryParam = \case
        "ERROR_TYPE_UNSPECIFIED" -> Right ErrorTypeUnspecified
        "ACTIVE_FOLDER_HEIGHT_VIOLATION" -> Right ActiveFolderHeightViolation
        "MAX_CHILD_FOLDERS_VIOLATION" -> Right MaxChildFoldersViolation
        "FOLDER_NAME_UNIQUENESS_VIOLATION" -> Right FolderNameUniquenessViolation
        "RESOURCE_DELETED_VIOLATION" -> Right ResourceDeletedViolation
        "PARENT_DELETED_VIOLATION" -> Right ParentDeletedViolation
        "CYCLE_INTRODUCED_VIOLATION" -> Right CycleIntroducedViolation
        "FOLDER_BEING_MOVED_VIOLATION" -> Right FolderBeingMovedViolation
        "FOLDER_TO_DELETE_NON_EMPTY_VIOLATION" -> Right FolderToDeleteNonEmptyViolation
        "DELETED_FOLDER_HEIGHT_VIOLATION" -> Right DeletedFolderHeightViolation
        x -> Left ("Unable to parse FolderOperationErrorErrorMessageId from: " <> x)

instance ToHttpApiData FolderOperationErrorErrorMessageId where
    toQueryParam = \case
        ErrorTypeUnspecified -> "ERROR_TYPE_UNSPECIFIED"
        ActiveFolderHeightViolation -> "ACTIVE_FOLDER_HEIGHT_VIOLATION"
        MaxChildFoldersViolation -> "MAX_CHILD_FOLDERS_VIOLATION"
        FolderNameUniquenessViolation -> "FOLDER_NAME_UNIQUENESS_VIOLATION"
        ResourceDeletedViolation -> "RESOURCE_DELETED_VIOLATION"
        ParentDeletedViolation -> "PARENT_DELETED_VIOLATION"
        CycleIntroducedViolation -> "CYCLE_INTRODUCED_VIOLATION"
        FolderBeingMovedViolation -> "FOLDER_BEING_MOVED_VIOLATION"
        FolderToDeleteNonEmptyViolation -> "FOLDER_TO_DELETE_NON_EMPTY_VIOLATION"
        DeletedFolderHeightViolation -> "DELETED_FOLDER_HEIGHT_VIOLATION"

instance FromJSON FolderOperationErrorErrorMessageId where
    parseJSON = parseJSONText "FolderOperationErrorErrorMessageId"

instance ToJSON FolderOperationErrorErrorMessageId where
    toJSON = toJSONText

-- | The type of this operation.
data FolderOperationOperationType
    = OperationTypeUnspecified
      -- ^ @OPERATION_TYPE_UNSPECIFIED@
      -- Operation type not specified.
    | Create
      -- ^ @CREATE@
      -- A create folder operation.
    | Move
      -- ^ @MOVE@
      -- A move folder operation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FolderOperationOperationType

instance FromHttpApiData FolderOperationOperationType where
    parseQueryParam = \case
        "OPERATION_TYPE_UNSPECIFIED" -> Right OperationTypeUnspecified
        "CREATE" -> Right Create
        "MOVE" -> Right Move
        x -> Left ("Unable to parse FolderOperationOperationType from: " <> x)

instance ToHttpApiData FolderOperationOperationType where
    toQueryParam = \case
        OperationTypeUnspecified -> "OPERATION_TYPE_UNSPECIFIED"
        Create -> "CREATE"
        Move -> "MOVE"

instance FromJSON FolderOperationOperationType where
    parseJSON = parseJSONText "FolderOperationOperationType"

instance ToJSON FolderOperationOperationType where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText
