{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TPU.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TPU.Types.Product where

import           Network.Google.Prelude
import           Network.Google.TPU.Types.Sum

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

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations     :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}


-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | A accelerator type that a Node can be configured with.
--
-- /See:/ 'acceleratorType' smart constructor.
data AcceleratorType =
  AcceleratorType'
    { _atName :: !(Maybe Text)
    , _atType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AcceleratorType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atName'
--
-- * 'atType'
acceleratorType
    :: AcceleratorType
acceleratorType = AcceleratorType' {_atName = Nothing, _atType = Nothing}


-- | The resource name.
atName :: Lens' AcceleratorType (Maybe Text)
atName = lens _atName (\ s a -> s{_atName = a})

-- | the accelerator type.
atType :: Lens' AcceleratorType (Maybe Text)
atType = lens _atType (\ s a -> s{_atType = a})

instance FromJSON AcceleratorType where
        parseJSON
          = withObject "AcceleratorType"
              (\ o ->
                 AcceleratorType' <$>
                   (o .:? "name") <*> (o .:? "type"))

instance ToJSON AcceleratorType where
        toJSON AcceleratorType'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _atName, ("type" .=) <$> _atType])

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

-- | Response for ListAcceleratorTypes.
--
-- /See:/ 'listAcceleratorTypesResponse' smart constructor.
data ListAcceleratorTypesResponse =
  ListAcceleratorTypesResponse'
    { _latrAcceleratorTypes :: !(Maybe [AcceleratorType])
    , _latrNextPageToken    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAcceleratorTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'latrAcceleratorTypes'
--
-- * 'latrNextPageToken'
listAcceleratorTypesResponse
    :: ListAcceleratorTypesResponse
listAcceleratorTypesResponse =
  ListAcceleratorTypesResponse'
    {_latrAcceleratorTypes = Nothing, _latrNextPageToken = Nothing}


-- | The listed nodes.
latrAcceleratorTypes :: Lens' ListAcceleratorTypesResponse [AcceleratorType]
latrAcceleratorTypes
  = lens _latrAcceleratorTypes
      (\ s a -> s{_latrAcceleratorTypes = a})
      . _Default
      . _Coerce

-- | The next page token or empty if none.
latrNextPageToken :: Lens' ListAcceleratorTypesResponse (Maybe Text)
latrNextPageToken
  = lens _latrNextPageToken
      (\ s a -> s{_latrNextPageToken = a})

instance FromJSON ListAcceleratorTypesResponse where
        parseJSON
          = withObject "ListAcceleratorTypesResponse"
              (\ o ->
                 ListAcceleratorTypesResponse' <$>
                   (o .:? "acceleratorTypes" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListAcceleratorTypesResponse where
        toJSON ListAcceleratorTypesResponse'{..}
          = object
              (catMaybes
                 [("acceleratorTypes" .=) <$> _latrAcceleratorTypes,
                  ("nextPageToken" .=) <$> _latrNextPageToken])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName        :: !(Maybe Text)
    , _lMetadata    :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels      :: !(Maybe LocationLabels)
    , _lLocationId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
  Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }


-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

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
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
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

-- | A network endpoint over which a TPU worker can be reached.
--
-- /See:/ 'networkEndpoint' smart constructor.
data NetworkEndpoint =
  NetworkEndpoint'
    { _neIPAddress :: !(Maybe Text)
    , _nePort      :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neIPAddress'
--
-- * 'nePort'
networkEndpoint
    :: NetworkEndpoint
networkEndpoint = NetworkEndpoint' {_neIPAddress = Nothing, _nePort = Nothing}


-- | The IP address of this network endpoint.
neIPAddress :: Lens' NetworkEndpoint (Maybe Text)
neIPAddress
  = lens _neIPAddress (\ s a -> s{_neIPAddress = a})

-- | The port of this network endpoint.
nePort :: Lens' NetworkEndpoint (Maybe Int32)
nePort
  = lens _nePort (\ s a -> s{_nePort = a}) .
      mapping _Coerce

instance FromJSON NetworkEndpoint where
        parseJSON
          = withObject "NetworkEndpoint"
              (\ o ->
                 NetworkEndpoint' <$>
                   (o .:? "ipAddress") <*> (o .:? "port"))

instance ToJSON NetworkEndpoint where
        toJSON NetworkEndpoint'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _neIPAddress,
                  ("port" .=) <$> _nePort])

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

-- | A TPU instance.
--
-- /See:/ 'node' smart constructor.
data Node =
  Node'
    { _nAcceleratorType   :: !(Maybe Text)
    , _nIPAddress         :: !(Maybe Text)
    , _nState             :: !(Maybe NodeState)
    , _nNetwork           :: !(Maybe Text)
    , _nHealth            :: !(Maybe NodeHealth)
    , _nServiceAccount    :: !(Maybe Text)
    , _nName              :: !(Maybe Text)
    , _nSchedulingConfig  :: !(Maybe SchedulingConfig)
    , _nHealthDescription :: !(Maybe Text)
    , _nCIdRBlock         :: !(Maybe Text)
    , _nLabels            :: !(Maybe NodeLabels)
    , _nNetworkEndpoints  :: !(Maybe [NetworkEndpoint])
    , _nDescription       :: !(Maybe Text)
    , _nCreateTime        :: !(Maybe DateTime')
    , _nTensorflowVersion :: !(Maybe Text)
    , _nPort              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Node' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nAcceleratorType'
--
-- * 'nIPAddress'
--
-- * 'nState'
--
-- * 'nNetwork'
--
-- * 'nHealth'
--
-- * 'nServiceAccount'
--
-- * 'nName'
--
-- * 'nSchedulingConfig'
--
-- * 'nHealthDescription'
--
-- * 'nCIdRBlock'
--
-- * 'nLabels'
--
-- * 'nNetworkEndpoints'
--
-- * 'nDescription'
--
-- * 'nCreateTime'
--
-- * 'nTensorflowVersion'
--
-- * 'nPort'
node
    :: Node
node =
  Node'
    { _nAcceleratorType = Nothing
    , _nIPAddress = Nothing
    , _nState = Nothing
    , _nNetwork = Nothing
    , _nHealth = Nothing
    , _nServiceAccount = Nothing
    , _nName = Nothing
    , _nSchedulingConfig = Nothing
    , _nHealthDescription = Nothing
    , _nCIdRBlock = Nothing
    , _nLabels = Nothing
    , _nNetworkEndpoints = Nothing
    , _nDescription = Nothing
    , _nCreateTime = Nothing
    , _nTensorflowVersion = Nothing
    , _nPort = Nothing
    }


-- | The type of hardware accelerators associated with this node. Required.
nAcceleratorType :: Lens' Node (Maybe Text)
nAcceleratorType
  = lens _nAcceleratorType
      (\ s a -> s{_nAcceleratorType = a})

-- | Output only. DEPRECATED! Use network_endpoints instead. The network
-- address for the TPU Node as visible to Compute Engine instances.
nIPAddress :: Lens' Node (Maybe Text)
nIPAddress
  = lens _nIPAddress (\ s a -> s{_nIPAddress = a})

-- | Output only. The current state for the TPU Node.
nState :: Lens' Node (Maybe NodeState)
nState = lens _nState (\ s a -> s{_nState = a})

-- | The name of a network they wish to peer the TPU node to. It must be a
-- preexisting Compute Engine network inside of the project on which this
-- API has been activated. If none is provided, \"default\" will be used.
nNetwork :: Lens' Node (Maybe Text)
nNetwork = lens _nNetwork (\ s a -> s{_nNetwork = a})

-- | The health status of the TPU node.
nHealth :: Lens' Node (Maybe NodeHealth)
nHealth = lens _nHealth (\ s a -> s{_nHealth = a})

-- | Output only. The service account used to run the tensor flow services
-- within the node. To share resources, including Google Cloud Storage
-- data, with the Tensorflow job running in the Node, this account must
-- have permissions to that data.
nServiceAccount :: Lens' Node (Maybe Text)
nServiceAccount
  = lens _nServiceAccount
      (\ s a -> s{_nServiceAccount = a})

-- | Output only. The immutable name of the TPU
nName :: Lens' Node (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

nSchedulingConfig :: Lens' Node (Maybe SchedulingConfig)
nSchedulingConfig
  = lens _nSchedulingConfig
      (\ s a -> s{_nSchedulingConfig = a})

-- | Output only. If this field is populated, it contains a description of
-- why the TPU Node is unhealthy.
nHealthDescription :: Lens' Node (Maybe Text)
nHealthDescription
  = lens _nHealthDescription
      (\ s a -> s{_nHealthDescription = a})

-- | The CIDR block that the TPU node will use when selecting an IP address.
-- This CIDR block must be a \/29 block; the Compute Engine networks API
-- forbids a smaller block, and using a larger block would be wasteful (a
-- node can only consume one IP address). Errors will occur if the CIDR
-- block has already been used for a currently existing TPU node, the CIDR
-- block conflicts with any subnetworks in the user\'s provided network, or
-- the provided network is peered with another network that is using that
-- CIDR block. Required.
nCIdRBlock :: Lens' Node (Maybe Text)
nCIdRBlock
  = lens _nCIdRBlock (\ s a -> s{_nCIdRBlock = a})

-- | Resource labels to represent user-provided metadata.
nLabels :: Lens' Node (Maybe NodeLabels)
nLabels = lens _nLabels (\ s a -> s{_nLabels = a})

-- | Output only. The network endpoints where TPU workers can be accessed and
-- sent work. It is recommended that Tensorflow clients of the node reach
-- out to the 0th entry in this map first.
nNetworkEndpoints :: Lens' Node [NetworkEndpoint]
nNetworkEndpoints
  = lens _nNetworkEndpoints
      (\ s a -> s{_nNetworkEndpoints = a})
      . _Default
      . _Coerce

-- | The user-supplied description of the TPU. Maximum of 512 characters.
nDescription :: Lens' Node (Maybe Text)
nDescription
  = lens _nDescription (\ s a -> s{_nDescription = a})

-- | Output only. The time when the node was created.
nCreateTime :: Lens' Node (Maybe UTCTime)
nCreateTime
  = lens _nCreateTime (\ s a -> s{_nCreateTime = a}) .
      mapping _DateTime

-- | The version of Tensorflow running in the Node. Required.
nTensorflowVersion :: Lens' Node (Maybe Text)
nTensorflowVersion
  = lens _nTensorflowVersion
      (\ s a -> s{_nTensorflowVersion = a})

-- | Output only. DEPRECATED! Use network_endpoints instead. The network port
-- for the TPU Node as visible to Compute Engine instances.
nPort :: Lens' Node (Maybe Text)
nPort = lens _nPort (\ s a -> s{_nPort = a})

instance FromJSON Node where
        parseJSON
          = withObject "Node"
              (\ o ->
                 Node' <$>
                   (o .:? "acceleratorType") <*> (o .:? "ipAddress") <*>
                     (o .:? "state")
                     <*> (o .:? "network")
                     <*> (o .:? "health")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "name")
                     <*> (o .:? "schedulingConfig")
                     <*> (o .:? "healthDescription")
                     <*> (o .:? "cidrBlock")
                     <*> (o .:? "labels")
                     <*> (o .:? "networkEndpoints" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "createTime")
                     <*> (o .:? "tensorflowVersion")
                     <*> (o .:? "port"))

instance ToJSON Node where
        toJSON Node'{..}
          = object
              (catMaybes
                 [("acceleratorType" .=) <$> _nAcceleratorType,
                  ("ipAddress" .=) <$> _nIPAddress,
                  ("state" .=) <$> _nState,
                  ("network" .=) <$> _nNetwork,
                  ("health" .=) <$> _nHealth,
                  ("serviceAccount" .=) <$> _nServiceAccount,
                  ("name" .=) <$> _nName,
                  ("schedulingConfig" .=) <$> _nSchedulingConfig,
                  ("healthDescription" .=) <$> _nHealthDescription,
                  ("cidrBlock" .=) <$> _nCIdRBlock,
                  ("labels" .=) <$> _nLabels,
                  ("networkEndpoints" .=) <$> _nNetworkEndpoints,
                  ("description" .=) <$> _nDescription,
                  ("createTime" .=) <$> _nCreateTime,
                  ("tensorflowVersion" .=) <$> _nTensorflowVersion,
                  ("port" .=) <$> _nPort])

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

-- | Request for StopNode.
--
-- /See:/ 'stopNodeRequest' smart constructor.
data StopNodeRequest =
  StopNodeRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StopNodeRequest' with the minimum fields required to make a request.
--
stopNodeRequest
    :: StopNodeRequest
stopNodeRequest = StopNodeRequest'


instance FromJSON StopNodeRequest where
        parseJSON
          = withObject "StopNodeRequest"
              (\ o -> pure StopNodeRequest')

instance ToJSON StopNodeRequest where
        toJSON = const emptyObject

-- | Request for ReimageNode.
--
-- /See:/ 'reimageNodeRequest' smart constructor.
newtype ReimageNodeRequest =
  ReimageNodeRequest'
    { _rnrTensorflowVersion :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReimageNodeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnrTensorflowVersion'
reimageNodeRequest
    :: ReimageNodeRequest
reimageNodeRequest = ReimageNodeRequest' {_rnrTensorflowVersion = Nothing}


-- | The version for reimage to create.
rnrTensorflowVersion :: Lens' ReimageNodeRequest (Maybe Text)
rnrTensorflowVersion
  = lens _rnrTensorflowVersion
      (\ s a -> s{_rnrTensorflowVersion = a})

instance FromJSON ReimageNodeRequest where
        parseJSON
          = withObject "ReimageNodeRequest"
              (\ o ->
                 ReimageNodeRequest' <$> (o .:? "tensorflowVersion"))

instance ToJSON ReimageNodeRequest where
        toJSON ReimageNodeRequest'{..}
          = object
              (catMaybes
                 [("tensorflowVersion" .=) <$> _rnrTensorflowVersion])

-- | Response for ListNodes.
--
-- /See:/ 'listNodesResponse' smart constructor.
data ListNodesResponse =
  ListNodesResponse'
    { _lnrNextPageToken :: !(Maybe Text)
    , _lnrUnreachable   :: !(Maybe [Text])
    , _lnrNodes         :: !(Maybe [Node])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListNodesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnrNextPageToken'
--
-- * 'lnrUnreachable'
--
-- * 'lnrNodes'
listNodesResponse
    :: ListNodesResponse
listNodesResponse =
  ListNodesResponse'
    { _lnrNextPageToken = Nothing
    , _lnrUnreachable = Nothing
    , _lnrNodes = Nothing
    }


-- | The next page token or empty if none.
lnrNextPageToken :: Lens' ListNodesResponse (Maybe Text)
lnrNextPageToken
  = lens _lnrNextPageToken
      (\ s a -> s{_lnrNextPageToken = a})

-- | Locations that could not be reached.
lnrUnreachable :: Lens' ListNodesResponse [Text]
lnrUnreachable
  = lens _lnrUnreachable
      (\ s a -> s{_lnrUnreachable = a})
      . _Default
      . _Coerce

-- | The listed nodes.
lnrNodes :: Lens' ListNodesResponse [Node]
lnrNodes
  = lens _lnrNodes (\ s a -> s{_lnrNodes = a}) .
      _Default
      . _Coerce

instance FromJSON ListNodesResponse where
        parseJSON
          = withObject "ListNodesResponse"
              (\ o ->
                 ListNodesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "nodes" .!= mempty))

instance ToJSON ListNodesResponse where
        toJSON ListNodesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lnrNextPageToken,
                  ("unreachable" .=) <$> _lnrUnreachable,
                  ("nodes" .=) <$> _lnrNodes])

--
-- /See:/ 'schedulingConfig' smart constructor.
data SchedulingConfig =
  SchedulingConfig'
    { _scReserved    :: !(Maybe Bool)
    , _scPreemptible :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SchedulingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scReserved'
--
-- * 'scPreemptible'
schedulingConfig
    :: SchedulingConfig
schedulingConfig =
  SchedulingConfig' {_scReserved = Nothing, _scPreemptible = Nothing}


-- | Whether the node is created under a reservation.
scReserved :: Lens' SchedulingConfig (Maybe Bool)
scReserved
  = lens _scReserved (\ s a -> s{_scReserved = a})

scPreemptible :: Lens' SchedulingConfig (Maybe Bool)
scPreemptible
  = lens _scPreemptible
      (\ s a -> s{_scPreemptible = a})

instance FromJSON SchedulingConfig where
        parseJSON
          = withObject "SchedulingConfig"
              (\ o ->
                 SchedulingConfig' <$>
                   (o .:? "reserved") <*> (o .:? "preemptible"))

instance ToJSON SchedulingConfig where
        toJSON SchedulingConfig'{..}
          = object
              (catMaybes
                 [("reserved" .=) <$> _scReserved,
                  ("preemptible" .=) <$> _scPreemptible])

-- | Resource labels to represent user-provided metadata.
--
-- /See:/ 'nodeLabels' smart constructor.
newtype NodeLabels =
  NodeLabels'
    { _nlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlAddtional'
nodeLabels
    :: HashMap Text Text -- ^ 'nlAddtional'
    -> NodeLabels
nodeLabels pNlAddtional_ = NodeLabels' {_nlAddtional = _Coerce # pNlAddtional_}


nlAddtional :: Lens' NodeLabels (HashMap Text Text)
nlAddtional
  = lens _nlAddtional (\ s a -> s{_nlAddtional = a}) .
      _Coerce

instance FromJSON NodeLabels where
        parseJSON
          = withObject "NodeLabels"
              (\ o -> NodeLabels' <$> (parseJSONObject o))

instance ToJSON NodeLabels where
        toJSON = toJSON . _nlAddtional

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}


llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata =
  LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
  LocationMetadata' {_lmAddtional = _Coerce # pLmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
lmAddtional :: Lens' LocationMetadata (HashMap Text JSONValue)
lmAddtional
  = lens _lmAddtional (\ s a -> s{_lmAddtional = a}) .
      _Coerce

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (parseJSONObject o))

instance ToJSON LocationMetadata where
        toJSON = toJSON . _lmAddtional

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
  OperationMetadata'
    { _omAPIVersion      :: !(Maybe Text)
    , _omEndTime         :: !(Maybe DateTime')
    , _omStatusDetail    :: !(Maybe Text)
    , _omVerb            :: !(Maybe Text)
    , _omCancelRequested :: !(Maybe Bool)
    , _omTarget          :: !(Maybe Text)
    , _omCreateTime      :: !(Maybe DateTime')
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


-- | [Output only] API version used to start the operation.
omAPIVersion :: Lens' OperationMetadata (Maybe Text)
omAPIVersion
  = lens _omAPIVersion (\ s a -> s{_omAPIVersion = a})

-- | [Output only] The time the operation finished running.
omEndTime :: Lens' OperationMetadata (Maybe UTCTime)
omEndTime
  = lens _omEndTime (\ s a -> s{_omEndTime = a}) .
      mapping _DateTime

-- | [Output only] Human-readable status of the operation, if any.
omStatusDetail :: Lens' OperationMetadata (Maybe Text)
omStatusDetail
  = lens _omStatusDetail
      (\ s a -> s{_omStatusDetail = a})

-- | [Output only] Name of the verb executed by the operation.
omVerb :: Lens' OperationMetadata (Maybe Text)
omVerb = lens _omVerb (\ s a -> s{_omVerb = a})

-- | [Output only] Identifies whether the user has requested cancellation of
-- the operation. Operations that have successfully been cancelled have
-- Operation.error value with a google.rpc.Status.code of 1, corresponding
-- to \`Code.CANCELLED\`.
omCancelRequested :: Lens' OperationMetadata (Maybe Bool)
omCancelRequested
  = lens _omCancelRequested
      (\ s a -> s{_omCancelRequested = a})

-- | [Output only] Server-defined resource path for the target of the
-- operation.
omTarget :: Lens' OperationMetadata (Maybe Text)
omTarget = lens _omTarget (\ s a -> s{_omTarget = a})

-- | [Output only] The time the operation was created.
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

-- | Response for ListTensorFlowVersions.
--
-- /See:/ 'listTensorFlowVersionsResponse' smart constructor.
data ListTensorFlowVersionsResponse =
  ListTensorFlowVersionsResponse'
    { _ltfvrNextPageToken      :: !(Maybe Text)
    , _ltfvrTensorflowVersions :: !(Maybe [TensorFlowVersion])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTensorFlowVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfvrNextPageToken'
--
-- * 'ltfvrTensorflowVersions'
listTensorFlowVersionsResponse
    :: ListTensorFlowVersionsResponse
listTensorFlowVersionsResponse =
  ListTensorFlowVersionsResponse'
    {_ltfvrNextPageToken = Nothing, _ltfvrTensorflowVersions = Nothing}


-- | The next page token or empty if none.
ltfvrNextPageToken :: Lens' ListTensorFlowVersionsResponse (Maybe Text)
ltfvrNextPageToken
  = lens _ltfvrNextPageToken
      (\ s a -> s{_ltfvrNextPageToken = a})

-- | The listed nodes.
ltfvrTensorflowVersions :: Lens' ListTensorFlowVersionsResponse [TensorFlowVersion]
ltfvrTensorflowVersions
  = lens _ltfvrTensorflowVersions
      (\ s a -> s{_ltfvrTensorflowVersions = a})
      . _Default
      . _Coerce

instance FromJSON ListTensorFlowVersionsResponse
         where
        parseJSON
          = withObject "ListTensorFlowVersionsResponse"
              (\ o ->
                 ListTensorFlowVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "tensorflowVersions" .!= mempty))

instance ToJSON ListTensorFlowVersionsResponse where
        toJSON ListTensorFlowVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltfvrNextPageToken,
                  ("tensorflowVersions" .=) <$>
                    _ltfvrTensorflowVersions])

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

-- | A tensorflow version that a Node can be configured with.
--
-- /See:/ 'tensorFlowVersion' smart constructor.
data TensorFlowVersion =
  TensorFlowVersion'
    { _tfvName    :: !(Maybe Text)
    , _tfvVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TensorFlowVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfvName'
--
-- * 'tfvVersion'
tensorFlowVersion
    :: TensorFlowVersion
tensorFlowVersion =
  TensorFlowVersion' {_tfvName = Nothing, _tfvVersion = Nothing}


-- | The resource name.
tfvName :: Lens' TensorFlowVersion (Maybe Text)
tfvName = lens _tfvName (\ s a -> s{_tfvName = a})

-- | the tensorflow version.
tfvVersion :: Lens' TensorFlowVersion (Maybe Text)
tfvVersion
  = lens _tfvVersion (\ s a -> s{_tfvVersion = a})

instance FromJSON TensorFlowVersion where
        parseJSON
          = withObject "TensorFlowVersion"
              (\ o ->
                 TensorFlowVersion' <$>
                   (o .:? "name") <*> (o .:? "version"))

instance ToJSON TensorFlowVersion where
        toJSON TensorFlowVersion'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _tfvName,
                  ("version" .=) <$> _tfvVersion])

-- | Request for StartNode.
--
-- /See:/ 'startNodeRequest' smart constructor.
data StartNodeRequest =
  StartNodeRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartNodeRequest' with the minimum fields required to make a request.
--
startNodeRequest
    :: StartNodeRequest
startNodeRequest = StartNodeRequest'


instance FromJSON StartNodeRequest where
        parseJSON
          = withObject "StartNodeRequest"
              (\ o -> pure StartNodeRequest')

instance ToJSON StartNodeRequest where
        toJSON = const emptyObject
