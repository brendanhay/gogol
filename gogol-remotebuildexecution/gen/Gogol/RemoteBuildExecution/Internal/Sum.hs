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
-- Module      : Gogol.RemoteBuildExecution.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.RemoteBuildExecution.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
    BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
      ( BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_Unknown,
        BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA256,
        BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA1,
        BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_MD5,
        BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_Vso,
        BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA384,
        BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA512,
        BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_MURMUR3,
        ..
      ),

    -- * BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem
    BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem
      ( BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem_Identity,
        BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem_Zstd,
        ..
      ),

    -- * BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy
    BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy
      ( BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Unknown,
        BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Disallowed,
        BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Allowed,
        ..
      ),

    -- * BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
    BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
      ( BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Unknown,
        BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_CACHECHECK,
        BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Queued,
        BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Executing,
        BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Completed,
        ..
      ),

    -- * BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
    BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
      ( BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_Unknown,
        BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA256,
        BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA1,
        BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_MD5,
        BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_Vso,
        BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA384,
        BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA512,
        BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_MURMUR3,
        ..
      ),

    -- * GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage
    GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage
      ( GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGNONE,
        GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGMATCH,
        GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGMISMATCH,
        ..
      ),

    -- * GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
    GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
      ( GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONUNDEFINED,
        GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONNONE,
        GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTRELATIVE,
        GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONWORKINGDIRRELATIVE,
        GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTANDWORKINGDIRRELATIVE,
        GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTRELATIVEOUTPUTOUTSIDEWORKINGDIR,
        GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTANDWORKINGDIRRELATIVEOUTPUTOUTSIDEWORKINGDIR,
        ..
      ),

    -- * GoogleDevtoolsRemotebuildbotCommandStatus_Code
    GoogleDevtoolsRemotebuildbotCommandStatus_Code
      ( GoogleDevtoolsRemotebuildbotCommandStatus_Code_OK,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_INVALIDARGUMENT,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DEADLINEEXCEEDED,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_NOTFOUND,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_PERMISSIONDENIED,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_Internal,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_Aborted,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_FAILEDPRECONDITION,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_CLEANUPERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOWNLOADINPUTSERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_Unknown,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_UPLOADOUTPUTSERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_UPLOADOUTPUTSBYTESLIMITEXCEEDED,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERLOGINERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEPULLERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEEXISTERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DUPLICATEINPUTS,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEPERMISSIONDENIED,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGENOTFOUND,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTFOUND,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTINBASEDIR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNAVAILABLE,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_NOCUDACAPABLEDEVICE,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_REMOTECASDOWNLOADERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_REMOTECASUPLOADERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_LOCALCASPROXYNOTRUNNING,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECONTAINERERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERINVALIDULIMIT,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNRUNTIME,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNCAPABILITY,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECOMPUTESYSTEMERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERPREPARELAYERERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERINCOMPATIBLEOSERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATERUNTIMEFILENOTFOUND,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATERUNTIMEPERMISSIONDENIED,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATEPROCESSFILENOTFOUND,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECOMPUTESYSTEMINCORRECTPARAMETERERROR,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERTOOMANYSYMBOLICLINKLEVELS,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_LOCALCONTAINERMANAGERNOTRUNNING,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEVPCSCPERMISSIONDENIED,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTRELATIVE,
        GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERMISSINGCONTAINER,
        ..
      ),

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation
      ( GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_LINUXISOLATIONUNSPECIFIED,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_Gvisor,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_Off,
        ..
      ),

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy
      ( GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_POLICYUNSPECIFIED,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Allowed,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Forbidden,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Restricted,
        ..
      ),

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State
      ( GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_STATEUNSPECIFIED,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Creating,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Running,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Inactive,
        ..
      ),

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
      ( GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_STATEUNSPECIFIED,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Creating,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Running,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Updating,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Deleting,
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Inactive,
        ..
      ),

    -- * GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
    GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
      ( GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_Unspecified,
        GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTUPDATE,
        GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTRESTART,
        GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTTERMINATE,
        GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_HOSTRESTART,
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

newtype BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem {fromBuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem :: Core.Text}
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

-- | It is an error for the server to return this value.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_Unknown :: BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_Unknown = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem "UNKNOWN"

-- | The SHA-256 digest function.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA256 :: BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA256 = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem "SHA256"

-- | The SHA-1 digest function.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA1 :: BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA1 = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem "SHA1"

-- | The MD5 digest function.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_MD5 :: BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_MD5 = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem "MD5"

-- | The Microsoft \"VSO-Hash\" paged SHA256 digest function. See https:\/\/github.com\/microsoft\/BuildXL\/blob\/master\/Documentation\/Specs\/PagedHash.md .
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_Vso :: BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_Vso = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem "VSO"

-- | The SHA-384 digest function.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA384 :: BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA384 = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem "SHA384"

-- | The SHA-512 digest function.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA512 :: BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA512 = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem "SHA512"

-- | Murmur3 128-bit digest function, x64 variant. Note that this is not a cryptographic hash function and its collision properties are not strongly guaranteed. See https:\/\/github.com\/aappleby\/smhasher\/wiki\/MurmurHash3 .
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_MURMUR3 :: BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_MURMUR3 = BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem "MURMUR3"

{-# COMPLETE
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_Unknown,
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA256,
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA1,
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_MD5,
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_Vso,
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA384,
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_SHA512,
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem_MURMUR3,
  BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
  #-}

newtype BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem = BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem {fromBuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem :: Core.Text}
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

-- | No compression. Servers and clients MUST always support this, and do not need to advertise it.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem_Identity :: BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem_Identity = BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem "IDENTITY"

-- | Zstandard compression.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem_Zstd :: BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem_Zstd = BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem "ZSTD"

{-# COMPLETE
  BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem_Identity,
  BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem_Zstd,
  BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem
  #-}

-- | Whether absolute symlink targets are supported.
newtype BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy = BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy {fromBuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy :: Core.Text}
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

-- | Invalid value.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Unknown :: BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Unknown = BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy "UNKNOWN"

-- | Server will return an @INVALID_ARGUMENT@ on input symlinks with absolute targets. If an action tries to create an output symlink with an absolute target, a @FAILED_PRECONDITION@ will be returned.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Disallowed :: BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Disallowed = BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy "DISALLOWED"

-- | Server will allow symlink targets to escape the input root tree, possibly resulting in non-hermetic builds.
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Allowed :: BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy
pattern BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Allowed = BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy "ALLOWED"

{-# COMPLETE
  BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Unknown,
  BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Disallowed,
  BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy_Allowed,
  BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy
  #-}

-- | The current stage of execution.
newtype BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage = BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage {fromBuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage :: Core.Text}
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

-- | Invalid value.
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Unknown :: BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Unknown = BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage "UNKNOWN"

-- | Checking the result against the cache.
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_CACHECHECK :: BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_CACHECHECK = BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage "CACHE_CHECK"

-- | Currently idle, awaiting a free machine to execute.
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Queued :: BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Queued = BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage "QUEUED"

-- | Currently being executed by a worker.
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Executing :: BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Executing = BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage "EXECUTING"

-- | Finished execution.
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Completed :: BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
pattern BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Completed = BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage "COMPLETED"

{-# COMPLETE
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Unknown,
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_CACHECHECK,
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Queued,
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Executing,
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage_Completed,
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
  #-}

-- | Remote execution may only support a single digest function.
newtype BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction {fromBuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction :: Core.Text}
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

-- | It is an error for the server to return this value.
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_Unknown :: BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_Unknown = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction "UNKNOWN"

-- | The SHA-256 digest function.
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA256 :: BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA256 = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction "SHA256"

-- | The SHA-1 digest function.
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA1 :: BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA1 = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction "SHA1"

-- | The MD5 digest function.
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_MD5 :: BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_MD5 = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction "MD5"

-- | The Microsoft \"VSO-Hash\" paged SHA256 digest function. See https:\/\/github.com\/microsoft\/BuildXL\/blob\/master\/Documentation\/Specs\/PagedHash.md .
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_Vso :: BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_Vso = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction "VSO"

-- | The SHA-384 digest function.
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA384 :: BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA384 = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction "SHA384"

-- | The SHA-512 digest function.
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA512 :: BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA512 = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction "SHA512"

-- | Murmur3 128-bit digest function, x64 variant. Note that this is not a cryptographic hash function and its collision properties are not strongly guaranteed. See https:\/\/github.com\/aappleby\/smhasher\/wiki\/MurmurHash3 .
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_MURMUR3 :: BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
pattern BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_MURMUR3 = BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction "MURMUR3"

{-# COMPLETE
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_Unknown,
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA256,
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA1,
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_MD5,
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_Vso,
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA384,
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_SHA512,
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction_MURMUR3,
  BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
  #-}

-- | Indicates if and how Container Manager is being used for task execution.
newtype GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage = GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage {fromGoogleDevtoolsRemotebuildbotCommandEvents_CmUsage :: Core.Text}
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

-- | Container Manager is disabled or not running for this execution.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGNONE :: GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage
pattern GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGNONE = GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage "CONFIG_NONE"

-- | Container Manager is enabled and there was a matching container available for use during execution.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGMATCH :: GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage
pattern GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGMATCH = GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage "CONFIG_MATCH"

-- | Container Manager is enabled, but there was no matching container available for execution.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGMISMATCH :: GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage
pattern GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGMISMATCH = GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage "CONFIG_MISMATCH"

{-# COMPLETE
  GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGNONE,
  GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGMATCH,
  GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage_CONFIGMISMATCH,
  GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage
  #-}

-- | Indicates whether output files and\/or output directories were found relative to the execution root or to the user provided work directory or both or none.
newtype GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation = GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation {fromGoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation :: Core.Text}
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

-- | Location is set to LOCATION_UNDEFINED for tasks where the working directorty is not specified or is identical to the execution root directory.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONUNDEFINED :: GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONUNDEFINED = GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation "LOCATION_UNDEFINED"

-- | No output files or directories were found neither relative to the execution root directory nor relative to the working directory.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONNONE :: GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONNONE = GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation "LOCATION_NONE"

-- | Output files or directories were found relative to the execution root directory but not relative to the working directory.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTRELATIVE :: GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTRELATIVE = GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation "LOCATION_EXEC_ROOT_RELATIVE"

-- | Output files or directories were found relative to the working directory but not relative to the execution root directory.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONWORKINGDIRRELATIVE :: GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONWORKINGDIRRELATIVE = GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation "LOCATION_WORKING_DIR_RELATIVE"

-- | Output files or directories were found both relative to the execution root directory and relative to the working directory.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTANDWORKINGDIRRELATIVE :: GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTANDWORKINGDIRRELATIVE = GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation "LOCATION_EXEC_ROOT_AND_WORKING_DIR_RELATIVE"

-- | Output files or directories were found relative to the execution root directory but not relative to the working directory. In addition at least one output file or directory was found outside of the working directory such that a working-directory-relative-path would have needed to start with a @..@.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTRELATIVEOUTPUTOUTSIDEWORKINGDIR :: GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTRELATIVEOUTPUTOUTSIDEWORKINGDIR = GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation "LOCATION_EXEC_ROOT_RELATIVE_OUTPUT_OUTSIDE_WORKING_DIR"

-- | Output files or directories were found both relative to the execution root directory and relative to the working directory. In addition at least one exec-root-relative output file or directory was found outside of the working directory such that a working-directory-relative-path would have needed to start with a @..@.
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTANDWORKINGDIRRELATIVEOUTPUTOUTSIDEWORKINGDIR :: GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
pattern GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTANDWORKINGDIRRELATIVEOUTPUTOUTSIDEWORKINGDIR = GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation "LOCATION_EXEC_ROOT_AND_WORKING_DIR_RELATIVE_OUTPUT_OUTSIDE_WORKING_DIR"

{-# COMPLETE
  GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONUNDEFINED,
  GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONNONE,
  GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTRELATIVE,
  GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONWORKINGDIRRELATIVE,
  GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTANDWORKINGDIRRELATIVE,
  GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTRELATIVEOUTPUTOUTSIDEWORKINGDIR,
  GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation_LOCATIONEXECROOTANDWORKINGDIRRELATIVEOUTPUTOUTSIDEWORKINGDIR,
  GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
  #-}

-- | The status code.
newtype GoogleDevtoolsRemotebuildbotCommandStatus_Code = GoogleDevtoolsRemotebuildbotCommandStatus_Code {fromGoogleDevtoolsRemotebuildbotCommandStatus_Code :: Core.Text}
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

-- | The command succeeded.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_OK :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_OK = GoogleDevtoolsRemotebuildbotCommandStatus_Code "OK"

-- | The command input was invalid.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_INVALIDARGUMENT :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_INVALIDARGUMENT = GoogleDevtoolsRemotebuildbotCommandStatus_Code "INVALID_ARGUMENT"

-- | The command had passed its expiry time while it was still running.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DEADLINEEXCEEDED :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DEADLINEEXCEEDED = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DEADLINE_EXCEEDED"

-- | The resources requested by the command were not found.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_NOTFOUND :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_NOTFOUND = GoogleDevtoolsRemotebuildbotCommandStatus_Code "NOT_FOUND"

-- | The command failed due to permission errors.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_PERMISSIONDENIED :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_PERMISSIONDENIED = GoogleDevtoolsRemotebuildbotCommandStatus_Code "PERMISSION_DENIED"

-- | The command failed because of some invariants expected by the underlying system have been broken. This usually indicates a bug wit the system.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_Internal :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_Internal = GoogleDevtoolsRemotebuildbotCommandStatus_Code "INTERNAL"

-- | The command was aborted.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_Aborted :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_Aborted = GoogleDevtoolsRemotebuildbotCommandStatus_Code "ABORTED"

-- | The command failed because the system is not in a state required for the command, e.g. the command inputs cannot be found on the server.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_FAILEDPRECONDITION :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_FAILEDPRECONDITION = GoogleDevtoolsRemotebuildbotCommandStatus_Code "FAILED_PRECONDITION"

-- | The bot failed to do the cleanup, e.g. unable to delete the command working directory or the command process.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_CLEANUPERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_CLEANUPERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "CLEANUP_ERROR"

-- | The bot failed to download the inputs.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOWNLOADINPUTSERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOWNLOADINPUTSERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOWNLOAD_INPUTS_ERROR"

-- | Unknown error.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_Unknown :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_Unknown = GoogleDevtoolsRemotebuildbotCommandStatus_Code "UNKNOWN"

-- | The bot failed to upload the outputs.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_UPLOADOUTPUTSERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_UPLOADOUTPUTSERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "UPLOAD_OUTPUTS_ERROR"

-- | The bot tried to upload files having a total size that is too large.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_UPLOADOUTPUTSBYTESLIMITEXCEEDED :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_UPLOADOUTPUTSBYTESLIMITEXCEEDED = GoogleDevtoolsRemotebuildbotCommandStatus_Code "UPLOAD_OUTPUTS_BYTES_LIMIT_EXCEEDED"

-- | The bot failed to login to docker.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERLOGINERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERLOGINERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_LOGIN_ERROR"

-- | The bot failed to pull docker image.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEPULLERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEPULLERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_IMAGE_PULL_ERROR"

-- | The bot failed to check docker images.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEEXISTERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEEXISTERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_IMAGE_EXIST_ERROR"

-- | The inputs contain duplicate files.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DUPLICATEINPUTS :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DUPLICATEINPUTS = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DUPLICATE_INPUTS"

-- | The bot doesn\'t have the permissions to pull docker images.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEPERMISSIONDENIED :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEPERMISSIONDENIED = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_IMAGE_PERMISSION_DENIED"

-- | The docker image cannot be found.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGENOTFOUND :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGENOTFOUND = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_IMAGE_NOT_FOUND"

-- | Working directory is not found.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTFOUND :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTFOUND = GoogleDevtoolsRemotebuildbotCommandStatus_Code "WORKING_DIR_NOT_FOUND"

-- | Working directory is not under the base directory
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTINBASEDIR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTINBASEDIR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "WORKING_DIR_NOT_IN_BASE_DIR"

-- | There are issues with docker service\/runtime.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNAVAILABLE :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNAVAILABLE = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_UNAVAILABLE"

-- | The command failed with \"no cuda-capable device is detected\" error.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_NOCUDACAPABLEDEVICE :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_NOCUDACAPABLEDEVICE = GoogleDevtoolsRemotebuildbotCommandStatus_Code "NO_CUDA_CAPABLE_DEVICE"

-- | The bot encountered errors from remote CAS when downloading blobs.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_REMOTECASDOWNLOADERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_REMOTECASDOWNLOADERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "REMOTE_CAS_DOWNLOAD_ERROR"

-- | The bot encountered errors from remote CAS when uploading blobs.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_REMOTECASUPLOADERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_REMOTECASUPLOADERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "REMOTE_CAS_UPLOAD_ERROR"

-- | The local casproxy is not running.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_LOCALCASPROXYNOTRUNNING :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_LOCALCASPROXYNOTRUNNING = GoogleDevtoolsRemotebuildbotCommandStatus_Code "LOCAL_CASPROXY_NOT_RUNNING"

-- | The bot couldn\'t start the container.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECONTAINERERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECONTAINERERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_CREATE_CONTAINER_ERROR"

-- | The docker ulimit is not valid.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERINVALIDULIMIT :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERINVALIDULIMIT = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_INVALID_ULIMIT"

-- | The docker runtime is unknown.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNRUNTIME :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNRUNTIME = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_UNKNOWN_RUNTIME"

-- | The docker capability is unknown.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNCAPABILITY :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNCAPABILITY = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_UNKNOWN_CAPABILITY"

-- | The command failed with unknown docker errors.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_UNKNOWN_ERROR"

-- | Docker failed to run containers with CreateComputeSystem error.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECOMPUTESYSTEMERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECOMPUTESYSTEMERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_CREATE_COMPUTE_SYSTEM_ERROR"

-- | Docker failed to run containers with hcsshim::PrepareLayer error.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERPREPARELAYERERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERPREPARELAYERERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_PREPARELAYER_ERROR"

-- | Docker incompatible operating system error.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERINCOMPATIBLEOSERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERINCOMPATIBLEOSERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_INCOMPATIBLE_OS_ERROR"

-- | Docker failed to create OCI runtime because of file not found.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATERUNTIMEFILENOTFOUND :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATERUNTIMEFILENOTFOUND = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_CREATE_RUNTIME_FILE_NOT_FOUND"

-- | Docker failed to create OCI runtime because of permission denied.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATERUNTIMEPERMISSIONDENIED :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATERUNTIMEPERMISSIONDENIED = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_CREATE_RUNTIME_PERMISSION_DENIED"

-- | Docker failed to create process because of file not found.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATEPROCESSFILENOTFOUND :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATEPROCESSFILENOTFOUND = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_CREATE_PROCESS_FILE_NOT_FOUND"

-- | Docker failed to run containers with CreateComputeSystem error that involves an incorrect parameter (more specific version of DOCKER/CREATE/COMPUTE/SYSTEM/ERROR that is user-caused).
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECOMPUTESYSTEMINCORRECTPARAMETERERROR :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECOMPUTESYSTEMINCORRECTPARAMETERERROR = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_CREATE_COMPUTE_SYSTEM_INCORRECT_PARAMETER_ERROR"

-- | Docker failed to create an overlay mount because of too many levels of symbolic links.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERTOOMANYSYMBOLICLINKLEVELS :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERTOOMANYSYMBOLICLINKLEVELS = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_TOO_MANY_SYMBOLIC_LINK_LEVELS"

-- | The local Container Manager is not running.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_LOCALCONTAINERMANAGERNOTRUNNING :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_LOCALCONTAINERMANAGERNOTRUNNING = GoogleDevtoolsRemotebuildbotCommandStatus_Code "LOCAL_CONTAINER_MANAGER_NOT_RUNNING"

-- | Docker failed because a request was denied by the organization\'s policy.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEVPCSCPERMISSIONDENIED :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEVPCSCPERMISSIONDENIED = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_IMAGE_VPCSC_PERMISSION_DENIED"

-- | Working directory is not relative
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTRELATIVE :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTRELATIVE = GoogleDevtoolsRemotebuildbotCommandStatus_Code "WORKING_DIR_NOT_RELATIVE"

-- | Docker cannot find the container specified in the command. This error is likely to only occur if an asynchronous container is not running when the command is run.
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERMISSINGCONTAINER :: GoogleDevtoolsRemotebuildbotCommandStatus_Code
pattern GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERMISSINGCONTAINER = GoogleDevtoolsRemotebuildbotCommandStatus_Code "DOCKER_MISSING_CONTAINER"

{-# COMPLETE
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_OK,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_INVALIDARGUMENT,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DEADLINEEXCEEDED,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_NOTFOUND,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_PERMISSIONDENIED,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_Internal,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_Aborted,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_FAILEDPRECONDITION,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_CLEANUPERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOWNLOADINPUTSERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_Unknown,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_UPLOADOUTPUTSERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_UPLOADOUTPUTSBYTESLIMITEXCEEDED,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERLOGINERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEPULLERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEEXISTERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DUPLICATEINPUTS,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEPERMISSIONDENIED,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGENOTFOUND,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTFOUND,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTINBASEDIR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNAVAILABLE,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_NOCUDACAPABLEDEVICE,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_REMOTECASDOWNLOADERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_REMOTECASUPLOADERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_LOCALCASPROXYNOTRUNNING,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECONTAINERERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERINVALIDULIMIT,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNRUNTIME,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNCAPABILITY,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERUNKNOWNERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECOMPUTESYSTEMERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERPREPARELAYERERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERINCOMPATIBLEOSERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATERUNTIMEFILENOTFOUND,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATERUNTIMEPERMISSIONDENIED,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATEPROCESSFILENOTFOUND,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERCREATECOMPUTESYSTEMINCORRECTPARAMETERERROR,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERTOOMANYSYMBOLICLINKLEVELS,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_LOCALCONTAINERMANAGERNOTRUNNING,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERIMAGEVPCSCPERMISSIONDENIED,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_WORKINGDIRNOTRELATIVE,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code_DOCKERMISSINGCONTAINER,
  GoogleDevtoolsRemotebuildbotCommandStatus_Code
  #-}

-- | linux_isolation allows overriding the docker runtime used for containers started on Linux.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation {fromGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation :: Core.Text}
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

-- | Default value. Will be using Linux default runtime.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_LINUXISOLATIONUNSPECIFIED :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_LINUXISOLATIONUNSPECIFIED = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation "LINUX_ISOLATION_UNSPECIFIED"

-- | Use gVisor runsc runtime.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_Gvisor :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_Gvisor = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation "GVISOR"

-- | Use stardard Linux runtime. This has the same behaviour as unspecified, but it can be used to revert back from gVisor.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_Off :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_Off = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation "OFF"

{-# COMPLETE
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_LINUXISOLATIONUNSPECIFIED,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_Gvisor,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation_Off,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation
  #-}

-- | The policy of the feature.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy {fromGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy :: Core.Text}
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

-- | Default value, if not explicitly set. Equivalent to FORBIDDEN, unless otherwise documented on a specific Feature.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_POLICYUNSPECIFIED :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_POLICYUNSPECIFIED = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy "POLICY_UNSPECIFIED"

-- | Feature is explicitly allowed.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Allowed :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Allowed = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy "ALLOWED"

-- | Feature is forbidden. Requests attempting to leverage it will get an FailedPrecondition error, with a message like: \"Feature forbidden by FeaturePolicy: Feature on instance \"
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Forbidden :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Forbidden = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy "FORBIDDEN"

-- | Only the values specified in the @allowed_values@ are allowed.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Restricted :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Restricted = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy "RESTRICTED"

{-# COMPLETE
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_POLICYUNSPECIFIED,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Allowed,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Forbidden,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy_Restricted,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy
  #-}

-- | Output only. State of the instance.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State = GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State {fromGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State :: Core.Text}
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

-- | Not a valid state, but the default value of the enum.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_STATEUNSPECIFIED :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_STATEUNSPECIFIED = GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State "STATE_UNSPECIFIED"

-- | The instance is in state @CREATING@ once @CreateInstance@ is called and before the instance is ready for use.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Creating :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Creating = GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State "CREATING"

-- | The instance is in state @RUNNING@ when it is ready for use.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Running :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Running = GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State "RUNNING"

-- | An @INACTIVE@ instance indicates that there is a problem that needs to be fixed. Such instances cannot be used for execution and instances that remain in this state for a significant period of time will be removed permanently.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Inactive :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Inactive = GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State "INACTIVE"

{-# COMPLETE
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_STATEUNSPECIFIED,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Creating,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Running,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State_Inactive,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State
  #-}

-- | Output only. State of the worker pool.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State {fromGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State :: Core.Text}
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

-- | Not a valid state, but the default value of the enum.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_STATEUNSPECIFIED :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_STATEUNSPECIFIED = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State "STATE_UNSPECIFIED"

-- | The worker pool is in state @CREATING@ once @CreateWorkerPool@ is called and before all requested workers are ready.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Creating :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Creating = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State "CREATING"

-- | The worker pool is in state @RUNNING@ when all its workers are ready for use.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Running :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Running = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State "RUNNING"

-- | The worker pool is in state @UPDATING@ once @UpdateWorkerPool@ is called and before the new configuration has all the requested workers ready for use, and no older configuration has any workers. At that point the state transitions to @RUNNING@.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Updating :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Updating = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State "UPDATING"

-- | The worker pool is in state @DELETING@ once the @Delete@ method is called and before the deletion completes.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Deleting :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Deleting = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State "DELETING"

-- | The worker pool is in state @INACTIVE@ when the instance hosting the worker pool in not running.
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Inactive :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
pattern GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Inactive = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State "INACTIVE"

{-# COMPLETE
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_STATEUNSPECIFIED,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Creating,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Running,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Updating,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Deleting,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State_Inactive,
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
  #-}

-- | The admin action; see @Command@ for legal values.
newtype GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command = GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command {fromGoogleDevtoolsRemoteworkersV1test2AdminTemp_Command :: Core.Text}
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

-- | Illegal value.
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_Unspecified :: GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_Unspecified = GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command "UNSPECIFIED"

-- | Download and run a new version of the bot. @arg@ will be a resource accessible via @ByteStream.Read@ to obtain the new bot code.
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTUPDATE :: GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTUPDATE = GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command "BOT_UPDATE"

-- | Restart the bot without downloading a new version. @arg@ will be a message to log.
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTRESTART :: GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTRESTART = GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command "BOT_RESTART"

-- | Shut down the bot. @arg@ will be a task resource name (similar to those in tasks.proto) that the bot can use to tell the server that it is terminating.
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTTERMINATE :: GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTTERMINATE = GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command "BOT_TERMINATE"

-- | Restart the host computer. @arg@ will be a message to log.
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_HOSTRESTART :: GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
pattern GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_HOSTRESTART = GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command "HOST_RESTART"

{-# COMPLETE
  GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_Unspecified,
  GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTUPDATE,
  GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTRESTART,
  GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_BOTTERMINATE,
  GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command_HOSTRESTART,
  GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
  #-}
