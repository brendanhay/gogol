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

import           Network.Google.ContainerBuilder.Types.Sum
import           Network.Google.Prelude

-- | BuildStep describes a step to perform in the build pipeline.
--
-- /See:/ 'buildStep' smart constructor.
data BuildStep = BuildStep'
    { _bsDir     :: !(Maybe Text)
    , _bsArgs    :: !(Maybe [Text])
    , _bsEnv     :: !(Maybe [Text])
    , _bsWaitFor :: !(Maybe [Text])
    , _bsName    :: !(Maybe Text)
    , _bsId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BuildStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsDir'
--
-- * 'bsArgs'
--
-- * 'bsEnv'
--
-- * 'bsWaitFor'
--
-- * 'bsName'
--
-- * 'bsId'
buildStep
    :: BuildStep
buildStep =
    BuildStep'
    { _bsDir = Nothing
    , _bsArgs = Nothing
    , _bsEnv = Nothing
    , _bsWaitFor = Nothing
    , _bsName = Nothing
    , _bsId = Nothing
    }

-- | Working directory (relative to project source root) to use when running
-- this operation\'s container.
bsDir :: Lens' BuildStep (Maybe Text)
bsDir = lens _bsDir (\ s a -> s{_bsDir = a})

-- | A list of arguments that will be presented to the step when it is
-- started. If the image used to run the step\'s container has an
-- entrypoint, these args will be used as arguments to that entrypoint. If
-- the image does not define an entrypoint, the first element in args will
-- be used as the entrypoint, and the remainder will be used as arguments.
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

-- | The ID(s) of the step(s) that this build step depends on. This build
-- step will not start until all the build steps in wait_for have completed
-- successfully. If wait_for is empty, this build step will start when all
-- previous build steps in the Build.Steps list have completed
-- successfully.
bsWaitFor :: Lens' BuildStep [Text]
bsWaitFor
  = lens _bsWaitFor (\ s a -> s{_bsWaitFor = a}) .
      _Default
      . _Coerce

-- | The name of the container image that will run this particular build
-- step. If the image is already available in the host\'s Docker daemon\'s
-- cache, it will be run directly. If not, the host will attempt to pull
-- the image first, using the builder service account\'s credentials if
-- necessary. The Docker daemon\'s cache will already have the latest
-- versions of all of the officially supported build steps
-- (https:\/\/github.com\/GoogleCloudPlatform\/cloud-builders). The Docker
-- daemon will also have cached many of the layers for some popular images,
-- like \"ubuntu\", \"debian\", but they will be refreshed at the time you
-- attempt to use them. If you built an image in a previous build step, it
-- will be stored in the host\'s Docker daemon\'s cache and is available to
-- use as the name for a later build step.
bsName :: Lens' BuildStep (Maybe Text)
bsName = lens _bsName (\ s a -> s{_bsName = a})

-- | Optional unique identifier for this build step, used in wait_for to
-- reference this build step as a dependency.
bsId :: Lens' BuildStep (Maybe Text)
bsId = lens _bsId (\ s a -> s{_bsId = a})

instance FromJSON BuildStep where
        parseJSON
          = withObject "BuildStep"
              (\ o ->
                 BuildStep' <$>
                   (o .:? "dir") <*> (o .:? "args" .!= mempty) <*>
                     (o .:? "env" .!= mempty)
                     <*> (o .:? "waitFor" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON BuildStep where
        toJSON BuildStep'{..}
          = object
              (catMaybes
                 [("dir" .=) <$> _bsDir, ("args" .=) <$> _bsArgs,
                  ("env" .=) <$> _bsEnv, ("waitFor" .=) <$> _bsWaitFor,
                  ("name" .=) <$> _bsName, ("id" .=) <$> _bsId])

-- | Provenance of the source. Ways to find the original source, or verify
-- that some source was used for this build.
--
-- /See:/ 'sourceProvenance' smart constructor.
data SourceProvenance = SourceProvenance'
    { _spResolvedRepoSource    :: !(Maybe RepoSource)
    , _spResolvedStorageSource :: !(Maybe StorageSource)
    , _spFileHashes            :: !(Maybe SourceProvenanceFileHashes)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceProvenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spResolvedRepoSource'
--
-- * 'spResolvedStorageSource'
--
-- * 'spFileHashes'
sourceProvenance
    :: SourceProvenance
sourceProvenance =
    SourceProvenance'
    { _spResolvedRepoSource = Nothing
    , _spResolvedStorageSource = Nothing
    , _spFileHashes = Nothing
    }

-- | A copy of the build\'s source.repo_source, if exists, with any revisions
-- resolved.
spResolvedRepoSource :: Lens' SourceProvenance (Maybe RepoSource)
spResolvedRepoSource
  = lens _spResolvedRepoSource
      (\ s a -> s{_spResolvedRepoSource = a})

-- | A copy of the build\'s source.storage_source, if exists, with any
-- generations resolved.
spResolvedStorageSource :: Lens' SourceProvenance (Maybe StorageSource)
spResolvedStorageSource
  = lens _spResolvedStorageSource
      (\ s a -> s{_spResolvedStorageSource = a})

-- | Hash(es) of the build source, which can be used to verify that the
-- original source integrity was maintained in the build. Note that
-- FileHashes will only be populated if BuildOptions has requested a
-- SourceProvenanceHash. The keys to this map are file paths used as build
-- source and the values contain the hash values for those files. If the
-- build source came in a single package such as a gzipped tarfile
-- (.tar.gz), the FileHash will be for the single path to that file.
-- \'OutputOnly
spFileHashes :: Lens' SourceProvenance (Maybe SourceProvenanceFileHashes)
spFileHashes
  = lens _spFileHashes (\ s a -> s{_spFileHashes = a})

instance FromJSON SourceProvenance where
        parseJSON
          = withObject "SourceProvenance"
              (\ o ->
                 SourceProvenance' <$>
                   (o .:? "resolvedRepoSource") <*>
                     (o .:? "resolvedStorageSource")
                     <*> (o .:? "fileHashes"))

instance ToJSON SourceProvenance where
        toJSON SourceProvenance'{..}
          = object
              (catMaybes
                 [("resolvedRepoSource" .=) <$> _spResolvedRepoSource,
                  ("resolvedStorageSource" .=) <$>
                    _spResolvedStorageSource,
                  ("fileHashes" .=) <$> _spFileHashes])

-- | Response including listed builds.
--
-- /See:/ 'listBuildsResponse' smart constructor.
data ListBuildsResponse = ListBuildsResponse'
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrBuilds        :: !(Maybe [Build])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListBuildsResponse'
    { _lbrNextPageToken = Nothing
    , _lbrBuilds = Nothing
    }

-- | Token to receive the next page of results.
lbrNextPageToken :: Lens' ListBuildsResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | Builds will be sorted by create_time, descending.
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
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` which can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting
-- purpose. - Batch operations. If a client uses batch request and batch
-- response, the \`Status\` message should be used directly inside batch
-- response, one for each error sub-response. - Asynchronous operations. If
-- an API call embeds asynchronous operation results in its response, the
-- status of those operations should be represented directly using the
-- \`Status\` message. - Logging. If some API errors are stored in logs,
-- the message \`Status\` could be used directly after any stripping needed
-- for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
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

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
    ListOperationsResponse'
    { _lorNextPageToken = Nothing
    , _lorOperations = Nothing
    }

-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | Container message for hash values.
--
-- /See:/ 'hash' smart constructor.
data Hash = Hash'
    { _hValue :: !(Maybe Base64)
    , _hType  :: !(Maybe HashType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Hash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hValue'
--
-- * 'hType'
hash
    :: Hash
hash =
    Hash'
    { _hValue = Nothing
    , _hType = Nothing
    }

-- | The hash value.
hValue :: Lens' Hash (Maybe ByteString)
hValue
  = lens _hValue (\ s a -> s{_hValue = a}) .
      mapping _Base64

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

-- | Results describes the artifacts created by the build pipeline.
--
-- /See:/ 'results' smart constructor.
data Results = Results'
    { _rImages          :: !(Maybe [BuiltImage])
    , _rBuildStepImages :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Results' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rImages'
--
-- * 'rBuildStepImages'
results
    :: Results
results =
    Results'
    { _rImages = Nothing
    , _rBuildStepImages = Nothing
    }

-- | Images that were built as a part of the build.
rImages :: Lens' Results [BuiltImage]
rImages
  = lens _rImages (\ s a -> s{_rImages = a}) . _Default
      . _Coerce

-- | List of build step digests, in order corresponding to build step
-- indices.
rBuildStepImages :: Lens' Results [Text]
rBuildStepImages
  = lens _rBuildStepImages
      (\ s a -> s{_rBuildStepImages = a})
      . _Default
      . _Coerce

instance FromJSON Results where
        parseJSON
          = withObject "Results"
              (\ o ->
                 Results' <$>
                   (o .:? "images" .!= mempty) <*>
                     (o .:? "buildStepImages" .!= mempty))

instance ToJSON Results where
        toJSON Results'{..}
          = object
              (catMaybes
                 [("images" .=) <$> _rImages,
                  ("buildStepImages" .=) <$> _rBuildStepImages])

-- | RepoSource describes the location of the source in a Google Cloud Source
-- Repository.
--
-- /See:/ 'repoSource' smart constructor.
data RepoSource = RepoSource'
    { _rsRepoName   :: !(Maybe Text)
    , _rsCommitSha  :: !(Maybe Text)
    , _rsBranchName :: !(Maybe Text)
    , _rsTagName    :: !(Maybe Text)
    , _rsProjectId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepoSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsRepoName'
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
    { _rsRepoName = Nothing
    , _rsCommitSha = Nothing
    , _rsBranchName = Nothing
    , _rsTagName = Nothing
    , _rsProjectId = Nothing
    }

-- | Name of the repo. If omitted, the name \"default\" is assumed.
rsRepoName :: Lens' RepoSource (Maybe Text)
rsRepoName
  = lens _rsRepoName (\ s a -> s{_rsRepoName = a})

-- | Explicit commit SHA to build.
rsCommitSha :: Lens' RepoSource (Maybe Text)
rsCommitSha
  = lens _rsCommitSha (\ s a -> s{_rsCommitSha = a})

-- | Name of the branch to build.
rsBranchName :: Lens' RepoSource (Maybe Text)
rsBranchName
  = lens _rsBranchName (\ s a -> s{_rsBranchName = a})

-- | Name of the tag to build.
rsTagName :: Lens' RepoSource (Maybe Text)
rsTagName
  = lens _rsTagName (\ s a -> s{_rsTagName = a})

-- | ID of the project that owns the repo. If omitted, the project ID
-- requesting the build is assumed.
rsProjectId :: Lens' RepoSource (Maybe Text)
rsProjectId
  = lens _rsProjectId (\ s a -> s{_rsProjectId = a})

instance FromJSON RepoSource where
        parseJSON
          = withObject "RepoSource"
              (\ o ->
                 RepoSource' <$>
                   (o .:? "repoName") <*> (o .:? "commitSha") <*>
                     (o .:? "branchName")
                     <*> (o .:? "tagName")
                     <*> (o .:? "projectId"))

instance ToJSON RepoSource where
        toJSON RepoSource'{..}
          = object
              (catMaybes
                 [("repoName" .=) <$> _rsRepoName,
                  ("commitSha" .=) <$> _rsCommitSha,
                  ("branchName" .=) <$> _rsBranchName,
                  ("tagName" .=) <$> _rsTagName,
                  ("projectId" .=) <$> _rsProjectId])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- If true, the operation is completed, and either \`error\` or
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
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
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
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

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

-- | A build resource in the Container Builder API. At a high level, a Build
-- describes where to find source code, how to build it (for example, the
-- builder image to run on the source), and what tag to apply to the built
-- image when it is pushed to Google Container Registry. Fields can include
-- the following variables which will be expanded when the build is
-- created: - $PROJECT_ID: the project ID of the build. - $BUILD_ID: the
-- autogenerated ID of the build. - $REPO_NAME: the source repository name
-- specified by RepoSource. - $BRANCH_NAME: the branch name specified by
-- RepoSource. - $TAG_NAME: the tag name specified by RepoSource. -
-- $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or
-- resolved from the specified branch or tag.
--
-- /See:/ 'build' smart constructor.
data Build = Build'
    { _bImages           :: !(Maybe [Text])
    , _bStatus           :: !(Maybe BuildStatus)
    , _bSourceProvenance :: !(Maybe SourceProvenance)
    , _bLogURL           :: !(Maybe Text)
    , _bResults          :: !(Maybe Results)
    , _bStartTime        :: !(Maybe DateTime')
    , _bLogsBucket       :: !(Maybe Text)
    , _bSteps            :: !(Maybe [BuildStep])
    , _bStatusDetail     :: !(Maybe Text)
    , _bSource           :: !(Maybe Source)
    , _bId               :: !(Maybe Text)
    , _bOptions          :: !(Maybe BuildOptions)
    , _bProjectId        :: !(Maybe Text)
    , _bTimeout          :: !(Maybe Duration)
    , _bFinishTime       :: !(Maybe DateTime')
    , _bCreateTime       :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Build' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bImages'
--
-- * 'bStatus'
--
-- * 'bSourceProvenance'
--
-- * 'bLogURL'
--
-- * 'bResults'
--
-- * 'bStartTime'
--
-- * 'bLogsBucket'
--
-- * 'bSteps'
--
-- * 'bStatusDetail'
--
-- * 'bSource'
--
-- * 'bId'
--
-- * 'bOptions'
--
-- * 'bProjectId'
--
-- * 'bTimeout'
--
-- * 'bFinishTime'
--
-- * 'bCreateTime'
build
    :: Build
build =
    Build'
    { _bImages = Nothing
    , _bStatus = Nothing
    , _bSourceProvenance = Nothing
    , _bLogURL = Nothing
    , _bResults = Nothing
    , _bStartTime = Nothing
    , _bLogsBucket = Nothing
    , _bSteps = Nothing
    , _bStatusDetail = Nothing
    , _bSource = Nothing
    , _bId = Nothing
    , _bOptions = Nothing
    , _bProjectId = Nothing
    , _bTimeout = Nothing
    , _bFinishTime = Nothing
    , _bCreateTime = Nothing
    }

-- | A list of images to be pushed upon the successful completion of all
-- build steps. The images will be pushed using the builder service
-- account\'s credentials. The digests of the pushed images will be stored
-- in the Build resource\'s results field. If any of the images fail to be
-- pushed, the build is marked FAILURE.
bImages :: Lens' Build [Text]
bImages
  = lens _bImages (\ s a -> s{_bImages = a}) . _Default
      . _Coerce

-- | Status of the build. \'OutputOnly
bStatus :: Lens' Build (Maybe BuildStatus)
bStatus = lens _bStatus (\ s a -> s{_bStatus = a})

-- | A permanent fixed identifier for source. \'OutputOnly
bSourceProvenance :: Lens' Build (Maybe SourceProvenance)
bSourceProvenance
  = lens _bSourceProvenance
      (\ s a -> s{_bSourceProvenance = a})

-- | URL to logs for this build in Google Cloud Logging. \'OutputOnly
bLogURL :: Lens' Build (Maybe Text)
bLogURL = lens _bLogURL (\ s a -> s{_bLogURL = a})

-- | Results of the build. \'OutputOnly
bResults :: Lens' Build (Maybe Results)
bResults = lens _bResults (\ s a -> s{_bResults = a})

-- | Time at which execution of the build was started. \'OutputOnly
bStartTime :: Lens' Build (Maybe UTCTime)
bStartTime
  = lens _bStartTime (\ s a -> s{_bStartTime = a}) .
      mapping _DateTime

-- | Google Cloud Storage bucket where logs should be written (see [Bucket
-- Name
-- Requirements](https:\/\/cloud.google.com\/storage\/docs\/bucket-naming#requirements)).
-- Logs file names will be of the format
-- \`/l//o//g//s//b//u//c//k//e//t/\//l//o//g/−{build_id}.txt\`.
bLogsBucket :: Lens' Build (Maybe Text)
bLogsBucket
  = lens _bLogsBucket (\ s a -> s{_bLogsBucket = a})

-- | Describes the operations to be performed on the workspace.
bSteps :: Lens' Build [BuildStep]
bSteps
  = lens _bSteps (\ s a -> s{_bSteps = a}) . _Default .
      _Coerce

-- | Customer-readable message about the current status. \'OutputOnly
bStatusDetail :: Lens' Build (Maybe Text)
bStatusDetail
  = lens _bStatusDetail
      (\ s a -> s{_bStatusDetail = a})

-- | Describes where to find the source files to build.
bSource :: Lens' Build (Maybe Source)
bSource = lens _bSource (\ s a -> s{_bSource = a})

-- | Unique identifier of the build. \'OutputOnly
bId :: Lens' Build (Maybe Text)
bId = lens _bId (\ s a -> s{_bId = a})

-- | Special options for this build.
bOptions :: Lens' Build (Maybe BuildOptions)
bOptions = lens _bOptions (\ s a -> s{_bOptions = a})

-- | ID of the project. \'OutputOnly.
bProjectId :: Lens' Build (Maybe Text)
bProjectId
  = lens _bProjectId (\ s a -> s{_bProjectId = a})

-- | Amount of time that this build should be allowed to run, to second
-- granularity. If this amount of time elapses, work on the build will
-- cease and the build status will be TIMEOUT. Default time is ten minutes.
bTimeout :: Lens' Build (Maybe Scientific)
bTimeout
  = lens _bTimeout (\ s a -> s{_bTimeout = a}) .
      mapping _Duration

-- | Time at which execution of the build was finished. \'OutputOnly
bFinishTime :: Lens' Build (Maybe UTCTime)
bFinishTime
  = lens _bFinishTime (\ s a -> s{_bFinishTime = a}) .
      mapping _DateTime

-- | Time at which the build was created. \'OutputOnly
bCreateTime :: Lens' Build (Maybe UTCTime)
bCreateTime
  = lens _bCreateTime (\ s a -> s{_bCreateTime = a}) .
      mapping _DateTime

instance FromJSON Build where
        parseJSON
          = withObject "Build"
              (\ o ->
                 Build' <$>
                   (o .:? "images" .!= mempty) <*> (o .:? "status") <*>
                     (o .:? "sourceProvenance")
                     <*> (o .:? "logUrl")
                     <*> (o .:? "results")
                     <*> (o .:? "startTime")
                     <*> (o .:? "logsBucket")
                     <*> (o .:? "steps" .!= mempty)
                     <*> (o .:? "statusDetail")
                     <*> (o .:? "source")
                     <*> (o .:? "id")
                     <*> (o .:? "options")
                     <*> (o .:? "projectId")
                     <*> (o .:? "timeout")
                     <*> (o .:? "finishTime")
                     <*> (o .:? "createTime"))

instance ToJSON Build where
        toJSON Build'{..}
          = object
              (catMaybes
                 [("images" .=) <$> _bImages,
                  ("status" .=) <$> _bStatus,
                  ("sourceProvenance" .=) <$> _bSourceProvenance,
                  ("logUrl" .=) <$> _bLogURL,
                  ("results" .=) <$> _bResults,
                  ("startTime" .=) <$> _bStartTime,
                  ("logsBucket" .=) <$> _bLogsBucket,
                  ("steps" .=) <$> _bSteps,
                  ("statusDetail" .=) <$> _bStatusDetail,
                  ("source" .=) <$> _bSource, ("id" .=) <$> _bId,
                  ("options" .=) <$> _bOptions,
                  ("projectId" .=) <$> _bProjectId,
                  ("timeout" .=) <$> _bTimeout,
                  ("finishTime" .=) <$> _bFinishTime,
                  ("createTime" .=) <$> _bCreateTime])

-- | Hash(es) of the build source, which can be used to verify that the
-- original source integrity was maintained in the build. Note that
-- FileHashes will only be populated if BuildOptions has requested a
-- SourceProvenanceHash. The keys to this map are file paths used as build
-- source and the values contain the hash values for those files. If the
-- build source came in a single package such as a gzipped tarfile
-- (.tar.gz), the FileHash will be for the single path to that file.
-- \'OutputOnly
--
-- /See:/ 'sourceProvenanceFileHashes' smart constructor.
newtype SourceProvenanceFileHashes = SourceProvenanceFileHashes'
    { _spfhAddtional :: HashMap Text FileHashes
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceProvenanceFileHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spfhAddtional'
sourceProvenanceFileHashes
    :: HashMap Text FileHashes -- ^ 'spfhAddtional'
    -> SourceProvenanceFileHashes
sourceProvenanceFileHashes pSpfhAddtional_ =
    SourceProvenanceFileHashes'
    { _spfhAddtional = _Coerce # pSpfhAddtional_
    }

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

-- | Request to cancel an ongoing build.
--
-- /See:/ 'cancelBuildRequest' smart constructor.
data CancelBuildRequest =
    CancelBuildRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CancelBuildRequest' with the minimum fields required to make a request.
--
cancelBuildRequest
    :: CancelBuildRequest
cancelBuildRequest = CancelBuildRequest'

instance FromJSON CancelBuildRequest where
        parseJSON
          = withObject "CancelBuildRequest"
              (\ o -> pure CancelBuildRequest')

instance ToJSON CancelBuildRequest where
        toJSON = const emptyObject

-- | StorageSource describes the location of the source in an archive file in
-- Google Cloud Storage.
--
-- /See:/ 'storageSource' smart constructor.
data StorageSource = StorageSource'
    { _ssBucket     :: !(Maybe Text)
    , _ssObject     :: !(Maybe Text)
    , _ssGeneration :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _ssBucket = Nothing
    , _ssObject = Nothing
    , _ssGeneration = Nothing
    }

-- | Google Cloud Storage bucket containing source (see [Bucket Name
-- Requirements](https:\/\/cloud.google.com\/storage\/docs\/bucket-naming#requirements)).
ssBucket :: Lens' StorageSource (Maybe Text)
ssBucket = lens _ssBucket (\ s a -> s{_ssBucket = a})

-- | Google Cloud Storage object containing source. This object must be a
-- gzipped archive file (.tar.gz) containing source to build.
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

-- | Response containing existing BuildTriggers.
--
-- /See:/ 'listBuildTriggersResponse' smart constructor.
newtype ListBuildTriggersResponse = ListBuildTriggersResponse'
    { _lbtrTriggers :: Maybe [BuildTrigger]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBuildTriggersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtrTriggers'
listBuildTriggersResponse
    :: ListBuildTriggersResponse
listBuildTriggersResponse =
    ListBuildTriggersResponse'
    { _lbtrTriggers = Nothing
    }

-- | BuildTriggers for the project, sorted by create_time descending.
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
                   (o .:? "triggers" .!= mempty))

instance ToJSON ListBuildTriggersResponse where
        toJSON ListBuildTriggersResponse'{..}
          = object
              (catMaybes [("triggers" .=) <$> _lbtrTriggers])

-- | Container message for hashes of byte content of files, used in
-- SourceProvenance messages to verify integrity of source input to the
-- build.
--
-- /See:/ 'fileHashes' smart constructor.
newtype FileHashes = FileHashes'
    { _fhFileHash :: Maybe [Hash]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fhFileHash'
fileHashes
    :: FileHashes
fileHashes =
    FileHashes'
    { _fhFileHash = Nothing
    }

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

-- | Source describes the location of the source in a supported storage
-- service.
--
-- /See:/ 'source' smart constructor.
data Source = Source'
    { _sRepoSource    :: !(Maybe RepoSource)
    , _sStorageSource :: !(Maybe StorageSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sRepoSource'
--
-- * 'sStorageSource'
source
    :: Source
source =
    Source'
    { _sRepoSource = Nothing
    , _sStorageSource = Nothing
    }

-- | If provided, get source from this location in a Cloud Repo.
sRepoSource :: Lens' Source (Maybe RepoSource)
sRepoSource
  = lens _sRepoSource (\ s a -> s{_sRepoSource = a})

-- | If provided, get the source from this location in in Google Cloud
-- Storage.
sStorageSource :: Lens' Source (Maybe StorageSource)
sStorageSource
  = lens _sStorageSource
      (\ s a -> s{_sStorageSource = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o ->
                 Source' <$>
                   (o .:? "repoSource") <*> (o .:? "storageSource"))

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("repoSource" .=) <$> _sRepoSource,
                  ("storageSource" .=) <$> _sStorageSource])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata = OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
    OperationMetadata'
    { _omAddtional = _Coerce # pOmAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Metadata for build operations.
--
-- /See:/ 'buildOperationMetadata' smart constructor.
newtype BuildOperationMetadata = BuildOperationMetadata'
    { _bomBuild :: Maybe Build
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BuildOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bomBuild'
buildOperationMetadata
    :: BuildOperationMetadata
buildOperationMetadata =
    BuildOperationMetadata'
    { _bomBuild = Nothing
    }

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
data BuildOptions = BuildOptions'
    { _boRequestedVerifyOption :: !(Maybe BuildOptionsRequestedVerifyOption)
    , _boSourceProvenanceHash  :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BuildOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boRequestedVerifyOption'
--
-- * 'boSourceProvenanceHash'
buildOptions
    :: BuildOptions
buildOptions =
    BuildOptions'
    { _boRequestedVerifyOption = Nothing
    , _boSourceProvenanceHash = Nothing
    }

-- | Requested verifiability options.
boRequestedVerifyOption :: Lens' BuildOptions (Maybe BuildOptionsRequestedVerifyOption)
boRequestedVerifyOption
  = lens _boRequestedVerifyOption
      (\ s a -> s{_boRequestedVerifyOption = a})

-- | Requested hash for SourceProvenance.
boSourceProvenanceHash :: Lens' BuildOptions [Text]
boSourceProvenanceHash
  = lens _boSourceProvenanceHash
      (\ s a -> s{_boSourceProvenanceHash = a})
      . _Default
      . _Coerce

instance FromJSON BuildOptions where
        parseJSON
          = withObject "BuildOptions"
              (\ o ->
                 BuildOptions' <$>
                   (o .:? "requestedVerifyOption") <*>
                     (o .:? "sourceProvenanceHash" .!= mempty))

instance ToJSON BuildOptions where
        toJSON BuildOptions'{..}
          = object
              (catMaybes
                 [("requestedVerifyOption" .=) <$>
                    _boRequestedVerifyOption,
                  ("sourceProvenanceHash" .=) <$>
                    _boSourceProvenanceHash])

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
newtype OperationResponse = OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
    OperationResponse'
    { _orAddtional = _Coerce # pOrAddtional_
    }

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

-- | Configuration for an automated build in response to source repository
-- changes.
--
-- /See:/ 'buildTrigger' smart constructor.
data BuildTrigger = BuildTrigger'
    { _btDisabled        :: !(Maybe Bool)
    , _btTriggerTemplate :: !(Maybe RepoSource)
    , _btBuild           :: !(Maybe Build)
    , _btId              :: !(Maybe Text)
    , _btDescription     :: !(Maybe Text)
    , _btFilename        :: !(Maybe Text)
    , _btCreateTime      :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BuildTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btDisabled'
--
-- * 'btTriggerTemplate'
--
-- * 'btBuild'
--
-- * 'btId'
--
-- * 'btDescription'
--
-- * 'btFilename'
--
-- * 'btCreateTime'
buildTrigger
    :: BuildTrigger
buildTrigger =
    BuildTrigger'
    { _btDisabled = Nothing
    , _btTriggerTemplate = Nothing
    , _btBuild = Nothing
    , _btId = Nothing
    , _btDescription = Nothing
    , _btFilename = Nothing
    , _btCreateTime = Nothing
    }

-- | If true, the trigger will never result in a build.
btDisabled :: Lens' BuildTrigger (Maybe Bool)
btDisabled
  = lens _btDisabled (\ s a -> s{_btDisabled = a})

-- | Template describing the types of source changes to trigger a build.
-- Branch and tag names in trigger templates are interpreted as regular
-- expressions. Any branch or tag change that matches that regular
-- expression will trigger a build.
btTriggerTemplate :: Lens' BuildTrigger (Maybe RepoSource)
btTriggerTemplate
  = lens _btTriggerTemplate
      (\ s a -> s{_btTriggerTemplate = a})

-- | Contents of the build template.
btBuild :: Lens' BuildTrigger (Maybe Build)
btBuild = lens _btBuild (\ s a -> s{_btBuild = a})

-- | Unique identifier of the trigger. \'OutputOnly
btId :: Lens' BuildTrigger (Maybe Text)
btId = lens _btId (\ s a -> s{_btId = a})

-- | Human-readable description of this trigger.
btDescription :: Lens' BuildTrigger (Maybe Text)
btDescription
  = lens _btDescription
      (\ s a -> s{_btDescription = a})

-- | Path, from the source root, to a file whose contents is used for the
-- template.
btFilename :: Lens' BuildTrigger (Maybe Text)
btFilename
  = lens _btFilename (\ s a -> s{_btFilename = a})

-- | Time when the trigger was created. \'OutputOnly
btCreateTime :: Lens' BuildTrigger (Maybe UTCTime)
btCreateTime
  = lens _btCreateTime (\ s a -> s{_btCreateTime = a})
      . mapping _DateTime

instance FromJSON BuildTrigger where
        parseJSON
          = withObject "BuildTrigger"
              (\ o ->
                 BuildTrigger' <$>
                   (o .:? "disabled") <*> (o .:? "triggerTemplate") <*>
                     (o .:? "build")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "filename")
                     <*> (o .:? "createTime"))

instance ToJSON BuildTrigger where
        toJSON BuildTrigger'{..}
          = object
              (catMaybes
                 [("disabled" .=) <$> _btDisabled,
                  ("triggerTemplate" .=) <$> _btTriggerTemplate,
                  ("build" .=) <$> _btBuild, ("id" .=) <$> _btId,
                  ("description" .=) <$> _btDescription,
                  ("filename" .=) <$> _btFilename,
                  ("createTime" .=) <$> _btCreateTime])

-- | BuiltImage describes an image built by the pipeline.
--
-- /See:/ 'builtImage' smart constructor.
data BuiltImage = BuiltImage'
    { _biName   :: !(Maybe Text)
    , _biDigest :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BuiltImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biName'
--
-- * 'biDigest'
builtImage
    :: BuiltImage
builtImage =
    BuiltImage'
    { _biName = Nothing
    , _biDigest = Nothing
    }

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
                 BuiltImage' <$> (o .:? "name") <*> (o .:? "digest"))

instance ToJSON BuiltImage where
        toJSON BuiltImage'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _biName,
                  ("digest" .=) <$> _biDigest])
