{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.RemoteBuildExecution.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.RemoteBuildExecution.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The current stage of execution.
data BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage
    = Unknown
      -- ^ @UNKNOWN@
      -- Invalid value.
    | CacheCheck
      -- ^ @CACHE_CHECK@
      -- Checking the result against the cache.
    | Queued
      -- ^ @QUEUED@
      -- Currently idle, awaiting a free machine to execute.
    | Executing
      -- ^ @EXECUTING@
      -- Currently being executed by a worker.
    | Completed
      -- ^ @COMPLETED@
      -- Finished execution.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage

instance FromHttpApiData BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "CACHE_CHECK" -> Right CacheCheck
        "QUEUED" -> Right Queued
        "EXECUTING" -> Right Executing
        "COMPLETED" -> Right Completed
        x -> Left ("Unable to parse BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage from: " <> x)

instance ToHttpApiData BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        CacheCheck -> "CACHE_CHECK"
        Queued -> "QUEUED"
        Executing -> "EXECUTING"
        Completed -> "COMPLETED"

instance FromJSON BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage where
    parseJSON = parseJSONText "BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage"

instance ToJSON BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage where
    toJSON = toJSONText

-- | Output only. State of the instance.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not a valid state, but the default value of the enum.
    | Creating
      -- ^ @CREATING@
      -- The instance is in state \`CREATING\` once \`CreateInstance\` is called
      -- and before the instance is ready for use.
    | Running
      -- ^ @RUNNING@
      -- The instance is in state \`RUNNING\` when it is ready for use.
    | Inactive
      -- ^ @INACTIVE@
      -- An \`INACTIVE\` instance indicates that there is a problem that needs to
      -- be fixed. Such instances cannot be used for execution and instances that
      -- remain in this state for a significant period of time will be removed
      -- permanently.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState

instance FromHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "RUNNING" -> Right Running
        "INACTIVE" -> Right Inactive
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Running -> "RUNNING"
        Inactive -> "INACTIVE"

instance FromJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState"

instance ToJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState where
    toJSON = toJSONText

-- | linux_isolation allows overriding the docker runtime used for containers
-- started on Linux.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation
    = LinuxIsolationUnspecified
      -- ^ @LINUX_ISOLATION_UNSPECIFIED@
      -- Default value. Will be using Linux default runtime.
    | Gvisor
      -- ^ @GVISOR@
      -- Use gVisor runsc runtime.
    | Off
      -- ^ @OFF@
      -- Use stardard Linux runtime. This has the same behaviour as unspecified,
      -- but it can be used to revert back from gVisor.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation

instance FromHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation where
    parseQueryParam = \case
        "LINUX_ISOLATION_UNSPECIFIED" -> Right LinuxIsolationUnspecified
        "GVISOR" -> Right Gvisor
        "OFF" -> Right Off
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation where
    toQueryParam = \case
        LinuxIsolationUnspecified -> "LINUX_ISOLATION_UNSPECIFIED"
        Gvisor -> "GVISOR"
        Off -> "OFF"

instance FromJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation"

instance ToJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation where
    toJSON = toJSONText

-- | The status code.
data GoogleDevtoolsRemotebuildbotCommandStatusCode
    = GDRCSCOK
      -- ^ @OK@
      -- The command succeeded.
    | GDRCSCInvalidArgument
      -- ^ @INVALID_ARGUMENT@
      -- The command input was invalid.
    | GDRCSCDeadlineExceeded
      -- ^ @DEADLINE_EXCEEDED@
      -- The command had passed its expiry time while it was still running.
    | GDRCSCNotFound
      -- ^ @NOT_FOUND@
      -- The resources requested by the command were not found.
    | GDRCSCPermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The command failed due to permission errors.
    | GDRCSCInternal
      -- ^ @INTERNAL@
      -- The command failed because of some invariants expected by the underlying
      -- system have been broken. This usually indicates a bug wit the system.
    | GDRCSCAborted
      -- ^ @ABORTED@
      -- The command was aborted.
    | GDRCSCFailedPrecondition
      -- ^ @FAILED_PRECONDITION@
      -- The command failed because the system is not in a state required for the
      -- command, e.g. the command inputs cannot be found on the server.
    | GDRCSCCleanupError
      -- ^ @CLEANUP_ERROR@
      -- The bot failed to do the cleanup, e.g. unable to delete the command
      -- working directory or the command process.
    | GDRCSCDownloadInputsError
      -- ^ @DOWNLOAD_INPUTS_ERROR@
      -- The bot failed to download the inputs.
    | GDRCSCUnknown
      -- ^ @UNKNOWN@
      -- Unknown error.
    | GDRCSCUploadOutputsError
      -- ^ @UPLOAD_OUTPUTS_ERROR@
      -- The bot failed to upload the outputs.
    | GDRCSCUploadOutputsBytesLimitExceeded
      -- ^ @UPLOAD_OUTPUTS_BYTES_LIMIT_EXCEEDED@
      -- The bot tried to upload files having a total size that is too large.
    | GDRCSCDockerLoginError
      -- ^ @DOCKER_LOGIN_ERROR@
      -- The bot failed to login to docker.
    | GDRCSCDockerImagePullError
      -- ^ @DOCKER_IMAGE_PULL_ERROR@
      -- The bot failed to pull docker image.
    | GDRCSCDockerImageExistError
      -- ^ @DOCKER_IMAGE_EXIST_ERROR@
      -- The bot failed to check docker images.
    | GDRCSCDuplicateInputs
      -- ^ @DUPLICATE_INPUTS@
      -- The inputs contain duplicate files.
    | GDRCSCDockerImagePermissionDenied
      -- ^ @DOCKER_IMAGE_PERMISSION_DENIED@
      -- The bot doesn\'t have the permissions to pull docker images.
    | GDRCSCDockerImageNotFound
      -- ^ @DOCKER_IMAGE_NOT_FOUND@
      -- The docker image cannot be found.
    | GDRCSCWorkingDirNotFound
      -- ^ @WORKING_DIR_NOT_FOUND@
      -- Working directory is not found.
    | GDRCSCWorkingDirNotInBaseDir
      -- ^ @WORKING_DIR_NOT_IN_BASE_DIR@
      -- Working directory is not under the base directory
    | GDRCSCDockerUnavailable
      -- ^ @DOCKER_UNAVAILABLE@
      -- There are issues with docker service\/runtime.
    | GDRCSCNoCudaCapableDevice
      -- ^ @NO_CUDA_CAPABLE_DEVICE@
      -- The command failed with \"no cuda-capable device is detected\" error.
    | GDRCSCRemoteCasDownloadError
      -- ^ @REMOTE_CAS_DOWNLOAD_ERROR@
      -- The bot encountered errors from remote CAS when downloading blobs.
    | GDRCSCRemoteCasUploadError
      -- ^ @REMOTE_CAS_UPLOAD_ERROR@
      -- The bot encountered errors from remote CAS when uploading blobs.
    | GDRCSCLocalCasproxyNotRunning
      -- ^ @LOCAL_CASPROXY_NOT_RUNNING@
      -- The local casproxy is not running.
    | GDRCSCDockerCreateContainerError
      -- ^ @DOCKER_CREATE_CONTAINER_ERROR@
      -- The bot couldn\'t start the container.
    | GDRCSCDockerInvalidUlimit
      -- ^ @DOCKER_INVALID_ULIMIT@
      -- The docker ulimit is not valid.
    | GDRCSCDockerUnknownRuntime
      -- ^ @DOCKER_UNKNOWN_RUNTIME@
      -- The docker runtime is unknown.
    | GDRCSCDockerUnknownCapability
      -- ^ @DOCKER_UNKNOWN_CAPABILITY@
      -- The docker capability is unknown.
    | GDRCSCDockerUnknownError
      -- ^ @DOCKER_UNKNOWN_ERROR@
      -- The command failed with unknown docker errors.
    | GDRCSCDockerCreateComputeSystemError
      -- ^ @DOCKER_CREATE_COMPUTE_SYSTEM_ERROR@
      -- Docker failed to run containers with CreateComputeSystem error.
    | GDRCSCDockerPreparelayerError
      -- ^ @DOCKER_PREPARELAYER_ERROR@
      -- Docker failed to run containers with hcsshim::PrepareLayer error.
    | GDRCSCDockerIncompatibleOSError
      -- ^ @DOCKER_INCOMPATIBLE_OS_ERROR@
      -- Docker incompatible operating system error.
    | GDRCSCDockerCreateRuntimeFileNotFound
      -- ^ @DOCKER_CREATE_RUNTIME_FILE_NOT_FOUND@
      -- Docker failed to create OCI runtime because of file not found.
    | GDRCSCDockerCreateRuntimePermissionDenied
      -- ^ @DOCKER_CREATE_RUNTIME_PERMISSION_DENIED@
      -- Docker failed to create OCI runtime because of permission denied.
    | GDRCSCDockerCreateProcessFileNotFound
      -- ^ @DOCKER_CREATE_PROCESS_FILE_NOT_FOUND@
      -- Docker failed to create process because of file not found.
    | GDRCSCDockerCreateComputeSystemIncorrectParameterError
      -- ^ @DOCKER_CREATE_COMPUTE_SYSTEM_INCORRECT_PARAMETER_ERROR@
      -- Docker failed to run containers with CreateComputeSystem error that
      -- involves an incorrect parameter (more specific version of
      -- DOCKER_CREATE_COMPUTE_SYSTEM_ERROR that is user-caused).
    | GDRCSCDockerTooManySymbolicLinkLevels
      -- ^ @DOCKER_TOO_MANY_SYMBOLIC_LINK_LEVELS@
      -- Docker failed to create an overlay mount because of too many levels of
      -- symbolic links.
    | GDRCSCLocalContainerManagerNotRunning
      -- ^ @LOCAL_CONTAINER_MANAGER_NOT_RUNNING@
      -- The local Container Manager is not running.
    | GDRCSCDockerImageVPCscPermissionDenied
      -- ^ @DOCKER_IMAGE_VPCSC_PERMISSION_DENIED@
      -- Docker failed because a request was denied by the organization\'s
      -- policy.
    | GDRCSCWorkingDirNotRelative
      -- ^ @WORKING_DIR_NOT_RELATIVE@
      -- Working directory is not relative
    | GDRCSCDockerMissingContainer
      -- ^ @DOCKER_MISSING_CONTAINER@
      -- Docker cannot find the container specified in the command. This error is
      -- likely to only occur if an asynchronous container is not running when
      -- the command is run.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildbotCommandStatusCode

instance FromHttpApiData GoogleDevtoolsRemotebuildbotCommandStatusCode where
    parseQueryParam = \case
        "OK" -> Right GDRCSCOK
        "INVALID_ARGUMENT" -> Right GDRCSCInvalidArgument
        "DEADLINE_EXCEEDED" -> Right GDRCSCDeadlineExceeded
        "NOT_FOUND" -> Right GDRCSCNotFound
        "PERMISSION_DENIED" -> Right GDRCSCPermissionDenied
        "INTERNAL" -> Right GDRCSCInternal
        "ABORTED" -> Right GDRCSCAborted
        "FAILED_PRECONDITION" -> Right GDRCSCFailedPrecondition
        "CLEANUP_ERROR" -> Right GDRCSCCleanupError
        "DOWNLOAD_INPUTS_ERROR" -> Right GDRCSCDownloadInputsError
        "UNKNOWN" -> Right GDRCSCUnknown
        "UPLOAD_OUTPUTS_ERROR" -> Right GDRCSCUploadOutputsError
        "UPLOAD_OUTPUTS_BYTES_LIMIT_EXCEEDED" -> Right GDRCSCUploadOutputsBytesLimitExceeded
        "DOCKER_LOGIN_ERROR" -> Right GDRCSCDockerLoginError
        "DOCKER_IMAGE_PULL_ERROR" -> Right GDRCSCDockerImagePullError
        "DOCKER_IMAGE_EXIST_ERROR" -> Right GDRCSCDockerImageExistError
        "DUPLICATE_INPUTS" -> Right GDRCSCDuplicateInputs
        "DOCKER_IMAGE_PERMISSION_DENIED" -> Right GDRCSCDockerImagePermissionDenied
        "DOCKER_IMAGE_NOT_FOUND" -> Right GDRCSCDockerImageNotFound
        "WORKING_DIR_NOT_FOUND" -> Right GDRCSCWorkingDirNotFound
        "WORKING_DIR_NOT_IN_BASE_DIR" -> Right GDRCSCWorkingDirNotInBaseDir
        "DOCKER_UNAVAILABLE" -> Right GDRCSCDockerUnavailable
        "NO_CUDA_CAPABLE_DEVICE" -> Right GDRCSCNoCudaCapableDevice
        "REMOTE_CAS_DOWNLOAD_ERROR" -> Right GDRCSCRemoteCasDownloadError
        "REMOTE_CAS_UPLOAD_ERROR" -> Right GDRCSCRemoteCasUploadError
        "LOCAL_CASPROXY_NOT_RUNNING" -> Right GDRCSCLocalCasproxyNotRunning
        "DOCKER_CREATE_CONTAINER_ERROR" -> Right GDRCSCDockerCreateContainerError
        "DOCKER_INVALID_ULIMIT" -> Right GDRCSCDockerInvalidUlimit
        "DOCKER_UNKNOWN_RUNTIME" -> Right GDRCSCDockerUnknownRuntime
        "DOCKER_UNKNOWN_CAPABILITY" -> Right GDRCSCDockerUnknownCapability
        "DOCKER_UNKNOWN_ERROR" -> Right GDRCSCDockerUnknownError
        "DOCKER_CREATE_COMPUTE_SYSTEM_ERROR" -> Right GDRCSCDockerCreateComputeSystemError
        "DOCKER_PREPARELAYER_ERROR" -> Right GDRCSCDockerPreparelayerError
        "DOCKER_INCOMPATIBLE_OS_ERROR" -> Right GDRCSCDockerIncompatibleOSError
        "DOCKER_CREATE_RUNTIME_FILE_NOT_FOUND" -> Right GDRCSCDockerCreateRuntimeFileNotFound
        "DOCKER_CREATE_RUNTIME_PERMISSION_DENIED" -> Right GDRCSCDockerCreateRuntimePermissionDenied
        "DOCKER_CREATE_PROCESS_FILE_NOT_FOUND" -> Right GDRCSCDockerCreateProcessFileNotFound
        "DOCKER_CREATE_COMPUTE_SYSTEM_INCORRECT_PARAMETER_ERROR" -> Right GDRCSCDockerCreateComputeSystemIncorrectParameterError
        "DOCKER_TOO_MANY_SYMBOLIC_LINK_LEVELS" -> Right GDRCSCDockerTooManySymbolicLinkLevels
        "LOCAL_CONTAINER_MANAGER_NOT_RUNNING" -> Right GDRCSCLocalContainerManagerNotRunning
        "DOCKER_IMAGE_VPCSC_PERMISSION_DENIED" -> Right GDRCSCDockerImageVPCscPermissionDenied
        "WORKING_DIR_NOT_RELATIVE" -> Right GDRCSCWorkingDirNotRelative
        "DOCKER_MISSING_CONTAINER" -> Right GDRCSCDockerMissingContainer
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildbotCommandStatusCode from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildbotCommandStatusCode where
    toQueryParam = \case
        GDRCSCOK -> "OK"
        GDRCSCInvalidArgument -> "INVALID_ARGUMENT"
        GDRCSCDeadlineExceeded -> "DEADLINE_EXCEEDED"
        GDRCSCNotFound -> "NOT_FOUND"
        GDRCSCPermissionDenied -> "PERMISSION_DENIED"
        GDRCSCInternal -> "INTERNAL"
        GDRCSCAborted -> "ABORTED"
        GDRCSCFailedPrecondition -> "FAILED_PRECONDITION"
        GDRCSCCleanupError -> "CLEANUP_ERROR"
        GDRCSCDownloadInputsError -> "DOWNLOAD_INPUTS_ERROR"
        GDRCSCUnknown -> "UNKNOWN"
        GDRCSCUploadOutputsError -> "UPLOAD_OUTPUTS_ERROR"
        GDRCSCUploadOutputsBytesLimitExceeded -> "UPLOAD_OUTPUTS_BYTES_LIMIT_EXCEEDED"
        GDRCSCDockerLoginError -> "DOCKER_LOGIN_ERROR"
        GDRCSCDockerImagePullError -> "DOCKER_IMAGE_PULL_ERROR"
        GDRCSCDockerImageExistError -> "DOCKER_IMAGE_EXIST_ERROR"
        GDRCSCDuplicateInputs -> "DUPLICATE_INPUTS"
        GDRCSCDockerImagePermissionDenied -> "DOCKER_IMAGE_PERMISSION_DENIED"
        GDRCSCDockerImageNotFound -> "DOCKER_IMAGE_NOT_FOUND"
        GDRCSCWorkingDirNotFound -> "WORKING_DIR_NOT_FOUND"
        GDRCSCWorkingDirNotInBaseDir -> "WORKING_DIR_NOT_IN_BASE_DIR"
        GDRCSCDockerUnavailable -> "DOCKER_UNAVAILABLE"
        GDRCSCNoCudaCapableDevice -> "NO_CUDA_CAPABLE_DEVICE"
        GDRCSCRemoteCasDownloadError -> "REMOTE_CAS_DOWNLOAD_ERROR"
        GDRCSCRemoteCasUploadError -> "REMOTE_CAS_UPLOAD_ERROR"
        GDRCSCLocalCasproxyNotRunning -> "LOCAL_CASPROXY_NOT_RUNNING"
        GDRCSCDockerCreateContainerError -> "DOCKER_CREATE_CONTAINER_ERROR"
        GDRCSCDockerInvalidUlimit -> "DOCKER_INVALID_ULIMIT"
        GDRCSCDockerUnknownRuntime -> "DOCKER_UNKNOWN_RUNTIME"
        GDRCSCDockerUnknownCapability -> "DOCKER_UNKNOWN_CAPABILITY"
        GDRCSCDockerUnknownError -> "DOCKER_UNKNOWN_ERROR"
        GDRCSCDockerCreateComputeSystemError -> "DOCKER_CREATE_COMPUTE_SYSTEM_ERROR"
        GDRCSCDockerPreparelayerError -> "DOCKER_PREPARELAYER_ERROR"
        GDRCSCDockerIncompatibleOSError -> "DOCKER_INCOMPATIBLE_OS_ERROR"
        GDRCSCDockerCreateRuntimeFileNotFound -> "DOCKER_CREATE_RUNTIME_FILE_NOT_FOUND"
        GDRCSCDockerCreateRuntimePermissionDenied -> "DOCKER_CREATE_RUNTIME_PERMISSION_DENIED"
        GDRCSCDockerCreateProcessFileNotFound -> "DOCKER_CREATE_PROCESS_FILE_NOT_FOUND"
        GDRCSCDockerCreateComputeSystemIncorrectParameterError -> "DOCKER_CREATE_COMPUTE_SYSTEM_INCORRECT_PARAMETER_ERROR"
        GDRCSCDockerTooManySymbolicLinkLevels -> "DOCKER_TOO_MANY_SYMBOLIC_LINK_LEVELS"
        GDRCSCLocalContainerManagerNotRunning -> "LOCAL_CONTAINER_MANAGER_NOT_RUNNING"
        GDRCSCDockerImageVPCscPermissionDenied -> "DOCKER_IMAGE_VPCSC_PERMISSION_DENIED"
        GDRCSCWorkingDirNotRelative -> "WORKING_DIR_NOT_RELATIVE"
        GDRCSCDockerMissingContainer -> "DOCKER_MISSING_CONTAINER"

instance FromJSON GoogleDevtoolsRemotebuildbotCommandStatusCode where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildbotCommandStatusCode"

instance ToJSON GoogleDevtoolsRemotebuildbotCommandStatusCode where
    toJSON = toJSONText

data BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem
    = BBREVCCDFIUnknown
      -- ^ @UNKNOWN@
      -- It is an error for the server to return this value.
    | BBREVCCDFISHA256
      -- ^ @SHA256@
      -- The SHA-256 digest function.
    | BBREVCCDFISHA1
      -- ^ @SHA1@
      -- The SHA-1 digest function.
    | BBREVCCDFIMD5
      -- ^ @MD5@
      -- The MD5 digest function.
    | BBREVCCDFIVso
      -- ^ @VSO@
      -- The Microsoft \"VSO-Hash\" paged SHA256 digest function. See
      -- https:\/\/github.com\/microsoft\/BuildXL\/blob\/master\/Documentation\/Specs\/PagedHash.md
      -- .
    | BBREVCCDFISHA384
      -- ^ @SHA384@
      -- The SHA-384 digest function.
    | BBREVCCDFISHA512
      -- ^ @SHA512@
      -- The SHA-512 digest function.
    | BBREVCCDFIMURMUR3
      -- ^ @MURMUR3@
      -- Murmur3 128-bit digest function, x64 variant. Note that this is not a
      -- cryptographic hash function and its collision properties are not
      -- strongly guaranteed. See
      -- https:\/\/github.com\/aappleby\/smhasher\/wiki\/MurmurHash3 .
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem

instance FromHttpApiData BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem where
    parseQueryParam = \case
        "UNKNOWN" -> Right BBREVCCDFIUnknown
        "SHA256" -> Right BBREVCCDFISHA256
        "SHA1" -> Right BBREVCCDFISHA1
        "MD5" -> Right BBREVCCDFIMD5
        "VSO" -> Right BBREVCCDFIVso
        "SHA384" -> Right BBREVCCDFISHA384
        "SHA512" -> Right BBREVCCDFISHA512
        "MURMUR3" -> Right BBREVCCDFIMURMUR3
        x -> Left ("Unable to parse BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem from: " <> x)

instance ToHttpApiData BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem where
    toQueryParam = \case
        BBREVCCDFIUnknown -> "UNKNOWN"
        BBREVCCDFISHA256 -> "SHA256"
        BBREVCCDFISHA1 -> "SHA1"
        BBREVCCDFIMD5 -> "MD5"
        BBREVCCDFIVso -> "VSO"
        BBREVCCDFISHA384 -> "SHA384"
        BBREVCCDFISHA512 -> "SHA512"
        BBREVCCDFIMURMUR3 -> "MURMUR3"

instance FromJSON BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem where
    parseJSON = parseJSONText "BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem"

instance ToJSON BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem where
    toJSON = toJSONText

-- | Indicates whether output files and\/or output directories were found
-- relative to the execution root or to the user provided work directory or
-- both or none.
data GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation
    = LocationUndefined
      -- ^ @LOCATION_UNDEFINED@
      -- Location is set to LOCATION_UNDEFINED for tasks where the working
      -- directorty is not specified or is identical to the execution root
      -- directory.
    | LocationNone
      -- ^ @LOCATION_NONE@
      -- No output files or directories were found neither relative to the
      -- execution root directory nor relative to the working directory.
    | LocationExecRootRelative
      -- ^ @LOCATION_EXEC_ROOT_RELATIVE@
      -- Output files or directories were found relative to the execution root
      -- directory but not relative to the working directory.
    | LocationWorkingDirRelative
      -- ^ @LOCATION_WORKING_DIR_RELATIVE@
      -- Output files or directories were found relative to the working directory
      -- but not relative to the execution root directory.
    | LocationExecRootAndWorkingDirRelative
      -- ^ @LOCATION_EXEC_ROOT_AND_WORKING_DIR_RELATIVE@
      -- Output files or directories were found both relative to the execution
      -- root directory and relative to the working directory.
    | LocationExecRootRelativeOutputOutsideWorkingDir
      -- ^ @LOCATION_EXEC_ROOT_RELATIVE_OUTPUT_OUTSIDE_WORKING_DIR@
      -- Output files or directories were found relative to the execution root
      -- directory but not relative to the working directory. In addition at
      -- least one output file or directory was found outside of the working
      -- directory such that a working-directory-relative-path would have needed
      -- to start with a \`..\`.
    | LocationExecRootAndWorkingDirRelativeOutputOutsideWorkingDir
      -- ^ @LOCATION_EXEC_ROOT_AND_WORKING_DIR_RELATIVE_OUTPUT_OUTSIDE_WORKING_DIR@
      -- Output files or directories were found both relative to the execution
      -- root directory and relative to the working directory. In addition at
      -- least one exec-root-relative output file or directory was found outside
      -- of the working directory such that a working-directory-relative-path
      -- would have needed to start with a \`..\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation

instance FromHttpApiData GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation where
    parseQueryParam = \case
        "LOCATION_UNDEFINED" -> Right LocationUndefined
        "LOCATION_NONE" -> Right LocationNone
        "LOCATION_EXEC_ROOT_RELATIVE" -> Right LocationExecRootRelative
        "LOCATION_WORKING_DIR_RELATIVE" -> Right LocationWorkingDirRelative
        "LOCATION_EXEC_ROOT_AND_WORKING_DIR_RELATIVE" -> Right LocationExecRootAndWorkingDirRelative
        "LOCATION_EXEC_ROOT_RELATIVE_OUTPUT_OUTSIDE_WORKING_DIR" -> Right LocationExecRootRelativeOutputOutsideWorkingDir
        "LOCATION_EXEC_ROOT_AND_WORKING_DIR_RELATIVE_OUTPUT_OUTSIDE_WORKING_DIR" -> Right LocationExecRootAndWorkingDirRelativeOutputOutsideWorkingDir
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation where
    toQueryParam = \case
        LocationUndefined -> "LOCATION_UNDEFINED"
        LocationNone -> "LOCATION_NONE"
        LocationExecRootRelative -> "LOCATION_EXEC_ROOT_RELATIVE"
        LocationWorkingDirRelative -> "LOCATION_WORKING_DIR_RELATIVE"
        LocationExecRootAndWorkingDirRelative -> "LOCATION_EXEC_ROOT_AND_WORKING_DIR_RELATIVE"
        LocationExecRootRelativeOutputOutsideWorkingDir -> "LOCATION_EXEC_ROOT_RELATIVE_OUTPUT_OUTSIDE_WORKING_DIR"
        LocationExecRootAndWorkingDirRelativeOutputOutsideWorkingDir -> "LOCATION_EXEC_ROOT_AND_WORKING_DIR_RELATIVE_OUTPUT_OUTSIDE_WORKING_DIR"

instance FromJSON GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation"

instance ToJSON GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation where
    toJSON = toJSONText

-- | Output only. State of the worker pool.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState
    = GDRAVWPSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not a valid state, but the default value of the enum.
    | GDRAVWPSCreating
      -- ^ @CREATING@
      -- The worker pool is in state \`CREATING\` once \`CreateWorkerPool\` is
      -- called and before all requested workers are ready.
    | GDRAVWPSRunning
      -- ^ @RUNNING@
      -- The worker pool is in state \`RUNNING\` when all its workers are ready
      -- for use.
    | GDRAVWPSUpdating
      -- ^ @UPDATING@
      -- The worker pool is in state \`UPDATING\` once \`UpdateWorkerPool\` is
      -- called and before the new configuration has all the requested workers
      -- ready for use, and no older configuration has any workers. At that point
      -- the state transitions to \`RUNNING\`.
    | GDRAVWPSDeleting
      -- ^ @DELETING@
      -- The worker pool is in state \`DELETING\` once the \`Delete\` method is
      -- called and before the deletion completes.
    | GDRAVWPSInactive
      -- ^ @INACTIVE@
      -- The worker pool is in state \`INACTIVE\` when the instance hosting the
      -- worker pool in not running.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState

instance FromHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GDRAVWPSStateUnspecified
        "CREATING" -> Right GDRAVWPSCreating
        "RUNNING" -> Right GDRAVWPSRunning
        "UPDATING" -> Right GDRAVWPSUpdating
        "DELETING" -> Right GDRAVWPSDeleting
        "INACTIVE" -> Right GDRAVWPSInactive
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState where
    toQueryParam = \case
        GDRAVWPSStateUnspecified -> "STATE_UNSPECIFIED"
        GDRAVWPSCreating -> "CREATING"
        GDRAVWPSRunning -> "RUNNING"
        GDRAVWPSUpdating -> "UPDATING"
        GDRAVWPSDeleting -> "DELETING"
        GDRAVWPSInactive -> "INACTIVE"

instance FromJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState"

instance ToJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState where
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

-- | Remote execution may only support a single digest function.
data BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction
    = BBREVECDFUnknown
      -- ^ @UNKNOWN@
      -- It is an error for the server to return this value.
    | BBREVECDFSHA256
      -- ^ @SHA256@
      -- The SHA-256 digest function.
    | BBREVECDFSHA1
      -- ^ @SHA1@
      -- The SHA-1 digest function.
    | BBREVECDFMD5
      -- ^ @MD5@
      -- The MD5 digest function.
    | BBREVECDFVso
      -- ^ @VSO@
      -- The Microsoft \"VSO-Hash\" paged SHA256 digest function. See
      -- https:\/\/github.com\/microsoft\/BuildXL\/blob\/master\/Documentation\/Specs\/PagedHash.md
      -- .
    | BBREVECDFSHA384
      -- ^ @SHA384@
      -- The SHA-384 digest function.
    | BBREVECDFSHA512
      -- ^ @SHA512@
      -- The SHA-512 digest function.
    | BBREVECDFMURMUR3
      -- ^ @MURMUR3@
      -- Murmur3 128-bit digest function, x64 variant. Note that this is not a
      -- cryptographic hash function and its collision properties are not
      -- strongly guaranteed. See
      -- https:\/\/github.com\/aappleby\/smhasher\/wiki\/MurmurHash3 .
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction

instance FromHttpApiData BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction where
    parseQueryParam = \case
        "UNKNOWN" -> Right BBREVECDFUnknown
        "SHA256" -> Right BBREVECDFSHA256
        "SHA1" -> Right BBREVECDFSHA1
        "MD5" -> Right BBREVECDFMD5
        "VSO" -> Right BBREVECDFVso
        "SHA384" -> Right BBREVECDFSHA384
        "SHA512" -> Right BBREVECDFSHA512
        "MURMUR3" -> Right BBREVECDFMURMUR3
        x -> Left ("Unable to parse BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction from: " <> x)

instance ToHttpApiData BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction where
    toQueryParam = \case
        BBREVECDFUnknown -> "UNKNOWN"
        BBREVECDFSHA256 -> "SHA256"
        BBREVECDFSHA1 -> "SHA1"
        BBREVECDFMD5 -> "MD5"
        BBREVECDFVso -> "VSO"
        BBREVECDFSHA384 -> "SHA384"
        BBREVECDFSHA512 -> "SHA512"
        BBREVECDFMURMUR3 -> "MURMUR3"

instance FromJSON BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction where
    parseJSON = parseJSONText "BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction"

instance ToJSON BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction where
    toJSON = toJSONText

-- | Indicates if and how Container Manager is being used for task execution.
data GoogleDevtoolsRemotebuildbotCommandEventsCmUsage
    = ConfigNone
      -- ^ @CONFIG_NONE@
      -- Container Manager is disabled or not running for this execution.
    | ConfigMatch
      -- ^ @CONFIG_MATCH@
      -- Container Manager is enabled and there was a matching container
      -- available for use during execution.
    | ConfigMismatch
      -- ^ @CONFIG_MISMATCH@
      -- Container Manager is enabled, but there was no matching container
      -- available for execution.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildbotCommandEventsCmUsage

instance FromHttpApiData GoogleDevtoolsRemotebuildbotCommandEventsCmUsage where
    parseQueryParam = \case
        "CONFIG_NONE" -> Right ConfigNone
        "CONFIG_MATCH" -> Right ConfigMatch
        "CONFIG_MISMATCH" -> Right ConfigMismatch
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildbotCommandEventsCmUsage from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildbotCommandEventsCmUsage where
    toQueryParam = \case
        ConfigNone -> "CONFIG_NONE"
        ConfigMatch -> "CONFIG_MATCH"
        ConfigMismatch -> "CONFIG_MISMATCH"

instance FromJSON GoogleDevtoolsRemotebuildbotCommandEventsCmUsage where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildbotCommandEventsCmUsage"

instance ToJSON GoogleDevtoolsRemotebuildbotCommandEventsCmUsage where
    toJSON = toJSONText

-- | Whether absolute symlink targets are supported.
data BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy
    = BBREVCCSAPSUnknown
      -- ^ @UNKNOWN@
      -- Invalid value.
    | BBREVCCSAPSDisallowed
      -- ^ @DISALLOWED@
      -- Server will return an \`INVALID_ARGUMENT\` on input symlinks with
      -- absolute targets. If an action tries to create an output symlink with an
      -- absolute target, a \`FAILED_PRECONDITION\` will be returned.
    | BBREVCCSAPSAllowed
      -- ^ @ALLOWED@
      -- Server will allow symlink targets to escape the input root tree,
      -- possibly resulting in non-hermetic builds.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy

instance FromHttpApiData BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy where
    parseQueryParam = \case
        "UNKNOWN" -> Right BBREVCCSAPSUnknown
        "DISALLOWED" -> Right BBREVCCSAPSDisallowed
        "ALLOWED" -> Right BBREVCCSAPSAllowed
        x -> Left ("Unable to parse BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy from: " <> x)

instance ToHttpApiData BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy where
    toQueryParam = \case
        BBREVCCSAPSUnknown -> "UNKNOWN"
        BBREVCCSAPSDisallowed -> "DISALLOWED"
        BBREVCCSAPSAllowed -> "ALLOWED"

instance FromJSON BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy where
    parseJSON = parseJSONText "BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy"

instance ToJSON BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy where
    toJSON = toJSONText

-- | The admin action; see \`Command\` for legal values.
data GoogleDevtoolsRemoteworkersV1test2AdminTempCommand
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- Illegal value.
    | BotUpdate
      -- ^ @BOT_UPDATE@
      -- Download and run a new version of the bot. \`arg\` will be a resource
      -- accessible via \`ByteStream.Read\` to obtain the new bot code.
    | BotRestart
      -- ^ @BOT_RESTART@
      -- Restart the bot without downloading a new version. \`arg\` will be a
      -- message to log.
    | BotTerminate
      -- ^ @BOT_TERMINATE@
      -- Shut down the bot. \`arg\` will be a task resource name (similar to
      -- those in tasks.proto) that the bot can use to tell the server that it is
      -- terminating.
    | HostRestart
      -- ^ @HOST_RESTART@
      -- Restart the host computer. \`arg\` will be a message to log.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemoteworkersV1test2AdminTempCommand

instance FromHttpApiData GoogleDevtoolsRemoteworkersV1test2AdminTempCommand where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "BOT_UPDATE" -> Right BotUpdate
        "BOT_RESTART" -> Right BotRestart
        "BOT_TERMINATE" -> Right BotTerminate
        "HOST_RESTART" -> Right HostRestart
        x -> Left ("Unable to parse GoogleDevtoolsRemoteworkersV1test2AdminTempCommand from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemoteworkersV1test2AdminTempCommand where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        BotUpdate -> "BOT_UPDATE"
        BotRestart -> "BOT_RESTART"
        BotTerminate -> "BOT_TERMINATE"
        HostRestart -> "HOST_RESTART"

instance FromJSON GoogleDevtoolsRemoteworkersV1test2AdminTempCommand where
    parseJSON = parseJSONText "GoogleDevtoolsRemoteworkersV1test2AdminTempCommand"

instance ToJSON GoogleDevtoolsRemoteworkersV1test2AdminTempCommand where
    toJSON = toJSONText

data BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem
    = Identity
      -- ^ @IDENTITY@
      -- No compression. Servers and clients MUST always support this, and do not
      -- need to advertise it.
    | Zstd
      -- ^ @ZSTD@
      -- Zstandard compression.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem

instance FromHttpApiData BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem where
    parseQueryParam = \case
        "IDENTITY" -> Right Identity
        "ZSTD" -> Right Zstd
        x -> Left ("Unable to parse BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem from: " <> x)

instance ToHttpApiData BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem where
    toQueryParam = \case
        Identity -> "IDENTITY"
        Zstd -> "ZSTD"

instance FromJSON BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem where
    parseJSON = parseJSONText "BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem"

instance ToJSON BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem where
    toJSON = toJSONText

-- | The policy of the feature.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy
    = PolicyUnspecified
      -- ^ @POLICY_UNSPECIFIED@
      -- Default value, if not explicitly set. Equivalent to FORBIDDEN, unless
      -- otherwise documented on a specific Feature.
    | Allowed
      -- ^ @ALLOWED@
      -- Feature is explicitly allowed.
    | ForBidden
      -- ^ @FORBIDDEN@
      -- Feature is forbidden. Requests attempting to leverage it will get an
      -- FailedPrecondition error, with a message like: \"Feature forbidden by
      -- FeaturePolicy: Feature on instance \"
    | Restricted
      -- ^ @RESTRICTED@
      -- Only the values specified in the \`allowed_values\` are allowed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy

instance FromHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy where
    parseQueryParam = \case
        "POLICY_UNSPECIFIED" -> Right PolicyUnspecified
        "ALLOWED" -> Right Allowed
        "FORBIDDEN" -> Right ForBidden
        "RESTRICTED" -> Right Restricted
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy where
    toQueryParam = \case
        PolicyUnspecified -> "POLICY_UNSPECIFIED"
        Allowed -> "ALLOWED"
        ForBidden -> "FORBIDDEN"
        Restricted -> "RESTRICTED"

instance FromJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy"

instance ToJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy where
    toJSON = toJSONText
