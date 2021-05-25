{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.RemoteBuildExecution.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.RemoteBuildExecution.Types.Product where

import Network.Google.Prelude
import Network.Google.RemoteBuildExecution.Types.Sum

-- | A content digest. A digest for a given blob consists of the size of the
-- blob and its hash. The hash algorithm to use is defined by the server.
-- The size is considered to be an integral part of the digest and cannot
-- be separated. That is, even if the \`hash\` field is correctly specified
-- but \`size_bytes\` is not, the server MUST reject the request. The
-- reason for including the size in the digest is as follows: in a great
-- many cases, the server needs to know the size of the blob it is about to
-- work with prior to starting an operation with it, such as flattening
-- Merkle tree structures or streaming it to a worker. Technically, the
-- server could implement a separate metadata store, but this results in a
-- significantly more complicated implementation as opposed to having the
-- client specify the size up-front (or storing the size along with the
-- digest in every message where digests are embedded). This does mean that
-- the API leaks some implementation details of (what we consider to be) a
-- reasonable server implementation, but we consider this to be a
-- worthwhile tradeoff. When a \`Digest\` is used to refer to a proto
-- message, it always refers to the message in binary encoded form. To
-- ensure consistent hashing, clients and servers MUST ensure that they
-- serialize messages according to the following rules, even if there are
-- alternate valid encodings for the same message: * Fields are serialized
-- in tag order. * There are no unknown fields. * There are no duplicate
-- fields. * Fields are serialized according to the default semantics for
-- their type. Most protocol buffer implementations will always follow
-- these rules when serializing, but care should be taken to avoid
-- shortcuts. For instance, concatenating two messages to merge them may
-- produce duplicate fields.
--
-- /See:/ 'buildBazelRemoteExecutionV2Digest' smart constructor.
data BuildBazelRemoteExecutionV2Digest =
  BuildBazelRemoteExecutionV2Digest'
    { _bbrevdSizeBytes :: !(Maybe (Textual Int64))
    , _bbrevdHash :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2Digest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevdSizeBytes'
--
-- * 'bbrevdHash'
buildBazelRemoteExecutionV2Digest
    :: BuildBazelRemoteExecutionV2Digest
buildBazelRemoteExecutionV2Digest =
  BuildBazelRemoteExecutionV2Digest'
    {_bbrevdSizeBytes = Nothing, _bbrevdHash = Nothing}


-- | The size of the blob, in bytes.
bbrevdSizeBytes :: Lens' BuildBazelRemoteExecutionV2Digest (Maybe Int64)
bbrevdSizeBytes
  = lens _bbrevdSizeBytes
      (\ s a -> s{_bbrevdSizeBytes = a})
      . mapping _Coerce

-- | The hash. In the case of SHA-256, it will always be a lowercase hex
-- string exactly 64 characters long.
bbrevdHash :: Lens' BuildBazelRemoteExecutionV2Digest (Maybe Text)
bbrevdHash
  = lens _bbrevdHash (\ s a -> s{_bbrevdHash = a})

instance FromJSON BuildBazelRemoteExecutionV2Digest
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2Digest"
              (\ o ->
                 BuildBazelRemoteExecutionV2Digest' <$>
                   (o .:? "sizeBytes") <*> (o .:? "hash"))

instance ToJSON BuildBazelRemoteExecutionV2Digest
         where
        toJSON BuildBazelRemoteExecutionV2Digest'{..}
          = object
              (catMaybes
                 [("sizeBytes" .=) <$> _bbrevdSizeBytes,
                  ("hash" .=) <$> _bbrevdHash])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'googleRpcStatus' smart constructor.
data GoogleRpcStatus =
  GoogleRpcStatus'
    { _grsDetails :: !(Maybe [GoogleRpcStatusDetailsItem])
    , _grsCode :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsDetails'
--
-- * 'grsCode'
--
-- * 'grsMessage'
googleRpcStatus
    :: GoogleRpcStatus
googleRpcStatus =
  GoogleRpcStatus'
    {_grsDetails = Nothing, _grsCode = Nothing, _grsMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
grsDetails :: Lens' GoogleRpcStatus [GoogleRpcStatusDetailsItem]
grsDetails
  = lens _grsDetails (\ s a -> s{_grsDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
grsCode :: Lens' GoogleRpcStatus (Maybe Int32)
grsCode
  = lens _grsCode (\ s a -> s{_grsCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
grsMessage :: Lens' GoogleRpcStatus (Maybe Text)
grsMessage
  = lens _grsMessage (\ s a -> s{_grsMessage = a})

instance FromJSON GoogleRpcStatus where
        parseJSON
          = withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _grsDetails,
                  ("code" .=) <$> _grsCode,
                  ("message" .=) <$> _grsMessage])

-- | The request used for GetWorkerPool.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest'
    { _gdravgwprName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravgwprName'
googleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest'
    {_gdravgwprName = Nothing}


-- | Name of the worker pool to retrieve. Format:
-- \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\/workerpools\/[POOL_ID]\`.
gdravgwprName :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest (Maybe Text)
gdravgwprName
  = lens _gdravgwprName
      (\ s a -> s{_gdravgwprName = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest'
                   <$> (o .:? "name"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest'{..}
          = object (catMaybes [("name" .=) <$> _gdravgwprName])

-- | An \`OutputSymlink\` is similar to a Symlink, but it is used as an
-- output in an \`ActionResult\`. \`OutputSymlink\` is binary-compatible
-- with \`SymlinkNode\`.
--
-- /See:/ 'buildBazelRemoteExecutionV2OutputSymlink' smart constructor.
data BuildBazelRemoteExecutionV2OutputSymlink =
  BuildBazelRemoteExecutionV2OutputSymlink'
    { _bbrevosPath :: !(Maybe Text)
    , _bbrevosNodeProperties :: !(Maybe BuildBazelRemoteExecutionV2NodeProperties)
    , _bbrevosTarget :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2OutputSymlink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevosPath'
--
-- * 'bbrevosNodeProperties'
--
-- * 'bbrevosTarget'
buildBazelRemoteExecutionV2OutputSymlink
    :: BuildBazelRemoteExecutionV2OutputSymlink
buildBazelRemoteExecutionV2OutputSymlink =
  BuildBazelRemoteExecutionV2OutputSymlink'
    { _bbrevosPath = Nothing
    , _bbrevosNodeProperties = Nothing
    , _bbrevosTarget = Nothing
    }


-- | The full path of the symlink relative to the working directory,
-- including the filename. The path separator is a forward slash \`\/\`.
-- Since this is a relative path, it MUST NOT begin with a leading forward
-- slash.
bbrevosPath :: Lens' BuildBazelRemoteExecutionV2OutputSymlink (Maybe Text)
bbrevosPath
  = lens _bbrevosPath (\ s a -> s{_bbrevosPath = a})

bbrevosNodeProperties :: Lens' BuildBazelRemoteExecutionV2OutputSymlink (Maybe BuildBazelRemoteExecutionV2NodeProperties)
bbrevosNodeProperties
  = lens _bbrevosNodeProperties
      (\ s a -> s{_bbrevosNodeProperties = a})

-- | The target path of the symlink. The path separator is a forward slash
-- \`\/\`. The target path can be relative to the parent directory of the
-- symlink or it can be an absolute path starting with \`\/\`. Support for
-- absolute paths can be checked using the Capabilities API. \`..\`
-- components are allowed anywhere in the target path.
bbrevosTarget :: Lens' BuildBazelRemoteExecutionV2OutputSymlink (Maybe Text)
bbrevosTarget
  = lens _bbrevosTarget
      (\ s a -> s{_bbrevosTarget = a})

instance FromJSON
           BuildBazelRemoteExecutionV2OutputSymlink
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2OutputSymlink"
              (\ o ->
                 BuildBazelRemoteExecutionV2OutputSymlink' <$>
                   (o .:? "path") <*> (o .:? "nodeProperties") <*>
                     (o .:? "target"))

instance ToJSON
           BuildBazelRemoteExecutionV2OutputSymlink
         where
        toJSON BuildBazelRemoteExecutionV2OutputSymlink'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _bbrevosPath,
                  ("nodeProperties" .=) <$> _bbrevosNodeProperties,
                  ("target" .=) <$> _bbrevosTarget])

-- | The metadata for a file. Similar to the equivalent message in the Remote
-- Execution API.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2FileMetadata' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2FileMetadata =
  GoogleDevtoolsRemoteworkersV1test2FileMetadata'
    { _gdrvfmContents :: !(Maybe Bytes)
    , _gdrvfmPath :: !(Maybe Text)
    , _gdrvfmIsExecutable :: !(Maybe Bool)
    , _gdrvfmDigest :: !(Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2FileMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvfmContents'
--
-- * 'gdrvfmPath'
--
-- * 'gdrvfmIsExecutable'
--
-- * 'gdrvfmDigest'
googleDevtoolsRemoteworkersV1test2FileMetadata
    :: GoogleDevtoolsRemoteworkersV1test2FileMetadata
googleDevtoolsRemoteworkersV1test2FileMetadata =
  GoogleDevtoolsRemoteworkersV1test2FileMetadata'
    { _gdrvfmContents = Nothing
    , _gdrvfmPath = Nothing
    , _gdrvfmIsExecutable = Nothing
    , _gdrvfmDigest = Nothing
    }


-- | If the file is small enough, its contents may also or alternatively be
-- listed here.
gdrvfmContents :: Lens' GoogleDevtoolsRemoteworkersV1test2FileMetadata (Maybe ByteString)
gdrvfmContents
  = lens _gdrvfmContents
      (\ s a -> s{_gdrvfmContents = a})
      . mapping _Bytes

-- | The path of this file. If this message is part of the
-- CommandOutputs.outputs fields, the path is relative to the execution
-- root and must correspond to an entry in CommandTask.outputs.files. If
-- this message is part of a Directory message, then the path is relative
-- to the root of that directory. All paths MUST be delimited by forward
-- slashes.
gdrvfmPath :: Lens' GoogleDevtoolsRemoteworkersV1test2FileMetadata (Maybe Text)
gdrvfmPath
  = lens _gdrvfmPath (\ s a -> s{_gdrvfmPath = a})

-- | Properties of the file
gdrvfmIsExecutable :: Lens' GoogleDevtoolsRemoteworkersV1test2FileMetadata (Maybe Bool)
gdrvfmIsExecutable
  = lens _gdrvfmIsExecutable
      (\ s a -> s{_gdrvfmIsExecutable = a})

-- | A pointer to the contents of the file. The method by which a client
-- retrieves the contents from a CAS system is not defined here.
gdrvfmDigest :: Lens' GoogleDevtoolsRemoteworkersV1test2FileMetadata (Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
gdrvfmDigest
  = lens _gdrvfmDigest (\ s a -> s{_gdrvfmDigest = a})

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2FileMetadata
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2FileMetadata"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2FileMetadata' <$>
                   (o .:? "contents") <*> (o .:? "path") <*>
                     (o .:? "isExecutable")
                     <*> (o .:? "digest"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2FileMetadata
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2FileMetadata'{..}
          = object
              (catMaybes
                 [("contents" .=) <$> _gdrvfmContents,
                  ("path" .=) <$> _gdrvfmPath,
                  ("isExecutable" .=) <$> _gdrvfmIsExecutable,
                  ("digest" .=) <$> _gdrvfmDigest])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'googleLongrunningOperationMetadata' smart constructor.
newtype GoogleLongrunningOperationMetadata =
  GoogleLongrunningOperationMetadata'
    { _glomAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glomAddtional'
googleLongrunningOperationMetadata
    :: HashMap Text JSONValue -- ^ 'glomAddtional'
    -> GoogleLongrunningOperationMetadata
googleLongrunningOperationMetadata pGlomAddtional_ =
  GoogleLongrunningOperationMetadata'
    {_glomAddtional = _Coerce # pGlomAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
glomAddtional :: Lens' GoogleLongrunningOperationMetadata (HashMap Text JSONValue)
glomAddtional
  = lens _glomAddtional
      (\ s a -> s{_glomAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationMetadata
         where
        parseJSON
          = withObject "GoogleLongrunningOperationMetadata"
              (\ o ->
                 GoogleLongrunningOperationMetadata' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationMetadata
         where
        toJSON = toJSON . _glomAddtional

-- | The CommandTask and CommandResult messages assume the existence of a
-- service that can serve blobs of content, identified by a hash and size
-- known as a \"digest.\" The method by which these blobs may be retrieved
-- is not specified here, but a model implementation is in the Remote
-- Execution API\'s \"ContentAddressibleStorage\" interface. In the context
-- of the RWAPI, a Digest will virtually always refer to the contents of a
-- file or a directory. The latter is represented by the byte-encoded
-- Directory message.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2Digest' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2Digest =
  GoogleDevtoolsRemoteworkersV1test2Digest'
    { _gdrvdSizeBytes :: !(Maybe (Textual Int64))
    , _gdrvdHash :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2Digest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvdSizeBytes'
--
-- * 'gdrvdHash'
googleDevtoolsRemoteworkersV1test2Digest
    :: GoogleDevtoolsRemoteworkersV1test2Digest
googleDevtoolsRemoteworkersV1test2Digest =
  GoogleDevtoolsRemoteworkersV1test2Digest'
    {_gdrvdSizeBytes = Nothing, _gdrvdHash = Nothing}


-- | The size of the contents. While this is not strictly required as part of
-- an identifier (after all, any given hash will have exactly one canonical
-- size), it\'s useful in almost all cases when one might want to send or
-- retrieve blobs of content and is included here for this reason.
gdrvdSizeBytes :: Lens' GoogleDevtoolsRemoteworkersV1test2Digest (Maybe Int64)
gdrvdSizeBytes
  = lens _gdrvdSizeBytes
      (\ s a -> s{_gdrvdSizeBytes = a})
      . mapping _Coerce

-- | A string-encoded hash (eg \"1a2b3c\", not the byte array [0x1a, 0x2b,
-- 0x3c]) using an implementation-defined hash algorithm (eg SHA-256).
gdrvdHash :: Lens' GoogleDevtoolsRemoteworkersV1test2Digest (Maybe Text)
gdrvdHash
  = lens _gdrvdHash (\ s a -> s{_gdrvdHash = a})

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2Digest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2Digest"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2Digest' <$>
                   (o .:? "sizeBytes") <*> (o .:? "hash"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2Digest
         where
        toJSON GoogleDevtoolsRemoteworkersV1test2Digest'{..}
          = object
              (catMaybes
                 [("sizeBytes" .=) <$> _gdrvdSizeBytes,
                  ("hash" .=) <$> _gdrvdHash])

-- | A response message for Capabilities.GetCapabilities.
--
-- /See:/ 'buildBazelRemoteExecutionV2ServerCapabilities' smart constructor.
data BuildBazelRemoteExecutionV2ServerCapabilities =
  BuildBazelRemoteExecutionV2ServerCapabilities'
    { _bbrevscHighAPIVersion :: !(Maybe BuildBazelSemverSemVer)
    , _bbrevscExecutionCapabilities :: !(Maybe BuildBazelRemoteExecutionV2ExecutionCapabilities)
    , _bbrevscCacheCapabilities :: !(Maybe BuildBazelRemoteExecutionV2CacheCapabilities)
    , _bbrevscDeprecatedAPIVersion :: !(Maybe BuildBazelSemverSemVer)
    , _bbrevscLowAPIVersion :: !(Maybe BuildBazelSemverSemVer)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ServerCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevscHighAPIVersion'
--
-- * 'bbrevscExecutionCapabilities'
--
-- * 'bbrevscCacheCapabilities'
--
-- * 'bbrevscDeprecatedAPIVersion'
--
-- * 'bbrevscLowAPIVersion'
buildBazelRemoteExecutionV2ServerCapabilities
    :: BuildBazelRemoteExecutionV2ServerCapabilities
buildBazelRemoteExecutionV2ServerCapabilities =
  BuildBazelRemoteExecutionV2ServerCapabilities'
    { _bbrevscHighAPIVersion = Nothing
    , _bbrevscExecutionCapabilities = Nothing
    , _bbrevscCacheCapabilities = Nothing
    , _bbrevscDeprecatedAPIVersion = Nothing
    , _bbrevscLowAPIVersion = Nothing
    }


-- | Latest RE API version supported.
bbrevscHighAPIVersion :: Lens' BuildBazelRemoteExecutionV2ServerCapabilities (Maybe BuildBazelSemverSemVer)
bbrevscHighAPIVersion
  = lens _bbrevscHighAPIVersion
      (\ s a -> s{_bbrevscHighAPIVersion = a})

-- | Capabilities of the remote execution system.
bbrevscExecutionCapabilities :: Lens' BuildBazelRemoteExecutionV2ServerCapabilities (Maybe BuildBazelRemoteExecutionV2ExecutionCapabilities)
bbrevscExecutionCapabilities
  = lens _bbrevscExecutionCapabilities
      (\ s a -> s{_bbrevscExecutionCapabilities = a})

-- | Capabilities of the remote cache system.
bbrevscCacheCapabilities :: Lens' BuildBazelRemoteExecutionV2ServerCapabilities (Maybe BuildBazelRemoteExecutionV2CacheCapabilities)
bbrevscCacheCapabilities
  = lens _bbrevscCacheCapabilities
      (\ s a -> s{_bbrevscCacheCapabilities = a})

-- | Earliest RE API version supported, including deprecated versions.
bbrevscDeprecatedAPIVersion :: Lens' BuildBazelRemoteExecutionV2ServerCapabilities (Maybe BuildBazelSemverSemVer)
bbrevscDeprecatedAPIVersion
  = lens _bbrevscDeprecatedAPIVersion
      (\ s a -> s{_bbrevscDeprecatedAPIVersion = a})

-- | Earliest non-deprecated RE API version supported.
bbrevscLowAPIVersion :: Lens' BuildBazelRemoteExecutionV2ServerCapabilities (Maybe BuildBazelSemverSemVer)
bbrevscLowAPIVersion
  = lens _bbrevscLowAPIVersion
      (\ s a -> s{_bbrevscLowAPIVersion = a})

instance FromJSON
           BuildBazelRemoteExecutionV2ServerCapabilities
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ServerCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2ServerCapabilities' <$>
                   (o .:? "highApiVersion") <*>
                     (o .:? "executionCapabilities")
                     <*> (o .:? "cacheCapabilities")
                     <*> (o .:? "deprecatedApiVersion")
                     <*> (o .:? "lowApiVersion"))

instance ToJSON
           BuildBazelRemoteExecutionV2ServerCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2ServerCapabilities'{..}
          = object
              (catMaybes
                 [("highApiVersion" .=) <$> _bbrevscHighAPIVersion,
                  ("executionCapabilities" .=) <$>
                    _bbrevscExecutionCapabilities,
                  ("cacheCapabilities" .=) <$>
                    _bbrevscCacheCapabilities,
                  ("deprecatedApiVersion" .=) <$>
                    _bbrevscDeprecatedAPIVersion,
                  ("lowApiVersion" .=) <$> _bbrevscLowAPIVersion])

-- | An \`Action\` captures all the information about an execution which is
-- required to reproduce it. \`Action\`s are the core component of the
-- [Execution] service. A single \`Action\` represents a repeatable action
-- that can be performed by the execution service. \`Action\`s can be
-- succinctly identified by the digest of their wire format encoding and,
-- once an \`Action\` has been executed, will be cached in the action
-- cache. Future requests can then use the cached result rather than
-- needing to run afresh. When a server completes execution of an Action,
-- it MAY choose to cache the result in the ActionCache unless
-- \`do_not_cache\` is \`true\`. Clients SHOULD expect the server to do so.
-- By default, future calls to Execute the same \`Action\` will also serve
-- their results from the cache. Clients must take care to understand the
-- caching behaviour. Ideally, all \`Action\`s will be reproducible so that
-- serving a result from cache is always desirable and correct.
--
-- /See:/ 'buildBazelRemoteExecutionV2Action' smart constructor.
data BuildBazelRemoteExecutionV2Action =
  BuildBazelRemoteExecutionV2Action'
    { _bbrevaPlatform :: !(Maybe BuildBazelRemoteExecutionV2Platform)
    , _bbrevaDoNotCache :: !(Maybe Bool)
    , _bbrevaCommandDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    , _bbrevaSalt :: !(Maybe Bytes)
    , _bbrevaInputRootDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    , _bbrevaTimeout :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevaPlatform'
--
-- * 'bbrevaDoNotCache'
--
-- * 'bbrevaCommandDigest'
--
-- * 'bbrevaSalt'
--
-- * 'bbrevaInputRootDigest'
--
-- * 'bbrevaTimeout'
buildBazelRemoteExecutionV2Action
    :: BuildBazelRemoteExecutionV2Action
buildBazelRemoteExecutionV2Action =
  BuildBazelRemoteExecutionV2Action'
    { _bbrevaPlatform = Nothing
    , _bbrevaDoNotCache = Nothing
    , _bbrevaCommandDigest = Nothing
    , _bbrevaSalt = Nothing
    , _bbrevaInputRootDigest = Nothing
    , _bbrevaTimeout = Nothing
    }


-- | The optional platform requirements for the execution environment. The
-- server MAY choose to execute the action on any worker satisfying the
-- requirements, so the client SHOULD ensure that running the action on any
-- such worker will have the same result. A detailed lexicon for this can
-- be found in the accompanying platform.md. New in version 2.2: clients
-- SHOULD set these platform properties as well as those in the Command.
-- Servers SHOULD prefer those set here.
bbrevaPlatform :: Lens' BuildBazelRemoteExecutionV2Action (Maybe BuildBazelRemoteExecutionV2Platform)
bbrevaPlatform
  = lens _bbrevaPlatform
      (\ s a -> s{_bbrevaPlatform = a})

-- | If true, then the \`Action\`\'s result cannot be cached, and in-flight
-- requests for the same \`Action\` may not be merged.
bbrevaDoNotCache :: Lens' BuildBazelRemoteExecutionV2Action (Maybe Bool)
bbrevaDoNotCache
  = lens _bbrevaDoNotCache
      (\ s a -> s{_bbrevaDoNotCache = a})

-- | The digest of the Command to run, which MUST be present in the
-- ContentAddressableStorage.
bbrevaCommandDigest :: Lens' BuildBazelRemoteExecutionV2Action (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevaCommandDigest
  = lens _bbrevaCommandDigest
      (\ s a -> s{_bbrevaCommandDigest = a})

-- | An optional additional salt value used to place this \`Action\` into a
-- separate cache namespace from other instances having the same field
-- contents. This salt typically comes from operational configuration
-- specific to sources such as repo and service configuration, and allows
-- disowning an entire set of ActionResults that might have been poisoned
-- by buggy software or tool failures.
bbrevaSalt :: Lens' BuildBazelRemoteExecutionV2Action (Maybe ByteString)
bbrevaSalt
  = lens _bbrevaSalt (\ s a -> s{_bbrevaSalt = a}) .
      mapping _Bytes

-- | The digest of the root Directory for the input files. The files in the
-- directory tree are available in the correct location on the build
-- machine before the command is executed. The root directory, as well as
-- every subdirectory and content blob referred to, MUST be in the
-- ContentAddressableStorage.
bbrevaInputRootDigest :: Lens' BuildBazelRemoteExecutionV2Action (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevaInputRootDigest
  = lens _bbrevaInputRootDigest
      (\ s a -> s{_bbrevaInputRootDigest = a})

-- | A timeout after which the execution should be killed. If the timeout is
-- absent, then the client is specifying that the execution should continue
-- as long as the server will let it. The server SHOULD impose a timeout if
-- the client does not specify one, however, if the client does specify a
-- timeout that is longer than the server\'s maximum timeout, the server
-- MUST reject the request. The timeout is a part of the Action message,
-- and therefore two \`Actions\` with different timeouts are different,
-- even if they are otherwise identical. This is because, if they were not,
-- running an \`Action\` with a lower timeout than is required might result
-- in a cache hit from an execution run with a longer timeout, hiding the
-- fact that the timeout is too short. By encoding it directly in the
-- \`Action\`, a lower timeout will result in a cache miss and the
-- execution timeout will fail immediately, rather than whenever the cache
-- entry gets evicted.
bbrevaTimeout :: Lens' BuildBazelRemoteExecutionV2Action (Maybe Scientific)
bbrevaTimeout
  = lens _bbrevaTimeout
      (\ s a -> s{_bbrevaTimeout = a})
      . mapping _GDuration

instance FromJSON BuildBazelRemoteExecutionV2Action
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2Action"
              (\ o ->
                 BuildBazelRemoteExecutionV2Action' <$>
                   (o .:? "platform") <*> (o .:? "doNotCache") <*>
                     (o .:? "commandDigest")
                     <*> (o .:? "salt")
                     <*> (o .:? "inputRootDigest")
                     <*> (o .:? "timeout"))

instance ToJSON BuildBazelRemoteExecutionV2Action
         where
        toJSON BuildBazelRemoteExecutionV2Action'{..}
          = object
              (catMaybes
                 [("platform" .=) <$> _bbrevaPlatform,
                  ("doNotCache" .=) <$> _bbrevaDoNotCache,
                  ("commandDigest" .=) <$> _bbrevaCommandDigest,
                  ("salt" .=) <$> _bbrevaSalt,
                  ("inputRootDigest" .=) <$> _bbrevaInputRootDigest,
                  ("timeout" .=) <$> _bbrevaTimeout])

-- | An \`OutputDirectory\` is the output in an \`ActionResult\`
-- corresponding to a directory\'s full contents rather than a single file.
--
-- /See:/ 'buildBazelRemoteExecutionV2OutputDirectory' smart constructor.
data BuildBazelRemoteExecutionV2OutputDirectory =
  BuildBazelRemoteExecutionV2OutputDirectory'
    { _bbrevodPath :: !(Maybe Text)
    , _bbrevodTreeDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2OutputDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevodPath'
--
-- * 'bbrevodTreeDigest'
buildBazelRemoteExecutionV2OutputDirectory
    :: BuildBazelRemoteExecutionV2OutputDirectory
buildBazelRemoteExecutionV2OutputDirectory =
  BuildBazelRemoteExecutionV2OutputDirectory'
    {_bbrevodPath = Nothing, _bbrevodTreeDigest = Nothing}


-- | The full path of the directory relative to the working directory. The
-- path separator is a forward slash \`\/\`. Since this is a relative path,
-- it MUST NOT begin with a leading forward slash. The empty string value
-- is allowed, and it denotes the entire working directory.
bbrevodPath :: Lens' BuildBazelRemoteExecutionV2OutputDirectory (Maybe Text)
bbrevodPath
  = lens _bbrevodPath (\ s a -> s{_bbrevodPath = a})

-- | The digest of the encoded Tree proto containing the directory\'s
-- contents.
bbrevodTreeDigest :: Lens' BuildBazelRemoteExecutionV2OutputDirectory (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevodTreeDigest
  = lens _bbrevodTreeDigest
      (\ s a -> s{_bbrevodTreeDigest = a})

instance FromJSON
           BuildBazelRemoteExecutionV2OutputDirectory
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2OutputDirectory"
              (\ o ->
                 BuildBazelRemoteExecutionV2OutputDirectory' <$>
                   (o .:? "path") <*> (o .:? "treeDigest"))

instance ToJSON
           BuildBazelRemoteExecutionV2OutputDirectory
         where
        toJSON
          BuildBazelRemoteExecutionV2OutputDirectory'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _bbrevodPath,
                  ("treeDigest" .=) <$> _bbrevodTreeDigest])

-- | A \`Tree\` contains all the Directory protos in a single directory
-- Merkle tree, compressed into one message.
--
-- /See:/ 'buildBazelRemoteExecutionV2Tree' smart constructor.
data BuildBazelRemoteExecutionV2Tree =
  BuildBazelRemoteExecutionV2Tree'
    { _bbrevtChildren :: !(Maybe [BuildBazelRemoteExecutionV2Directory])
    , _bbrevtRoot :: !(Maybe BuildBazelRemoteExecutionV2Directory)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2Tree' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevtChildren'
--
-- * 'bbrevtRoot'
buildBazelRemoteExecutionV2Tree
    :: BuildBazelRemoteExecutionV2Tree
buildBazelRemoteExecutionV2Tree =
  BuildBazelRemoteExecutionV2Tree'
    {_bbrevtChildren = Nothing, _bbrevtRoot = Nothing}


-- | All the child directories: the directories referred to by the root and,
-- recursively, all its children. In order to reconstruct the directory
-- tree, the client must take the digests of each of the child directories
-- and then build up a tree starting from the \`root\`.
bbrevtChildren :: Lens' BuildBazelRemoteExecutionV2Tree [BuildBazelRemoteExecutionV2Directory]
bbrevtChildren
  = lens _bbrevtChildren
      (\ s a -> s{_bbrevtChildren = a})
      . _Default
      . _Coerce

-- | The root directory in the tree.
bbrevtRoot :: Lens' BuildBazelRemoteExecutionV2Tree (Maybe BuildBazelRemoteExecutionV2Directory)
bbrevtRoot
  = lens _bbrevtRoot (\ s a -> s{_bbrevtRoot = a})

instance FromJSON BuildBazelRemoteExecutionV2Tree
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2Tree"
              (\ o ->
                 BuildBazelRemoteExecutionV2Tree' <$>
                   (o .:? "children" .!= mempty) <*> (o .:? "root"))

instance ToJSON BuildBazelRemoteExecutionV2Tree where
        toJSON BuildBazelRemoteExecutionV2Tree'{..}
          = object
              (catMaybes
                 [("children" .=) <$> _bbrevtChildren,
                  ("root" .=) <$> _bbrevtRoot])

-- | Supported range of priorities, including boundaries.
--
-- /See:/ 'buildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange' smart constructor.
data BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange =
  BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange'
    { _bbrevpcprMinPriority :: !(Maybe (Textual Int32))
    , _bbrevpcprMaxPriority :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevpcprMinPriority'
--
-- * 'bbrevpcprMaxPriority'
buildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    :: BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
buildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange =
  BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange'
    {_bbrevpcprMinPriority = Nothing, _bbrevpcprMaxPriority = Nothing}


-- | The minimum numeric value for this priority range, which represents the
-- most urgent task or longest retained item.
bbrevpcprMinPriority :: Lens' BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange (Maybe Int32)
bbrevpcprMinPriority
  = lens _bbrevpcprMinPriority
      (\ s a -> s{_bbrevpcprMinPriority = a})
      . mapping _Coerce

-- | The maximum numeric value for this priority range, which represents the
-- least urgent task or shortest retained item.
bbrevpcprMaxPriority :: Lens' BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange (Maybe Int32)
bbrevpcprMaxPriority
  = lens _bbrevpcprMaxPriority
      (\ s a -> s{_bbrevpcprMaxPriority = a})
      . mapping _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange"
              (\ o ->
                 BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange'
                   <$> (o .:? "minPriority") <*> (o .:? "maxPriority"))

instance ToJSON
           BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
         where
        toJSON
          BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange'{..}
          = object
              (catMaybes
                 [("minPriority" .=) <$> _bbrevpcprMinPriority,
                  ("maxPriority" .=) <$> _bbrevpcprMaxPriority])

-- | An \`OutputFile\` is similar to a FileNode, but it is used as an output
-- in an \`ActionResult\`. It allows a full file path rather than only a
-- name.
--
-- /See:/ 'buildBazelRemoteExecutionV2OutputFile' smart constructor.
data BuildBazelRemoteExecutionV2OutputFile =
  BuildBazelRemoteExecutionV2OutputFile'
    { _bbrevofContents :: !(Maybe Bytes)
    , _bbrevofPath :: !(Maybe Text)
    , _bbrevofIsExecutable :: !(Maybe Bool)
    , _bbrevofDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    , _bbrevofNodeProperties :: !(Maybe BuildBazelRemoteExecutionV2NodeProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2OutputFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevofContents'
--
-- * 'bbrevofPath'
--
-- * 'bbrevofIsExecutable'
--
-- * 'bbrevofDigest'
--
-- * 'bbrevofNodeProperties'
buildBazelRemoteExecutionV2OutputFile
    :: BuildBazelRemoteExecutionV2OutputFile
buildBazelRemoteExecutionV2OutputFile =
  BuildBazelRemoteExecutionV2OutputFile'
    { _bbrevofContents = Nothing
    , _bbrevofPath = Nothing
    , _bbrevofIsExecutable = Nothing
    , _bbrevofDigest = Nothing
    , _bbrevofNodeProperties = Nothing
    }


-- | The contents of the file if inlining was requested. The server SHOULD
-- NOT inline file contents unless requested by the client in the
-- GetActionResultRequest message. The server MAY omit inlining, even if
-- requested, and MUST do so if inlining would cause the response to exceed
-- message size limits.
bbrevofContents :: Lens' BuildBazelRemoteExecutionV2OutputFile (Maybe ByteString)
bbrevofContents
  = lens _bbrevofContents
      (\ s a -> s{_bbrevofContents = a})
      . mapping _Bytes

-- | The full path of the file relative to the working directory, including
-- the filename. The path separator is a forward slash \`\/\`. Since this
-- is a relative path, it MUST NOT begin with a leading forward slash.
bbrevofPath :: Lens' BuildBazelRemoteExecutionV2OutputFile (Maybe Text)
bbrevofPath
  = lens _bbrevofPath (\ s a -> s{_bbrevofPath = a})

-- | True if file is executable, false otherwise.
bbrevofIsExecutable :: Lens' BuildBazelRemoteExecutionV2OutputFile (Maybe Bool)
bbrevofIsExecutable
  = lens _bbrevofIsExecutable
      (\ s a -> s{_bbrevofIsExecutable = a})

-- | The digest of the file\'s content.
bbrevofDigest :: Lens' BuildBazelRemoteExecutionV2OutputFile (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevofDigest
  = lens _bbrevofDigest
      (\ s a -> s{_bbrevofDigest = a})

bbrevofNodeProperties :: Lens' BuildBazelRemoteExecutionV2OutputFile (Maybe BuildBazelRemoteExecutionV2NodeProperties)
bbrevofNodeProperties
  = lens _bbrevofNodeProperties
      (\ s a -> s{_bbrevofNodeProperties = a})

instance FromJSON
           BuildBazelRemoteExecutionV2OutputFile
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2OutputFile"
              (\ o ->
                 BuildBazelRemoteExecutionV2OutputFile' <$>
                   (o .:? "contents") <*> (o .:? "path") <*>
                     (o .:? "isExecutable")
                     <*> (o .:? "digest")
                     <*> (o .:? "nodeProperties"))

instance ToJSON BuildBazelRemoteExecutionV2OutputFile
         where
        toJSON BuildBazelRemoteExecutionV2OutputFile'{..}
          = object
              (catMaybes
                 [("contents" .=) <$> _bbrevofContents,
                  ("path" .=) <$> _bbrevofPath,
                  ("isExecutable" .=) <$> _bbrevofIsExecutable,
                  ("digest" .=) <$> _bbrevofDigest,
                  ("nodeProperties" .=) <$> _bbrevofNodeProperties])

-- | The request used for \`CreateInstance\`.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest'
    { _gdravcirParent :: !(Maybe Text)
    , _gdravcirInstanceId :: !(Maybe Text)
    , _gdravcirInstance :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravcirParent'
--
-- * 'gdravcirInstanceId'
--
-- * 'gdravcirInstance'
googleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest'
    { _gdravcirParent = Nothing
    , _gdravcirInstanceId = Nothing
    , _gdravcirInstance = Nothing
    }


-- | Resource name of the project containing the instance. Format:
-- \`projects\/[PROJECT_ID]\`.
gdravcirParent :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest (Maybe Text)
gdravcirParent
  = lens _gdravcirParent
      (\ s a -> s{_gdravcirParent = a})

-- | ID of the created instance. A valid \`instance_id\` must: be 6-50
-- characters long, contain only lowercase letters, digits, hyphens and
-- underscores, start with a lowercase letter, and end with a lowercase
-- letter or a digit.
gdravcirInstanceId :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest (Maybe Text)
gdravcirInstanceId
  = lens _gdravcirInstanceId
      (\ s a -> s{_gdravcirInstanceId = a})

-- | Specifies the instance to create. The name in the instance, if specified
-- in the instance, is ignored.
gdravcirInstance :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance)
gdravcirInstance
  = lens _gdravcirInstance
      (\ s a -> s{_gdravcirInstance = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest'
                   <$>
                   (o .:? "parent") <*> (o .:? "instanceId") <*>
                     (o .:? "instance"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gdravcirParent,
                  ("instanceId" .=) <$> _gdravcirInstanceId,
                  ("instance" .=) <$> _gdravcirInstance])

-- | A \`Directory\` represents a directory node in a file tree, containing
-- zero or more children FileNodes, DirectoryNodes and SymlinkNodes. Each
-- \`Node\` contains its name in the directory, either the digest of its
-- content (either a file blob or a \`Directory\` proto) or a symlink
-- target, as well as possibly some metadata about the file or directory.
-- In order to ensure that two equivalent directory trees hash to the same
-- value, the following restrictions MUST be obeyed when constructing a a
-- \`Directory\`: * Every child in the directory must have a path of
-- exactly one segment. Multiple levels of directory hierarchy may not be
-- collapsed. * Each child in the directory must have a unique path segment
-- (file name). Note that while the API itself is case-sensitive, the
-- environment where the Action is executed may or may not be
-- case-sensitive. That is, it is legal to call the API with a Directory
-- that has both \"Foo\" and \"foo\" as children, but the Action may be
-- rejected by the remote system upon execution. * The files, directories
-- and symlinks in the directory must each be sorted in lexicographical
-- order by path. The path strings must be sorted by code point,
-- equivalently, by UTF-8 bytes. * The NodeProperties of files,
-- directories, and symlinks must be sorted in lexicographical order by
-- property name. A \`Directory\` that obeys the restrictions is said to be
-- in canonical form. As an example, the following could be used for a file
-- named \`bar\` and a directory named \`foo\` with an executable file
-- named \`baz\` (hashes shortened for readability): \`\`\`json \/\/
-- (Directory proto) { files: [ { name: \"bar\", digest: { hash:
-- \"4a73bc9d03...\", size: 65534 }, node_properties: [ { \"name\":
-- \"MTime\", \"value\": \"2017-01-15T01:30:15.01Z\" } ] } ], directories:
-- [ { name: \"foo\", digest: { hash: \"4cf2eda940...\", size: 43 } } ] }
-- \/\/ (Directory proto with hash \"4cf2eda940...\" and size 43) { files:
-- [ { name: \"baz\", digest: { hash: \"b2c941073e...\", size: 1294, },
-- is_executable: true } ] } \`\`\`
--
-- /See:/ 'buildBazelRemoteExecutionV2Directory' smart constructor.
data BuildBazelRemoteExecutionV2Directory =
  BuildBazelRemoteExecutionV2Directory'
    { _bbrevdDirectories :: !(Maybe [BuildBazelRemoteExecutionV2DirectoryNode])
    , _bbrevdSymlinks :: !(Maybe [BuildBazelRemoteExecutionV2SymlinkNode])
    , _bbrevdFiles :: !(Maybe [BuildBazelRemoteExecutionV2FileNode])
    , _bbrevdNodeProperties :: !(Maybe BuildBazelRemoteExecutionV2NodeProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2Directory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevdDirectories'
--
-- * 'bbrevdSymlinks'
--
-- * 'bbrevdFiles'
--
-- * 'bbrevdNodeProperties'
buildBazelRemoteExecutionV2Directory
    :: BuildBazelRemoteExecutionV2Directory
buildBazelRemoteExecutionV2Directory =
  BuildBazelRemoteExecutionV2Directory'
    { _bbrevdDirectories = Nothing
    , _bbrevdSymlinks = Nothing
    , _bbrevdFiles = Nothing
    , _bbrevdNodeProperties = Nothing
    }


-- | The subdirectories in the directory.
bbrevdDirectories :: Lens' BuildBazelRemoteExecutionV2Directory [BuildBazelRemoteExecutionV2DirectoryNode]
bbrevdDirectories
  = lens _bbrevdDirectories
      (\ s a -> s{_bbrevdDirectories = a})
      . _Default
      . _Coerce

-- | The symlinks in the directory.
bbrevdSymlinks :: Lens' BuildBazelRemoteExecutionV2Directory [BuildBazelRemoteExecutionV2SymlinkNode]
bbrevdSymlinks
  = lens _bbrevdSymlinks
      (\ s a -> s{_bbrevdSymlinks = a})
      . _Default
      . _Coerce

-- | The files in the directory.
bbrevdFiles :: Lens' BuildBazelRemoteExecutionV2Directory [BuildBazelRemoteExecutionV2FileNode]
bbrevdFiles
  = lens _bbrevdFiles (\ s a -> s{_bbrevdFiles = a}) .
      _Default
      . _Coerce

bbrevdNodeProperties :: Lens' BuildBazelRemoteExecutionV2Directory (Maybe BuildBazelRemoteExecutionV2NodeProperties)
bbrevdNodeProperties
  = lens _bbrevdNodeProperties
      (\ s a -> s{_bbrevdNodeProperties = a})

instance FromJSON
           BuildBazelRemoteExecutionV2Directory
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2Directory"
              (\ o ->
                 BuildBazelRemoteExecutionV2Directory' <$>
                   (o .:? "directories" .!= mempty) <*>
                     (o .:? "symlinks" .!= mempty)
                     <*> (o .:? "files" .!= mempty)
                     <*> (o .:? "nodeProperties"))

instance ToJSON BuildBazelRemoteExecutionV2Directory
         where
        toJSON BuildBazelRemoteExecutionV2Directory'{..}
          = object
              (catMaybes
                 [("directories" .=) <$> _bbrevdDirectories,
                  ("symlinks" .=) <$> _bbrevdSymlinks,
                  ("files" .=) <$> _bbrevdFiles,
                  ("nodeProperties" .=) <$> _bbrevdNodeProperties])

-- | A \`DirectoryNode\` represents a child of a Directory which is itself a
-- \`Directory\` and its associated metadata.
--
-- /See:/ 'buildBazelRemoteExecutionV2DirectoryNode' smart constructor.
data BuildBazelRemoteExecutionV2DirectoryNode =
  BuildBazelRemoteExecutionV2DirectoryNode'
    { _bbrevdnName :: !(Maybe Text)
    , _bbrevdnDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2DirectoryNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevdnName'
--
-- * 'bbrevdnDigest'
buildBazelRemoteExecutionV2DirectoryNode
    :: BuildBazelRemoteExecutionV2DirectoryNode
buildBazelRemoteExecutionV2DirectoryNode =
  BuildBazelRemoteExecutionV2DirectoryNode'
    {_bbrevdnName = Nothing, _bbrevdnDigest = Nothing}


-- | The name of the directory.
bbrevdnName :: Lens' BuildBazelRemoteExecutionV2DirectoryNode (Maybe Text)
bbrevdnName
  = lens _bbrevdnName (\ s a -> s{_bbrevdnName = a})

-- | The digest of the Directory object represented. See Digest for
-- information about how to take the digest of a proto message.
bbrevdnDigest :: Lens' BuildBazelRemoteExecutionV2DirectoryNode (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevdnDigest
  = lens _bbrevdnDigest
      (\ s a -> s{_bbrevdnDigest = a})

instance FromJSON
           BuildBazelRemoteExecutionV2DirectoryNode
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2DirectoryNode"
              (\ o ->
                 BuildBazelRemoteExecutionV2DirectoryNode' <$>
                   (o .:? "name") <*> (o .:? "digest"))

instance ToJSON
           BuildBazelRemoteExecutionV2DirectoryNode
         where
        toJSON BuildBazelRemoteExecutionV2DirectoryNode'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _bbrevdnName,
                  ("digest" .=) <$> _bbrevdnDigest])

-- | Node properties for FileNodes, DirectoryNodes, and SymlinkNodes. The
-- server is responsible for specifying the properties that it accepts.
--
-- /See:/ 'buildBazelRemoteExecutionV2NodeProperties' smart constructor.
data BuildBazelRemoteExecutionV2NodeProperties =
  BuildBazelRemoteExecutionV2NodeProperties'
    { _bbrevnpMtime :: !(Maybe DateTime')
    , _bbrevnpUnixMode :: !(Maybe (Textual Word32))
    , _bbrevnpProperties :: !(Maybe [BuildBazelRemoteExecutionV2NodeProperty])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2NodeProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevnpMtime'
--
-- * 'bbrevnpUnixMode'
--
-- * 'bbrevnpProperties'
buildBazelRemoteExecutionV2NodeProperties
    :: BuildBazelRemoteExecutionV2NodeProperties
buildBazelRemoteExecutionV2NodeProperties =
  BuildBazelRemoteExecutionV2NodeProperties'
    { _bbrevnpMtime = Nothing
    , _bbrevnpUnixMode = Nothing
    , _bbrevnpProperties = Nothing
    }


-- | The file\'s last modification timestamp.
bbrevnpMtime :: Lens' BuildBazelRemoteExecutionV2NodeProperties (Maybe UTCTime)
bbrevnpMtime
  = lens _bbrevnpMtime (\ s a -> s{_bbrevnpMtime = a})
      . mapping _DateTime

-- | The UNIX file mode, e.g., 0755.
bbrevnpUnixMode :: Lens' BuildBazelRemoteExecutionV2NodeProperties (Maybe Word32)
bbrevnpUnixMode
  = lens _bbrevnpUnixMode
      (\ s a -> s{_bbrevnpUnixMode = a})
      . mapping _Coerce

-- | A list of string-based NodeProperties.
bbrevnpProperties :: Lens' BuildBazelRemoteExecutionV2NodeProperties [BuildBazelRemoteExecutionV2NodeProperty]
bbrevnpProperties
  = lens _bbrevnpProperties
      (\ s a -> s{_bbrevnpProperties = a})
      . _Default
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2NodeProperties
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2NodeProperties"
              (\ o ->
                 BuildBazelRemoteExecutionV2NodeProperties' <$>
                   (o .:? "mtime") <*> (o .:? "unixMode") <*>
                     (o .:? "properties" .!= mempty))

instance ToJSON
           BuildBazelRemoteExecutionV2NodeProperties
         where
        toJSON BuildBazelRemoteExecutionV2NodeProperties'{..}
          = object
              (catMaybes
                 [("mtime" .=) <$> _bbrevnpMtime,
                  ("unixMode" .=) <$> _bbrevnpUnixMode,
                  ("properties" .=) <$> _bbrevnpProperties])

-- | Describes the timeouts associated with this task.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandTaskTimeouts' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts'
    { _gdrvcttIdle :: !(Maybe GDuration)
    , _gdrvcttShutdown :: !(Maybe GDuration)
    , _gdrvcttExecution :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvcttIdle'
--
-- * 'gdrvcttShutdown'
--
-- * 'gdrvcttExecution'
googleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    :: GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
googleDevtoolsRemoteworkersV1test2CommandTaskTimeouts =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts'
    { _gdrvcttIdle = Nothing
    , _gdrvcttShutdown = Nothing
    , _gdrvcttExecution = Nothing
    }


-- | This specifies the maximum amount of time the task can be idle - that
-- is, go without generating some output in either stdout or stderr. If the
-- process is silent for more than the specified time, the worker will
-- terminate the task.
gdrvcttIdle :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts (Maybe Scientific)
gdrvcttIdle
  = lens _gdrvcttIdle (\ s a -> s{_gdrvcttIdle = a}) .
      mapping _GDuration

-- | If the execution or IO timeouts are exceeded, the worker will try to
-- gracefully terminate the task and return any existing logs. However,
-- tasks may be hard-frozen in which case this process will fail. This
-- timeout specifies how long to wait for a terminated task to shut down
-- gracefully (e.g. via SIGTERM) before we bring down the hammer (e.g.
-- SIGKILL on *nix, CTRL_BREAK_EVENT on Windows).
gdrvcttShutdown :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts (Maybe Scientific)
gdrvcttShutdown
  = lens _gdrvcttShutdown
      (\ s a -> s{_gdrvcttShutdown = a})
      . mapping _GDuration

-- | This specifies the maximum time that the task can run, excluding the
-- time required to download inputs or upload outputs. That is, the worker
-- will terminate the task if it runs longer than this.
gdrvcttExecution :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts (Maybe Scientific)
gdrvcttExecution
  = lens _gdrvcttExecution
      (\ s a -> s{_gdrvcttExecution = a})
      . mapping _GDuration

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts'
                   <$>
                   (o .:? "idle") <*> (o .:? "shutdown") <*>
                     (o .:? "execution"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts'{..}
          = object
              (catMaybes
                 [("idle" .=) <$> _gdrvcttIdle,
                  ("shutdown" .=) <$> _gdrvcttShutdown,
                  ("execution" .=) <$> _gdrvcttExecution])

-- | Instance conceptually encapsulates all Remote Build Execution resources
-- for remote builds. An instance consists of storage and compute resources
-- (for example, \`ContentAddressableStorage\`, \`ActionCache\`,
-- \`WorkerPools\`) used for running remote builds. All Remote Build
-- Execution API calls are scoped to an instance.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaInstance' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance'
    { _gdraviState :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState)
    , _gdraviLocation :: !(Maybe Text)
    , _gdraviFeaturePolicy :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy)
    , _gdraviName :: !(Maybe Text)
    , _gdraviLoggingEnabled :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdraviState'
--
-- * 'gdraviLocation'
--
-- * 'gdraviFeaturePolicy'
--
-- * 'gdraviName'
--
-- * 'gdraviLoggingEnabled'
googleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
googleDevtoolsRemotebuildexecutionAdminV1alphaInstance =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance'
    { _gdraviState = Nothing
    , _gdraviLocation = Nothing
    , _gdraviFeaturePolicy = Nothing
    , _gdraviName = Nothing
    , _gdraviLoggingEnabled = Nothing
    }


-- | Output only. State of the instance.
gdraviState :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState)
gdraviState
  = lens _gdraviState (\ s a -> s{_gdraviState = a})

-- | The location is a GCP region. Currently only \`us-central1\` is
-- supported.
gdraviLocation :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance (Maybe Text)
gdraviLocation
  = lens _gdraviLocation
      (\ s a -> s{_gdraviLocation = a})

-- | The policy to define whether or not RBE features can be used or how they
-- can be used.
gdraviFeaturePolicy :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy)
gdraviFeaturePolicy
  = lens _gdraviFeaturePolicy
      (\ s a -> s{_gdraviFeaturePolicy = a})

-- | Output only. Instance resource name formatted as:
-- \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\`. Name should not be
-- populated when creating an instance since it is provided in the
-- \`instance_id\` field.
gdraviName :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance (Maybe Text)
gdraviName
  = lens _gdraviName (\ s a -> s{_gdraviName = a})

-- | Output only. Whether stack driver logging is enabled for the instance.
gdraviLoggingEnabled :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance (Maybe Bool)
gdraviLoggingEnabled
  = lens _gdraviLoggingEnabled
      (\ s a -> s{_gdraviLoggingEnabled = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance'
                   <$>
                   (o .:? "state") <*> (o .:? "location") <*>
                     (o .:? "featurePolicy")
                     <*> (o .:? "name")
                     <*> (o .:? "loggingEnabled"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gdraviState,
                  ("location" .=) <$> _gdraviLocation,
                  ("featurePolicy" .=) <$> _gdraviFeaturePolicy,
                  ("name" .=) <$> _gdraviName,
                  ("loggingEnabled" .=) <$> _gdraviLoggingEnabled])

-- | Labels associated with the workers. Label keys and values can be no
-- longer than 63 characters, can only contain lowercase letters, numeric
-- characters, underscores and dashes. International letters are permitted.
-- Label keys must start with a letter. Label values are optional. There
-- can not be more than 64 labels per resource.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels'
    { _gdravwclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravwclAddtional'
googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels
    :: HashMap Text Text -- ^ 'gdravwclAddtional'
    -> GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels
googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels pGdravwclAddtional_ =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels'
    {_gdravwclAddtional = _Coerce # pGdravwclAddtional_}


gdravwclAddtional :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels (HashMap Text Text)
gdravwclAddtional
  = lens _gdravwclAddtional
      (\ s a -> s{_gdravwclAddtional = a})
      . _Coerce

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels
         where
        toJSON = toJSON . _gdravwclAddtional

-- | Capabilities of the remote execution system.
--
-- /See:/ 'buildBazelRemoteExecutionV2ExecutionCapabilities' smart constructor.
data BuildBazelRemoteExecutionV2ExecutionCapabilities =
  BuildBazelRemoteExecutionV2ExecutionCapabilities'
    { _bbrevecSupportedNodeProperties :: !(Maybe [Text])
    , _bbrevecExecutionPriorityCapabilities :: !(Maybe BuildBazelRemoteExecutionV2PriorityCapabilities)
    , _bbrevecExecEnabled :: !(Maybe Bool)
    , _bbrevecDigestFunction :: !(Maybe BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecutionCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevecSupportedNodeProperties'
--
-- * 'bbrevecExecutionPriorityCapabilities'
--
-- * 'bbrevecExecEnabled'
--
-- * 'bbrevecDigestFunction'
buildBazelRemoteExecutionV2ExecutionCapabilities
    :: BuildBazelRemoteExecutionV2ExecutionCapabilities
buildBazelRemoteExecutionV2ExecutionCapabilities =
  BuildBazelRemoteExecutionV2ExecutionCapabilities'
    { _bbrevecSupportedNodeProperties = Nothing
    , _bbrevecExecutionPriorityCapabilities = Nothing
    , _bbrevecExecEnabled = Nothing
    , _bbrevecDigestFunction = Nothing
    }


-- | Supported node properties.
bbrevecSupportedNodeProperties :: Lens' BuildBazelRemoteExecutionV2ExecutionCapabilities [Text]
bbrevecSupportedNodeProperties
  = lens _bbrevecSupportedNodeProperties
      (\ s a -> s{_bbrevecSupportedNodeProperties = a})
      . _Default
      . _Coerce

-- | Supported execution priority range.
bbrevecExecutionPriorityCapabilities :: Lens' BuildBazelRemoteExecutionV2ExecutionCapabilities (Maybe BuildBazelRemoteExecutionV2PriorityCapabilities)
bbrevecExecutionPriorityCapabilities
  = lens _bbrevecExecutionPriorityCapabilities
      (\ s a ->
         s{_bbrevecExecutionPriorityCapabilities = a})

-- | Whether remote execution is enabled for the particular server\/instance.
bbrevecExecEnabled :: Lens' BuildBazelRemoteExecutionV2ExecutionCapabilities (Maybe Bool)
bbrevecExecEnabled
  = lens _bbrevecExecEnabled
      (\ s a -> s{_bbrevecExecEnabled = a})

-- | Remote execution may only support a single digest function.
bbrevecDigestFunction :: Lens' BuildBazelRemoteExecutionV2ExecutionCapabilities (Maybe BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction)
bbrevecDigestFunction
  = lens _bbrevecDigestFunction
      (\ s a -> s{_bbrevecDigestFunction = a})

instance FromJSON
           BuildBazelRemoteExecutionV2ExecutionCapabilities
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ExecutionCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecutionCapabilities' <$>
                   (o .:? "supportedNodeProperties" .!= mempty) <*>
                     (o .:? "executionPriorityCapabilities")
                     <*> (o .:? "execEnabled")
                     <*> (o .:? "digestFunction"))

instance ToJSON
           BuildBazelRemoteExecutionV2ExecutionCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecutionCapabilities'{..}
          = object
              (catMaybes
                 [("supportedNodeProperties" .=) <$>
                    _bbrevecSupportedNodeProperties,
                  ("executionPriorityCapabilities" .=) <$>
                    _bbrevecExecutionPriorityCapabilities,
                  ("execEnabled" .=) <$> _bbrevecExecEnabled,
                  ("digestFunction" .=) <$> _bbrevecDigestFunction])

-- | The request used for UpdateWorkerPool.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest'
    { _gdravuwprUpdateMask :: !(Maybe GFieldMask)
    , _gdravuwprWorkerPool :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravuwprUpdateMask'
--
-- * 'gdravuwprWorkerPool'
googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest'
    {_gdravuwprUpdateMask = Nothing, _gdravuwprWorkerPool = Nothing}


-- | The update mask applies to worker_pool. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
-- If an empty update_mask is provided, only the non-default valued field
-- in the worker pool field will be updated. Note that in order to update a
-- field to the default value (zero, false, empty string) an explicit
-- update_mask must be provided.
gdravuwprUpdateMask :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest (Maybe GFieldMask)
gdravuwprUpdateMask
  = lens _gdravuwprUpdateMask
      (\ s a -> s{_gdravuwprUpdateMask = a})

-- | Specifies the worker pool to update.
gdravuwprWorkerPool :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool)
gdravuwprWorkerPool
  = lens _gdravuwprWorkerPool
      (\ s a -> s{_gdravuwprWorkerPool = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest'
                   <$> (o .:? "updateMask") <*> (o .:? "workerPool"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _gdravuwprUpdateMask,
                  ("workerPool" .=) <$> _gdravuwprWorkerPool])

-- | A request message for ContentAddressableStorage.BatchReadBlobs.
--
-- /See:/ 'buildBazelRemoteExecutionV2BatchReadBlobsRequest' smart constructor.
newtype BuildBazelRemoteExecutionV2BatchReadBlobsRequest =
  BuildBazelRemoteExecutionV2BatchReadBlobsRequest'
    { _bbrevbrbrDigests :: Maybe [BuildBazelRemoteExecutionV2Digest]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchReadBlobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevbrbrDigests'
buildBazelRemoteExecutionV2BatchReadBlobsRequest
    :: BuildBazelRemoteExecutionV2BatchReadBlobsRequest
buildBazelRemoteExecutionV2BatchReadBlobsRequest =
  BuildBazelRemoteExecutionV2BatchReadBlobsRequest'
    {_bbrevbrbrDigests = Nothing}


-- | The individual blob digests.
bbrevbrbrDigests :: Lens' BuildBazelRemoteExecutionV2BatchReadBlobsRequest [BuildBazelRemoteExecutionV2Digest]
bbrevbrbrDigests
  = lens _bbrevbrbrDigests
      (\ s a -> s{_bbrevbrbrDigests = a})
      . _Default
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsRequest
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2BatchReadBlobsRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchReadBlobsRequest' <$>
                   (o .:? "digests" .!= mempty))

instance ToJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsRequest
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchReadBlobsRequest'{..}
          = object
              (catMaybes [("digests" .=) <$> _bbrevbrbrDigests])

-- | A worker pool resource in the Remote Build Execution API.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool'
    { _gdravwpWorkerConfig :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig)
    , _gdravwpState :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState)
    , _gdravwpWorkerCount :: !(Maybe (Textual Int64))
    , _gdravwpChannel :: !(Maybe Text)
    , _gdravwpName :: !(Maybe Text)
    , _gdravwpAutoscale :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravwpWorkerConfig'
--
-- * 'gdravwpState'
--
-- * 'gdravwpWorkerCount'
--
-- * 'gdravwpChannel'
--
-- * 'gdravwpName'
--
-- * 'gdravwpAutoscale'
googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool'
    { _gdravwpWorkerConfig = Nothing
    , _gdravwpState = Nothing
    , _gdravwpWorkerCount = Nothing
    , _gdravwpChannel = Nothing
    , _gdravwpName = Nothing
    , _gdravwpAutoscale = Nothing
    }


-- | Specifies the properties, such as machine type and disk size, used for
-- creating workers in a worker pool.
gdravwpWorkerConfig :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig)
gdravwpWorkerConfig
  = lens _gdravwpWorkerConfig
      (\ s a -> s{_gdravwpWorkerConfig = a})

-- | Output only. State of the worker pool.
gdravwpState :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState)
gdravwpState
  = lens _gdravwpState (\ s a -> s{_gdravwpState = a})

-- | The desired number of workers in the worker pool. Must be a value
-- between 0 and 15000.
gdravwpWorkerCount :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool (Maybe Int64)
gdravwpWorkerCount
  = lens _gdravwpWorkerCount
      (\ s a -> s{_gdravwpWorkerCount = a})
      . mapping _Coerce

-- | Channel specifies the release channel of the pool.
gdravwpChannel :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool (Maybe Text)
gdravwpChannel
  = lens _gdravwpChannel
      (\ s a -> s{_gdravwpChannel = a})

-- | WorkerPool resource name formatted as:
-- \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\/workerpools\/[POOL_ID]\`.
-- name should not be populated when creating a worker pool since it is
-- provided in the \`poolId\` field.
gdravwpName :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool (Maybe Text)
gdravwpName
  = lens _gdravwpName (\ s a -> s{_gdravwpName = a})

-- | The autoscale policy to apply on a pool.
gdravwpAutoscale :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale)
gdravwpAutoscale
  = lens _gdravwpAutoscale
      (\ s a -> s{_gdravwpAutoscale = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool'
                   <$>
                   (o .:? "workerConfig") <*> (o .:? "state") <*>
                     (o .:? "workerCount")
                     <*> (o .:? "channel")
                     <*> (o .:? "name")
                     <*> (o .:? "autoscale"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool'{..}
          = object
              (catMaybes
                 [("workerConfig" .=) <$> _gdravwpWorkerConfig,
                  ("state" .=) <$> _gdravwpState,
                  ("workerCount" .=) <$> _gdravwpWorkerCount,
                  ("channel" .=) <$> _gdravwpChannel,
                  ("name" .=) <$> _gdravwpName,
                  ("autoscale" .=) <$> _gdravwpAutoscale])

-- | A \`SymlinkNode\` represents a symbolic link.
--
-- /See:/ 'buildBazelRemoteExecutionV2SymlinkNode' smart constructor.
data BuildBazelRemoteExecutionV2SymlinkNode =
  BuildBazelRemoteExecutionV2SymlinkNode'
    { _bbrevsnName :: !(Maybe Text)
    , _bbrevsnNodeProperties :: !(Maybe BuildBazelRemoteExecutionV2NodeProperties)
    , _bbrevsnTarget :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2SymlinkNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevsnName'
--
-- * 'bbrevsnNodeProperties'
--
-- * 'bbrevsnTarget'
buildBazelRemoteExecutionV2SymlinkNode
    :: BuildBazelRemoteExecutionV2SymlinkNode
buildBazelRemoteExecutionV2SymlinkNode =
  BuildBazelRemoteExecutionV2SymlinkNode'
    { _bbrevsnName = Nothing
    , _bbrevsnNodeProperties = Nothing
    , _bbrevsnTarget = Nothing
    }


-- | The name of the symlink.
bbrevsnName :: Lens' BuildBazelRemoteExecutionV2SymlinkNode (Maybe Text)
bbrevsnName
  = lens _bbrevsnName (\ s a -> s{_bbrevsnName = a})

bbrevsnNodeProperties :: Lens' BuildBazelRemoteExecutionV2SymlinkNode (Maybe BuildBazelRemoteExecutionV2NodeProperties)
bbrevsnNodeProperties
  = lens _bbrevsnNodeProperties
      (\ s a -> s{_bbrevsnNodeProperties = a})

-- | The target path of the symlink. The path separator is a forward slash
-- \`\/\`. The target path can be relative to the parent directory of the
-- symlink or it can be an absolute path starting with \`\/\`. Support for
-- absolute paths can be checked using the Capabilities API. \`..\`
-- components are allowed anywhere in the target path as logical
-- canonicalization may lead to different behavior in the presence of
-- directory symlinks (e.g. \`foo\/..\/bar\` may not be the same as
-- \`bar\`). To reduce potential cache misses, canonicalization is still
-- recommended where this is possible without impacting correctness.
bbrevsnTarget :: Lens' BuildBazelRemoteExecutionV2SymlinkNode (Maybe Text)
bbrevsnTarget
  = lens _bbrevsnTarget
      (\ s a -> s{_bbrevsnTarget = a})

instance FromJSON
           BuildBazelRemoteExecutionV2SymlinkNode
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2SymlinkNode"
              (\ o ->
                 BuildBazelRemoteExecutionV2SymlinkNode' <$>
                   (o .:? "name") <*> (o .:? "nodeProperties") <*>
                     (o .:? "target"))

instance ToJSON
           BuildBazelRemoteExecutionV2SymlinkNode
         where
        toJSON BuildBazelRemoteExecutionV2SymlinkNode'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _bbrevsnName,
                  ("nodeProperties" .=) <$> _bbrevsnNodeProperties,
                  ("target" .=) <$> _bbrevsnTarget])

--
-- /See:/ 'googleRpcStatusDetailsItem' smart constructor.
newtype GoogleRpcStatusDetailsItem =
  GoogleRpcStatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleRpcStatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpcStatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpcStatusDetailsItem
googleRpcStatusDetailsItem pGrsdiAddtional_ =
  GoogleRpcStatusDetailsItem' {_grsdiAddtional = _Coerce # pGrsdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
grsdiAddtional :: Lens' GoogleRpcStatusDetailsItem (HashMap Text JSONValue)
grsdiAddtional
  = lens _grsdiAddtional
      (\ s a -> s{_grsdiAddtional = a})
      . _Coerce

instance FromJSON GoogleRpcStatusDetailsItem where
        parseJSON
          = withObject "GoogleRpcStatusDetailsItem"
              (\ o ->
                 GoogleRpcStatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON GoogleRpcStatusDetailsItem where
        toJSON = toJSON . _grsdiAddtional

-- | The metadata for a directory. Similar to the equivalent message in the
-- Remote Execution API.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2DirectoryMetadata' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata =
  GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata'
    { _gdrvdmPath :: !(Maybe Text)
    , _gdrvdmDigest :: !(Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvdmPath'
--
-- * 'gdrvdmDigest'
googleDevtoolsRemoteworkersV1test2DirectoryMetadata
    :: GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
googleDevtoolsRemoteworkersV1test2DirectoryMetadata =
  GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata'
    {_gdrvdmPath = Nothing, _gdrvdmDigest = Nothing}


-- | The path of the directory, as in FileMetadata.path.
gdrvdmPath :: Lens' GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata (Maybe Text)
gdrvdmPath
  = lens _gdrvdmPath (\ s a -> s{_gdrvdmPath = a})

-- | A pointer to the contents of the directory, in the form of a marshalled
-- Directory message.
gdrvdmDigest :: Lens' GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata (Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
gdrvdmDigest
  = lens _gdrvdmDigest (\ s a -> s{_gdrvdmDigest = a})

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata'
                   <$> (o .:? "path") <*> (o .:? "digest"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _gdrvdmPath,
                  ("digest" .=) <$> _gdrvdmDigest])

-- | An ActionResult represents the result of an Action being run. It is
-- advised that at least one field (for example
-- \`ActionResult.execution_metadata.Worker\`) have a non-default value, to
-- ensure that the serialized value is non-empty, which can then be used as
-- a basic data sanity check.
--
-- /See:/ 'buildBazelRemoteExecutionV2ActionResult' smart constructor.
data BuildBazelRemoteExecutionV2ActionResult =
  BuildBazelRemoteExecutionV2ActionResult'
    { _bbrevarExecutionMetadata :: !(Maybe BuildBazelRemoteExecutionV2ExecutedActionMetadata)
    , _bbrevarOutputDirectorySymlinks :: !(Maybe [BuildBazelRemoteExecutionV2OutputSymlink])
    , _bbrevarOutputFileSymlinks :: !(Maybe [BuildBazelRemoteExecutionV2OutputSymlink])
    , _bbrevarOutputDirectories :: !(Maybe [BuildBazelRemoteExecutionV2OutputDirectory])
    , _bbrevarOutputSymlinks :: !(Maybe [BuildBazelRemoteExecutionV2OutputSymlink])
    , _bbrevarOutputFiles :: !(Maybe [BuildBazelRemoteExecutionV2OutputFile])
    , _bbrevarStderrRaw :: !(Maybe Bytes)
    , _bbrevarExitCode :: !(Maybe (Textual Int32))
    , _bbrevarStdoutDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    , _bbrevarStderrDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    , _bbrevarStdoutRaw :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ActionResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevarExecutionMetadata'
--
-- * 'bbrevarOutputDirectorySymlinks'
--
-- * 'bbrevarOutputFileSymlinks'
--
-- * 'bbrevarOutputDirectories'
--
-- * 'bbrevarOutputSymlinks'
--
-- * 'bbrevarOutputFiles'
--
-- * 'bbrevarStderrRaw'
--
-- * 'bbrevarExitCode'
--
-- * 'bbrevarStdoutDigest'
--
-- * 'bbrevarStderrDigest'
--
-- * 'bbrevarStdoutRaw'
buildBazelRemoteExecutionV2ActionResult
    :: BuildBazelRemoteExecutionV2ActionResult
buildBazelRemoteExecutionV2ActionResult =
  BuildBazelRemoteExecutionV2ActionResult'
    { _bbrevarExecutionMetadata = Nothing
    , _bbrevarOutputDirectorySymlinks = Nothing
    , _bbrevarOutputFileSymlinks = Nothing
    , _bbrevarOutputDirectories = Nothing
    , _bbrevarOutputSymlinks = Nothing
    , _bbrevarOutputFiles = Nothing
    , _bbrevarStderrRaw = Nothing
    , _bbrevarExitCode = Nothing
    , _bbrevarStdoutDigest = Nothing
    , _bbrevarStderrDigest = Nothing
    , _bbrevarStdoutRaw = Nothing
    }


-- | The details of the execution that originally produced this result.
bbrevarExecutionMetadata :: Lens' BuildBazelRemoteExecutionV2ActionResult (Maybe BuildBazelRemoteExecutionV2ExecutedActionMetadata)
bbrevarExecutionMetadata
  = lens _bbrevarExecutionMetadata
      (\ s a -> s{_bbrevarExecutionMetadata = a})

-- | The output directories of the action that are symbolic links to other
-- directories. Those may be links to other output directories, or input
-- directories, or even absolute paths outside of the working directory, if
-- the server supports SymlinkAbsolutePathStrategy.ALLOWED. For each output
-- directory requested in the \`output_directories\` field of the Action,
-- if the directory existed after the action completed, a single entry will
-- be present either in this field, or in the \`output_directories\` field,
-- if the directory was not a symbolic link. If an output of the same name
-- was found, but was a symbolic link to a file instead of a directory, the
-- server will return a FAILED_PRECONDITION. If the action does not produce
-- the requested output, then that output will be omitted from the list.
-- The server is free to arrange the output list as desired; clients MUST
-- NOT assume that the output list is sorted. DEPRECATED as of v2.1.
-- Servers that wish to be compatible with v2.0 API should still populate
-- this field in addition to \`output_symlinks\`.
bbrevarOutputDirectorySymlinks :: Lens' BuildBazelRemoteExecutionV2ActionResult [BuildBazelRemoteExecutionV2OutputSymlink]
bbrevarOutputDirectorySymlinks
  = lens _bbrevarOutputDirectorySymlinks
      (\ s a -> s{_bbrevarOutputDirectorySymlinks = a})
      . _Default
      . _Coerce

-- | The output files of the action that are symbolic links to other files.
-- Those may be links to other output files, or input files, or even
-- absolute paths outside of the working directory, if the server supports
-- SymlinkAbsolutePathStrategy.ALLOWED. For each output file requested in
-- the \`output_files\` or \`output_paths\` field of the Action, if the
-- corresponding file existed after the action completed, a single entry
-- will be present either in this field, or in the \`output_files\` field,
-- if the file was not a symbolic link. If an output symbolic link of the
-- same name as listed in \`output_files\` of the Command was found, but
-- its target type was not a regular file, the server will return a
-- FAILED_PRECONDITION. If the action does not produce the requested
-- output, then that output will be omitted from the list. The server is
-- free to arrange the output list as desired; clients MUST NOT assume that
-- the output list is sorted. DEPRECATED as of v2.1. Servers that wish to
-- be compatible with v2.0 API should still populate this field in addition
-- to \`output_symlinks\`.
bbrevarOutputFileSymlinks :: Lens' BuildBazelRemoteExecutionV2ActionResult [BuildBazelRemoteExecutionV2OutputSymlink]
bbrevarOutputFileSymlinks
  = lens _bbrevarOutputFileSymlinks
      (\ s a -> s{_bbrevarOutputFileSymlinks = a})
      . _Default
      . _Coerce

-- | The output directories of the action. For each output directory
-- requested in the \`output_directories\` or \`output_paths\` field of the
-- Action, if the corresponding directory existed after the action
-- completed, a single entry will be present in the output list, which will
-- contain the digest of a Tree message containing the directory tree, and
-- the path equal exactly to the corresponding Action output_directories
-- member. As an example, suppose the Action had an output directory
-- \`a\/b\/dir\` and the execution produced the following contents in
-- \`a\/b\/dir\`: a file named \`bar\` and a directory named \`foo\` with
-- an executable file named \`baz\`. Then, output_directory will contain
-- (hashes shortened for readability): \`\`\`json \/\/ OutputDirectory
-- proto: { path: \"a\/b\/dir\" tree_digest: { hash: \"4a73bc9d03...\",
-- size: 55 } } \/\/ Tree proto with hash \"4a73bc9d03...\" and size 55: {
-- root: { files: [ { name: \"bar\", digest: { hash: \"4a73bc9d03...\",
-- size: 65534 } } ], directories: [ { name: \"foo\", digest: { hash:
-- \"4cf2eda940...\", size: 43 } } ] } children : { \/\/ (Directory proto
-- with hash \"4cf2eda940...\" and size 43) files: [ { name: \"baz\",
-- digest: { hash: \"b2c941073e...\", size: 1294, }, is_executable: true }
-- ] } } \`\`\` If an output of the same name as listed in \`output_files\`
-- of the Command was found in \`output_directories\`, but was not a
-- directory, the server will return a FAILED_PRECONDITION.
bbrevarOutputDirectories :: Lens' BuildBazelRemoteExecutionV2ActionResult [BuildBazelRemoteExecutionV2OutputDirectory]
bbrevarOutputDirectories
  = lens _bbrevarOutputDirectories
      (\ s a -> s{_bbrevarOutputDirectories = a})
      . _Default
      . _Coerce

-- | New in v2.1: this field will only be populated if the command
-- \`output_paths\` field was used, and not the pre v2.1 \`output_files\`
-- or \`output_directories\` fields. The output paths of the action that
-- are symbolic links to other paths. Those may be links to other outputs,
-- or inputs, or even absolute paths outside of the working directory, if
-- the server supports SymlinkAbsolutePathStrategy.ALLOWED. A single entry
-- for each output requested in \`output_paths\` field of the Action, if
-- the corresponding path existed after the action completed and was a
-- symbolic link. If the action does not produce a requested output, then
-- that output will be omitted from the list. The server is free to arrange
-- the output list as desired; clients MUST NOT assume that the output list
-- is sorted.
bbrevarOutputSymlinks :: Lens' BuildBazelRemoteExecutionV2ActionResult [BuildBazelRemoteExecutionV2OutputSymlink]
bbrevarOutputSymlinks
  = lens _bbrevarOutputSymlinks
      (\ s a -> s{_bbrevarOutputSymlinks = a})
      . _Default
      . _Coerce

-- | The output files of the action. For each output file requested in the
-- \`output_files\` or \`output_paths\` field of the Action, if the
-- corresponding file existed after the action completed, a single entry
-- will be present either in this field, or the \`output_file_symlinks\`
-- field if the file was a symbolic link to another file
-- (\`output_symlinks\` field after v2.1). If an output listed in
-- \`output_files\` was found, but was a directory rather than a regular
-- file, the server will return a FAILED_PRECONDITION. If the action does
-- not produce the requested output, then that output will be omitted from
-- the list. The server is free to arrange the output list as desired;
-- clients MUST NOT assume that the output list is sorted.
bbrevarOutputFiles :: Lens' BuildBazelRemoteExecutionV2ActionResult [BuildBazelRemoteExecutionV2OutputFile]
bbrevarOutputFiles
  = lens _bbrevarOutputFiles
      (\ s a -> s{_bbrevarOutputFiles = a})
      . _Default
      . _Coerce

-- | The standard error buffer of the action. The server SHOULD NOT inline
-- stderr unless requested by the client in the GetActionResultRequest
-- message. The server MAY omit inlining, even if requested, and MUST do so
-- if inlining would cause the response to exceed message size limits.
bbrevarStderrRaw :: Lens' BuildBazelRemoteExecutionV2ActionResult (Maybe ByteString)
bbrevarStderrRaw
  = lens _bbrevarStderrRaw
      (\ s a -> s{_bbrevarStderrRaw = a})
      . mapping _Bytes

-- | The exit code of the command.
bbrevarExitCode :: Lens' BuildBazelRemoteExecutionV2ActionResult (Maybe Int32)
bbrevarExitCode
  = lens _bbrevarExitCode
      (\ s a -> s{_bbrevarExitCode = a})
      . mapping _Coerce

-- | The digest for a blob containing the standard output of the action,
-- which can be retrieved from the ContentAddressableStorage.
bbrevarStdoutDigest :: Lens' BuildBazelRemoteExecutionV2ActionResult (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevarStdoutDigest
  = lens _bbrevarStdoutDigest
      (\ s a -> s{_bbrevarStdoutDigest = a})

-- | The digest for a blob containing the standard error of the action, which
-- can be retrieved from the ContentAddressableStorage.
bbrevarStderrDigest :: Lens' BuildBazelRemoteExecutionV2ActionResult (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevarStderrDigest
  = lens _bbrevarStderrDigest
      (\ s a -> s{_bbrevarStderrDigest = a})

-- | The standard output buffer of the action. The server SHOULD NOT inline
-- stdout unless requested by the client in the GetActionResultRequest
-- message. The server MAY omit inlining, even if requested, and MUST do so
-- if inlining would cause the response to exceed message size limits.
bbrevarStdoutRaw :: Lens' BuildBazelRemoteExecutionV2ActionResult (Maybe ByteString)
bbrevarStdoutRaw
  = lens _bbrevarStdoutRaw
      (\ s a -> s{_bbrevarStdoutRaw = a})
      . mapping _Bytes

instance FromJSON
           BuildBazelRemoteExecutionV2ActionResult
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ActionResult"
              (\ o ->
                 BuildBazelRemoteExecutionV2ActionResult' <$>
                   (o .:? "executionMetadata") <*>
                     (o .:? "outputDirectorySymlinks" .!= mempty)
                     <*> (o .:? "outputFileSymlinks" .!= mempty)
                     <*> (o .:? "outputDirectories" .!= mempty)
                     <*> (o .:? "outputSymlinks" .!= mempty)
                     <*> (o .:? "outputFiles" .!= mempty)
                     <*> (o .:? "stderrRaw")
                     <*> (o .:? "exitCode")
                     <*> (o .:? "stdoutDigest")
                     <*> (o .:? "stderrDigest")
                     <*> (o .:? "stdoutRaw"))

instance ToJSON
           BuildBazelRemoteExecutionV2ActionResult
         where
        toJSON BuildBazelRemoteExecutionV2ActionResult'{..}
          = object
              (catMaybes
                 [("executionMetadata" .=) <$>
                    _bbrevarExecutionMetadata,
                  ("outputDirectorySymlinks" .=) <$>
                    _bbrevarOutputDirectorySymlinks,
                  ("outputFileSymlinks" .=) <$>
                    _bbrevarOutputFileSymlinks,
                  ("outputDirectories" .=) <$>
                    _bbrevarOutputDirectories,
                  ("outputSymlinks" .=) <$> _bbrevarOutputSymlinks,
                  ("outputFiles" .=) <$> _bbrevarOutputFiles,
                  ("stderrRaw" .=) <$> _bbrevarStderrRaw,
                  ("exitCode" .=) <$> _bbrevarExitCode,
                  ("stdoutDigest" .=) <$> _bbrevarStdoutDigest,
                  ("stderrDigest" .=) <$> _bbrevarStderrDigest,
                  ("stdoutRaw" .=) <$> _bbrevarStdoutRaw])

-- | The request used for DeleteWorkerPool.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest'
    { _gdravdwprName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravdwprName'
googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest'
    {_gdravdwprName = Nothing}


-- | Name of the worker pool to delete. Format:
-- \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\/workerpools\/[POOL_ID]\`.
gdravdwprName :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest (Maybe Text)
gdravdwprName
  = lens _gdravdwprName
      (\ s a -> s{_gdravdwprName = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest'
                   <$> (o .:? "name"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest'{..}
          = object (catMaybes [("name" .=) <$> _gdravdwprName])

-- | An environment variable required by this task.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable'
    { _gdrvctievValue :: !(Maybe Text)
    , _gdrvctievName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvctievValue'
--
-- * 'gdrvctievName'
googleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    :: GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
googleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable'
    {_gdrvctievValue = Nothing, _gdrvctievName = Nothing}


-- | The envvar value.
gdrvctievValue :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable (Maybe Text)
gdrvctievValue
  = lens _gdrvctievValue
      (\ s a -> s{_gdrvctievValue = a})

-- | The envvar name.
gdrvctievName :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable (Maybe Text)
gdrvctievName
  = lens _gdrvctievName
      (\ s a -> s{_gdrvctievName = a})

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable'
                   <$> (o .:? "value") <*> (o .:? "name"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gdrvctievValue,
                  ("name" .=) <$> _gdrvctievName])

--
-- /See:/ 'googleDevtoolsRemotebuildbotResourceUsageStat' smart constructor.
data GoogleDevtoolsRemotebuildbotResourceUsageStat =
  GoogleDevtoolsRemotebuildbotResourceUsageStat'
    { _gdrrusUsed :: !(Maybe (Textual Word64))
    , _gdrrusTotal :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildbotResourceUsageStat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrusUsed'
--
-- * 'gdrrusTotal'
googleDevtoolsRemotebuildbotResourceUsageStat
    :: GoogleDevtoolsRemotebuildbotResourceUsageStat
googleDevtoolsRemotebuildbotResourceUsageStat =
  GoogleDevtoolsRemotebuildbotResourceUsageStat'
    {_gdrrusUsed = Nothing, _gdrrusTotal = Nothing}


gdrrusUsed :: Lens' GoogleDevtoolsRemotebuildbotResourceUsageStat (Maybe Word64)
gdrrusUsed
  = lens _gdrrusUsed (\ s a -> s{_gdrrusUsed = a}) .
      mapping _Coerce

gdrrusTotal :: Lens' GoogleDevtoolsRemotebuildbotResourceUsageStat (Maybe Word64)
gdrrusTotal
  = lens _gdrrusTotal (\ s a -> s{_gdrrusTotal = a}) .
      mapping _Coerce

instance FromJSON
           GoogleDevtoolsRemotebuildbotResourceUsageStat
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildbotResourceUsageStat"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotResourceUsageStat' <$>
                   (o .:? "used") <*> (o .:? "total"))

instance ToJSON
           GoogleDevtoolsRemotebuildbotResourceUsageStat
         where
        toJSON
          GoogleDevtoolsRemotebuildbotResourceUsageStat'{..}
          = object
              (catMaybes
                 [("used" .=) <$> _gdrrusUsed,
                  ("total" .=) <$> _gdrrusTotal])

-- | The full version of a given tool.
--
-- /See:/ 'buildBazelSemverSemVer' smart constructor.
data BuildBazelSemverSemVer =
  BuildBazelSemverSemVer'
    { _bbssvMinor :: !(Maybe (Textual Int32))
    , _bbssvMajor :: !(Maybe (Textual Int32))
    , _bbssvPatch :: !(Maybe (Textual Int32))
    , _bbssvPrerelease :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelSemverSemVer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbssvMinor'
--
-- * 'bbssvMajor'
--
-- * 'bbssvPatch'
--
-- * 'bbssvPrerelease'
buildBazelSemverSemVer
    :: BuildBazelSemverSemVer
buildBazelSemverSemVer =
  BuildBazelSemverSemVer'
    { _bbssvMinor = Nothing
    , _bbssvMajor = Nothing
    , _bbssvPatch = Nothing
    , _bbssvPrerelease = Nothing
    }


-- | The minor version, e.g. 2 for 10.2.3.
bbssvMinor :: Lens' BuildBazelSemverSemVer (Maybe Int32)
bbssvMinor
  = lens _bbssvMinor (\ s a -> s{_bbssvMinor = a}) .
      mapping _Coerce

-- | The major version, e.g 10 for 10.2.3.
bbssvMajor :: Lens' BuildBazelSemverSemVer (Maybe Int32)
bbssvMajor
  = lens _bbssvMajor (\ s a -> s{_bbssvMajor = a}) .
      mapping _Coerce

-- | The patch version, e.g 3 for 10.2.3.
bbssvPatch :: Lens' BuildBazelSemverSemVer (Maybe Int32)
bbssvPatch
  = lens _bbssvPatch (\ s a -> s{_bbssvPatch = a}) .
      mapping _Coerce

-- | The pre-release version. Either this field or major\/minor\/patch fields
-- must be filled. They are mutually exclusive. Pre-release versions are
-- assumed to be earlier than any released versions.
bbssvPrerelease :: Lens' BuildBazelSemverSemVer (Maybe Text)
bbssvPrerelease
  = lens _bbssvPrerelease
      (\ s a -> s{_bbssvPrerelease = a})

instance FromJSON BuildBazelSemverSemVer where
        parseJSON
          = withObject "BuildBazelSemverSemVer"
              (\ o ->
                 BuildBazelSemverSemVer' <$>
                   (o .:? "minor") <*> (o .:? "major") <*>
                     (o .:? "patch")
                     <*> (o .:? "prerelease"))

instance ToJSON BuildBazelSemverSemVer where
        toJSON BuildBazelSemverSemVer'{..}
          = object
              (catMaybes
                 [("minor" .=) <$> _bbssvMinor,
                  ("major" .=) <$> _bbssvMajor,
                  ("patch" .=) <$> _bbssvPatch,
                  ("prerelease" .=) <$> _bbssvPrerelease])

-- | DEPRECATED - use CommandResult instead. Can be used as part of
-- CompleteRequest.metadata, or are part of a more sophisticated message.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandOverhead' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandOverhead =
  GoogleDevtoolsRemoteworkersV1test2CommandOverhead'
    { _gdrvcoOverhead :: !(Maybe GDuration)
    , _gdrvcoDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandOverhead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvcoOverhead'
--
-- * 'gdrvcoDuration'
googleDevtoolsRemoteworkersV1test2CommandOverhead
    :: GoogleDevtoolsRemoteworkersV1test2CommandOverhead
googleDevtoolsRemoteworkersV1test2CommandOverhead =
  GoogleDevtoolsRemoteworkersV1test2CommandOverhead'
    {_gdrvcoOverhead = Nothing, _gdrvcoDuration = Nothing}


-- | The amount of time *not* spent executing the command (ie
-- uploading\/downloading files).
gdrvcoOverhead :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandOverhead (Maybe Scientific)
gdrvcoOverhead
  = lens _gdrvcoOverhead
      (\ s a -> s{_gdrvcoOverhead = a})
      . mapping _GDuration

-- | The elapsed time between calling Accept and Complete. The server will
-- also have its own idea of what this should be, but this excludes the
-- overhead of the RPCs and the bot response time.
gdrvcoDuration :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandOverhead (Maybe Scientific)
gdrvcoDuration
  = lens _gdrvcoDuration
      (\ s a -> s{_gdrvcoDuration = a})
      . mapping _GDuration

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandOverhead
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandOverhead"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandOverhead'
                   <$> (o .:? "overhead") <*> (o .:? "duration"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandOverhead
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandOverhead'{..}
          = object
              (catMaybes
                 [("overhead" .=) <$> _gdrvcoOverhead,
                  ("duration" .=) <$> _gdrvcoDuration])

-- | A \`LogFile\` is a log stored in the CAS.
--
-- /See:/ 'buildBazelRemoteExecutionV2LogFile' smart constructor.
data BuildBazelRemoteExecutionV2LogFile =
  BuildBazelRemoteExecutionV2LogFile'
    { _bbrevlfHumanReadable :: !(Maybe Bool)
    , _bbrevlfDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2LogFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevlfHumanReadable'
--
-- * 'bbrevlfDigest'
buildBazelRemoteExecutionV2LogFile
    :: BuildBazelRemoteExecutionV2LogFile
buildBazelRemoteExecutionV2LogFile =
  BuildBazelRemoteExecutionV2LogFile'
    {_bbrevlfHumanReadable = Nothing, _bbrevlfDigest = Nothing}


-- | This is a hint as to the purpose of the log, and is set to true if the
-- log is human-readable text that can be usefully displayed to a user, and
-- false otherwise. For instance, if a command-line client wishes to print
-- the server logs to the terminal for a failed action, this allows it to
-- avoid displaying a binary file.
bbrevlfHumanReadable :: Lens' BuildBazelRemoteExecutionV2LogFile (Maybe Bool)
bbrevlfHumanReadable
  = lens _bbrevlfHumanReadable
      (\ s a -> s{_bbrevlfHumanReadable = a})

-- | The digest of the log contents.
bbrevlfDigest :: Lens' BuildBazelRemoteExecutionV2LogFile (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevlfDigest
  = lens _bbrevlfDigest
      (\ s a -> s{_bbrevlfDigest = a})

instance FromJSON BuildBazelRemoteExecutionV2LogFile
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2LogFile"
              (\ o ->
                 BuildBazelRemoteExecutionV2LogFile' <$>
                   (o .:? "humanReadable") <*> (o .:? "digest"))

instance ToJSON BuildBazelRemoteExecutionV2LogFile
         where
        toJSON BuildBazelRemoteExecutionV2LogFile'{..}
          = object
              (catMaybes
                 [("humanReadable" .=) <$> _bbrevlfHumanReadable,
                  ("digest" .=) <$> _bbrevlfDigest])

-- | Autoscale defines the autoscaling policy of a worker pool.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale'
    { _gdravaMaxSize :: !(Maybe (Textual Int64))
    , _gdravaMinSize :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravaMaxSize'
--
-- * 'gdravaMinSize'
googleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
googleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale'
    {_gdravaMaxSize = Nothing, _gdravaMinSize = Nothing}


-- | The maximal number of workers. Must be equal to or greater than
-- min_size.
gdravaMaxSize :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale (Maybe Int64)
gdravaMaxSize
  = lens _gdravaMaxSize
      (\ s a -> s{_gdravaMaxSize = a})
      . mapping _Coerce

-- | The minimal number of workers. Must be greater than 0.
gdravaMinSize :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale (Maybe Int64)
gdravaMinSize
  = lens _gdravaMinSize
      (\ s a -> s{_gdravaMinSize = a})
      . mapping _Coerce

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale'
                   <$> (o .:? "maxSize") <*> (o .:? "minSize"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale'{..}
          = object
              (catMaybes
                 [("maxSize" .=) <$> _gdravaMaxSize,
                  ("minSize" .=) <$> _gdravaMinSize])

--
-- /See:/ 'googleDevtoolsRemotebuildbotResourceUsageIOStats' smart constructor.
data GoogleDevtoolsRemotebuildbotResourceUsageIOStats =
  GoogleDevtoolsRemotebuildbotResourceUsageIOStats'
    { _gdrruioWriteBytesCount :: !(Maybe (Textual Word64))
    , _gdrruioReadBytesCount :: !(Maybe (Textual Word64))
    , _gdrruioWriteCount :: !(Maybe (Textual Word64))
    , _gdrruioReadTimeMs :: !(Maybe (Textual Word64))
    , _gdrruioReadCount :: !(Maybe (Textual Word64))
    , _gdrruioWriteTimeMs :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildbotResourceUsageIOStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrruioWriteBytesCount'
--
-- * 'gdrruioReadBytesCount'
--
-- * 'gdrruioWriteCount'
--
-- * 'gdrruioReadTimeMs'
--
-- * 'gdrruioReadCount'
--
-- * 'gdrruioWriteTimeMs'
googleDevtoolsRemotebuildbotResourceUsageIOStats
    :: GoogleDevtoolsRemotebuildbotResourceUsageIOStats
googleDevtoolsRemotebuildbotResourceUsageIOStats =
  GoogleDevtoolsRemotebuildbotResourceUsageIOStats'
    { _gdrruioWriteBytesCount = Nothing
    , _gdrruioReadBytesCount = Nothing
    , _gdrruioWriteCount = Nothing
    , _gdrruioReadTimeMs = Nothing
    , _gdrruioReadCount = Nothing
    , _gdrruioWriteTimeMs = Nothing
    }


gdrruioWriteBytesCount :: Lens' GoogleDevtoolsRemotebuildbotResourceUsageIOStats (Maybe Word64)
gdrruioWriteBytesCount
  = lens _gdrruioWriteBytesCount
      (\ s a -> s{_gdrruioWriteBytesCount = a})
      . mapping _Coerce

gdrruioReadBytesCount :: Lens' GoogleDevtoolsRemotebuildbotResourceUsageIOStats (Maybe Word64)
gdrruioReadBytesCount
  = lens _gdrruioReadBytesCount
      (\ s a -> s{_gdrruioReadBytesCount = a})
      . mapping _Coerce

gdrruioWriteCount :: Lens' GoogleDevtoolsRemotebuildbotResourceUsageIOStats (Maybe Word64)
gdrruioWriteCount
  = lens _gdrruioWriteCount
      (\ s a -> s{_gdrruioWriteCount = a})
      . mapping _Coerce

gdrruioReadTimeMs :: Lens' GoogleDevtoolsRemotebuildbotResourceUsageIOStats (Maybe Word64)
gdrruioReadTimeMs
  = lens _gdrruioReadTimeMs
      (\ s a -> s{_gdrruioReadTimeMs = a})
      . mapping _Coerce

gdrruioReadCount :: Lens' GoogleDevtoolsRemotebuildbotResourceUsageIOStats (Maybe Word64)
gdrruioReadCount
  = lens _gdrruioReadCount
      (\ s a -> s{_gdrruioReadCount = a})
      . mapping _Coerce

gdrruioWriteTimeMs :: Lens' GoogleDevtoolsRemotebuildbotResourceUsageIOStats (Maybe Word64)
gdrruioWriteTimeMs
  = lens _gdrruioWriteTimeMs
      (\ s a -> s{_gdrruioWriteTimeMs = a})
      . mapping _Coerce

instance FromJSON
           GoogleDevtoolsRemotebuildbotResourceUsageIOStats
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildbotResourceUsageIOStats"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotResourceUsageIOStats' <$>
                   (o .:? "writeBytesCount") <*>
                     (o .:? "readBytesCount")
                     <*> (o .:? "writeCount")
                     <*> (o .:? "readTimeMs")
                     <*> (o .:? "readCount")
                     <*> (o .:? "writeTimeMs"))

instance ToJSON
           GoogleDevtoolsRemotebuildbotResourceUsageIOStats
         where
        toJSON
          GoogleDevtoolsRemotebuildbotResourceUsageIOStats'{..}
          = object
              (catMaybes
                 [("writeBytesCount" .=) <$> _gdrruioWriteBytesCount,
                  ("readBytesCount" .=) <$> _gdrruioReadBytesCount,
                  ("writeCount" .=) <$> _gdrruioWriteCount,
                  ("readTimeMs" .=) <$> _gdrruioReadTimeMs,
                  ("readCount" .=) <$> _gdrruioReadCount,
                  ("writeTimeMs" .=) <$> _gdrruioWriteTimeMs])

-- | The request used for \`CreateWorkerPool\`.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest'
    { _gdravcwprParent :: !(Maybe Text)
    , _gdravcwprPoolId :: !(Maybe Text)
    , _gdravcwprWorkerPool :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravcwprParent'
--
-- * 'gdravcwprPoolId'
--
-- * 'gdravcwprWorkerPool'
googleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest'
    { _gdravcwprParent = Nothing
    , _gdravcwprPoolId = Nothing
    , _gdravcwprWorkerPool = Nothing
    }


-- | Resource name of the instance in which to create the new worker pool.
-- Format: \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\`.
gdravcwprParent :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest (Maybe Text)
gdravcwprParent
  = lens _gdravcwprParent
      (\ s a -> s{_gdravcwprParent = a})

-- | ID of the created worker pool. A valid pool ID must: be 6-50 characters
-- long, contain only lowercase letters, digits, hyphens and underscores,
-- start with a lowercase letter, and end with a lowercase letter or a
-- digit.
gdravcwprPoolId :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest (Maybe Text)
gdravcwprPoolId
  = lens _gdravcwprPoolId
      (\ s a -> s{_gdravcwprPoolId = a})

-- | Specifies the worker pool to create. The name in the worker pool, if
-- specified, is ignored.
gdravcwprWorkerPool :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool)
gdravcwprWorkerPool
  = lens _gdravcwprWorkerPool
      (\ s a -> s{_gdravcwprWorkerPool = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest'
                   <$>
                   (o .:? "parent") <*> (o .:? "poolId") <*>
                     (o .:? "workerPool"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gdravcwprParent,
                  ("poolId" .=) <$> _gdravcwprPoolId,
                  ("workerPool" .=) <$> _gdravcwprWorkerPool])

-- | A response message for ContentAddressableStorage.FindMissingBlobs.
--
-- /See:/ 'buildBazelRemoteExecutionV2FindMissingBlobsResponse' smart constructor.
newtype BuildBazelRemoteExecutionV2FindMissingBlobsResponse =
  BuildBazelRemoteExecutionV2FindMissingBlobsResponse'
    { _bbrevfmbrMissingBlobDigests :: Maybe [BuildBazelRemoteExecutionV2Digest]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2FindMissingBlobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevfmbrMissingBlobDigests'
buildBazelRemoteExecutionV2FindMissingBlobsResponse
    :: BuildBazelRemoteExecutionV2FindMissingBlobsResponse
buildBazelRemoteExecutionV2FindMissingBlobsResponse =
  BuildBazelRemoteExecutionV2FindMissingBlobsResponse'
    {_bbrevfmbrMissingBlobDigests = Nothing}


-- | A list of the blobs requested *not* present in the storage.
bbrevfmbrMissingBlobDigests :: Lens' BuildBazelRemoteExecutionV2FindMissingBlobsResponse [BuildBazelRemoteExecutionV2Digest]
bbrevfmbrMissingBlobDigests
  = lens _bbrevfmbrMissingBlobDigests
      (\ s a -> s{_bbrevfmbrMissingBlobDigests = a})
      . _Default
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2FindMissingBlobsResponse
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2FindMissingBlobsResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2FindMissingBlobsResponse'
                   <$> (o .:? "missingBlobDigests" .!= mempty))

instance ToJSON
           BuildBazelRemoteExecutionV2FindMissingBlobsResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2FindMissingBlobsResponse'{..}
          = object
              (catMaybes
                 [("missingBlobDigests" .=) <$>
                    _bbrevfmbrMissingBlobDigests])

-- | The contents of a directory. Similar to the equivalent message in the
-- Remote Execution API.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2Directory' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2Directory =
  GoogleDevtoolsRemoteworkersV1test2Directory'
    { _gdrvdDirectories :: !(Maybe [GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata])
    , _gdrvdFiles :: !(Maybe [GoogleDevtoolsRemoteworkersV1test2FileMetadata])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2Directory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvdDirectories'
--
-- * 'gdrvdFiles'
googleDevtoolsRemoteworkersV1test2Directory
    :: GoogleDevtoolsRemoteworkersV1test2Directory
googleDevtoolsRemoteworkersV1test2Directory =
  GoogleDevtoolsRemoteworkersV1test2Directory'
    {_gdrvdDirectories = Nothing, _gdrvdFiles = Nothing}


-- | Any subdirectories
gdrvdDirectories :: Lens' GoogleDevtoolsRemoteworkersV1test2Directory [GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata]
gdrvdDirectories
  = lens _gdrvdDirectories
      (\ s a -> s{_gdrvdDirectories = a})
      . _Default
      . _Coerce

-- | The files in this directory
gdrvdFiles :: Lens' GoogleDevtoolsRemoteworkersV1test2Directory [GoogleDevtoolsRemoteworkersV1test2FileMetadata]
gdrvdFiles
  = lens _gdrvdFiles (\ s a -> s{_gdrvdFiles = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2Directory
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2Directory"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2Directory' <$>
                   (o .:? "directories" .!= mempty) <*>
                     (o .:? "files" .!= mempty))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2Directory
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2Directory'{..}
          = object
              (catMaybes
                 [("directories" .=) <$> _gdrvdDirectories,
                  ("files" .=) <$> _gdrvdFiles])

-- | An \`ExecutionPolicy\` can be used to control the scheduling of the
-- action.
--
-- /See:/ 'buildBazelRemoteExecutionV2ExecutionPolicy' smart constructor.
newtype BuildBazelRemoteExecutionV2ExecutionPolicy =
  BuildBazelRemoteExecutionV2ExecutionPolicy'
    { _bbrevepPriority :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecutionPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevepPriority'
buildBazelRemoteExecutionV2ExecutionPolicy
    :: BuildBazelRemoteExecutionV2ExecutionPolicy
buildBazelRemoteExecutionV2ExecutionPolicy =
  BuildBazelRemoteExecutionV2ExecutionPolicy' {_bbrevepPriority = Nothing}


-- | The priority (relative importance) of this action. Generally, a lower
-- value means that the action should be run sooner than actions having a
-- greater priority value, but the interpretation of a given value is
-- server- dependent. A priority of 0 means the *default* priority.
-- Priorities may be positive or negative, and such actions should run
-- later or sooner than actions having the default priority, respectively.
-- The particular semantics of this field is up to the server. In
-- particular, every server will have their own supported range of
-- priorities, and will decide how these map into scheduling policy.
bbrevepPriority :: Lens' BuildBazelRemoteExecutionV2ExecutionPolicy (Maybe Int32)
bbrevepPriority
  = lens _bbrevepPriority
      (\ s a -> s{_bbrevepPriority = a})
      . mapping _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2ExecutionPolicy
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ExecutionPolicy"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecutionPolicy' <$>
                   (o .:? "priority"))

instance ToJSON
           BuildBazelRemoteExecutionV2ExecutionPolicy
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecutionPolicy'{..}
          = object
              (catMaybes [("priority" .=) <$> _bbrevepPriority])

-- | Describes the server\/instance capabilities for updating the action
-- cache.
--
-- /See:/ 'buildBazelRemoteExecutionV2ActionCacheUpdateCapabilities' smart constructor.
newtype BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities =
  BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities'
    { _bbrevacucUpdateEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevacucUpdateEnabled'
buildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    :: BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
buildBazelRemoteExecutionV2ActionCacheUpdateCapabilities =
  BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities'
    {_bbrevacucUpdateEnabled = Nothing}


bbrevacucUpdateEnabled :: Lens' BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities (Maybe Bool)
bbrevacucUpdateEnabled
  = lens _bbrevacucUpdateEnabled
      (\ s a -> s{_bbrevacucUpdateEnabled = a})

instance FromJSON
           BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities'
                   <$> (o .:? "updateEnabled"))

instance ToJSON
           BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities'{..}
          = object
              (catMaybes
                 [("updateEnabled" .=) <$> _bbrevacucUpdateEnabled])

--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandResultMetadataItem' smart constructor.
newtype GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem =
  GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem'
    { _gdrvcrmiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvcrmiAddtional'
googleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
    :: HashMap Text JSONValue -- ^ 'gdrvcrmiAddtional'
    -> GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
googleDevtoolsRemoteworkersV1test2CommandResultMetadataItem pGdrvcrmiAddtional_ =
  GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem'
    {_gdrvcrmiAddtional = _Coerce # pGdrvcrmiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
gdrvcrmiAddtional :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem (HashMap Text JSONValue)
gdrvcrmiAddtional
  = lens _gdrvcrmiAddtional
      (\ s a -> s{_gdrvcrmiAddtional = a})
      . _Coerce

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
         where
        toJSON = toJSON . _gdrvcrmiAddtional

-- | A request corresponding to a single blob that the client wants to
-- upload.
--
-- /See:/ 'buildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest' smart constructor.
data BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest'
    { _bbrevbubrrData :: !(Maybe Bytes)
    , _bbrevbubrrDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevbubrrData'
--
-- * 'bbrevbubrrDigest'
buildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    :: BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
buildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest'
    {_bbrevbubrrData = Nothing, _bbrevbubrrDigest = Nothing}


-- | The raw binary data.
bbrevbubrrData :: Lens' BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest (Maybe ByteString)
bbrevbubrrData
  = lens _bbrevbubrrData
      (\ s a -> s{_bbrevbubrrData = a})
      . mapping _Bytes

-- | The digest of the blob. This MUST be the digest of \`data\`.
bbrevbubrrDigest :: Lens' BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevbubrrDigest
  = lens _bbrevbubrrDigest
      (\ s a -> s{_bbrevbubrrDigest = a})

instance FromJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest'
                   <$> (o .:? "data") <*> (o .:? "digest"))

instance ToJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _bbrevbubrrData,
                  ("digest" .=) <$> _bbrevbubrrDigest])

--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse'
    { _gdravlwprWorkerPools :: Maybe [GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravlwprWorkerPools'
googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse'
    {_gdravlwprWorkerPools = Nothing}


-- | The list of worker pools in a given instance.
gdravlwprWorkerPools :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse [GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool]
gdravlwprWorkerPools
  = lens _gdravlwprWorkerPools
      (\ s a -> s{_gdravlwprWorkerPools = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse'
                   <$> (o .:? "workerPools" .!= mempty))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse'{..}
          = object
              (catMaybes
                 [("workerPools" .=) <$> _gdravlwprWorkerPools])

-- | All information about the execution of a command, suitable for providing
-- as the Bots interface\'s \`Lease.result\` field.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandResult' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandResult =
  GoogleDevtoolsRemoteworkersV1test2CommandResult'
    { _gdrvcrStatus :: !(Maybe GoogleRpcStatus)
    , _gdrvcrOverhead :: !(Maybe GDuration)
    , _gdrvcrOutputs :: !(Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
    , _gdrvcrExitCode :: !(Maybe (Textual Int32))
    , _gdrvcrMetadata :: !(Maybe [GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem])
    , _gdrvcrDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvcrStatus'
--
-- * 'gdrvcrOverhead'
--
-- * 'gdrvcrOutputs'
--
-- * 'gdrvcrExitCode'
--
-- * 'gdrvcrMetadata'
--
-- * 'gdrvcrDuration'
googleDevtoolsRemoteworkersV1test2CommandResult
    :: GoogleDevtoolsRemoteworkersV1test2CommandResult
googleDevtoolsRemoteworkersV1test2CommandResult =
  GoogleDevtoolsRemoteworkersV1test2CommandResult'
    { _gdrvcrStatus = Nothing
    , _gdrvcrOverhead = Nothing
    , _gdrvcrOutputs = Nothing
    , _gdrvcrExitCode = Nothing
    , _gdrvcrMetadata = Nothing
    , _gdrvcrDuration = Nothing
    }


-- | An overall status for the command. For example, if the command timed
-- out, this might have a code of DEADLINE_EXCEEDED; if it was killed by
-- the OS for memory exhaustion, it might have a code of
-- RESOURCE_EXHAUSTED.
gdrvcrStatus :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandResult (Maybe GoogleRpcStatus)
gdrvcrStatus
  = lens _gdrvcrStatus (\ s a -> s{_gdrvcrStatus = a})

-- | The amount of time *not* spent executing the command (ie
-- uploading\/downloading files).
gdrvcrOverhead :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandResult (Maybe Scientific)
gdrvcrOverhead
  = lens _gdrvcrOverhead
      (\ s a -> s{_gdrvcrOverhead = a})
      . mapping _GDuration

-- | The output files. The blob referenced by the digest should contain one
-- of the following (implementation-dependent): * A marshalled
-- DirectoryMetadata of the returned filesystem * A LUCI-style .isolated
-- file
gdrvcrOutputs :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandResult (Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
gdrvcrOutputs
  = lens _gdrvcrOutputs
      (\ s a -> s{_gdrvcrOutputs = a})

-- | The exit code of the process. An exit code of \"0\" should only be
-- trusted if \`status\` has a code of OK (otherwise it may simply be
-- unset).
gdrvcrExitCode :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandResult (Maybe Int32)
gdrvcrExitCode
  = lens _gdrvcrExitCode
      (\ s a -> s{_gdrvcrExitCode = a})
      . mapping _Coerce

-- | Implementation-dependent metadata about the task. Both servers and bots
-- may define messages which can be encoded here; bots are free to provide
-- metadata in multiple formats, and servers are free to choose one or more
-- of the values to process and ignore others. In particular, it is *not*
-- considered an error for the bot to provide the server with a field that
-- it doesn\'t know about.
gdrvcrMetadata :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandResult [GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem]
gdrvcrMetadata
  = lens _gdrvcrMetadata
      (\ s a -> s{_gdrvcrMetadata = a})
      . _Default
      . _Coerce

-- | The elapsed time between calling Accept and Complete. The server will
-- also have its own idea of what this should be, but this excludes the
-- overhead of the RPCs and the bot response time.
gdrvcrDuration :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandResult (Maybe Scientific)
gdrvcrDuration
  = lens _gdrvcrDuration
      (\ s a -> s{_gdrvcrDuration = a})
      . mapping _GDuration

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandResult
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandResult"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandResult' <$>
                   (o .:? "status") <*> (o .:? "overhead") <*>
                     (o .:? "outputs")
                     <*> (o .:? "exitCode")
                     <*> (o .:? "metadata" .!= mempty)
                     <*> (o .:? "duration"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandResult
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandResult'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _gdrvcrStatus,
                  ("overhead" .=) <$> _gdrvcrOverhead,
                  ("outputs" .=) <$> _gdrvcrOutputs,
                  ("exitCode" .=) <$> _gdrvcrExitCode,
                  ("metadata" .=) <$> _gdrvcrMetadata,
                  ("duration" .=) <$> _gdrvcrDuration])

-- | Defines whether a feature can be used or what values are accepted.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature'
    { _gdravfpfPolicy :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy)
    , _gdravfpfAllowedValues :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravfpfPolicy'
--
-- * 'gdravfpfAllowedValues'
googleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
googleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature'
    {_gdravfpfPolicy = Nothing, _gdravfpfAllowedValues = Nothing}


-- | The policy of the feature.
gdravfpfPolicy :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy)
gdravfpfPolicy
  = lens _gdravfpfPolicy
      (\ s a -> s{_gdravfpfPolicy = a})

-- | A list of acceptable values. Only effective when the policy is
-- \`RESTRICTED\`.
gdravfpfAllowedValues :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature [Text]
gdravfpfAllowedValues
  = lens _gdravfpfAllowedValues
      (\ s a -> s{_gdravfpfAllowedValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature'
                   <$>
                   (o .:? "policy") <*>
                     (o .:? "allowedValues" .!= mempty))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature'{..}
          = object
              (catMaybes
                 [("policy" .=) <$> _gdravfpfPolicy,
                  ("allowedValues" .=) <$> _gdravfpfAllowedValues])

-- | AcceleratorConfig defines the accelerator cards to attach to the VM.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig'
    { _gdravacAcceleratorCount :: !(Maybe (Textual Int64))
    , _gdravacAcceleratorType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravacAcceleratorCount'
--
-- * 'gdravacAcceleratorType'
googleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
googleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig'
    {_gdravacAcceleratorCount = Nothing, _gdravacAcceleratorType = Nothing}


-- | The number of guest accelerator cards exposed to each VM.
gdravacAcceleratorCount :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig (Maybe Int64)
gdravacAcceleratorCount
  = lens _gdravacAcceleratorCount
      (\ s a -> s{_gdravacAcceleratorCount = a})
      . mapping _Coerce

-- | The type of accelerator to attach to each VM, e.g. \"nvidia-tesla-k80\"
-- for nVidia Tesla K80.
gdravacAcceleratorType :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig (Maybe Text)
gdravacAcceleratorType
  = lens _gdravacAcceleratorType
      (\ s a -> s{_gdravacAcceleratorType = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig'
                   <$>
                   (o .:? "acceleratorCount") <*>
                     (o .:? "acceleratorType"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig'{..}
          = object
              (catMaybes
                 [("acceleratorCount" .=) <$>
                    _gdravacAcceleratorCount,
                  ("acceleratorType" .=) <$> _gdravacAcceleratorType])

-- | AdminTemp is a prelimiary set of administration tasks. It\'s called
-- \"Temp\" because we do not yet know the best way to represent admin
-- tasks; it\'s possible that this will be entirely replaced in later
-- versions of this API. If this message proves to be sufficient, it will
-- be renamed in the alpha or beta release of this API. This message
-- (suitably marshalled into a protobuf.Any) can be used as the
-- inline_assignment field in a lease; the lease assignment field should
-- simply be \`\"admin\"\` in these cases. This message is heavily based on
-- Swarming administration tasks from the LUCI project
-- (http:\/\/github.com\/luci\/luci-py\/appengine\/swarming).
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2AdminTemp' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2AdminTemp =
  GoogleDevtoolsRemoteworkersV1test2AdminTemp'
    { _gdrvatCommand :: !(Maybe GoogleDevtoolsRemoteworkersV1test2AdminTempCommand)
    , _gdrvatArg :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2AdminTemp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvatCommand'
--
-- * 'gdrvatArg'
googleDevtoolsRemoteworkersV1test2AdminTemp
    :: GoogleDevtoolsRemoteworkersV1test2AdminTemp
googleDevtoolsRemoteworkersV1test2AdminTemp =
  GoogleDevtoolsRemoteworkersV1test2AdminTemp'
    {_gdrvatCommand = Nothing, _gdrvatArg = Nothing}


-- | The admin action; see \`Command\` for legal values.
gdrvatCommand :: Lens' GoogleDevtoolsRemoteworkersV1test2AdminTemp (Maybe GoogleDevtoolsRemoteworkersV1test2AdminTempCommand)
gdrvatCommand
  = lens _gdrvatCommand
      (\ s a -> s{_gdrvatCommand = a})

-- | The argument to the admin action; see \`Command\` for semantics.
gdrvatArg :: Lens' GoogleDevtoolsRemoteworkersV1test2AdminTemp (Maybe Text)
gdrvatArg
  = lens _gdrvatArg (\ s a -> s{_gdrvatArg = a})

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2AdminTemp
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2AdminTemp"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2AdminTemp' <$>
                   (o .:? "command") <*> (o .:? "arg"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2AdminTemp
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2AdminTemp'{..}
          = object
              (catMaybes
                 [("command" .=) <$> _gdrvatCommand,
                  ("arg" .=) <$> _gdrvatArg])

-- | CommandDuration contains the various duration metrics tracked when a bot
-- performs a command.
--
-- /See:/ 'googleDevtoolsRemotebuildbotCommandDurations' smart constructor.
data GoogleDevtoolsRemotebuildbotCommandDurations =
  GoogleDevtoolsRemotebuildbotCommandDurations'
    { _gdrcdStdout :: !(Maybe GDuration)
    , _gdrcdCasRelease :: !(Maybe GDuration)
    , _gdrcdDockerPrep :: !(Maybe GDuration)
    , _gdrcdDockerPrepStartTime :: !(Maybe DateTime')
    , _gdrcdExecStartTime :: !(Maybe DateTime')
    , _gdrcdDownload :: !(Maybe GDuration)
    , _gdrcdOverall :: !(Maybe GDuration)
    , _gdrcdExecution :: !(Maybe GDuration)
    , _gdrcdIsoPrepDone :: !(Maybe DateTime')
    , _gdrcdCmWaitForAssignment :: !(Maybe GDuration)
    , _gdrcdUpload :: !(Maybe GDuration)
    , _gdrcdUploadStartTime :: !(Maybe DateTime')
    , _gdrcdDownloadStartTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildbotCommandDurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrcdStdout'
--
-- * 'gdrcdCasRelease'
--
-- * 'gdrcdDockerPrep'
--
-- * 'gdrcdDockerPrepStartTime'
--
-- * 'gdrcdExecStartTime'
--
-- * 'gdrcdDownload'
--
-- * 'gdrcdOverall'
--
-- * 'gdrcdExecution'
--
-- * 'gdrcdIsoPrepDone'
--
-- * 'gdrcdCmWaitForAssignment'
--
-- * 'gdrcdUpload'
--
-- * 'gdrcdUploadStartTime'
--
-- * 'gdrcdDownloadStartTime'
googleDevtoolsRemotebuildbotCommandDurations
    :: GoogleDevtoolsRemotebuildbotCommandDurations
googleDevtoolsRemotebuildbotCommandDurations =
  GoogleDevtoolsRemotebuildbotCommandDurations'
    { _gdrcdStdout = Nothing
    , _gdrcdCasRelease = Nothing
    , _gdrcdDockerPrep = Nothing
    , _gdrcdDockerPrepStartTime = Nothing
    , _gdrcdExecStartTime = Nothing
    , _gdrcdDownload = Nothing
    , _gdrcdOverall = Nothing
    , _gdrcdExecution = Nothing
    , _gdrcdIsoPrepDone = Nothing
    , _gdrcdCmWaitForAssignment = Nothing
    , _gdrcdUpload = Nothing
    , _gdrcdUploadStartTime = Nothing
    , _gdrcdDownloadStartTime = Nothing
    }


-- | The time spent uploading the stdout logs.
gdrcdStdout :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe Scientific)
gdrcdStdout
  = lens _gdrcdStdout (\ s a -> s{_gdrcdStdout = a}) .
      mapping _GDuration

-- | The time spent to release the CAS blobs used by the task.
gdrcdCasRelease :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe Scientific)
gdrcdCasRelease
  = lens _gdrcdCasRelease
      (\ s a -> s{_gdrcdCasRelease = a})
      . mapping _GDuration

-- | The time spent preparing the command to be run in a Docker container
-- (includes pulling the Docker image, if necessary).
gdrcdDockerPrep :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe Scientific)
gdrcdDockerPrep
  = lens _gdrcdDockerPrep
      (\ s a -> s{_gdrcdDockerPrep = a})
      . mapping _GDuration

-- | The timestamp when docker preparation begins.
gdrcdDockerPrepStartTime :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe UTCTime)
gdrcdDockerPrepStartTime
  = lens _gdrcdDockerPrepStartTime
      (\ s a -> s{_gdrcdDockerPrepStartTime = a})
      . mapping _DateTime

-- | The timestamp when execution begins.
gdrcdExecStartTime :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe UTCTime)
gdrcdExecStartTime
  = lens _gdrcdExecStartTime
      (\ s a -> s{_gdrcdExecStartTime = a})
      . mapping _DateTime

-- | The time spent downloading the input files and constructing the working
-- directory.
gdrcdDownload :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe Scientific)
gdrcdDownload
  = lens _gdrcdDownload
      (\ s a -> s{_gdrcdDownload = a})
      . mapping _GDuration

-- | The time spent completing the command, in total.
gdrcdOverall :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe Scientific)
gdrcdOverall
  = lens _gdrcdOverall (\ s a -> s{_gdrcdOverall = a})
      . mapping _GDuration

-- | The time spent executing the command (i.e., doing useful work).
gdrcdExecution :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe Scientific)
gdrcdExecution
  = lens _gdrcdExecution
      (\ s a -> s{_gdrcdExecution = a})
      . mapping _GDuration

-- | The timestamp when preparation is done and bot starts downloading files.
gdrcdIsoPrepDone :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe UTCTime)
gdrcdIsoPrepDone
  = lens _gdrcdIsoPrepDone
      (\ s a -> s{_gdrcdIsoPrepDone = a})
      . mapping _DateTime

-- | The time spent waiting for Container Manager to assign an asynchronous
-- container for execution.
gdrcdCmWaitForAssignment :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe Scientific)
gdrcdCmWaitForAssignment
  = lens _gdrcdCmWaitForAssignment
      (\ s a -> s{_gdrcdCmWaitForAssignment = a})
      . mapping _GDuration

-- | The time spent uploading the output files.
gdrcdUpload :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe Scientific)
gdrcdUpload
  = lens _gdrcdUpload (\ s a -> s{_gdrcdUpload = a}) .
      mapping _GDuration

-- | The timestamp when uploading the output files begins.
gdrcdUploadStartTime :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe UTCTime)
gdrcdUploadStartTime
  = lens _gdrcdUploadStartTime
      (\ s a -> s{_gdrcdUploadStartTime = a})
      . mapping _DateTime

-- | The timestamp when downloading the input files begins.
gdrcdDownloadStartTime :: Lens' GoogleDevtoolsRemotebuildbotCommandDurations (Maybe UTCTime)
gdrcdDownloadStartTime
  = lens _gdrcdDownloadStartTime
      (\ s a -> s{_gdrcdDownloadStartTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleDevtoolsRemotebuildbotCommandDurations
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildbotCommandDurations"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotCommandDurations' <$>
                   (o .:? "stdout") <*> (o .:? "casRelease") <*>
                     (o .:? "dockerPrep")
                     <*> (o .:? "dockerPrepStartTime")
                     <*> (o .:? "execStartTime")
                     <*> (o .:? "download")
                     <*> (o .:? "overall")
                     <*> (o .:? "execution")
                     <*> (o .:? "isoPrepDone")
                     <*> (o .:? "cmWaitForAssignment")
                     <*> (o .:? "upload")
                     <*> (o .:? "uploadStartTime")
                     <*> (o .:? "downloadStartTime"))

instance ToJSON
           GoogleDevtoolsRemotebuildbotCommandDurations
         where
        toJSON
          GoogleDevtoolsRemotebuildbotCommandDurations'{..}
          = object
              (catMaybes
                 [("stdout" .=) <$> _gdrcdStdout,
                  ("casRelease" .=) <$> _gdrcdCasRelease,
                  ("dockerPrep" .=) <$> _gdrcdDockerPrep,
                  ("dockerPrepStartTime" .=) <$>
                    _gdrcdDockerPrepStartTime,
                  ("execStartTime" .=) <$> _gdrcdExecStartTime,
                  ("download" .=) <$> _gdrcdDownload,
                  ("overall" .=) <$> _gdrcdOverall,
                  ("execution" .=) <$> _gdrcdExecution,
                  ("isoPrepDone" .=) <$> _gdrcdIsoPrepDone,
                  ("cmWaitForAssignment" .=) <$>
                    _gdrcdCmWaitForAssignment,
                  ("upload" .=) <$> _gdrcdUpload,
                  ("uploadStartTime" .=) <$> _gdrcdUploadStartTime,
                  ("downloadStartTime" .=) <$>
                    _gdrcdDownloadStartTime])

-- | A single property for the environment. The server is responsible for
-- specifying the property \`name\`s that it accepts. If an unknown
-- \`name\` is provided in the requirements for an Action, the server
-- SHOULD reject the execution request. If permitted by the server, the
-- same \`name\` may occur multiple times. The server is also responsible
-- for specifying the interpretation of property \`value\`s. For instance,
-- a property describing how much RAM must be available may be interpreted
-- as allowing a worker with 16GB to fulfill a request for 8GB, while a
-- property describing the OS environment on which the action must be
-- performed may require an exact match with the worker\'s OS. The server
-- MAY use the \`value\` of one or more properties to determine how it sets
-- up the execution environment, such as by making specific system files
-- available to the worker. Both names and values are typically
-- case-sensitive. Note that the platform is implicitly part of the action
-- digest, so even tiny changes in the names or values (like changing case)
-- may result in different action cache entries.
--
-- /See:/ 'buildBazelRemoteExecutionV2PlatformProperty' smart constructor.
data BuildBazelRemoteExecutionV2PlatformProperty =
  BuildBazelRemoteExecutionV2PlatformProperty'
    { _bbrevppValue :: !(Maybe Text)
    , _bbrevppName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2PlatformProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevppValue'
--
-- * 'bbrevppName'
buildBazelRemoteExecutionV2PlatformProperty
    :: BuildBazelRemoteExecutionV2PlatformProperty
buildBazelRemoteExecutionV2PlatformProperty =
  BuildBazelRemoteExecutionV2PlatformProperty'
    {_bbrevppValue = Nothing, _bbrevppName = Nothing}


-- | The property value.
bbrevppValue :: Lens' BuildBazelRemoteExecutionV2PlatformProperty (Maybe Text)
bbrevppValue
  = lens _bbrevppValue (\ s a -> s{_bbrevppValue = a})

-- | The property name.
bbrevppName :: Lens' BuildBazelRemoteExecutionV2PlatformProperty (Maybe Text)
bbrevppName
  = lens _bbrevppName (\ s a -> s{_bbrevppName = a})

instance FromJSON
           BuildBazelRemoteExecutionV2PlatformProperty
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2PlatformProperty"
              (\ o ->
                 BuildBazelRemoteExecutionV2PlatformProperty' <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON
           BuildBazelRemoteExecutionV2PlatformProperty
         where
        toJSON
          BuildBazelRemoteExecutionV2PlatformProperty'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _bbrevppValue,
                  ("name" .=) <$> _bbrevppName])

-- | A request message for WaitExecution.
--
-- /See:/ 'buildBazelRemoteExecutionV2WaitExecutionRequest' smart constructor.
data BuildBazelRemoteExecutionV2WaitExecutionRequest =
  BuildBazelRemoteExecutionV2WaitExecutionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2WaitExecutionRequest' with the minimum fields required to make a request.
--
buildBazelRemoteExecutionV2WaitExecutionRequest
    :: BuildBazelRemoteExecutionV2WaitExecutionRequest
buildBazelRemoteExecutionV2WaitExecutionRequest =
  BuildBazelRemoteExecutionV2WaitExecutionRequest'


instance FromJSON
           BuildBazelRemoteExecutionV2WaitExecutionRequest
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2WaitExecutionRequest"
              (\ o ->
                 pure
                   BuildBazelRemoteExecutionV2WaitExecutionRequest')

instance ToJSON
           BuildBazelRemoteExecutionV2WaitExecutionRequest
         where
        toJSON = const emptyObject

-- | DEPRECATED - use CommandResult instead. Describes the actual outputs
-- from the task.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandOutputs' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandOutputs =
  GoogleDevtoolsRemoteworkersV1test2CommandOutputs'
    { _gdrvcoOutputs :: !(Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
    , _gdrvcoExitCode :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandOutputs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvcoOutputs'
--
-- * 'gdrvcoExitCode'
googleDevtoolsRemoteworkersV1test2CommandOutputs
    :: GoogleDevtoolsRemoteworkersV1test2CommandOutputs
googleDevtoolsRemoteworkersV1test2CommandOutputs =
  GoogleDevtoolsRemoteworkersV1test2CommandOutputs'
    {_gdrvcoOutputs = Nothing, _gdrvcoExitCode = Nothing}


-- | The output files. The blob referenced by the digest should contain one
-- of the following (implementation-dependent): * A marshalled
-- DirectoryMetadata of the returned filesystem * A LUCI-style .isolated
-- file
gdrvcoOutputs :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandOutputs (Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
gdrvcoOutputs
  = lens _gdrvcoOutputs
      (\ s a -> s{_gdrvcoOutputs = a})

-- | exit_code is only fully reliable if the status\' code is OK. If the task
-- exceeded its deadline or was cancelled, the process may still produce an
-- exit code as it is cancelled, and this will be populated, but a
-- successful (zero) is unlikely to be correct unless the status code is
-- OK.
gdrvcoExitCode :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandOutputs (Maybe Int32)
gdrvcoExitCode
  = lens _gdrvcoExitCode
      (\ s a -> s{_gdrvcoExitCode = a})
      . mapping _Coerce

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandOutputs
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandOutputs"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandOutputs' <$>
                   (o .:? "outputs") <*> (o .:? "exitCode"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandOutputs
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandOutputs'{..}
          = object
              (catMaybes
                 [("outputs" .=) <$> _gdrvcoOutputs,
                  ("exitCode" .=) <$> _gdrvcoExitCode])

-- | ExecutedActionMetadata contains details about a completed execution.
--
-- /See:/ 'buildBazelRemoteExecutionV2ExecutedActionMetadata' smart constructor.
data BuildBazelRemoteExecutionV2ExecutedActionMetadata =
  BuildBazelRemoteExecutionV2ExecutedActionMetadata'
    { _bbreveamOutputUploadCompletedTimestamp :: !(Maybe DateTime')
    , _bbreveamAuxiliaryMetadata :: !(Maybe [BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem])
    , _bbreveamOutputUploadStartTimestamp :: !(Maybe DateTime')
    , _bbreveamWorkerCompletedTimestamp :: !(Maybe DateTime')
    , _bbreveamWorkerStartTimestamp :: !(Maybe DateTime')
    , _bbreveamExecutionStartTimestamp :: !(Maybe DateTime')
    , _bbreveamInputFetchStartTimestamp :: !(Maybe DateTime')
    , _bbreveamQueuedTimestamp :: !(Maybe DateTime')
    , _bbreveamWorker :: !(Maybe Text)
    , _bbreveamExecutionCompletedTimestamp :: !(Maybe DateTime')
    , _bbreveamInputFetchCompletedTimestamp :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecutedActionMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbreveamOutputUploadCompletedTimestamp'
--
-- * 'bbreveamAuxiliaryMetadata'
--
-- * 'bbreveamOutputUploadStartTimestamp'
--
-- * 'bbreveamWorkerCompletedTimestamp'
--
-- * 'bbreveamWorkerStartTimestamp'
--
-- * 'bbreveamExecutionStartTimestamp'
--
-- * 'bbreveamInputFetchStartTimestamp'
--
-- * 'bbreveamQueuedTimestamp'
--
-- * 'bbreveamWorker'
--
-- * 'bbreveamExecutionCompletedTimestamp'
--
-- * 'bbreveamInputFetchCompletedTimestamp'
buildBazelRemoteExecutionV2ExecutedActionMetadata
    :: BuildBazelRemoteExecutionV2ExecutedActionMetadata
buildBazelRemoteExecutionV2ExecutedActionMetadata =
  BuildBazelRemoteExecutionV2ExecutedActionMetadata'
    { _bbreveamOutputUploadCompletedTimestamp = Nothing
    , _bbreveamAuxiliaryMetadata = Nothing
    , _bbreveamOutputUploadStartTimestamp = Nothing
    , _bbreveamWorkerCompletedTimestamp = Nothing
    , _bbreveamWorkerStartTimestamp = Nothing
    , _bbreveamExecutionStartTimestamp = Nothing
    , _bbreveamInputFetchStartTimestamp = Nothing
    , _bbreveamQueuedTimestamp = Nothing
    , _bbreveamWorker = Nothing
    , _bbreveamExecutionCompletedTimestamp = Nothing
    , _bbreveamInputFetchCompletedTimestamp = Nothing
    }


-- | When the worker finished uploading action outputs.
bbreveamOutputUploadCompletedTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamOutputUploadCompletedTimestamp
  = lens _bbreveamOutputUploadCompletedTimestamp
      (\ s a ->
         s{_bbreveamOutputUploadCompletedTimestamp = a})
      . mapping _DateTime

-- | Details that are specific to the kind of worker used. For example, on
-- POSIX-like systems this could contain a message with getrusage(2)
-- statistics.
bbreveamAuxiliaryMetadata :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata [BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem]
bbreveamAuxiliaryMetadata
  = lens _bbreveamAuxiliaryMetadata
      (\ s a -> s{_bbreveamAuxiliaryMetadata = a})
      . _Default
      . _Coerce

-- | When the worker started uploading action outputs.
bbreveamOutputUploadStartTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamOutputUploadStartTimestamp
  = lens _bbreveamOutputUploadStartTimestamp
      (\ s a -> s{_bbreveamOutputUploadStartTimestamp = a})
      . mapping _DateTime

-- | When the worker completed the action, including all stages.
bbreveamWorkerCompletedTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamWorkerCompletedTimestamp
  = lens _bbreveamWorkerCompletedTimestamp
      (\ s a -> s{_bbreveamWorkerCompletedTimestamp = a})
      . mapping _DateTime

-- | When the worker received the action.
bbreveamWorkerStartTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamWorkerStartTimestamp
  = lens _bbreveamWorkerStartTimestamp
      (\ s a -> s{_bbreveamWorkerStartTimestamp = a})
      . mapping _DateTime

-- | When the worker started executing the action command.
bbreveamExecutionStartTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamExecutionStartTimestamp
  = lens _bbreveamExecutionStartTimestamp
      (\ s a -> s{_bbreveamExecutionStartTimestamp = a})
      . mapping _DateTime

-- | When the worker started fetching action inputs.
bbreveamInputFetchStartTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamInputFetchStartTimestamp
  = lens _bbreveamInputFetchStartTimestamp
      (\ s a -> s{_bbreveamInputFetchStartTimestamp = a})
      . mapping _DateTime

-- | When was the action added to the queue.
bbreveamQueuedTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamQueuedTimestamp
  = lens _bbreveamQueuedTimestamp
      (\ s a -> s{_bbreveamQueuedTimestamp = a})
      . mapping _DateTime

-- | The name of the worker which ran the execution.
bbreveamWorker :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe Text)
bbreveamWorker
  = lens _bbreveamWorker
      (\ s a -> s{_bbreveamWorker = a})

-- | When the worker completed executing the action command.
bbreveamExecutionCompletedTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamExecutionCompletedTimestamp
  = lens _bbreveamExecutionCompletedTimestamp
      (\ s a ->
         s{_bbreveamExecutionCompletedTimestamp = a})
      . mapping _DateTime

-- | When the worker finished fetching action inputs.
bbreveamInputFetchCompletedTimestamp :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadata (Maybe UTCTime)
bbreveamInputFetchCompletedTimestamp
  = lens _bbreveamInputFetchCompletedTimestamp
      (\ s a ->
         s{_bbreveamInputFetchCompletedTimestamp = a})
      . mapping _DateTime

instance FromJSON
           BuildBazelRemoteExecutionV2ExecutedActionMetadata
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ExecutedActionMetadata"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecutedActionMetadata'
                   <$>
                   (o .:? "outputUploadCompletedTimestamp") <*>
                     (o .:? "auxiliaryMetadata" .!= mempty)
                     <*> (o .:? "outputUploadStartTimestamp")
                     <*> (o .:? "workerCompletedTimestamp")
                     <*> (o .:? "workerStartTimestamp")
                     <*> (o .:? "executionStartTimestamp")
                     <*> (o .:? "inputFetchStartTimestamp")
                     <*> (o .:? "queuedTimestamp")
                     <*> (o .:? "worker")
                     <*> (o .:? "executionCompletedTimestamp")
                     <*> (o .:? "inputFetchCompletedTimestamp"))

instance ToJSON
           BuildBazelRemoteExecutionV2ExecutedActionMetadata
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecutedActionMetadata'{..}
          = object
              (catMaybes
                 [("outputUploadCompletedTimestamp" .=) <$>
                    _bbreveamOutputUploadCompletedTimestamp,
                  ("auxiliaryMetadata" .=) <$>
                    _bbreveamAuxiliaryMetadata,
                  ("outputUploadStartTimestamp" .=) <$>
                    _bbreveamOutputUploadStartTimestamp,
                  ("workerCompletedTimestamp" .=) <$>
                    _bbreveamWorkerCompletedTimestamp,
                  ("workerStartTimestamp" .=) <$>
                    _bbreveamWorkerStartTimestamp,
                  ("executionStartTimestamp" .=) <$>
                    _bbreveamExecutionStartTimestamp,
                  ("inputFetchStartTimestamp" .=) <$>
                    _bbreveamInputFetchStartTimestamp,
                  ("queuedTimestamp" .=) <$> _bbreveamQueuedTimestamp,
                  ("worker" .=) <$> _bbreveamWorker,
                  ("executionCompletedTimestamp" .=) <$>
                    _bbreveamExecutionCompletedTimestamp,
                  ("inputFetchCompletedTimestamp" .=) <$>
                    _bbreveamInputFetchCompletedTimestamp])

-- | Describes a blob of binary content with its digest.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2Blob' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2Blob =
  GoogleDevtoolsRemoteworkersV1test2Blob'
    { _gdrvbContents :: !(Maybe Bytes)
    , _gdrvbDigest :: !(Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2Blob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvbContents'
--
-- * 'gdrvbDigest'
googleDevtoolsRemoteworkersV1test2Blob
    :: GoogleDevtoolsRemoteworkersV1test2Blob
googleDevtoolsRemoteworkersV1test2Blob =
  GoogleDevtoolsRemoteworkersV1test2Blob'
    {_gdrvbContents = Nothing, _gdrvbDigest = Nothing}


-- | The contents of the blob.
gdrvbContents :: Lens' GoogleDevtoolsRemoteworkersV1test2Blob (Maybe ByteString)
gdrvbContents
  = lens _gdrvbContents
      (\ s a -> s{_gdrvbContents = a})
      . mapping _Bytes

-- | The digest of the blob. This should be verified by the receiver.
gdrvbDigest :: Lens' GoogleDevtoolsRemoteworkersV1test2Blob (Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
gdrvbDigest
  = lens _gdrvbDigest (\ s a -> s{_gdrvbDigest = a})

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2Blob
         where
        parseJSON
          = withObject "GoogleDevtoolsRemoteworkersV1test2Blob"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2Blob' <$>
                   (o .:? "contents") <*> (o .:? "digest"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2Blob
         where
        toJSON GoogleDevtoolsRemoteworkersV1test2Blob'{..}
          = object
              (catMaybes
                 [("contents" .=) <$> _gdrvbContents,
                  ("digest" .=) <$> _gdrvbDigest])

-- | A request message for ContentAddressableStorage.FindMissingBlobs.
--
-- /See:/ 'buildBazelRemoteExecutionV2FindMissingBlobsRequest' smart constructor.
newtype BuildBazelRemoteExecutionV2FindMissingBlobsRequest =
  BuildBazelRemoteExecutionV2FindMissingBlobsRequest'
    { _bbrevfmbrBlobDigests :: Maybe [BuildBazelRemoteExecutionV2Digest]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2FindMissingBlobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevfmbrBlobDigests'
buildBazelRemoteExecutionV2FindMissingBlobsRequest
    :: BuildBazelRemoteExecutionV2FindMissingBlobsRequest
buildBazelRemoteExecutionV2FindMissingBlobsRequest =
  BuildBazelRemoteExecutionV2FindMissingBlobsRequest'
    {_bbrevfmbrBlobDigests = Nothing}


-- | A list of the blobs to check.
bbrevfmbrBlobDigests :: Lens' BuildBazelRemoteExecutionV2FindMissingBlobsRequest [BuildBazelRemoteExecutionV2Digest]
bbrevfmbrBlobDigests
  = lens _bbrevfmbrBlobDigests
      (\ s a -> s{_bbrevfmbrBlobDigests = a})
      . _Default
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2FindMissingBlobsRequest
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2FindMissingBlobsRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2FindMissingBlobsRequest'
                   <$> (o .:? "blobDigests" .!= mempty))

instance ToJSON
           BuildBazelRemoteExecutionV2FindMissingBlobsRequest
         where
        toJSON
          BuildBazelRemoteExecutionV2FindMissingBlobsRequest'{..}
          = object
              (catMaybes
                 [("blobDigests" .=) <$> _bbrevfmbrBlobDigests])

-- | A response message for ContentAddressableStorage.GetTree.
--
-- /See:/ 'buildBazelRemoteExecutionV2GetTreeResponse' smart constructor.
data BuildBazelRemoteExecutionV2GetTreeResponse =
  BuildBazelRemoteExecutionV2GetTreeResponse'
    { _bbrevgtrDirectories :: !(Maybe [BuildBazelRemoteExecutionV2Directory])
    , _bbrevgtrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2GetTreeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevgtrDirectories'
--
-- * 'bbrevgtrNextPageToken'
buildBazelRemoteExecutionV2GetTreeResponse
    :: BuildBazelRemoteExecutionV2GetTreeResponse
buildBazelRemoteExecutionV2GetTreeResponse =
  BuildBazelRemoteExecutionV2GetTreeResponse'
    {_bbrevgtrDirectories = Nothing, _bbrevgtrNextPageToken = Nothing}


-- | The directories descended from the requested root.
bbrevgtrDirectories :: Lens' BuildBazelRemoteExecutionV2GetTreeResponse [BuildBazelRemoteExecutionV2Directory]
bbrevgtrDirectories
  = lens _bbrevgtrDirectories
      (\ s a -> s{_bbrevgtrDirectories = a})
      . _Default
      . _Coerce

-- | If present, signifies that there are more results which the client can
-- retrieve by passing this as the page_token in a subsequent request. If
-- empty, signifies that this is the last page of results.
bbrevgtrNextPageToken :: Lens' BuildBazelRemoteExecutionV2GetTreeResponse (Maybe Text)
bbrevgtrNextPageToken
  = lens _bbrevgtrNextPageToken
      (\ s a -> s{_bbrevgtrNextPageToken = a})

instance FromJSON
           BuildBazelRemoteExecutionV2GetTreeResponse
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2GetTreeResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2GetTreeResponse' <$>
                   (o .:? "directories" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON
           BuildBazelRemoteExecutionV2GetTreeResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2GetTreeResponse'{..}
          = object
              (catMaybes
                 [("directories" .=) <$> _bbrevgtrDirectories,
                  ("nextPageToken" .=) <$> _bbrevgtrNextPageToken])

-- | The request used for \`GetInstance\`.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest'
    { _gdravgirName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravgirName'
googleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest'
    {_gdravgirName = Nothing}


-- | Name of the instance to retrieve. Format:
-- \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\`.
gdravgirName :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest (Maybe Text)
gdravgirName
  = lens _gdravgirName (\ s a -> s{_gdravgirName = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest'
                   <$> (o .:? "name"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest'{..}
          = object (catMaybes [("name" .=) <$> _gdravgirName])

-- | A \`ResultsCachePolicy\` is used for fine-grained control over how
-- action outputs are stored in the CAS and Action Cache.
--
-- /See:/ 'buildBazelRemoteExecutionV2ResultsCachePolicy' smart constructor.
newtype BuildBazelRemoteExecutionV2ResultsCachePolicy =
  BuildBazelRemoteExecutionV2ResultsCachePolicy'
    { _bbrevrcpPriority :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ResultsCachePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevrcpPriority'
buildBazelRemoteExecutionV2ResultsCachePolicy
    :: BuildBazelRemoteExecutionV2ResultsCachePolicy
buildBazelRemoteExecutionV2ResultsCachePolicy =
  BuildBazelRemoteExecutionV2ResultsCachePolicy' {_bbrevrcpPriority = Nothing}


-- | The priority (relative importance) of this content in the overall cache.
-- Generally, a lower value means a longer retention time or other
-- advantage, but the interpretation of a given value is server-dependent.
-- A priority of 0 means a *default* value, decided by the server. The
-- particular semantics of this field is up to the server. In particular,
-- every server will have their own supported range of priorities, and will
-- decide how these map into retention\/eviction policy.
bbrevrcpPriority :: Lens' BuildBazelRemoteExecutionV2ResultsCachePolicy (Maybe Int32)
bbrevrcpPriority
  = lens _bbrevrcpPriority
      (\ s a -> s{_bbrevrcpPriority = a})
      . mapping _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2ResultsCachePolicy
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ResultsCachePolicy"
              (\ o ->
                 BuildBazelRemoteExecutionV2ResultsCachePolicy' <$>
                   (o .:? "priority"))

instance ToJSON
           BuildBazelRemoteExecutionV2ResultsCachePolicy
         where
        toJSON
          BuildBazelRemoteExecutionV2ResultsCachePolicy'{..}
          = object
              (catMaybes [("priority" .=) <$> _bbrevrcpPriority])

-- | A response corresponding to a single blob that the client tried to
-- download.
--
-- /See:/ 'buildBazelRemoteExecutionV2BatchReadBlobsResponseResponse' smart constructor.
data BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse =
  BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse'
    { _bbrevbrbrrStatus :: !(Maybe GoogleRpcStatus)
    , _bbrevbrbrrData :: !(Maybe Bytes)
    , _bbrevbrbrrDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevbrbrrStatus'
--
-- * 'bbrevbrbrrData'
--
-- * 'bbrevbrbrrDigest'
buildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    :: BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
buildBazelRemoteExecutionV2BatchReadBlobsResponseResponse =
  BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse'
    { _bbrevbrbrrStatus = Nothing
    , _bbrevbrbrrData = Nothing
    , _bbrevbrbrrDigest = Nothing
    }


-- | The result of attempting to download that blob.
bbrevbrbrrStatus :: Lens' BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse (Maybe GoogleRpcStatus)
bbrevbrbrrStatus
  = lens _bbrevbrbrrStatus
      (\ s a -> s{_bbrevbrbrrStatus = a})

-- | The raw binary data.
bbrevbrbrrData :: Lens' BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse (Maybe ByteString)
bbrevbrbrrData
  = lens _bbrevbrbrrData
      (\ s a -> s{_bbrevbrbrrData = a})
      . mapping _Bytes

-- | The digest to which this response corresponds.
bbrevbrbrrDigest :: Lens' BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevbrbrrDigest
  = lens _bbrevbrbrrDigest
      (\ s a -> s{_bbrevbrbrrDigest = a})

instance FromJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse'
                   <$>
                   (o .:? "status") <*> (o .:? "data") <*>
                     (o .:? "digest"))

instance ToJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bbrevbrbrrStatus,
                  ("data" .=) <$> _bbrevbrbrrData,
                  ("digest" .=) <$> _bbrevbrbrrDigest])

-- | A request message for Execution.Execute.
--
-- /See:/ 'buildBazelRemoteExecutionV2ExecuteRequest' smart constructor.
data BuildBazelRemoteExecutionV2ExecuteRequest =
  BuildBazelRemoteExecutionV2ExecuteRequest'
    { _bbreverExecutionPolicy :: !(Maybe BuildBazelRemoteExecutionV2ExecutionPolicy)
    , _bbreverSkipCacheLookup :: !(Maybe Bool)
    , _bbreverResultsCachePolicy :: !(Maybe BuildBazelRemoteExecutionV2ResultsCachePolicy)
    , _bbreverActionDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecuteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbreverExecutionPolicy'
--
-- * 'bbreverSkipCacheLookup'
--
-- * 'bbreverResultsCachePolicy'
--
-- * 'bbreverActionDigest'
buildBazelRemoteExecutionV2ExecuteRequest
    :: BuildBazelRemoteExecutionV2ExecuteRequest
buildBazelRemoteExecutionV2ExecuteRequest =
  BuildBazelRemoteExecutionV2ExecuteRequest'
    { _bbreverExecutionPolicy = Nothing
    , _bbreverSkipCacheLookup = Nothing
    , _bbreverResultsCachePolicy = Nothing
    , _bbreverActionDigest = Nothing
    }


-- | An optional policy for execution of the action. The server will have a
-- default policy if this is not provided.
bbreverExecutionPolicy :: Lens' BuildBazelRemoteExecutionV2ExecuteRequest (Maybe BuildBazelRemoteExecutionV2ExecutionPolicy)
bbreverExecutionPolicy
  = lens _bbreverExecutionPolicy
      (\ s a -> s{_bbreverExecutionPolicy = a})

-- | If true, the action will be executed even if its result is already
-- present in the ActionCache. The execution is still allowed to be merged
-- with other in-flight executions of the same action, however -
-- semantically, the service MUST only guarantee that the results of an
-- execution with this field set were not visible before the corresponding
-- execution request was sent. Note that actions from execution requests
-- setting this field set are still eligible to be entered into the action
-- cache upon completion, and services SHOULD overwrite any existing
-- entries that may exist. This allows skip_cache_lookup requests to be
-- used as a mechanism for replacing action cache entries that reference
-- outputs no longer available or that are poisoned in any way. If false,
-- the result may be served from the action cache.
bbreverSkipCacheLookup :: Lens' BuildBazelRemoteExecutionV2ExecuteRequest (Maybe Bool)
bbreverSkipCacheLookup
  = lens _bbreverSkipCacheLookup
      (\ s a -> s{_bbreverSkipCacheLookup = a})

-- | An optional policy for the results of this execution in the remote
-- cache. The server will have a default policy if this is not provided.
-- This may be applied to both the ActionResult and the associated blobs.
bbreverResultsCachePolicy :: Lens' BuildBazelRemoteExecutionV2ExecuteRequest (Maybe BuildBazelRemoteExecutionV2ResultsCachePolicy)
bbreverResultsCachePolicy
  = lens _bbreverResultsCachePolicy
      (\ s a -> s{_bbreverResultsCachePolicy = a})

-- | The digest of the Action to execute.
bbreverActionDigest :: Lens' BuildBazelRemoteExecutionV2ExecuteRequest (Maybe BuildBazelRemoteExecutionV2Digest)
bbreverActionDigest
  = lens _bbreverActionDigest
      (\ s a -> s{_bbreverActionDigest = a})

instance FromJSON
           BuildBazelRemoteExecutionV2ExecuteRequest
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ExecuteRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecuteRequest' <$>
                   (o .:? "executionPolicy") <*>
                     (o .:? "skipCacheLookup")
                     <*> (o .:? "resultsCachePolicy")
                     <*> (o .:? "actionDigest"))

instance ToJSON
           BuildBazelRemoteExecutionV2ExecuteRequest
         where
        toJSON BuildBazelRemoteExecutionV2ExecuteRequest'{..}
          = object
              (catMaybes
                 [("executionPolicy" .=) <$> _bbreverExecutionPolicy,
                  ("skipCacheLookup" .=) <$> _bbreverSkipCacheLookup,
                  ("resultsCachePolicy" .=) <$>
                    _bbreverResultsCachePolicy,
                  ("actionDigest" .=) <$> _bbreverActionDigest])

-- | A response message for ContentAddressableStorage.BatchUpdateBlobs.
--
-- /See:/ 'buildBazelRemoteExecutionV2BatchUpdateBlobsResponse' smart constructor.
newtype BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse'
    { _bbrevbubrResponses :: Maybe [BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevbubrResponses'
buildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    :: BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
buildBazelRemoteExecutionV2BatchUpdateBlobsResponse =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse'
    {_bbrevbubrResponses = Nothing}


-- | The responses to the requests.
bbrevbubrResponses :: Lens' BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse [BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse]
bbrevbubrResponses
  = lens _bbrevbubrResponses
      (\ s a -> s{_bbrevbubrResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _bbrevbubrResponses])

-- | An optional list of additional log outputs the server wishes to provide.
-- A server can use this to return execution-specific logs however it
-- wishes. This is intended primarily to make it easier for users to debug
-- issues that may be outside of the actual job execution, such as by
-- identifying the worker executing the action or by providing logs from
-- the worker\'s setup phase. The keys SHOULD be human readable so that a
-- client can display them to a user.
--
-- /See:/ 'buildBazelRemoteExecutionV2ExecuteResponseServerLogs' smart constructor.
newtype BuildBazelRemoteExecutionV2ExecuteResponseServerLogs =
  BuildBazelRemoteExecutionV2ExecuteResponseServerLogs'
    { _bbreverslAddtional :: HashMap Text BuildBazelRemoteExecutionV2LogFile
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecuteResponseServerLogs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbreverslAddtional'
buildBazelRemoteExecutionV2ExecuteResponseServerLogs
    :: HashMap Text BuildBazelRemoteExecutionV2LogFile -- ^ 'bbreverslAddtional'
    -> BuildBazelRemoteExecutionV2ExecuteResponseServerLogs
buildBazelRemoteExecutionV2ExecuteResponseServerLogs pBbreverslAddtional_ =
  BuildBazelRemoteExecutionV2ExecuteResponseServerLogs'
    {_bbreverslAddtional = _Coerce # pBbreverslAddtional_}


bbreverslAddtional :: Lens' BuildBazelRemoteExecutionV2ExecuteResponseServerLogs (HashMap Text BuildBazelRemoteExecutionV2LogFile)
bbreverslAddtional
  = lens _bbreverslAddtional
      (\ s a -> s{_bbreverslAddtional = a})
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2ExecuteResponseServerLogs
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ExecuteResponseServerLogs"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecuteResponseServerLogs'
                   <$> (parseJSONObject o))

instance ToJSON
           BuildBazelRemoteExecutionV2ExecuteResponseServerLogs
         where
        toJSON = toJSON . _bbreverslAddtional

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'googleLongrunningOperationResponse' smart constructor.
newtype GoogleLongrunningOperationResponse =
  GoogleLongrunningOperationResponse'
    { _glorAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glorAddtional'
googleLongrunningOperationResponse
    :: HashMap Text JSONValue -- ^ 'glorAddtional'
    -> GoogleLongrunningOperationResponse
googleLongrunningOperationResponse pGlorAddtional_ =
  GoogleLongrunningOperationResponse'
    {_glorAddtional = _Coerce # pGlorAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
glorAddtional :: Lens' GoogleLongrunningOperationResponse (HashMap Text JSONValue)
glorAddtional
  = lens _glorAddtional
      (\ s a -> s{_glorAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationResponse
         where
        parseJSON
          = withObject "GoogleLongrunningOperationResponse"
              (\ o ->
                 GoogleLongrunningOperationResponse' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationResponse
         where
        toJSON = toJSON . _glorAddtional

-- | A \`FileNode\` represents a single file and associated metadata.
--
-- /See:/ 'buildBazelRemoteExecutionV2FileNode' smart constructor.
data BuildBazelRemoteExecutionV2FileNode =
  BuildBazelRemoteExecutionV2FileNode'
    { _bbrevfnName :: !(Maybe Text)
    , _bbrevfnIsExecutable :: !(Maybe Bool)
    , _bbrevfnDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    , _bbrevfnNodeProperties :: !(Maybe BuildBazelRemoteExecutionV2NodeProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2FileNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevfnName'
--
-- * 'bbrevfnIsExecutable'
--
-- * 'bbrevfnDigest'
--
-- * 'bbrevfnNodeProperties'
buildBazelRemoteExecutionV2FileNode
    :: BuildBazelRemoteExecutionV2FileNode
buildBazelRemoteExecutionV2FileNode =
  BuildBazelRemoteExecutionV2FileNode'
    { _bbrevfnName = Nothing
    , _bbrevfnIsExecutable = Nothing
    , _bbrevfnDigest = Nothing
    , _bbrevfnNodeProperties = Nothing
    }


-- | The name of the file.
bbrevfnName :: Lens' BuildBazelRemoteExecutionV2FileNode (Maybe Text)
bbrevfnName
  = lens _bbrevfnName (\ s a -> s{_bbrevfnName = a})

-- | True if file is executable, false otherwise.
bbrevfnIsExecutable :: Lens' BuildBazelRemoteExecutionV2FileNode (Maybe Bool)
bbrevfnIsExecutable
  = lens _bbrevfnIsExecutable
      (\ s a -> s{_bbrevfnIsExecutable = a})

-- | The digest of the file\'s content.
bbrevfnDigest :: Lens' BuildBazelRemoteExecutionV2FileNode (Maybe BuildBazelRemoteExecutionV2Digest)
bbrevfnDigest
  = lens _bbrevfnDigest
      (\ s a -> s{_bbrevfnDigest = a})

bbrevfnNodeProperties :: Lens' BuildBazelRemoteExecutionV2FileNode (Maybe BuildBazelRemoteExecutionV2NodeProperties)
bbrevfnNodeProperties
  = lens _bbrevfnNodeProperties
      (\ s a -> s{_bbrevfnNodeProperties = a})

instance FromJSON BuildBazelRemoteExecutionV2FileNode
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2FileNode"
              (\ o ->
                 BuildBazelRemoteExecutionV2FileNode' <$>
                   (o .:? "name") <*> (o .:? "isExecutable") <*>
                     (o .:? "digest")
                     <*> (o .:? "nodeProperties"))

instance ToJSON BuildBazelRemoteExecutionV2FileNode
         where
        toJSON BuildBazelRemoteExecutionV2FileNode'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _bbrevfnName,
                  ("isExecutable" .=) <$> _bbrevfnIsExecutable,
                  ("digest" .=) <$> _bbrevfnDigest,
                  ("nodeProperties" .=) <$> _bbrevfnNodeProperties])

--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse'
    { _gdravlirInstances :: Maybe [GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravlirInstances'
googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse'
    {_gdravlirInstances = Nothing}


-- | The list of instances in a given project.
gdravlirInstances :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse [GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance]
gdravlirInstances
  = lens _gdravlirInstances
      (\ s a -> s{_gdravlirInstances = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse'
                   <$> (o .:? "instances" .!= mempty))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse'{..}
          = object
              (catMaybes [("instances" .=) <$> _gdravlirInstances])

-- | Describes a shell-style task to execute, suitable for providing as the
-- Bots interface\'s \`Lease.payload\` field.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandTask' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTask =
  GoogleDevtoolsRemoteworkersV1test2CommandTask'
    { _gdrvctInputs :: !(Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs)
    , _gdrvctExpectedOutputs :: !(Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs)
    , _gdrvctTimeouts :: !(Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvctInputs'
--
-- * 'gdrvctExpectedOutputs'
--
-- * 'gdrvctTimeouts'
googleDevtoolsRemoteworkersV1test2CommandTask
    :: GoogleDevtoolsRemoteworkersV1test2CommandTask
googleDevtoolsRemoteworkersV1test2CommandTask =
  GoogleDevtoolsRemoteworkersV1test2CommandTask'
    { _gdrvctInputs = Nothing
    , _gdrvctExpectedOutputs = Nothing
    , _gdrvctTimeouts = Nothing
    }


-- | The inputs to the task.
gdrvctInputs :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTask (Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs)
gdrvctInputs
  = lens _gdrvctInputs (\ s a -> s{_gdrvctInputs = a})

-- | The expected outputs from the task.
gdrvctExpectedOutputs :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTask (Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs)
gdrvctExpectedOutputs
  = lens _gdrvctExpectedOutputs
      (\ s a -> s{_gdrvctExpectedOutputs = a})

-- | The timeouts of this task.
gdrvctTimeouts :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTask (Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts)
gdrvctTimeouts
  = lens _gdrvctTimeouts
      (\ s a -> s{_gdrvctTimeouts = a})

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTask
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTask"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTask' <$>
                   (o .:? "inputs") <*> (o .:? "expectedOutputs") <*>
                     (o .:? "timeouts"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTask
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTask'{..}
          = object
              (catMaybes
                 [("inputs" .=) <$> _gdrvctInputs,
                  ("expectedOutputs" .=) <$> _gdrvctExpectedOutputs,
                  ("timeouts" .=) <$> _gdrvctTimeouts])

-- | FeaturePolicy defines features allowed to be used on RBE instances, as
-- well as instance-wide behavior changes that take effect without opt-in
-- or opt-out at usage time.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy'
    { _gdravfpDockerSiblingContainers :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
    , _gdravfpDockerNetwork :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
    , _gdravfpContainerImageSources :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
    , _gdravfpDockerRunAsRoot :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
    , _gdravfpDockerChrootPath :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
    , _gdravfpDockerPrivileged :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
    , _gdravfpLinuxIsolation :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation)
    , _gdravfpDockerRuntime :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
    , _gdravfpDockerAddCapabilities :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravfpDockerSiblingContainers'
--
-- * 'gdravfpDockerNetwork'
--
-- * 'gdravfpContainerImageSources'
--
-- * 'gdravfpDockerRunAsRoot'
--
-- * 'gdravfpDockerChrootPath'
--
-- * 'gdravfpDockerPrivileged'
--
-- * 'gdravfpLinuxIsolation'
--
-- * 'gdravfpDockerRuntime'
--
-- * 'gdravfpDockerAddCapabilities'
googleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
googleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy'
    { _gdravfpDockerSiblingContainers = Nothing
    , _gdravfpDockerNetwork = Nothing
    , _gdravfpContainerImageSources = Nothing
    , _gdravfpDockerRunAsRoot = Nothing
    , _gdravfpDockerChrootPath = Nothing
    , _gdravfpDockerPrivileged = Nothing
    , _gdravfpLinuxIsolation = Nothing
    , _gdravfpDockerRuntime = Nothing
    , _gdravfpDockerAddCapabilities = Nothing
    }


-- | Whether dockerSiblingContainers can be used.
gdravfpDockerSiblingContainers :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
gdravfpDockerSiblingContainers
  = lens _gdravfpDockerSiblingContainers
      (\ s a -> s{_gdravfpDockerSiblingContainers = a})

-- | Whether dockerNetwork can be used or what network modes are allowed.
-- E.g. one may allow \`off\` value only via \`allowed_values\`.
gdravfpDockerNetwork :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
gdravfpDockerNetwork
  = lens _gdravfpDockerNetwork
      (\ s a -> s{_gdravfpDockerNetwork = a})

-- | Which container image sources are allowed. Currently only RBE-supported
-- registry (gcr.io) is allowed. One can allow all repositories under a
-- project or one specific repository only. E.g. container_image_sources {
-- policy: RESTRICTED allowed_values: [ \"gcr.io\/project-foo\",
-- \"gcr.io\/project-bar\/repo-baz\", ] } will allow any repositories under
-- \"gcr.io\/project-foo\" plus the repository
-- \"gcr.io\/project-bar\/repo-baz\". Default (UNSPECIFIED) is equivalent
-- to any source is allowed.
gdravfpContainerImageSources :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
gdravfpContainerImageSources
  = lens _gdravfpContainerImageSources
      (\ s a -> s{_gdravfpContainerImageSources = a})

-- | Whether dockerRunAsRoot can be used.
gdravfpDockerRunAsRoot :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
gdravfpDockerRunAsRoot
  = lens _gdravfpDockerRunAsRoot
      (\ s a -> s{_gdravfpDockerRunAsRoot = a})

-- | Whether dockerChrootPath can be used.
gdravfpDockerChrootPath :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
gdravfpDockerChrootPath
  = lens _gdravfpDockerChrootPath
      (\ s a -> s{_gdravfpDockerChrootPath = a})

-- | Whether dockerPrivileged can be used.
gdravfpDockerPrivileged :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
gdravfpDockerPrivileged
  = lens _gdravfpDockerPrivileged
      (\ s a -> s{_gdravfpDockerPrivileged = a})

-- | linux_isolation allows overriding the docker runtime used for containers
-- started on Linux.
gdravfpLinuxIsolation :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation)
gdravfpLinuxIsolation
  = lens _gdravfpLinuxIsolation
      (\ s a -> s{_gdravfpLinuxIsolation = a})

-- | Whether dockerRuntime is allowed to be set or what runtimes are allowed.
-- Note linux_isolation takes precedence, and if set, docker_runtime values
-- may be rejected if they are incompatible with the selected isolation.
gdravfpDockerRuntime :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
gdravfpDockerRuntime
  = lens _gdravfpDockerRuntime
      (\ s a -> s{_gdravfpDockerRuntime = a})

-- | Whether dockerAddCapabilities can be used or what capabilities are
-- allowed.
gdravfpDockerAddCapabilities :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
gdravfpDockerAddCapabilities
  = lens _gdravfpDockerAddCapabilities
      (\ s a -> s{_gdravfpDockerAddCapabilities = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy'
                   <$>
                   (o .:? "dockerSiblingContainers") <*>
                     (o .:? "dockerNetwork")
                     <*> (o .:? "containerImageSources")
                     <*> (o .:? "dockerRunAsRoot")
                     <*> (o .:? "dockerChrootPath")
                     <*> (o .:? "dockerPrivileged")
                     <*> (o .:? "linuxIsolation")
                     <*> (o .:? "dockerRuntime")
                     <*> (o .:? "dockerAddCapabilities"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy'{..}
          = object
              (catMaybes
                 [("dockerSiblingContainers" .=) <$>
                    _gdravfpDockerSiblingContainers,
                  ("dockerNetwork" .=) <$> _gdravfpDockerNetwork,
                  ("containerImageSources" .=) <$>
                    _gdravfpContainerImageSources,
                  ("dockerRunAsRoot" .=) <$> _gdravfpDockerRunAsRoot,
                  ("dockerChrootPath" .=) <$> _gdravfpDockerChrootPath,
                  ("dockerPrivileged" .=) <$> _gdravfpDockerPrivileged,
                  ("linuxIsolation" .=) <$> _gdravfpLinuxIsolation,
                  ("dockerRuntime" .=) <$> _gdravfpDockerRuntime,
                  ("dockerAddCapabilities" .=) <$>
                    _gdravfpDockerAddCapabilities])

-- | The internal status of the command result.
--
-- /See:/ 'googleDevtoolsRemotebuildbotCommandStatus' smart constructor.
data GoogleDevtoolsRemotebuildbotCommandStatus =
  GoogleDevtoolsRemotebuildbotCommandStatus'
    { _gdrcsCode :: !(Maybe GoogleDevtoolsRemotebuildbotCommandStatusCode)
    , _gdrcsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildbotCommandStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrcsCode'
--
-- * 'gdrcsMessage'
googleDevtoolsRemotebuildbotCommandStatus
    :: GoogleDevtoolsRemotebuildbotCommandStatus
googleDevtoolsRemotebuildbotCommandStatus =
  GoogleDevtoolsRemotebuildbotCommandStatus'
    {_gdrcsCode = Nothing, _gdrcsMessage = Nothing}


-- | The status code.
gdrcsCode :: Lens' GoogleDevtoolsRemotebuildbotCommandStatus (Maybe GoogleDevtoolsRemotebuildbotCommandStatusCode)
gdrcsCode
  = lens _gdrcsCode (\ s a -> s{_gdrcsCode = a})

-- | The error message.
gdrcsMessage :: Lens' GoogleDevtoolsRemotebuildbotCommandStatus (Maybe Text)
gdrcsMessage
  = lens _gdrcsMessage (\ s a -> s{_gdrcsMessage = a})

instance FromJSON
           GoogleDevtoolsRemotebuildbotCommandStatus
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildbotCommandStatus"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotCommandStatus' <$>
                   (o .:? "code") <*> (o .:? "message"))

instance ToJSON
           GoogleDevtoolsRemotebuildbotCommandStatus
         where
        toJSON GoogleDevtoolsRemotebuildbotCommandStatus'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _gdrcsCode,
                  ("message" .=) <$> _gdrcsMessage])

-- | Defines the configuration to be used for creating workers in the worker
-- pool.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig'
    { _gdravwcDiskSizeGb :: !(Maybe (Textual Int64))
    , _gdravwcSoleTenantNodeType :: !(Maybe Text)
    , _gdravwcReserved :: !(Maybe Bool)
    , _gdravwcVMImage :: !(Maybe Text)
    , _gdravwcAccelerator :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig)
    , _gdravwcMaxConcurrentActions :: !(Maybe (Textual Int64))
    , _gdravwcNetworkAccess :: !(Maybe Text)
    , _gdravwcMachineType :: !(Maybe Text)
    , _gdravwcDiskType :: !(Maybe Text)
    , _gdravwcLabels :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels)
    , _gdravwcMinCPUPlatform :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravwcDiskSizeGb'
--
-- * 'gdravwcSoleTenantNodeType'
--
-- * 'gdravwcReserved'
--
-- * 'gdravwcVMImage'
--
-- * 'gdravwcAccelerator'
--
-- * 'gdravwcMaxConcurrentActions'
--
-- * 'gdravwcNetworkAccess'
--
-- * 'gdravwcMachineType'
--
-- * 'gdravwcDiskType'
--
-- * 'gdravwcLabels'
--
-- * 'gdravwcMinCPUPlatform'
googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig'
    { _gdravwcDiskSizeGb = Nothing
    , _gdravwcSoleTenantNodeType = Nothing
    , _gdravwcReserved = Nothing
    , _gdravwcVMImage = Nothing
    , _gdravwcAccelerator = Nothing
    , _gdravwcMaxConcurrentActions = Nothing
    , _gdravwcNetworkAccess = Nothing
    , _gdravwcMachineType = Nothing
    , _gdravwcDiskType = Nothing
    , _gdravwcLabels = Nothing
    , _gdravwcMinCPUPlatform = Nothing
    }


-- | Required. Size of the disk attached to the worker, in GB. See
-- https:\/\/cloud.google.com\/compute\/docs\/disks\/
gdravwcDiskSizeGb :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Int64)
gdravwcDiskSizeGb
  = lens _gdravwcDiskSizeGb
      (\ s a -> s{_gdravwcDiskSizeGb = a})
      . mapping _Coerce

-- | The node type name to be used for sole-tenant nodes.
gdravwcSoleTenantNodeType :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Text)
gdravwcSoleTenantNodeType
  = lens _gdravwcSoleTenantNodeType
      (\ s a -> s{_gdravwcSoleTenantNodeType = a})

-- | Determines whether the worker is reserved (equivalent to a Compute
-- Engine on-demand VM and therefore won\'t be preempted). See [Preemptible
-- VMs](https:\/\/cloud.google.com\/preemptible-vms\/) for more details.
gdravwcReserved :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Bool)
gdravwcReserved
  = lens _gdravwcReserved
      (\ s a -> s{_gdravwcReserved = a})

-- | The name of the image used by each VM.
gdravwcVMImage :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Text)
gdravwcVMImage
  = lens _gdravwcVMImage
      (\ s a -> s{_gdravwcVMImage = a})

-- | The accelerator card attached to each VM.
gdravwcAccelerator :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig)
gdravwcAccelerator
  = lens _gdravwcAccelerator
      (\ s a -> s{_gdravwcAccelerator = a})

-- | The maximum number of actions a worker can execute concurrently.
gdravwcMaxConcurrentActions :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Int64)
gdravwcMaxConcurrentActions
  = lens _gdravwcMaxConcurrentActions
      (\ s a -> s{_gdravwcMaxConcurrentActions = a})
      . mapping _Coerce

-- | Determines the type of network access granted to workers. Possible
-- values: - \"public\": Workers can connect to the public internet. -
-- \"private\": Workers can only connect to Google APIs and services. -
-- \"restricted-private\": Workers can only connect to Google APIs that are
-- reachable through \`restricted.googleapis.com\` (\`199.36.153.4\/30\`).
gdravwcNetworkAccess :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Text)
gdravwcNetworkAccess
  = lens _gdravwcNetworkAccess
      (\ s a -> s{_gdravwcNetworkAccess = a})

-- | Required. Machine type of the worker, such as \`e2-standard-2\`. See
-- https:\/\/cloud.google.com\/compute\/docs\/machine-types for a list of
-- supported machine types. Note that \`f1-micro\` and \`g1-small\` are not
-- yet supported.
gdravwcMachineType :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Text)
gdravwcMachineType
  = lens _gdravwcMachineType
      (\ s a -> s{_gdravwcMachineType = a})

-- | Required. Disk Type to use for the worker. See [Storage
-- options](https:\/\/cloud.google.com\/compute\/docs\/disks\/#introduction).
-- Currently only \`pd-standard\` and \`pd-ssd\` are supported.
gdravwcDiskType :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Text)
gdravwcDiskType
  = lens _gdravwcDiskType
      (\ s a -> s{_gdravwcDiskType = a})

-- | Labels associated with the workers. Label keys and values can be no
-- longer than 63 characters, can only contain lowercase letters, numeric
-- characters, underscores and dashes. International letters are permitted.
-- Label keys must start with a letter. Label values are optional. There
-- can not be more than 64 labels per resource.
gdravwcLabels :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels)
gdravwcLabels
  = lens _gdravwcLabels
      (\ s a -> s{_gdravwcLabels = a})

-- | Minimum CPU platform to use when creating the worker. See [CPU
-- Platforms](https:\/\/cloud.google.com\/compute\/docs\/cpu-platforms).
gdravwcMinCPUPlatform :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (Maybe Text)
gdravwcMinCPUPlatform
  = lens _gdravwcMinCPUPlatform
      (\ s a -> s{_gdravwcMinCPUPlatform = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig'
                   <$>
                   (o .:? "diskSizeGb") <*> (o .:? "soleTenantNodeType")
                     <*> (o .:? "reserved")
                     <*> (o .:? "vmImage")
                     <*> (o .:? "accelerator")
                     <*> (o .:? "maxConcurrentActions")
                     <*> (o .:? "networkAccess")
                     <*> (o .:? "machineType")
                     <*> (o .:? "diskType")
                     <*> (o .:? "labels")
                     <*> (o .:? "minCpuPlatform"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig'{..}
          = object
              (catMaybes
                 [("diskSizeGb" .=) <$> _gdravwcDiskSizeGb,
                  ("soleTenantNodeType" .=) <$>
                    _gdravwcSoleTenantNodeType,
                  ("reserved" .=) <$> _gdravwcReserved,
                  ("vmImage" .=) <$> _gdravwcVMImage,
                  ("accelerator" .=) <$> _gdravwcAccelerator,
                  ("maxConcurrentActions" .=) <$>
                    _gdravwcMaxConcurrentActions,
                  ("networkAccess" .=) <$> _gdravwcNetworkAccess,
                  ("machineType" .=) <$> _gdravwcMachineType,
                  ("diskType" .=) <$> _gdravwcDiskType,
                  ("labels" .=) <$> _gdravwcLabels,
                  ("minCpuPlatform" .=) <$> _gdravwcMinCPUPlatform])

-- | The response message for Execution.Execute, which will be contained in
-- the response field of the Operation.
--
-- /See:/ 'buildBazelRemoteExecutionV2ExecuteResponse' smart constructor.
data BuildBazelRemoteExecutionV2ExecuteResponse =
  BuildBazelRemoteExecutionV2ExecuteResponse'
    { _bbreverStatus :: !(Maybe GoogleRpcStatus)
    , _bbreverServerLogs :: !(Maybe BuildBazelRemoteExecutionV2ExecuteResponseServerLogs)
    , _bbreverResult :: !(Maybe BuildBazelRemoteExecutionV2ActionResult)
    , _bbreverCachedResult :: !(Maybe Bool)
    , _bbreverMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecuteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbreverStatus'
--
-- * 'bbreverServerLogs'
--
-- * 'bbreverResult'
--
-- * 'bbreverCachedResult'
--
-- * 'bbreverMessage'
buildBazelRemoteExecutionV2ExecuteResponse
    :: BuildBazelRemoteExecutionV2ExecuteResponse
buildBazelRemoteExecutionV2ExecuteResponse =
  BuildBazelRemoteExecutionV2ExecuteResponse'
    { _bbreverStatus = Nothing
    , _bbreverServerLogs = Nothing
    , _bbreverResult = Nothing
    , _bbreverCachedResult = Nothing
    , _bbreverMessage = Nothing
    }


-- | If the status has a code other than \`OK\`, it indicates that the action
-- did not finish execution. For example, if the operation times out during
-- execution, the status will have a \`DEADLINE_EXCEEDED\` code. Servers
-- MUST use this field for errors in execution, rather than the error field
-- on the \`Operation\` object. If the status code is other than \`OK\`,
-- then the result MUST NOT be cached. For an error status, the \`result\`
-- field is optional; the server may populate the output-, stdout-, and
-- stderr-related fields if it has any information available, such as the
-- stdout and stderr of a timed-out action.
bbreverStatus :: Lens' BuildBazelRemoteExecutionV2ExecuteResponse (Maybe GoogleRpcStatus)
bbreverStatus
  = lens _bbreverStatus
      (\ s a -> s{_bbreverStatus = a})

-- | An optional list of additional log outputs the server wishes to provide.
-- A server can use this to return execution-specific logs however it
-- wishes. This is intended primarily to make it easier for users to debug
-- issues that may be outside of the actual job execution, such as by
-- identifying the worker executing the action or by providing logs from
-- the worker\'s setup phase. The keys SHOULD be human readable so that a
-- client can display them to a user.
bbreverServerLogs :: Lens' BuildBazelRemoteExecutionV2ExecuteResponse (Maybe BuildBazelRemoteExecutionV2ExecuteResponseServerLogs)
bbreverServerLogs
  = lens _bbreverServerLogs
      (\ s a -> s{_bbreverServerLogs = a})

-- | The result of the action.
bbreverResult :: Lens' BuildBazelRemoteExecutionV2ExecuteResponse (Maybe BuildBazelRemoteExecutionV2ActionResult)
bbreverResult
  = lens _bbreverResult
      (\ s a -> s{_bbreverResult = a})

-- | True if the result was served from cache, false if it was executed.
bbreverCachedResult :: Lens' BuildBazelRemoteExecutionV2ExecuteResponse (Maybe Bool)
bbreverCachedResult
  = lens _bbreverCachedResult
      (\ s a -> s{_bbreverCachedResult = a})

-- | Freeform informational message with details on the execution of the
-- action that may be displayed to the user upon failure or when requested
-- explicitly.
bbreverMessage :: Lens' BuildBazelRemoteExecutionV2ExecuteResponse (Maybe Text)
bbreverMessage
  = lens _bbreverMessage
      (\ s a -> s{_bbreverMessage = a})

instance FromJSON
           BuildBazelRemoteExecutionV2ExecuteResponse
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ExecuteResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecuteResponse' <$>
                   (o .:? "status") <*> (o .:? "serverLogs") <*>
                     (o .:? "result")
                     <*> (o .:? "cachedResult")
                     <*> (o .:? "message"))

instance ToJSON
           BuildBazelRemoteExecutionV2ExecuteResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecuteResponse'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bbreverStatus,
                  ("serverLogs" .=) <$> _bbreverServerLogs,
                  ("result" .=) <$> _bbreverResult,
                  ("cachedResult" .=) <$> _bbreverCachedResult,
                  ("message" .=) <$> _bbreverMessage])

-- | The request used for \`UpdateInstance\`.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest'
    { _gdravuirUpdateMask :: !(Maybe GFieldMask)
    , _gdravuirName :: !(Maybe Text)
    , _gdravuirLoggingEnabled :: !(Maybe Bool)
    , _gdravuirInstance :: !(Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravuirUpdateMask'
--
-- * 'gdravuirName'
--
-- * 'gdravuirLoggingEnabled'
--
-- * 'gdravuirInstance'
googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest'
    { _gdravuirUpdateMask = Nothing
    , _gdravuirName = Nothing
    , _gdravuirLoggingEnabled = Nothing
    , _gdravuirInstance = Nothing
    }


-- | The update mask applies to instance. For the \`FieldMask\` definition,
-- see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
-- If an empty update_mask is provided, only the non-default valued field
-- in the worker pool field will be updated. Note that in order to update a
-- field to the default value (zero, false, empty string) an explicit
-- update_mask must be provided.
gdravuirUpdateMask :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest (Maybe GFieldMask)
gdravuirUpdateMask
  = lens _gdravuirUpdateMask
      (\ s a -> s{_gdravuirUpdateMask = a})

-- | Deprecated, use instance.Name instead. Name of the instance to update.
-- Format: \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\`.
gdravuirName :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest (Maybe Text)
gdravuirName
  = lens _gdravuirName (\ s a -> s{_gdravuirName = a})

-- | Deprecated, use instance.logging_enabled instead. Whether to enable
-- Stackdriver logging for this instance.
gdravuirLoggingEnabled :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest (Maybe Bool)
gdravuirLoggingEnabled
  = lens _gdravuirLoggingEnabled
      (\ s a -> s{_gdravuirLoggingEnabled = a})

-- | Specifies the instance to update.
gdravuirInstance :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest (Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance)
gdravuirInstance
  = lens _gdravuirInstance
      (\ s a -> s{_gdravuirInstance = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest'
                   <$>
                   (o .:? "updateMask") <*> (o .:? "name") <*>
                     (o .:? "loggingEnabled")
                     <*> (o .:? "instance"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _gdravuirUpdateMask,
                  ("name" .=) <$> _gdravuirName,
                  ("loggingEnabled" .=) <$> _gdravuirLoggingEnabled,
                  ("instance" .=) <$> _gdravuirInstance])

-- | The request used for \`DeleteInstance\`.
--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest'
    { _gdravdirName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravdirName'
googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest'
    {_gdravdirName = Nothing}


-- | Name of the instance to delete. Format:
-- \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\`.
gdravdirName :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest (Maybe Text)
gdravdirName
  = lens _gdravdirName (\ s a -> s{_gdravdirName = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest'
                   <$> (o .:? "name"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest'{..}
          = object (catMaybes [("name" .=) <$> _gdravdirName])

-- | Describes the inputs to a shell-style task.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandTaskInputs' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs'
    { _gdrvctiWorkingDirectory :: !(Maybe Text)
    , _gdrvctiArguments :: !(Maybe [Text])
    , _gdrvctiFiles :: !(Maybe [GoogleDevtoolsRemoteworkersV1test2Digest])
    , _gdrvctiEnvironmentVariables :: !(Maybe [GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable])
    , _gdrvctiInlineBlobs :: !(Maybe [GoogleDevtoolsRemoteworkersV1test2Blob])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvctiWorkingDirectory'
--
-- * 'gdrvctiArguments'
--
-- * 'gdrvctiFiles'
--
-- * 'gdrvctiEnvironmentVariables'
--
-- * 'gdrvctiInlineBlobs'
googleDevtoolsRemoteworkersV1test2CommandTaskInputs
    :: GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
googleDevtoolsRemoteworkersV1test2CommandTaskInputs =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs'
    { _gdrvctiWorkingDirectory = Nothing
    , _gdrvctiArguments = Nothing
    , _gdrvctiFiles = Nothing
    , _gdrvctiEnvironmentVariables = Nothing
    , _gdrvctiInlineBlobs = Nothing
    }


-- | Directory from which a command is executed. It is a relative directory
-- with respect to the bot\'s working directory (i.e., \".\/\"). If it is
-- non-empty, then it must exist under \".\/\". Otherwise, \".\/\" will be
-- used.
gdrvctiWorkingDirectory :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs (Maybe Text)
gdrvctiWorkingDirectory
  = lens _gdrvctiWorkingDirectory
      (\ s a -> s{_gdrvctiWorkingDirectory = a})

-- | The command itself to run (e.g., argv). This field should be passed
-- directly to the underlying operating system, and so it must be sensible
-- to that operating system. For example, on Windows, the first argument
-- might be \"C:\\Windows\\System32\\ping.exe\" - that is, using drive
-- letters and backslashes. A command for a *nix system, on the other hand,
-- would use forward slashes. All other fields in the RWAPI must
-- consistently use forward slashes, since those fields may be interpretted
-- by both the service and the bot.
gdrvctiArguments :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs [Text]
gdrvctiArguments
  = lens _gdrvctiArguments
      (\ s a -> s{_gdrvctiArguments = a})
      . _Default
      . _Coerce

-- | The input filesystem to be set up prior to the task beginning. The
-- contents should be a repeated set of FileMetadata messages though other
-- formats are allowed if better for the implementation (eg, a LUCI-style
-- .isolated file). This field is repeated since implementations might want
-- to cache the metadata, in which case it may be useful to break up
-- portions of the filesystem that change frequently (eg, specific input
-- files) from those that don\'t (eg, standard header files).
gdrvctiFiles :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs [GoogleDevtoolsRemoteworkersV1test2Digest]
gdrvctiFiles
  = lens _gdrvctiFiles (\ s a -> s{_gdrvctiFiles = a})
      . _Default
      . _Coerce

-- | All environment variables required by the task.
gdrvctiEnvironmentVariables :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs [GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable]
gdrvctiEnvironmentVariables
  = lens _gdrvctiEnvironmentVariables
      (\ s a -> s{_gdrvctiEnvironmentVariables = a})
      . _Default
      . _Coerce

-- | Inline contents for blobs expected to be needed by the bot to execute
-- the task. For example, contents of entries in \`files\` or blobs that
-- are indirectly referenced by an entry there. The bot should check
-- against this list before downloading required task inputs to reduce the
-- number of communications between itself and the remote CAS server.
gdrvctiInlineBlobs :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs [GoogleDevtoolsRemoteworkersV1test2Blob]
gdrvctiInlineBlobs
  = lens _gdrvctiInlineBlobs
      (\ s a -> s{_gdrvctiInlineBlobs = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs'
                   <$>
                   (o .:? "workingDirectory") <*>
                     (o .:? "arguments" .!= mempty)
                     <*> (o .:? "files" .!= mempty)
                     <*> (o .:? "environmentVariables" .!= mempty)
                     <*> (o .:? "inlineBlobs" .!= mempty))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs'{..}
          = object
              (catMaybes
                 [("workingDirectory" .=) <$>
                    _gdrvctiWorkingDirectory,
                  ("arguments" .=) <$> _gdrvctiArguments,
                  ("files" .=) <$> _gdrvctiFiles,
                  ("environmentVariables" .=) <$>
                    _gdrvctiEnvironmentVariables,
                  ("inlineBlobs" .=) <$> _gdrvctiInlineBlobs])

-- | An \`EnvironmentVariable\` is one variable to set in the running
-- program\'s environment.
--
-- /See:/ 'buildBazelRemoteExecutionV2CommandEnvironmentVariable' smart constructor.
data BuildBazelRemoteExecutionV2CommandEnvironmentVariable =
  BuildBazelRemoteExecutionV2CommandEnvironmentVariable'
    { _bbrevcevValue :: !(Maybe Text)
    , _bbrevcevName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2CommandEnvironmentVariable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevcevValue'
--
-- * 'bbrevcevName'
buildBazelRemoteExecutionV2CommandEnvironmentVariable
    :: BuildBazelRemoteExecutionV2CommandEnvironmentVariable
buildBazelRemoteExecutionV2CommandEnvironmentVariable =
  BuildBazelRemoteExecutionV2CommandEnvironmentVariable'
    {_bbrevcevValue = Nothing, _bbrevcevName = Nothing}


-- | The variable value.
bbrevcevValue :: Lens' BuildBazelRemoteExecutionV2CommandEnvironmentVariable (Maybe Text)
bbrevcevValue
  = lens _bbrevcevValue
      (\ s a -> s{_bbrevcevValue = a})

-- | The variable name.
bbrevcevName :: Lens' BuildBazelRemoteExecutionV2CommandEnvironmentVariable (Maybe Text)
bbrevcevName
  = lens _bbrevcevName (\ s a -> s{_bbrevcevName = a})

instance FromJSON
           BuildBazelRemoteExecutionV2CommandEnvironmentVariable
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2CommandEnvironmentVariable"
              (\ o ->
                 BuildBazelRemoteExecutionV2CommandEnvironmentVariable'
                   <$> (o .:? "value") <*> (o .:? "name"))

instance ToJSON
           BuildBazelRemoteExecutionV2CommandEnvironmentVariable
         where
        toJSON
          BuildBazelRemoteExecutionV2CommandEnvironmentVariable'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _bbrevcevValue,
                  ("name" .=) <$> _bbrevcevName])

--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest'
    { _gdravlirParent :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravlirParent'
googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest'
    {_gdravlirParent = Nothing}


-- | Resource name of the project. Format: \`projects\/[PROJECT_ID]\`.
gdravlirParent :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest (Maybe Text)
gdravlirParent
  = lens _gdravlirParent
      (\ s a -> s{_gdravlirParent = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest'
                   <$> (o .:? "parent"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest'{..}
          = object
              (catMaybes [("parent" .=) <$> _gdravlirParent])

-- | Allowed values for priority in ResultsCachePolicy and ExecutionPolicy
-- Used for querying both cache and execution valid priority ranges.
--
-- /See:/ 'buildBazelRemoteExecutionV2PriorityCapabilities' smart constructor.
newtype BuildBazelRemoteExecutionV2PriorityCapabilities =
  BuildBazelRemoteExecutionV2PriorityCapabilities'
    { _bbrevpcPriorities :: Maybe [BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2PriorityCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevpcPriorities'
buildBazelRemoteExecutionV2PriorityCapabilities
    :: BuildBazelRemoteExecutionV2PriorityCapabilities
buildBazelRemoteExecutionV2PriorityCapabilities =
  BuildBazelRemoteExecutionV2PriorityCapabilities'
    {_bbrevpcPriorities = Nothing}


bbrevpcPriorities :: Lens' BuildBazelRemoteExecutionV2PriorityCapabilities [BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange]
bbrevpcPriorities
  = lens _bbrevpcPriorities
      (\ s a -> s{_bbrevpcPriorities = a})
      . _Default
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2PriorityCapabilities
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2PriorityCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2PriorityCapabilities' <$>
                   (o .:? "priorities" .!= mempty))

instance ToJSON
           BuildBazelRemoteExecutionV2PriorityCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2PriorityCapabilities'{..}
          = object
              (catMaybes
                 [("priorities" .=) <$> _bbrevpcPriorities])

-- | A request message for ContentAddressableStorage.BatchUpdateBlobs.
--
-- /See:/ 'buildBazelRemoteExecutionV2BatchUpdateBlobsRequest' smart constructor.
newtype BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest'
    { _bbrevbubrRequests :: Maybe [BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevbubrRequests'
buildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    :: BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
buildBazelRemoteExecutionV2BatchUpdateBlobsRequest =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest'
    {_bbrevbubrRequests = Nothing}


-- | The individual upload requests.
bbrevbubrRequests :: Lens' BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest [BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest]
bbrevbubrRequests
  = lens _bbrevbubrRequests
      (\ s a -> s{_bbrevbubrRequests = a})
      . _Default
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest'
                   <$> (o .:? "requests" .!= mempty))

instance ToJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest'{..}
          = object
              (catMaybes [("requests" .=) <$> _bbrevbubrRequests])

-- | An optional Metadata to attach to any RPC request to tell the server
-- about an external context of the request. The server may use this for
-- logging or other purposes. To use it, the client attaches the header to
-- the call using the canonical proto serialization: * name:
-- \`build.bazel.remote.execution.v2.requestmetadata-bin\` * contents: the
-- base64 encoded binary \`RequestMetadata\` message. Note: the gRPC
-- library serializes binary headers encoded in base 64 by default
-- (https:\/\/github.com\/grpc\/grpc\/blob\/master\/doc\/PROTOCOL-HTTP2.md#requests).
-- Therefore, if the gRPC library is used to pass\/retrieve this metadata,
-- the user may ignore the base64 encoding and assume it is simply
-- serialized as a binary message.
--
-- /See:/ 'buildBazelRemoteExecutionV2RequestMetadata' smart constructor.
data BuildBazelRemoteExecutionV2RequestMetadata =
  BuildBazelRemoteExecutionV2RequestMetadata'
    { _bbrevrmTargetId :: !(Maybe Text)
    , _bbrevrmCorrelatedInvocationsId :: !(Maybe Text)
    , _bbrevrmConfigurationId :: !(Maybe Text)
    , _bbrevrmToolInvocationId :: !(Maybe Text)
    , _bbrevrmActionId :: !(Maybe Text)
    , _bbrevrmActionMnemonic :: !(Maybe Text)
    , _bbrevrmToolDetails :: !(Maybe BuildBazelRemoteExecutionV2ToolDetails)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2RequestMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevrmTargetId'
--
-- * 'bbrevrmCorrelatedInvocationsId'
--
-- * 'bbrevrmConfigurationId'
--
-- * 'bbrevrmToolInvocationId'
--
-- * 'bbrevrmActionId'
--
-- * 'bbrevrmActionMnemonic'
--
-- * 'bbrevrmToolDetails'
buildBazelRemoteExecutionV2RequestMetadata
    :: BuildBazelRemoteExecutionV2RequestMetadata
buildBazelRemoteExecutionV2RequestMetadata =
  BuildBazelRemoteExecutionV2RequestMetadata'
    { _bbrevrmTargetId = Nothing
    , _bbrevrmCorrelatedInvocationsId = Nothing
    , _bbrevrmConfigurationId = Nothing
    , _bbrevrmToolInvocationId = Nothing
    , _bbrevrmActionId = Nothing
    , _bbrevrmActionMnemonic = Nothing
    , _bbrevrmToolDetails = Nothing
    }


-- | An identifier for the target which produced this action. No guarantees
-- are made around how many actions may relate to a single target.
bbrevrmTargetId :: Lens' BuildBazelRemoteExecutionV2RequestMetadata (Maybe Text)
bbrevrmTargetId
  = lens _bbrevrmTargetId
      (\ s a -> s{_bbrevrmTargetId = a})

-- | An identifier to tie multiple tool invocations together. For example,
-- runs of foo_test, bar_test and baz_test on a post-submit of a given
-- patch.
bbrevrmCorrelatedInvocationsId :: Lens' BuildBazelRemoteExecutionV2RequestMetadata (Maybe Text)
bbrevrmCorrelatedInvocationsId
  = lens _bbrevrmCorrelatedInvocationsId
      (\ s a -> s{_bbrevrmCorrelatedInvocationsId = a})

-- | An identifier for the configuration in which the target was built, e.g.
-- for differentiating building host tools or different target platforms.
-- There is no expectation that this value will have any particular
-- structure, or equality across invocations, though some client tools may
-- offer these guarantees.
bbrevrmConfigurationId :: Lens' BuildBazelRemoteExecutionV2RequestMetadata (Maybe Text)
bbrevrmConfigurationId
  = lens _bbrevrmConfigurationId
      (\ s a -> s{_bbrevrmConfigurationId = a})

-- | An identifier that ties multiple actions together to a final result. For
-- example, multiple actions are required to build and run foo_test.
bbrevrmToolInvocationId :: Lens' BuildBazelRemoteExecutionV2RequestMetadata (Maybe Text)
bbrevrmToolInvocationId
  = lens _bbrevrmToolInvocationId
      (\ s a -> s{_bbrevrmToolInvocationId = a})

-- | An identifier that ties multiple requests to the same action. For
-- example, multiple requests to the CAS, Action Cache, and Execution API
-- are used in order to compile foo.cc.
bbrevrmActionId :: Lens' BuildBazelRemoteExecutionV2RequestMetadata (Maybe Text)
bbrevrmActionId
  = lens _bbrevrmActionId
      (\ s a -> s{_bbrevrmActionId = a})

-- | A brief description of the kind of action, for example, CppCompile or
-- GoLink. There is no standard agreed set of values for this, and they are
-- expected to vary between different client tools.
bbrevrmActionMnemonic :: Lens' BuildBazelRemoteExecutionV2RequestMetadata (Maybe Text)
bbrevrmActionMnemonic
  = lens _bbrevrmActionMnemonic
      (\ s a -> s{_bbrevrmActionMnemonic = a})

-- | The details for the tool invoking the requests.
bbrevrmToolDetails :: Lens' BuildBazelRemoteExecutionV2RequestMetadata (Maybe BuildBazelRemoteExecutionV2ToolDetails)
bbrevrmToolDetails
  = lens _bbrevrmToolDetails
      (\ s a -> s{_bbrevrmToolDetails = a})

instance FromJSON
           BuildBazelRemoteExecutionV2RequestMetadata
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2RequestMetadata"
              (\ o ->
                 BuildBazelRemoteExecutionV2RequestMetadata' <$>
                   (o .:? "targetId") <*>
                     (o .:? "correlatedInvocationsId")
                     <*> (o .:? "configurationId")
                     <*> (o .:? "toolInvocationId")
                     <*> (o .:? "actionId")
                     <*> (o .:? "actionMnemonic")
                     <*> (o .:? "toolDetails"))

instance ToJSON
           BuildBazelRemoteExecutionV2RequestMetadata
         where
        toJSON
          BuildBazelRemoteExecutionV2RequestMetadata'{..}
          = object
              (catMaybes
                 [("targetId" .=) <$> _bbrevrmTargetId,
                  ("correlatedInvocationsId" .=) <$>
                    _bbrevrmCorrelatedInvocationsId,
                  ("configurationId" .=) <$> _bbrevrmConfigurationId,
                  ("toolInvocationId" .=) <$> _bbrevrmToolInvocationId,
                  ("actionId" .=) <$> _bbrevrmActionId,
                  ("actionMnemonic" .=) <$> _bbrevrmActionMnemonic,
                  ("toolDetails" .=) <$> _bbrevrmToolDetails])

-- | A \`Platform\` is a set of requirements, such as hardware, operating
-- system, or compiler toolchain, for an Action\'s execution environment. A
-- \`Platform\` is represented as a series of key-value pairs representing
-- the properties that are required of the platform.
--
-- /See:/ 'buildBazelRemoteExecutionV2Platform' smart constructor.
newtype BuildBazelRemoteExecutionV2Platform =
  BuildBazelRemoteExecutionV2Platform'
    { _bbrevpProperties :: Maybe [BuildBazelRemoteExecutionV2PlatformProperty]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2Platform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevpProperties'
buildBazelRemoteExecutionV2Platform
    :: BuildBazelRemoteExecutionV2Platform
buildBazelRemoteExecutionV2Platform =
  BuildBazelRemoteExecutionV2Platform' {_bbrevpProperties = Nothing}


-- | The properties that make up this platform. In order to ensure that
-- equivalent \`Platform\`s always hash to the same value, the properties
-- MUST be lexicographically sorted by name, and then by value. Sorting of
-- strings is done by code point, equivalently, by the UTF-8 bytes.
bbrevpProperties :: Lens' BuildBazelRemoteExecutionV2Platform [BuildBazelRemoteExecutionV2PlatformProperty]
bbrevpProperties
  = lens _bbrevpProperties
      (\ s a -> s{_bbrevpProperties = a})
      . _Default
      . _Coerce

instance FromJSON BuildBazelRemoteExecutionV2Platform
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2Platform"
              (\ o ->
                 BuildBazelRemoteExecutionV2Platform' <$>
                   (o .:? "properties" .!= mempty))

instance ToJSON BuildBazelRemoteExecutionV2Platform
         where
        toJSON BuildBazelRemoteExecutionV2Platform'{..}
          = object
              (catMaybes [("properties" .=) <$> _bbrevpProperties])

-- | Metadata about an ongoing execution, which will be contained in the
-- metadata field of the Operation.
--
-- /See:/ 'buildBazelRemoteExecutionV2ExecuteOperationMetadata' smart constructor.
data BuildBazelRemoteExecutionV2ExecuteOperationMetadata =
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata'
    { _bbreveomStage :: !(Maybe BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage)
    , _bbreveomStderrStreamName :: !(Maybe Text)
    , _bbreveomStdoutStreamName :: !(Maybe Text)
    , _bbreveomActionDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecuteOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbreveomStage'
--
-- * 'bbreveomStderrStreamName'
--
-- * 'bbreveomStdoutStreamName'
--
-- * 'bbreveomActionDigest'
buildBazelRemoteExecutionV2ExecuteOperationMetadata
    :: BuildBazelRemoteExecutionV2ExecuteOperationMetadata
buildBazelRemoteExecutionV2ExecuteOperationMetadata =
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata'
    { _bbreveomStage = Nothing
    , _bbreveomStderrStreamName = Nothing
    , _bbreveomStdoutStreamName = Nothing
    , _bbreveomActionDigest = Nothing
    }


-- | The current stage of execution.
bbreveomStage :: Lens' BuildBazelRemoteExecutionV2ExecuteOperationMetadata (Maybe BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage)
bbreveomStage
  = lens _bbreveomStage
      (\ s a -> s{_bbreveomStage = a})

-- | If set, the client can use this resource name with ByteStream.Read to
-- stream the standard error from the endpoint hosting streamed responses.
bbreveomStderrStreamName :: Lens' BuildBazelRemoteExecutionV2ExecuteOperationMetadata (Maybe Text)
bbreveomStderrStreamName
  = lens _bbreveomStderrStreamName
      (\ s a -> s{_bbreveomStderrStreamName = a})

-- | If set, the client can use this resource name with ByteStream.Read to
-- stream the standard output from the endpoint hosting streamed responses.
bbreveomStdoutStreamName :: Lens' BuildBazelRemoteExecutionV2ExecuteOperationMetadata (Maybe Text)
bbreveomStdoutStreamName
  = lens _bbreveomStdoutStreamName
      (\ s a -> s{_bbreveomStdoutStreamName = a})

-- | The digest of the Action being executed.
bbreveomActionDigest :: Lens' BuildBazelRemoteExecutionV2ExecuteOperationMetadata (Maybe BuildBazelRemoteExecutionV2Digest)
bbreveomActionDigest
  = lens _bbreveomActionDigest
      (\ s a -> s{_bbreveomActionDigest = a})

instance FromJSON
           BuildBazelRemoteExecutionV2ExecuteOperationMetadata
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ExecuteOperationMetadata"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecuteOperationMetadata'
                   <$>
                   (o .:? "stage") <*> (o .:? "stderrStreamName") <*>
                     (o .:? "stdoutStreamName")
                     <*> (o .:? "actionDigest"))

instance ToJSON
           BuildBazelRemoteExecutionV2ExecuteOperationMetadata
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecuteOperationMetadata'{..}
          = object
              (catMaybes
                 [("stage" .=) <$> _bbreveomStage,
                  ("stderrStreamName" .=) <$>
                    _bbreveomStderrStreamName,
                  ("stdoutStreamName" .=) <$>
                    _bbreveomStdoutStreamName,
                  ("actionDigest" .=) <$> _bbreveomActionDigest])

--
-- /See:/ 'googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest'
    { _gdravlwprParent :: !(Maybe Text)
    , _gdravlwprFilter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdravlwprParent'
--
-- * 'gdravlwprFilter'
googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    :: GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest'
    {_gdravlwprParent = Nothing, _gdravlwprFilter = Nothing}


-- | Resource name of the instance. Format:
-- \`projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\`.
gdravlwprParent :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest (Maybe Text)
gdravlwprParent
  = lens _gdravlwprParent
      (\ s a -> s{_gdravlwprParent = a})

-- | Optional. A filter expression that filters resources listed in the
-- response. The expression must specify the field name, a comparison
-- operator, and the value that you want to use for filtering. The value
-- must be a string, a number, or a boolean. String values are
-- case-insensitive. The comparison operator must be either \`:\`, \`=\`,
-- \`!=\`, \`>\`, \`>=\`, \`\<=\` or \`\<\`. The \`:\` operator can be used
-- with string fields to match substrings. For non-string fields it is
-- equivalent to the \`=\` operator. The \`:*\` comparison can be used to
-- test whether a key has been defined. You can also filter on nested
-- fields. To filter on multiple expressions, you can separate expression
-- using \`AND\` and \`OR\` operators, using parentheses to specify
-- precedence. If neither operator is specified, \`AND\` is assumed.
-- Examples: Include only pools with more than 100 reserved workers:
-- \`(worker_count > 100) (worker_config.reserved = true)\` Include only
-- pools with a certain label or machines of the e2-standard family:
-- \`worker_config.labels.key1 : * OR worker_config.machine_type:
-- e2-standard\`
gdravlwprFilter :: Lens' GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest (Maybe Text)
gdravlwprFilter
  = lens _gdravlwprFilter
      (\ s a -> s{_gdravlwprFilter = a})

instance FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest'
                   <$> (o .:? "parent") <*> (o .:? "filter"))

instance ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gdravlwprParent,
                  ("filter" .=) <$> _gdravlwprFilter])

-- | A \`Command\` is the actual command executed by a worker running an
-- Action and specifications of its environment. Except as otherwise
-- required, the environment (such as which system libraries or binaries
-- are available, and what filesystems are mounted where) is defined by and
-- specific to the implementation of the remote execution API.
--
-- /See:/ 'buildBazelRemoteExecutionV2Command' smart constructor.
data BuildBazelRemoteExecutionV2Command =
  BuildBazelRemoteExecutionV2Command'
    { _bbrevcPlatform :: !(Maybe BuildBazelRemoteExecutionV2Platform)
    , _bbrevcOutputDirectories :: !(Maybe [Text])
    , _bbrevcWorkingDirectory :: !(Maybe Text)
    , _bbrevcArguments :: !(Maybe [Text])
    , _bbrevcOutputPaths :: !(Maybe [Text])
    , _bbrevcOutputFiles :: !(Maybe [Text])
    , _bbrevcEnvironmentVariables :: !(Maybe [BuildBazelRemoteExecutionV2CommandEnvironmentVariable])
    , _bbrevcOutputNodeProperties :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2Command' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevcPlatform'
--
-- * 'bbrevcOutputDirectories'
--
-- * 'bbrevcWorkingDirectory'
--
-- * 'bbrevcArguments'
--
-- * 'bbrevcOutputPaths'
--
-- * 'bbrevcOutputFiles'
--
-- * 'bbrevcEnvironmentVariables'
--
-- * 'bbrevcOutputNodeProperties'
buildBazelRemoteExecutionV2Command
    :: BuildBazelRemoteExecutionV2Command
buildBazelRemoteExecutionV2Command =
  BuildBazelRemoteExecutionV2Command'
    { _bbrevcPlatform = Nothing
    , _bbrevcOutputDirectories = Nothing
    , _bbrevcWorkingDirectory = Nothing
    , _bbrevcArguments = Nothing
    , _bbrevcOutputPaths = Nothing
    , _bbrevcOutputFiles = Nothing
    , _bbrevcEnvironmentVariables = Nothing
    , _bbrevcOutputNodeProperties = Nothing
    }


-- | The platform requirements for the execution environment. The server MAY
-- choose to execute the action on any worker satisfying the requirements,
-- so the client SHOULD ensure that running the action on any such worker
-- will have the same result. A detailed lexicon for this can be found in
-- the accompanying platform.md. DEPRECATED as of v2.2: platform properties
-- are now specified directly in the action. See documentation note in the
-- Action for migration.
bbrevcPlatform :: Lens' BuildBazelRemoteExecutionV2Command (Maybe BuildBazelRemoteExecutionV2Platform)
bbrevcPlatform
  = lens _bbrevcPlatform
      (\ s a -> s{_bbrevcPlatform = a})

-- | A list of the output directories that the client expects to retrieve
-- from the action. Only the listed directories will be returned (an entire
-- directory structure will be returned as a Tree message digest, see
-- OutputDirectory), as well as files listed in \`output_files\`. Other
-- files or directories that may be created during command execution are
-- discarded. The paths are relative to the working directory of the action
-- execution. The paths are specified using a single forward slash (\`\/\`)
-- as a path separator, even if the execution platform natively uses a
-- different separator. The path MUST NOT include a trailing slash, nor a
-- leading slash, being a relative path. The special value of empty string
-- is allowed, although not recommended, and can be used to capture the
-- entire working directory tree, including inputs. In order to ensure
-- consistent hashing of the same Action, the output paths MUST be sorted
-- lexicographically by code point (or, equivalently, by UTF-8 bytes). An
-- output directory cannot be duplicated or have the same path as any of
-- the listed output files. An output directory is allowed to be a parent
-- of another output directory. Directories leading up to the output
-- directories (but not the output directories themselves) are created by
-- the worker prior to execution, even if they are not explicitly part of
-- the input root. DEPRECATED since 2.1: Use \`output_paths\` instead.
bbrevcOutputDirectories :: Lens' BuildBazelRemoteExecutionV2Command [Text]
bbrevcOutputDirectories
  = lens _bbrevcOutputDirectories
      (\ s a -> s{_bbrevcOutputDirectories = a})
      . _Default
      . _Coerce

-- | The working directory, relative to the input root, for the command to
-- run in. It must be a directory which exists in the input tree. If it is
-- left empty, then the action is run in the input root.
bbrevcWorkingDirectory :: Lens' BuildBazelRemoteExecutionV2Command (Maybe Text)
bbrevcWorkingDirectory
  = lens _bbrevcWorkingDirectory
      (\ s a -> s{_bbrevcWorkingDirectory = a})

-- | The arguments to the command. The first argument must be the path to the
-- executable, which must be either a relative path, in which case it is
-- evaluated with respect to the input root, or an absolute path.
bbrevcArguments :: Lens' BuildBazelRemoteExecutionV2Command [Text]
bbrevcArguments
  = lens _bbrevcArguments
      (\ s a -> s{_bbrevcArguments = a})
      . _Default
      . _Coerce

-- | A list of the output paths that the client expects to retrieve from the
-- action. Only the listed paths will be returned to the client as output.
-- The type of the output (file or directory) is not specified, and will be
-- determined by the server after action execution. If the resulting path
-- is a file, it will be returned in an OutputFile) typed field. If the
-- path is a directory, the entire directory structure will be returned as
-- a Tree message digest, see OutputDirectory) Other files or directories
-- that may be created during command execution are discarded. The paths
-- are relative to the working directory of the action execution. The paths
-- are specified using a single forward slash (\`\/\`) as a path separator,
-- even if the execution platform natively uses a different separator. The
-- path MUST NOT include a trailing slash, nor a leading slash, being a
-- relative path. In order to ensure consistent hashing of the same Action,
-- the output paths MUST be deduplicated and sorted lexicographically by
-- code point (or, equivalently, by UTF-8 bytes). Directories leading up to
-- the output paths are created by the worker prior to execution, even if
-- they are not explicitly part of the input root. New in v2.1: this field
-- supersedes the DEPRECATED \`output_files\` and \`output_directories\`
-- fields. If \`output_paths\` is used, \`output_files\` and
-- \`output_directories\` will be ignored!
bbrevcOutputPaths :: Lens' BuildBazelRemoteExecutionV2Command [Text]
bbrevcOutputPaths
  = lens _bbrevcOutputPaths
      (\ s a -> s{_bbrevcOutputPaths = a})
      . _Default
      . _Coerce

-- | A list of the output files that the client expects to retrieve from the
-- action. Only the listed files, as well as directories listed in
-- \`output_directories\`, will be returned to the client as output. Other
-- files or directories that may be created during command execution are
-- discarded. The paths are relative to the working directory of the action
-- execution. The paths are specified using a single forward slash (\`\/\`)
-- as a path separator, even if the execution platform natively uses a
-- different separator. The path MUST NOT include a trailing slash, nor a
-- leading slash, being a relative path. In order to ensure consistent
-- hashing of the same Action, the output paths MUST be sorted
-- lexicographically by code point (or, equivalently, by UTF-8 bytes). An
-- output file cannot be duplicated, be a parent of another output file, or
-- have the same path as any of the listed output directories. Directories
-- leading up to the output files are created by the worker prior to
-- execution, even if they are not explicitly part of the input root.
-- DEPRECATED since v2.1: Use \`output_paths\` instead.
bbrevcOutputFiles :: Lens' BuildBazelRemoteExecutionV2Command [Text]
bbrevcOutputFiles
  = lens _bbrevcOutputFiles
      (\ s a -> s{_bbrevcOutputFiles = a})
      . _Default
      . _Coerce

-- | The environment variables to set when running the program. The worker
-- may provide its own default environment variables; these defaults can be
-- overridden using this field. Additional variables can also be specified.
-- In order to ensure that equivalent Commands always hash to the same
-- value, the environment variables MUST be lexicographically sorted by
-- name. Sorting of strings is done by code point, equivalently, by the
-- UTF-8 bytes.
bbrevcEnvironmentVariables :: Lens' BuildBazelRemoteExecutionV2Command [BuildBazelRemoteExecutionV2CommandEnvironmentVariable]
bbrevcEnvironmentVariables
  = lens _bbrevcEnvironmentVariables
      (\ s a -> s{_bbrevcEnvironmentVariables = a})
      . _Default
      . _Coerce

-- | A list of keys for node properties the client expects to retrieve for
-- output files and directories. Keys are either names of string-based
-- NodeProperty or names of fields in NodeProperties. In order to ensure
-- that equivalent \`Action\`s always hash to the same value, the node
-- properties MUST be lexicographically sorted by name. Sorting of strings
-- is done by code point, equivalently, by the UTF-8 bytes. The
-- interpretation of string-based properties is server-dependent. If a
-- property is not recognized by the server, the server will return an
-- \`INVALID_ARGUMENT\`.
bbrevcOutputNodeProperties :: Lens' BuildBazelRemoteExecutionV2Command [Text]
bbrevcOutputNodeProperties
  = lens _bbrevcOutputNodeProperties
      (\ s a -> s{_bbrevcOutputNodeProperties = a})
      . _Default
      . _Coerce

instance FromJSON BuildBazelRemoteExecutionV2Command
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2Command"
              (\ o ->
                 BuildBazelRemoteExecutionV2Command' <$>
                   (o .:? "platform") <*>
                     (o .:? "outputDirectories" .!= mempty)
                     <*> (o .:? "workingDirectory")
                     <*> (o .:? "arguments" .!= mempty)
                     <*> (o .:? "outputPaths" .!= mempty)
                     <*> (o .:? "outputFiles" .!= mempty)
                     <*> (o .:? "environmentVariables" .!= mempty)
                     <*> (o .:? "outputNodeProperties" .!= mempty))

instance ToJSON BuildBazelRemoteExecutionV2Command
         where
        toJSON BuildBazelRemoteExecutionV2Command'{..}
          = object
              (catMaybes
                 [("platform" .=) <$> _bbrevcPlatform,
                  ("outputDirectories" .=) <$>
                    _bbrevcOutputDirectories,
                  ("workingDirectory" .=) <$> _bbrevcWorkingDirectory,
                  ("arguments" .=) <$> _bbrevcArguments,
                  ("outputPaths" .=) <$> _bbrevcOutputPaths,
                  ("outputFiles" .=) <$> _bbrevcOutputFiles,
                  ("environmentVariables" .=) <$>
                    _bbrevcEnvironmentVariables,
                  ("outputNodeProperties" .=) <$>
                    _bbrevcOutputNodeProperties])

-- | A single property for FileNodes, DirectoryNodes, and SymlinkNodes. The
-- server is responsible for specifying the property \`name\`s that it
-- accepts. If permitted by the server, the same \`name\` may occur
-- multiple times.
--
-- /See:/ 'buildBazelRemoteExecutionV2NodeProperty' smart constructor.
data BuildBazelRemoteExecutionV2NodeProperty =
  BuildBazelRemoteExecutionV2NodeProperty'
    { _bbrevnpValue :: !(Maybe Text)
    , _bbrevnpName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2NodeProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevnpValue'
--
-- * 'bbrevnpName'
buildBazelRemoteExecutionV2NodeProperty
    :: BuildBazelRemoteExecutionV2NodeProperty
buildBazelRemoteExecutionV2NodeProperty =
  BuildBazelRemoteExecutionV2NodeProperty'
    {_bbrevnpValue = Nothing, _bbrevnpName = Nothing}


-- | The property value.
bbrevnpValue :: Lens' BuildBazelRemoteExecutionV2NodeProperty (Maybe Text)
bbrevnpValue
  = lens _bbrevnpValue (\ s a -> s{_bbrevnpValue = a})

-- | The property name.
bbrevnpName :: Lens' BuildBazelRemoteExecutionV2NodeProperty (Maybe Text)
bbrevnpName
  = lens _bbrevnpName (\ s a -> s{_bbrevnpName = a})

instance FromJSON
           BuildBazelRemoteExecutionV2NodeProperty
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2NodeProperty"
              (\ o ->
                 BuildBazelRemoteExecutionV2NodeProperty' <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON
           BuildBazelRemoteExecutionV2NodeProperty
         where
        toJSON BuildBazelRemoteExecutionV2NodeProperty'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _bbrevnpValue,
                  ("name" .=) <$> _bbrevnpName])

-- | Details for the tool used to call the API.
--
-- /See:/ 'buildBazelRemoteExecutionV2ToolDetails' smart constructor.
data BuildBazelRemoteExecutionV2ToolDetails =
  BuildBazelRemoteExecutionV2ToolDetails'
    { _bbrevtdToolName :: !(Maybe Text)
    , _bbrevtdToolVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ToolDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevtdToolName'
--
-- * 'bbrevtdToolVersion'
buildBazelRemoteExecutionV2ToolDetails
    :: BuildBazelRemoteExecutionV2ToolDetails
buildBazelRemoteExecutionV2ToolDetails =
  BuildBazelRemoteExecutionV2ToolDetails'
    {_bbrevtdToolName = Nothing, _bbrevtdToolVersion = Nothing}


-- | Name of the tool, e.g. bazel.
bbrevtdToolName :: Lens' BuildBazelRemoteExecutionV2ToolDetails (Maybe Text)
bbrevtdToolName
  = lens _bbrevtdToolName
      (\ s a -> s{_bbrevtdToolName = a})

-- | Version of the tool used for the request, e.g. 5.0.3.
bbrevtdToolVersion :: Lens' BuildBazelRemoteExecutionV2ToolDetails (Maybe Text)
bbrevtdToolVersion
  = lens _bbrevtdToolVersion
      (\ s a -> s{_bbrevtdToolVersion = a})

instance FromJSON
           BuildBazelRemoteExecutionV2ToolDetails
         where
        parseJSON
          = withObject "BuildBazelRemoteExecutionV2ToolDetails"
              (\ o ->
                 BuildBazelRemoteExecutionV2ToolDetails' <$>
                   (o .:? "toolName") <*> (o .:? "toolVersion"))

instance ToJSON
           BuildBazelRemoteExecutionV2ToolDetails
         where
        toJSON BuildBazelRemoteExecutionV2ToolDetails'{..}
          = object
              (catMaybes
                 [("toolName" .=) <$> _bbrevtdToolName,
                  ("toolVersion" .=) <$> _bbrevtdToolVersion])

--
-- /See:/ 'buildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem' smart constructor.
newtype BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem =
  BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem'
    { _bbreveamamiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbreveamamiAddtional'
buildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem
    :: HashMap Text JSONValue -- ^ 'bbreveamamiAddtional'
    -> BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem
buildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem pBbreveamamiAddtional_ =
  BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem'
    {_bbreveamamiAddtional = _Coerce # pBbreveamamiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
bbreveamamiAddtional :: Lens' BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem (HashMap Text JSONValue)
bbreveamamiAddtional
  = lens _bbreveamamiAddtional
      (\ s a -> s{_bbreveamamiAddtional = a})
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem'
                   <$> (parseJSONObject o))

instance ToJSON
           BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem
         where
        toJSON = toJSON . _bbreveamamiAddtional

-- | Capabilities of the remote cache system.
--
-- /See:/ 'buildBazelRemoteExecutionV2CacheCapabilities' smart constructor.
data BuildBazelRemoteExecutionV2CacheCapabilities =
  BuildBazelRemoteExecutionV2CacheCapabilities'
    { _bbrevccSymlinkAbsolutePathStrategy :: !(Maybe BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy)
    , _bbrevccMaxBatchTotalSizeBytes :: !(Maybe (Textual Int64))
    , _bbrevccDigestFunction :: !(Maybe [BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem])
    , _bbrevccSupportedCompressor :: !(Maybe [BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem])
    , _bbrevccActionCacheUpdateCapabilities :: !(Maybe BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities)
    , _bbrevccCachePriorityCapabilities :: !(Maybe BuildBazelRemoteExecutionV2PriorityCapabilities)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2CacheCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevccSymlinkAbsolutePathStrategy'
--
-- * 'bbrevccMaxBatchTotalSizeBytes'
--
-- * 'bbrevccDigestFunction'
--
-- * 'bbrevccSupportedCompressor'
--
-- * 'bbrevccActionCacheUpdateCapabilities'
--
-- * 'bbrevccCachePriorityCapabilities'
buildBazelRemoteExecutionV2CacheCapabilities
    :: BuildBazelRemoteExecutionV2CacheCapabilities
buildBazelRemoteExecutionV2CacheCapabilities =
  BuildBazelRemoteExecutionV2CacheCapabilities'
    { _bbrevccSymlinkAbsolutePathStrategy = Nothing
    , _bbrevccMaxBatchTotalSizeBytes = Nothing
    , _bbrevccDigestFunction = Nothing
    , _bbrevccSupportedCompressor = Nothing
    , _bbrevccActionCacheUpdateCapabilities = Nothing
    , _bbrevccCachePriorityCapabilities = Nothing
    }


-- | Whether absolute symlink targets are supported.
bbrevccSymlinkAbsolutePathStrategy :: Lens' BuildBazelRemoteExecutionV2CacheCapabilities (Maybe BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy)
bbrevccSymlinkAbsolutePathStrategy
  = lens _bbrevccSymlinkAbsolutePathStrategy
      (\ s a -> s{_bbrevccSymlinkAbsolutePathStrategy = a})

-- | Maximum total size of blobs to be uploaded\/downloaded using batch
-- methods. A value of 0 means no limit is set, although in practice there
-- will always be a message size limitation of the protocol in use, e.g.
-- GRPC.
bbrevccMaxBatchTotalSizeBytes :: Lens' BuildBazelRemoteExecutionV2CacheCapabilities (Maybe Int64)
bbrevccMaxBatchTotalSizeBytes
  = lens _bbrevccMaxBatchTotalSizeBytes
      (\ s a -> s{_bbrevccMaxBatchTotalSizeBytes = a})
      . mapping _Coerce

-- | All the digest functions supported by the remote cache. Remote cache may
-- support multiple digest functions simultaneously.
bbrevccDigestFunction :: Lens' BuildBazelRemoteExecutionV2CacheCapabilities [BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem]
bbrevccDigestFunction
  = lens _bbrevccDigestFunction
      (\ s a -> s{_bbrevccDigestFunction = a})
      . _Default
      . _Coerce

-- | Compressors supported by the \"compressed-blobs\" bytestream resources.
-- Servers MUST support identity\/no-compression, even if it is not listed
-- here. Note that this does not imply which if any compressors are
-- supported by the server at the gRPC level.
bbrevccSupportedCompressor :: Lens' BuildBazelRemoteExecutionV2CacheCapabilities [BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem]
bbrevccSupportedCompressor
  = lens _bbrevccSupportedCompressor
      (\ s a -> s{_bbrevccSupportedCompressor = a})
      . _Default
      . _Coerce

-- | Capabilities for updating the action cache.
bbrevccActionCacheUpdateCapabilities :: Lens' BuildBazelRemoteExecutionV2CacheCapabilities (Maybe BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities)
bbrevccActionCacheUpdateCapabilities
  = lens _bbrevccActionCacheUpdateCapabilities
      (\ s a ->
         s{_bbrevccActionCacheUpdateCapabilities = a})

-- | Supported cache priority range for both CAS and ActionCache.
bbrevccCachePriorityCapabilities :: Lens' BuildBazelRemoteExecutionV2CacheCapabilities (Maybe BuildBazelRemoteExecutionV2PriorityCapabilities)
bbrevccCachePriorityCapabilities
  = lens _bbrevccCachePriorityCapabilities
      (\ s a -> s{_bbrevccCachePriorityCapabilities = a})

instance FromJSON
           BuildBazelRemoteExecutionV2CacheCapabilities
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2CacheCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2CacheCapabilities' <$>
                   (o .:? "symlinkAbsolutePathStrategy") <*>
                     (o .:? "maxBatchTotalSizeBytes")
                     <*> (o .:? "digestFunction" .!= mempty)
                     <*> (o .:? "supportedCompressor" .!= mempty)
                     <*> (o .:? "actionCacheUpdateCapabilities")
                     <*> (o .:? "cachePriorityCapabilities"))

instance ToJSON
           BuildBazelRemoteExecutionV2CacheCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2CacheCapabilities'{..}
          = object
              (catMaybes
                 [("symlinkAbsolutePathStrategy" .=) <$>
                    _bbrevccSymlinkAbsolutePathStrategy,
                  ("maxBatchTotalSizeBytes" .=) <$>
                    _bbrevccMaxBatchTotalSizeBytes,
                  ("digestFunction" .=) <$> _bbrevccDigestFunction,
                  ("supportedCompressor" .=) <$>
                    _bbrevccSupportedCompressor,
                  ("actionCacheUpdateCapabilities" .=) <$>
                    _bbrevccActionCacheUpdateCapabilities,
                  ("cachePriorityCapabilities" .=) <$>
                    _bbrevccCachePriorityCapabilities])

-- | CommandEvents contains counters for the number of warnings and errors
-- that occurred during the execution of a command.
--
-- /See:/ 'googleDevtoolsRemotebuildbotCommandEvents' smart constructor.
data GoogleDevtoolsRemotebuildbotCommandEvents =
  GoogleDevtoolsRemotebuildbotCommandEvents'
    { _gdrceDockerImageName :: !(Maybe Text)
    , _gdrceDockerCacheHit :: !(Maybe Bool)
    , _gdrceNumErrors :: !(Maybe (Textual Word64))
    , _gdrceInputCacheMiss :: !(Maybe (Textual Double))
    , _gdrceNumWarnings :: !(Maybe (Textual Word64))
    , _gdrceOutputLocation :: !(Maybe GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation)
    , _gdrceCmUsage :: !(Maybe GoogleDevtoolsRemotebuildbotCommandEventsCmUsage)
    , _gdrceUsedAsyncContainer :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildbotCommandEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrceDockerImageName'
--
-- * 'gdrceDockerCacheHit'
--
-- * 'gdrceNumErrors'
--
-- * 'gdrceInputCacheMiss'
--
-- * 'gdrceNumWarnings'
--
-- * 'gdrceOutputLocation'
--
-- * 'gdrceCmUsage'
--
-- * 'gdrceUsedAsyncContainer'
googleDevtoolsRemotebuildbotCommandEvents
    :: GoogleDevtoolsRemotebuildbotCommandEvents
googleDevtoolsRemotebuildbotCommandEvents =
  GoogleDevtoolsRemotebuildbotCommandEvents'
    { _gdrceDockerImageName = Nothing
    , _gdrceDockerCacheHit = Nothing
    , _gdrceNumErrors = Nothing
    , _gdrceInputCacheMiss = Nothing
    , _gdrceNumWarnings = Nothing
    , _gdrceOutputLocation = Nothing
    , _gdrceCmUsage = Nothing
    , _gdrceUsedAsyncContainer = Nothing
    }


-- | Docker Image name.
gdrceDockerImageName :: Lens' GoogleDevtoolsRemotebuildbotCommandEvents (Maybe Text)
gdrceDockerImageName
  = lens _gdrceDockerImageName
      (\ s a -> s{_gdrceDockerImageName = a})

-- | Indicates whether we are using a cached Docker image (true) or had to
-- pull the Docker image (false) for this command.
gdrceDockerCacheHit :: Lens' GoogleDevtoolsRemotebuildbotCommandEvents (Maybe Bool)
gdrceDockerCacheHit
  = lens _gdrceDockerCacheHit
      (\ s a -> s{_gdrceDockerCacheHit = a})

-- | The number of errors reported.
gdrceNumErrors :: Lens' GoogleDevtoolsRemotebuildbotCommandEvents (Maybe Word64)
gdrceNumErrors
  = lens _gdrceNumErrors
      (\ s a -> s{_gdrceNumErrors = a})
      . mapping _Coerce

-- | The input cache miss ratio.
gdrceInputCacheMiss :: Lens' GoogleDevtoolsRemotebuildbotCommandEvents (Maybe Double)
gdrceInputCacheMiss
  = lens _gdrceInputCacheMiss
      (\ s a -> s{_gdrceInputCacheMiss = a})
      . mapping _Coerce

-- | The number of warnings reported.
gdrceNumWarnings :: Lens' GoogleDevtoolsRemotebuildbotCommandEvents (Maybe Word64)
gdrceNumWarnings
  = lens _gdrceNumWarnings
      (\ s a -> s{_gdrceNumWarnings = a})
      . mapping _Coerce

-- | Indicates whether output files and\/or output directories were found
-- relative to the execution root or to the user provided work directory or
-- both or none.
gdrceOutputLocation :: Lens' GoogleDevtoolsRemotebuildbotCommandEvents (Maybe GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation)
gdrceOutputLocation
  = lens _gdrceOutputLocation
      (\ s a -> s{_gdrceOutputLocation = a})

-- | Indicates if and how Container Manager is being used for task execution.
gdrceCmUsage :: Lens' GoogleDevtoolsRemotebuildbotCommandEvents (Maybe GoogleDevtoolsRemotebuildbotCommandEventsCmUsage)
gdrceCmUsage
  = lens _gdrceCmUsage (\ s a -> s{_gdrceCmUsage = a})

-- | Indicates whether an asynchronous container was used for execution.
gdrceUsedAsyncContainer :: Lens' GoogleDevtoolsRemotebuildbotCommandEvents (Maybe Bool)
gdrceUsedAsyncContainer
  = lens _gdrceUsedAsyncContainer
      (\ s a -> s{_gdrceUsedAsyncContainer = a})

instance FromJSON
           GoogleDevtoolsRemotebuildbotCommandEvents
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildbotCommandEvents"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotCommandEvents' <$>
                   (o .:? "dockerImageName") <*>
                     (o .:? "dockerCacheHit")
                     <*> (o .:? "numErrors")
                     <*> (o .:? "inputCacheMiss")
                     <*> (o .:? "numWarnings")
                     <*> (o .:? "outputLocation")
                     <*> (o .:? "cmUsage")
                     <*> (o .:? "usedAsyncContainer"))

instance ToJSON
           GoogleDevtoolsRemotebuildbotCommandEvents
         where
        toJSON GoogleDevtoolsRemotebuildbotCommandEvents'{..}
          = object
              (catMaybes
                 [("dockerImageName" .=) <$> _gdrceDockerImageName,
                  ("dockerCacheHit" .=) <$> _gdrceDockerCacheHit,
                  ("numErrors" .=) <$> _gdrceNumErrors,
                  ("inputCacheMiss" .=) <$> _gdrceInputCacheMiss,
                  ("numWarnings" .=) <$> _gdrceNumWarnings,
                  ("outputLocation" .=) <$> _gdrceOutputLocation,
                  ("cmUsage" .=) <$> _gdrceCmUsage,
                  ("usedAsyncContainer" .=) <$>
                    _gdrceUsedAsyncContainer])

-- | Describes the expected outputs of the command.
--
-- /See:/ 'googleDevtoolsRemoteworkersV1test2CommandTaskOutputs' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs'
    { _gdrvctoDirectories :: !(Maybe [Text])
    , _gdrvctoStderrDestination :: !(Maybe Text)
    , _gdrvctoFiles :: !(Maybe [Text])
    , _gdrvctoStdoutDestination :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrvctoDirectories'
--
-- * 'gdrvctoStderrDestination'
--
-- * 'gdrvctoFiles'
--
-- * 'gdrvctoStdoutDestination'
googleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    :: GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
googleDevtoolsRemoteworkersV1test2CommandTaskOutputs =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs'
    { _gdrvctoDirectories = Nothing
    , _gdrvctoStderrDestination = Nothing
    , _gdrvctoFiles = Nothing
    , _gdrvctoStdoutDestination = Nothing
    }


-- | A list of expected directories, relative to the execution root. All
-- paths MUST be delimited by forward slashes.
gdrvctoDirectories :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs [Text]
gdrvctoDirectories
  = lens _gdrvctoDirectories
      (\ s a -> s{_gdrvctoDirectories = a})
      . _Default
      . _Coerce

-- | The destination to which any stderr should be sent. The method by which
-- the bot should send the stream contents to that destination is not
-- defined in this API. As examples, the destination could be a file
-- referenced in the \`files\` field in this message, or it could be a URI
-- that must be written via the ByteStream API.
gdrvctoStderrDestination :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs (Maybe Text)
gdrvctoStderrDestination
  = lens _gdrvctoStderrDestination
      (\ s a -> s{_gdrvctoStderrDestination = a})

-- | A list of expected files, relative to the execution root. All paths MUST
-- be delimited by forward slashes.
gdrvctoFiles :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs [Text]
gdrvctoFiles
  = lens _gdrvctoFiles (\ s a -> s{_gdrvctoFiles = a})
      . _Default
      . _Coerce

-- | The destination to which any stdout should be sent. The method by which
-- the bot should send the stream contents to that destination is not
-- defined in this API. As examples, the destination could be a file
-- referenced in the \`files\` field in this message, or it could be a URI
-- that must be written via the ByteStream API.
gdrvctoStdoutDestination :: Lens' GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs (Maybe Text)
gdrvctoStdoutDestination
  = lens _gdrvctoStdoutDestination
      (\ s a -> s{_gdrvctoStdoutDestination = a})

instance FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs'
                   <$>
                   (o .:? "directories" .!= mempty) <*>
                     (o .:? "stderrDestination")
                     <*> (o .:? "files" .!= mempty)
                     <*> (o .:? "stdoutDestination"))

instance ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs'{..}
          = object
              (catMaybes
                 [("directories" .=) <$> _gdrvctoDirectories,
                  ("stderrDestination" .=) <$>
                    _gdrvctoStderrDestination,
                  ("files" .=) <$> _gdrvctoFiles,
                  ("stdoutDestination" .=) <$>
                    _gdrvctoStdoutDestination])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone :: !(Maybe Bool)
    , _gloError :: !(Maybe GoogleRpcStatus)
    , _gloResponse :: !(Maybe GoogleLongrunningOperationResponse)
    , _gloName :: !(Maybe Text)
    , _gloMetadata :: !(Maybe GoogleLongrunningOperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gloDone'
--
-- * 'gloError'
--
-- * 'gloResponse'
--
-- * 'gloName'
--
-- * 'gloMetadata'
googleLongrunningOperation
    :: GoogleLongrunningOperation
googleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone = Nothing
    , _gloError = Nothing
    , _gloResponse = Nothing
    , _gloName = Nothing
    , _gloMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
gloDone :: Lens' GoogleLongrunningOperation (Maybe Bool)
gloDone = lens _gloDone (\ s a -> s{_gloDone = a})

-- | The error result of the operation in case of failure or cancellation.
gloError :: Lens' GoogleLongrunningOperation (Maybe GoogleRpcStatus)
gloError = lens _gloError (\ s a -> s{_gloError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
gloResponse :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationResponse)
gloResponse
  = lens _gloResponse (\ s a -> s{_gloResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
gloName :: Lens' GoogleLongrunningOperation (Maybe Text)
gloName = lens _gloName (\ s a -> s{_gloName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
gloMetadata :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationMetadata)
gloMetadata
  = lens _gloMetadata (\ s a -> s{_gloMetadata = a})

instance FromJSON GoogleLongrunningOperation where
        parseJSON
          = withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _gloDone,
                  ("error" .=) <$> _gloError,
                  ("response" .=) <$> _gloResponse,
                  ("name" .=) <$> _gloName,
                  ("metadata" .=) <$> _gloMetadata])

-- | A response corresponding to a single blob that the client tried to
-- upload.
--
-- /See:/ 'buildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse' smart constructor.
data BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse'
    { _bStatus :: !(Maybe GoogleRpcStatus)
    , _bDigest :: !(Maybe BuildBazelRemoteExecutionV2Digest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bStatus'
--
-- * 'bDigest'
buildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    :: BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
buildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse'
    {_bStatus = Nothing, _bDigest = Nothing}


-- | The result of attempting to upload that blob.
bStatus :: Lens' BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse (Maybe GoogleRpcStatus)
bStatus = lens _bStatus (\ s a -> s{_bStatus = a})

-- | The blob digest to which this response corresponds.
bDigest :: Lens' BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse (Maybe BuildBazelRemoteExecutionV2Digest)
bDigest = lens _bDigest (\ s a -> s{_bDigest = a})

instance FromJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse'
                   <$> (o .:? "status") <*> (o .:? "digest"))

instance ToJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bStatus,
                  ("digest" .=) <$> _bDigest])

-- | A response message for ContentAddressableStorage.BatchReadBlobs.
--
-- /See:/ 'buildBazelRemoteExecutionV2BatchReadBlobsResponse' smart constructor.
newtype BuildBazelRemoteExecutionV2BatchReadBlobsResponse =
  BuildBazelRemoteExecutionV2BatchReadBlobsResponse'
    { _bbrevbrbrResponses :: Maybe [BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchReadBlobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrevbrbrResponses'
buildBazelRemoteExecutionV2BatchReadBlobsResponse
    :: BuildBazelRemoteExecutionV2BatchReadBlobsResponse
buildBazelRemoteExecutionV2BatchReadBlobsResponse =
  BuildBazelRemoteExecutionV2BatchReadBlobsResponse'
    {_bbrevbrbrResponses = Nothing}


-- | The responses to the requests.
bbrevbrbrResponses :: Lens' BuildBazelRemoteExecutionV2BatchReadBlobsResponse [BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse]
bbrevbrbrResponses
  = lens _bbrevbrbrResponses
      (\ s a -> s{_bbrevbrbrResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsResponse
         where
        parseJSON
          = withObject
              "BuildBazelRemoteExecutionV2BatchReadBlobsResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchReadBlobsResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchReadBlobsResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _bbrevbrbrResponses])

-- | ResourceUsage is the system resource usage of the host machine.
--
-- /See:/ 'googleDevtoolsRemotebuildbotResourceUsage' smart constructor.
data GoogleDevtoolsRemotebuildbotResourceUsage =
  GoogleDevtoolsRemotebuildbotResourceUsage'
    { _gdrruMemoryUsage :: !(Maybe GoogleDevtoolsRemotebuildbotResourceUsageStat)
    , _gdrruDiskUsage :: !(Maybe GoogleDevtoolsRemotebuildbotResourceUsageStat)
    , _gdrruCPUUsedPercent :: !(Maybe (Textual Double))
    , _gdrruTotalDiskIoStats :: !(Maybe GoogleDevtoolsRemotebuildbotResourceUsageIOStats)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsRemotebuildbotResourceUsage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrruMemoryUsage'
--
-- * 'gdrruDiskUsage'
--
-- * 'gdrruCPUUsedPercent'
--
-- * 'gdrruTotalDiskIoStats'
googleDevtoolsRemotebuildbotResourceUsage
    :: GoogleDevtoolsRemotebuildbotResourceUsage
googleDevtoolsRemotebuildbotResourceUsage =
  GoogleDevtoolsRemotebuildbotResourceUsage'
    { _gdrruMemoryUsage = Nothing
    , _gdrruDiskUsage = Nothing
    , _gdrruCPUUsedPercent = Nothing
    , _gdrruTotalDiskIoStats = Nothing
    }


gdrruMemoryUsage :: Lens' GoogleDevtoolsRemotebuildbotResourceUsage (Maybe GoogleDevtoolsRemotebuildbotResourceUsageStat)
gdrruMemoryUsage
  = lens _gdrruMemoryUsage
      (\ s a -> s{_gdrruMemoryUsage = a})

gdrruDiskUsage :: Lens' GoogleDevtoolsRemotebuildbotResourceUsage (Maybe GoogleDevtoolsRemotebuildbotResourceUsageStat)
gdrruDiskUsage
  = lens _gdrruDiskUsage
      (\ s a -> s{_gdrruDiskUsage = a})

gdrruCPUUsedPercent :: Lens' GoogleDevtoolsRemotebuildbotResourceUsage (Maybe Double)
gdrruCPUUsedPercent
  = lens _gdrruCPUUsedPercent
      (\ s a -> s{_gdrruCPUUsedPercent = a})
      . mapping _Coerce

gdrruTotalDiskIoStats :: Lens' GoogleDevtoolsRemotebuildbotResourceUsage (Maybe GoogleDevtoolsRemotebuildbotResourceUsageIOStats)
gdrruTotalDiskIoStats
  = lens _gdrruTotalDiskIoStats
      (\ s a -> s{_gdrruTotalDiskIoStats = a})

instance FromJSON
           GoogleDevtoolsRemotebuildbotResourceUsage
         where
        parseJSON
          = withObject
              "GoogleDevtoolsRemotebuildbotResourceUsage"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotResourceUsage' <$>
                   (o .:? "memoryUsage") <*> (o .:? "diskUsage") <*>
                     (o .:? "cpuUsedPercent")
                     <*> (o .:? "totalDiskIoStats"))

instance ToJSON
           GoogleDevtoolsRemotebuildbotResourceUsage
         where
        toJSON GoogleDevtoolsRemotebuildbotResourceUsage'{..}
          = object
              (catMaybes
                 [("memoryUsage" .=) <$> _gdrruMemoryUsage,
                  ("diskUsage" .=) <$> _gdrruDiskUsage,
                  ("cpuUsedPercent" .=) <$> _gdrruCPUUsedPercent,
                  ("totalDiskIoStats" .=) <$> _gdrruTotalDiskIoStats])
