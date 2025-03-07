{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Genomics.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Genomics.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Action_FlagsItem
    Action_FlagsItem
      ( Action_FlagsItem_FLAGUNSPECIFIED,
        Action_FlagsItem_IGNOREEXITSTATUS,
        Action_FlagsItem_RUNINBACKGROUND,
        Action_FlagsItem_ALWAYSRUN,
        Action_FlagsItem_ENABLEFUSE,
        Action_FlagsItem_PUBLISHEXPOSEDPORTS,
        Action_FlagsItem_DISABLEIMAGEPREFETCH,
        Action_FlagsItem_DISABLESTANDARDERRORCAPTURE,
        Action_FlagsItem_BLOCKEXTERNALNETWORK,
        ..
      ),

    -- * FailedEvent_Code
    FailedEvent_Code
      ( FailedEvent_Code_OK,
        FailedEvent_Code_Cancelled,
        FailedEvent_Code_Unknown,
        FailedEvent_Code_INVALIDARGUMENT,
        FailedEvent_Code_DEADLINEEXCEEDED,
        FailedEvent_Code_NOTFOUND,
        FailedEvent_Code_ALREADYEXISTS,
        FailedEvent_Code_PERMISSIONDENIED,
        FailedEvent_Code_Unauthenticated,
        FailedEvent_Code_RESOURCEEXHAUSTED,
        FailedEvent_Code_FAILEDPRECONDITION,
        FailedEvent_Code_Aborted,
        FailedEvent_Code_OUTOFRANGE,
        FailedEvent_Code_Unimplemented,
        FailedEvent_Code_Internal,
        FailedEvent_Code_Unavailable,
        FailedEvent_Code_DATALOSS,
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

newtype Action_FlagsItem = Action_FlagsItem {fromAction_FlagsItem :: Core.Text}
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

-- | Unspecified flag.
pattern Action_FlagsItem_FLAGUNSPECIFIED :: Action_FlagsItem
pattern Action_FlagsItem_FLAGUNSPECIFIED = Action_FlagsItem "FLAG_UNSPECIFIED"

-- | Normally, a non-zero exit status causes the pipeline to fail. This flag allows execution of other actions to continue instead.
pattern Action_FlagsItem_IGNOREEXITSTATUS :: Action_FlagsItem
pattern Action_FlagsItem_IGNOREEXITSTATUS = Action_FlagsItem "IGNORE_EXIT_STATUS"

-- | This flag allows an action to continue running in the background while executing subsequent actions. This is useful to provide services to other actions (or to provide debugging support tools like SSH servers).
pattern Action_FlagsItem_RUNINBACKGROUND :: Action_FlagsItem
pattern Action_FlagsItem_RUNINBACKGROUND = Action_FlagsItem "RUN_IN_BACKGROUND"

-- | By default, after an action fails, no further actions are run. This flag indicates that this action must be run even if the pipeline has already failed. This is useful for actions that copy output files off of the VM or for debugging. Note that no actions will be run if image prefetching fails.
pattern Action_FlagsItem_ALWAYSRUN :: Action_FlagsItem
pattern Action_FlagsItem_ALWAYSRUN = Action_FlagsItem "ALWAYS_RUN"

-- | Enable access to the FUSE device for this action. Filesystems can then be mounted into disks shared with other actions. The other actions do not need the @ENABLE_FUSE@ flag to access the mounted filesystem. This has the effect of causing the container to be executed with @CAP_SYS_ADMIN@ and exposes @\/dev\/fuse@ to the container, so use it only for containers you trust.
pattern Action_FlagsItem_ENABLEFUSE :: Action_FlagsItem
pattern Action_FlagsItem_ENABLEFUSE = Action_FlagsItem "ENABLE_FUSE"

-- | Exposes all ports specified by @EXPOSE@ statements in the container. To discover the host side port numbers, consult the @ACTION_STARTED@ event in the operation metadata.
pattern Action_FlagsItem_PUBLISHEXPOSEDPORTS :: Action_FlagsItem
pattern Action_FlagsItem_PUBLISHEXPOSEDPORTS = Action_FlagsItem "PUBLISH_EXPOSED_PORTS"

-- | All container images are typically downloaded before any actions are executed. This helps prevent typos in URIs or issues like lack of disk space from wasting large amounts of compute resources. If set, this flag prevents the worker from downloading the image until just before the action is executed.
pattern Action_FlagsItem_DISABLEIMAGEPREFETCH :: Action_FlagsItem
pattern Action_FlagsItem_DISABLEIMAGEPREFETCH = Action_FlagsItem "DISABLE_IMAGE_PREFETCH"

-- | A small portion of the container\'s standard error stream is typically captured and returned inside the @ContainerStoppedEvent@. Setting this flag disables this functionality.
pattern Action_FlagsItem_DISABLESTANDARDERRORCAPTURE :: Action_FlagsItem
pattern Action_FlagsItem_DISABLESTANDARDERRORCAPTURE = Action_FlagsItem "DISABLE_STANDARD_ERROR_CAPTURE"

-- | Prevents the container from accessing the external network.
pattern Action_FlagsItem_BLOCKEXTERNALNETWORK :: Action_FlagsItem
pattern Action_FlagsItem_BLOCKEXTERNALNETWORK = Action_FlagsItem "BLOCK_EXTERNAL_NETWORK"

{-# COMPLETE
  Action_FlagsItem_FLAGUNSPECIFIED,
  Action_FlagsItem_IGNOREEXITSTATUS,
  Action_FlagsItem_RUNINBACKGROUND,
  Action_FlagsItem_ALWAYSRUN,
  Action_FlagsItem_ENABLEFUSE,
  Action_FlagsItem_PUBLISHEXPOSEDPORTS,
  Action_FlagsItem_DISABLEIMAGEPREFETCH,
  Action_FlagsItem_DISABLESTANDARDERRORCAPTURE,
  Action_FlagsItem_BLOCKEXTERNALNETWORK,
  Action_FlagsItem
  #-}

-- | The Google standard error code that best describes this failure.
newtype FailedEvent_Code = FailedEvent_Code {fromFailedEvent_Code :: Core.Text}
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
pattern FailedEvent_Code_OK :: FailedEvent_Code
pattern FailedEvent_Code_OK = FailedEvent_Code "OK"

-- | The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request
pattern FailedEvent_Code_Cancelled :: FailedEvent_Code
pattern FailedEvent_Code_Cancelled = FailedEvent_Code "CANCELLED"

-- | Unknown error. For example, this error may be returned when a @Status@ value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error
pattern FailedEvent_Code_Unknown :: FailedEvent_Code
pattern FailedEvent_Code_Unknown = FailedEvent_Code "UNKNOWN"

-- | The client specified an invalid argument. Note that this differs from @FAILED_PRECONDITION@. @INVALID_ARGUMENT@ indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
pattern FailedEvent_Code_INVALIDARGUMENT :: FailedEvent_Code
pattern FailedEvent_Code_INVALIDARGUMENT = FailedEvent_Code "INVALID_ARGUMENT"

-- | The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
pattern FailedEvent_Code_DEADLINEEXCEEDED :: FailedEvent_Code
pattern FailedEvent_Code_DEADLINEEXCEEDED = FailedEvent_Code "DEADLINE_EXCEEDED"

-- | Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, @NOT_FOUND@ may be used. If a request is denied for some users within a class of users, such as user-based access control, @PERMISSION_DENIED@ must be used. HTTP Mapping: 404 Not Found
pattern FailedEvent_Code_NOTFOUND :: FailedEvent_Code
pattern FailedEvent_Code_NOTFOUND = FailedEvent_Code "NOT_FOUND"

-- | The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict
pattern FailedEvent_Code_ALREADYEXISTS :: FailedEvent_Code
pattern FailedEvent_Code_ALREADYEXISTS = FailedEvent_Code "ALREADY_EXISTS"

-- | The caller does not have permission to execute the specified operation. @PERMISSION_DENIED@ must not be used for rejections caused by exhausting some resource (use @RESOURCE_EXHAUSTED@ instead for those errors). @PERMISSION_DENIED@ must not be used if the caller can not be identified (use @UNAUTHENTICATED@ instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
pattern FailedEvent_Code_PERMISSIONDENIED :: FailedEvent_Code
pattern FailedEvent_Code_PERMISSIONDENIED = FailedEvent_Code "PERMISSION_DENIED"

-- | The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized
pattern FailedEvent_Code_Unauthenticated :: FailedEvent_Code
pattern FailedEvent_Code_Unauthenticated = FailedEvent_Code "UNAUTHENTICATED"

-- | Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests
pattern FailedEvent_Code_RESOURCEEXHAUSTED :: FailedEvent_Code
pattern FailedEvent_Code_RESOURCEEXHAUSTED = FailedEvent_Code "RESOURCE_EXHAUSTED"

-- | The operation was rejected because the system is not in a state required for the operation\'s execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@: (a) Use @UNAVAILABLE@ if the client can retry just the failing call. (b) Use @ABORTED@ if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use @FAILED_PRECONDITION@ if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, @FAILED_PRECONDITION@ should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request
pattern FailedEvent_Code_FAILEDPRECONDITION :: FailedEvent_Code
pattern FailedEvent_Code_FAILEDPRECONDITION = FailedEvent_Code "FAILED_PRECONDITION"

-- | The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 409 Conflict
pattern FailedEvent_Code_Aborted :: FailedEvent_Code
pattern FailedEvent_Code_Aborted = FailedEvent_Code "ABORTED"

-- | The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike @INVALID_ARGUMENT@, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate @INVALID_ARGUMENT@ if asked to read at an offset that is not in the range [0,2^32-1], but it will generate @OUT_OF_RANGE@ if asked to read from an offset past the current file size. There is a fair bit of overlap between @FAILED_PRECONDITION@ and @OUT_OF_RANGE@. We recommend using @OUT_OF_RANGE@ (the more specific error) when it applies so that callers who are iterating through a space can easily look for an @OUT_OF_RANGE@ error to detect when they are done. HTTP Mapping: 400 Bad Request
pattern FailedEvent_Code_OUTOFRANGE :: FailedEvent_Code
pattern FailedEvent_Code_OUTOFRANGE = FailedEvent_Code "OUT_OF_RANGE"

-- | The operation is not implemented or is not supported\/enabled in this service. HTTP Mapping: 501 Not Implemented
pattern FailedEvent_Code_Unimplemented :: FailedEvent_Code
pattern FailedEvent_Code_Unimplemented = FailedEvent_Code "UNIMPLEMENTED"

-- | Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error
pattern FailedEvent_Code_Internal :: FailedEvent_Code
pattern FailedEvent_Code_Internal = FailedEvent_Code "INTERNAL"

-- | The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 503 Service Unavailable
pattern FailedEvent_Code_Unavailable :: FailedEvent_Code
pattern FailedEvent_Code_Unavailable = FailedEvent_Code "UNAVAILABLE"

-- | Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error
pattern FailedEvent_Code_DATALOSS :: FailedEvent_Code
pattern FailedEvent_Code_DATALOSS = FailedEvent_Code "DATA_LOSS"

{-# COMPLETE
  FailedEvent_Code_OK,
  FailedEvent_Code_Cancelled,
  FailedEvent_Code_Unknown,
  FailedEvent_Code_INVALIDARGUMENT,
  FailedEvent_Code_DEADLINEEXCEEDED,
  FailedEvent_Code_NOTFOUND,
  FailedEvent_Code_ALREADYEXISTS,
  FailedEvent_Code_PERMISSIONDENIED,
  FailedEvent_Code_Unauthenticated,
  FailedEvent_Code_RESOURCEEXHAUSTED,
  FailedEvent_Code_FAILEDPRECONDITION,
  FailedEvent_Code_Aborted,
  FailedEvent_Code_OUTOFRANGE,
  FailedEvent_Code_Unimplemented,
  FailedEvent_Code_Internal,
  FailedEvent_Code_Unavailable,
  FailedEvent_Code_DATALOSS,
  FailedEvent_Code
  #-}
