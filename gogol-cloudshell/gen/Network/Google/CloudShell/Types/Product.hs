{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudShell.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudShell.Types.Product where

import Network.Google.CloudShell.Types.Sum
import Network.Google.Prelude

-- | Response message for AddPublicKey.
--
-- /See:/ 'addPublicKeyResponse' smart constructor.
newtype AddPublicKeyResponse =
  AddPublicKeyResponse'
    { _apkrKey :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddPublicKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkrKey'
addPublicKeyResponse
    :: AddPublicKeyResponse
addPublicKeyResponse = AddPublicKeyResponse' {_apkrKey = Nothing}


-- | Key that was added to the environment.
apkrKey :: Lens' AddPublicKeyResponse (Maybe Text)
apkrKey = lens _apkrKey (\ s a -> s{_apkrKey = a})

instance FromJSON AddPublicKeyResponse where
        parseJSON
          = withObject "AddPublicKeyResponse"
              (\ o -> AddPublicKeyResponse' <$> (o .:? "key"))

instance ToJSON AddPublicKeyResponse where
        toJSON AddPublicKeyResponse'{..}
          = object (catMaybes [("key" .=) <$> _apkrKey])

-- | Message included in the metadata field of operations returned from
-- CreateEnvironment.
--
-- /See:/ 'createEnvironmentMetadata' smart constructor.
data CreateEnvironmentMetadata =
  CreateEnvironmentMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateEnvironmentMetadata' with the minimum fields required to make a request.
--
createEnvironmentMetadata
    :: CreateEnvironmentMetadata
createEnvironmentMetadata = CreateEnvironmentMetadata'


instance FromJSON CreateEnvironmentMetadata where
        parseJSON
          = withObject "CreateEnvironmentMetadata"
              (\ o -> pure CreateEnvironmentMetadata')

instance ToJSON CreateEnvironmentMetadata where
        toJSON = const emptyObject

-- | Request message for StartEnvironment.
--
-- /See:/ 'startEnvironmentRequest' smart constructor.
data StartEnvironmentRequest =
  StartEnvironmentRequest'
    { _serAccessToken :: !(Maybe Text)
    , _serPublicKeys :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartEnvironmentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'serAccessToken'
--
-- * 'serPublicKeys'
startEnvironmentRequest
    :: StartEnvironmentRequest
startEnvironmentRequest =
  StartEnvironmentRequest' {_serAccessToken = Nothing, _serPublicKeys = Nothing}


-- | The initial access token passed to the environment. If this is present
-- and valid, the environment will be pre-authenticated with gcloud so that
-- the user can run gcloud commands in Cloud Shell without having to log
-- in. This code can be updated later by calling AuthorizeEnvironment.
serAccessToken :: Lens' StartEnvironmentRequest (Maybe Text)
serAccessToken
  = lens _serAccessToken
      (\ s a -> s{_serAccessToken = a})

-- | Public keys that should be added to the environment before it is
-- started.
serPublicKeys :: Lens' StartEnvironmentRequest [Text]
serPublicKeys
  = lens _serPublicKeys
      (\ s a -> s{_serPublicKeys = a})
      . _Default
      . _Coerce

instance FromJSON StartEnvironmentRequest where
        parseJSON
          = withObject "StartEnvironmentRequest"
              (\ o ->
                 StartEnvironmentRequest' <$>
                   (o .:? "accessToken") <*>
                     (o .:? "publicKeys" .!= mempty))

instance ToJSON StartEnvironmentRequest where
        toJSON StartEnvironmentRequest'{..}
          = object
              (catMaybes
                 [("accessToken" .=) <$> _serAccessToken,
                  ("publicKeys" .=) <$> _serPublicKeys])

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

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


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

-- | Request message for AuthorizeEnvironment.
--
-- /See:/ 'authorizeEnvironmentRequest' smart constructor.
data AuthorizeEnvironmentRequest =
  AuthorizeEnvironmentRequest'
    { _aerAccessToken :: !(Maybe Text)
    , _aerExpireTime :: !(Maybe DateTime')
    , _aerIdToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizeEnvironmentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aerAccessToken'
--
-- * 'aerExpireTime'
--
-- * 'aerIdToken'
authorizeEnvironmentRequest
    :: AuthorizeEnvironmentRequest
authorizeEnvironmentRequest =
  AuthorizeEnvironmentRequest'
    {_aerAccessToken = Nothing, _aerExpireTime = Nothing, _aerIdToken = Nothing}


-- | The OAuth access token that should be sent to the environment.
aerAccessToken :: Lens' AuthorizeEnvironmentRequest (Maybe Text)
aerAccessToken
  = lens _aerAccessToken
      (\ s a -> s{_aerAccessToken = a})

-- | The time when the credentials expire. If not set, defaults to one hour
-- from when the server received the request.
aerExpireTime :: Lens' AuthorizeEnvironmentRequest (Maybe UTCTime)
aerExpireTime
  = lens _aerExpireTime
      (\ s a -> s{_aerExpireTime = a})
      . mapping _DateTime

-- | The OAuth ID token that should be sent to the environment.
aerIdToken :: Lens' AuthorizeEnvironmentRequest (Maybe Text)
aerIdToken
  = lens _aerIdToken (\ s a -> s{_aerIdToken = a})

instance FromJSON AuthorizeEnvironmentRequest where
        parseJSON
          = withObject "AuthorizeEnvironmentRequest"
              (\ o ->
                 AuthorizeEnvironmentRequest' <$>
                   (o .:? "accessToken") <*> (o .:? "expireTime") <*>
                     (o .:? "idToken"))

instance ToJSON AuthorizeEnvironmentRequest where
        toJSON AuthorizeEnvironmentRequest'{..}
          = object
              (catMaybes
                 [("accessToken" .=) <$> _aerAccessToken,
                  ("expireTime" .=) <$> _aerExpireTime,
                  ("idToken" .=) <$> _aerIdToken])

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
    , _oMetadata :: !(Maybe OperationMetadata)
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

-- | A Cloud Shell environment, which is defined as the combination of a
-- Docker image specifying what is installed on the environment and a home
-- directory containing the user\'s data that will remain across sessions.
-- Each user has at least an environment with the ID \"default\".
--
-- /See:/ 'environment' smart constructor.
data Environment =
  Environment'
    { _eState :: !(Maybe EnvironmentState)
    , _ePublicKeys :: !(Maybe [Text])
    , _eWebHost :: !(Maybe Text)
    , _eSSHUsername :: !(Maybe Text)
    , _eName :: !(Maybe Text)
    , _eId :: !(Maybe Text)
    , _eSSHHost :: !(Maybe Text)
    , _eDockerImage :: !(Maybe Text)
    , _eSSHPort :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eState'
--
-- * 'ePublicKeys'
--
-- * 'eWebHost'
--
-- * 'eSSHUsername'
--
-- * 'eName'
--
-- * 'eId'
--
-- * 'eSSHHost'
--
-- * 'eDockerImage'
--
-- * 'eSSHPort'
environment
    :: Environment
environment =
  Environment'
    { _eState = Nothing
    , _ePublicKeys = Nothing
    , _eWebHost = Nothing
    , _eSSHUsername = Nothing
    , _eName = Nothing
    , _eId = Nothing
    , _eSSHHost = Nothing
    , _eDockerImage = Nothing
    , _eSSHPort = Nothing
    }


-- | Output only. Current execution state of this environment.
eState :: Lens' Environment (Maybe EnvironmentState)
eState = lens _eState (\ s a -> s{_eState = a})

-- | Output only. Public keys associated with the environment. Clients can
-- connect to this environment via SSH only if they possess a private key
-- corresponding to at least one of these public keys. Keys can be added to
-- or removed from the environment using the AddPublicKey and
-- RemovePublicKey methods.
ePublicKeys :: Lens' Environment [Text]
ePublicKeys
  = lens _ePublicKeys (\ s a -> s{_ePublicKeys = a}) .
      _Default
      . _Coerce

-- | Output only. Host to which clients can connect to initiate HTTPS or WSS
-- connections with the environment.
eWebHost :: Lens' Environment (Maybe Text)
eWebHost = lens _eWebHost (\ s a -> s{_eWebHost = a})

-- | Output only. Username that clients should use when initiating SSH
-- sessions with the environment.
eSSHUsername :: Lens' Environment (Maybe Text)
eSSHUsername
  = lens _eSSHUsername (\ s a -> s{_eSSHUsername = a})

-- | Immutable. Full name of this resource, in the format
-- \`users\/{owner_email}\/environments\/{environment_id}\`.
-- \`{owner_email}\` is the email address of the user to whom this
-- environment belongs, and \`{environment_id}\` is the identifier of this
-- environment. For example,
-- \`users\/someone\'example.com\/environments\/default\`.
eName :: Lens' Environment (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | Output only. The environment\'s identifier, unique among the user\'s
-- environments.
eId :: Lens' Environment (Maybe Text)
eId = lens _eId (\ s a -> s{_eId = a})

-- | Output only. Host to which clients can connect to initiate SSH sessions
-- with the environment.
eSSHHost :: Lens' Environment (Maybe Text)
eSSHHost = lens _eSSHHost (\ s a -> s{_eSSHHost = a})

-- | Required. Immutable. Full path to the Docker image used to run this
-- environment, e.g. \"gcr.io\/dev-con\/cloud-devshell:latest\".
eDockerImage :: Lens' Environment (Maybe Text)
eDockerImage
  = lens _eDockerImage (\ s a -> s{_eDockerImage = a})

-- | Output only. Port to which clients can connect to initiate SSH sessions
-- with the environment.
eSSHPort :: Lens' Environment (Maybe Int32)
eSSHPort
  = lens _eSSHPort (\ s a -> s{_eSSHPort = a}) .
      mapping _Coerce

instance FromJSON Environment where
        parseJSON
          = withObject "Environment"
              (\ o ->
                 Environment' <$>
                   (o .:? "state") <*> (o .:? "publicKeys" .!= mempty)
                     <*> (o .:? "webHost")
                     <*> (o .:? "sshUsername")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "sshHost")
                     <*> (o .:? "dockerImage")
                     <*> (o .:? "sshPort"))

instance ToJSON Environment where
        toJSON Environment'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _eState,
                  ("publicKeys" .=) <$> _ePublicKeys,
                  ("webHost" .=) <$> _eWebHost,
                  ("sshUsername" .=) <$> _eSSHUsername,
                  ("name" .=) <$> _eName, ("id" .=) <$> _eId,
                  ("sshHost" .=) <$> _eSSHHost,
                  ("dockerImage" .=) <$> _eDockerImage,
                  ("sshPort" .=) <$> _eSSHPort])

-- | Message included in the metadata field of operations returned from
-- AuthorizeEnvironment.
--
-- /See:/ 'authorizeEnvironmentMetadata' smart constructor.
data AuthorizeEnvironmentMetadata =
  AuthorizeEnvironmentMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizeEnvironmentMetadata' with the minimum fields required to make a request.
--
authorizeEnvironmentMetadata
    :: AuthorizeEnvironmentMetadata
authorizeEnvironmentMetadata = AuthorizeEnvironmentMetadata'


instance FromJSON AuthorizeEnvironmentMetadata where
        parseJSON
          = withObject "AuthorizeEnvironmentMetadata"
              (\ o -> pure AuthorizeEnvironmentMetadata')

instance ToJSON AuthorizeEnvironmentMetadata where
        toJSON = const emptyObject

-- | Response message for RemovePublicKey.
--
-- /See:/ 'removePublicKeyResponse' smart constructor.
data RemovePublicKeyResponse =
  RemovePublicKeyResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemovePublicKeyResponse' with the minimum fields required to make a request.
--
removePublicKeyResponse
    :: RemovePublicKeyResponse
removePublicKeyResponse = RemovePublicKeyResponse'


instance FromJSON RemovePublicKeyResponse where
        parseJSON
          = withObject "RemovePublicKeyResponse"
              (\ o -> pure RemovePublicKeyResponse')

instance ToJSON RemovePublicKeyResponse where
        toJSON = const emptyObject

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

-- | Message included in the metadata field of operations returned from
-- AddPublicKey.
--
-- /See:/ 'addPublicKeyMetadata' smart constructor.
data AddPublicKeyMetadata =
  AddPublicKeyMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddPublicKeyMetadata' with the minimum fields required to make a request.
--
addPublicKeyMetadata
    :: AddPublicKeyMetadata
addPublicKeyMetadata = AddPublicKeyMetadata'


instance FromJSON AddPublicKeyMetadata where
        parseJSON
          = withObject "AddPublicKeyMetadata"
              (\ o -> pure AddPublicKeyMetadata')

instance ToJSON AddPublicKeyMetadata where
        toJSON = const emptyObject

-- | Response message for AuthorizeEnvironment.
--
-- /See:/ 'authorizeEnvironmentResponse' smart constructor.
data AuthorizeEnvironmentResponse =
  AuthorizeEnvironmentResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizeEnvironmentResponse' with the minimum fields required to make a request.
--
authorizeEnvironmentResponse
    :: AuthorizeEnvironmentResponse
authorizeEnvironmentResponse = AuthorizeEnvironmentResponse'


instance FromJSON AuthorizeEnvironmentResponse where
        parseJSON
          = withObject "AuthorizeEnvironmentResponse"
              (\ o -> pure AuthorizeEnvironmentResponse')

instance ToJSON AuthorizeEnvironmentResponse where
        toJSON = const emptyObject

-- | Message included in the metadata field of operations returned from
-- RemovePublicKey.
--
-- /See:/ 'removePublicKeyMetadata' smart constructor.
data RemovePublicKeyMetadata =
  RemovePublicKeyMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemovePublicKeyMetadata' with the minimum fields required to make a request.
--
removePublicKeyMetadata
    :: RemovePublicKeyMetadata
removePublicKeyMetadata = RemovePublicKeyMetadata'


instance FromJSON RemovePublicKeyMetadata where
        parseJSON
          = withObject "RemovePublicKeyMetadata"
              (\ o -> pure RemovePublicKeyMetadata')

instance ToJSON RemovePublicKeyMetadata where
        toJSON = const emptyObject

-- | Message included in the metadata field of operations returned from
-- StartEnvironment.
--
-- /See:/ 'startEnvironmentMetadata' smart constructor.
newtype StartEnvironmentMetadata =
  StartEnvironmentMetadata'
    { _semState :: Maybe StartEnvironmentMetadataState
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartEnvironmentMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'semState'
startEnvironmentMetadata
    :: StartEnvironmentMetadata
startEnvironmentMetadata = StartEnvironmentMetadata' {_semState = Nothing}


-- | Current state of the environment being started.
semState :: Lens' StartEnvironmentMetadata (Maybe StartEnvironmentMetadataState)
semState = lens _semState (\ s a -> s{_semState = a})

instance FromJSON StartEnvironmentMetadata where
        parseJSON
          = withObject "StartEnvironmentMetadata"
              (\ o ->
                 StartEnvironmentMetadata' <$> (o .:? "state"))

instance ToJSON StartEnvironmentMetadata where
        toJSON StartEnvironmentMetadata'{..}
          = object (catMaybes [("state" .=) <$> _semState])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


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

-- | Request message for AddPublicKey.
--
-- /See:/ 'addPublicKeyRequest' smart constructor.
newtype AddPublicKeyRequest =
  AddPublicKeyRequest'
    { _aKey :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddPublicKeyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKey'
addPublicKeyRequest
    :: AddPublicKeyRequest
addPublicKeyRequest = AddPublicKeyRequest' {_aKey = Nothing}


-- | Key that should be added to the environment. Supported formats are
-- \`ssh-dss\` (see RFC4253), \`ssh-rsa\` (see RFC4253),
-- \`ecdsa-sha2-nistp256\` (see RFC5656), \`ecdsa-sha2-nistp384\` (see
-- RFC5656) and \`ecdsa-sha2-nistp521\` (see RFC5656). It should be
-- structured as , where part is encoded with Base64.
aKey :: Lens' AddPublicKeyRequest (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

instance FromJSON AddPublicKeyRequest where
        parseJSON
          = withObject "AddPublicKeyRequest"
              (\ o -> AddPublicKeyRequest' <$> (o .:? "key"))

instance ToJSON AddPublicKeyRequest where
        toJSON AddPublicKeyRequest'{..}
          = object (catMaybes [("key" .=) <$> _aKey])

-- | Message included in the response field of operations returned from
-- StartEnvironment once the operation is complete.
--
-- /See:/ 'startEnvironmentResponse' smart constructor.
newtype StartEnvironmentResponse =
  StartEnvironmentResponse'
    { _serEnvironment :: Maybe Environment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartEnvironmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'serEnvironment'
startEnvironmentResponse
    :: StartEnvironmentResponse
startEnvironmentResponse = StartEnvironmentResponse' {_serEnvironment = Nothing}


-- | Environment that was started.
serEnvironment :: Lens' StartEnvironmentResponse (Maybe Environment)
serEnvironment
  = lens _serEnvironment
      (\ s a -> s{_serEnvironment = a})

instance FromJSON StartEnvironmentResponse where
        parseJSON
          = withObject "StartEnvironmentResponse"
              (\ o ->
                 StartEnvironmentResponse' <$> (o .:? "environment"))

instance ToJSON StartEnvironmentResponse where
        toJSON StartEnvironmentResponse'{..}
          = object
              (catMaybes [("environment" .=) <$> _serEnvironment])

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

-- | Request message for RemovePublicKey.
--
-- /See:/ 'removePublicKeyRequest' smart constructor.
newtype RemovePublicKeyRequest =
  RemovePublicKeyRequest'
    { _rpkrKey :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemovePublicKeyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpkrKey'
removePublicKeyRequest
    :: RemovePublicKeyRequest
removePublicKeyRequest = RemovePublicKeyRequest' {_rpkrKey = Nothing}


-- | Key that should be removed from the environment.
rpkrKey :: Lens' RemovePublicKeyRequest (Maybe Text)
rpkrKey = lens _rpkrKey (\ s a -> s{_rpkrKey = a})

instance FromJSON RemovePublicKeyRequest where
        parseJSON
          = withObject "RemovePublicKeyRequest"
              (\ o -> RemovePublicKeyRequest' <$> (o .:? "key"))

instance ToJSON RemovePublicKeyRequest where
        toJSON RemovePublicKeyRequest'{..}
          = object (catMaybes [("key" .=) <$> _rpkrKey])

-- | Message included in the metadata field of operations returned from
-- DeleteEnvironment.
--
-- /See:/ 'deleteEnvironmentMetadata' smart constructor.
data DeleteEnvironmentMetadata =
  DeleteEnvironmentMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteEnvironmentMetadata' with the minimum fields required to make a request.
--
deleteEnvironmentMetadata
    :: DeleteEnvironmentMetadata
deleteEnvironmentMetadata = DeleteEnvironmentMetadata'


instance FromJSON DeleteEnvironmentMetadata where
        parseJSON
          = withObject "DeleteEnvironmentMetadata"
              (\ o -> pure DeleteEnvironmentMetadata')

instance ToJSON DeleteEnvironmentMetadata where
        toJSON = const emptyObject
