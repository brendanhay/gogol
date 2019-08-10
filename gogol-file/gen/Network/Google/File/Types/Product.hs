{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.File.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.File.Types.Product where

import           Network.Google.File.Types.Sum
import           Network.Google.Prelude

-- | Resource labels to represent user provided metadata.
--
-- /See:/ 'instanceLabels' smart constructor.
newtype InstanceLabels =
  InstanceLabels'
    { _ilAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilAddtional'
instanceLabels
    :: HashMap Text Text -- ^ 'ilAddtional'
    -> InstanceLabels
instanceLabels pIlAddtional_ =
  InstanceLabels' {_ilAddtional = _Coerce # pIlAddtional_}


ilAddtional :: Lens' InstanceLabels (HashMap Text Text)
ilAddtional
  = lens _ilAddtional (\ s a -> s{_ilAddtional = a}) .
      _Coerce

instance FromJSON InstanceLabels where
        parseJSON
          = withObject "InstanceLabels"
              (\ o -> InstanceLabels' <$> (parseJSONObject o))

instance ToJSON InstanceLabels where
        toJSON = toJSON . _ilAddtional

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

-- | RolloutMetadata for an actuation instance. It maps to a single
-- RolloutType.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1RolloutMetadata' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata'
    { _gcsmpvrmRolloutName  :: !(Maybe Text)
    , _gcsmpvrmNotification :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata)
    , _gcsmpvrmReleaseName  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvrmRolloutName'
--
-- * 'gcsmpvrmNotification'
--
-- * 'gcsmpvrmReleaseName'
googleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
    :: GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
googleCloudSaasacceleratorManagementProvidersV1RolloutMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata'
    { _gcsmpvrmRolloutName = Nothing
    , _gcsmpvrmNotification = Nothing
    , _gcsmpvrmReleaseName = Nothing
    }


-- | The last rollout that has been applied to the instance.
gcsmpvrmRolloutName :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata (Maybe Text)
gcsmpvrmRolloutName
  = lens _gcsmpvrmRolloutName
      (\ s a -> s{_gcsmpvrmRolloutName = a})

-- | Instance level notification metadata.
gcsmpvrmNotification :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata (Maybe GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata)
gcsmpvrmNotification
  = lens _gcsmpvrmNotification
      (\ s a -> s{_gcsmpvrmNotification = a})

-- | The last Release that has been applied to the instance.
gcsmpvrmReleaseName :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata (Maybe Text)
gcsmpvrmReleaseName
  = lens _gcsmpvrmReleaseName
      (\ s a -> s{_gcsmpvrmReleaseName = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata'
                   <$>
                   (o .:? "rolloutName") <*> (o .:? "notification") <*>
                     (o .:? "releaseName"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata'{..}
          = object
              (catMaybes
                 [("rolloutName" .=) <$> _gcsmpvrmRolloutName,
                  ("notification" .=) <$> _gcsmpvrmNotification,
                  ("releaseName" .=) <$> _gcsmpvrmReleaseName])

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

-- | Instance represents the interface for SLM services to actuate the state
-- of control plane resources. Example Instance in JSON, where
-- consumer-project=snapchat, producer-project=cloud-sql: \`\`\`json
-- Instance: { \"name\":
-- \"projects\/snapchat\/locations\/us-east1\/instances\/prod-instance\",
-- \"create_time\": { \"seconds\": 1526406431, }, \"labels\": { \"env\":
-- \"prod\", \"foo\": \"bar\" }, \"state\": READY, \"software_version\":
-- \"cloud-sql-09-28-2018\", \"maintenance_policy_names\": {
-- \"UpdatePolicy\":
-- \"projects\/snapchat\/locations\/us-east1\/maintenancePolicies\/prod-update-policy\",
-- } \"rollout_metadata\": {
-- \"projects\/cloud-sql\/locations\/global\/rolloutTypes\/software_update\":
-- { \"release\":
-- \"projects\/cloud-sql\/locations\/global\/releases\/cloud-sql-09-28-2018\",
-- \"rollout\":
-- \"projects\/cloud-sql\/locations\/us-east1\/rollouts\/cloud-sql-09-28-2018-canary\",
-- }
-- \"projects\/cloud-sql\/locations\/global\/rolloutTypes\/instance_restart\":
-- { \"release\":
-- \"projects\/cloud-sql\/locations\/global\/releases\/cloud-sql-09-20-repair\",
-- \"rollout\":
-- \"projects\/cloud-sql\/locations\/us-east1\/rollouts\/cloud-sql-09-20-repair-100-percent\",
-- } } \"tenant_project_id\": \"cloud-sql-test-tenant\",
-- \"producer_metadata\": { \"cloud-sql-tier\": \"basic\",
-- \"cloud-sql-instance-size\": \"1G\", }, \"provisioned_resources\": [ {
-- \"resource-type\": \"compute-instance\", \"resource-url\":
-- \"https:\/\/www.googleapis.com\/compute\/v1\/projects\/cloud-sql\/zones\/us-east1-b\/instances\/vm-1\",
-- } ], } \`\`\`
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1Instance' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1Instance =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance'
    { _gcsmpviTenantProjectId        :: !(Maybe Text)
    , _gcsmpviState                  :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceState)
    , _gcsmpviSoftwareVersions       :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions)
    , _gcsmpviProvisionedResources   :: !(Maybe [GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource])
    , _gcsmpviUpdateTime             :: !(Maybe DateTime')
    , _gcsmpviName                   :: !(Maybe Text)
    , _gcsmpviLabels                 :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels)
    , _gcsmpviSloMetadata            :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata)
    , _gcsmpviProducerMetadata       :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata)
    , _gcsmpviRolloutMetadata        :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata)
    , _gcsmpviCreateTime             :: !(Maybe DateTime')
    , _gcsmpviMaintenancePolicyNames :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpviTenantProjectId'
--
-- * 'gcsmpviState'
--
-- * 'gcsmpviSoftwareVersions'
--
-- * 'gcsmpviProvisionedResources'
--
-- * 'gcsmpviUpdateTime'
--
-- * 'gcsmpviName'
--
-- * 'gcsmpviLabels'
--
-- * 'gcsmpviSloMetadata'
--
-- * 'gcsmpviProducerMetadata'
--
-- * 'gcsmpviRolloutMetadata'
--
-- * 'gcsmpviCreateTime'
--
-- * 'gcsmpviMaintenancePolicyNames'
googleCloudSaasacceleratorManagementProvidersV1Instance
    :: GoogleCloudSaasacceleratorManagementProvidersV1Instance
googleCloudSaasacceleratorManagementProvidersV1Instance =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance'
    { _gcsmpviTenantProjectId = Nothing
    , _gcsmpviState = Nothing
    , _gcsmpviSoftwareVersions = Nothing
    , _gcsmpviProvisionedResources = Nothing
    , _gcsmpviUpdateTime = Nothing
    , _gcsmpviName = Nothing
    , _gcsmpviLabels = Nothing
    , _gcsmpviSloMetadata = Nothing
    , _gcsmpviProducerMetadata = Nothing
    , _gcsmpviRolloutMetadata = Nothing
    , _gcsmpviCreateTime = Nothing
    , _gcsmpviMaintenancePolicyNames = Nothing
    }


-- | Output only. ID of the associated GCP tenant project. See
-- go\/get-instance-metadata.
gcsmpviTenantProjectId :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe Text)
gcsmpviTenantProjectId
  = lens _gcsmpviTenantProjectId
      (\ s a -> s{_gcsmpviTenantProjectId = a})

-- | Output only. Current lifecycle state of the resource (e.g. if it\'s
-- being created or ready to use).
gcsmpviState :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceState)
gcsmpviState
  = lens _gcsmpviState (\ s a -> s{_gcsmpviState = a})

-- | Software versions that are used to deploy this instance. This can be
-- mutated by rollout services.
gcsmpviSoftwareVersions :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions)
gcsmpviSoftwareVersions
  = lens _gcsmpviSoftwareVersions
      (\ s a -> s{_gcsmpviSoftwareVersions = a})

-- | Output only. The list of data plane resources provisioned for this
-- instance, e.g. compute VMs. See go\/get-instance-metadata.
gcsmpviProvisionedResources :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance [GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource]
gcsmpviProvisionedResources
  = lens _gcsmpviProvisionedResources
      (\ s a -> s{_gcsmpviProvisionedResources = a})
      . _Default
      . _Coerce

-- | Output only. Timestamp when the resource was last modified.
gcsmpviUpdateTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe UTCTime)
gcsmpviUpdateTime
  = lens _gcsmpviUpdateTime
      (\ s a -> s{_gcsmpviUpdateTime = a})
      . mapping _DateTime

-- | Unique name of the resource. It uses the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
gcsmpviName :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe Text)
gcsmpviName
  = lens _gcsmpviName (\ s a -> s{_gcsmpviName = a})

-- | Optional. Resource labels to represent user provided metadata. Each
-- label is a key-value pair, where both the key and the value are
-- arbitrary strings provided by the user.
gcsmpviLabels :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels)
gcsmpviLabels
  = lens _gcsmpviLabels
      (\ s a -> s{_gcsmpviLabels = a})

-- | Output only. SLO metadata for instance classification in the
-- Standardized dataplane SLO platform. See go\/cloud-ssa-standard-slo for
-- feature description.
gcsmpviSloMetadata :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata)
gcsmpviSloMetadata
  = lens _gcsmpviSloMetadata
      (\ s a -> s{_gcsmpviSloMetadata = a})

-- | Output only. Custom string attributes used primarily to expose
-- producer-specific information in monitoring dashboards. See
-- go\/get-instance-metadata.
gcsmpviProducerMetadata :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata)
gcsmpviProducerMetadata
  = lens _gcsmpviProducerMetadata
      (\ s a -> s{_gcsmpviProducerMetadata = a})

-- | The map between RolloutType and the corresponding RolloutMetadata. This
-- is only mutated by rollout service. For actuation implementation, this
-- information is pass-through for Rollout management. Producer shall not
-- modify by itself. For update of a single entry in this map, the update
-- field mask shall follow this sementics: go\/advanced-field-masks
gcsmpviRolloutMetadata :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata)
gcsmpviRolloutMetadata
  = lens _gcsmpviRolloutMetadata
      (\ s a -> s{_gcsmpviRolloutMetadata = a})

-- | Output only. Timestamp when the resource was created.
gcsmpviCreateTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe UTCTime)
gcsmpviCreateTime
  = lens _gcsmpviCreateTime
      (\ s a -> s{_gcsmpviCreateTime = a})
      . mapping _DateTime

-- | The MaintenancePolicies that have been attached to the instance. The key
-- must be of the type name of the oneof policy name defined in
-- MaintenancePolicy, and the referenced policy must define the same policy
-- type. For complete details of MaintenancePolicy, please refer to
-- \/\/depot\/google3\/google\/cloud\/saasaccelerator\/maintenancepolicy\/api\/v1\/maintenance_policy_resources.proto
gcsmpviMaintenancePolicyNames :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames)
gcsmpviMaintenancePolicyNames
  = lens _gcsmpviMaintenancePolicyNames
      (\ s a -> s{_gcsmpviMaintenancePolicyNames = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1Instance
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1Instance"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1Instance'
                   <$>
                   (o .:? "tenantProjectId") <*> (o .:? "state") <*>
                     (o .:? "softwareVersions")
                     <*> (o .:? "provisionedResources" .!= mempty)
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "sloMetadata")
                     <*> (o .:? "producerMetadata")
                     <*> (o .:? "rolloutMetadata")
                     <*> (o .:? "createTime")
                     <*> (o .:? "maintenancePolicyNames"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1Instance
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1Instance'{..}
          = object
              (catMaybes
                 [("tenantProjectId" .=) <$> _gcsmpviTenantProjectId,
                  ("state" .=) <$> _gcsmpviState,
                  ("softwareVersions" .=) <$> _gcsmpviSoftwareVersions,
                  ("provisionedResources" .=) <$>
                    _gcsmpviProvisionedResources,
                  ("updateTime" .=) <$> _gcsmpviUpdateTime,
                  ("name" .=) <$> _gcsmpviName,
                  ("labels" .=) <$> _gcsmpviLabels,
                  ("sloMetadata" .=) <$> _gcsmpviSloMetadata,
                  ("producerMetadata" .=) <$> _gcsmpviProducerMetadata,
                  ("rolloutMetadata" .=) <$> _gcsmpviRolloutMetadata,
                  ("createTime" .=) <$> _gcsmpviCreateTime,
                  ("maintenancePolicyNames" .=) <$>
                    _gcsmpviMaintenancePolicyNames])

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

-- | Software versions that are used to deploy this instance. This can be
-- mutated by rollout services.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions'
    { _gcsmpvisvAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvisvAddtional'
googleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
    :: HashMap Text Text -- ^ 'gcsmpvisvAddtional'
    -> GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
googleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions pGcsmpvisvAddtional_ =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions'
    {_gcsmpvisvAddtional = _Coerce # pGcsmpvisvAddtional_}


gcsmpvisvAddtional :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions (HashMap Text Text)
gcsmpvisvAddtional
  = lens _gcsmpvisvAddtional
      (\ s a -> s{_gcsmpvisvAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
         where
        toJSON = toJSON . _gcsmpvisvAddtional

-- | NotificationMetadata is the notification state for an instance.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1NotificationMetadata' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata'
    { _gcsmpvnmTargetRelease      :: !(Maybe Text)
    , _gcsmpvnmScheduledEndTime   :: !(Maybe DateTime')
    , _gcsmpvnmRescheduled        :: !(Maybe Bool)
    , _gcsmpvnmScheduledStartTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvnmTargetRelease'
--
-- * 'gcsmpvnmScheduledEndTime'
--
-- * 'gcsmpvnmRescheduled'
--
-- * 'gcsmpvnmScheduledStartTime'
googleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
    :: GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
googleCloudSaasacceleratorManagementProvidersV1NotificationMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata'
    { _gcsmpvnmTargetRelease = Nothing
    , _gcsmpvnmScheduledEndTime = Nothing
    , _gcsmpvnmRescheduled = Nothing
    , _gcsmpvnmScheduledStartTime = Nothing
    }


-- | The target release to be applied to the instance.
gcsmpvnmTargetRelease :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata (Maybe Text)
gcsmpvnmTargetRelease
  = lens _gcsmpvnmTargetRelease
      (\ s a -> s{_gcsmpvnmTargetRelease = a})

-- | The scheduled end time for the maintenance window during which update
-- can be performed on the instance.
gcsmpvnmScheduledEndTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata (Maybe UTCTime)
gcsmpvnmScheduledEndTime
  = lens _gcsmpvnmScheduledEndTime
      (\ s a -> s{_gcsmpvnmScheduledEndTime = a})
      . mapping _DateTime

-- | Whether the instance update has been rescheduled.
gcsmpvnmRescheduled :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata (Maybe Bool)
gcsmpvnmRescheduled
  = lens _gcsmpvnmRescheduled
      (\ s a -> s{_gcsmpvnmRescheduled = a})

-- | The scheduled start time for the maintenance window during which update
-- can be performed on the instance.
gcsmpvnmScheduledStartTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata (Maybe UTCTime)
gcsmpvnmScheduledStartTime
  = lens _gcsmpvnmScheduledStartTime
      (\ s a -> s{_gcsmpvnmScheduledStartTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata'
                   <$>
                   (o .:? "targetRelease") <*>
                     (o .:? "scheduledEndTime")
                     <*> (o .:? "rescheduled")
                     <*> (o .:? "scheduledStartTime"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata'{..}
          = object
              (catMaybes
                 [("targetRelease" .=) <$> _gcsmpvnmTargetRelease,
                  ("scheduledEndTime" .=) <$>
                    _gcsmpvnmScheduledEndTime,
                  ("rescheduled" .=) <$> _gcsmpvnmRescheduled,
                  ("scheduledStartTime" .=) <$>
                    _gcsmpvnmScheduledStartTime])

-- | File share configuration for the instance.
--
-- /See:/ 'fileShareConfig' smart constructor.
data FileShareConfig =
  FileShareConfig'
    { _fscName       :: !(Maybe Text)
    , _fscCapacityGb :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileShareConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fscName'
--
-- * 'fscCapacityGb'
fileShareConfig
    :: FileShareConfig
fileShareConfig =
  FileShareConfig' {_fscName = Nothing, _fscCapacityGb = Nothing}


-- | The name of the file share (must be 16 characters or less).
fscName :: Lens' FileShareConfig (Maybe Text)
fscName = lens _fscName (\ s a -> s{_fscName = a})

-- | File share capacity in gigabytes (GB). Cloud Filestore defines 1 GB as
-- 1024^3 bytes.
fscCapacityGb :: Lens' FileShareConfig (Maybe Int64)
fscCapacityGb
  = lens _fscCapacityGb
      (\ s a -> s{_fscCapacityGb = a})
      . mapping _Coerce

instance FromJSON FileShareConfig where
        parseJSON
          = withObject "FileShareConfig"
              (\ o ->
                 FileShareConfig' <$>
                   (o .:? "name") <*> (o .:? "capacityGb"))

instance ToJSON FileShareConfig where
        toJSON FileShareConfig'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _fscName,
                  ("capacityGb" .=) <$> _fscCapacityGb])

-- | Network configuration for the instance.
--
-- /See:/ 'networkConfig' smart constructor.
data NetworkConfig =
  NetworkConfig'
    { _ncModes           :: !(Maybe [Text])
    , _ncNetwork         :: !(Maybe Text)
    , _ncReservedIPRange :: !(Maybe Text)
    , _ncIPAddresses     :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncModes'
--
-- * 'ncNetwork'
--
-- * 'ncReservedIPRange'
--
-- * 'ncIPAddresses'
networkConfig
    :: NetworkConfig
networkConfig =
  NetworkConfig'
    { _ncModes = Nothing
    , _ncNetwork = Nothing
    , _ncReservedIPRange = Nothing
    , _ncIPAddresses = Nothing
    }


-- | Internet protocol versions for which the instance has IP addresses
-- assigned. For this version, only MODE_IPV4 is supported.
ncModes :: Lens' NetworkConfig [Text]
ncModes
  = lens _ncModes (\ s a -> s{_ncModes = a}) . _Default
      . _Coerce

-- | The name of the Google Compute Engine [VPC
-- network](\/compute\/docs\/networks-and-firewalls#networks) to which the
-- instance is connected.
ncNetwork :: Lens' NetworkConfig (Maybe Text)
ncNetwork
  = lens _ncNetwork (\ s a -> s{_ncNetwork = a})

-- | A \/29 CIDR block in one of the [internal IP address
-- ranges](https:\/\/www.arin.net\/knowledge\/address_filters.html) that
-- identifies the range of IP addresses reserved for this instance. For
-- example, 10.0.0.0\/29 or 192.168.0.0\/29. The range you specify can\'t
-- overlap with either existing subnets or assigned IP address ranges for
-- other Cloud Filestore instances in the selected VPC network.
ncReservedIPRange :: Lens' NetworkConfig (Maybe Text)
ncReservedIPRange
  = lens _ncReservedIPRange
      (\ s a -> s{_ncReservedIPRange = a})

-- | Output only. IPv4 addresses in the format {octet 1}.{octet 2}.{octet
-- 3}.{octet 4} or IPv6 addresses in the format {block 1}:{block 2}:{block
-- 3}:{block 4}:{block 5}:{block 6}:{block 7}:{block 8}.
ncIPAddresses :: Lens' NetworkConfig [Text]
ncIPAddresses
  = lens _ncIPAddresses
      (\ s a -> s{_ncIPAddresses = a})
      . _Default
      . _Coerce

instance FromJSON NetworkConfig where
        parseJSON
          = withObject "NetworkConfig"
              (\ o ->
                 NetworkConfig' <$>
                   (o .:? "modes" .!= mempty) <*> (o .:? "network") <*>
                     (o .:? "reservedIpRange")
                     <*> (o .:? "ipAddresses" .!= mempty))

instance ToJSON NetworkConfig where
        toJSON NetworkConfig'{..}
          = object
              (catMaybes
                 [("modes" .=) <$> _ncModes,
                  ("network" .=) <$> _ncNetwork,
                  ("reservedIpRange" .=) <$> _ncReservedIPRange,
                  ("ipAddresses" .=) <$> _ncIPAddresses])

-- | SloMetadata contains resources required for proper SLO classification of
-- the instance.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1SloMetadata' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata'
    { _gcsmpvsmExclusions :: !(Maybe [GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion])
    , _gcsmpvsmTier       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvsmExclusions'
--
-- * 'gcsmpvsmTier'
googleCloudSaasacceleratorManagementProvidersV1SloMetadata
    :: GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
googleCloudSaasacceleratorManagementProvidersV1SloMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata'
    {_gcsmpvsmExclusions = Nothing, _gcsmpvsmTier = Nothing}


-- | List of SLO exclusion windows. When multiple entries in the list match
-- (matching the exclusion time-window against current time point) the
-- exclusion reason used in the first matching entry will be published. It
-- is not needed to include expired exclusion in this list, as only the
-- currently applicable exclusions are taken into account by the
-- eligibility exporting subsystem (the historical state of exclusions will
-- be reflected in the historically produced timeseries regardless of the
-- current state). This field can be used to mark the instance as temporary
-- ineligible for the purpose of SLO calculation. For permanent instance
-- SLO exclusion, a dedicated tier name can be used that does not have
-- targets specified in the service SLO configuration.
gcsmpvsmExclusions :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata [GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion]
gcsmpvsmExclusions
  = lens _gcsmpvsmExclusions
      (\ s a -> s{_gcsmpvsmExclusions = a})
      . _Default
      . _Coerce

-- | Name of the SLO tier the Instance belongs to. This name will be expected
-- to match the tiers specified in the service SLO configuration. Field is
-- mandatory and must not be empty.
gcsmpvsmTier :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata (Maybe Text)
gcsmpvsmTier
  = lens _gcsmpvsmTier (\ s a -> s{_gcsmpvsmTier = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata'
                   <$>
                   (o .:? "exclusions" .!= mempty) <*> (o .:? "tier"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata'{..}
          = object
              (catMaybes
                 [("exclusions" .=) <$> _gcsmpvsmExclusions,
                  ("tier" .=) <$> _gcsmpvsmTier])

-- | Output only. Custom string attributes used primarily to expose
-- producer-specific information in monitoring dashboards. See
-- go\/get-instance-metadata.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata'
    { _gcsmpvipmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvipmAddtional'
googleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata
    :: HashMap Text Text -- ^ 'gcsmpvipmAddtional'
    -> GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata
googleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata pGcsmpvipmAddtional_ =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata'
    {_gcsmpvipmAddtional = _Coerce # pGcsmpvipmAddtional_}


gcsmpvipmAddtional :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata (HashMap Text Text)
gcsmpvipmAddtional
  = lens _gcsmpvipmAddtional
      (\ s a -> s{_gcsmpvipmAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata
         where
        toJSON = toJSON . _gcsmpvipmAddtional

-- | Optional. Resource labels to represent user provided metadata. Each
-- label is a key-value pair, where both the key and the value are
-- arbitrary strings provided by the user.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1InstanceLabels' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels'
    { _gcsmpvilAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvilAddtional'
googleCloudSaasacceleratorManagementProvidersV1InstanceLabels
    :: HashMap Text Text -- ^ 'gcsmpvilAddtional'
    -> GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels
googleCloudSaasacceleratorManagementProvidersV1InstanceLabels pGcsmpvilAddtional_ =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels'
    {_gcsmpvilAddtional = _Coerce # pGcsmpvilAddtional_}


gcsmpvilAddtional :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels (HashMap Text Text)
gcsmpvilAddtional
  = lens _gcsmpvilAddtional
      (\ s a -> s{_gcsmpvilAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels
         where
        toJSON = toJSON . _gcsmpvilAddtional

-- | A temporal SLO exclusion specification.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1SloExclusion' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion =
  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion'
    { _gcsmpvseExclusionDuration  :: !(Maybe GDuration)
    , _gcsmpvseExclusionStartTime :: !(Maybe DateTime')
    , _gcsmpvseReason             :: !(Maybe Text)
    , _gcsmpvseSloName            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvseExclusionDuration'
--
-- * 'gcsmpvseExclusionStartTime'
--
-- * 'gcsmpvseReason'
--
-- * 'gcsmpvseSloName'
googleCloudSaasacceleratorManagementProvidersV1SloExclusion
    :: GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
googleCloudSaasacceleratorManagementProvidersV1SloExclusion =
  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion'
    { _gcsmpvseExclusionDuration = Nothing
    , _gcsmpvseExclusionStartTime = Nothing
    , _gcsmpvseReason = Nothing
    , _gcsmpvseSloName = Nothing
    }


-- | Exclusion duration. No restrictions on the possible values. When an
-- ongoing operation is taking longer than initially expected, an existing
-- entry in the exclusion list can be updated by extending the duration.
-- This is supported by the subsystem exporting eligibility data as long as
-- such extension is committed at least 10 minutes before the original
-- exclusion expiration - otherwise it is possible that there will be
-- \"gaps\" in the exclusion application in the exported timeseries.
gcsmpvseExclusionDuration :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion (Maybe Scientific)
gcsmpvseExclusionDuration
  = lens _gcsmpvseExclusionDuration
      (\ s a -> s{_gcsmpvseExclusionDuration = a})
      . mapping _GDuration

-- | Start time of the exclusion. No alignment (e.g. to a full minute)
-- needed.
gcsmpvseExclusionStartTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion (Maybe UTCTime)
gcsmpvseExclusionStartTime
  = lens _gcsmpvseExclusionStartTime
      (\ s a -> s{_gcsmpvseExclusionStartTime = a})
      . mapping _DateTime

-- | Human-readable reason for the exclusion. This should be a static string
-- (e.g. \"Disruptive update in progress\") and should not contain
-- dynamically generated data (e.g. instance name). Can be left empty.
gcsmpvseReason :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion (Maybe Text)
gcsmpvseReason
  = lens _gcsmpvseReason
      (\ s a -> s{_gcsmpvseReason = a})

-- | Name of an SLI\/SLO that this exclusion applies to. Can be left empty,
-- signaling that the instance should be excluded from all SLI\/SLOs
-- defined in the service SLO configuration.
gcsmpvseSloName :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion (Maybe Text)
gcsmpvseSloName
  = lens _gcsmpvseSloName
      (\ s a -> s{_gcsmpvseSloName = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion'
                   <$>
                   (o .:? "exclusionDuration") <*>
                     (o .:? "exclusionStartTime")
                     <*> (o .:? "reason")
                     <*> (o .:? "sloName"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion'{..}
          = object
              (catMaybes
                 [("exclusionDuration" .=) <$>
                    _gcsmpvseExclusionDuration,
                  ("exclusionStartTime" .=) <$>
                    _gcsmpvseExclusionStartTime,
                  ("reason" .=) <$> _gcsmpvseReason,
                  ("sloName" .=) <$> _gcsmpvseSloName])

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

-- | Describes provisioned dataplane resources.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1ProvisionedResource' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource =
  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource'
    { _gcsmpvprResourceType :: !(Maybe Text)
    , _gcsmpvprResourceURL  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvprResourceType'
--
-- * 'gcsmpvprResourceURL'
googleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    :: GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
googleCloudSaasacceleratorManagementProvidersV1ProvisionedResource =
  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource'
    {_gcsmpvprResourceType = Nothing, _gcsmpvprResourceURL = Nothing}


-- | Type of the resource. This can be either a GCP resource or a custom one
-- (e.g. another cloud provider\'s VM). For GCP compute resources use
-- singular form of the names listed in GCP compute API documentation
-- (https:\/\/cloud.google.com\/compute\/docs\/reference\/rest\/v1\/),
-- prefixed with \'compute-\', for example: \'compute-instance\',
-- \'compute-disk\', \'compute-autoscaler\'.
gcsmpvprResourceType :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource (Maybe Text)
gcsmpvprResourceType
  = lens _gcsmpvprResourceType
      (\ s a -> s{_gcsmpvprResourceType = a})

-- | URL identifying the resource, e.g.
-- \"https:\/\/www.googleapis.com\/compute\/v1\/projects\/...)\".
gcsmpvprResourceURL :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource (Maybe Text)
gcsmpvprResourceURL
  = lens _gcsmpvprResourceURL
      (\ s a -> s{_gcsmpvprResourceURL = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource'
                   <$> (o .:? "resourceType") <*> (o .:? "resourceUrl"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _gcsmpvprResourceType,
                  ("resourceUrl" .=) <$> _gcsmpvprResourceURL])

-- | ListInstancesResponse is the result of ListInstancesRequest.
--
-- /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirUnreachable   :: !(Maybe [Text])
    , _lirInstances     :: !(Maybe [Instance])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirNextPageToken'
--
-- * 'lirUnreachable'
--
-- * 'lirInstances'
listInstancesResponse
    :: ListInstancesResponse
listInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken = Nothing
    , _lirUnreachable = Nothing
    , _lirInstances = Nothing
    }


-- | The token you can use to retrieve the next page of results. Not returned
-- if there are no more results in the list.
lirNextPageToken :: Lens' ListInstancesResponse (Maybe Text)
lirNextPageToken
  = lens _lirNextPageToken
      (\ s a -> s{_lirNextPageToken = a})

-- | Locations that could not be reached.
lirUnreachable :: Lens' ListInstancesResponse [Text]
lirUnreachable
  = lens _lirUnreachable
      (\ s a -> s{_lirUnreachable = a})
      . _Default
      . _Coerce

-- | A list of instances in the project for the specified location. If the
-- {location} value in the request is \"-\", the response contains a list
-- of instances from all locations. If any location is unreachable, the
-- response will only return instances in reachable locations and the
-- \"unreachable\" field will be populated with a list of unreachable
-- locations.
lirInstances :: Lens' ListInstancesResponse [Instance]
lirInstances
  = lens _lirInstances (\ s a -> s{_lirInstances = a})
      . _Default
      . _Coerce

instance FromJSON ListInstancesResponse where
        parseJSON
          = withObject "ListInstancesResponse"
              (\ o ->
                 ListInstancesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "instances" .!= mempty))

instance ToJSON ListInstancesResponse where
        toJSON ListInstancesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirNextPageToken,
                  ("unreachable" .=) <$> _lirUnreachable,
                  ("instances" .=) <$> _lirInstances])

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

-- | The map between RolloutType and the corresponding RolloutMetadata. This
-- is only mutated by rollout service. For actuation implementation, this
-- information is pass-through for Rollout management. Producer shall not
-- modify by itself. For update of a single entry in this map, the update
-- field mask shall follow this sementics: go\/advanced-field-masks
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata'
    { _gcsmpvirmAddtional :: HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvirmAddtional'
googleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata
    :: HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata -- ^ 'gcsmpvirmAddtional'
    -> GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata
googleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata pGcsmpvirmAddtional_ =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata'
    {_gcsmpvirmAddtional = _Coerce # pGcsmpvirmAddtional_}


gcsmpvirmAddtional :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata (HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata)
gcsmpvirmAddtional
  = lens _gcsmpvirmAddtional
      (\ s a -> s{_gcsmpvirmAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata
         where
        toJSON = toJSON . _gcsmpvirmAddtional

-- | The MaintenancePolicies that have been attached to the instance. The key
-- must be of the type name of the oneof policy name defined in
-- MaintenancePolicy, and the referenced policy must define the same policy
-- type. For complete details of MaintenancePolicy, please refer to
-- \/\/depot\/google3\/google\/cloud\/saasaccelerator\/maintenancepolicy\/api\/v1\/maintenance_policy_resources.proto
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames'
    { _gcsmpvimpnAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvimpnAddtional'
googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
    :: HashMap Text Text -- ^ 'gcsmpvimpnAddtional'
    -> GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames pGcsmpvimpnAddtional_ =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames'
    {_gcsmpvimpnAddtional = _Coerce # pGcsmpvimpnAddtional_}


gcsmpvimpnAddtional :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames (HashMap Text Text)
gcsmpvimpnAddtional
  = lens _gcsmpvimpnAddtional
      (\ s a -> s{_gcsmpvimpnAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
         where
        toJSON = toJSON . _gcsmpvimpnAddtional

-- | A Cloud Filestore instance.
--
-- /See:/ 'instance'' smart constructor.
data Instance =
  Instance'
    { _iEtag          :: !(Maybe Text)
    , _iState         :: !(Maybe InstanceState)
    , _iNetworks      :: !(Maybe [NetworkConfig])
    , _iFileShares    :: !(Maybe [FileShareConfig])
    , _iName          :: !(Maybe Text)
    , _iStatusMessage :: !(Maybe Text)
    , _iTier          :: !(Maybe InstanceTier)
    , _iLabels        :: !(Maybe InstanceLabels)
    , _iDescription   :: !(Maybe Text)
    , _iCreateTime    :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iEtag'
--
-- * 'iState'
--
-- * 'iNetworks'
--
-- * 'iFileShares'
--
-- * 'iName'
--
-- * 'iStatusMessage'
--
-- * 'iTier'
--
-- * 'iLabels'
--
-- * 'iDescription'
--
-- * 'iCreateTime'
instance'
    :: Instance
instance' =
  Instance'
    { _iEtag = Nothing
    , _iState = Nothing
    , _iNetworks = Nothing
    , _iFileShares = Nothing
    , _iName = Nothing
    , _iStatusMessage = Nothing
    , _iTier = Nothing
    , _iLabels = Nothing
    , _iDescription = Nothing
    , _iCreateTime = Nothing
    }


-- | Server-specified ETag for the instance resource to prevent simultaneous
-- updates from overwriting each other.
iEtag :: Lens' Instance (Maybe Text)
iEtag = lens _iEtag (\ s a -> s{_iEtag = a})

-- | Output only. The instance state.
iState :: Lens' Instance (Maybe InstanceState)
iState = lens _iState (\ s a -> s{_iState = a})

-- | VPC networks to which the instance is connected. For this version, only
-- a single network is supported.
iNetworks :: Lens' Instance [NetworkConfig]
iNetworks
  = lens _iNetworks (\ s a -> s{_iNetworks = a}) .
      _Default
      . _Coerce

-- | File system shares on the instance. For this version, only a single file
-- share is supported.
iFileShares :: Lens' Instance [FileShareConfig]
iFileShares
  = lens _iFileShares (\ s a -> s{_iFileShares = a}) .
      _Default
      . _Coerce

-- | Output only. The resource name of the instance, in the format
-- projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}.
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | Output only. Additional information about the instance state, if
-- available.
iStatusMessage :: Lens' Instance (Maybe Text)
iStatusMessage
  = lens _iStatusMessage
      (\ s a -> s{_iStatusMessage = a})

-- | The service tier of the instance.
iTier :: Lens' Instance (Maybe InstanceTier)
iTier = lens _iTier (\ s a -> s{_iTier = a})

-- | Resource labels to represent user provided metadata.
iLabels :: Lens' Instance (Maybe InstanceLabels)
iLabels = lens _iLabels (\ s a -> s{_iLabels = a})

-- | Optional. A description of the instance (2048 characters or less).
iDescription :: Lens' Instance (Maybe Text)
iDescription
  = lens _iDescription (\ s a -> s{_iDescription = a})

-- | Output only. The time when the instance was created.
iCreateTime :: Lens' Instance (Maybe UTCTime)
iCreateTime
  = lens _iCreateTime (\ s a -> s{_iCreateTime = a}) .
      mapping _DateTime

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance' <$>
                   (o .:? "etag") <*> (o .:? "state") <*>
                     (o .:? "networks" .!= mempty)
                     <*> (o .:? "fileShares" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "tier")
                     <*> (o .:? "labels")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON Instance where
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _iEtag, ("state" .=) <$> _iState,
                  ("networks" .=) <$> _iNetworks,
                  ("fileShares" .=) <$> _iFileShares,
                  ("name" .=) <$> _iName,
                  ("statusMessage" .=) <$> _iStatusMessage,
                  ("tier" .=) <$> _iTier, ("labels" .=) <$> _iLabels,
                  ("description" .=) <$> _iDescription,
                  ("createTime" .=) <$> _iCreateTime])
