{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.StorageTransfer.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.StorageTransfer.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Status of the transfer operation.
data TransferOperationStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Zero is an illegal value.
    | InProgress
      -- ^ @IN_PROGRESS@
      -- In progress.
    | Paused
      -- ^ @PAUSED@
      -- Paused.
    | Success
      -- ^ @SUCCESS@
      -- Completed successfully.
    | Failed
      -- ^ @FAILED@
      -- Terminated due to an unrecoverable failure.
    | Aborted
      -- ^ @ABORTED@
      -- Aborted by the user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TransferOperationStatus

instance FromHttpApiData TransferOperationStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "IN_PROGRESS" -> Right InProgress
        "PAUSED" -> Right Paused
        "SUCCESS" -> Right Success
        "FAILED" -> Right Failed
        "ABORTED" -> Right Aborted
        x -> Left ("Unable to parse TransferOperationStatus from: " <> x)

instance ToHttpApiData TransferOperationStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        InProgress -> "IN_PROGRESS"
        Paused -> "PAUSED"
        Success -> "SUCCESS"
        Failed -> "FAILED"
        Aborted -> "ABORTED"

instance FromJSON TransferOperationStatus where
    parseJSON = parseJSONText "TransferOperationStatus"

instance ToJSON TransferOperationStatus where
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

-- | Status of the job. This value MUST be specified for
-- \`CreateTransferJobRequests\`. NOTE: The effect of the new job status
-- takes place during a subsequent job run. For example, if you change the
-- job status from \`ENABLED\` to \`DISABLED\`, and an operation spawned by
-- the transfer is running, the status change would not affect the current
-- operation.
data TransferJobStatus
    = TJSStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Zero is an illegal value.
    | TJSEnabled
      -- ^ @ENABLED@
      -- New transfers will be performed based on the schedule.
    | TJSDisabled
      -- ^ @DISABLED@
      -- New transfers will not be scheduled.
    | TJSDeleted
      -- ^ @DELETED@
      -- This is a soft delete state. After a transfer job is set to this state,
      -- the job and all the transfer executions are subject to garbage
      -- collection. Transfer jobs become eligible for garbage collection 30 days
      -- after their status is set to \`DELETED\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TransferJobStatus

instance FromHttpApiData TransferJobStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right TJSStatusUnspecified
        "ENABLED" -> Right TJSEnabled
        "DISABLED" -> Right TJSDisabled
        "DELETED" -> Right TJSDeleted
        x -> Left ("Unable to parse TransferJobStatus from: " <> x)

instance ToHttpApiData TransferJobStatus where
    toQueryParam = \case
        TJSStatusUnspecified -> "STATUS_UNSPECIFIED"
        TJSEnabled -> "ENABLED"
        TJSDisabled -> "DISABLED"
        TJSDeleted -> "DELETED"

instance FromJSON TransferJobStatus where
    parseJSON = parseJSONText "TransferJobStatus"

instance ToJSON TransferJobStatus where
    toJSON = toJSONText

-- | Required.
data ErrorSummaryErrorCode
    = ESECOK
      -- ^ @OK@
      -- Not an error; returned on success HTTP Mapping: 200 OK
    | ESECCancelled
      -- ^ @CANCELLED@
      -- The operation was cancelled, typically by the caller. HTTP Mapping: 499
      -- Client Closed Request
    | ESECUnknown
      -- ^ @UNKNOWN@
      -- Unknown error. For example, this error may be returned when a \`Status\`
      -- value received from another address space belongs to an error space that
      -- is not known in this address space. Also errors raised by APIs that do
      -- not return enough error information may be converted to this error. HTTP
      -- Mapping: 500 Internal Server Error
    | ESECInvalidArgument
      -- ^ @INVALID_ARGUMENT@
      -- The client specified an invalid argument. Note that this differs from
      -- \`FAILED_PRECONDITION\`. \`INVALID_ARGUMENT\` indicates arguments that
      -- are problematic regardless of the state of the system (e.g., a malformed
      -- file name). HTTP Mapping: 400 Bad Request
    | ESECDeadlineExceeded
      -- ^ @DEADLINE_EXCEEDED@
      -- The deadline expired before the operation could complete. For operations
      -- that change the state of the system, this error may be returned even if
      -- the operation has completed successfully. For example, a successful
      -- response from a server could have been delayed long enough for the
      -- deadline to expire. HTTP Mapping: 504 Gateway Timeout
    | ESECNotFound
      -- ^ @NOT_FOUND@
      -- Some requested entity (e.g., file or directory) was not found. Note to
      -- server developers: if a request is denied for an entire class of users,
      -- such as gradual feature rollout or undocumented whitelist, \`NOT_FOUND\`
      -- may be used. If a request is denied for some users within a class of
      -- users, such as user-based access control, \`PERMISSION_DENIED\` must be
      -- used. HTTP Mapping: 404 Not Found
    | ESECAlreadyExists
      -- ^ @ALREADY_EXISTS@
      -- The entity that a client attempted to create (e.g., file or directory)
      -- already exists. HTTP Mapping: 409 Conflict
    | ESECPermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The caller does not have permission to execute the specified operation.
      -- \`PERMISSION_DENIED\` must not be used for rejections caused by
      -- exhausting some resource (use \`RESOURCE_EXHAUSTED\` instead for those
      -- errors). \`PERMISSION_DENIED\` must not be used if the caller can not be
      -- identified (use \`UNAUTHENTICATED\` instead for those errors). This
      -- error code does not imply the request is valid or the requested entity
      -- exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
    | ESECUnauthenticated
      -- ^ @UNAUTHENTICATED@
      -- The request does not have valid authentication credentials for the
      -- operation. HTTP Mapping: 401 Unauthorized
    | ESECResourceExhausted
      -- ^ @RESOURCE_EXHAUSTED@
      -- Some resource has been exhausted, perhaps a per-user quota, or perhaps
      -- the entire file system is out of space. HTTP Mapping: 429 Too Many
      -- Requests
    | ESECFailedPrecondition
      -- ^ @FAILED_PRECONDITION@
      -- The operation was rejected because the system is not in a state required
      -- for the operation\'s execution. For example, the directory to be deleted
      -- is non-empty, an rmdir operation is applied to a non-directory, etc.
      -- Service implementors can use the following guidelines to decide between
      -- \`FAILED_PRECONDITION\`, \`ABORTED\`, and \`UNAVAILABLE\`: (a) Use
      -- \`UNAVAILABLE\` if the client can retry just the failing call. (b) Use
      -- \`ABORTED\` if the client should retry at a higher level (e.g., when a
      -- client-specified test-and-set fails, indicating the client should
      -- restart a read-modify-write sequence). (c) Use \`FAILED_PRECONDITION\`
      -- if the client should not retry until the system state has been
      -- explicitly fixed. E.g., if an \"rmdir\" fails because the directory is
      -- non-empty, \`FAILED_PRECONDITION\` should be returned since the client
      -- should not retry unless the files are deleted from the directory. HTTP
      -- Mapping: 400 Bad Request
    | ESECAborted
      -- ^ @ABORTED@
      -- The operation was aborted, typically due to a concurrency issue such as
      -- a sequencer check failure or transaction abort. See the guidelines above
      -- for deciding between \`FAILED_PRECONDITION\`, \`ABORTED\`, and
      -- \`UNAVAILABLE\`. HTTP Mapping: 409 Conflict
    | ESECOutOfRange
      -- ^ @OUT_OF_RANGE@
      -- The operation was attempted past the valid range. E.g., seeking or
      -- reading past end-of-file. Unlike \`INVALID_ARGUMENT\`, this error
      -- indicates a problem that may be fixed if the system state changes. For
      -- example, a 32-bit file system will generate \`INVALID_ARGUMENT\` if
      -- asked to read at an offset that is not in the range [0,2^32-1], but it
      -- will generate \`OUT_OF_RANGE\` if asked to read from an offset past the
      -- current file size. There is a fair bit of overlap between
      -- \`FAILED_PRECONDITION\` and \`OUT_OF_RANGE\`. We recommend using
      -- \`OUT_OF_RANGE\` (the more specific error) when it applies so that
      -- callers who are iterating through a space can easily look for an
      -- \`OUT_OF_RANGE\` error to detect when they are done. HTTP Mapping: 400
      -- Bad Request
    | ESECUnimplemented
      -- ^ @UNIMPLEMENTED@
      -- The operation is not implemented or is not supported\/enabled in this
      -- service. HTTP Mapping: 501 Not Implemented
    | ESECInternal
      -- ^ @INTERNAL@
      -- Internal errors. This means that some invariants expected by the
      -- underlying system have been broken. This error code is reserved for
      -- serious errors. HTTP Mapping: 500 Internal Server Error
    | ESECUnavailable
      -- ^ @UNAVAILABLE@
      -- The service is currently unavailable. This is most likely a transient
      -- condition, which can be corrected by retrying with a backoff. See the
      -- guidelines above for deciding between \`FAILED_PRECONDITION\`,
      -- \`ABORTED\`, and \`UNAVAILABLE\`. HTTP Mapping: 503 Service Unavailable
    | ESECDataLoss
      -- ^ @DATA_LOSS@
      -- Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server
      -- Error
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ErrorSummaryErrorCode

instance FromHttpApiData ErrorSummaryErrorCode where
    parseQueryParam = \case
        "OK" -> Right ESECOK
        "CANCELLED" -> Right ESECCancelled
        "UNKNOWN" -> Right ESECUnknown
        "INVALID_ARGUMENT" -> Right ESECInvalidArgument
        "DEADLINE_EXCEEDED" -> Right ESECDeadlineExceeded
        "NOT_FOUND" -> Right ESECNotFound
        "ALREADY_EXISTS" -> Right ESECAlreadyExists
        "PERMISSION_DENIED" -> Right ESECPermissionDenied
        "UNAUTHENTICATED" -> Right ESECUnauthenticated
        "RESOURCE_EXHAUSTED" -> Right ESECResourceExhausted
        "FAILED_PRECONDITION" -> Right ESECFailedPrecondition
        "ABORTED" -> Right ESECAborted
        "OUT_OF_RANGE" -> Right ESECOutOfRange
        "UNIMPLEMENTED" -> Right ESECUnimplemented
        "INTERNAL" -> Right ESECInternal
        "UNAVAILABLE" -> Right ESECUnavailable
        "DATA_LOSS" -> Right ESECDataLoss
        x -> Left ("Unable to parse ErrorSummaryErrorCode from: " <> x)

instance ToHttpApiData ErrorSummaryErrorCode where
    toQueryParam = \case
        ESECOK -> "OK"
        ESECCancelled -> "CANCELLED"
        ESECUnknown -> "UNKNOWN"
        ESECInvalidArgument -> "INVALID_ARGUMENT"
        ESECDeadlineExceeded -> "DEADLINE_EXCEEDED"
        ESECNotFound -> "NOT_FOUND"
        ESECAlreadyExists -> "ALREADY_EXISTS"
        ESECPermissionDenied -> "PERMISSION_DENIED"
        ESECUnauthenticated -> "UNAUTHENTICATED"
        ESECResourceExhausted -> "RESOURCE_EXHAUSTED"
        ESECFailedPrecondition -> "FAILED_PRECONDITION"
        ESECAborted -> "ABORTED"
        ESECOutOfRange -> "OUT_OF_RANGE"
        ESECUnimplemented -> "UNIMPLEMENTED"
        ESECInternal -> "INTERNAL"
        ESECUnavailable -> "UNAVAILABLE"
        ESECDataLoss -> "DATA_LOSS"

instance FromJSON ErrorSummaryErrorCode where
    parseJSON = parseJSONText "ErrorSummaryErrorCode"

instance ToJSON ErrorSummaryErrorCode where
    toJSON = toJSONText
