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

import           Network.Google.Prelude

-- | The organization\'s current lifecycle state. Assigned by the server.
-- \'OutputOnly
data OrganizationLifecycleState
    = LifecycleStateUnspecified
      -- ^ @LIFECYCLE_STATE_UNSPECIFIED@
      -- Unspecified state. This is only useful for distinguishing unset values.
    | Active
      -- ^ @ACTIVE@
      -- The normal and active state.
    | DeleteRequested
      -- ^ @DELETE_REQUESTED@
      -- The organization has been marked for deletion by the user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationLifecycleState

instance FromHttpApiData OrganizationLifecycleState where
    parseQueryParam = \case
        "LIFECYCLE_STATE_UNSPECIFIED" -> Right LifecycleStateUnspecified
        "ACTIVE" -> Right Active
        "DELETE_REQUESTED" -> Right DeleteRequested
        x -> Left ("Unable to parse OrganizationLifecycleState from: " <> x)

instance ToHttpApiData OrganizationLifecycleState where
    toQueryParam = \case
        LifecycleStateUnspecified -> "LIFECYCLE_STATE_UNSPECIFIED"
        Active -> "ACTIVE"
        DeleteRequested -> "DELETE_REQUESTED"

instance FromJSON OrganizationLifecycleState where
    parseJSON = parseJSONText "OrganizationLifecycleState"

instance ToJSON OrganizationLifecycleState where
    toJSON = toJSONText

-- | The type of operation error experienced.
data FolderOperationErrorErrorMessageId
    = ErrorTypeUnspecified
      -- ^ @ERROR_TYPE_UNSPECIFIED@
      -- The error type was unrecognized or unspecified.
    | FolderHeightViolation
      -- ^ @FOLDER_HEIGHT_VIOLATION@
      -- The attempted action would violate the max folder depth constraint.
    | MaxChildFoldersViolation
      -- ^ @MAX_CHILD_FOLDERS_VIOLATION@
      -- The attempted action would violate the max child folders constraint.
    | FolderNameUniquenessViolation
      -- ^ @FOLDER_NAME_UNIQUENESS_VIOLATION@
      -- The attempted action would violate the locally-unique folder
      -- display_name constraint.
    | ResourceDeleted
      -- ^ @RESOURCE_DELETED@
      -- The resource being moved has been deleted.
    | ParentDeleted
      -- ^ @PARENT_DELETED@
      -- The resource a folder was being added to has been deleted.
    | CycleIntroducedError
      -- ^ @CYCLE_INTRODUCED_ERROR@
      -- The attempted action would introduce cycle in resource path.
    | FolderAlreadyBeingMoved
      -- ^ @FOLDER_ALREADY_BEING_MOVED@
      -- The attempted action would move a folder that is already being moved.
    | FolderToDeleteNonEmpty
      -- ^ @FOLDER_TO_DELETE_NON_EMPTY@
      -- The folder the caller is trying to delete contains active resources.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FolderOperationErrorErrorMessageId

instance FromHttpApiData FolderOperationErrorErrorMessageId where
    parseQueryParam = \case
        "ERROR_TYPE_UNSPECIFIED" -> Right ErrorTypeUnspecified
        "FOLDER_HEIGHT_VIOLATION" -> Right FolderHeightViolation
        "MAX_CHILD_FOLDERS_VIOLATION" -> Right MaxChildFoldersViolation
        "FOLDER_NAME_UNIQUENESS_VIOLATION" -> Right FolderNameUniquenessViolation
        "RESOURCE_DELETED" -> Right ResourceDeleted
        "PARENT_DELETED" -> Right ParentDeleted
        "CYCLE_INTRODUCED_ERROR" -> Right CycleIntroducedError
        "FOLDER_ALREADY_BEING_MOVED" -> Right FolderAlreadyBeingMoved
        "FOLDER_TO_DELETE_NON_EMPTY" -> Right FolderToDeleteNonEmpty
        x -> Left ("Unable to parse FolderOperationErrorErrorMessageId from: " <> x)

instance ToHttpApiData FolderOperationErrorErrorMessageId where
    toQueryParam = \case
        ErrorTypeUnspecified -> "ERROR_TYPE_UNSPECIFIED"
        FolderHeightViolation -> "FOLDER_HEIGHT_VIOLATION"
        MaxChildFoldersViolation -> "MAX_CHILD_FOLDERS_VIOLATION"
        FolderNameUniquenessViolation -> "FOLDER_NAME_UNIQUENESS_VIOLATION"
        ResourceDeleted -> "RESOURCE_DELETED"
        ParentDeleted -> "PARENT_DELETED"
        CycleIntroducedError -> "CYCLE_INTRODUCED_ERROR"
        FolderAlreadyBeingMoved -> "FOLDER_ALREADY_BEING_MOVED"
        FolderToDeleteNonEmpty -> "FOLDER_TO_DELETE_NON_EMPTY"

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

-- | The Project lifecycle state. Read-only.
data ProjectLifecycleState
    = PLSLifecycleStateUnspecified
      -- ^ @LIFECYCLE_STATE_UNSPECIFIED@
      -- Unspecified state. This is only used\/useful for distinguishing unset
      -- values.
    | PLSActive
      -- ^ @ACTIVE@
      -- The normal and active state.
    | PLSDeleteRequested
      -- ^ @DELETE_REQUESTED@
      -- The project has been marked for deletion by the user (by invoking
      -- DeleteProject) or by the system (Google Cloud Platform). This can
      -- generally be reversed by invoking UndeleteProject.
    | PLSDeleteInProgress
      -- ^ @DELETE_IN_PROGRESS@
      -- This lifecycle state is no longer used and not returned by the API.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectLifecycleState

instance FromHttpApiData ProjectLifecycleState where
    parseQueryParam = \case
        "LIFECYCLE_STATE_UNSPECIFIED" -> Right PLSLifecycleStateUnspecified
        "ACTIVE" -> Right PLSActive
        "DELETE_REQUESTED" -> Right PLSDeleteRequested
        "DELETE_IN_PROGRESS" -> Right PLSDeleteInProgress
        x -> Left ("Unable to parse ProjectLifecycleState from: " <> x)

instance ToHttpApiData ProjectLifecycleState where
    toQueryParam = \case
        PLSLifecycleStateUnspecified -> "LIFECYCLE_STATE_UNSPECIFIED"
        PLSActive -> "ACTIVE"
        PLSDeleteRequested -> "DELETE_REQUESTED"
        PLSDeleteInProgress -> "DELETE_IN_PROGRESS"

instance FromJSON ProjectLifecycleState where
    parseJSON = parseJSONText "ProjectLifecycleState"

instance ToJSON ProjectLifecycleState where
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
