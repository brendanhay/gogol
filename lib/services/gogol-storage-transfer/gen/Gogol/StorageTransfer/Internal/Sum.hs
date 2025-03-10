{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StorageTransfer.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.StorageTransfer.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AgentPool_State
    AgentPool_State
      ( AgentPool_State_STATEUNSPECIFIED,
        AgentPool_State_Creating,
        AgentPool_State_Created,
        AgentPool_State_Deleting,
        ..
      ),

    -- * ErrorSummary_ErrorCode
    ErrorSummary_ErrorCode
      ( ErrorSummary_ErrorCode_OK,
        ErrorSummary_ErrorCode_Cancelled,
        ErrorSummary_ErrorCode_Unknown,
        ErrorSummary_ErrorCode_INVALIDARGUMENT,
        ErrorSummary_ErrorCode_DEADLINEEXCEEDED,
        ErrorSummary_ErrorCode_NOTFOUND,
        ErrorSummary_ErrorCode_ALREADYEXISTS,
        ErrorSummary_ErrorCode_PERMISSIONDENIED,
        ErrorSummary_ErrorCode_Unauthenticated,
        ErrorSummary_ErrorCode_RESOURCEEXHAUSTED,
        ErrorSummary_ErrorCode_FAILEDPRECONDITION,
        ErrorSummary_ErrorCode_Aborted,
        ErrorSummary_ErrorCode_OUTOFRANGE,
        ErrorSummary_ErrorCode_Unimplemented,
        ErrorSummary_ErrorCode_Internal,
        ErrorSummary_ErrorCode_Unavailable,
        ErrorSummary_ErrorCode_DATALOSS,
        ..
      ),

    -- * LoggingConfig_LogActionStatesItem
    LoggingConfig_LogActionStatesItem
      ( LoggingConfig_LogActionStatesItem_LOGGABLEACTIONSTATEUNSPECIFIED,
        LoggingConfig_LogActionStatesItem_Succeeded,
        LoggingConfig_LogActionStatesItem_Failed,
        ..
      ),

    -- * LoggingConfig_LogActionsItem
    LoggingConfig_LogActionsItem
      ( LoggingConfig_LogActionsItem_LOGGABLEACTIONUNSPECIFIED,
        LoggingConfig_LogActionsItem_Find,
        LoggingConfig_LogActionsItem_Delete',
        LoggingConfig_LogActionsItem_Copy,
        ..
      ),

    -- * MetadataOptions_Acl
    MetadataOptions_Acl
      ( MetadataOptions_Acl_ACLUNSPECIFIED,
        MetadataOptions_Acl_ACLDESTINATIONBUCKETDEFAULT,
        MetadataOptions_Acl_ACLPRESERVE,
        ..
      ),

    -- * MetadataOptions_Gid
    MetadataOptions_Gid
      ( MetadataOptions_Gid_GIDUNSPECIFIED,
        MetadataOptions_Gid_GIDSKIP,
        MetadataOptions_Gid_GIDNUMBER,
        ..
      ),

    -- * MetadataOptions_KmsKey
    MetadataOptions_KmsKey
      ( MetadataOptions_KmsKey_KMSKEYUNSPECIFIED,
        MetadataOptions_KmsKey_KMSKEYDESTINATIONBUCKETDEFAULT,
        MetadataOptions_KmsKey_KMSKEYPRESERVE,
        ..
      ),

    -- * MetadataOptions_Mode
    MetadataOptions_Mode
      ( MetadataOptions_Mode_MODEUNSPECIFIED,
        MetadataOptions_Mode_MODESKIP,
        MetadataOptions_Mode_MODEPRESERVE,
        ..
      ),

    -- * MetadataOptions_StorageClass
    MetadataOptions_StorageClass
      ( MetadataOptions_StorageClass_STORAGECLASSUNSPECIFIED,
        MetadataOptions_StorageClass_STORAGECLASSDESTINATIONBUCKETDEFAULT,
        MetadataOptions_StorageClass_STORAGECLASSPRESERVE,
        MetadataOptions_StorageClass_STORAGECLASSSTANDARD,
        MetadataOptions_StorageClass_STORAGECLASSNEARLINE,
        MetadataOptions_StorageClass_STORAGECLASSCOLDLINE,
        MetadataOptions_StorageClass_STORAGECLASSARCHIVE,
        ..
      ),

    -- * MetadataOptions_Symlink
    MetadataOptions_Symlink
      ( MetadataOptions_Symlink_SYMLINKUNSPECIFIED,
        MetadataOptions_Symlink_SYMLINKSKIP,
        MetadataOptions_Symlink_SYMLINKPRESERVE,
        ..
      ),

    -- * MetadataOptions_TemporaryHold
    MetadataOptions_TemporaryHold
      ( MetadataOptions_TemporaryHold_TEMPORARYHOLDUNSPECIFIED,
        MetadataOptions_TemporaryHold_TEMPORARYHOLDSKIP,
        MetadataOptions_TemporaryHold_TEMPORARYHOLDPRESERVE,
        ..
      ),

    -- * MetadataOptions_TimeCreated
    MetadataOptions_TimeCreated
      ( MetadataOptions_TimeCreated_TIMECREATEDUNSPECIFIED,
        MetadataOptions_TimeCreated_TIMECREATEDSKIP,
        MetadataOptions_TimeCreated_TIMECREATEDPRESERVEASCUSTOMTIME,
        ..
      ),

    -- * MetadataOptions_Uid
    MetadataOptions_Uid
      ( MetadataOptions_Uid_UIDUNSPECIFIED,
        MetadataOptions_Uid_UIDSKIP,
        MetadataOptions_Uid_UIDNUMBER,
        ..
      ),

    -- * NotificationConfig_EventTypesItem
    NotificationConfig_EventTypesItem
      ( NotificationConfig_EventTypesItem_EVENTTYPEUNSPECIFIED,
        NotificationConfig_EventTypesItem_TRANSFEROPERATIONSUCCESS,
        NotificationConfig_EventTypesItem_TRANSFEROPERATIONFAILED,
        NotificationConfig_EventTypesItem_TRANSFEROPERATIONABORTED,
        ..
      ),

    -- * NotificationConfig_PayloadFormat
    NotificationConfig_PayloadFormat
      ( NotificationConfig_PayloadFormat_PAYLOADFORMATUNSPECIFIED,
        NotificationConfig_PayloadFormat_None,
        NotificationConfig_PayloadFormat_Json,
        ..
      ),

    -- * S3CompatibleMetadata_AuthMethod
    S3CompatibleMetadata_AuthMethod
      ( S3CompatibleMetadata_AuthMethod_AUTHMETHODUNSPECIFIED,
        S3CompatibleMetadata_AuthMethod_AUTH_METHOD_AWS_SIGNATURE_V4,
        S3CompatibleMetadata_AuthMethod_AUTH_METHOD_AWS_SIGNATURE_V2,
        ..
      ),

    -- * S3CompatibleMetadata_ListApi
    S3CompatibleMetadata_ListApi
      ( S3CompatibleMetadata_ListApi_LISTAPIUNSPECIFIED,
        S3CompatibleMetadata_ListApi_LIST_OBJECTS_V2,
        S3CompatibleMetadata_ListApi_LISTOBJECTS,
        ..
      ),

    -- * S3CompatibleMetadata_Protocol
    S3CompatibleMetadata_Protocol
      ( S3CompatibleMetadata_Protocol_NETWORKPROTOCOLUNSPECIFIED,
        S3CompatibleMetadata_Protocol_NETWORKPROTOCOLHTTPS,
        S3CompatibleMetadata_Protocol_NETWORKPROTOCOLHTTP,
        ..
      ),

    -- * S3CompatibleMetadata_RequestModel
    S3CompatibleMetadata_RequestModel
      ( S3CompatibleMetadata_RequestModel_REQUESTMODELUNSPECIFIED,
        S3CompatibleMetadata_RequestModel_REQUESTMODELVIRTUALHOSTEDSTYLE,
        S3CompatibleMetadata_RequestModel_REQUESTMODELPATHSTYLE,
        ..
      ),

    -- * TransferJob_Status
    TransferJob_Status
      ( TransferJob_Status_STATUSUNSPECIFIED,
        TransferJob_Status_Enabled,
        TransferJob_Status_Disabled,
        TransferJob_Status_Deleted,
        ..
      ),

    -- * TransferOperation_Status
    TransferOperation_Status
      ( TransferOperation_Status_STATUSUNSPECIFIED,
        TransferOperation_Status_INPROGRESS,
        TransferOperation_Status_Paused,
        TransferOperation_Status_Success,
        TransferOperation_Status_Failed,
        TransferOperation_Status_Aborted,
        TransferOperation_Status_Queued,
        TransferOperation_Status_Suspending,
        ..
      ),

    -- * TransferOptions_OverwriteWhen
    TransferOptions_OverwriteWhen
      ( TransferOptions_OverwriteWhen_OVERWRITEWHENUNSPECIFIED,
        TransferOptions_OverwriteWhen_Different,
        TransferOptions_OverwriteWhen_Never,
        TransferOptions_OverwriteWhen_Always,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

-- | Output only. Specifies the state of the AgentPool.
newtype AgentPool_State = AgentPool_State {fromAgentPool_State :: Core.Text}
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

-- | Default value. This value is unused.
pattern AgentPool_State_STATEUNSPECIFIED :: AgentPool_State
pattern AgentPool_State_STATEUNSPECIFIED = AgentPool_State "STATE_UNSPECIFIED"

-- | This is an initialization state. During this stage, resources are allocated for the AgentPool.
pattern AgentPool_State_Creating :: AgentPool_State
pattern AgentPool_State_Creating = AgentPool_State "CREATING"

-- | Determines that the AgentPool is created for use. At this state, Agents can join the AgentPool and participate in the transfer jobs in that pool.
pattern AgentPool_State_Created :: AgentPool_State
pattern AgentPool_State_Created = AgentPool_State "CREATED"

-- | Determines that the AgentPool deletion has been initiated, and all the resources are scheduled to be cleaned up and freed.
pattern AgentPool_State_Deleting :: AgentPool_State
pattern AgentPool_State_Deleting = AgentPool_State "DELETING"

{-# COMPLETE
  AgentPool_State_STATEUNSPECIFIED,
  AgentPool_State_Creating,
  AgentPool_State_Created,
  AgentPool_State_Deleting,
  AgentPool_State
  #-}

-- | Required.
newtype ErrorSummary_ErrorCode = ErrorSummary_ErrorCode {fromErrorSummary_ErrorCode :: Core.Text}
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

-- | Not an error; returned on success. HTTP Mapping: 200 OK
pattern ErrorSummary_ErrorCode_OK :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_OK = ErrorSummary_ErrorCode "OK"

-- | The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request
pattern ErrorSummary_ErrorCode_Cancelled :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_Cancelled = ErrorSummary_ErrorCode "CANCELLED"

-- | Unknown error. For example, this error may be returned when a @Status@ value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error
pattern ErrorSummary_ErrorCode_Unknown :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_Unknown = ErrorSummary_ErrorCode "UNKNOWN"

-- | The client specified an invalid argument. Note that this differs from @FAILED_PRECONDITION@. @INVALID_ARGUMENT@ indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
pattern ErrorSummary_ErrorCode_INVALIDARGUMENT :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_INVALIDARGUMENT = ErrorSummary_ErrorCode "INVALID_ARGUMENT"

-- | The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
pattern ErrorSummary_ErrorCode_DEADLINEEXCEEDED :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_DEADLINEEXCEEDED = ErrorSummary_ErrorCode "DEADLINE_EXCEEDED"

-- | Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, @NOT_FOUND@ may be used. If a request is denied for some users within a class of users, such as user-based access control, @PERMISSION_DENIED@ must be used. HTTP Mapping: 404 Not Found
pattern ErrorSummary_ErrorCode_NOTFOUND :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_NOTFOUND = ErrorSummary_ErrorCode "NOT_FOUND"

-- | The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict
pattern ErrorSummary_ErrorCode_ALREADYEXISTS :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_ALREADYEXISTS = ErrorSummary_ErrorCode "ALREADY_EXISTS"

-- | The caller does not have permission to execute the specified operation. @PERMISSION_DENIED@ must not be used for rejections caused by exhausting some resource (use @RESOURCE_EXHAUSTED@ instead for those errors). @PERMISSION_DENIED@ must not be used if the caller can not be identified (use @UNAUTHENTICATED@ instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
pattern ErrorSummary_ErrorCode_PERMISSIONDENIED :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_PERMISSIONDENIED = ErrorSummary_ErrorCode "PERMISSION_DENIED"

-- | The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized
pattern ErrorSummary_ErrorCode_Unauthenticated :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_Unauthenticated = ErrorSummary_ErrorCode "UNAUTHENTICATED"

-- | Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests
pattern ErrorSummary_ErrorCode_RESOURCEEXHAUSTED :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_RESOURCEEXHAUSTED = ErrorSummary_ErrorCode "RESOURCE_EXHAUSTED"

-- | The operation was rejected because the system is not in a state required for the operation\'s execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@: (a) Use @UNAVAILABLE@ if the client can retry just the failing call. (b) Use @ABORTED@ if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use @FAILED_PRECONDITION@ if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, @FAILED_PRECONDITION@ should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request
pattern ErrorSummary_ErrorCode_FAILEDPRECONDITION :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_FAILEDPRECONDITION = ErrorSummary_ErrorCode "FAILED_PRECONDITION"

-- | The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 409 Conflict
pattern ErrorSummary_ErrorCode_Aborted :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_Aborted = ErrorSummary_ErrorCode "ABORTED"

-- | The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike @INVALID_ARGUMENT@, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate @INVALID_ARGUMENT@ if asked to read at an offset that is not in the range [0,2^32-1], but it will generate @OUT_OF_RANGE@ if asked to read from an offset past the current file size. There is a fair bit of overlap between @FAILED_PRECONDITION@ and @OUT_OF_RANGE@. We recommend using @OUT_OF_RANGE@ (the more specific error) when it applies so that callers who are iterating through a space can easily look for an @OUT_OF_RANGE@ error to detect when they are done. HTTP Mapping: 400 Bad Request
pattern ErrorSummary_ErrorCode_OUTOFRANGE :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_OUTOFRANGE = ErrorSummary_ErrorCode "OUT_OF_RANGE"

-- | The operation is not implemented or is not supported\/enabled in this service. HTTP Mapping: 501 Not Implemented
pattern ErrorSummary_ErrorCode_Unimplemented :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_Unimplemented = ErrorSummary_ErrorCode "UNIMPLEMENTED"

-- | Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error
pattern ErrorSummary_ErrorCode_Internal :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_Internal = ErrorSummary_ErrorCode "INTERNAL"

-- | The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 503 Service Unavailable
pattern ErrorSummary_ErrorCode_Unavailable :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_Unavailable = ErrorSummary_ErrorCode "UNAVAILABLE"

-- | Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error
pattern ErrorSummary_ErrorCode_DATALOSS :: ErrorSummary_ErrorCode
pattern ErrorSummary_ErrorCode_DATALOSS = ErrorSummary_ErrorCode "DATA_LOSS"

{-# COMPLETE
  ErrorSummary_ErrorCode_OK,
  ErrorSummary_ErrorCode_Cancelled,
  ErrorSummary_ErrorCode_Unknown,
  ErrorSummary_ErrorCode_INVALIDARGUMENT,
  ErrorSummary_ErrorCode_DEADLINEEXCEEDED,
  ErrorSummary_ErrorCode_NOTFOUND,
  ErrorSummary_ErrorCode_ALREADYEXISTS,
  ErrorSummary_ErrorCode_PERMISSIONDENIED,
  ErrorSummary_ErrorCode_Unauthenticated,
  ErrorSummary_ErrorCode_RESOURCEEXHAUSTED,
  ErrorSummary_ErrorCode_FAILEDPRECONDITION,
  ErrorSummary_ErrorCode_Aborted,
  ErrorSummary_ErrorCode_OUTOFRANGE,
  ErrorSummary_ErrorCode_Unimplemented,
  ErrorSummary_ErrorCode_Internal,
  ErrorSummary_ErrorCode_Unavailable,
  ErrorSummary_ErrorCode_DATALOSS,
  ErrorSummary_ErrorCode
  #-}

newtype LoggingConfig_LogActionStatesItem = LoggingConfig_LogActionStatesItem {fromLoggingConfig_LogActionStatesItem :: Core.Text}
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

-- | Default value. This value is unused.
pattern LoggingConfig_LogActionStatesItem_LOGGABLEACTIONSTATEUNSPECIFIED :: LoggingConfig_LogActionStatesItem
pattern LoggingConfig_LogActionStatesItem_LOGGABLEACTIONSTATEUNSPECIFIED = LoggingConfig_LogActionStatesItem "LOGGABLE_ACTION_STATE_UNSPECIFIED"

-- | @LoggableAction@ completed successfully. @SUCCEEDED@ actions are logged as INFO.
pattern LoggingConfig_LogActionStatesItem_Succeeded :: LoggingConfig_LogActionStatesItem
pattern LoggingConfig_LogActionStatesItem_Succeeded = LoggingConfig_LogActionStatesItem "SUCCEEDED"

-- | @LoggableAction@ terminated in an error state. @FAILED@ actions are logged as ERROR.
pattern LoggingConfig_LogActionStatesItem_Failed :: LoggingConfig_LogActionStatesItem
pattern LoggingConfig_LogActionStatesItem_Failed = LoggingConfig_LogActionStatesItem "FAILED"

{-# COMPLETE
  LoggingConfig_LogActionStatesItem_LOGGABLEACTIONSTATEUNSPECIFIED,
  LoggingConfig_LogActionStatesItem_Succeeded,
  LoggingConfig_LogActionStatesItem_Failed,
  LoggingConfig_LogActionStatesItem
  #-}

newtype LoggingConfig_LogActionsItem = LoggingConfig_LogActionsItem {fromLoggingConfig_LogActionsItem :: Core.Text}
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

-- | Default value. This value is unused.
pattern LoggingConfig_LogActionsItem_LOGGABLEACTIONUNSPECIFIED :: LoggingConfig_LogActionsItem
pattern LoggingConfig_LogActionsItem_LOGGABLEACTIONUNSPECIFIED = LoggingConfig_LogActionsItem "LOGGABLE_ACTION_UNSPECIFIED"

-- | Listing objects in a bucket.
pattern LoggingConfig_LogActionsItem_Find :: LoggingConfig_LogActionsItem
pattern LoggingConfig_LogActionsItem_Find = LoggingConfig_LogActionsItem "FIND"

-- | Deleting objects at the source or the destination.
pattern LoggingConfig_LogActionsItem_Delete' :: LoggingConfig_LogActionsItem
pattern LoggingConfig_LogActionsItem_Delete' = LoggingConfig_LogActionsItem "DELETE"

-- | Copying objects to the destination.
pattern LoggingConfig_LogActionsItem_Copy :: LoggingConfig_LogActionsItem
pattern LoggingConfig_LogActionsItem_Copy = LoggingConfig_LogActionsItem "COPY"

{-# COMPLETE
  LoggingConfig_LogActionsItem_LOGGABLEACTIONUNSPECIFIED,
  LoggingConfig_LogActionsItem_Find,
  LoggingConfig_LogActionsItem_Delete',
  LoggingConfig_LogActionsItem_Copy,
  LoggingConfig_LogActionsItem
  #-}

-- | Specifies how each object\'s ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL/DESTINATION/BUCKET_DEFAULT.
newtype MetadataOptions_Acl = MetadataOptions_Acl {fromMetadataOptions_Acl :: Core.Text}
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

-- | ACL behavior is unspecified.
pattern MetadataOptions_Acl_ACLUNSPECIFIED :: MetadataOptions_Acl
pattern MetadataOptions_Acl_ACLUNSPECIFIED = MetadataOptions_Acl "ACL_UNSPECIFIED"

-- | Use the destination bucket\'s default object ACLS, if applicable.
pattern MetadataOptions_Acl_ACLDESTINATIONBUCKETDEFAULT :: MetadataOptions_Acl
pattern MetadataOptions_Acl_ACLDESTINATIONBUCKETDEFAULT = MetadataOptions_Acl "ACL_DESTINATION_BUCKET_DEFAULT"

-- | Preserve the object\'s original ACLs. This requires the service account to have @storage.objects.getIamPolicy@ permission for the source object. <https://cloud.google.com/storage/docs/uniform-bucket-level-access Uniform bucket-level access> must not be enabled on either the source or destination buckets.
pattern MetadataOptions_Acl_ACLPRESERVE :: MetadataOptions_Acl
pattern MetadataOptions_Acl_ACLPRESERVE = MetadataOptions_Acl "ACL_PRESERVE"

{-# COMPLETE
  MetadataOptions_Acl_ACLUNSPECIFIED,
  MetadataOptions_Acl_ACLDESTINATIONBUCKETDEFAULT,
  MetadataOptions_Acl_ACLPRESERVE,
  MetadataOptions_Acl
  #-}

-- | Specifies how each file\'s POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
newtype MetadataOptions_Gid = MetadataOptions_Gid {fromMetadataOptions_Gid :: Core.Text}
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

-- | GID behavior is unspecified.
pattern MetadataOptions_Gid_GIDUNSPECIFIED :: MetadataOptions_Gid
pattern MetadataOptions_Gid_GIDUNSPECIFIED = MetadataOptions_Gid "GID_UNSPECIFIED"

-- | Do not preserve GID during a transfer job.
pattern MetadataOptions_Gid_GIDSKIP :: MetadataOptions_Gid
pattern MetadataOptions_Gid_GIDSKIP = MetadataOptions_Gid "GID_SKIP"

-- | Preserve GID during a transfer job.
pattern MetadataOptions_Gid_GIDNUMBER :: MetadataOptions_Gid
pattern MetadataOptions_Gid_GIDNUMBER = MetadataOptions_Gid "GID_NUMBER"

{-# COMPLETE
  MetadataOptions_Gid_GIDUNSPECIFIED,
  MetadataOptions_Gid_GIDSKIP,
  MetadataOptions_Gid_GIDNUMBER,
  MetadataOptions_Gid
  #-}

-- | Specifies how each object\'s Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS/KEY/DESTINATION/BUCKET/DEFAULT.
newtype MetadataOptions_KmsKey = MetadataOptions_KmsKey {fromMetadataOptions_KmsKey :: Core.Text}
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

-- | KmsKey behavior is unspecified.
pattern MetadataOptions_KmsKey_KMSKEYUNSPECIFIED :: MetadataOptions_KmsKey
pattern MetadataOptions_KmsKey_KMSKEYUNSPECIFIED = MetadataOptions_KmsKey "KMS_KEY_UNSPECIFIED"

-- | Use the destination bucket\'s default encryption settings.
pattern MetadataOptions_KmsKey_KMSKEYDESTINATIONBUCKETDEFAULT :: MetadataOptions_KmsKey
pattern MetadataOptions_KmsKey_KMSKEYDESTINATIONBUCKETDEFAULT = MetadataOptions_KmsKey "KMS_KEY_DESTINATION_BUCKET_DEFAULT"

-- | Preserve the object\'s original Cloud KMS customer-managed encryption key (CMEK) if present. Objects that do not use a Cloud KMS encryption key will be encrypted using the destination bucket\'s encryption settings.
pattern MetadataOptions_KmsKey_KMSKEYPRESERVE :: MetadataOptions_KmsKey
pattern MetadataOptions_KmsKey_KMSKEYPRESERVE = MetadataOptions_KmsKey "KMS_KEY_PRESERVE"

{-# COMPLETE
  MetadataOptions_KmsKey_KMSKEYUNSPECIFIED,
  MetadataOptions_KmsKey_KMSKEYDESTINATIONBUCKETDEFAULT,
  MetadataOptions_KmsKey_KMSKEYPRESERVE,
  MetadataOptions_KmsKey
  #-}

-- | Specifies how each file\'s mode attribute should be handled by the transfer. By default, mode is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
newtype MetadataOptions_Mode = MetadataOptions_Mode {fromMetadataOptions_Mode :: Core.Text}
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

-- | Mode behavior is unspecified.
pattern MetadataOptions_Mode_MODEUNSPECIFIED :: MetadataOptions_Mode
pattern MetadataOptions_Mode_MODEUNSPECIFIED = MetadataOptions_Mode "MODE_UNSPECIFIED"

-- | Do not preserve mode during a transfer job.
pattern MetadataOptions_Mode_MODESKIP :: MetadataOptions_Mode
pattern MetadataOptions_Mode_MODESKIP = MetadataOptions_Mode "MODE_SKIP"

-- | Preserve mode during a transfer job.
pattern MetadataOptions_Mode_MODEPRESERVE :: MetadataOptions_Mode
pattern MetadataOptions_Mode_MODEPRESERVE = MetadataOptions_Mode "MODE_PRESERVE"

{-# COMPLETE
  MetadataOptions_Mode_MODEUNSPECIFIED,
  MetadataOptions_Mode_MODESKIP,
  MetadataOptions_Mode_MODEPRESERVE,
  MetadataOptions_Mode
  #-}

-- | Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE/CLASS/DESTINATION/BUCKET/DEFAULT.
newtype MetadataOptions_StorageClass = MetadataOptions_StorageClass {fromMetadataOptions_StorageClass :: Core.Text}
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

-- | Storage class behavior is unspecified.
pattern MetadataOptions_StorageClass_STORAGECLASSUNSPECIFIED :: MetadataOptions_StorageClass
pattern MetadataOptions_StorageClass_STORAGECLASSUNSPECIFIED = MetadataOptions_StorageClass "STORAGE_CLASS_UNSPECIFIED"

-- | Use the destination bucket\'s default storage class.
pattern MetadataOptions_StorageClass_STORAGECLASSDESTINATIONBUCKETDEFAULT :: MetadataOptions_StorageClass
pattern MetadataOptions_StorageClass_STORAGECLASSDESTINATIONBUCKETDEFAULT = MetadataOptions_StorageClass "STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT"

-- | Preserve the object\'s original storage class. This is only supported for transfers from Google Cloud Storage buckets. REGIONAL and MULTI_REGIONAL storage classes will be mapped to STANDARD to ensure they can be written to the destination bucket.
pattern MetadataOptions_StorageClass_STORAGECLASSPRESERVE :: MetadataOptions_StorageClass
pattern MetadataOptions_StorageClass_STORAGECLASSPRESERVE = MetadataOptions_StorageClass "STORAGE_CLASS_PRESERVE"

-- | Set the storage class to STANDARD.
pattern MetadataOptions_StorageClass_STORAGECLASSSTANDARD :: MetadataOptions_StorageClass
pattern MetadataOptions_StorageClass_STORAGECLASSSTANDARD = MetadataOptions_StorageClass "STORAGE_CLASS_STANDARD"

-- | Set the storage class to NEARLINE.
pattern MetadataOptions_StorageClass_STORAGECLASSNEARLINE :: MetadataOptions_StorageClass
pattern MetadataOptions_StorageClass_STORAGECLASSNEARLINE = MetadataOptions_StorageClass "STORAGE_CLASS_NEARLINE"

-- | Set the storage class to COLDLINE.
pattern MetadataOptions_StorageClass_STORAGECLASSCOLDLINE :: MetadataOptions_StorageClass
pattern MetadataOptions_StorageClass_STORAGECLASSCOLDLINE = MetadataOptions_StorageClass "STORAGE_CLASS_COLDLINE"

-- | Set the storage class to ARCHIVE.
pattern MetadataOptions_StorageClass_STORAGECLASSARCHIVE :: MetadataOptions_StorageClass
pattern MetadataOptions_StorageClass_STORAGECLASSARCHIVE = MetadataOptions_StorageClass "STORAGE_CLASS_ARCHIVE"

{-# COMPLETE
  MetadataOptions_StorageClass_STORAGECLASSUNSPECIFIED,
  MetadataOptions_StorageClass_STORAGECLASSDESTINATIONBUCKETDEFAULT,
  MetadataOptions_StorageClass_STORAGECLASSPRESERVE,
  MetadataOptions_StorageClass_STORAGECLASSSTANDARD,
  MetadataOptions_StorageClass_STORAGECLASSNEARLINE,
  MetadataOptions_StorageClass_STORAGECLASSCOLDLINE,
  MetadataOptions_StorageClass_STORAGECLASSARCHIVE,
  MetadataOptions_StorageClass
  #-}

-- | Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
newtype MetadataOptions_Symlink = MetadataOptions_Symlink {fromMetadataOptions_Symlink :: Core.Text}
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

-- | Symlink behavior is unspecified.
pattern MetadataOptions_Symlink_SYMLINKUNSPECIFIED :: MetadataOptions_Symlink
pattern MetadataOptions_Symlink_SYMLINKUNSPECIFIED = MetadataOptions_Symlink "SYMLINK_UNSPECIFIED"

-- | Do not preserve symlinks during a transfer job.
pattern MetadataOptions_Symlink_SYMLINKSKIP :: MetadataOptions_Symlink
pattern MetadataOptions_Symlink_SYMLINKSKIP = MetadataOptions_Symlink "SYMLINK_SKIP"

-- | Preserve symlinks during a transfer job.
pattern MetadataOptions_Symlink_SYMLINKPRESERVE :: MetadataOptions_Symlink
pattern MetadataOptions_Symlink_SYMLINKPRESERVE = MetadataOptions_Symlink "SYMLINK_PRESERVE"

{-# COMPLETE
  MetadataOptions_Symlink_SYMLINKUNSPECIFIED,
  MetadataOptions_Symlink_SYMLINKSKIP,
  MetadataOptions_Symlink_SYMLINKPRESERVE,
  MetadataOptions_Symlink
  #-}

-- | Specifies how each object\'s temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY/HOLD/PRESERVE.
newtype MetadataOptions_TemporaryHold = MetadataOptions_TemporaryHold {fromMetadataOptions_TemporaryHold :: Core.Text}
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

-- | Temporary hold behavior is unspecified.
pattern MetadataOptions_TemporaryHold_TEMPORARYHOLDUNSPECIFIED :: MetadataOptions_TemporaryHold
pattern MetadataOptions_TemporaryHold_TEMPORARYHOLDUNSPECIFIED = MetadataOptions_TemporaryHold "TEMPORARY_HOLD_UNSPECIFIED"

-- | Do not set a temporary hold on the destination object.
pattern MetadataOptions_TemporaryHold_TEMPORARYHOLDSKIP :: MetadataOptions_TemporaryHold
pattern MetadataOptions_TemporaryHold_TEMPORARYHOLDSKIP = MetadataOptions_TemporaryHold "TEMPORARY_HOLD_SKIP"

-- | Preserve the object\'s original temporary hold status.
pattern MetadataOptions_TemporaryHold_TEMPORARYHOLDPRESERVE :: MetadataOptions_TemporaryHold
pattern MetadataOptions_TemporaryHold_TEMPORARYHOLDPRESERVE = MetadataOptions_TemporaryHold "TEMPORARY_HOLD_PRESERVE"

{-# COMPLETE
  MetadataOptions_TemporaryHold_TEMPORARYHOLDUNSPECIFIED,
  MetadataOptions_TemporaryHold_TEMPORARYHOLDSKIP,
  MetadataOptions_TemporaryHold_TEMPORARYHOLDPRESERVE,
  MetadataOptions_TemporaryHold
  #-}

-- | Specifies how each object\'s @timeCreated@ metadata is preserved for transfers. If unspecified, the default behavior is the same as TIME/CREATED/SKIP. This behavior is supported for transfers to Cloud Storage buckets from Cloud Storage, Amazon S3, S3-compatible storage, and Azure sources.
newtype MetadataOptions_TimeCreated = MetadataOptions_TimeCreated {fromMetadataOptions_TimeCreated :: Core.Text}
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

-- | TimeCreated behavior is unspecified.
pattern MetadataOptions_TimeCreated_TIMECREATEDUNSPECIFIED :: MetadataOptions_TimeCreated
pattern MetadataOptions_TimeCreated_TIMECREATEDUNSPECIFIED = MetadataOptions_TimeCreated "TIME_CREATED_UNSPECIFIED"

-- | Do not preserve the @timeCreated@ metadata from the source object.
pattern MetadataOptions_TimeCreated_TIMECREATEDSKIP :: MetadataOptions_TimeCreated
pattern MetadataOptions_TimeCreated_TIMECREATEDSKIP = MetadataOptions_TimeCreated "TIME_CREATED_SKIP"

-- | Preserves the source object\'s @timeCreated@ or @lastModified@ metadata in the @customTime@ field in the destination object. Note that any value stored in the source object\'s @customTime@ field will not be propagated to the destination object.
pattern MetadataOptions_TimeCreated_TIMECREATEDPRESERVEASCUSTOMTIME :: MetadataOptions_TimeCreated
pattern MetadataOptions_TimeCreated_TIMECREATEDPRESERVEASCUSTOMTIME = MetadataOptions_TimeCreated "TIME_CREATED_PRESERVE_AS_CUSTOM_TIME"

{-# COMPLETE
  MetadataOptions_TimeCreated_TIMECREATEDUNSPECIFIED,
  MetadataOptions_TimeCreated_TIMECREATEDSKIP,
  MetadataOptions_TimeCreated_TIMECREATEDPRESERVEASCUSTOMTIME,
  MetadataOptions_TimeCreated
  #-}

-- | Specifies how each file\'s POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
newtype MetadataOptions_Uid = MetadataOptions_Uid {fromMetadataOptions_Uid :: Core.Text}
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

-- | UID behavior is unspecified.
pattern MetadataOptions_Uid_UIDUNSPECIFIED :: MetadataOptions_Uid
pattern MetadataOptions_Uid_UIDUNSPECIFIED = MetadataOptions_Uid "UID_UNSPECIFIED"

-- | Do not preserve UID during a transfer job.
pattern MetadataOptions_Uid_UIDSKIP :: MetadataOptions_Uid
pattern MetadataOptions_Uid_UIDSKIP = MetadataOptions_Uid "UID_SKIP"

-- | Preserve UID during a transfer job.
pattern MetadataOptions_Uid_UIDNUMBER :: MetadataOptions_Uid
pattern MetadataOptions_Uid_UIDNUMBER = MetadataOptions_Uid "UID_NUMBER"

{-# COMPLETE
  MetadataOptions_Uid_UIDUNSPECIFIED,
  MetadataOptions_Uid_UIDSKIP,
  MetadataOptions_Uid_UIDNUMBER,
  MetadataOptions_Uid
  #-}

newtype NotificationConfig_EventTypesItem = NotificationConfig_EventTypesItem {fromNotificationConfig_EventTypesItem :: Core.Text}
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

-- | Illegal value, to avoid allowing a default.
pattern NotificationConfig_EventTypesItem_EVENTTYPEUNSPECIFIED :: NotificationConfig_EventTypesItem
pattern NotificationConfig_EventTypesItem_EVENTTYPEUNSPECIFIED = NotificationConfig_EventTypesItem "EVENT_TYPE_UNSPECIFIED"

-- | @TransferOperation@ completed with status SUCCESS.
pattern NotificationConfig_EventTypesItem_TRANSFEROPERATIONSUCCESS :: NotificationConfig_EventTypesItem
pattern NotificationConfig_EventTypesItem_TRANSFEROPERATIONSUCCESS = NotificationConfig_EventTypesItem "TRANSFER_OPERATION_SUCCESS"

-- | @TransferOperation@ completed with status FAILED.
pattern NotificationConfig_EventTypesItem_TRANSFEROPERATIONFAILED :: NotificationConfig_EventTypesItem
pattern NotificationConfig_EventTypesItem_TRANSFEROPERATIONFAILED = NotificationConfig_EventTypesItem "TRANSFER_OPERATION_FAILED"

-- | @TransferOperation@ completed with status ABORTED.
pattern NotificationConfig_EventTypesItem_TRANSFEROPERATIONABORTED :: NotificationConfig_EventTypesItem
pattern NotificationConfig_EventTypesItem_TRANSFEROPERATIONABORTED = NotificationConfig_EventTypesItem "TRANSFER_OPERATION_ABORTED"

{-# COMPLETE
  NotificationConfig_EventTypesItem_EVENTTYPEUNSPECIFIED,
  NotificationConfig_EventTypesItem_TRANSFEROPERATIONSUCCESS,
  NotificationConfig_EventTypesItem_TRANSFEROPERATIONFAILED,
  NotificationConfig_EventTypesItem_TRANSFEROPERATIONABORTED,
  NotificationConfig_EventTypesItem
  #-}

-- | Required. The desired format of the notification message payloads.
newtype NotificationConfig_PayloadFormat = NotificationConfig_PayloadFormat {fromNotificationConfig_PayloadFormat :: Core.Text}
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

-- | Illegal value, to avoid allowing a default.
pattern NotificationConfig_PayloadFormat_PAYLOADFORMATUNSPECIFIED :: NotificationConfig_PayloadFormat
pattern NotificationConfig_PayloadFormat_PAYLOADFORMATUNSPECIFIED = NotificationConfig_PayloadFormat "PAYLOAD_FORMAT_UNSPECIFIED"

-- | No payload is included with the notification.
pattern NotificationConfig_PayloadFormat_None :: NotificationConfig_PayloadFormat
pattern NotificationConfig_PayloadFormat_None = NotificationConfig_PayloadFormat "NONE"

-- | @TransferOperation@ is <https://developers.google.com/protocol-buffers/docs/proto3#json formatted as a JSON response>, in application\/json.
pattern NotificationConfig_PayloadFormat_Json :: NotificationConfig_PayloadFormat
pattern NotificationConfig_PayloadFormat_Json = NotificationConfig_PayloadFormat "JSON"

{-# COMPLETE
  NotificationConfig_PayloadFormat_PAYLOADFORMATUNSPECIFIED,
  NotificationConfig_PayloadFormat_None,
  NotificationConfig_PayloadFormat_Json,
  NotificationConfig_PayloadFormat
  #-}

-- | Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
newtype S3CompatibleMetadata_AuthMethod = S3CompatibleMetadata_AuthMethod {fromS3CompatibleMetadata_AuthMethod :: Core.Text}
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

-- | AuthMethod is not specified.
pattern S3CompatibleMetadata_AuthMethod_AUTHMETHODUNSPECIFIED :: S3CompatibleMetadata_AuthMethod
pattern S3CompatibleMetadata_AuthMethod_AUTHMETHODUNSPECIFIED = S3CompatibleMetadata_AuthMethod "AUTH_METHOD_UNSPECIFIED"

-- | Auth requests with AWS SigV4.
pattern S3CompatibleMetadata_AuthMethod_AUTH_METHOD_AWS_SIGNATURE_V4 :: S3CompatibleMetadata_AuthMethod
pattern S3CompatibleMetadata_AuthMethod_AUTH_METHOD_AWS_SIGNATURE_V4 = S3CompatibleMetadata_AuthMethod "AUTH_METHOD_AWS_SIGNATURE_V4"

-- | Auth requests with AWS SigV2.
pattern S3CompatibleMetadata_AuthMethod_AUTH_METHOD_AWS_SIGNATURE_V2 :: S3CompatibleMetadata_AuthMethod
pattern S3CompatibleMetadata_AuthMethod_AUTH_METHOD_AWS_SIGNATURE_V2 = S3CompatibleMetadata_AuthMethod "AUTH_METHOD_AWS_SIGNATURE_V2"

{-# COMPLETE
  S3CompatibleMetadata_AuthMethod_AUTHMETHODUNSPECIFIED,
  S3CompatibleMetadata_AuthMethod_AUTH_METHOD_AWS_SIGNATURE_V4,
  S3CompatibleMetadata_AuthMethod_AUTH_METHOD_AWS_SIGNATURE_V2,
  S3CompatibleMetadata_AuthMethod
  #-}

-- | The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
newtype S3CompatibleMetadata_ListApi = S3CompatibleMetadata_ListApi {fromS3CompatibleMetadata_ListApi :: Core.Text}
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

-- | ListApi is not specified.
pattern S3CompatibleMetadata_ListApi_LISTAPIUNSPECIFIED :: S3CompatibleMetadata_ListApi
pattern S3CompatibleMetadata_ListApi_LISTAPIUNSPECIFIED = S3CompatibleMetadata_ListApi "LIST_API_UNSPECIFIED"

-- | Perform listing using ListObjectsV2 API.
pattern S3CompatibleMetadata_ListApi_LIST_OBJECTS_V2 :: S3CompatibleMetadata_ListApi
pattern S3CompatibleMetadata_ListApi_LIST_OBJECTS_V2 = S3CompatibleMetadata_ListApi "LIST_OBJECTS_V2"

-- | Legacy ListObjects API.
pattern S3CompatibleMetadata_ListApi_LISTOBJECTS :: S3CompatibleMetadata_ListApi
pattern S3CompatibleMetadata_ListApi_LISTOBJECTS = S3CompatibleMetadata_ListApi "LIST_OBJECTS"

{-# COMPLETE
  S3CompatibleMetadata_ListApi_LISTAPIUNSPECIFIED,
  S3CompatibleMetadata_ListApi_LIST_OBJECTS_V2,
  S3CompatibleMetadata_ListApi_LISTOBJECTS,
  S3CompatibleMetadata_ListApi
  #-}

-- | Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK/PROTOCOL/HTTPS is used.
newtype S3CompatibleMetadata_Protocol = S3CompatibleMetadata_Protocol {fromS3CompatibleMetadata_Protocol :: Core.Text}
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

-- | NetworkProtocol is not specified.
pattern S3CompatibleMetadata_Protocol_NETWORKPROTOCOLUNSPECIFIED :: S3CompatibleMetadata_Protocol
pattern S3CompatibleMetadata_Protocol_NETWORKPROTOCOLUNSPECIFIED = S3CompatibleMetadata_Protocol "NETWORK_PROTOCOL_UNSPECIFIED"

-- | Perform requests using HTTPS.
pattern S3CompatibleMetadata_Protocol_NETWORKPROTOCOLHTTPS :: S3CompatibleMetadata_Protocol
pattern S3CompatibleMetadata_Protocol_NETWORKPROTOCOLHTTPS = S3CompatibleMetadata_Protocol "NETWORK_PROTOCOL_HTTPS"

-- | Not recommended: This sends data in clear-text. This is only appropriate within a closed network or for publicly available data. Perform requests using HTTP.
pattern S3CompatibleMetadata_Protocol_NETWORKPROTOCOLHTTP :: S3CompatibleMetadata_Protocol
pattern S3CompatibleMetadata_Protocol_NETWORKPROTOCOLHTTP = S3CompatibleMetadata_Protocol "NETWORK_PROTOCOL_HTTP"

{-# COMPLETE
  S3CompatibleMetadata_Protocol_NETWORKPROTOCOLUNSPECIFIED,
  S3CompatibleMetadata_Protocol_NETWORKPROTOCOLHTTPS,
  S3CompatibleMetadata_Protocol_NETWORKPROTOCOLHTTP,
  S3CompatibleMetadata_Protocol
  #-}

-- | Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST/MODEL/VIRTUAL/HOSTED/STYLE is used.
newtype S3CompatibleMetadata_RequestModel = S3CompatibleMetadata_RequestModel {fromS3CompatibleMetadata_RequestModel :: Core.Text}
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

-- | RequestModel is not specified.
pattern S3CompatibleMetadata_RequestModel_REQUESTMODELUNSPECIFIED :: S3CompatibleMetadata_RequestModel
pattern S3CompatibleMetadata_RequestModel_REQUESTMODELUNSPECIFIED = S3CompatibleMetadata_RequestModel "REQUEST_MODEL_UNSPECIFIED"

-- | Perform requests using Virtual Hosted Style. Example: https:\/\/bucket-name.s3.region.amazonaws.com\/key-name
pattern S3CompatibleMetadata_RequestModel_REQUESTMODELVIRTUALHOSTEDSTYLE :: S3CompatibleMetadata_RequestModel
pattern S3CompatibleMetadata_RequestModel_REQUESTMODELVIRTUALHOSTEDSTYLE = S3CompatibleMetadata_RequestModel "REQUEST_MODEL_VIRTUAL_HOSTED_STYLE"

-- | Perform requests using Path Style. Example: https:\/\/s3.region.amazonaws.com\/bucket-name\/key-name
pattern S3CompatibleMetadata_RequestModel_REQUESTMODELPATHSTYLE :: S3CompatibleMetadata_RequestModel
pattern S3CompatibleMetadata_RequestModel_REQUESTMODELPATHSTYLE = S3CompatibleMetadata_RequestModel "REQUEST_MODEL_PATH_STYLE"

{-# COMPLETE
  S3CompatibleMetadata_RequestModel_REQUESTMODELUNSPECIFIED,
  S3CompatibleMetadata_RequestModel_REQUESTMODELVIRTUALHOSTEDSTYLE,
  S3CompatibleMetadata_RequestModel_REQUESTMODELPATHSTYLE,
  S3CompatibleMetadata_RequestModel
  #-}

-- | Status of the job. This value MUST be specified for @CreateTransferJobRequests@. __Note:__ The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
newtype TransferJob_Status = TransferJob_Status {fromTransferJob_Status :: Core.Text}
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

-- | Zero is an illegal value.
pattern TransferJob_Status_STATUSUNSPECIFIED :: TransferJob_Status
pattern TransferJob_Status_STATUSUNSPECIFIED = TransferJob_Status "STATUS_UNSPECIFIED"

-- | New transfers are performed based on the schedule.
pattern TransferJob_Status_Enabled :: TransferJob_Status
pattern TransferJob_Status_Enabled = TransferJob_Status "ENABLED"

-- | New transfers are not scheduled.
pattern TransferJob_Status_Disabled :: TransferJob_Status
pattern TransferJob_Status_Disabled = TransferJob_Status "DISABLED"

-- | This is a soft delete state. After a transfer job is set to this state, the job and all the transfer executions are subject to garbage collection. Transfer jobs become eligible for garbage collection 30 days after their status is set to @DELETED@.
pattern TransferJob_Status_Deleted :: TransferJob_Status
pattern TransferJob_Status_Deleted = TransferJob_Status "DELETED"

{-# COMPLETE
  TransferJob_Status_STATUSUNSPECIFIED,
  TransferJob_Status_Enabled,
  TransferJob_Status_Disabled,
  TransferJob_Status_Deleted,
  TransferJob_Status
  #-}

-- | Status of the transfer operation.
newtype TransferOperation_Status = TransferOperation_Status {fromTransferOperation_Status :: Core.Text}
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

-- | Zero is an illegal value.
pattern TransferOperation_Status_STATUSUNSPECIFIED :: TransferOperation_Status
pattern TransferOperation_Status_STATUSUNSPECIFIED = TransferOperation_Status "STATUS_UNSPECIFIED"

-- | In progress.
pattern TransferOperation_Status_INPROGRESS :: TransferOperation_Status
pattern TransferOperation_Status_INPROGRESS = TransferOperation_Status "IN_PROGRESS"

-- | Paused.
pattern TransferOperation_Status_Paused :: TransferOperation_Status
pattern TransferOperation_Status_Paused = TransferOperation_Status "PAUSED"

-- | Completed successfully.
pattern TransferOperation_Status_Success :: TransferOperation_Status
pattern TransferOperation_Status_Success = TransferOperation_Status "SUCCESS"

-- | Terminated due to an unrecoverable failure.
pattern TransferOperation_Status_Failed :: TransferOperation_Status
pattern TransferOperation_Status_Failed = TransferOperation_Status "FAILED"

-- | Aborted by the user.
pattern TransferOperation_Status_Aborted :: TransferOperation_Status
pattern TransferOperation_Status_Aborted = TransferOperation_Status "ABORTED"

-- | Temporarily delayed by the system. No user action is required.
pattern TransferOperation_Status_Queued :: TransferOperation_Status
pattern TransferOperation_Status_Queued = TransferOperation_Status "QUEUED"

-- | The operation is suspending and draining the ongoing work to completion.
pattern TransferOperation_Status_Suspending :: TransferOperation_Status
pattern TransferOperation_Status_Suspending = TransferOperation_Status "SUSPENDING"

{-# COMPLETE
  TransferOperation_Status_STATUSUNSPECIFIED,
  TransferOperation_Status_INPROGRESS,
  TransferOperation_Status_Paused,
  TransferOperation_Status_Success,
  TransferOperation_Status_Failed,
  TransferOperation_Status_Aborted,
  TransferOperation_Status_Queued,
  TransferOperation_Status_Suspending,
  TransferOperation_Status
  #-}

-- | When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite/objects/already/existing/in_sink.
newtype TransferOptions_OverwriteWhen = TransferOptions_OverwriteWhen {fromTransferOptions_OverwriteWhen :: Core.Text}
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

-- | Overwrite behavior is unspecified.
pattern TransferOptions_OverwriteWhen_OVERWRITEWHENUNSPECIFIED :: TransferOptions_OverwriteWhen
pattern TransferOptions_OverwriteWhen_OVERWRITEWHENUNSPECIFIED = TransferOptions_OverwriteWhen "OVERWRITE_WHEN_UNSPECIFIED"

-- | Overwrites destination objects with the source objects, only if the objects have the same name but different HTTP ETags or checksum values.
pattern TransferOptions_OverwriteWhen_Different :: TransferOptions_OverwriteWhen
pattern TransferOptions_OverwriteWhen_Different = TransferOptions_OverwriteWhen "DIFFERENT"

-- | Never overwrites a destination object if a source object has the same name. In this case, the source object is not transferred.
pattern TransferOptions_OverwriteWhen_Never :: TransferOptions_OverwriteWhen
pattern TransferOptions_OverwriteWhen_Never = TransferOptions_OverwriteWhen "NEVER"

-- | Always overwrite the destination object with the source object, even if the HTTP Etags or checksum values are the same.
pattern TransferOptions_OverwriteWhen_Always :: TransferOptions_OverwriteWhen
pattern TransferOptions_OverwriteWhen_Always = TransferOptions_OverwriteWhen "ALWAYS"

{-# COMPLETE
  TransferOptions_OverwriteWhen_OVERWRITEWHENUNSPECIFIED,
  TransferOptions_OverwriteWhen_Different,
  TransferOptions_OverwriteWhen_Never,
  TransferOptions_OverwriteWhen_Always,
  TransferOptions_OverwriteWhen
  #-}
