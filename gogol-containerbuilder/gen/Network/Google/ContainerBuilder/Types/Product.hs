{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerBuilder.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ContainerBuilder.Types.Product where

import Network.Google.ContainerBuilder.Types.Sum
import Network.Google.Prelude

-- | A step in the build pipeline.
--
-- /See:/ 'buildStep' smart constructor.
data BuildStep =
  BuildStep'
    { _bsStatus :: !(Maybe BuildStepStatus)
    , _bsDir :: !(Maybe Text)
    , _bsArgs :: !(Maybe [Text])
    , _bsEnv :: !(Maybe [Text])
    , _bsPullTiming :: !(Maybe TimeSpan)
    , _bsEntrypoint :: !(Maybe Text)
    , _bsWaitFor :: !(Maybe [Text])
    , _bsName :: !(Maybe Text)
    , _bsId :: !(Maybe Text)
    , _bsTiming :: !(Maybe TimeSpan)
    , _bsSecretEnv :: !(Maybe [Text])
    , _bsTimeout :: !(Maybe GDuration)
    , _bsVolumes :: !(Maybe [Volume])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsStatus'
--
-- * 'bsDir'
--
-- * 'bsArgs'
--
-- * 'bsEnv'
--
-- * 'bsPullTiming'
--
-- * 'bsEntrypoint'
--
-- * 'bsWaitFor'
--
-- * 'bsName'
--
-- * 'bsId'
--
-- * 'bsTiming'
--
-- * 'bsSecretEnv'
--
-- * 'bsTimeout'
--
-- * 'bsVolumes'
buildStep
    :: BuildStep
buildStep =
  BuildStep'
    { _bsStatus = Nothing
    , _bsDir = Nothing
    , _bsArgs = Nothing
    , _bsEnv = Nothing
    , _bsPullTiming = Nothing
    , _bsEntrypoint = Nothing
    , _bsWaitFor = Nothing
    , _bsName = Nothing
    , _bsId = Nothing
    , _bsTiming = Nothing
    , _bsSecretEnv = Nothing
    , _bsTimeout = Nothing
    , _bsVolumes = Nothing
    }


-- | Output only. Status of the build step. At this time, build step status
-- is only updated on build completion; step status is not updated in
-- real-time as the build progresses.
bsStatus :: Lens' BuildStep (Maybe BuildStepStatus)
bsStatus = lens _bsStatus (\ s a -> s{_bsStatus = a})

-- | Working directory to use when running this step\'s container. If this
-- value is a relative path, it is relative to the build\'s working
-- directory. If this value is absolute, it may be outside the build\'s
-- working directory, in which case the contents of the path may not be
-- persisted across build step executions, unless a \`volume\` for that
-- path is specified. If the build specifies a \`RepoSource\` with \`dir\`
-- and a step with a \`dir\`, which specifies an absolute path, the
-- \`RepoSource\` \`dir\` is ignored for the step\'s execution.
bsDir :: Lens' BuildStep (Maybe Text)
bsDir = lens _bsDir (\ s a -> s{_bsDir = a})

-- | A list of arguments that will be presented to the step when it is
-- started. If the image used to run the step\'s container has an
-- entrypoint, the \`args\` are used as arguments to that entrypoint. If
-- the image does not define an entrypoint, the first element in args is
-- used as the entrypoint, and the remainder will be used as arguments.
bsArgs :: Lens' BuildStep [Text]
bsArgs
  = lens _bsArgs (\ s a -> s{_bsArgs = a}) . _Default .
      _Coerce

-- | A list of environment variable definitions to be used when running a
-- step. The elements are of the form \"KEY=VALUE\" for the environment
-- variable \"KEY\" being given the value \"VALUE\".
bsEnv :: Lens' BuildStep [Text]
bsEnv
  = lens _bsEnv (\ s a -> s{_bsEnv = a}) . _Default .
      _Coerce

-- | Output only. Stores timing information for pulling this build step\'s
-- builder image only.
bsPullTiming :: Lens' BuildStep (Maybe TimeSpan)
bsPullTiming
  = lens _bsPullTiming (\ s a -> s{_bsPullTiming = a})

-- | Entrypoint to be used instead of the build step image\'s default
-- entrypoint. If unset, the image\'s default entrypoint is used.
bsEntrypoint :: Lens' BuildStep (Maybe Text)
bsEntrypoint
  = lens _bsEntrypoint (\ s a -> s{_bsEntrypoint = a})

-- | The ID(s) of the step(s) that this build step depends on. This build
-- step will not start until all the build steps in \`wait_for\` have
-- completed successfully. If \`wait_for\` is empty, this build step will
-- start when all previous build steps in the \`Build.Steps\` list have
-- completed successfully.
bsWaitFor :: Lens' BuildStep [Text]
bsWaitFor
  = lens _bsWaitFor (\ s a -> s{_bsWaitFor = a}) .
      _Default
      . _Coerce

-- | Required. The name of the container image that will run this particular
-- build step. If the image is available in the host\'s Docker daemon\'s
-- cache, it will be run directly. If not, the host will attempt to pull
-- the image first, using the builder service account\'s credentials if
-- necessary. The Docker daemon\'s cache will already have the latest
-- versions of all of the officially supported build steps
-- ([https:\/\/github.com\/GoogleCloudPlatform\/cloud-builders](https:\/\/github.com\/GoogleCloudPlatform\/cloud-builders)).
-- The Docker daemon will also have cached many of the layers for some
-- popular images, like \"ubuntu\", \"debian\", but they will be refreshed
-- at the time you attempt to use them. If you built an image in a previous
-- build step, it will be stored in the host\'s Docker daemon\'s cache and
-- is available to use as the name for a later build step.
bsName :: Lens' BuildStep (Maybe Text)
bsName = lens _bsName (\ s a -> s{_bsName = a})

-- | Unique identifier for this build step, used in \`wait_for\` to reference
-- this build step as a dependency.
bsId :: Lens' BuildStep (Maybe Text)
bsId = lens _bsId (\ s a -> s{_bsId = a})

-- | Output only. Stores timing information for executing this build step.
bsTiming :: Lens' BuildStep (Maybe TimeSpan)
bsTiming = lens _bsTiming (\ s a -> s{_bsTiming = a})

-- | A list of environment variables which are encrypted using a Cloud Key
-- Management Service crypto key. These values must be specified in the
-- build\'s \`Secret\`.
bsSecretEnv :: Lens' BuildStep [Text]
bsSecretEnv
  = lens _bsSecretEnv (\ s a -> s{_bsSecretEnv = a}) .
      _Default
      . _Coerce

-- | Time limit for executing this build step. If not defined, the step has
-- no time limit and will be allowed to continue to run until either it
-- completes or the build itself times out.
bsTimeout :: Lens' BuildStep (Maybe Scientific)
bsTimeout
  = lens _bsTimeout (\ s a -> s{_bsTimeout = a}) .
      mapping _GDuration

-- | List of volumes to mount into the build step. Each volume is created as
-- an empty volume prior to execution of the build step. Upon completion of
-- the build, volumes and their contents are discarded. Using a named
-- volume in only one step is not valid as it is indicative of a build
-- request with an incorrect configuration.
bsVolumes :: Lens' BuildStep [Volume]
bsVolumes
  = lens _bsVolumes (\ s a -> s{_bsVolumes = a}) .
      _Default
      . _Coerce

instance FromJSON BuildStep where
        parseJSON
          = withObject "BuildStep"
              (\ o ->
                 BuildStep' <$>
                   (o .:? "status") <*> (o .:? "dir") <*>
                     (o .:? "args" .!= mempty)
                     <*> (o .:? "env" .!= mempty)
                     <*> (o .:? "pullTiming")
                     <*> (o .:? "entrypoint")
                     <*> (o .:? "waitFor" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "timing")
                     <*> (o .:? "secretEnv" .!= mempty)
                     <*> (o .:? "timeout")
                     <*> (o .:? "volumes" .!= mempty))

instance ToJSON BuildStep where
        toJSON BuildStep'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bsStatus, ("dir" .=) <$> _bsDir,
                  ("args" .=) <$> _bsArgs, ("env" .=) <$> _bsEnv,
                  ("pullTiming" .=) <$> _bsPullTiming,
                  ("entrypoint" .=) <$> _bsEntrypoint,
                  ("waitFor" .=) <$> _bsWaitFor,
                  ("name" .=) <$> _bsName, ("id" .=) <$> _bsId,
                  ("timing" .=) <$> _bsTiming,
                  ("secretEnv" .=) <$> _bsSecretEnv,
                  ("timeout" .=) <$> _bsTimeout,
                  ("volumes" .=) <$> _bsVolumes])

-- | Defines the configuration to be used for creating workers in the pool.
--
-- /See:/ 'workerConfig' smart constructor.
data WorkerConfig =
  WorkerConfig'
    { _wcDiskSizeGb :: !(Maybe (Textual Int64))
    , _wcMachineType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcDiskSizeGb'
--
-- * 'wcMachineType'
workerConfig
    :: WorkerConfig
workerConfig = WorkerConfig' {_wcDiskSizeGb = Nothing, _wcMachineType = Nothing}


-- | Size of the disk attached to the worker, in GB. See [Worker pool config
-- file](https:\/\/cloud.google.com\/build\/docs\/private-pools\/worker-pool-config-file-schema).
-- Specify a value of up to 1000. If \`0\` is specified, Cloud Build will
-- use a standard disk size.
wcDiskSizeGb :: Lens' WorkerConfig (Maybe Int64)
wcDiskSizeGb
  = lens _wcDiskSizeGb (\ s a -> s{_wcDiskSizeGb = a})
      . mapping _Coerce

-- | Machine type of a worker, such as \`e2-medium\`. See [Worker pool config
-- file](https:\/\/cloud.google.com\/build\/docs\/private-pools\/worker-pool-config-file-schema).
-- If left blank, Cloud Build will use a sensible default.
wcMachineType :: Lens' WorkerConfig (Maybe Text)
wcMachineType
  = lens _wcMachineType
      (\ s a -> s{_wcMachineType = a})

instance FromJSON WorkerConfig where
        parseJSON
          = withObject "WorkerConfig"
              (\ o ->
                 WorkerConfig' <$>
                   (o .:? "diskSizeGb") <*> (o .:? "machineType"))

instance ToJSON WorkerConfig where
        toJSON WorkerConfig'{..}
          = object
              (catMaybes
                 [("diskSizeGb" .=) <$> _wcDiskSizeGb,
                  ("machineType" .=) <$> _wcMachineType])

-- | Provenance of the source. Ways to find the original source, or verify
-- that some source was used for this build.
--
-- /See:/ 'sourceProvenance' smart constructor.
data SourceProvenance =
  SourceProvenance'
    { _spResolvedRepoSource :: !(Maybe RepoSource)
    , _spResolvedStorageSourceManifest :: !(Maybe StorageSourceManifest)
    , _spResolvedStorageSource :: !(Maybe StorageSource)
    , _spFileHashes :: !(Maybe SourceProvenanceFileHashes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceProvenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spResolvedRepoSource'
--
-- * 'spResolvedStorageSourceManifest'
--
-- * 'spResolvedStorageSource'
--
-- * 'spFileHashes'
sourceProvenance
    :: SourceProvenance
sourceProvenance =
  SourceProvenance'
    { _spResolvedRepoSource = Nothing
    , _spResolvedStorageSourceManifest = Nothing
    , _spResolvedStorageSource = Nothing
    , _spFileHashes = Nothing
    }


-- | A copy of the build\'s \`source.repo_source\`, if exists, with any
-- revisions resolved.
spResolvedRepoSource :: Lens' SourceProvenance (Maybe RepoSource)
spResolvedRepoSource
  = lens _spResolvedRepoSource
      (\ s a -> s{_spResolvedRepoSource = a})

-- | A copy of the build\'s \`source.storage_source_manifest\`, if exists,
-- with any revisions resolved. This feature is in Preview.
spResolvedStorageSourceManifest :: Lens' SourceProvenance (Maybe StorageSourceManifest)
spResolvedStorageSourceManifest
  = lens _spResolvedStorageSourceManifest
      (\ s a -> s{_spResolvedStorageSourceManifest = a})

-- | A copy of the build\'s \`source.storage_source\`, if exists, with any
-- generations resolved.
spResolvedStorageSource :: Lens' SourceProvenance (Maybe StorageSource)
spResolvedStorageSource
  = lens _spResolvedStorageSource
      (\ s a -> s{_spResolvedStorageSource = a})

-- | Output only. Hash(es) of the build source, which can be used to verify
-- that the original source integrity was maintained in the build. Note
-- that \`FileHashes\` will only be populated if \`BuildOptions\` has
-- requested a \`SourceProvenanceHash\`. The keys to this map are file
-- paths used as build source and the values contain the hash values for
-- those files. If the build source came in a single package such as a
-- gzipped tarfile (\`.tar.gz\`), the \`FileHash\` will be for the single
-- path to that file.
spFileHashes :: Lens' SourceProvenance (Maybe SourceProvenanceFileHashes)
spFileHashes
  = lens _spFileHashes (\ s a -> s{_spFileHashes = a})

instance FromJSON SourceProvenance where
        parseJSON
          = withObject "SourceProvenance"
              (\ o ->
                 SourceProvenance' <$>
                   (o .:? "resolvedRepoSource") <*>
                     (o .:? "resolvedStorageSourceManifest")
                     <*> (o .:? "resolvedStorageSource")
                     <*> (o .:? "fileHashes"))

instance ToJSON SourceProvenance where
        toJSON SourceProvenance'{..}
          = object
              (catMaybes
                 [("resolvedRepoSource" .=) <$> _spResolvedRepoSource,
                  ("resolvedStorageSourceManifest" .=) <$>
                    _spResolvedStorageSourceManifest,
                  ("resolvedStorageSource" .=) <$>
                    _spResolvedStorageSource,
                  ("fileHashes" .=) <$> _spFileHashes])

-- | Response including listed builds.
--
-- /See:/ 'listBuildsResponse' smart constructor.
data ListBuildsResponse =
  ListBuildsResponse'
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrBuilds :: !(Maybe [Build])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBuildsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextPageToken'
--
-- * 'lbrBuilds'
listBuildsResponse
    :: ListBuildsResponse
listBuildsResponse =
  ListBuildsResponse' {_lbrNextPageToken = Nothing, _lbrBuilds = Nothing}


-- | Token to receive the next page of results. This will be absent if the
-- end of the response list has been reached.
lbrNextPageToken :: Lens' ListBuildsResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | Builds will be sorted by \`create_time\`, descending.
lbrBuilds :: Lens' ListBuildsResponse [Build]
lbrBuilds
  = lens _lbrBuilds (\ s a -> s{_lbrBuilds = a}) .
      _Default
      . _Coerce

instance FromJSON ListBuildsResponse where
        parseJSON
          = withObject "ListBuildsResponse"
              (\ o ->
                 ListBuildsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "builds" .!= mempty))

instance ToJSON ListBuildsResponse where
        toJSON ListBuildsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("builds" .=) <$> _lbrBuilds])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema =
  OperationSchema'
    { _osAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
  OperationSchema' {_osAddtional = _Coerce # pOsAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
osAddtional :: Lens' OperationSchema (HashMap Text JSONValue)
osAddtional
  = lens _osAddtional (\ s a -> s{_osAddtional = a}) .
      _Coerce

instance FromJSON OperationSchema where
        parseJSON
          = withObject "OperationSchema"
              (\ o -> OperationSchema' <$> (parseJSONObject o))

instance ToJSON OperationSchema where
        toJSON = toJSON . _osAddtional

-- | PullRequestFilter contains filter properties for matching GitHub Pull
-- Requests.
--
-- /See:/ 'pullRequestFilter' smart constructor.
data PullRequestFilter =
  PullRequestFilter'
    { _prfCommentControl :: !(Maybe PullRequestFilterCommentControl)
    , _prfInvertRegex :: !(Maybe Bool)
    , _prfBranch :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullRequestFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prfCommentControl'
--
-- * 'prfInvertRegex'
--
-- * 'prfBranch'
pullRequestFilter
    :: PullRequestFilter
pullRequestFilter =
  PullRequestFilter'
    { _prfCommentControl = Nothing
    , _prfInvertRegex = Nothing
    , _prfBranch = Nothing
    }


-- | Configure builds to run whether a repository owner or collaborator need
-- to comment \`\/gcbrun\`.
prfCommentControl :: Lens' PullRequestFilter (Maybe PullRequestFilterCommentControl)
prfCommentControl
  = lens _prfCommentControl
      (\ s a -> s{_prfCommentControl = a})

-- | If true, branches that do NOT match the git_ref will trigger a build.
prfInvertRegex :: Lens' PullRequestFilter (Maybe Bool)
prfInvertRegex
  = lens _prfInvertRegex
      (\ s a -> s{_prfInvertRegex = a})

-- | Regex of branches to match. The syntax of the regular expressions
-- accepted is the syntax accepted by RE2 and described at
-- https:\/\/github.com\/google\/re2\/wiki\/Syntax
prfBranch :: Lens' PullRequestFilter (Maybe Text)
prfBranch
  = lens _prfBranch (\ s a -> s{_prfBranch = a})

instance FromJSON PullRequestFilter where
        parseJSON
          = withObject "PullRequestFilter"
              (\ o ->
                 PullRequestFilter' <$>
                   (o .:? "commentControl") <*> (o .:? "invertRegex")
                     <*> (o .:? "branch"))

instance ToJSON PullRequestFilter where
        toJSON PullRequestFilter'{..}
          = object
              (catMaybes
                 [("commentControl" .=) <$> _prfCommentControl,
                  ("invertRegex" .=) <$> _prfInvertRegex,
                  ("branch" .=) <$> _prfBranch])

-- | Specifies a build to retry.
--
-- /See:/ 'retryBuildRequest' smart constructor.
data RetryBuildRequest =
  RetryBuildRequest'
    { _rbrName :: !(Maybe Text)
    , _rbrId :: !(Maybe Text)
    , _rbrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RetryBuildRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbrName'
--
-- * 'rbrId'
--
-- * 'rbrProjectId'
retryBuildRequest
    :: RetryBuildRequest
retryBuildRequest =
  RetryBuildRequest'
    {_rbrName = Nothing, _rbrId = Nothing, _rbrProjectId = Nothing}


-- | The name of the \`Build\` to retry. Format:
-- \`projects\/{project}\/locations\/{location}\/builds\/{build}\`
rbrName :: Lens' RetryBuildRequest (Maybe Text)
rbrName = lens _rbrName (\ s a -> s{_rbrName = a})

-- | Required. Build ID of the original build.
rbrId :: Lens' RetryBuildRequest (Maybe Text)
rbrId = lens _rbrId (\ s a -> s{_rbrId = a})

-- | Required. ID of the project.
rbrProjectId :: Lens' RetryBuildRequest (Maybe Text)
rbrProjectId
  = lens _rbrProjectId (\ s a -> s{_rbrProjectId = a})

instance FromJSON RetryBuildRequest where
        parseJSON
          = withObject "RetryBuildRequest"
              (\ o ->
                 RetryBuildRequest' <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "projectId"))

instance ToJSON RetryBuildRequest where
        toJSON RetryBuildRequest'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rbrName, ("id" .=) <$> _rbrId,
                  ("projectId" .=) <$> _rbrProjectId])

-- | Details about how a build should be executed on a \`WorkerPool\`. See
-- [running builds in a private
-- pool](https:\/\/cloud.google.com\/build\/docs\/private-pools\/run-builds-in-private-pool)
-- for more information.
--
-- /See:/ 'poolOption' smart constructor.
newtype PoolOption =
  PoolOption'
    { _poName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoolOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poName'
poolOption
    :: PoolOption
poolOption = PoolOption' {_poName = Nothing}


-- | The \`WorkerPool\` resource to execute the build on. You must have
-- \`cloudbuild.workerpools.use\` on the project hosting the WorkerPool.
-- Format
-- projects\/{project}\/locations\/{location}\/workerPools\/{workerPoolId}
poName :: Lens' PoolOption (Maybe Text)
poName = lens _poName (\ s a -> s{_poName = a})

instance FromJSON PoolOption where
        parseJSON
          = withObject "PoolOption"
              (\ o -> PoolOption' <$> (o .:? "name"))

instance ToJSON PoolOption where
        toJSON PoolOption'{..}
          = object (catMaybes [("name" .=) <$> _poName])

--
-- /See:/ 'hTTPBodyExtensionsItem' smart constructor.
newtype HTTPBodyExtensionsItem =
  HTTPBodyExtensionsItem'
    { _httpbeiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPBodyExtensionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpbeiAddtional'
hTTPBodyExtensionsItem
    :: HashMap Text JSONValue -- ^ 'httpbeiAddtional'
    -> HTTPBodyExtensionsItem
hTTPBodyExtensionsItem pHttpbeiAddtional_ =
  HTTPBodyExtensionsItem' {_httpbeiAddtional = _Coerce # pHttpbeiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
httpbeiAddtional :: Lens' HTTPBodyExtensionsItem (HashMap Text JSONValue)
httpbeiAddtional
  = lens _httpbeiAddtional
      (\ s a -> s{_httpbeiAddtional = a})
      . _Coerce

instance FromJSON HTTPBodyExtensionsItem where
        parseJSON
          = withObject "HTTPBodyExtensionsItem"
              (\ o ->
                 HTTPBodyExtensionsItem' <$> (parseJSONObject o))

instance ToJSON HTTPBodyExtensionsItem where
        toJSON = toJSON . _httpbeiAddtional

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest'


instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest')

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | Container message for hash values.
--
-- /See:/ 'hash' smart constructor.
data Hash =
  Hash'
    { _hValue :: !(Maybe Bytes)
    , _hType :: !(Maybe HashType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hValue'
--
-- * 'hType'
hash
    :: Hash
hash = Hash' {_hValue = Nothing, _hType = Nothing}


-- | The hash value.
hValue :: Lens' Hash (Maybe ByteString)
hValue
  = lens _hValue (\ s a -> s{_hValue = a}) .
      mapping _Bytes

-- | The type of hash that was performed.
hType :: Lens' Hash (Maybe HashType)
hType = lens _hType (\ s a -> s{_hType = a})

instance FromJSON Hash where
        parseJSON
          = withObject "Hash"
              (\ o -> Hash' <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON Hash where
        toJSON Hash'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _hValue, ("type" .=) <$> _hType])

-- | Artifacts created by the build pipeline.
--
-- /See:/ 'results' smart constructor.
data Results =
  Results'
    { _rImages :: !(Maybe [BuiltImage])
    , _rBuildStepImages :: !(Maybe [Text])
    , _rArtifactManifest :: !(Maybe Text)
    , _rBuildStepOutputs :: !(Maybe [Bytes])
    , _rNumArtifacts :: !(Maybe (Textual Int64))
    , _rArtifactTiming :: !(Maybe TimeSpan)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Results' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rImages'
--
-- * 'rBuildStepImages'
--
-- * 'rArtifactManifest'
--
-- * 'rBuildStepOutputs'
--
-- * 'rNumArtifacts'
--
-- * 'rArtifactTiming'
results
    :: Results
results =
  Results'
    { _rImages = Nothing
    , _rBuildStepImages = Nothing
    , _rArtifactManifest = Nothing
    , _rBuildStepOutputs = Nothing
    , _rNumArtifacts = Nothing
    , _rArtifactTiming = Nothing
    }


-- | Container images that were built as a part of the build.
rImages :: Lens' Results [BuiltImage]
rImages
  = lens _rImages (\ s a -> s{_rImages = a}) . _Default
      . _Coerce

-- | List of build step digests, in the order corresponding to build step
-- indices.
rBuildStepImages :: Lens' Results [Text]
rBuildStepImages
  = lens _rBuildStepImages
      (\ s a -> s{_rBuildStepImages = a})
      . _Default
      . _Coerce

-- | Path to the artifact manifest. Only populated when artifacts are
-- uploaded.
rArtifactManifest :: Lens' Results (Maybe Text)
rArtifactManifest
  = lens _rArtifactManifest
      (\ s a -> s{_rArtifactManifest = a})

-- | List of build step outputs, produced by builder images, in the order
-- corresponding to build step indices. [Cloud
-- Builders](https:\/\/cloud.google.com\/cloud-build\/docs\/cloud-builders)
-- can produce this output by writing to \`$BUILDER_OUTPUT\/output\`. Only
-- the first 4KB of data is stored.
rBuildStepOutputs :: Lens' Results [ByteString]
rBuildStepOutputs
  = lens _rBuildStepOutputs
      (\ s a -> s{_rBuildStepOutputs = a})
      . _Default
      . _Coerce

-- | Number of artifacts uploaded. Only populated when artifacts are
-- uploaded.
rNumArtifacts :: Lens' Results (Maybe Int64)
rNumArtifacts
  = lens _rNumArtifacts
      (\ s a -> s{_rNumArtifacts = a})
      . mapping _Coerce

-- | Time to push all non-container artifacts.
rArtifactTiming :: Lens' Results (Maybe TimeSpan)
rArtifactTiming
  = lens _rArtifactTiming
      (\ s a -> s{_rArtifactTiming = a})

instance FromJSON Results where
        parseJSON
          = withObject "Results"
              (\ o ->
                 Results' <$>
                   (o .:? "images" .!= mempty) <*>
                     (o .:? "buildStepImages" .!= mempty)
                     <*> (o .:? "artifactManifest")
                     <*> (o .:? "buildStepOutputs" .!= mempty)
                     <*> (o .:? "numArtifacts")
                     <*> (o .:? "artifactTiming"))

instance ToJSON Results where
        toJSON Results'{..}
          = object
              (catMaybes
                 [("images" .=) <$> _rImages,
                  ("buildStepImages" .=) <$> _rBuildStepImages,
                  ("artifactManifest" .=) <$> _rArtifactManifest,
                  ("buildStepOutputs" .=) <$> _rBuildStepOutputs,
                  ("numArtifacts" .=) <$> _rNumArtifacts,
                  ("artifactTiming" .=) <$> _rArtifactTiming])

-- | Substitutions for Build resource. The keys must match the following
-- regular expression: \`^_[A-Z0-9_]+$\`.
--
-- /See:/ 'buildTriggerSubstitutions' smart constructor.
newtype BuildTriggerSubstitutions =
  BuildTriggerSubstitutions'
    { _btsAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildTriggerSubstitutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btsAddtional'
buildTriggerSubstitutions
    :: HashMap Text Text -- ^ 'btsAddtional'
    -> BuildTriggerSubstitutions
buildTriggerSubstitutions pBtsAddtional_ =
  BuildTriggerSubstitutions' {_btsAddtional = _Coerce # pBtsAddtional_}


btsAddtional :: Lens' BuildTriggerSubstitutions (HashMap Text Text)
btsAddtional
  = lens _btsAddtional (\ s a -> s{_btsAddtional = a})
      . _Coerce

instance FromJSON BuildTriggerSubstitutions where
        parseJSON
          = withObject "BuildTriggerSubstitutions"
              (\ o ->
                 BuildTriggerSubstitutions' <$> (parseJSONObject o))

instance ToJSON BuildTriggerSubstitutions where
        toJSON = toJSON . _btsAddtional

-- | Location of the source in a Google Cloud Source Repository.
--
-- /See:/ 'repoSource' smart constructor.
data RepoSource =
  RepoSource'
    { _rsSubstitutions :: !(Maybe RepoSourceSubstitutions)
    , _rsInvertRegex :: !(Maybe Bool)
    , _rsRepoName :: !(Maybe Text)
    , _rsDir :: !(Maybe Text)
    , _rsCommitSha :: !(Maybe Text)
    , _rsBranchName :: !(Maybe Text)
    , _rsTagName :: !(Maybe Text)
    , _rsProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepoSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsSubstitutions'
--
-- * 'rsInvertRegex'
--
-- * 'rsRepoName'
--
-- * 'rsDir'
--
-- * 'rsCommitSha'
--
-- * 'rsBranchName'
--
-- * 'rsTagName'
--
-- * 'rsProjectId'
repoSource
    :: RepoSource
repoSource =
  RepoSource'
    { _rsSubstitutions = Nothing
    , _rsInvertRegex = Nothing
    , _rsRepoName = Nothing
    , _rsDir = Nothing
    , _rsCommitSha = Nothing
    , _rsBranchName = Nothing
    , _rsTagName = Nothing
    , _rsProjectId = Nothing
    }


-- | Substitutions to use in a triggered build. Should only be used with
-- RunBuildTrigger
rsSubstitutions :: Lens' RepoSource (Maybe RepoSourceSubstitutions)
rsSubstitutions
  = lens _rsSubstitutions
      (\ s a -> s{_rsSubstitutions = a})

-- | Only trigger a build if the revision regex does NOT match the revision
-- regex.
rsInvertRegex :: Lens' RepoSource (Maybe Bool)
rsInvertRegex
  = lens _rsInvertRegex
      (\ s a -> s{_rsInvertRegex = a})

-- | Name of the Cloud Source Repository.
rsRepoName :: Lens' RepoSource (Maybe Text)
rsRepoName
  = lens _rsRepoName (\ s a -> s{_rsRepoName = a})

-- | Directory, relative to the source root, in which to run the build. This
-- must be a relative path. If a step\'s \`dir\` is specified and is an
-- absolute path, this value is ignored for that step\'s execution.
rsDir :: Lens' RepoSource (Maybe Text)
rsDir = lens _rsDir (\ s a -> s{_rsDir = a})

-- | Explicit commit SHA to build.
rsCommitSha :: Lens' RepoSource (Maybe Text)
rsCommitSha
  = lens _rsCommitSha (\ s a -> s{_rsCommitSha = a})

-- | Regex matching branches to build. The syntax of the regular expressions
-- accepted is the syntax accepted by RE2 and described at
-- https:\/\/github.com\/google\/re2\/wiki\/Syntax
rsBranchName :: Lens' RepoSource (Maybe Text)
rsBranchName
  = lens _rsBranchName (\ s a -> s{_rsBranchName = a})

-- | Regex matching tags to build. The syntax of the regular expressions
-- accepted is the syntax accepted by RE2 and described at
-- https:\/\/github.com\/google\/re2\/wiki\/Syntax
rsTagName :: Lens' RepoSource (Maybe Text)
rsTagName
  = lens _rsTagName (\ s a -> s{_rsTagName = a})

-- | ID of the project that owns the Cloud Source Repository. If omitted, the
-- project ID requesting the build is assumed.
rsProjectId :: Lens' RepoSource (Maybe Text)
rsProjectId
  = lens _rsProjectId (\ s a -> s{_rsProjectId = a})

instance FromJSON RepoSource where
        parseJSON
          = withObject "RepoSource"
              (\ o ->
                 RepoSource' <$>
                   (o .:? "substitutions") <*> (o .:? "invertRegex") <*>
                     (o .:? "repoName")
                     <*> (o .:? "dir")
                     <*> (o .:? "commitSha")
                     <*> (o .:? "branchName")
                     <*> (o .:? "tagName")
                     <*> (o .:? "projectId"))

instance ToJSON RepoSource where
        toJSON RepoSource'{..}
          = object
              (catMaybes
                 [("substitutions" .=) <$> _rsSubstitutions,
                  ("invertRegex" .=) <$> _rsInvertRegex,
                  ("repoName" .=) <$> _rsRepoName,
                  ("dir" .=) <$> _rsDir,
                  ("commitSha" .=) <$> _rsCommitSha,
                  ("branchName" .=) <$> _rsBranchName,
                  ("tagName" .=) <$> _rsTagName,
                  ("projectId" .=) <$> _rsProjectId])

-- | Secrets and secret environment variables.
--
-- /See:/ 'secrets' smart constructor.
data Secrets =
  Secrets'
    { _sInline :: !(Maybe [InlineSecret])
    , _sSecretManager :: !(Maybe [SecretManagerSecret])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Secrets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sInline'
--
-- * 'sSecretManager'
secrets
    :: Secrets
secrets = Secrets' {_sInline = Nothing, _sSecretManager = Nothing}


-- | Secrets encrypted with KMS key and the associated secret environment
-- variable.
sInline :: Lens' Secrets [InlineSecret]
sInline
  = lens _sInline (\ s a -> s{_sInline = a}) . _Default
      . _Coerce

-- | Secrets in Secret Manager and associated secret environment variable.
sSecretManager :: Lens' Secrets [SecretManagerSecret]
sSecretManager
  = lens _sSecretManager
      (\ s a -> s{_sSecretManager = a})
      . _Default
      . _Coerce

instance FromJSON Secrets where
        parseJSON
          = withObject "Secrets"
              (\ o ->
                 Secrets' <$>
                   (o .:? "inline" .!= mempty) <*>
                     (o .:? "secretManager" .!= mempty))

instance ToJSON Secrets where
        toJSON Secrets'{..}
          = object
              (catMaybes
                 [("inline" .=) <$> _sInline,
                  ("secretManager" .=) <$> _sSecretManager])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationSchema)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Map of environment variable name to its encrypted value. Secret
-- environment variables must be unique across all of a build\'s secrets,
-- and must be used by at least one build step. Values can be at most 64 KB
-- in size. There can be at most 100 secret values across all of a build\'s
-- secrets.
--
-- /See:/ 'secretSecretEnv' smart constructor.
newtype SecretSecretEnv =
  SecretSecretEnv'
    { _sseAddtional :: HashMap Text Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretSecretEnv' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sseAddtional'
secretSecretEnv
    :: HashMap Text ByteString -- ^ 'sseAddtional'
    -> SecretSecretEnv
secretSecretEnv pSseAddtional_ =
  SecretSecretEnv' {_sseAddtional = _Coerce # pSseAddtional_}


sseAddtional :: Lens' SecretSecretEnv (HashMap Text ByteString)
sseAddtional
  = lens _sseAddtional (\ s a -> s{_sseAddtional = a})
      . _Coerce

instance FromJSON SecretSecretEnv where
        parseJSON
          = withObject "SecretSecretEnv"
              (\ o -> SecretSecretEnv' <$> (parseJSONObject o))

instance ToJSON SecretSecretEnv where
        toJSON = toJSON . _sseAddtional

-- | Notification is the container which holds the data that is relevant to
-- this particular notification.
--
-- /See:/ 'notification' smart constructor.
data Notification =
  Notification'
    { _nStructDelivery :: !(Maybe NotificationStructDelivery)
    , _nSmtpDelivery :: !(Maybe SMTPDelivery)
    , _nHTTPDelivery :: !(Maybe HTTPDelivery)
    , _nSlackDelivery :: !(Maybe SlackDelivery)
    , _nFilter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Notification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nStructDelivery'
--
-- * 'nSmtpDelivery'
--
-- * 'nHTTPDelivery'
--
-- * 'nSlackDelivery'
--
-- * 'nFilter'
notification
    :: Notification
notification =
  Notification'
    { _nStructDelivery = Nothing
    , _nSmtpDelivery = Nothing
    , _nHTTPDelivery = Nothing
    , _nSlackDelivery = Nothing
    , _nFilter = Nothing
    }


-- | Escape hatch for users to supply custom delivery configs.
nStructDelivery :: Lens' Notification (Maybe NotificationStructDelivery)
nStructDelivery
  = lens _nStructDelivery
      (\ s a -> s{_nStructDelivery = a})

-- | Configuration for SMTP (email) delivery.
nSmtpDelivery :: Lens' Notification (Maybe SMTPDelivery)
nSmtpDelivery
  = lens _nSmtpDelivery
      (\ s a -> s{_nSmtpDelivery = a})

-- | Configuration for HTTP delivery.
nHTTPDelivery :: Lens' Notification (Maybe HTTPDelivery)
nHTTPDelivery
  = lens _nHTTPDelivery
      (\ s a -> s{_nHTTPDelivery = a})

-- | Configuration for Slack delivery.
nSlackDelivery :: Lens' Notification (Maybe SlackDelivery)
nSlackDelivery
  = lens _nSlackDelivery
      (\ s a -> s{_nSlackDelivery = a})

-- | The filter string to use for notification filtering. Currently, this is
-- assumed to be a CEL program. See
-- https:\/\/opensource.google\/projects\/cel for more.
nFilter :: Lens' Notification (Maybe Text)
nFilter = lens _nFilter (\ s a -> s{_nFilter = a})

instance FromJSON Notification where
        parseJSON
          = withObject "Notification"
              (\ o ->
                 Notification' <$>
                   (o .:? "structDelivery") <*> (o .:? "smtpDelivery")
                     <*> (o .:? "httpDelivery")
                     <*> (o .:? "slackDelivery")
                     <*> (o .:? "filter"))

instance ToJSON Notification where
        toJSON Notification'{..}
          = object
              (catMaybes
                 [("structDelivery" .=) <$> _nStructDelivery,
                  ("smtpDelivery" .=) <$> _nSmtpDelivery,
                  ("httpDelivery" .=) <$> _nHTTPDelivery,
                  ("slackDelivery" .=) <$> _nSlackDelivery,
                  ("filter" .=) <$> _nFilter])

-- | Artifacts produced by a build that should be uploaded upon successful
-- completion of all build steps.
--
-- /See:/ 'artifacts' smart constructor.
data Artifacts =
  Artifacts'
    { _aImages :: !(Maybe [Text])
    , _aObjects :: !(Maybe ArtifactObjects)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Artifacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aImages'
--
-- * 'aObjects'
artifacts
    :: Artifacts
artifacts = Artifacts' {_aImages = Nothing, _aObjects = Nothing}


-- | A list of images to be pushed upon the successful completion of all
-- build steps. The images will be pushed using the builder service
-- account\'s credentials. The digests of the pushed images will be stored
-- in the Build resource\'s results field. If any of the images fail to be
-- pushed, the build is marked FAILURE.
aImages :: Lens' Artifacts [Text]
aImages
  = lens _aImages (\ s a -> s{_aImages = a}) . _Default
      . _Coerce

-- | A list of objects to be uploaded to Cloud Storage upon successful
-- completion of all build steps. Files in the workspace matching specified
-- paths globs will be uploaded to the specified Cloud Storage location
-- using the builder service account\'s credentials. The location and
-- generation of the uploaded objects will be stored in the Build
-- resource\'s results field. If any objects fail to be pushed, the build
-- is marked FAILURE.
aObjects :: Lens' Artifacts (Maybe ArtifactObjects)
aObjects = lens _aObjects (\ s a -> s{_aObjects = a})

instance FromJSON Artifacts where
        parseJSON
          = withObject "Artifacts"
              (\ o ->
                 Artifacts' <$>
                   (o .:? "images" .!= mempty) <*> (o .:? "objects"))

instance ToJSON Artifacts where
        toJSON Artifacts'{..}
          = object
              (catMaybes
                 [("images" .=) <$> _aImages,
                  ("objects" .=) <$> _aObjects])

-- | Files in the workspace to upload to Cloud Storage upon successful
-- completion of all build steps.
--
-- /See:/ 'artifactObjects' smart constructor.
data ArtifactObjects =
  ArtifactObjects'
    { _aoLocation :: !(Maybe Text)
    , _aoTiming :: !(Maybe TimeSpan)
    , _aoPaths :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArtifactObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoLocation'
--
-- * 'aoTiming'
--
-- * 'aoPaths'
artifactObjects
    :: ArtifactObjects
artifactObjects =
  ArtifactObjects'
    {_aoLocation = Nothing, _aoTiming = Nothing, _aoPaths = Nothing}


-- | Cloud Storage bucket and optional object path, in the form
-- \"gs:\/\/bucket\/path\/to\/somewhere\/\". (see [Bucket Name
-- Requirements](https:\/\/cloud.google.com\/storage\/docs\/bucket-naming#requirements)).
-- Files in the workspace matching any path pattern will be uploaded to
-- Cloud Storage with this location as a prefix.
aoLocation :: Lens' ArtifactObjects (Maybe Text)
aoLocation
  = lens _aoLocation (\ s a -> s{_aoLocation = a})

-- | Output only. Stores timing information for pushing all artifact objects.
aoTiming :: Lens' ArtifactObjects (Maybe TimeSpan)
aoTiming = lens _aoTiming (\ s a -> s{_aoTiming = a})

-- | Path globs used to match files in the build\'s workspace.
aoPaths :: Lens' ArtifactObjects [Text]
aoPaths
  = lens _aoPaths (\ s a -> s{_aoPaths = a}) . _Default
      . _Coerce

instance FromJSON ArtifactObjects where
        parseJSON
          = withObject "ArtifactObjects"
              (\ o ->
                 ArtifactObjects' <$>
                   (o .:? "location") <*> (o .:? "timing") <*>
                     (o .:? "paths" .!= mempty))

instance ToJSON ArtifactObjects where
        toJSON ArtifactObjects'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _aoLocation,
                  ("timing" .=) <$> _aoTiming,
                  ("paths" .=) <$> _aoPaths])

-- | GitHubEventsConfig describes the configuration of a trigger that creates
-- a build whenever a GitHub event is received. This message is
-- experimental.
--
-- /See:/ 'gitHubEventsConfig' smart constructor.
data GitHubEventsConfig =
  GitHubEventsConfig'
    { _ghecOwner :: !(Maybe Text)
    , _ghecPullRequest :: !(Maybe PullRequestFilter)
    , _ghecName :: !(Maybe Text)
    , _ghecPush :: !(Maybe PushFilter)
    , _ghecInstallationId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GitHubEventsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghecOwner'
--
-- * 'ghecPullRequest'
--
-- * 'ghecName'
--
-- * 'ghecPush'
--
-- * 'ghecInstallationId'
gitHubEventsConfig
    :: GitHubEventsConfig
gitHubEventsConfig =
  GitHubEventsConfig'
    { _ghecOwner = Nothing
    , _ghecPullRequest = Nothing
    , _ghecName = Nothing
    , _ghecPush = Nothing
    , _ghecInstallationId = Nothing
    }


-- | Owner of the repository. For example: The owner for
-- https:\/\/github.com\/googlecloudplatform\/cloud-builders is
-- \"googlecloudplatform\".
ghecOwner :: Lens' GitHubEventsConfig (Maybe Text)
ghecOwner
  = lens _ghecOwner (\ s a -> s{_ghecOwner = a})

-- | filter to match changes in pull requests.
ghecPullRequest :: Lens' GitHubEventsConfig (Maybe PullRequestFilter)
ghecPullRequest
  = lens _ghecPullRequest
      (\ s a -> s{_ghecPullRequest = a})

-- | Name of the repository. For example: The name for
-- https:\/\/github.com\/googlecloudplatform\/cloud-builders is
-- \"cloud-builders\".
ghecName :: Lens' GitHubEventsConfig (Maybe Text)
ghecName = lens _ghecName (\ s a -> s{_ghecName = a})

-- | filter to match changes in refs like branches, tags.
ghecPush :: Lens' GitHubEventsConfig (Maybe PushFilter)
ghecPush = lens _ghecPush (\ s a -> s{_ghecPush = a})

-- | The installationID that emits the GitHub event.
ghecInstallationId :: Lens' GitHubEventsConfig (Maybe Int64)
ghecInstallationId
  = lens _ghecInstallationId
      (\ s a -> s{_ghecInstallationId = a})
      . mapping _Coerce

instance FromJSON GitHubEventsConfig where
        parseJSON
          = withObject "GitHubEventsConfig"
              (\ o ->
                 GitHubEventsConfig' <$>
                   (o .:? "owner") <*> (o .:? "pullRequest") <*>
                     (o .:? "name")
                     <*> (o .:? "push")
                     <*> (o .:? "installationId"))

instance ToJSON GitHubEventsConfig where
        toJSON GitHubEventsConfig'{..}
          = object
              (catMaybes
                 [("owner" .=) <$> _ghecOwner,
                  ("pullRequest" .=) <$> _ghecPullRequest,
                  ("name" .=) <$> _ghecName, ("push" .=) <$> _ghecPush,
                  ("installationId" .=) <$> _ghecInstallationId])

-- | Response containing existing \`WorkerPools\`.
--
-- /See:/ 'listWorkerPoolsResponse' smart constructor.
data ListWorkerPoolsResponse =
  ListWorkerPoolsResponse'
    { _lwprNextPageToken :: !(Maybe Text)
    , _lwprWorkerPools :: !(Maybe [WorkerPool])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListWorkerPoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwprNextPageToken'
--
-- * 'lwprWorkerPools'
listWorkerPoolsResponse
    :: ListWorkerPoolsResponse
listWorkerPoolsResponse =
  ListWorkerPoolsResponse'
    {_lwprNextPageToken = Nothing, _lwprWorkerPools = Nothing}


-- | Continuation token used to page through large result sets. Provide this
-- value in a subsequent ListWorkerPoolsRequest to return the next page of
-- results.
lwprNextPageToken :: Lens' ListWorkerPoolsResponse (Maybe Text)
lwprNextPageToken
  = lens _lwprNextPageToken
      (\ s a -> s{_lwprNextPageToken = a})

-- | \`WorkerPools\` for the specified project.
lwprWorkerPools :: Lens' ListWorkerPoolsResponse [WorkerPool]
lwprWorkerPools
  = lens _lwprWorkerPools
      (\ s a -> s{_lwprWorkerPools = a})
      . _Default
      . _Coerce

instance FromJSON ListWorkerPoolsResponse where
        parseJSON
          = withObject "ListWorkerPoolsResponse"
              (\ o ->
                 ListWorkerPoolsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "workerPools" .!= mempty))

instance ToJSON ListWorkerPoolsResponse where
        toJSON ListWorkerPoolsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lwprNextPageToken,
                  ("workerPools" .=) <$> _lwprWorkerPools])

-- | Volume describes a Docker container volume which is mounted into build
-- steps in order to persist files across build step execution.
--
-- /See:/ 'volume' smart constructor.
data Volume =
  Volume'
    { _vPath :: !(Maybe Text)
    , _vName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Volume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vPath'
--
-- * 'vName'
volume
    :: Volume
volume = Volume' {_vPath = Nothing, _vName = Nothing}


-- | Path at which to mount the volume. Paths must be absolute and cannot
-- conflict with other volume paths on the same build step or with certain
-- reserved volume paths.
vPath :: Lens' Volume (Maybe Text)
vPath = lens _vPath (\ s a -> s{_vPath = a})

-- | Name of the volume to mount. Volume names must be unique per build step
-- and must be valid names for Docker volumes. Each named volume must be
-- used by at least two build steps.
vName :: Lens' Volume (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

instance FromJSON Volume where
        parseJSON
          = withObject "Volume"
              (\ o ->
                 Volume' <$> (o .:? "path") <*> (o .:? "name"))

instance ToJSON Volume where
        toJSON Volume'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _vPath, ("name" .=) <$> _vName])

-- | NotifierSecretRef contains the reference to a secret stored in the
-- corresponding NotifierSpec.
--
-- /See:/ 'notifierSecretRef' smart constructor.
newtype NotifierSecretRef =
  NotifierSecretRef'
    { _nsrSecretRef :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotifierSecretRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsrSecretRef'
notifierSecretRef
    :: NotifierSecretRef
notifierSecretRef = NotifierSecretRef' {_nsrSecretRef = Nothing}


-- | The value of \`secret_ref\` should be a \`name\` that is registered in a
-- \`Secret\` in the \`secrets\` list of the \`Spec\`.
nsrSecretRef :: Lens' NotifierSecretRef (Maybe Text)
nsrSecretRef
  = lens _nsrSecretRef (\ s a -> s{_nsrSecretRef = a})

instance FromJSON NotifierSecretRef where
        parseJSON
          = withObject "NotifierSecretRef"
              (\ o -> NotifierSecretRef' <$> (o .:? "secretRef"))

instance ToJSON NotifierSecretRef where
        toJSON NotifierSecretRef'{..}
          = object
              (catMaybes [("secretRef" .=) <$> _nsrSecretRef])

-- | ReceiveTriggerWebhookResponse [Experimental] is the response object for
-- the ReceiveTriggerWebhook method.
--
-- /See:/ 'receiveTriggerWebhookResponse' smart constructor.
data ReceiveTriggerWebhookResponse =
  ReceiveTriggerWebhookResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReceiveTriggerWebhookResponse' with the minimum fields required to make a request.
--
receiveTriggerWebhookResponse
    :: ReceiveTriggerWebhookResponse
receiveTriggerWebhookResponse = ReceiveTriggerWebhookResponse'


instance FromJSON ReceiveTriggerWebhookResponse where
        parseJSON
          = withObject "ReceiveTriggerWebhookResponse"
              (\ o -> pure ReceiveTriggerWebhookResponse')

instance ToJSON ReceiveTriggerWebhookResponse where
        toJSON = const emptyObject

-- | Location of the source manifest in Google Cloud Storage. This feature is
-- in Preview; see description
-- [here](https:\/\/github.com\/GoogleCloudPlatform\/cloud-builders\/tree\/master\/gcs-fetcher).
--
-- /See:/ 'storageSourceManifest' smart constructor.
data StorageSourceManifest =
  StorageSourceManifest'
    { _ssmBucket :: !(Maybe Text)
    , _ssmObject :: !(Maybe Text)
    , _ssmGeneration :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorageSourceManifest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssmBucket'
--
-- * 'ssmObject'
--
-- * 'ssmGeneration'
storageSourceManifest
    :: StorageSourceManifest
storageSourceManifest =
  StorageSourceManifest'
    {_ssmBucket = Nothing, _ssmObject = Nothing, _ssmGeneration = Nothing}


-- | Google Cloud Storage bucket containing the source manifest (see [Bucket
-- Name
-- Requirements](https:\/\/cloud.google.com\/storage\/docs\/bucket-naming#requirements)).
ssmBucket :: Lens' StorageSourceManifest (Maybe Text)
ssmBucket
  = lens _ssmBucket (\ s a -> s{_ssmBucket = a})

-- | Google Cloud Storage object containing the source manifest. This object
-- must be a JSON file.
ssmObject :: Lens' StorageSourceManifest (Maybe Text)
ssmObject
  = lens _ssmObject (\ s a -> s{_ssmObject = a})

-- | Google Cloud Storage generation for the object. If the generation is
-- omitted, the latest generation will be used.
ssmGeneration :: Lens' StorageSourceManifest (Maybe Int64)
ssmGeneration
  = lens _ssmGeneration
      (\ s a -> s{_ssmGeneration = a})
      . mapping _Coerce

instance FromJSON StorageSourceManifest where
        parseJSON
          = withObject "StorageSourceManifest"
              (\ o ->
                 StorageSourceManifest' <$>
                   (o .:? "bucket") <*> (o .:? "object") <*>
                     (o .:? "generation"))

instance ToJSON StorageSourceManifest where
        toJSON StorageSourceManifest'{..}
          = object
              (catMaybes
                 [("bucket" .=) <$> _ssmBucket,
                  ("object" .=) <$> _ssmObject,
                  ("generation" .=) <$> _ssmGeneration])

-- | Metadata for the \`DeleteWorkerPool\` operation.
--
-- /See:/ 'deleteWorkerPoolOperationMetadata' smart constructor.
data DeleteWorkerPoolOperationMetadata =
  DeleteWorkerPoolOperationMetadata'
    { _dwpomCompleteTime :: !(Maybe DateTime')
    , _dwpomWorkerPool :: !(Maybe Text)
    , _dwpomCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteWorkerPoolOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwpomCompleteTime'
--
-- * 'dwpomWorkerPool'
--
-- * 'dwpomCreateTime'
deleteWorkerPoolOperationMetadata
    :: DeleteWorkerPoolOperationMetadata
deleteWorkerPoolOperationMetadata =
  DeleteWorkerPoolOperationMetadata'
    { _dwpomCompleteTime = Nothing
    , _dwpomWorkerPool = Nothing
    , _dwpomCreateTime = Nothing
    }


-- | Time the operation was completed.
dwpomCompleteTime :: Lens' DeleteWorkerPoolOperationMetadata (Maybe UTCTime)
dwpomCompleteTime
  = lens _dwpomCompleteTime
      (\ s a -> s{_dwpomCompleteTime = a})
      . mapping _DateTime

-- | The resource name of the \`WorkerPool\` being deleted. Format:
-- \`projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}\`.
dwpomWorkerPool :: Lens' DeleteWorkerPoolOperationMetadata (Maybe Text)
dwpomWorkerPool
  = lens _dwpomWorkerPool
      (\ s a -> s{_dwpomWorkerPool = a})

-- | Time the operation was created.
dwpomCreateTime :: Lens' DeleteWorkerPoolOperationMetadata (Maybe UTCTime)
dwpomCreateTime
  = lens _dwpomCreateTime
      (\ s a -> s{_dwpomCreateTime = a})
      . mapping _DateTime

instance FromJSON DeleteWorkerPoolOperationMetadata
         where
        parseJSON
          = withObject "DeleteWorkerPoolOperationMetadata"
              (\ o ->
                 DeleteWorkerPoolOperationMetadata' <$>
                   (o .:? "completeTime") <*> (o .:? "workerPool") <*>
                     (o .:? "createTime"))

instance ToJSON DeleteWorkerPoolOperationMetadata
         where
        toJSON DeleteWorkerPoolOperationMetadata'{..}
          = object
              (catMaybes
                 [("completeTime" .=) <$> _dwpomCompleteTime,
                  ("workerPool" .=) <$> _dwpomWorkerPool,
                  ("createTime" .=) <$> _dwpomCreateTime])

-- | Metadata for the \`UpdateWorkerPool\` operation.
--
-- /See:/ 'updateWorkerPoolOperationMetadata' smart constructor.
data UpdateWorkerPoolOperationMetadata =
  UpdateWorkerPoolOperationMetadata'
    { _uwpomCompleteTime :: !(Maybe DateTime')
    , _uwpomWorkerPool :: !(Maybe Text)
    , _uwpomCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateWorkerPoolOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwpomCompleteTime'
--
-- * 'uwpomWorkerPool'
--
-- * 'uwpomCreateTime'
updateWorkerPoolOperationMetadata
    :: UpdateWorkerPoolOperationMetadata
updateWorkerPoolOperationMetadata =
  UpdateWorkerPoolOperationMetadata'
    { _uwpomCompleteTime = Nothing
    , _uwpomWorkerPool = Nothing
    , _uwpomCreateTime = Nothing
    }


-- | Time the operation was completed.
uwpomCompleteTime :: Lens' UpdateWorkerPoolOperationMetadata (Maybe UTCTime)
uwpomCompleteTime
  = lens _uwpomCompleteTime
      (\ s a -> s{_uwpomCompleteTime = a})
      . mapping _DateTime

-- | The resource name of the \`WorkerPool\` being updated. Format:
-- \`projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}\`.
uwpomWorkerPool :: Lens' UpdateWorkerPoolOperationMetadata (Maybe Text)
uwpomWorkerPool
  = lens _uwpomWorkerPool
      (\ s a -> s{_uwpomWorkerPool = a})

-- | Time the operation was created.
uwpomCreateTime :: Lens' UpdateWorkerPoolOperationMetadata (Maybe UTCTime)
uwpomCreateTime
  = lens _uwpomCreateTime
      (\ s a -> s{_uwpomCreateTime = a})
      . mapping _DateTime

instance FromJSON UpdateWorkerPoolOperationMetadata
         where
        parseJSON
          = withObject "UpdateWorkerPoolOperationMetadata"
              (\ o ->
                 UpdateWorkerPoolOperationMetadata' <$>
                   (o .:? "completeTime") <*> (o .:? "workerPool") <*>
                     (o .:? "createTime"))

instance ToJSON UpdateWorkerPoolOperationMetadata
         where
        toJSON UpdateWorkerPoolOperationMetadata'{..}
          = object
              (catMaybes
                 [("completeTime" .=) <$> _uwpomCompleteTime,
                  ("workerPool" .=) <$> _uwpomWorkerPool,
                  ("createTime" .=) <$> _uwpomCreateTime])

-- | Pairs a secret environment variable with a SecretVersion in Secret
-- Manager.
--
-- /See:/ 'secretManagerSecret' smart constructor.
data SecretManagerSecret =
  SecretManagerSecret'
    { _smsVersionName :: !(Maybe Text)
    , _smsEnv :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretManagerSecret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smsVersionName'
--
-- * 'smsEnv'
secretManagerSecret
    :: SecretManagerSecret
secretManagerSecret =
  SecretManagerSecret' {_smsVersionName = Nothing, _smsEnv = Nothing}


-- | Resource name of the SecretVersion. In format:
-- projects\/*\/secrets\/*\/versions\/*
smsVersionName :: Lens' SecretManagerSecret (Maybe Text)
smsVersionName
  = lens _smsVersionName
      (\ s a -> s{_smsVersionName = a})

-- | Environment variable name to associate with the secret. Secret
-- environment variables must be unique across all of a build\'s secrets,
-- and must be used by at least one build step.
smsEnv :: Lens' SecretManagerSecret (Maybe Text)
smsEnv = lens _smsEnv (\ s a -> s{_smsEnv = a})

instance FromJSON SecretManagerSecret where
        parseJSON
          = withObject "SecretManagerSecret"
              (\ o ->
                 SecretManagerSecret' <$>
                   (o .:? "versionName") <*> (o .:? "env"))

instance ToJSON SecretManagerSecret where
        toJSON SecretManagerSecret'{..}
          = object
              (catMaybes
                 [("versionName" .=) <$> _smsVersionName,
                  ("env" .=) <$> _smsEnv])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | A build resource in the Cloud Build API. At a high level, a \`Build\`
-- describes where to find source code, how to build it (for example, the
-- builder image to run on the source), and where to store the built
-- artifacts. Fields can include the following variables, which will be
-- expanded when the build is created: - $PROJECT_ID: the project ID of the
-- build. - $PROJECT_NUMBER: the project number of the build. - $BUILD_ID:
-- the autogenerated ID of the build. - $REPO_NAME: the source repository
-- name specified by RepoSource. - $BRANCH_NAME: the branch name specified
-- by RepoSource. - $TAG_NAME: the tag name specified by RepoSource. -
-- $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or
-- resolved from the specified branch or tag. - $SHORT_SHA: first 7
-- characters of $REVISION_ID or $COMMIT_SHA.
--
-- /See:/ 'build' smart constructor.
data Build =
  Build'
    { _bAvailableSecrets :: !(Maybe Secrets)
    , _bImages :: !(Maybe [Text])
    , _bStatus :: !(Maybe BuildStatus)
    , _bSourceProvenance :: !(Maybe SourceProvenance)
    , _bSubstitutions :: !(Maybe BuildSubstitutions)
    , _bLogURL :: !(Maybe Text)
    , _bResults :: !(Maybe Results)
    , _bSecrets :: !(Maybe [Secret])
    , _bStartTime :: !(Maybe DateTime')
    , _bArtifacts :: !(Maybe Artifacts)
    , _bFailureInfo :: !(Maybe FailureInfo)
    , _bWarnings :: !(Maybe [Warning])
    , _bLogsBucket :: !(Maybe Text)
    , _bSteps :: !(Maybe [BuildStep])
    , _bServiceAccount :: !(Maybe Text)
    , _bName :: !(Maybe Text)
    , _bStatusDetail :: !(Maybe Text)
    , _bSource :: !(Maybe Source)
    , _bId :: !(Maybe Text)
    , _bQueueTtl :: !(Maybe GDuration)
    , _bOptions :: !(Maybe BuildOptions)
    , _bProjectId :: !(Maybe Text)
    , _bTiming :: !(Maybe BuildTiming)
    , _bBuildTriggerId :: !(Maybe Text)
    , _bTimeout :: !(Maybe GDuration)
    , _bFinishTime :: !(Maybe DateTime')
    , _bCreateTime :: !(Maybe DateTime')
    , _bTags :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Build' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bAvailableSecrets'
--
-- * 'bImages'
--
-- * 'bStatus'
--
-- * 'bSourceProvenance'
--
-- * 'bSubstitutions'
--
-- * 'bLogURL'
--
-- * 'bResults'
--
-- * 'bSecrets'
--
-- * 'bStartTime'
--
-- * 'bArtifacts'
--
-- * 'bFailureInfo'
--
-- * 'bWarnings'
--
-- * 'bLogsBucket'
--
-- * 'bSteps'
--
-- * 'bServiceAccount'
--
-- * 'bName'
--
-- * 'bStatusDetail'
--
-- * 'bSource'
--
-- * 'bId'
--
-- * 'bQueueTtl'
--
-- * 'bOptions'
--
-- * 'bProjectId'
--
-- * 'bTiming'
--
-- * 'bBuildTriggerId'
--
-- * 'bTimeout'
--
-- * 'bFinishTime'
--
-- * 'bCreateTime'
--
-- * 'bTags'
build
    :: Build
build =
  Build'
    { _bAvailableSecrets = Nothing
    , _bImages = Nothing
    , _bStatus = Nothing
    , _bSourceProvenance = Nothing
    , _bSubstitutions = Nothing
    , _bLogURL = Nothing
    , _bResults = Nothing
    , _bSecrets = Nothing
    , _bStartTime = Nothing
    , _bArtifacts = Nothing
    , _bFailureInfo = Nothing
    , _bWarnings = Nothing
    , _bLogsBucket = Nothing
    , _bSteps = Nothing
    , _bServiceAccount = Nothing
    , _bName = Nothing
    , _bStatusDetail = Nothing
    , _bSource = Nothing
    , _bId = Nothing
    , _bQueueTtl = Nothing
    , _bOptions = Nothing
    , _bProjectId = Nothing
    , _bTiming = Nothing
    , _bBuildTriggerId = Nothing
    , _bTimeout = Nothing
    , _bFinishTime = Nothing
    , _bCreateTime = Nothing
    , _bTags = Nothing
    }


-- | Secrets and secret environment variables.
bAvailableSecrets :: Lens' Build (Maybe Secrets)
bAvailableSecrets
  = lens _bAvailableSecrets
      (\ s a -> s{_bAvailableSecrets = a})

-- | A list of images to be pushed upon the successful completion of all
-- build steps. The images are pushed using the builder service account\'s
-- credentials. The digests of the pushed images will be stored in the
-- \`Build\` resource\'s results field. If any of the images fail to be
-- pushed, the build status is marked \`FAILURE\`.
bImages :: Lens' Build [Text]
bImages
  = lens _bImages (\ s a -> s{_bImages = a}) . _Default
      . _Coerce

-- | Output only. Status of the build.
bStatus :: Lens' Build (Maybe BuildStatus)
bStatus = lens _bStatus (\ s a -> s{_bStatus = a})

-- | Output only. A permanent fixed identifier for source.
bSourceProvenance :: Lens' Build (Maybe SourceProvenance)
bSourceProvenance
  = lens _bSourceProvenance
      (\ s a -> s{_bSourceProvenance = a})

-- | Substitutions data for \`Build\` resource.
bSubstitutions :: Lens' Build (Maybe BuildSubstitutions)
bSubstitutions
  = lens _bSubstitutions
      (\ s a -> s{_bSubstitutions = a})

-- | Output only. URL to logs for this build in Google Cloud Console.
bLogURL :: Lens' Build (Maybe Text)
bLogURL = lens _bLogURL (\ s a -> s{_bLogURL = a})

-- | Output only. Results of the build.
bResults :: Lens' Build (Maybe Results)
bResults = lens _bResults (\ s a -> s{_bResults = a})

-- | Secrets to decrypt using Cloud Key Management Service. Note: Secret
-- Manager is the recommended technique for managing sensitive data with
-- Cloud Build. Use \`available_secrets\` to configure builds to access
-- secrets from Secret Manager. For instructions, see:
-- https:\/\/cloud.google.com\/cloud-build\/docs\/securing-builds\/use-secrets
bSecrets :: Lens' Build [Secret]
bSecrets
  = lens _bSecrets (\ s a -> s{_bSecrets = a}) .
      _Default
      . _Coerce

-- | Output only. Time at which execution of the build was started.
bStartTime :: Lens' Build (Maybe UTCTime)
bStartTime
  = lens _bStartTime (\ s a -> s{_bStartTime = a}) .
      mapping _DateTime

-- | Artifacts produced by the build that should be uploaded upon successful
-- completion of all build steps.
bArtifacts :: Lens' Build (Maybe Artifacts)
bArtifacts
  = lens _bArtifacts (\ s a -> s{_bArtifacts = a})

-- | Output only. Contains information about the build when status=FAILURE.
bFailureInfo :: Lens' Build (Maybe FailureInfo)
bFailureInfo
  = lens _bFailureInfo (\ s a -> s{_bFailureInfo = a})

-- | Output only. Non-fatal problems encountered during the execution of the
-- build.
bWarnings :: Lens' Build [Warning]
bWarnings
  = lens _bWarnings (\ s a -> s{_bWarnings = a}) .
      _Default
      . _Coerce

-- | Google Cloud Storage bucket where logs should be written (see [Bucket
-- Name
-- Requirements](https:\/\/cloud.google.com\/storage\/docs\/bucket-naming#requirements)).
-- Logs file names will be of the format
-- \`${logs_bucket}\/log-${build_id}.txt\`.
bLogsBucket :: Lens' Build (Maybe Text)
bLogsBucket
  = lens _bLogsBucket (\ s a -> s{_bLogsBucket = a})

-- | Required. The operations to be performed on the workspace.
bSteps :: Lens' Build [BuildStep]
bSteps
  = lens _bSteps (\ s a -> s{_bSteps = a}) . _Default .
      _Coerce

-- | IAM service account whose credentials will be used at build runtime.
-- Must be of the format
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. ACCOUNT can be
-- email address or uniqueId of the service account.
bServiceAccount :: Lens' Build (Maybe Text)
bServiceAccount
  = lens _bServiceAccount
      (\ s a -> s{_bServiceAccount = a})

-- | Output only. The \'Build\' name with format:
-- \`projects\/{project}\/locations\/{location}\/builds\/{build}\`, where
-- {build} is a unique identifier generated by the service.
bName :: Lens' Build (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

-- | Output only. Customer-readable message about the current status.
bStatusDetail :: Lens' Build (Maybe Text)
bStatusDetail
  = lens _bStatusDetail
      (\ s a -> s{_bStatusDetail = a})

-- | The location of the source files to build.
bSource :: Lens' Build (Maybe Source)
bSource = lens _bSource (\ s a -> s{_bSource = a})

-- | Output only. Unique identifier of the build.
bId :: Lens' Build (Maybe Text)
bId = lens _bId (\ s a -> s{_bId = a})

-- | TTL in queue for this build. If provided and the build is enqueued
-- longer than this value, the build will expire and the build status will
-- be \`EXPIRED\`. The TTL starts ticking from create_time.
bQueueTtl :: Lens' Build (Maybe Scientific)
bQueueTtl
  = lens _bQueueTtl (\ s a -> s{_bQueueTtl = a}) .
      mapping _GDuration

-- | Special options for this build.
bOptions :: Lens' Build (Maybe BuildOptions)
bOptions = lens _bOptions (\ s a -> s{_bOptions = a})

-- | Output only. ID of the project.
bProjectId :: Lens' Build (Maybe Text)
bProjectId
  = lens _bProjectId (\ s a -> s{_bProjectId = a})

-- | Output only. Stores timing information for phases of the build. Valid
-- keys are: * BUILD: time to execute all build steps * PUSH: time to push
-- all specified images. * FETCHSOURCE: time to fetch source. If the build
-- does not specify source or images, these keys will not be included.
bTiming :: Lens' Build (Maybe BuildTiming)
bTiming = lens _bTiming (\ s a -> s{_bTiming = a})

-- | Output only. The ID of the \`BuildTrigger\` that triggered this build,
-- if it was triggered automatically.
bBuildTriggerId :: Lens' Build (Maybe Text)
bBuildTriggerId
  = lens _bBuildTriggerId
      (\ s a -> s{_bBuildTriggerId = a})

-- | Amount of time that this build should be allowed to run, to second
-- granularity. If this amount of time elapses, work on the build will
-- cease and the build status will be \`TIMEOUT\`. \`timeout\` starts
-- ticking from \`startTime\`. Default time is ten minutes.
bTimeout :: Lens' Build (Maybe Scientific)
bTimeout
  = lens _bTimeout (\ s a -> s{_bTimeout = a}) .
      mapping _GDuration

-- | Output only. Time at which execution of the build was finished. The
-- difference between finish_time and start_time is the duration of the
-- build\'s execution.
bFinishTime :: Lens' Build (Maybe UTCTime)
bFinishTime
  = lens _bFinishTime (\ s a -> s{_bFinishTime = a}) .
      mapping _DateTime

-- | Output only. Time at which the request to create the build was received.
bCreateTime :: Lens' Build (Maybe UTCTime)
bCreateTime
  = lens _bCreateTime (\ s a -> s{_bCreateTime = a}) .
      mapping _DateTime

-- | Tags for annotation of a \`Build\`. These are not docker tags.
bTags :: Lens' Build [Text]
bTags
  = lens _bTags (\ s a -> s{_bTags = a}) . _Default .
      _Coerce

instance FromJSON Build where
        parseJSON
          = withObject "Build"
              (\ o ->
                 Build' <$>
                   (o .:? "availableSecrets") <*>
                     (o .:? "images" .!= mempty)
                     <*> (o .:? "status")
                     <*> (o .:? "sourceProvenance")
                     <*> (o .:? "substitutions")
                     <*> (o .:? "logUrl")
                     <*> (o .:? "results")
                     <*> (o .:? "secrets" .!= mempty)
                     <*> (o .:? "startTime")
                     <*> (o .:? "artifacts")
                     <*> (o .:? "failureInfo")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "logsBucket")
                     <*> (o .:? "steps" .!= mempty)
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "name")
                     <*> (o .:? "statusDetail")
                     <*> (o .:? "source")
                     <*> (o .:? "id")
                     <*> (o .:? "queueTtl")
                     <*> (o .:? "options")
                     <*> (o .:? "projectId")
                     <*> (o .:? "timing")
                     <*> (o .:? "buildTriggerId")
                     <*> (o .:? "timeout")
                     <*> (o .:? "finishTime")
                     <*> (o .:? "createTime")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON Build where
        toJSON Build'{..}
          = object
              (catMaybes
                 [("availableSecrets" .=) <$> _bAvailableSecrets,
                  ("images" .=) <$> _bImages,
                  ("status" .=) <$> _bStatus,
                  ("sourceProvenance" .=) <$> _bSourceProvenance,
                  ("substitutions" .=) <$> _bSubstitutions,
                  ("logUrl" .=) <$> _bLogURL,
                  ("results" .=) <$> _bResults,
                  ("secrets" .=) <$> _bSecrets,
                  ("startTime" .=) <$> _bStartTime,
                  ("artifacts" .=) <$> _bArtifacts,
                  ("failureInfo" .=) <$> _bFailureInfo,
                  ("warnings" .=) <$> _bWarnings,
                  ("logsBucket" .=) <$> _bLogsBucket,
                  ("steps" .=) <$> _bSteps,
                  ("serviceAccount" .=) <$> _bServiceAccount,
                  ("name" .=) <$> _bName,
                  ("statusDetail" .=) <$> _bStatusDetail,
                  ("source" .=) <$> _bSource, ("id" .=) <$> _bId,
                  ("queueTtl" .=) <$> _bQueueTtl,
                  ("options" .=) <$> _bOptions,
                  ("projectId" .=) <$> _bProjectId,
                  ("timing" .=) <$> _bTiming,
                  ("buildTriggerId" .=) <$> _bBuildTriggerId,
                  ("timeout" .=) <$> _bTimeout,
                  ("finishTime" .=) <$> _bFinishTime,
                  ("createTime" .=) <$> _bCreateTime,
                  ("tags" .=) <$> _bTags])

-- | Map of environment variable name to its encrypted value. Secret
-- environment variables must be unique across all of a build\'s secrets,
-- and must be used by at least one build step. Values can be at most 64 KB
-- in size. There can be at most 100 secret values across all of a build\'s
-- secrets.
--
-- /See:/ 'inlineSecretEnvMap' smart constructor.
newtype InlineSecretEnvMap =
  InlineSecretEnvMap'
    { _isemAddtional :: HashMap Text Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InlineSecretEnvMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isemAddtional'
inlineSecretEnvMap
    :: HashMap Text ByteString -- ^ 'isemAddtional'
    -> InlineSecretEnvMap
inlineSecretEnvMap pIsemAddtional_ =
  InlineSecretEnvMap' {_isemAddtional = _Coerce # pIsemAddtional_}


isemAddtional :: Lens' InlineSecretEnvMap (HashMap Text ByteString)
isemAddtional
  = lens _isemAddtional
      (\ s a -> s{_isemAddtional = a})
      . _Coerce

instance FromJSON InlineSecretEnvMap where
        parseJSON
          = withObject "InlineSecretEnvMap"
              (\ o -> InlineSecretEnvMap' <$> (parseJSONObject o))

instance ToJSON InlineSecretEnvMap where
        toJSON = toJSON . _isemAddtional

-- | A fatal problem encountered during the execution of the build.
--
-- /See:/ 'failureInfo' smart constructor.
data FailureInfo =
  FailureInfo'
    { _fiType :: !(Maybe FailureInfoType)
    , _fiDetail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailureInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiType'
--
-- * 'fiDetail'
failureInfo
    :: FailureInfo
failureInfo = FailureInfo' {_fiType = Nothing, _fiDetail = Nothing}


-- | The name of the failure.
fiType :: Lens' FailureInfo (Maybe FailureInfoType)
fiType = lens _fiType (\ s a -> s{_fiType = a})

-- | Explains the failure issue in more detail using hard-coded text.
fiDetail :: Lens' FailureInfo (Maybe Text)
fiDetail = lens _fiDetail (\ s a -> s{_fiDetail = a})

instance FromJSON FailureInfo where
        parseJSON
          = withObject "FailureInfo"
              (\ o ->
                 FailureInfo' <$> (o .:? "type") <*> (o .:? "detail"))

instance ToJSON FailureInfo where
        toJSON FailureInfo'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _fiType,
                  ("detail" .=) <$> _fiDetail])

-- | Metadata for the \`CreateWorkerPool\` operation.
--
-- /See:/ 'createWorkerPoolOperationMetadata' smart constructor.
data CreateWorkerPoolOperationMetadata =
  CreateWorkerPoolOperationMetadata'
    { _cwpomCompleteTime :: !(Maybe DateTime')
    , _cwpomWorkerPool :: !(Maybe Text)
    , _cwpomCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateWorkerPoolOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwpomCompleteTime'
--
-- * 'cwpomWorkerPool'
--
-- * 'cwpomCreateTime'
createWorkerPoolOperationMetadata
    :: CreateWorkerPoolOperationMetadata
createWorkerPoolOperationMetadata =
  CreateWorkerPoolOperationMetadata'
    { _cwpomCompleteTime = Nothing
    , _cwpomWorkerPool = Nothing
    , _cwpomCreateTime = Nothing
    }


-- | Time the operation was completed.
cwpomCompleteTime :: Lens' CreateWorkerPoolOperationMetadata (Maybe UTCTime)
cwpomCompleteTime
  = lens _cwpomCompleteTime
      (\ s a -> s{_cwpomCompleteTime = a})
      . mapping _DateTime

-- | The resource name of the \`WorkerPool\` to create. Format:
-- \`projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}\`.
cwpomWorkerPool :: Lens' CreateWorkerPoolOperationMetadata (Maybe Text)
cwpomWorkerPool
  = lens _cwpomWorkerPool
      (\ s a -> s{_cwpomWorkerPool = a})

-- | Time the operation was created.
cwpomCreateTime :: Lens' CreateWorkerPoolOperationMetadata (Maybe UTCTime)
cwpomCreateTime
  = lens _cwpomCreateTime
      (\ s a -> s{_cwpomCreateTime = a})
      . mapping _DateTime

instance FromJSON CreateWorkerPoolOperationMetadata
         where
        parseJSON
          = withObject "CreateWorkerPoolOperationMetadata"
              (\ o ->
                 CreateWorkerPoolOperationMetadata' <$>
                   (o .:? "completeTime") <*> (o .:? "workerPool") <*>
                     (o .:? "createTime"))

instance ToJSON CreateWorkerPoolOperationMetadata
         where
        toJSON CreateWorkerPoolOperationMetadata'{..}
          = object
              (catMaybes
                 [("completeTime" .=) <$> _cwpomCompleteTime,
                  ("workerPool" .=) <$> _cwpomWorkerPool,
                  ("createTime" .=) <$> _cwpomCreateTime])

-- | Output only. Hash(es) of the build source, which can be used to verify
-- that the original source integrity was maintained in the build. Note
-- that \`FileHashes\` will only be populated if \`BuildOptions\` has
-- requested a \`SourceProvenanceHash\`. The keys to this map are file
-- paths used as build source and the values contain the hash values for
-- those files. If the build source came in a single package such as a
-- gzipped tarfile (\`.tar.gz\`), the \`FileHash\` will be for the single
-- path to that file.
--
-- /See:/ 'sourceProvenanceFileHashes' smart constructor.
newtype SourceProvenanceFileHashes =
  SourceProvenanceFileHashes'
    { _spfhAddtional :: HashMap Text FileHashes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceProvenanceFileHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spfhAddtional'
sourceProvenanceFileHashes
    :: HashMap Text FileHashes -- ^ 'spfhAddtional'
    -> SourceProvenanceFileHashes
sourceProvenanceFileHashes pSpfhAddtional_ =
  SourceProvenanceFileHashes' {_spfhAddtional = _Coerce # pSpfhAddtional_}


spfhAddtional :: Lens' SourceProvenanceFileHashes (HashMap Text FileHashes)
spfhAddtional
  = lens _spfhAddtional
      (\ s a -> s{_spfhAddtional = a})
      . _Coerce

instance FromJSON SourceProvenanceFileHashes where
        parseJSON
          = withObject "SourceProvenanceFileHashes"
              (\ o ->
                 SourceProvenanceFileHashes' <$> (parseJSONObject o))

instance ToJSON SourceProvenanceFileHashes where
        toJSON = toJSON . _spfhAddtional

-- | User specified annotations. See
-- https:\/\/google.aip.dev\/128#annotations for more details such as
-- format and size limitations.
--
-- /See:/ 'workerPoolAnnotations' smart constructor.
newtype WorkerPoolAnnotations =
  WorkerPoolAnnotations'
    { _wpaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerPoolAnnotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpaAddtional'
workerPoolAnnotations
    :: HashMap Text Text -- ^ 'wpaAddtional'
    -> WorkerPoolAnnotations
workerPoolAnnotations pWpaAddtional_ =
  WorkerPoolAnnotations' {_wpaAddtional = _Coerce # pWpaAddtional_}


wpaAddtional :: Lens' WorkerPoolAnnotations (HashMap Text Text)
wpaAddtional
  = lens _wpaAddtional (\ s a -> s{_wpaAddtional = a})
      . _Coerce

instance FromJSON WorkerPoolAnnotations where
        parseJSON
          = withObject "WorkerPoolAnnotations"
              (\ o ->
                 WorkerPoolAnnotations' <$> (parseJSONObject o))

instance ToJSON WorkerPoolAnnotations where
        toJSON = toJSON . _wpaAddtional

-- | SMTPDelivery is the delivery configuration for an SMTP (email)
-- notification.
--
-- /See:/ 'sMTPDelivery' smart constructor.
data SMTPDelivery =
  SMTPDelivery'
    { _smtpdSenderAddress :: !(Maybe Text)
    , _smtpdFromAddress :: !(Maybe Text)
    , _smtpdRecipientAddresses :: !(Maybe [Text])
    , _smtpdPassword :: !(Maybe NotifierSecretRef)
    , _smtpdServer :: !(Maybe Text)
    , _smtpdPort :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SMTPDelivery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smtpdSenderAddress'
--
-- * 'smtpdFromAddress'
--
-- * 'smtpdRecipientAddresses'
--
-- * 'smtpdPassword'
--
-- * 'smtpdServer'
--
-- * 'smtpdPort'
sMTPDelivery
    :: SMTPDelivery
sMTPDelivery =
  SMTPDelivery'
    { _smtpdSenderAddress = Nothing
    , _smtpdFromAddress = Nothing
    , _smtpdRecipientAddresses = Nothing
    , _smtpdPassword = Nothing
    , _smtpdServer = Nothing
    , _smtpdPort = Nothing
    }


-- | This is the SMTP account\/email that is used to send the message.
smtpdSenderAddress :: Lens' SMTPDelivery (Maybe Text)
smtpdSenderAddress
  = lens _smtpdSenderAddress
      (\ s a -> s{_smtpdSenderAddress = a})

-- | This is the SMTP account\/email that appears in the \`From:\` of the
-- email. If empty, it is assumed to be sender.
smtpdFromAddress :: Lens' SMTPDelivery (Maybe Text)
smtpdFromAddress
  = lens _smtpdFromAddress
      (\ s a -> s{_smtpdFromAddress = a})

-- | This is the list of addresses to which we send the email (i.e. in the
-- \`To:\` of the email).
smtpdRecipientAddresses :: Lens' SMTPDelivery [Text]
smtpdRecipientAddresses
  = lens _smtpdRecipientAddresses
      (\ s a -> s{_smtpdRecipientAddresses = a})
      . _Default
      . _Coerce

-- | The SMTP sender\'s password.
smtpdPassword :: Lens' SMTPDelivery (Maybe NotifierSecretRef)
smtpdPassword
  = lens _smtpdPassword
      (\ s a -> s{_smtpdPassword = a})

-- | The address of the SMTP server.
smtpdServer :: Lens' SMTPDelivery (Maybe Text)
smtpdServer
  = lens _smtpdServer (\ s a -> s{_smtpdServer = a})

-- | The SMTP port of the server.
smtpdPort :: Lens' SMTPDelivery (Maybe Text)
smtpdPort
  = lens _smtpdPort (\ s a -> s{_smtpdPort = a})

instance FromJSON SMTPDelivery where
        parseJSON
          = withObject "SMTPDelivery"
              (\ o ->
                 SMTPDelivery' <$>
                   (o .:? "senderAddress") <*> (o .:? "fromAddress") <*>
                     (o .:? "recipientAddresses" .!= mempty)
                     <*> (o .:? "password")
                     <*> (o .:? "server")
                     <*> (o .:? "port"))

instance ToJSON SMTPDelivery where
        toJSON SMTPDelivery'{..}
          = object
              (catMaybes
                 [("senderAddress" .=) <$> _smtpdSenderAddress,
                  ("fromAddress" .=) <$> _smtpdFromAddress,
                  ("recipientAddresses" .=) <$>
                    _smtpdRecipientAddresses,
                  ("password" .=) <$> _smtpdPassword,
                  ("server" .=) <$> _smtpdServer,
                  ("port" .=) <$> _smtpdPort])

-- | Pairs a set of secret environment variables containing encrypted values
-- with the Cloud KMS key to use to decrypt the value. Note: Use
-- \`kmsKeyName\` with \`available_secrets\` instead of using
-- \`kmsKeyName\` with \`secret\`. For instructions see:
-- https:\/\/cloud.google.com\/cloud-build\/docs\/securing-builds\/use-encrypted-credentials.
--
-- /See:/ 'secret' smart constructor.
data Secret =
  Secret'
    { _sKmsKeyName :: !(Maybe Text)
    , _sSecretEnv :: !(Maybe SecretSecretEnv)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Secret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKmsKeyName'
--
-- * 'sSecretEnv'
secret
    :: Secret
secret = Secret' {_sKmsKeyName = Nothing, _sSecretEnv = Nothing}


-- | Cloud KMS key name to use to decrypt these envs.
sKmsKeyName :: Lens' Secret (Maybe Text)
sKmsKeyName
  = lens _sKmsKeyName (\ s a -> s{_sKmsKeyName = a})

-- | Map of environment variable name to its encrypted value. Secret
-- environment variables must be unique across all of a build\'s secrets,
-- and must be used by at least one build step. Values can be at most 64 KB
-- in size. There can be at most 100 secret values across all of a build\'s
-- secrets.
sSecretEnv :: Lens' Secret (Maybe SecretSecretEnv)
sSecretEnv
  = lens _sSecretEnv (\ s a -> s{_sSecretEnv = a})

instance FromJSON Secret where
        parseJSON
          = withObject "Secret"
              (\ o ->
                 Secret' <$>
                   (o .:? "kmsKeyName") <*> (o .:? "secretEnv"))

instance ToJSON Secret where
        toJSON Secret'{..}
          = object
              (catMaybes
                 [("kmsKeyName" .=) <$> _sKmsKeyName,
                  ("secretEnv" .=) <$> _sSecretEnv])

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'googleDevtoolsCloudbuildV2OperationMetadata' smart constructor.
data GoogleDevtoolsCloudbuildV2OperationMetadata =
  GoogleDevtoolsCloudbuildV2OperationMetadata'
    { _gdcvomAPIVersion :: !(Maybe Text)
    , _gdcvomRequestedCancellation :: !(Maybe Bool)
    , _gdcvomStatusMessage :: !(Maybe Text)
    , _gdcvomEndTime :: !(Maybe DateTime')
    , _gdcvomVerb :: !(Maybe Text)
    , _gdcvomTarget :: !(Maybe Text)
    , _gdcvomCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsCloudbuildV2OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcvomAPIVersion'
--
-- * 'gdcvomRequestedCancellation'
--
-- * 'gdcvomStatusMessage'
--
-- * 'gdcvomEndTime'
--
-- * 'gdcvomVerb'
--
-- * 'gdcvomTarget'
--
-- * 'gdcvomCreateTime'
googleDevtoolsCloudbuildV2OperationMetadata
    :: GoogleDevtoolsCloudbuildV2OperationMetadata
googleDevtoolsCloudbuildV2OperationMetadata =
  GoogleDevtoolsCloudbuildV2OperationMetadata'
    { _gdcvomAPIVersion = Nothing
    , _gdcvomRequestedCancellation = Nothing
    , _gdcvomStatusMessage = Nothing
    , _gdcvomEndTime = Nothing
    , _gdcvomVerb = Nothing
    , _gdcvomTarget = Nothing
    , _gdcvomCreateTime = Nothing
    }


-- | Output only. API version used to start the operation.
gdcvomAPIVersion :: Lens' GoogleDevtoolsCloudbuildV2OperationMetadata (Maybe Text)
gdcvomAPIVersion
  = lens _gdcvomAPIVersion
      (\ s a -> s{_gdcvomAPIVersion = a})

-- | Output only. Identifies whether the user has requested cancellation of
-- the operation. Operations that have successfully been cancelled have
-- Operation.error value with a google.rpc.Status.code of 1, corresponding
-- to \`Code.CANCELLED\`.
gdcvomRequestedCancellation :: Lens' GoogleDevtoolsCloudbuildV2OperationMetadata (Maybe Bool)
gdcvomRequestedCancellation
  = lens _gdcvomRequestedCancellation
      (\ s a -> s{_gdcvomRequestedCancellation = a})

-- | Output only. Human-readable status of the operation, if any.
gdcvomStatusMessage :: Lens' GoogleDevtoolsCloudbuildV2OperationMetadata (Maybe Text)
gdcvomStatusMessage
  = lens _gdcvomStatusMessage
      (\ s a -> s{_gdcvomStatusMessage = a})

-- | Output only. The time the operation finished running.
gdcvomEndTime :: Lens' GoogleDevtoolsCloudbuildV2OperationMetadata (Maybe UTCTime)
gdcvomEndTime
  = lens _gdcvomEndTime
      (\ s a -> s{_gdcvomEndTime = a})
      . mapping _DateTime

-- | Output only. Name of the verb executed by the operation.
gdcvomVerb :: Lens' GoogleDevtoolsCloudbuildV2OperationMetadata (Maybe Text)
gdcvomVerb
  = lens _gdcvomVerb (\ s a -> s{_gdcvomVerb = a})

-- | Output only. Server-defined resource path for the target of the
-- operation.
gdcvomTarget :: Lens' GoogleDevtoolsCloudbuildV2OperationMetadata (Maybe Text)
gdcvomTarget
  = lens _gdcvomTarget (\ s a -> s{_gdcvomTarget = a})

-- | Output only. The time the operation was created.
gdcvomCreateTime :: Lens' GoogleDevtoolsCloudbuildV2OperationMetadata (Maybe UTCTime)
gdcvomCreateTime
  = lens _gdcvomCreateTime
      (\ s a -> s{_gdcvomCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleDevtoolsCloudbuildV2OperationMetadata
         where
        parseJSON
          = withObject
              "GoogleDevtoolsCloudbuildV2OperationMetadata"
              (\ o ->
                 GoogleDevtoolsCloudbuildV2OperationMetadata' <$>
                   (o .:? "apiVersion") <*>
                     (o .:? "requestedCancellation")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "endTime")
                     <*> (o .:? "verb")
                     <*> (o .:? "target")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleDevtoolsCloudbuildV2OperationMetadata
         where
        toJSON
          GoogleDevtoolsCloudbuildV2OperationMetadata'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _gdcvomAPIVersion,
                  ("requestedCancellation" .=) <$>
                    _gdcvomRequestedCancellation,
                  ("statusMessage" .=) <$> _gdcvomStatusMessage,
                  ("endTime" .=) <$> _gdcvomEndTime,
                  ("verb" .=) <$> _gdcvomVerb,
                  ("target" .=) <$> _gdcvomTarget,
                  ("createTime" .=) <$> _gdcvomCreateTime])

-- | Push contains filter properties for matching GitHub git pushes.
--
-- /See:/ 'pushFilter' smart constructor.
data PushFilter =
  PushFilter'
    { _pfInvertRegex :: !(Maybe Bool)
    , _pfTag :: !(Maybe Text)
    , _pfBranch :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PushFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfInvertRegex'
--
-- * 'pfTag'
--
-- * 'pfBranch'
pushFilter
    :: PushFilter
pushFilter =
  PushFilter' {_pfInvertRegex = Nothing, _pfTag = Nothing, _pfBranch = Nothing}


-- | When true, only trigger a build if the revision regex does NOT match the
-- git_ref regex.
pfInvertRegex :: Lens' PushFilter (Maybe Bool)
pfInvertRegex
  = lens _pfInvertRegex
      (\ s a -> s{_pfInvertRegex = a})

-- | Regexes matching tags to build. The syntax of the regular expressions
-- accepted is the syntax accepted by RE2 and described at
-- https:\/\/github.com\/google\/re2\/wiki\/Syntax
pfTag :: Lens' PushFilter (Maybe Text)
pfTag = lens _pfTag (\ s a -> s{_pfTag = a})

-- | Regexes matching branches to build. The syntax of the regular
-- expressions accepted is the syntax accepted by RE2 and described at
-- https:\/\/github.com\/google\/re2\/wiki\/Syntax
pfBranch :: Lens' PushFilter (Maybe Text)
pfBranch = lens _pfBranch (\ s a -> s{_pfBranch = a})

instance FromJSON PushFilter where
        parseJSON
          = withObject "PushFilter"
              (\ o ->
                 PushFilter' <$>
                   (o .:? "invertRegex") <*> (o .:? "tag") <*>
                     (o .:? "branch"))

instance ToJSON PushFilter where
        toJSON PushFilter'{..}
          = object
              (catMaybes
                 [("invertRegex" .=) <$> _pfInvertRegex,
                  ("tag" .=) <$> _pfTag, ("branch" .=) <$> _pfBranch])

-- | Request to cancel an ongoing build.
--
-- /See:/ 'cancelBuildRequest' smart constructor.
data CancelBuildRequest =
  CancelBuildRequest'
    { _cbrName :: !(Maybe Text)
    , _cbrId :: !(Maybe Text)
    , _cbrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelBuildRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbrName'
--
-- * 'cbrId'
--
-- * 'cbrProjectId'
cancelBuildRequest
    :: CancelBuildRequest
cancelBuildRequest =
  CancelBuildRequest'
    {_cbrName = Nothing, _cbrId = Nothing, _cbrProjectId = Nothing}


-- | The name of the \`Build\` to cancel. Format:
-- \`projects\/{project}\/locations\/{location}\/builds\/{build}\`
cbrName :: Lens' CancelBuildRequest (Maybe Text)
cbrName = lens _cbrName (\ s a -> s{_cbrName = a})

-- | Required. ID of the build.
cbrId :: Lens' CancelBuildRequest (Maybe Text)
cbrId = lens _cbrId (\ s a -> s{_cbrId = a})

-- | Required. ID of the project.
cbrProjectId :: Lens' CancelBuildRequest (Maybe Text)
cbrProjectId
  = lens _cbrProjectId (\ s a -> s{_cbrProjectId = a})

instance FromJSON CancelBuildRequest where
        parseJSON
          = withObject "CancelBuildRequest"
              (\ o ->
                 CancelBuildRequest' <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "projectId"))

instance ToJSON CancelBuildRequest where
        toJSON CancelBuildRequest'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _cbrName, ("id" .=) <$> _cbrId,
                  ("projectId" .=) <$> _cbrProjectId])

-- | PubsubConfig describes the configuration of a trigger that creates a
-- build whenever a Pub\/Sub message is published.
--
-- /See:/ 'pubsubConfig' smart constructor.
data PubsubConfig =
  PubsubConfig'
    { _pcState :: !(Maybe PubsubConfigState)
    , _pcTopic :: !(Maybe Text)
    , _pcServiceAccountEmail :: !(Maybe Text)
    , _pcSubscription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcState'
--
-- * 'pcTopic'
--
-- * 'pcServiceAccountEmail'
--
-- * 'pcSubscription'
pubsubConfig
    :: PubsubConfig
pubsubConfig =
  PubsubConfig'
    { _pcState = Nothing
    , _pcTopic = Nothing
    , _pcServiceAccountEmail = Nothing
    , _pcSubscription = Nothing
    }


-- | Potential issues with the underlying Pub\/Sub subscription
-- configuration. Only populated on get requests.
pcState :: Lens' PubsubConfig (Maybe PubsubConfigState)
pcState = lens _pcState (\ s a -> s{_pcState = a})

-- | The name of the topic from which this subscription is receiving
-- messages. Format is \`projects\/{project}\/topics\/{topic}\`.
pcTopic :: Lens' PubsubConfig (Maybe Text)
pcTopic = lens _pcTopic (\ s a -> s{_pcTopic = a})

-- | Service account that will make the push request.
pcServiceAccountEmail :: Lens' PubsubConfig (Maybe Text)
pcServiceAccountEmail
  = lens _pcServiceAccountEmail
      (\ s a -> s{_pcServiceAccountEmail = a})

-- | Output only. Name of the subscription. Format is
-- \`projects\/{project}\/subscriptions\/{subscription}\`.
pcSubscription :: Lens' PubsubConfig (Maybe Text)
pcSubscription
  = lens _pcSubscription
      (\ s a -> s{_pcSubscription = a})

instance FromJSON PubsubConfig where
        parseJSON
          = withObject "PubsubConfig"
              (\ o ->
                 PubsubConfig' <$>
                   (o .:? "state") <*> (o .:? "topic") <*>
                     (o .:? "serviceAccountEmail")
                     <*> (o .:? "subscription"))

instance ToJSON PubsubConfig where
        toJSON PubsubConfig'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _pcState,
                  ("topic" .=) <$> _pcTopic,
                  ("serviceAccountEmail" .=) <$>
                    _pcServiceAccountEmail,
                  ("subscription" .=) <$> _pcSubscription])

-- | Start and end times for a build execution phase.
--
-- /See:/ 'timeSpan' smart constructor.
data TimeSpan =
  TimeSpan'
    { _tsStartTime :: !(Maybe DateTime')
    , _tsEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeSpan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsStartTime'
--
-- * 'tsEndTime'
timeSpan
    :: TimeSpan
timeSpan = TimeSpan' {_tsStartTime = Nothing, _tsEndTime = Nothing}


-- | Start of time span.
tsStartTime :: Lens' TimeSpan (Maybe UTCTime)
tsStartTime
  = lens _tsStartTime (\ s a -> s{_tsStartTime = a}) .
      mapping _DateTime

-- | End of time span.
tsEndTime :: Lens' TimeSpan (Maybe UTCTime)
tsEndTime
  = lens _tsEndTime (\ s a -> s{_tsEndTime = a}) .
      mapping _DateTime

instance FromJSON TimeSpan where
        parseJSON
          = withObject "TimeSpan"
              (\ o ->
                 TimeSpan' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimeSpan where
        toJSON TimeSpan'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _tsStartTime,
                  ("endTime" .=) <$> _tsEndTime])

-- | Defines the network configuration for the pool.
--
-- /See:/ 'networkConfig' smart constructor.
data NetworkConfig =
  NetworkConfig'
    { _ncPeeredNetwork :: !(Maybe Text)
    , _ncEgressOption :: !(Maybe NetworkConfigEgressOption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncPeeredNetwork'
--
-- * 'ncEgressOption'
networkConfig
    :: NetworkConfig
networkConfig =
  NetworkConfig' {_ncPeeredNetwork = Nothing, _ncEgressOption = Nothing}


-- | Required. Immutable. The network definition that the workers are peered
-- to. If this section is left empty, the workers will be peered to
-- \`WorkerPool.project_id\` on the service producer network. Must be in
-- the format \`projects\/{project}\/global\/networks\/{network}\`, where
-- \`{project}\` is a project number, such as \`12345\`, and \`{network}\`
-- is the name of a VPC network in the project. See [Understanding network
-- configuration
-- options](https:\/\/cloud.google.com\/build\/docs\/private-pools\/set-up-private-pool-environment)
ncPeeredNetwork :: Lens' NetworkConfig (Maybe Text)
ncPeeredNetwork
  = lens _ncPeeredNetwork
      (\ s a -> s{_ncPeeredNetwork = a})

-- | Option to configure network egress for the workers.
ncEgressOption :: Lens' NetworkConfig (Maybe NetworkConfigEgressOption)
ncEgressOption
  = lens _ncEgressOption
      (\ s a -> s{_ncEgressOption = a})

instance FromJSON NetworkConfig where
        parseJSON
          = withObject "NetworkConfig"
              (\ o ->
                 NetworkConfig' <$>
                   (o .:? "peeredNetwork") <*> (o .:? "egressOption"))

instance ToJSON NetworkConfig where
        toJSON NetworkConfig'{..}
          = object
              (catMaybes
                 [("peeredNetwork" .=) <$> _ncPeeredNetwork,
                  ("egressOption" .=) <$> _ncEgressOption])

-- | Location of the source in an archive file in Google Cloud Storage.
--
-- /See:/ 'storageSource' smart constructor.
data StorageSource =
  StorageSource'
    { _ssBucket :: !(Maybe Text)
    , _ssObject :: !(Maybe Text)
    , _ssGeneration :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorageSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssBucket'
--
-- * 'ssObject'
--
-- * 'ssGeneration'
storageSource
    :: StorageSource
storageSource =
  StorageSource'
    {_ssBucket = Nothing, _ssObject = Nothing, _ssGeneration = Nothing}


-- | Google Cloud Storage bucket containing the source (see [Bucket Name
-- Requirements](https:\/\/cloud.google.com\/storage\/docs\/bucket-naming#requirements)).
ssBucket :: Lens' StorageSource (Maybe Text)
ssBucket = lens _ssBucket (\ s a -> s{_ssBucket = a})

-- | Google Cloud Storage object containing the source. This object must be a
-- zipped (\`.zip\`) or gzipped archive file (\`.tar.gz\`) containing
-- source to build.
ssObject :: Lens' StorageSource (Maybe Text)
ssObject = lens _ssObject (\ s a -> s{_ssObject = a})

-- | Google Cloud Storage generation for the object. If the generation is
-- omitted, the latest generation will be used.
ssGeneration :: Lens' StorageSource (Maybe Int64)
ssGeneration
  = lens _ssGeneration (\ s a -> s{_ssGeneration = a})
      . mapping _Coerce

instance FromJSON StorageSource where
        parseJSON
          = withObject "StorageSource"
              (\ o ->
                 StorageSource' <$>
                   (o .:? "bucket") <*> (o .:? "object") <*>
                     (o .:? "generation"))

instance ToJSON StorageSource where
        toJSON StorageSource'{..}
          = object
              (catMaybes
                 [("bucket" .=) <$> _ssBucket,
                  ("object" .=) <$> _ssObject,
                  ("generation" .=) <$> _ssGeneration])

-- | Configuration for a V1 \`PrivatePool\`.
--
-- /See:/ 'privatePoolV1Config' smart constructor.
data PrivatePoolV1Config =
  PrivatePoolV1Config'
    { _ppvcWorkerConfig :: !(Maybe WorkerConfig)
    , _ppvcNetworkConfig :: !(Maybe NetworkConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrivatePoolV1Config' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppvcWorkerConfig'
--
-- * 'ppvcNetworkConfig'
privatePoolV1Config
    :: PrivatePoolV1Config
privatePoolV1Config =
  PrivatePoolV1Config'
    {_ppvcWorkerConfig = Nothing, _ppvcNetworkConfig = Nothing}


-- | Machine configuration for the workers in the pool.
ppvcWorkerConfig :: Lens' PrivatePoolV1Config (Maybe WorkerConfig)
ppvcWorkerConfig
  = lens _ppvcWorkerConfig
      (\ s a -> s{_ppvcWorkerConfig = a})

-- | Network configuration for the pool.
ppvcNetworkConfig :: Lens' PrivatePoolV1Config (Maybe NetworkConfig)
ppvcNetworkConfig
  = lens _ppvcNetworkConfig
      (\ s a -> s{_ppvcNetworkConfig = a})

instance FromJSON PrivatePoolV1Config where
        parseJSON
          = withObject "PrivatePoolV1Config"
              (\ o ->
                 PrivatePoolV1Config' <$>
                   (o .:? "workerConfig") <*> (o .:? "networkConfig"))

instance ToJSON PrivatePoolV1Config where
        toJSON PrivatePoolV1Config'{..}
          = object
              (catMaybes
                 [("workerConfig" .=) <$> _ppvcWorkerConfig,
                  ("networkConfig" .=) <$> _ppvcNetworkConfig])

-- | HTTPDelivery is the delivery configuration for an HTTP notification.
--
-- /See:/ 'hTTPDelivery' smart constructor.
newtype HTTPDelivery =
  HTTPDelivery'
    { _httpdURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPDelivery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpdURI'
hTTPDelivery
    :: HTTPDelivery
hTTPDelivery = HTTPDelivery' {_httpdURI = Nothing}


-- | The URI to which JSON-containing HTTP POST requests should be sent.
httpdURI :: Lens' HTTPDelivery (Maybe Text)
httpdURI = lens _httpdURI (\ s a -> s{_httpdURI = a})

instance FromJSON HTTPDelivery where
        parseJSON
          = withObject "HTTPDelivery"
              (\ o -> HTTPDelivery' <$> (o .:? "uri"))

instance ToJSON HTTPDelivery where
        toJSON HTTPDelivery'{..}
          = object (catMaybes [("uri" .=) <$> _httpdURI])

-- | Response containing existing \`BuildTriggers\`.
--
-- /See:/ 'listBuildTriggersResponse' smart constructor.
data ListBuildTriggersResponse =
  ListBuildTriggersResponse'
    { _lbtrNextPageToken :: !(Maybe Text)
    , _lbtrTriggers :: !(Maybe [BuildTrigger])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBuildTriggersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtrNextPageToken'
--
-- * 'lbtrTriggers'
listBuildTriggersResponse
    :: ListBuildTriggersResponse
listBuildTriggersResponse =
  ListBuildTriggersResponse'
    {_lbtrNextPageToken = Nothing, _lbtrTriggers = Nothing}


-- | Token to receive the next page of results.
lbtrNextPageToken :: Lens' ListBuildTriggersResponse (Maybe Text)
lbtrNextPageToken
  = lens _lbtrNextPageToken
      (\ s a -> s{_lbtrNextPageToken = a})

-- | \`BuildTriggers\` for the project, sorted by \`create_time\` descending.
lbtrTriggers :: Lens' ListBuildTriggersResponse [BuildTrigger]
lbtrTriggers
  = lens _lbtrTriggers (\ s a -> s{_lbtrTriggers = a})
      . _Default
      . _Coerce

instance FromJSON ListBuildTriggersResponse where
        parseJSON
          = withObject "ListBuildTriggersResponse"
              (\ o ->
                 ListBuildTriggersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "triggers" .!= mempty))

instance ToJSON ListBuildTriggersResponse where
        toJSON ListBuildTriggersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbtrNextPageToken,
                  ("triggers" .=) <$> _lbtrTriggers])

-- | Pairs a set of secret environment variables mapped to encrypted values
-- with the Cloud KMS key to use to decrypt the value.
--
-- /See:/ 'inlineSecret' smart constructor.
data InlineSecret =
  InlineSecret'
    { _isEnvMap :: !(Maybe InlineSecretEnvMap)
    , _isKmsKeyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InlineSecret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isEnvMap'
--
-- * 'isKmsKeyName'
inlineSecret
    :: InlineSecret
inlineSecret = InlineSecret' {_isEnvMap = Nothing, _isKmsKeyName = Nothing}


-- | Map of environment variable name to its encrypted value. Secret
-- environment variables must be unique across all of a build\'s secrets,
-- and must be used by at least one build step. Values can be at most 64 KB
-- in size. There can be at most 100 secret values across all of a build\'s
-- secrets.
isEnvMap :: Lens' InlineSecret (Maybe InlineSecretEnvMap)
isEnvMap = lens _isEnvMap (\ s a -> s{_isEnvMap = a})

-- | Resource name of Cloud KMS crypto key to decrypt the encrypted value. In
-- format: projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*
isKmsKeyName :: Lens' InlineSecret (Maybe Text)
isKmsKeyName
  = lens _isKmsKeyName (\ s a -> s{_isKmsKeyName = a})

instance FromJSON InlineSecret where
        parseJSON
          = withObject "InlineSecret"
              (\ o ->
                 InlineSecret' <$>
                   (o .:? "envMap") <*> (o .:? "kmsKeyName"))

instance ToJSON InlineSecret where
        toJSON InlineSecret'{..}
          = object
              (catMaybes
                 [("envMap" .=) <$> _isEnvMap,
                  ("kmsKeyName" .=) <$> _isKmsKeyName])

-- | An artifact that was uploaded during a build. This is a single record in
-- the artifact manifest JSON file.
--
-- /See:/ 'artifactResult' smart constructor.
data ArtifactResult =
  ArtifactResult'
    { _arFileHash :: !(Maybe [FileHashes])
    , _arLocation :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArtifactResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arFileHash'
--
-- * 'arLocation'
artifactResult
    :: ArtifactResult
artifactResult = ArtifactResult' {_arFileHash = Nothing, _arLocation = Nothing}


-- | The file hash of the artifact.
arFileHash :: Lens' ArtifactResult [FileHashes]
arFileHash
  = lens _arFileHash (\ s a -> s{_arFileHash = a}) .
      _Default
      . _Coerce

-- | The path of an artifact in a Google Cloud Storage bucket, with the
-- generation number. For example,
-- \`gs:\/\/mybucket\/path\/to\/output.jar#generation\`.
arLocation :: Lens' ArtifactResult (Maybe Text)
arLocation
  = lens _arLocation (\ s a -> s{_arLocation = a})

instance FromJSON ArtifactResult where
        parseJSON
          = withObject "ArtifactResult"
              (\ o ->
                 ArtifactResult' <$>
                   (o .:? "fileHash" .!= mempty) <*> (o .:? "location"))

instance ToJSON ArtifactResult where
        toJSON ArtifactResult'{..}
          = object
              (catMaybes
                 [("fileHash" .=) <$> _arFileHash,
                  ("location" .=) <$> _arLocation])

-- | GitRepoSource describes a repo and ref of a code repository.
--
-- /See:/ 'gitRepoSource' smart constructor.
data GitRepoSource =
  GitRepoSource'
    { _grsRepoType :: !(Maybe GitRepoSourceRepoType)
    , _grsURI :: !(Maybe Text)
    , _grsRef :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GitRepoSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsRepoType'
--
-- * 'grsURI'
--
-- * 'grsRef'
gitRepoSource
    :: GitRepoSource
gitRepoSource =
  GitRepoSource' {_grsRepoType = Nothing, _grsURI = Nothing, _grsRef = Nothing}


-- | See RepoType below.
grsRepoType :: Lens' GitRepoSource (Maybe GitRepoSourceRepoType)
grsRepoType
  = lens _grsRepoType (\ s a -> s{_grsRepoType = a})

-- | The URI of the repo (required).
grsURI :: Lens' GitRepoSource (Maybe Text)
grsURI = lens _grsURI (\ s a -> s{_grsURI = a})

-- | The branch or tag to use. Must start with \"refs\/\" (required).
grsRef :: Lens' GitRepoSource (Maybe Text)
grsRef = lens _grsRef (\ s a -> s{_grsRef = a})

instance FromJSON GitRepoSource where
        parseJSON
          = withObject "GitRepoSource"
              (\ o ->
                 GitRepoSource' <$>
                   (o .:? "repoType") <*> (o .:? "uri") <*>
                     (o .:? "ref"))

instance ToJSON GitRepoSource where
        toJSON GitRepoSource'{..}
          = object
              (catMaybes
                 [("repoType" .=) <$> _grsRepoType,
                  ("uri" .=) <$> _grsURI, ("ref" .=) <$> _grsRef])

-- | Container message for hashes of byte content of files, used in
-- SourceProvenance messages to verify integrity of source input to the
-- build.
--
-- /See:/ 'fileHashes' smart constructor.
newtype FileHashes =
  FileHashes'
    { _fhFileHash :: Maybe [Hash]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fhFileHash'
fileHashes
    :: FileHashes
fileHashes = FileHashes' {_fhFileHash = Nothing}


-- | Collection of file hashes.
fhFileHash :: Lens' FileHashes [Hash]
fhFileHash
  = lens _fhFileHash (\ s a -> s{_fhFileHash = a}) .
      _Default
      . _Coerce

instance FromJSON FileHashes where
        parseJSON
          = withObject "FileHashes"
              (\ o ->
                 FileHashes' <$> (o .:? "fileHash" .!= mempty))

instance ToJSON FileHashes where
        toJSON FileHashes'{..}
          = object
              (catMaybes [("fileHash" .=) <$> _fhFileHash])

-- | A non-fatal problem encountered during the execution of the build.
--
-- /See:/ 'warning' smart constructor.
data Warning =
  Warning'
    { _wPriority :: !(Maybe WarningPriority)
    , _wText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Warning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wPriority'
--
-- * 'wText'
warning
    :: Warning
warning = Warning' {_wPriority = Nothing, _wText = Nothing}


-- | The priority for this warning.
wPriority :: Lens' Warning (Maybe WarningPriority)
wPriority
  = lens _wPriority (\ s a -> s{_wPriority = a})

-- | Explanation of the warning generated.
wText :: Lens' Warning (Maybe Text)
wText = lens _wText (\ s a -> s{_wText = a})

instance FromJSON Warning where
        parseJSON
          = withObject "Warning"
              (\ o ->
                 Warning' <$> (o .:? "priority") <*> (o .:? "text"))

instance ToJSON Warning where
        toJSON Warning'{..}
          = object
              (catMaybes
                 [("priority" .=) <$> _wPriority,
                  ("text" .=) <$> _wText])

-- | Configuration for a \`WorkerPool\`. Cloud Build owns and maintains a
-- pool of workers for general use and have no access to a project\'s
-- private network. By default, builds submitted to Cloud Build will use a
-- worker from this pool. If your build needs access to resources on a
-- private network, create and use a \`WorkerPool\` to run your builds.
-- Private \`WorkerPool\`s give your builds access to any single VPC
-- network that you administer, including any on-prem resources connected
-- to that VPC network. For an overview of private pools, see [Private
-- pools
-- overview](https:\/\/cloud.google.com\/build\/docs\/private-pools\/private-pools-overview).
--
-- /See:/ 'workerPool' smart constructor.
data WorkerPool =
  WorkerPool'
    { _wpAnnotations :: !(Maybe WorkerPoolAnnotations)
    , _wpEtag :: !(Maybe Text)
    , _wpState :: !(Maybe WorkerPoolState)
    , _wpUid :: !(Maybe Text)
    , _wpUpdateTime :: !(Maybe DateTime')
    , _wpDeleteTime :: !(Maybe DateTime')
    , _wpPrivatePoolV1Config :: !(Maybe PrivatePoolV1Config)
    , _wpName :: !(Maybe Text)
    , _wpDisplayName :: !(Maybe Text)
    , _wpCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpAnnotations'
--
-- * 'wpEtag'
--
-- * 'wpState'
--
-- * 'wpUid'
--
-- * 'wpUpdateTime'
--
-- * 'wpDeleteTime'
--
-- * 'wpPrivatePoolV1Config'
--
-- * 'wpName'
--
-- * 'wpDisplayName'
--
-- * 'wpCreateTime'
workerPool
    :: WorkerPool
workerPool =
  WorkerPool'
    { _wpAnnotations = Nothing
    , _wpEtag = Nothing
    , _wpState = Nothing
    , _wpUid = Nothing
    , _wpUpdateTime = Nothing
    , _wpDeleteTime = Nothing
    , _wpPrivatePoolV1Config = Nothing
    , _wpName = Nothing
    , _wpDisplayName = Nothing
    , _wpCreateTime = Nothing
    }


-- | User specified annotations. See
-- https:\/\/google.aip.dev\/128#annotations for more details such as
-- format and size limitations.
wpAnnotations :: Lens' WorkerPool (Maybe WorkerPoolAnnotations)
wpAnnotations
  = lens _wpAnnotations
      (\ s a -> s{_wpAnnotations = a})

-- | Output only. Checksum computed by the server. May be sent on update and
-- delete requests to ensure that the client has an up-to-date value before
-- proceeding.
wpEtag :: Lens' WorkerPool (Maybe Text)
wpEtag = lens _wpEtag (\ s a -> s{_wpEtag = a})

-- | Output only. \`WorkerPool\` state.
wpState :: Lens' WorkerPool (Maybe WorkerPoolState)
wpState = lens _wpState (\ s a -> s{_wpState = a})

-- | Output only. A unique identifier for the \`WorkerPool\`.
wpUid :: Lens' WorkerPool (Maybe Text)
wpUid = lens _wpUid (\ s a -> s{_wpUid = a})

-- | Output only. Time at which the request to update the \`WorkerPool\` was
-- received.
wpUpdateTime :: Lens' WorkerPool (Maybe UTCTime)
wpUpdateTime
  = lens _wpUpdateTime (\ s a -> s{_wpUpdateTime = a})
      . mapping _DateTime

-- | Output only. Time at which the request to delete the \`WorkerPool\` was
-- received.
wpDeleteTime :: Lens' WorkerPool (Maybe UTCTime)
wpDeleteTime
  = lens _wpDeleteTime (\ s a -> s{_wpDeleteTime = a})
      . mapping _DateTime

-- | Private Pool using a v1 configuration.
wpPrivatePoolV1Config :: Lens' WorkerPool (Maybe PrivatePoolV1Config)
wpPrivatePoolV1Config
  = lens _wpPrivatePoolV1Config
      (\ s a -> s{_wpPrivatePoolV1Config = a})

-- | Output only. The resource name of the \`WorkerPool\`, with format
-- \`projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}\`.
-- The value of \`{worker_pool}\` is provided by \`worker_pool_id\` in
-- \`CreateWorkerPool\` request and the value of \`{location}\` is
-- determined by the endpoint accessed.
wpName :: Lens' WorkerPool (Maybe Text)
wpName = lens _wpName (\ s a -> s{_wpName = a})

-- | A user-specified, human-readable name for the \`WorkerPool\`. If
-- provided, this value must be 1-63 characters.
wpDisplayName :: Lens' WorkerPool (Maybe Text)
wpDisplayName
  = lens _wpDisplayName
      (\ s a -> s{_wpDisplayName = a})

-- | Output only. Time at which the request to create the \`WorkerPool\` was
-- received.
wpCreateTime :: Lens' WorkerPool (Maybe UTCTime)
wpCreateTime
  = lens _wpCreateTime (\ s a -> s{_wpCreateTime = a})
      . mapping _DateTime

instance FromJSON WorkerPool where
        parseJSON
          = withObject "WorkerPool"
              (\ o ->
                 WorkerPool' <$>
                   (o .:? "annotations") <*> (o .:? "etag") <*>
                     (o .:? "state")
                     <*> (o .:? "uid")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "deleteTime")
                     <*> (o .:? "privatePoolV1Config")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "createTime"))

instance ToJSON WorkerPool where
        toJSON WorkerPool'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _wpAnnotations,
                  ("etag" .=) <$> _wpEtag, ("state" .=) <$> _wpState,
                  ("uid" .=) <$> _wpUid,
                  ("updateTime" .=) <$> _wpUpdateTime,
                  ("deleteTime" .=) <$> _wpDeleteTime,
                  ("privatePoolV1Config" .=) <$>
                    _wpPrivatePoolV1Config,
                  ("name" .=) <$> _wpName,
                  ("displayName" .=) <$> _wpDisplayName,
                  ("createTime" .=) <$> _wpCreateTime])

-- | Substitutions data for \`Build\` resource.
--
-- /See:/ 'buildSubstitutions' smart constructor.
newtype BuildSubstitutions =
  BuildSubstitutions'
    { _bsAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildSubstitutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsAddtional'
buildSubstitutions
    :: HashMap Text Text -- ^ 'bsAddtional'
    -> BuildSubstitutions
buildSubstitutions pBsAddtional_ =
  BuildSubstitutions' {_bsAddtional = _Coerce # pBsAddtional_}


bsAddtional :: Lens' BuildSubstitutions (HashMap Text Text)
bsAddtional
  = lens _bsAddtional (\ s a -> s{_bsAddtional = a}) .
      _Coerce

instance FromJSON BuildSubstitutions where
        parseJSON
          = withObject "BuildSubstitutions"
              (\ o -> BuildSubstitutions' <$> (parseJSONObject o))

instance ToJSON BuildSubstitutions where
        toJSON = toJSON . _bsAddtional

-- | SlackDelivery is the delivery configuration for delivering Slack
-- messages via webhooks. See Slack webhook documentation at:
-- https:\/\/api.slack.com\/messaging\/webhooks.
--
-- /See:/ 'slackDelivery' smart constructor.
newtype SlackDelivery =
  SlackDelivery'
    { _sdWebhookURI :: Maybe NotifierSecretRef
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SlackDelivery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdWebhookURI'
slackDelivery
    :: SlackDelivery
slackDelivery = SlackDelivery' {_sdWebhookURI = Nothing}


-- | The secret reference for the Slack webhook URI for sending messages to a
-- channel.
sdWebhookURI :: Lens' SlackDelivery (Maybe NotifierSecretRef)
sdWebhookURI
  = lens _sdWebhookURI (\ s a -> s{_sdWebhookURI = a})

instance FromJSON SlackDelivery where
        parseJSON
          = withObject "SlackDelivery"
              (\ o -> SlackDelivery' <$> (o .:? "webhookUri"))

instance ToJSON SlackDelivery where
        toJSON SlackDelivery'{..}
          = object
              (catMaybes [("webhookUri" .=) <$> _sdWebhookURI])

-- | NotifierSecret is the container that maps a secret name (reference) to
-- its Google Cloud Secret Manager resource path.
--
-- /See:/ 'notifierSecret' smart constructor.
data NotifierSecret =
  NotifierSecret'
    { _nsValue :: !(Maybe Text)
    , _nsName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotifierSecret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsValue'
--
-- * 'nsName'
notifierSecret
    :: NotifierSecret
notifierSecret = NotifierSecret' {_nsValue = Nothing, _nsName = Nothing}


-- | Value is interpreted to be a resource path for fetching the actual
-- (versioned) secret data for this secret. For example, this would be a
-- Google Cloud Secret Manager secret version resource path like:
-- \"projects\/my-project\/secrets\/my-secret\/versions\/latest\".
nsValue :: Lens' NotifierSecret (Maybe Text)
nsValue = lens _nsValue (\ s a -> s{_nsValue = a})

-- | Name is the local name of the secret, such as the verbatim string
-- \"my-smtp-password\".
nsName :: Lens' NotifierSecret (Maybe Text)
nsName = lens _nsName (\ s a -> s{_nsName = a})

instance FromJSON NotifierSecret where
        parseJSON
          = withObject "NotifierSecret"
              (\ o ->
                 NotifierSecret' <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON NotifierSecret where
        toJSON NotifierSecret'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _nsValue, ("name" .=) <$> _nsName])

-- | Location of the source in a supported storage service.
--
-- /See:/ 'source' smart constructor.
data Source =
  Source'
    { _sRepoSource :: !(Maybe RepoSource)
    , _sStorageSourceManifest :: !(Maybe StorageSourceManifest)
    , _sStorageSource :: !(Maybe StorageSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sRepoSource'
--
-- * 'sStorageSourceManifest'
--
-- * 'sStorageSource'
source
    :: Source
source =
  Source'
    { _sRepoSource = Nothing
    , _sStorageSourceManifest = Nothing
    , _sStorageSource = Nothing
    }


-- | If provided, get the source from this location in a Cloud Source
-- Repository.
sRepoSource :: Lens' Source (Maybe RepoSource)
sRepoSource
  = lens _sRepoSource (\ s a -> s{_sRepoSource = a})

-- | If provided, get the source from this manifest in Google Cloud Storage.
-- This feature is in Preview; see description
-- [here](https:\/\/github.com\/GoogleCloudPlatform\/cloud-builders\/tree\/master\/gcs-fetcher).
sStorageSourceManifest :: Lens' Source (Maybe StorageSourceManifest)
sStorageSourceManifest
  = lens _sStorageSourceManifest
      (\ s a -> s{_sStorageSourceManifest = a})

-- | If provided, get the source from this location in Google Cloud Storage.
sStorageSource :: Lens' Source (Maybe StorageSource)
sStorageSource
  = lens _sStorageSource
      (\ s a -> s{_sStorageSource = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o ->
                 Source' <$>
                   (o .:? "repoSource") <*>
                     (o .:? "storageSourceManifest")
                     <*> (o .:? "storageSource"))

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("repoSource" .=) <$> _sRepoSource,
                  ("storageSourceManifest" .=) <$>
                    _sStorageSourceManifest,
                  ("storageSource" .=) <$> _sStorageSource])

-- | Message that represents an arbitrary HTTP body. It should only be used
-- for payload formats that can\'t be represented as JSON, such as raw
-- binary or an HTML page. This message can be used both in streaming and
-- non-streaming API methods in the request as well as the response. It can
-- be used as a top-level request field, which is convenient if one wants
-- to extract parameters from either the URL or HTTP template into the
-- request fields and also want access to the raw HTTP body. Example:
-- message GetResourceRequest { \/\/ A unique request id. string request_id
-- = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody
-- http_body = 2; } service ResourceService { rpc
-- GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
-- UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); }
-- Example with streaming methods: service CaldavService { rpc
-- GetCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody)
-- returns (stream google.api.HttpBody); } Use of this type only changes
-- how the request and response bodies are handled, all other features will
-- continue to work unchanged.
--
-- /See:/ 'hTTPBody' smart constructor.
data HTTPBody =
  HTTPBody'
    { _httpbExtensions :: !(Maybe [HTTPBodyExtensionsItem])
    , _httpbData :: !(Maybe Bytes)
    , _httpbContentType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpbExtensions'
--
-- * 'httpbData'
--
-- * 'httpbContentType'
hTTPBody
    :: HTTPBody
hTTPBody =
  HTTPBody'
    { _httpbExtensions = Nothing
    , _httpbData = Nothing
    , _httpbContentType = Nothing
    }


-- | Application specific response metadata. Must be set in the first
-- response for streaming APIs.
httpbExtensions :: Lens' HTTPBody [HTTPBodyExtensionsItem]
httpbExtensions
  = lens _httpbExtensions
      (\ s a -> s{_httpbExtensions = a})
      . _Default
      . _Coerce

-- | The HTTP request\/response body as raw binary.
httpbData :: Lens' HTTPBody (Maybe ByteString)
httpbData
  = lens _httpbData (\ s a -> s{_httpbData = a}) .
      mapping _Bytes

-- | The HTTP Content-Type header value specifying the content type of the
-- body.
httpbContentType :: Lens' HTTPBody (Maybe Text)
httpbContentType
  = lens _httpbContentType
      (\ s a -> s{_httpbContentType = a})

instance FromJSON HTTPBody where
        parseJSON
          = withObject "HTTPBody"
              (\ o ->
                 HTTPBody' <$>
                   (o .:? "extensions" .!= mempty) <*> (o .:? "data")
                     <*> (o .:? "contentType"))

instance ToJSON HTTPBody where
        toJSON HTTPBody'{..}
          = object
              (catMaybes
                 [("extensions" .=) <$> _httpbExtensions,
                  ("data" .=) <$> _httpbData,
                  ("contentType" .=) <$> _httpbContentType])

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
  OperationMetadata'
    { _omAPIVersion :: !(Maybe Text)
    , _omEndTime :: !(Maybe DateTime')
    , _omStatusDetail :: !(Maybe Text)
    , _omVerb :: !(Maybe Text)
    , _omCancelRequested :: !(Maybe Bool)
    , _omTarget :: !(Maybe Text)
    , _omCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAPIVersion'
--
-- * 'omEndTime'
--
-- * 'omStatusDetail'
--
-- * 'omVerb'
--
-- * 'omCancelRequested'
--
-- * 'omTarget'
--
-- * 'omCreateTime'
operationMetadata
    :: OperationMetadata
operationMetadata =
  OperationMetadata'
    { _omAPIVersion = Nothing
    , _omEndTime = Nothing
    , _omStatusDetail = Nothing
    , _omVerb = Nothing
    , _omCancelRequested = Nothing
    , _omTarget = Nothing
    , _omCreateTime = Nothing
    }


-- | Output only. API version used to start the operation.
omAPIVersion :: Lens' OperationMetadata (Maybe Text)
omAPIVersion
  = lens _omAPIVersion (\ s a -> s{_omAPIVersion = a})

-- | Output only. The time the operation finished running.
omEndTime :: Lens' OperationMetadata (Maybe UTCTime)
omEndTime
  = lens _omEndTime (\ s a -> s{_omEndTime = a}) .
      mapping _DateTime

-- | Output only. Human-readable status of the operation, if any.
omStatusDetail :: Lens' OperationMetadata (Maybe Text)
omStatusDetail
  = lens _omStatusDetail
      (\ s a -> s{_omStatusDetail = a})

-- | Output only. Name of the verb executed by the operation.
omVerb :: Lens' OperationMetadata (Maybe Text)
omVerb = lens _omVerb (\ s a -> s{_omVerb = a})

-- | Output only. Identifies whether the user has requested cancellation of
-- the operation. Operations that have successfully been cancelled have
-- Operation.error value with a google.rpc.Status.code of 1, corresponding
-- to \`Code.CANCELLED\`.
omCancelRequested :: Lens' OperationMetadata (Maybe Bool)
omCancelRequested
  = lens _omCancelRequested
      (\ s a -> s{_omCancelRequested = a})

-- | Output only. Server-defined resource path for the target of the
-- operation.
omTarget :: Lens' OperationMetadata (Maybe Text)
omTarget = lens _omTarget (\ s a -> s{_omTarget = a})

-- | Output only. The time the operation was created.
omCreateTime :: Lens' OperationMetadata (Maybe UTCTime)
omCreateTime
  = lens _omCreateTime (\ s a -> s{_omCreateTime = a})
      . mapping _DateTime

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata' <$>
                   (o .:? "apiVersion") <*> (o .:? "endTime") <*>
                     (o .:? "statusDetail")
                     <*> (o .:? "verb")
                     <*> (o .:? "cancelRequested")
                     <*> (o .:? "target")
                     <*> (o .:? "createTime"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _omAPIVersion,
                  ("endTime" .=) <$> _omEndTime,
                  ("statusDetail" .=) <$> _omStatusDetail,
                  ("verb" .=) <$> _omVerb,
                  ("cancelRequested" .=) <$> _omCancelRequested,
                  ("target" .=) <$> _omTarget,
                  ("createTime" .=) <$> _omCreateTime])

-- | Output only. Stores timing information for phases of the build. Valid
-- keys are: * BUILD: time to execute all build steps * PUSH: time to push
-- all specified images. * FETCHSOURCE: time to fetch source. If the build
-- does not specify source or images, these keys will not be included.
--
-- /See:/ 'buildTiming' smart constructor.
newtype BuildTiming =
  BuildTiming'
    { _btAddtional :: HashMap Text TimeSpan
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildTiming' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btAddtional'
buildTiming
    :: HashMap Text TimeSpan -- ^ 'btAddtional'
    -> BuildTiming
buildTiming pBtAddtional_ =
  BuildTiming' {_btAddtional = _Coerce # pBtAddtional_}


btAddtional :: Lens' BuildTiming (HashMap Text TimeSpan)
btAddtional
  = lens _btAddtional (\ s a -> s{_btAddtional = a}) .
      _Coerce

instance FromJSON BuildTiming where
        parseJSON
          = withObject "BuildTiming"
              (\ o -> BuildTiming' <$> (parseJSONObject o))

instance ToJSON BuildTiming where
        toJSON = toJSON . _btAddtional

-- | NotifierConfig is the top-level configuration message.
--
-- /See:/ 'notifierConfig' smart constructor.
data NotifierConfig =
  NotifierConfig'
    { _ncAPIVersion :: !(Maybe Text)
    , _ncKind :: !(Maybe Text)
    , _ncSpec :: !(Maybe NotifierSpec)
    , _ncMetadata :: !(Maybe NotifierMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotifierConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncAPIVersion'
--
-- * 'ncKind'
--
-- * 'ncSpec'
--
-- * 'ncMetadata'
notifierConfig
    :: NotifierConfig
notifierConfig =
  NotifierConfig'
    { _ncAPIVersion = Nothing
    , _ncKind = Nothing
    , _ncSpec = Nothing
    , _ncMetadata = Nothing
    }


-- | The API version of this configuration format.
ncAPIVersion :: Lens' NotifierConfig (Maybe Text)
ncAPIVersion
  = lens _ncAPIVersion (\ s a -> s{_ncAPIVersion = a})

-- | The type of notifier to use (e.g. SMTPNotifier).
ncKind :: Lens' NotifierConfig (Maybe Text)
ncKind = lens _ncKind (\ s a -> s{_ncKind = a})

-- | The actual configuration for this notifier.
ncSpec :: Lens' NotifierConfig (Maybe NotifierSpec)
ncSpec = lens _ncSpec (\ s a -> s{_ncSpec = a})

-- | Metadata for referring to\/handling\/deploying this notifier.
ncMetadata :: Lens' NotifierConfig (Maybe NotifierMetadata)
ncMetadata
  = lens _ncMetadata (\ s a -> s{_ncMetadata = a})

instance FromJSON NotifierConfig where
        parseJSON
          = withObject "NotifierConfig"
              (\ o ->
                 NotifierConfig' <$>
                   (o .:? "apiVersion") <*> (o .:? "kind") <*>
                     (o .:? "spec")
                     <*> (o .:? "metadata"))

instance ToJSON NotifierConfig where
        toJSON NotifierConfig'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _ncAPIVersion,
                  ("kind" .=) <$> _ncKind, ("spec" .=) <$> _ncSpec,
                  ("metadata" .=) <$> _ncMetadata])

-- | Metadata for build operations.
--
-- /See:/ 'buildOperationMetadata' smart constructor.
newtype BuildOperationMetadata =
  BuildOperationMetadata'
    { _bomBuild :: Maybe Build
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bomBuild'
buildOperationMetadata
    :: BuildOperationMetadata
buildOperationMetadata = BuildOperationMetadata' {_bomBuild = Nothing}


-- | The build that the operation is tracking.
bomBuild :: Lens' BuildOperationMetadata (Maybe Build)
bomBuild = lens _bomBuild (\ s a -> s{_bomBuild = a})

instance FromJSON BuildOperationMetadata where
        parseJSON
          = withObject "BuildOperationMetadata"
              (\ o -> BuildOperationMetadata' <$> (o .:? "build"))

instance ToJSON BuildOperationMetadata where
        toJSON BuildOperationMetadata'{..}
          = object (catMaybes [("build" .=) <$> _bomBuild])

-- | Optional arguments to enable specific features of builds.
--
-- /See:/ 'buildOptions' smart constructor.
data BuildOptions =
  BuildOptions'
    { _boDiskSizeGb :: !(Maybe (Textual Int64))
    , _boEnv :: !(Maybe [Text])
    , _boPool :: !(Maybe PoolOption)
    , _boSubstitutionOption :: !(Maybe BuildOptionsSubstitutionOption)
    , _boRequestedVerifyOption :: !(Maybe BuildOptionsRequestedVerifyOption)
    , _boWorkerPool :: !(Maybe Text)
    , _boMachineType :: !(Maybe BuildOptionsMachineType)
    , _boSecretEnv :: !(Maybe [Text])
    , _boVolumes :: !(Maybe [Volume])
    , _boLogStreamingOption :: !(Maybe BuildOptionsLogStreamingOption)
    , _boLogging :: !(Maybe BuildOptionsLogging)
    , _boSourceProvenanceHash :: !(Maybe [BuildOptionsSourceProvenanceHashItem])
    , _boDynamicSubstitutions :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boDiskSizeGb'
--
-- * 'boEnv'
--
-- * 'boPool'
--
-- * 'boSubstitutionOption'
--
-- * 'boRequestedVerifyOption'
--
-- * 'boWorkerPool'
--
-- * 'boMachineType'
--
-- * 'boSecretEnv'
--
-- * 'boVolumes'
--
-- * 'boLogStreamingOption'
--
-- * 'boLogging'
--
-- * 'boSourceProvenanceHash'
--
-- * 'boDynamicSubstitutions'
buildOptions
    :: BuildOptions
buildOptions =
  BuildOptions'
    { _boDiskSizeGb = Nothing
    , _boEnv = Nothing
    , _boPool = Nothing
    , _boSubstitutionOption = Nothing
    , _boRequestedVerifyOption = Nothing
    , _boWorkerPool = Nothing
    , _boMachineType = Nothing
    , _boSecretEnv = Nothing
    , _boVolumes = Nothing
    , _boLogStreamingOption = Nothing
    , _boLogging = Nothing
    , _boSourceProvenanceHash = Nothing
    , _boDynamicSubstitutions = Nothing
    }


-- | Requested disk size for the VM that runs the build. Note that this is
-- *NOT* \"disk free\"; some of the space will be used by the operating
-- system and build utilities. Also note that this is the minimum disk size
-- that will be allocated for the build -- the build may run with a larger
-- disk than requested. At present, the maximum disk size is 1000GB; builds
-- that request more than the maximum are rejected with an error.
boDiskSizeGb :: Lens' BuildOptions (Maybe Int64)
boDiskSizeGb
  = lens _boDiskSizeGb (\ s a -> s{_boDiskSizeGb = a})
      . mapping _Coerce

-- | A list of global environment variable definitions that will exist for
-- all build steps in this build. If a variable is defined in both globally
-- and in a build step, the variable will use the build step value. The
-- elements are of the form \"KEY=VALUE\" for the environment variable
-- \"KEY\" being given the value \"VALUE\".
boEnv :: Lens' BuildOptions [Text]
boEnv
  = lens _boEnv (\ s a -> s{_boEnv = a}) . _Default .
      _Coerce

-- | Optional. Specification for execution on a \`WorkerPool\`. See [running
-- builds in a private
-- pool](https:\/\/cloud.google.com\/build\/docs\/private-pools\/run-builds-in-private-pool)
-- for more information.
boPool :: Lens' BuildOptions (Maybe PoolOption)
boPool = lens _boPool (\ s a -> s{_boPool = a})

-- | Option to specify behavior when there is an error in the substitution
-- checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and
-- cannot be overridden in the build configuration file.
boSubstitutionOption :: Lens' BuildOptions (Maybe BuildOptionsSubstitutionOption)
boSubstitutionOption
  = lens _boSubstitutionOption
      (\ s a -> s{_boSubstitutionOption = a})

-- | Requested verifiability options.
boRequestedVerifyOption :: Lens' BuildOptions (Maybe BuildOptionsRequestedVerifyOption)
boRequestedVerifyOption
  = lens _boRequestedVerifyOption
      (\ s a -> s{_boRequestedVerifyOption = a})

-- | This field deprecated; please use \`pool.name\` instead.
boWorkerPool :: Lens' BuildOptions (Maybe Text)
boWorkerPool
  = lens _boWorkerPool (\ s a -> s{_boWorkerPool = a})

-- | Compute Engine machine type on which to run the build.
boMachineType :: Lens' BuildOptions (Maybe BuildOptionsMachineType)
boMachineType
  = lens _boMachineType
      (\ s a -> s{_boMachineType = a})

-- | A list of global environment variables, which are encrypted using a
-- Cloud Key Management Service crypto key. These values must be specified
-- in the build\'s \`Secret\`. These variables will be available to all
-- build steps in this build.
boSecretEnv :: Lens' BuildOptions [Text]
boSecretEnv
  = lens _boSecretEnv (\ s a -> s{_boSecretEnv = a}) .
      _Default
      . _Coerce

-- | Global list of volumes to mount for ALL build steps Each volume is
-- created as an empty volume prior to starting the build process. Upon
-- completion of the build, volumes and their contents are discarded.
-- Global volume names and paths cannot conflict with the volumes defined a
-- build step. Using a global volume in a build with only one step is not
-- valid as it is indicative of a build request with an incorrect
-- configuration.
boVolumes :: Lens' BuildOptions [Volume]
boVolumes
  = lens _boVolumes (\ s a -> s{_boVolumes = a}) .
      _Default
      . _Coerce

-- | Option to define build log streaming behavior to Google Cloud Storage.
boLogStreamingOption :: Lens' BuildOptions (Maybe BuildOptionsLogStreamingOption)
boLogStreamingOption
  = lens _boLogStreamingOption
      (\ s a -> s{_boLogStreamingOption = a})

-- | Option to specify the logging mode, which determines if and where build
-- logs are stored.
boLogging :: Lens' BuildOptions (Maybe BuildOptionsLogging)
boLogging
  = lens _boLogging (\ s a -> s{_boLogging = a})

-- | Requested hash for SourceProvenance.
boSourceProvenanceHash :: Lens' BuildOptions [BuildOptionsSourceProvenanceHashItem]
boSourceProvenanceHash
  = lens _boSourceProvenanceHash
      (\ s a -> s{_boSourceProvenanceHash = a})
      . _Default
      . _Coerce

-- | Option to specify whether or not to apply bash style string operations
-- to the substitutions. NOTE: this is always enabled for triggered builds
-- and cannot be overridden in the build configuration file.
boDynamicSubstitutions :: Lens' BuildOptions (Maybe Bool)
boDynamicSubstitutions
  = lens _boDynamicSubstitutions
      (\ s a -> s{_boDynamicSubstitutions = a})

instance FromJSON BuildOptions where
        parseJSON
          = withObject "BuildOptions"
              (\ o ->
                 BuildOptions' <$>
                   (o .:? "diskSizeGb") <*> (o .:? "env" .!= mempty) <*>
                     (o .:? "pool")
                     <*> (o .:? "substitutionOption")
                     <*> (o .:? "requestedVerifyOption")
                     <*> (o .:? "workerPool")
                     <*> (o .:? "machineType")
                     <*> (o .:? "secretEnv" .!= mempty)
                     <*> (o .:? "volumes" .!= mempty)
                     <*> (o .:? "logStreamingOption")
                     <*> (o .:? "logging")
                     <*> (o .:? "sourceProvenanceHash" .!= mempty)
                     <*> (o .:? "dynamicSubstitutions"))

instance ToJSON BuildOptions where
        toJSON BuildOptions'{..}
          = object
              (catMaybes
                 [("diskSizeGb" .=) <$> _boDiskSizeGb,
                  ("env" .=) <$> _boEnv, ("pool" .=) <$> _boPool,
                  ("substitutionOption" .=) <$> _boSubstitutionOption,
                  ("requestedVerifyOption" .=) <$>
                    _boRequestedVerifyOption,
                  ("workerPool" .=) <$> _boWorkerPool,
                  ("machineType" .=) <$> _boMachineType,
                  ("secretEnv" .=) <$> _boSecretEnv,
                  ("volumes" .=) <$> _boVolumes,
                  ("logStreamingOption" .=) <$> _boLogStreamingOption,
                  ("logging" .=) <$> _boLogging,
                  ("sourceProvenanceHash" .=) <$>
                    _boSourceProvenanceHash,
                  ("dynamicSubstitutions" .=) <$>
                    _boDynamicSubstitutions])

-- | Escape hatch for users to supply custom delivery configs.
--
-- /See:/ 'notificationStructDelivery' smart constructor.
newtype NotificationStructDelivery =
  NotificationStructDelivery'
    { _nsdAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationStructDelivery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsdAddtional'
notificationStructDelivery
    :: HashMap Text JSONValue -- ^ 'nsdAddtional'
    -> NotificationStructDelivery
notificationStructDelivery pNsdAddtional_ =
  NotificationStructDelivery' {_nsdAddtional = _Coerce # pNsdAddtional_}


-- | Properties of the object.
nsdAddtional :: Lens' NotificationStructDelivery (HashMap Text JSONValue)
nsdAddtional
  = lens _nsdAddtional (\ s a -> s{_nsdAddtional = a})
      . _Coerce

instance FromJSON NotificationStructDelivery where
        parseJSON
          = withObject "NotificationStructDelivery"
              (\ o ->
                 NotificationStructDelivery' <$> (parseJSONObject o))

instance ToJSON NotificationStructDelivery where
        toJSON = toJSON . _nsdAddtional

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Specifies a build trigger to run and the source to use.
--
-- /See:/ 'runBuildTriggerRequest' smart constructor.
data RunBuildTriggerRequest =
  RunBuildTriggerRequest'
    { _rbtrTriggerId :: !(Maybe Text)
    , _rbtrSource :: !(Maybe RepoSource)
    , _rbtrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunBuildTriggerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbtrTriggerId'
--
-- * 'rbtrSource'
--
-- * 'rbtrProjectId'
runBuildTriggerRequest
    :: RunBuildTriggerRequest
runBuildTriggerRequest =
  RunBuildTriggerRequest'
    {_rbtrTriggerId = Nothing, _rbtrSource = Nothing, _rbtrProjectId = Nothing}


-- | Required. ID of the trigger.
rbtrTriggerId :: Lens' RunBuildTriggerRequest (Maybe Text)
rbtrTriggerId
  = lens _rbtrTriggerId
      (\ s a -> s{_rbtrTriggerId = a})

-- | Source to build against this trigger.
rbtrSource :: Lens' RunBuildTriggerRequest (Maybe RepoSource)
rbtrSource
  = lens _rbtrSource (\ s a -> s{_rbtrSource = a})

-- | Required. ID of the project.
rbtrProjectId :: Lens' RunBuildTriggerRequest (Maybe Text)
rbtrProjectId
  = lens _rbtrProjectId
      (\ s a -> s{_rbtrProjectId = a})

instance FromJSON RunBuildTriggerRequest where
        parseJSON
          = withObject "RunBuildTriggerRequest"
              (\ o ->
                 RunBuildTriggerRequest' <$>
                   (o .:? "triggerId") <*> (o .:? "source") <*>
                     (o .:? "projectId"))

instance ToJSON RunBuildTriggerRequest where
        toJSON RunBuildTriggerRequest'{..}
          = object
              (catMaybes
                 [("triggerId" .=) <$> _rbtrTriggerId,
                  ("source" .=) <$> _rbtrSource,
                  ("projectId" .=) <$> _rbtrProjectId])

-- | Configuration for an automated build in response to source repository
-- changes.
--
-- /See:/ 'buildTrigger' smart constructor.
data BuildTrigger =
  BuildTrigger'
    { _btSubstitutions :: !(Maybe BuildTriggerSubstitutions)
    , _btResourceName :: !(Maybe Text)
    , _btIncludedFiles :: !(Maybe [Text])
    , _btSourceToBuild :: !(Maybe GitRepoSource)
    , _btDisabled :: !(Maybe Bool)
    , _btTriggerTemplate :: !(Maybe RepoSource)
    , _btBuild :: !(Maybe Build)
    , _btIgnoredFiles :: !(Maybe [Text])
    , _btPubsubConfig :: !(Maybe PubsubConfig)
    , _btName :: !(Maybe Text)
    , _btId :: !(Maybe Text)
    , _btGithub :: !(Maybe GitHubEventsConfig)
    , _btFilter :: !(Maybe Text)
    , _btAutodetect :: !(Maybe Bool)
    , _btDescription :: !(Maybe Text)
    , _btFilename :: !(Maybe Text)
    , _btCreateTime :: !(Maybe DateTime')
    , _btWebhookConfig :: !(Maybe WebhookConfig)
    , _btTags :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btSubstitutions'
--
-- * 'btResourceName'
--
-- * 'btIncludedFiles'
--
-- * 'btSourceToBuild'
--
-- * 'btDisabled'
--
-- * 'btTriggerTemplate'
--
-- * 'btBuild'
--
-- * 'btIgnoredFiles'
--
-- * 'btPubsubConfig'
--
-- * 'btName'
--
-- * 'btId'
--
-- * 'btGithub'
--
-- * 'btFilter'
--
-- * 'btAutodetect'
--
-- * 'btDescription'
--
-- * 'btFilename'
--
-- * 'btCreateTime'
--
-- * 'btWebhookConfig'
--
-- * 'btTags'
buildTrigger
    :: BuildTrigger
buildTrigger =
  BuildTrigger'
    { _btSubstitutions = Nothing
    , _btResourceName = Nothing
    , _btIncludedFiles = Nothing
    , _btSourceToBuild = Nothing
    , _btDisabled = Nothing
    , _btTriggerTemplate = Nothing
    , _btBuild = Nothing
    , _btIgnoredFiles = Nothing
    , _btPubsubConfig = Nothing
    , _btName = Nothing
    , _btId = Nothing
    , _btGithub = Nothing
    , _btFilter = Nothing
    , _btAutodetect = Nothing
    , _btDescription = Nothing
    , _btFilename = Nothing
    , _btCreateTime = Nothing
    , _btWebhookConfig = Nothing
    , _btTags = Nothing
    }


-- | Substitutions for Build resource. The keys must match the following
-- regular expression: \`^_[A-Z0-9_]+$\`.
btSubstitutions :: Lens' BuildTrigger (Maybe BuildTriggerSubstitutions)
btSubstitutions
  = lens _btSubstitutions
      (\ s a -> s{_btSubstitutions = a})

-- | The \`Trigger\` name with format:
-- \`projects\/{project}\/locations\/{location}\/triggers\/{trigger}\`,
-- where {trigger} is a unique identifier generated by the service.
btResourceName :: Lens' BuildTrigger (Maybe Text)
btResourceName
  = lens _btResourceName
      (\ s a -> s{_btResourceName = a})

-- | If any of the files altered in the commit pass the ignored_files filter
-- and included_files is empty, then as far as this filter is concerned, we
-- should trigger the build. If any of the files altered in the commit pass
-- the ignored_files filter and included_files is not empty, then we make
-- sure that at least one of those files matches a included_files glob. If
-- not, then we do not trigger a build.
btIncludedFiles :: Lens' BuildTrigger [Text]
btIncludedFiles
  = lens _btIncludedFiles
      (\ s a -> s{_btIncludedFiles = a})
      . _Default
      . _Coerce

-- | The repo and ref of the repository from which to build. This field is
-- used only for those triggers that do not respond to SCM events. Triggers
-- that respond to such events build source at whatever commit caused the
-- event. This field is currently only used by Webhook, Pub\/Sub, Manual,
-- and Cron triggers.
btSourceToBuild :: Lens' BuildTrigger (Maybe GitRepoSource)
btSourceToBuild
  = lens _btSourceToBuild
      (\ s a -> s{_btSourceToBuild = a})

-- | If true, the trigger will never automatically execute a build.
btDisabled :: Lens' BuildTrigger (Maybe Bool)
btDisabled
  = lens _btDisabled (\ s a -> s{_btDisabled = a})

-- | Template describing the types of source changes to trigger a build.
-- Branch and tag names in trigger templates are interpreted as regular
-- expressions. Any branch or tag change that matches that regular
-- expression will trigger a build. Mutually exclusive with \`github\`.
btTriggerTemplate :: Lens' BuildTrigger (Maybe RepoSource)
btTriggerTemplate
  = lens _btTriggerTemplate
      (\ s a -> s{_btTriggerTemplate = a})

-- | Contents of the build template.
btBuild :: Lens' BuildTrigger (Maybe Build)
btBuild = lens _btBuild (\ s a -> s{_btBuild = a})

-- | ignored_files and included_files are file glob matches using
-- https:\/\/golang.org\/pkg\/path\/filepath\/#Match extended with support
-- for \"**\". If ignored_files and changed files are both empty, then they
-- are not used to determine whether or not to trigger a build. If
-- ignored_files is not empty, then we ignore any files that match any of
-- the ignored_file globs. If the change has no files that are outside of
-- the ignored_files globs, then we do not trigger a build.
btIgnoredFiles :: Lens' BuildTrigger [Text]
btIgnoredFiles
  = lens _btIgnoredFiles
      (\ s a -> s{_btIgnoredFiles = a})
      . _Default
      . _Coerce

-- | PubsubConfig describes the configuration of a trigger that creates a
-- build whenever a Pub\/Sub message is published.
btPubsubConfig :: Lens' BuildTrigger (Maybe PubsubConfig)
btPubsubConfig
  = lens _btPubsubConfig
      (\ s a -> s{_btPubsubConfig = a})

-- | User-assigned name of the trigger. Must be unique within the project.
-- Trigger names must meet the following requirements: + They must contain
-- only alphanumeric characters and dashes. + They can be 1-64 characters
-- long. + They must begin and end with an alphanumeric character.
btName :: Lens' BuildTrigger (Maybe Text)
btName = lens _btName (\ s a -> s{_btName = a})

-- | Output only. Unique identifier of the trigger.
btId :: Lens' BuildTrigger (Maybe Text)
btId = lens _btId (\ s a -> s{_btId = a})

-- | GitHubEventsConfig describes the configuration of a trigger that creates
-- a build whenever a GitHub event is received. Mutually exclusive with
-- \`trigger_template\`.
btGithub :: Lens' BuildTrigger (Maybe GitHubEventsConfig)
btGithub = lens _btGithub (\ s a -> s{_btGithub = a})

-- | Optional. A Common Expression Language string.
btFilter :: Lens' BuildTrigger (Maybe Text)
btFilter = lens _btFilter (\ s a -> s{_btFilter = a})

-- | Autodetect build configuration. The following precedence is used (case
-- insensitive): 1. cloudbuild.yaml 2. cloudbuild.yml 3. cloudbuild.json 4.
-- Dockerfile Currently only available for GitHub App Triggers.
btAutodetect :: Lens' BuildTrigger (Maybe Bool)
btAutodetect
  = lens _btAutodetect (\ s a -> s{_btAutodetect = a})

-- | Human-readable description of this trigger.
btDescription :: Lens' BuildTrigger (Maybe Text)
btDescription
  = lens _btDescription
      (\ s a -> s{_btDescription = a})

-- | Path, from the source root, to the build configuration file (i.e.
-- cloudbuild.yaml).
btFilename :: Lens' BuildTrigger (Maybe Text)
btFilename
  = lens _btFilename (\ s a -> s{_btFilename = a})

-- | Output only. Time when the trigger was created.
btCreateTime :: Lens' BuildTrigger (Maybe UTCTime)
btCreateTime
  = lens _btCreateTime (\ s a -> s{_btCreateTime = a})
      . mapping _DateTime

-- | WebhookConfig describes the configuration of a trigger that creates a
-- build whenever a webhook is sent to a trigger\'s webhook URL.
btWebhookConfig :: Lens' BuildTrigger (Maybe WebhookConfig)
btWebhookConfig
  = lens _btWebhookConfig
      (\ s a -> s{_btWebhookConfig = a})

-- | Tags for annotation of a \`BuildTrigger\`
btTags :: Lens' BuildTrigger [Text]
btTags
  = lens _btTags (\ s a -> s{_btTags = a}) . _Default .
      _Coerce

instance FromJSON BuildTrigger where
        parseJSON
          = withObject "BuildTrigger"
              (\ o ->
                 BuildTrigger' <$>
                   (o .:? "substitutions") <*> (o .:? "resourceName")
                     <*> (o .:? "includedFiles" .!= mempty)
                     <*> (o .:? "sourceToBuild")
                     <*> (o .:? "disabled")
                     <*> (o .:? "triggerTemplate")
                     <*> (o .:? "build")
                     <*> (o .:? "ignoredFiles" .!= mempty)
                     <*> (o .:? "pubsubConfig")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "github")
                     <*> (o .:? "filter")
                     <*> (o .:? "autodetect")
                     <*> (o .:? "description")
                     <*> (o .:? "filename")
                     <*> (o .:? "createTime")
                     <*> (o .:? "webhookConfig")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON BuildTrigger where
        toJSON BuildTrigger'{..}
          = object
              (catMaybes
                 [("substitutions" .=) <$> _btSubstitutions,
                  ("resourceName" .=) <$> _btResourceName,
                  ("includedFiles" .=) <$> _btIncludedFiles,
                  ("sourceToBuild" .=) <$> _btSourceToBuild,
                  ("disabled" .=) <$> _btDisabled,
                  ("triggerTemplate" .=) <$> _btTriggerTemplate,
                  ("build" .=) <$> _btBuild,
                  ("ignoredFiles" .=) <$> _btIgnoredFiles,
                  ("pubsubConfig" .=) <$> _btPubsubConfig,
                  ("name" .=) <$> _btName, ("id" .=) <$> _btId,
                  ("github" .=) <$> _btGithub,
                  ("filter" .=) <$> _btFilter,
                  ("autodetect" .=) <$> _btAutodetect,
                  ("description" .=) <$> _btDescription,
                  ("filename" .=) <$> _btFilename,
                  ("createTime" .=) <$> _btCreateTime,
                  ("webhookConfig" .=) <$> _btWebhookConfig,
                  ("tags" .=) <$> _btTags])

-- | NotifierMetadata contains the data which can be used to reference or
-- describe this notifier.
--
-- /See:/ 'notifierMetadata' smart constructor.
data NotifierMetadata =
  NotifierMetadata'
    { _nmNotifier :: !(Maybe Text)
    , _nmName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotifierMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nmNotifier'
--
-- * 'nmName'
notifierMetadata
    :: NotifierMetadata
notifierMetadata = NotifierMetadata' {_nmNotifier = Nothing, _nmName = Nothing}


-- | The string representing the name and version of notifier to deploy.
-- Expected to be of the form of \"\/:\". For example:
-- \"gcr.io\/my-project\/notifiers\/smtp:1.2.34\".
nmNotifier :: Lens' NotifierMetadata (Maybe Text)
nmNotifier
  = lens _nmNotifier (\ s a -> s{_nmNotifier = a})

-- | The human-readable and user-given name for the notifier. For example:
-- \"repo-merge-email-notifier\".
nmName :: Lens' NotifierMetadata (Maybe Text)
nmName = lens _nmName (\ s a -> s{_nmName = a})

instance FromJSON NotifierMetadata where
        parseJSON
          = withObject "NotifierMetadata"
              (\ o ->
                 NotifierMetadata' <$>
                   (o .:? "notifier") <*> (o .:? "name"))

instance ToJSON NotifierMetadata where
        toJSON NotifierMetadata'{..}
          = object
              (catMaybes
                 [("notifier" .=) <$> _nmNotifier,
                  ("name" .=) <$> _nmName])

-- | NotifierSpec is the configuration container for notifications.
--
-- /See:/ 'notifierSpec' smart constructor.
data NotifierSpec =
  NotifierSpec'
    { _nsSecrets :: !(Maybe [NotifierSecret])
    , _nsNotification :: !(Maybe Notification)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotifierSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsSecrets'
--
-- * 'nsNotification'
notifierSpec
    :: NotifierSpec
notifierSpec = NotifierSpec' {_nsSecrets = Nothing, _nsNotification = Nothing}


-- | Configurations for secret resources used by this particular notifier.
nsSecrets :: Lens' NotifierSpec [NotifierSecret]
nsSecrets
  = lens _nsSecrets (\ s a -> s{_nsSecrets = a}) .
      _Default
      . _Coerce

-- | The configuration of this particular notifier.
nsNotification :: Lens' NotifierSpec (Maybe Notification)
nsNotification
  = lens _nsNotification
      (\ s a -> s{_nsNotification = a})

instance FromJSON NotifierSpec where
        parseJSON
          = withObject "NotifierSpec"
              (\ o ->
                 NotifierSpec' <$>
                   (o .:? "secrets" .!= mempty) <*>
                     (o .:? "notification"))

instance ToJSON NotifierSpec where
        toJSON NotifierSpec'{..}
          = object
              (catMaybes
                 [("secrets" .=) <$> _nsSecrets,
                  ("notification" .=) <$> _nsNotification])

-- | An image built by the pipeline.
--
-- /See:/ 'builtImage' smart constructor.
data BuiltImage =
  BuiltImage'
    { _biPushTiming :: !(Maybe TimeSpan)
    , _biName :: !(Maybe Text)
    , _biDigest :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuiltImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biPushTiming'
--
-- * 'biName'
--
-- * 'biDigest'
builtImage
    :: BuiltImage
builtImage =
  BuiltImage' {_biPushTiming = Nothing, _biName = Nothing, _biDigest = Nothing}


-- | Output only. Stores timing information for pushing the specified image.
biPushTiming :: Lens' BuiltImage (Maybe TimeSpan)
biPushTiming
  = lens _biPushTiming (\ s a -> s{_biPushTiming = a})

-- | Name used to push the container image to Google Container Registry, as
-- presented to \`docker push\`.
biName :: Lens' BuiltImage (Maybe Text)
biName = lens _biName (\ s a -> s{_biName = a})

-- | Docker Registry 2.0 digest.
biDigest :: Lens' BuiltImage (Maybe Text)
biDigest = lens _biDigest (\ s a -> s{_biDigest = a})

instance FromJSON BuiltImage where
        parseJSON
          = withObject "BuiltImage"
              (\ o ->
                 BuiltImage' <$>
                   (o .:? "pushTiming") <*> (o .:? "name") <*>
                     (o .:? "digest"))

instance ToJSON BuiltImage where
        toJSON BuiltImage'{..}
          = object
              (catMaybes
                 [("pushTiming" .=) <$> _biPushTiming,
                  ("name" .=) <$> _biName,
                  ("digest" .=) <$> _biDigest])

-- | Substitutions to use in a triggered build. Should only be used with
-- RunBuildTrigger
--
-- /See:/ 'repoSourceSubstitutions' smart constructor.
newtype RepoSourceSubstitutions =
  RepoSourceSubstitutions'
    { _rssAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepoSourceSubstitutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rssAddtional'
repoSourceSubstitutions
    :: HashMap Text Text -- ^ 'rssAddtional'
    -> RepoSourceSubstitutions
repoSourceSubstitutions pRssAddtional_ =
  RepoSourceSubstitutions' {_rssAddtional = _Coerce # pRssAddtional_}


rssAddtional :: Lens' RepoSourceSubstitutions (HashMap Text Text)
rssAddtional
  = lens _rssAddtional (\ s a -> s{_rssAddtional = a})
      . _Coerce

instance FromJSON RepoSourceSubstitutions where
        parseJSON
          = withObject "RepoSourceSubstitutions"
              (\ o ->
                 RepoSourceSubstitutions' <$> (parseJSONObject o))

instance ToJSON RepoSourceSubstitutions where
        toJSON = toJSON . _rssAddtional

-- | WebhookConfig describes the configuration of a trigger that creates a
-- build whenever a webhook is sent to a trigger\'s webhook URL.
--
-- /See:/ 'webhookConfig' smart constructor.
data WebhookConfig =
  WebhookConfig'
    { _wcState :: !(Maybe WebhookConfigState)
    , _wcSecret :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebhookConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcState'
--
-- * 'wcSecret'
webhookConfig
    :: WebhookConfig
webhookConfig = WebhookConfig' {_wcState = Nothing, _wcSecret = Nothing}


-- | Potential issues with the underlying Pub\/Sub subscription
-- configuration. Only populated on get requests.
wcState :: Lens' WebhookConfig (Maybe WebhookConfigState)
wcState = lens _wcState (\ s a -> s{_wcState = a})

-- | Required. Resource name for the secret required as a URL parameter.
wcSecret :: Lens' WebhookConfig (Maybe Text)
wcSecret = lens _wcSecret (\ s a -> s{_wcSecret = a})

instance FromJSON WebhookConfig where
        parseJSON
          = withObject "WebhookConfig"
              (\ o ->
                 WebhookConfig' <$>
                   (o .:? "state") <*> (o .:? "secret"))

instance ToJSON WebhookConfig where
        toJSON WebhookConfig'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _wcState,
                  ("secret" .=) <$> _wcSecret])
