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

import           Network.Google.CloudShell.Types.Sum
import           Network.Google.Prelude

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
-- package \`google.rpc\` that can be used for common error conditions. #
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
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
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
    , _lorOperations    :: !(Maybe [Operation])
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
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
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
-- Each user has a single environment with the ID \"default\".
--
-- /See:/ 'environment' smart constructor.
data Environment =
  Environment'
    { _eState       :: !(Maybe EnvironmentState)
    , _ePublicKeys  :: !(Maybe [PublicKey])
    , _eSSHUsername :: !(Maybe Text)
    , _eName        :: !(Maybe Text)
    , _eId          :: !(Maybe Text)
    , _eSSHHost     :: !(Maybe Text)
    , _eDockerImage :: !(Maybe Text)
    , _eSSHPort     :: !(Maybe (Textual Int32))
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
-- or removed from the environment using the CreatePublicKey and
-- DeletePublicKey methods.
ePublicKeys :: Lens' Environment [PublicKey]
ePublicKeys
  = lens _ePublicKeys (\ s a -> s{_ePublicKeys = a}) .
      _Default
      . _Coerce

-- | Output only. Username that clients should use when initiating SSH
-- sessions with the environment.
eSSHUsername :: Lens' Environment (Maybe Text)
eSSHUsername
  = lens _eSSHUsername (\ s a -> s{_eSSHUsername = a})

-- | Output only. Full name of this resource, in the format
-- \`users\/{owner_email}\/environments\/{environment_id}\`.
-- \`{owner_email}\` is the email address of the user to whom this
-- environment belongs, and \`{environment_id}\` is the identifier of this
-- environment. For example,
-- \`users\/someone\'example.com\/environments\/default\`.
eName :: Lens' Environment (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | Output only. The environment\'s identifier, which is always \"default\".
eId :: Lens' Environment (Maybe Text)
eId = lens _eId (\ s a -> s{_eId = a})

-- | Output only. Host to which clients can connect to initiate SSH sessions
-- with the environment.
eSSHHost :: Lens' Environment (Maybe Text)
eSSHHost = lens _eSSHHost (\ s a -> s{_eSSHHost = a})

-- | Required. Full path to the Docker image used to run this environment,
-- e.g. \"gcr.io\/dev-con\/cloud-devshell:latest\".
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
                  ("sshUsername" .=) <$> _eSSHUsername,
                  ("name" .=) <$> _eName, ("id" .=) <$> _eId,
                  ("sshHost" .=) <$> _eSSHHost,
                  ("dockerImage" .=) <$> _eDockerImage,
                  ("sshPort" .=) <$> _eSSHPort])

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

-- | A public SSH key, corresponding to a private SSH key held by the client.
--
-- /See:/ 'publicKey' smart constructor.
data PublicKey =
  PublicKey'
    { _pkFormat :: !(Maybe PublicKeyFormat)
    , _pkKey    :: !(Maybe Bytes)
    , _pkName   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pkFormat'
--
-- * 'pkKey'
--
-- * 'pkName'
publicKey
    :: PublicKey
publicKey =
  PublicKey' {_pkFormat = Nothing, _pkKey = Nothing, _pkName = Nothing}


-- | Required. Format of this key\'s content.
pkFormat :: Lens' PublicKey (Maybe PublicKeyFormat)
pkFormat = lens _pkFormat (\ s a -> s{_pkFormat = a})

-- | Required. Content of this key.
pkKey :: Lens' PublicKey (Maybe ByteString)
pkKey
  = lens _pkKey (\ s a -> s{_pkKey = a}) .
      mapping _Bytes

-- | Output only. Full name of this resource, in the format
-- \`users\/{owner_email}\/environments\/{environment_id}\/publicKeys\/{key_id}\`.
-- \`{owner_email}\` is the email address of the user to whom the key
-- belongs. \`{environment_id}\` is the identifier of the environment to
-- which the key grants access. \`{key_id}\` is the unique identifier of
-- the key. For example,
-- \`users\/someone\'example.com\/environments\/default\/publicKeys\/myKey\`.
pkName :: Lens' PublicKey (Maybe Text)
pkName = lens _pkName (\ s a -> s{_pkName = a})

instance FromJSON PublicKey where
        parseJSON
          = withObject "PublicKey"
              (\ o ->
                 PublicKey' <$>
                   (o .:? "format") <*> (o .:? "key") <*>
                     (o .:? "name"))

instance ToJSON PublicKey where
        toJSON PublicKey'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _pkFormat, ("key" .=) <$> _pkKey,
                  ("name" .=) <$> _pkName])

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
