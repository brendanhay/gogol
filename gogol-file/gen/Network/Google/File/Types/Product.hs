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

import Network.Google.File.Types.Sum
import Network.Google.Prelude

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

-- | ListBackupsResponse is the result of ListBackupsRequest.
--
-- /See:/ 'listBackupsResponse' smart constructor.
data ListBackupsResponse =
  ListBackupsResponse'
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrBackups :: !(Maybe [Backup])
    , _lbrUnreachable :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBackupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextPageToken'
--
-- * 'lbrBackups'
--
-- * 'lbrUnreachable'
listBackupsResponse
    :: ListBackupsResponse
listBackupsResponse =
  ListBackupsResponse'
    { _lbrNextPageToken = Nothing
    , _lbrBackups = Nothing
    , _lbrUnreachable = Nothing
    }


-- | The token you can use to retrieve the next page of results. Not returned
-- if there are no more results in the list.
lbrNextPageToken :: Lens' ListBackupsResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | A list of backups in the project for the specified location. If the
-- {location} value in the request is \"-\", the response contains a list
-- of backups from all locations. If any location is unreachable, the
-- response will only return backups in reachable locations and the
-- \"unreachable\" field will be populated with a list of unreachable
-- locations.
lbrBackups :: Lens' ListBackupsResponse [Backup]
lbrBackups
  = lens _lbrBackups (\ s a -> s{_lbrBackups = a}) .
      _Default
      . _Coerce

-- | Locations that could not be reached.
lbrUnreachable :: Lens' ListBackupsResponse [Text]
lbrUnreachable
  = lens _lbrUnreachable
      (\ s a -> s{_lbrUnreachable = a})
      . _Default
      . _Coerce

instance FromJSON ListBackupsResponse where
        parseJSON
          = withObject "ListBackupsResponse"
              (\ o ->
                 ListBackupsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "backups" .!= mempty)
                     <*> (o .:? "unreachable" .!= mempty))

instance ToJSON ListBackupsResponse where
        toJSON ListBackupsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("backups" .=) <$> _lbrBackups,
                  ("unreachable" .=) <$> _lbrUnreachable])

-- | SloEligibility is a tuple containing eligibility value: true if an
-- instance is eligible for SLO calculation or false if it should be
-- excluded from all SLO-related calculations along with a user-defined
-- reason.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1SloEligibility' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility =
  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility'
    { _gcsmpvseEligible :: !(Maybe Bool)
    , _gcsmpvseReason :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvseEligible'
--
-- * 'gcsmpvseReason'
googleCloudSaasacceleratorManagementProvidersV1SloEligibility
    :: GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
googleCloudSaasacceleratorManagementProvidersV1SloEligibility =
  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility'
    {_gcsmpvseEligible = Nothing, _gcsmpvseReason = Nothing}


-- | Whether an instance is eligible or ineligible.
gcsmpvseEligible :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility (Maybe Bool)
gcsmpvseEligible
  = lens _gcsmpvseEligible
      (\ s a -> s{_gcsmpvseEligible = a})

-- | User-defined reason for the current value of instance eligibility.
-- Usually, this can be directly mapped to the internal state. An empty
-- reason is allowed.
gcsmpvseReason :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility (Maybe Text)
gcsmpvseReason
  = lens _gcsmpvseReason
      (\ s a -> s{_gcsmpvseReason = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility'
                   <$> (o .:? "eligible") <*> (o .:? "reason"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility'{..}
          = object
              (catMaybes
                 [("eligible" .=) <$> _gcsmpvseEligible,
                  ("reason" .=) <$> _gcsmpvseReason])

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

-- | NFS export options specifications.
--
-- /See:/ 'nfsExportOptions' smart constructor.
data NfsExportOptions =
  NfsExportOptions'
    { _neoAnonGid :: !(Maybe (Textual Int64))
    , _neoAccessMode :: !(Maybe NfsExportOptionsAccessMode)
    , _neoAnonUid :: !(Maybe (Textual Int64))
    , _neoSquashMode :: !(Maybe NfsExportOptionsSquashMode)
    , _neoIPRanges :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NfsExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neoAnonGid'
--
-- * 'neoAccessMode'
--
-- * 'neoAnonUid'
--
-- * 'neoSquashMode'
--
-- * 'neoIPRanges'
nfsExportOptions
    :: NfsExportOptions
nfsExportOptions =
  NfsExportOptions'
    { _neoAnonGid = Nothing
    , _neoAccessMode = Nothing
    , _neoAnonUid = Nothing
    , _neoSquashMode = Nothing
    , _neoIPRanges = Nothing
    }


-- | An integer representing the anonymous group id with a default value of
-- 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An
-- error will be returned if this field is specified for other squash_mode
-- settings.
neoAnonGid :: Lens' NfsExportOptions (Maybe Int64)
neoAnonGid
  = lens _neoAnonGid (\ s a -> s{_neoAnonGid = a}) .
      mapping _Coerce

-- | Either READ_ONLY, for allowing only read requests on the exported
-- directory, or READ_WRITE, for allowing both read and write requests. The
-- default is READ_WRITE.
neoAccessMode :: Lens' NfsExportOptions (Maybe NfsExportOptionsAccessMode)
neoAccessMode
  = lens _neoAccessMode
      (\ s a -> s{_neoAccessMode = a})

-- | An integer representing the anonymous user id with a default value of
-- 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An
-- error will be returned if this field is specified for other squash_mode
-- settings.
neoAnonUid :: Lens' NfsExportOptions (Maybe Int64)
neoAnonUid
  = lens _neoAnonUid (\ s a -> s{_neoAnonUid = a}) .
      mapping _Coerce

-- | Either NO_ROOT_SQUASH, for allowing root access on the exported
-- directory, or ROOT_SQUASH, for not allowing root access. The default is
-- NO_ROOT_SQUASH.
neoSquashMode :: Lens' NfsExportOptions (Maybe NfsExportOptionsSquashMode)
neoSquashMode
  = lens _neoSquashMode
      (\ s a -> s{_neoSquashMode = a})

-- | List of either an IPv4 addresses in the format {octet 1}.{octet
-- 2}.{octet 3}.{octet 4} or CIDR ranges in the format {octet 1}.{octet
-- 2}.{octet 3}.{octet 4}\/{mask size} which may mount the file share.
-- Overlapping IP ranges are not allowed, both within and across
-- NfsExportOptions. An error will be returned. The limit is 64 IP
-- ranges\/addresses for each FileShareConfig among all NfsExportOptions.
neoIPRanges :: Lens' NfsExportOptions [Text]
neoIPRanges
  = lens _neoIPRanges (\ s a -> s{_neoIPRanges = a}) .
      _Default
      . _Coerce

instance FromJSON NfsExportOptions where
        parseJSON
          = withObject "NfsExportOptions"
              (\ o ->
                 NfsExportOptions' <$>
                   (o .:? "anonGid") <*> (o .:? "accessMode") <*>
                     (o .:? "anonUid")
                     <*> (o .:? "squashMode")
                     <*> (o .:? "ipRanges" .!= mempty))

instance ToJSON NfsExportOptions where
        toJSON NfsExportOptions'{..}
          = object
              (catMaybes
                 [("anonGid" .=) <$> _neoAnonGid,
                  ("accessMode" .=) <$> _neoAccessMode,
                  ("anonUid" .=) <$> _neoAnonUid,
                  ("squashMode" .=) <$> _neoSquashMode,
                  ("ipRanges" .=) <$> _neoIPRanges])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations :: !(Maybe [Location])
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

-- | Configure the schedule.
--
-- /See:/ 'schedule' smart constructor.
data Schedule =
  Schedule'
    { _sStartTime :: !(Maybe TimeOfDay')
    , _sDay :: !(Maybe ScheduleDay)
    , _sDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStartTime'
--
-- * 'sDay'
--
-- * 'sDuration'
schedule
    :: Schedule
schedule =
  Schedule' {_sStartTime = Nothing, _sDay = Nothing, _sDuration = Nothing}


-- | Time within the window to start the operations.
sStartTime :: Lens' Schedule (Maybe TimeOfDay')
sStartTime
  = lens _sStartTime (\ s a -> s{_sStartTime = a})

-- | Allows to define schedule that runs specified day of the week.
sDay :: Lens' Schedule (Maybe ScheduleDay)
sDay = lens _sDay (\ s a -> s{_sDay = a})

-- | Output only. Duration of the time window, set by service producer.
sDuration :: Lens' Schedule (Maybe Scientific)
sDuration
  = lens _sDuration (\ s a -> s{_sDuration = a}) .
      mapping _GDuration

instance FromJSON Schedule where
        parseJSON
          = withObject "Schedule"
              (\ o ->
                 Schedule' <$>
                   (o .:? "startTime") <*> (o .:? "day") <*>
                     (o .:? "duration"))

instance ToJSON Schedule where
        toJSON Schedule'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _sStartTime,
                  ("day" .=) <$> _sDay,
                  ("duration" .=) <$> _sDuration])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName :: !(Maybe Text)
    , _lMetadata :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels :: !(Maybe LocationLabels)
    , _lLocationId :: !(Maybe Text)
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

-- | PerSliSloEligibility is a mapping from an SLI name to eligibility.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility =
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility'
    { _gcsmpvpsseEligibilities :: Maybe GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvpsseEligibilities'
googleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    :: GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
googleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility =
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility'
    {_gcsmpvpsseEligibilities = Nothing}


-- | An entry in the eligibilities map specifies an eligibility for a
-- particular SLI for the given instance. The SLI key in the name must be a
-- valid SLI name specified in the Eligibility Exporter binary flags
-- otherwise an error will be emitted by Eligibility Exporter and the
-- oncaller will be alerted. If an SLI has been defined in the binary flags
-- but the eligibilities map does not contain it, the corresponding SLI
-- time series will not be emitted by the Eligibility Exporter. This
-- ensures a smooth rollout and compatibility between the data produced by
-- different versions of the Eligibility Exporters. If eligibilities map
-- contains a key for an SLI which has not been declared in the binary
-- flags, there will be an error message emitted in the Eligibility
-- Exporter log and the metric for the SLI in question will not be emitted.
gcsmpvpsseEligibilities :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility (Maybe GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities)
gcsmpvpsseEligibilities
  = lens _gcsmpvpsseEligibilities
      (\ s a -> s{_gcsmpvpsseEligibilities = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility'
                   <$> (o .:? "eligibilities"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility'{..}
          = object
              (catMaybes
                 [("eligibilities" .=) <$> _gcsmpvpsseEligibilities])

--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1Instance' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1Instance =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance'
    { _gcsmpviTenantProjectId :: !(Maybe Text)
    , _gcsmpviState :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceState)
    , _gcsmpviConsumerDefinedName :: !(Maybe Text)
    , _gcsmpviMaintenanceSettings :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings)
    , _gcsmpviSoftwareVersions :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions)
    , _gcsmpviProvisionedResources :: !(Maybe [GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource])
    , _gcsmpviUpdateTime :: !(Maybe DateTime')
    , _gcsmpviName :: !(Maybe Text)
    , _gcsmpviLabels :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels)
    , _gcsmpviSloMetadata :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata)
    , _gcsmpviProducerMetadata :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata)
    , _gcsmpviSlmInstanceTemplate :: !(Maybe Text)
    , _gcsmpviMaintenanceSchedules :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules)
    , _gcsmpviCreateTime :: !(Maybe DateTime')
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
-- * 'gcsmpviConsumerDefinedName'
--
-- * 'gcsmpviMaintenanceSettings'
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
-- * 'gcsmpviSlmInstanceTemplate'
--
-- * 'gcsmpviMaintenanceSchedules'
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
    , _gcsmpviConsumerDefinedName = Nothing
    , _gcsmpviMaintenanceSettings = Nothing
    , _gcsmpviSoftwareVersions = Nothing
    , _gcsmpviProvisionedResources = Nothing
    , _gcsmpviUpdateTime = Nothing
    , _gcsmpviName = Nothing
    , _gcsmpviLabels = Nothing
    , _gcsmpviSloMetadata = Nothing
    , _gcsmpviProducerMetadata = Nothing
    , _gcsmpviSlmInstanceTemplate = Nothing
    , _gcsmpviMaintenanceSchedules = Nothing
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

-- | consumer_defined_name is the name that is set by the consumer. On the
-- other hand Name field represents system-assigned id of an instance so
-- consumers are not necessarily aware of it. consumer_defined_name is used
-- for notification\/UI purposes for consumer to recognize their instances.
gcsmpviConsumerDefinedName :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe Text)
gcsmpviConsumerDefinedName
  = lens _gcsmpviConsumerDefinedName
      (\ s a -> s{_gcsmpviConsumerDefinedName = a})

-- | Optional. The MaintenanceSettings associated with instance.
gcsmpviMaintenanceSettings :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings)
gcsmpviMaintenanceSettings
  = lens _gcsmpviMaintenanceSettings
      (\ s a -> s{_gcsmpviMaintenanceSettings = a})

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
-- \`projects\/{project_id|project_number}\/locations\/{location_id}\/instances\/{instance_id}\`
-- Note: Either project_id or project_number can be used, but keep it
-- consistent with other APIs (e.g. RescheduleUpdate)
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

-- | Link to the SLM instance template. Only populated when updating SLM
-- instances via SSA\'s Actuation service adaptor. Service producers with
-- custom control plane (e.g. Cloud SQL) doesn\'t need to populate this
-- field. Instead they should use software_versions.
gcsmpviSlmInstanceTemplate :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe Text)
gcsmpviSlmInstanceTemplate
  = lens _gcsmpviSlmInstanceTemplate
      (\ s a -> s{_gcsmpviSlmInstanceTemplate = a})

-- | The MaintenanceSchedule contains the scheduling information of published
-- maintenance schedule with same key as software_versions.
gcsmpviMaintenanceSchedules :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules)
gcsmpviMaintenanceSchedules
  = lens _gcsmpviMaintenanceSchedules
      (\ s a -> s{_gcsmpviMaintenanceSchedules = a})

-- | Output only. Timestamp when the resource was created.
gcsmpviCreateTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1Instance (Maybe UTCTime)
gcsmpviCreateTime
  = lens _gcsmpviCreateTime
      (\ s a -> s{_gcsmpviCreateTime = a})
      . mapping _DateTime

-- | Deprecated. The MaintenancePolicies that have been attached to the
-- instance. The key must be of the type name of the oneof policy name
-- defined in MaintenancePolicy, and the referenced policy must define the
-- same policy type. For complete details of MaintenancePolicy, please
-- refer to go\/cloud-saas-mw-ug.
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
                     (o .:? "consumerDefinedName")
                     <*> (o .:? "maintenanceSettings")
                     <*> (o .:? "softwareVersions")
                     <*> (o .:? "provisionedResources" .!= mempty)
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "sloMetadata")
                     <*> (o .:? "producerMetadata")
                     <*> (o .:? "slmInstanceTemplate")
                     <*> (o .:? "maintenanceSchedules")
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
                  ("consumerDefinedName" .=) <$>
                    _gcsmpviConsumerDefinedName,
                  ("maintenanceSettings" .=) <$>
                    _gcsmpviMaintenanceSettings,
                  ("softwareVersions" .=) <$> _gcsmpviSoftwareVersions,
                  ("provisionedResources" .=) <$>
                    _gcsmpviProvisionedResources,
                  ("updateTime" .=) <$> _gcsmpviUpdateTime,
                  ("name" .=) <$> _gcsmpviName,
                  ("labels" .=) <$> _gcsmpviLabels,
                  ("sloMetadata" .=) <$> _gcsmpviSloMetadata,
                  ("producerMetadata" .=) <$> _gcsmpviProducerMetadata,
                  ("slmInstanceTemplate" .=) <$>
                    _gcsmpviSlmInstanceTemplate,
                  ("maintenanceSchedules" .=) <$>
                    _gcsmpviMaintenanceSchedules,
                  ("createTime" .=) <$> _gcsmpviCreateTime,
                  ("maintenancePolicyNames" .=) <$>
                    _gcsmpviMaintenancePolicyNames])

-- | Optional. Resource labels to represent user provided metadata. Each
-- label is a key-value pair, where both the key and the value are
-- arbitrary strings provided by the user.
--
-- /See:/ 'maintenancePolicyLabels' smart constructor.
newtype MaintenancePolicyLabels =
  MaintenancePolicyLabels'
    { _mplAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenancePolicyLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mplAddtional'
maintenancePolicyLabels
    :: HashMap Text Text -- ^ 'mplAddtional'
    -> MaintenancePolicyLabels
maintenancePolicyLabels pMplAddtional_ =
  MaintenancePolicyLabels' {_mplAddtional = _Coerce # pMplAddtional_}


mplAddtional :: Lens' MaintenancePolicyLabels (HashMap Text Text)
mplAddtional
  = lens _mplAddtional (\ s a -> s{_mplAddtional = a})
      . _Coerce

instance FromJSON MaintenancePolicyLabels where
        parseJSON
          = withObject "MaintenancePolicyLabels"
              (\ o ->
                 MaintenancePolicyLabels' <$> (parseJSONObject o))

instance ToJSON MaintenancePolicyLabels where
        toJSON = toJSON . _mplAddtional

-- | Resource labels to represent user provided metadata.
--
-- /See:/ 'backupLabels' smart constructor.
newtype BackupLabels =
  BackupLabels'
    { _blAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blAddtional'
backupLabels
    :: HashMap Text Text -- ^ 'blAddtional'
    -> BackupLabels
backupLabels pBlAddtional_ =
  BackupLabels' {_blAddtional = _Coerce # pBlAddtional_}


blAddtional :: Lens' BackupLabels (HashMap Text Text)
blAddtional
  = lens _blAddtional (\ s a -> s{_blAddtional = a}) .
      _Coerce

instance FromJSON BackupLabels where
        parseJSON
          = withObject "BackupLabels"
              (\ o -> BackupLabels' <$> (parseJSONObject o))

instance ToJSON BackupLabels where
        toJSON = toJSON . _blAddtional

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

-- | An entry in the eligibilities map specifies an eligibility for a
-- particular SLI for the given instance. The SLI key in the name must be a
-- valid SLI name specified in the Eligibility Exporter binary flags
-- otherwise an error will be emitted by Eligibility Exporter and the
-- oncaller will be alerted. If an SLI has been defined in the binary flags
-- but the eligibilities map does not contain it, the corresponding SLI
-- time series will not be emitted by the Eligibility Exporter. This
-- ensures a smooth rollout and compatibility between the data produced by
-- different versions of the Eligibility Exporters. If eligibilities map
-- contains a key for an SLI which has not been declared in the binary
-- flags, there will be an error message emitted in the Eligibility
-- Exporter log and the metric for the SLI in question will not be emitted.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities =
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities'
    { _gcsmpvpsseeAddtional :: HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvpsseeAddtional'
googleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities
    :: HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility -- ^ 'gcsmpvpsseeAddtional'
    -> GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities
googleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities pGcsmpvpsseeAddtional_ =
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities'
    {_gcsmpvpsseeAddtional = _Coerce # pGcsmpvpsseeAddtional_}


gcsmpvpsseeAddtional :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities (HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility)
gcsmpvpsseeAddtional
  = lens _gcsmpvpsseeAddtional
      (\ s a -> s{_gcsmpvpsseeAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities
         where
        toJSON = toJSON . _gcsmpvpsseeAddtional

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

-- | A Cloud Filestore backup.
--
-- /See:/ 'backup' smart constructor.
data Backup =
  Backup'
    { _bSatisfiesPzs :: !(Maybe Bool)
    , _bSourceInstance :: !(Maybe Text)
    , _bState :: !(Maybe BackupState)
    , _bDownloadBytes :: !(Maybe (Textual Int64))
    , _bStorageBytes :: !(Maybe (Textual Int64))
    , _bSourceInstanceTier :: !(Maybe BackupSourceInstanceTier)
    , _bName :: !(Maybe Text)
    , _bLabels :: !(Maybe BackupLabels)
    , _bSourceFileShare :: !(Maybe Text)
    , _bDescription :: !(Maybe Text)
    , _bCreateTime :: !(Maybe DateTime')
    , _bCapacityGb :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Backup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bSatisfiesPzs'
--
-- * 'bSourceInstance'
--
-- * 'bState'
--
-- * 'bDownloadBytes'
--
-- * 'bStorageBytes'
--
-- * 'bSourceInstanceTier'
--
-- * 'bName'
--
-- * 'bLabels'
--
-- * 'bSourceFileShare'
--
-- * 'bDescription'
--
-- * 'bCreateTime'
--
-- * 'bCapacityGb'
backup
    :: Backup
backup =
  Backup'
    { _bSatisfiesPzs = Nothing
    , _bSourceInstance = Nothing
    , _bState = Nothing
    , _bDownloadBytes = Nothing
    , _bStorageBytes = Nothing
    , _bSourceInstanceTier = Nothing
    , _bName = Nothing
    , _bLabels = Nothing
    , _bSourceFileShare = Nothing
    , _bDescription = Nothing
    , _bCreateTime = Nothing
    , _bCapacityGb = Nothing
    }


-- | Output only. Reserved for future use.
bSatisfiesPzs :: Lens' Backup (Maybe Bool)
bSatisfiesPzs
  = lens _bSatisfiesPzs
      (\ s a -> s{_bSatisfiesPzs = a})

-- | The resource name of the source Cloud Filestore instance, in the format
-- projects\/{project_number}\/locations\/{location_id}\/instances\/{instance_id},
-- used to create this backup.
bSourceInstance :: Lens' Backup (Maybe Text)
bSourceInstance
  = lens _bSourceInstance
      (\ s a -> s{_bSourceInstance = a})

-- | Output only. The backup state.
bState :: Lens' Backup (Maybe BackupState)
bState = lens _bState (\ s a -> s{_bState = a})

-- | Output only. Amount of bytes that will be downloaded if the backup is
-- restored. This may be different than storage bytes, since sequential
-- backups of the same disk will share storage.
bDownloadBytes :: Lens' Backup (Maybe Int64)
bDownloadBytes
  = lens _bDownloadBytes
      (\ s a -> s{_bDownloadBytes = a})
      . mapping _Coerce

-- | Output only. The size of the storage used by the backup. As backups
-- share storage, this number is expected to change with backup
-- creation\/deletion.
bStorageBytes :: Lens' Backup (Maybe Int64)
bStorageBytes
  = lens _bStorageBytes
      (\ s a -> s{_bStorageBytes = a})
      . mapping _Coerce

-- | Output only. The service tier of the source Cloud Filestore instance
-- that this backup is created from.
bSourceInstanceTier :: Lens' Backup (Maybe BackupSourceInstanceTier)
bSourceInstanceTier
  = lens _bSourceInstanceTier
      (\ s a -> s{_bSourceInstanceTier = a})

-- | Output only. The resource name of the backup, in the format
-- projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id}.
bName :: Lens' Backup (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

-- | Resource labels to represent user provided metadata.
bLabels :: Lens' Backup (Maybe BackupLabels)
bLabels = lens _bLabels (\ s a -> s{_bLabels = a})

-- | Name of the file share in the source Cloud Filestore instance that the
-- backup is created from.
bSourceFileShare :: Lens' Backup (Maybe Text)
bSourceFileShare
  = lens _bSourceFileShare
      (\ s a -> s{_bSourceFileShare = a})

-- | A description of the backup with 2048 characters or less. Requests with
-- longer descriptions will be rejected.
bDescription :: Lens' Backup (Maybe Text)
bDescription
  = lens _bDescription (\ s a -> s{_bDescription = a})

-- | Output only. The time when the backup was created.
bCreateTime :: Lens' Backup (Maybe UTCTime)
bCreateTime
  = lens _bCreateTime (\ s a -> s{_bCreateTime = a}) .
      mapping _DateTime

-- | Output only. Capacity of the source file share when the backup was
-- created.
bCapacityGb :: Lens' Backup (Maybe Int64)
bCapacityGb
  = lens _bCapacityGb (\ s a -> s{_bCapacityGb = a}) .
      mapping _Coerce

instance FromJSON Backup where
        parseJSON
          = withObject "Backup"
              (\ o ->
                 Backup' <$>
                   (o .:? "satisfiesPzs") <*> (o .:? "sourceInstance")
                     <*> (o .:? "state")
                     <*> (o .:? "downloadBytes")
                     <*> (o .:? "storageBytes")
                     <*> (o .:? "sourceInstanceTier")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "sourceFileShare")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime")
                     <*> (o .:? "capacityGb"))

instance ToJSON Backup where
        toJSON Backup'{..}
          = object
              (catMaybes
                 [("satisfiesPzs" .=) <$> _bSatisfiesPzs,
                  ("sourceInstance" .=) <$> _bSourceInstance,
                  ("state" .=) <$> _bState,
                  ("downloadBytes" .=) <$> _bDownloadBytes,
                  ("storageBytes" .=) <$> _bStorageBytes,
                  ("sourceInstanceTier" .=) <$> _bSourceInstanceTier,
                  ("name" .=) <$> _bName, ("labels" .=) <$> _bLabels,
                  ("sourceFileShare" .=) <$> _bSourceFileShare,
                  ("description" .=) <$> _bDescription,
                  ("createTime" .=) <$> _bCreateTime,
                  ("capacityGb" .=) <$> _bCapacityGb])

-- | Maintenance settings associated with instance. Allows service producers
-- and end users to assign settings that controls maintenance on this
-- instance.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings'
    { _gcsmpvmsIsRollback :: !(Maybe Bool)
    , _gcsmpvmsMaintenancePolicies :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies)
    , _gcsmpvmsExclude :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvmsIsRollback'
--
-- * 'gcsmpvmsMaintenancePolicies'
--
-- * 'gcsmpvmsExclude'
googleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    :: GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
googleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings'
    { _gcsmpvmsIsRollback = Nothing
    , _gcsmpvmsMaintenancePolicies = Nothing
    , _gcsmpvmsExclude = Nothing
    }


-- | Optional. If the update call is triggered from rollback, set the value
-- as true.
gcsmpvmsIsRollback :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings (Maybe Bool)
gcsmpvmsIsRollback
  = lens _gcsmpvmsIsRollback
      (\ s a -> s{_gcsmpvmsIsRollback = a})

-- | Optional. The MaintenancePolicies that have been attached to the
-- instance. The key must be of the type name of the oneof policy name
-- defined in MaintenancePolicy, and the embedded policy must define the
-- same policy type. For complete details of MaintenancePolicy, please
-- refer to go\/cloud-saas-mw-ug. If only the name is needed (like in the
-- deprecated Instance.maintenance_policy_names field) then only populate
-- MaintenancePolicy.name.
gcsmpvmsMaintenancePolicies :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings (Maybe GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies)
gcsmpvmsMaintenancePolicies
  = lens _gcsmpvmsMaintenancePolicies
      (\ s a -> s{_gcsmpvmsMaintenancePolicies = a})

-- | Optional. Exclude instance from maintenance. When true, rollout service
-- will not attempt maintenance on the instance. Rollout service will
-- include the instance in reported rollout progress as not attempted.
gcsmpvmsExclude :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings (Maybe Bool)
gcsmpvmsExclude
  = lens _gcsmpvmsExclude
      (\ s a -> s{_gcsmpvmsExclude = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings'
                   <$>
                   (o .:? "isRollback") <*>
                     (o .:? "maintenancePolicies")
                     <*> (o .:? "exclude"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings'{..}
          = object
              (catMaybes
                 [("isRollback" .=) <$> _gcsmpvmsIsRollback,
                  ("maintenancePolicies" .=) <$>
                    _gcsmpvmsMaintenancePolicies,
                  ("exclude" .=) <$> _gcsmpvmsExclude])

-- | Maintenance schedule which is exposed to customer and potentially end
-- user, indicating published upcoming future maintenance schedule
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule'
    { _gcsmpvmsStartTime :: !(Maybe DateTime')
    , _gcsmpvmsRolloutManagementPolicy :: !(Maybe Text)
    , _gcsmpvmsCanReschedule :: !(Maybe Bool)
    , _gcsmpvmsEndTime :: !(Maybe DateTime')
    , _gcsmpvmsScheduleDeadlineTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvmsStartTime'
--
-- * 'gcsmpvmsRolloutManagementPolicy'
--
-- * 'gcsmpvmsCanReschedule'
--
-- * 'gcsmpvmsEndTime'
--
-- * 'gcsmpvmsScheduleDeadlineTime'
googleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    :: GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
googleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule'
    { _gcsmpvmsStartTime = Nothing
    , _gcsmpvmsRolloutManagementPolicy = Nothing
    , _gcsmpvmsCanReschedule = Nothing
    , _gcsmpvmsEndTime = Nothing
    , _gcsmpvmsScheduleDeadlineTime = Nothing
    }


-- | The scheduled start time for the maintenance.
gcsmpvmsStartTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule (Maybe UTCTime)
gcsmpvmsStartTime
  = lens _gcsmpvmsStartTime
      (\ s a -> s{_gcsmpvmsStartTime = a})
      . mapping _DateTime

-- | The rollout management policy this maintenance schedule is associated
-- with. When doing reschedule update request, the reschedule should be
-- against this given policy.
gcsmpvmsRolloutManagementPolicy :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule (Maybe Text)
gcsmpvmsRolloutManagementPolicy
  = lens _gcsmpvmsRolloutManagementPolicy
      (\ s a -> s{_gcsmpvmsRolloutManagementPolicy = a})

-- | This field is deprecated, and will be always set to true since
-- reschedule can happen multiple times now. This field should not be
-- removed until all service producers remove this for their customers.
gcsmpvmsCanReschedule :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule (Maybe Bool)
gcsmpvmsCanReschedule
  = lens _gcsmpvmsCanReschedule
      (\ s a -> s{_gcsmpvmsCanReschedule = a})

-- | The scheduled end time for the maintenance.
gcsmpvmsEndTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule (Maybe UTCTime)
gcsmpvmsEndTime
  = lens _gcsmpvmsEndTime
      (\ s a -> s{_gcsmpvmsEndTime = a})
      . mapping _DateTime

-- | schedule_deadline_time is the time deadline any schedule start time
-- cannot go beyond, including reschedule. It\'s normally the initial
-- schedule start time plus maintenance window length (1 day or 1 week).
-- Maintenance cannot be scheduled to start beyond this deadline.
gcsmpvmsScheduleDeadlineTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule (Maybe UTCTime)
gcsmpvmsScheduleDeadlineTime
  = lens _gcsmpvmsScheduleDeadlineTime
      (\ s a -> s{_gcsmpvmsScheduleDeadlineTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule'
                   <$>
                   (o .:? "startTime") <*>
                     (o .:? "rolloutManagementPolicy")
                     <*> (o .:? "canReschedule")
                     <*> (o .:? "endTime")
                     <*> (o .:? "scheduleDeadlineTime"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcsmpvmsStartTime,
                  ("rolloutManagementPolicy" .=) <$>
                    _gcsmpvmsRolloutManagementPolicy,
                  ("canReschedule" .=) <$> _gcsmpvmsCanReschedule,
                  ("endTime" .=) <$> _gcsmpvmsEndTime,
                  ("scheduleDeadlineTime" .=) <$>
                    _gcsmpvmsScheduleDeadlineTime])

-- | Maintenance policy applicable to instance updates.
--
-- /See:/ 'updatePolicy' smart constructor.
data UpdatePolicy =
  UpdatePolicy'
    { _upWindow :: !(Maybe MaintenanceWindow)
    , _upChannel :: !(Maybe UpdatePolicyChannel)
    , _upDenyMaintenancePeriods :: !(Maybe [DenyMaintenancePeriod])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdatePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upWindow'
--
-- * 'upChannel'
--
-- * 'upDenyMaintenancePeriods'
updatePolicy
    :: UpdatePolicy
updatePolicy =
  UpdatePolicy'
    { _upWindow = Nothing
    , _upChannel = Nothing
    , _upDenyMaintenancePeriods = Nothing
    }


-- | Optional. Maintenance window that is applied to resources covered by
-- this policy.
upWindow :: Lens' UpdatePolicy (Maybe MaintenanceWindow)
upWindow = lens _upWindow (\ s a -> s{_upWindow = a})

-- | Optional. Relative scheduling channel applied to resource.
upChannel :: Lens' UpdatePolicy (Maybe UpdatePolicyChannel)
upChannel
  = lens _upChannel (\ s a -> s{_upChannel = a})

-- | Deny Maintenance Period that is applied to resource to indicate when
-- maintenance is forbidden. User can specify zero or more non-overlapping
-- deny periods. For V1, Maximum number of deny_maintenance_periods is
-- expected to be one.
upDenyMaintenancePeriods :: Lens' UpdatePolicy [DenyMaintenancePeriod]
upDenyMaintenancePeriods
  = lens _upDenyMaintenancePeriods
      (\ s a -> s{_upDenyMaintenancePeriods = a})
      . _Default
      . _Coerce

instance FromJSON UpdatePolicy where
        parseJSON
          = withObject "UpdatePolicy"
              (\ o ->
                 UpdatePolicy' <$>
                   (o .:? "window") <*> (o .:? "channel") <*>
                     (o .:? "denyMaintenancePeriods" .!= mempty))

instance ToJSON UpdatePolicy where
        toJSON UpdatePolicy'{..}
          = object
              (catMaybes
                 [("window" .=) <$> _upWindow,
                  ("channel" .=) <$> _upChannel,
                  ("denyMaintenancePeriods" .=) <$>
                    _upDenyMaintenancePeriods])

-- | MaintenanceWindow definition.
--
-- /See:/ 'maintenanceWindow' smart constructor.
data MaintenanceWindow =
  MaintenanceWindow'
    { _mwDailyCycle :: !(Maybe DailyCycle)
    , _mwWeeklyCycle :: !(Maybe WeeklyCycle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwDailyCycle'
--
-- * 'mwWeeklyCycle'
maintenanceWindow
    :: MaintenanceWindow
maintenanceWindow =
  MaintenanceWindow' {_mwDailyCycle = Nothing, _mwWeeklyCycle = Nothing}


-- | Daily cycle.
mwDailyCycle :: Lens' MaintenanceWindow (Maybe DailyCycle)
mwDailyCycle
  = lens _mwDailyCycle (\ s a -> s{_mwDailyCycle = a})

-- | Weekly cycle.
mwWeeklyCycle :: Lens' MaintenanceWindow (Maybe WeeklyCycle)
mwWeeklyCycle
  = lens _mwWeeklyCycle
      (\ s a -> s{_mwWeeklyCycle = a})

instance FromJSON MaintenanceWindow where
        parseJSON
          = withObject "MaintenanceWindow"
              (\ o ->
                 MaintenanceWindow' <$>
                   (o .:? "dailyCycle") <*> (o .:? "weeklyCycle"))

instance ToJSON MaintenanceWindow where
        toJSON MaintenanceWindow'{..}
          = object
              (catMaybes
                 [("dailyCycle" .=) <$> _mwDailyCycle,
                  ("weeklyCycle" .=) <$> _mwWeeklyCycle])

-- | Time window specified for daily operations.
--
-- /See:/ 'dailyCycle' smart constructor.
data DailyCycle =
  DailyCycle'
    { _dcStartTime :: !(Maybe TimeOfDay')
    , _dcDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DailyCycle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcStartTime'
--
-- * 'dcDuration'
dailyCycle
    :: DailyCycle
dailyCycle = DailyCycle' {_dcStartTime = Nothing, _dcDuration = Nothing}


-- | Time within the day to start the operations.
dcStartTime :: Lens' DailyCycle (Maybe TimeOfDay')
dcStartTime
  = lens _dcStartTime (\ s a -> s{_dcStartTime = a})

-- | Output only. Duration of the time window, set by service producer.
dcDuration :: Lens' DailyCycle (Maybe Scientific)
dcDuration
  = lens _dcDuration (\ s a -> s{_dcDuration = a}) .
      mapping _GDuration

instance FromJSON DailyCycle where
        parseJSON
          = withObject "DailyCycle"
              (\ o ->
                 DailyCycle' <$>
                   (o .:? "startTime") <*> (o .:? "duration"))

instance ToJSON DailyCycle where
        toJSON DailyCycle'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _dcStartTime,
                  ("duration" .=) <$> _dcDuration])

-- | File share configuration for the instance.
--
-- /See:/ 'fileShareConfig' smart constructor.
data FileShareConfig =
  FileShareConfig'
    { _fscNfsExportOptions :: !(Maybe [NfsExportOptions])
    , _fscSourceBackup :: !(Maybe Text)
    , _fscName :: !(Maybe Text)
    , _fscCapacityGb :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileShareConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fscNfsExportOptions'
--
-- * 'fscSourceBackup'
--
-- * 'fscName'
--
-- * 'fscCapacityGb'
fileShareConfig
    :: FileShareConfig
fileShareConfig =
  FileShareConfig'
    { _fscNfsExportOptions = Nothing
    , _fscSourceBackup = Nothing
    , _fscName = Nothing
    , _fscCapacityGb = Nothing
    }


-- | Nfs Export Options. There is a limit of 10 export options per file
-- share.
fscNfsExportOptions :: Lens' FileShareConfig [NfsExportOptions]
fscNfsExportOptions
  = lens _fscNfsExportOptions
      (\ s a -> s{_fscNfsExportOptions = a})
      . _Default
      . _Coerce

-- | The resource name of the backup, in the format
-- projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id},
-- that this file share has been restored from.
fscSourceBackup :: Lens' FileShareConfig (Maybe Text)
fscSourceBackup
  = lens _fscSourceBackup
      (\ s a -> s{_fscSourceBackup = a})

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
                   (o .:? "nfsExportOptions" .!= mempty) <*>
                     (o .:? "sourceBackup")
                     <*> (o .:? "name")
                     <*> (o .:? "capacityGb"))

instance ToJSON FileShareConfig where
        toJSON FileShareConfig'{..}
          = object
              (catMaybes
                 [("nfsExportOptions" .=) <$> _fscNfsExportOptions,
                  ("sourceBackup" .=) <$> _fscSourceBackup,
                  ("name" .=) <$> _fscName,
                  ("capacityGb" .=) <$> _fscCapacityGb])

-- | Network configuration for the instance.
--
-- /See:/ 'networkConfig' smart constructor.
data NetworkConfig =
  NetworkConfig'
    { _ncModes :: !(Maybe [NetworkConfigModesItem])
    , _ncNetwork :: !(Maybe Text)
    , _ncReservedIPRange :: !(Maybe Text)
    , _ncIPAddresses :: !(Maybe [Text])
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
ncModes :: Lens' NetworkConfig [NetworkConfigModesItem]
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

-- | Represents a whole or partial calendar date, such as a birthday. The
-- time of day and time zone are either specified elsewhere or are
-- insignificant. The date is relative to the Gregorian Calendar. This can
-- represent one of the following: * A full date, with non-zero year,
-- month, and day values * A month and day value, with a zero year, such as
-- an anniversary * A year on its own, with zero month and day values * A
-- year and month value, with a zero day, such as a credit card expiration
-- date Related types are google.type.TimeOfDay and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | Node information for custom per-node SLO implementations. SSA does not
-- support per-node SLO, but producers can populate per-node information in
-- SloMetadata for custom precomputations. SSA Eligibility Exporter will
-- emit per-node metric based on this information.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata'
    { _gcsmpvnsmPerSliEligibility :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility)
    , _gcsmpvnsmLocation :: !(Maybe Text)
    , _gcsmpvnsmExclusions :: !(Maybe [GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion])
    , _gcsmpvnsmNodeId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvnsmPerSliEligibility'
--
-- * 'gcsmpvnsmLocation'
--
-- * 'gcsmpvnsmExclusions'
--
-- * 'gcsmpvnsmNodeId'
googleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
    :: GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
googleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata'
    { _gcsmpvnsmPerSliEligibility = Nothing
    , _gcsmpvnsmLocation = Nothing
    , _gcsmpvnsmExclusions = Nothing
    , _gcsmpvnsmNodeId = Nothing
    }


-- | If present, this will override eligibility for the node coming from
-- instance or exclusions for specified SLIs.
gcsmpvnsmPerSliEligibility :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata (Maybe GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility)
gcsmpvnsmPerSliEligibility
  = lens _gcsmpvnsmPerSliEligibility
      (\ s a -> s{_gcsmpvnsmPerSliEligibility = a})

-- | The location of the node, if different from instance location.
gcsmpvnsmLocation :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata (Maybe Text)
gcsmpvnsmLocation
  = lens _gcsmpvnsmLocation
      (\ s a -> s{_gcsmpvnsmLocation = a})

-- | By default node is eligible if instance is eligible. But individual node
-- might be excluded from SLO by adding entry here. For semantic see
-- SloMetadata.exclusions. If both instance and node level exclusions are
-- present for time period, the node level\'s reason will be reported by
-- Eligibility Exporter.
gcsmpvnsmExclusions :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata [GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion]
gcsmpvnsmExclusions
  = lens _gcsmpvnsmExclusions
      (\ s a -> s{_gcsmpvnsmExclusions = a})
      . _Default
      . _Coerce

-- | The id of the node. This should be equal to SaasInstanceNode.node_id.
gcsmpvnsmNodeId :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata (Maybe Text)
gcsmpvnsmNodeId
  = lens _gcsmpvnsmNodeId
      (\ s a -> s{_gcsmpvnsmNodeId = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata'
                   <$>
                   (o .:? "perSliEligibility") <*> (o .:? "location")
                     <*> (o .:? "exclusions" .!= mempty)
                     <*> (o .:? "nodeId"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata'{..}
          = object
              (catMaybes
                 [("perSliEligibility" .=) <$>
                    _gcsmpvnsmPerSliEligibility,
                  ("location" .=) <$> _gcsmpvnsmLocation,
                  ("exclusions" .=) <$> _gcsmpvnsmExclusions,
                  ("nodeId" .=) <$> _gcsmpvnsmNodeId])

-- | SloMetadata contains resources required for proper SLO classification of
-- the instance.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1SloMetadata' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata'
    { _gcsmpvsmPerSliEligibility :: !(Maybe GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility)
    , _gcsmpvsmExclusions :: !(Maybe [GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion])
    , _gcsmpvsmTier :: !(Maybe Text)
    , _gcsmpvsmNodes :: !(Maybe [GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvsmPerSliEligibility'
--
-- * 'gcsmpvsmExclusions'
--
-- * 'gcsmpvsmTier'
--
-- * 'gcsmpvsmNodes'
googleCloudSaasacceleratorManagementProvidersV1SloMetadata
    :: GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
googleCloudSaasacceleratorManagementProvidersV1SloMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata'
    { _gcsmpvsmPerSliEligibility = Nothing
    , _gcsmpvsmExclusions = Nothing
    , _gcsmpvsmTier = Nothing
    , _gcsmpvsmNodes = Nothing
    }


-- | Optional. Multiple per-instance SLI eligibilities which apply for
-- individual SLIs.
gcsmpvsmPerSliEligibility :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata (Maybe GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility)
gcsmpvsmPerSliEligibility
  = lens _gcsmpvsmPerSliEligibility
      (\ s a -> s{_gcsmpvsmPerSliEligibility = a})

-- | List of SLO exclusion windows. When multiple entries in the list match
-- (matching the exclusion time-window against current time point) the
-- exclusion reason used in the first matching entry will be published. It
-- is not needed to include expired exclusion in this list, as only the
-- currently applicable exclusions are taken into account by the
-- eligibility exporting subsystem (the historical state of exclusions will
-- be reflected in the historically produced timeseries regardless of the
-- current state). This field can be used to mark the instance as temporary
-- ineligible for the purpose of SLO calculation. For permanent instance
-- SLO exclusion, use of custom instance eligibility is recommended. See
-- \'eligibility\' field below.
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

-- | Optional. List of nodes. Some producers need to use per-node metadata to
-- calculate SLO. This field allows such producers to publish per-node SLO
-- meta data, which will be consumed by SSA Eligibility Exporter and
-- published in the form of per node metric to Monarch.
gcsmpvsmNodes :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata [GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata]
gcsmpvsmNodes
  = lens _gcsmpvsmNodes
      (\ s a -> s{_gcsmpvsmNodes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata'
                   <$>
                   (o .:? "perSliEligibility") <*>
                     (o .:? "exclusions" .!= mempty)
                     <*> (o .:? "tier")
                     <*> (o .:? "nodes" .!= mempty))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata'{..}
          = object
              (catMaybes
                 [("perSliEligibility" .=) <$>
                    _gcsmpvsmPerSliEligibility,
                  ("exclusions" .=) <$> _gcsmpvsmExclusions,
                  ("tier" .=) <$> _gcsmpvsmTier,
                  ("nodes" .=) <$> _gcsmpvsmNodes])

-- | Optional. The MaintenancePolicies that have been attached to the
-- instance. The key must be of the type name of the oneof policy name
-- defined in MaintenancePolicy, and the embedded policy must define the
-- same policy type. For complete details of MaintenancePolicy, please
-- refer to go\/cloud-saas-mw-ug. If only the name is needed (like in the
-- deprecated Instance.maintenance_policy_names field) then only populate
-- MaintenancePolicy.name.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies'
    { _gcsmpvmsmpAddtional :: HashMap Text MaintenancePolicy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvmsmpAddtional'
googleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies
    :: HashMap Text MaintenancePolicy -- ^ 'gcsmpvmsmpAddtional'
    -> GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies
googleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies pGcsmpvmsmpAddtional_ =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies'
    {_gcsmpvmsmpAddtional = _Coerce # pGcsmpvmsmpAddtional_}


gcsmpvmsmpAddtional :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies (HashMap Text MaintenancePolicy)
gcsmpvmsmpAddtional
  = lens _gcsmpvmsmpAddtional
      (\ s a -> s{_gcsmpvmsmpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies
         where
        toJSON = toJSON . _gcsmpvmsmpAddtional

-- | Defines policies to service maintenance events.
--
-- /See:/ 'maintenancePolicy' smart constructor.
data MaintenancePolicy =
  MaintenancePolicy'
    { _mpState :: !(Maybe MaintenancePolicyState)
    , _mpUpdatePolicy :: !(Maybe UpdatePolicy)
    , _mpUpdateTime :: !(Maybe DateTime')
    , _mpName :: !(Maybe Text)
    , _mpLabels :: !(Maybe MaintenancePolicyLabels)
    , _mpDescription :: !(Maybe Text)
    , _mpCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpState'
--
-- * 'mpUpdatePolicy'
--
-- * 'mpUpdateTime'
--
-- * 'mpName'
--
-- * 'mpLabels'
--
-- * 'mpDescription'
--
-- * 'mpCreateTime'
maintenancePolicy
    :: MaintenancePolicy
maintenancePolicy =
  MaintenancePolicy'
    { _mpState = Nothing
    , _mpUpdatePolicy = Nothing
    , _mpUpdateTime = Nothing
    , _mpName = Nothing
    , _mpLabels = Nothing
    , _mpDescription = Nothing
    , _mpCreateTime = Nothing
    }


-- | Optional. The state of the policy.
mpState :: Lens' MaintenancePolicy (Maybe MaintenancePolicyState)
mpState = lens _mpState (\ s a -> s{_mpState = a})

-- | Maintenance policy applicable to instance update.
mpUpdatePolicy :: Lens' MaintenancePolicy (Maybe UpdatePolicy)
mpUpdatePolicy
  = lens _mpUpdatePolicy
      (\ s a -> s{_mpUpdatePolicy = a})

-- | Output only. The time when the resource was updated.
mpUpdateTime :: Lens' MaintenancePolicy (Maybe UTCTime)
mpUpdateTime
  = lens _mpUpdateTime (\ s a -> s{_mpUpdateTime = a})
      . mapping _DateTime

-- | Required. MaintenancePolicy name using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/maintenancePolicies\/{maintenance_policy_id}\`
-- where {project_id} refers to a GCP consumer project ID, {location_id}
-- refers to a GCP region\/zone, {maintenance_policy_id} must be 1-63
-- characters long and match the regular expression
-- \`[a-z0-9]([-a-z0-9]*[a-z0-9])?\`.
mpName :: Lens' MaintenancePolicy (Maybe Text)
mpName = lens _mpName (\ s a -> s{_mpName = a})

-- | Optional. Resource labels to represent user provided metadata. Each
-- label is a key-value pair, where both the key and the value are
-- arbitrary strings provided by the user.
mpLabels :: Lens' MaintenancePolicy (Maybe MaintenancePolicyLabels)
mpLabels = lens _mpLabels (\ s a -> s{_mpLabels = a})

-- | Optional. Description of what this policy is for. Create\/Update methods
-- return INVALID_ARGUMENT if the length is greater than 512.
mpDescription :: Lens' MaintenancePolicy (Maybe Text)
mpDescription
  = lens _mpDescription
      (\ s a -> s{_mpDescription = a})

-- | Output only. The time when the resource was created.
mpCreateTime :: Lens' MaintenancePolicy (Maybe UTCTime)
mpCreateTime
  = lens _mpCreateTime (\ s a -> s{_mpCreateTime = a})
      . mapping _DateTime

instance FromJSON MaintenancePolicy where
        parseJSON
          = withObject "MaintenancePolicy"
              (\ o ->
                 MaintenancePolicy' <$>
                   (o .:? "state") <*> (o .:? "updatePolicy") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON MaintenancePolicy where
        toJSON MaintenancePolicy'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _mpState,
                  ("updatePolicy" .=) <$> _mpUpdatePolicy,
                  ("updateTime" .=) <$> _mpUpdateTime,
                  ("name" .=) <$> _mpName, ("labels" .=) <$> _mpLabels,
                  ("description" .=) <$> _mpDescription,
                  ("createTime" .=) <$> _mpCreateTime])

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

-- | SloExclusion represents an exclusion in SLI calculation applies to all
-- SLOs.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1SloExclusion' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion =
  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion'
    { _gStartTime :: !(Maybe DateTime')
    , _gReason :: !(Maybe Text)
    , _gDuration :: !(Maybe GDuration)
    , _gSliName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gStartTime'
--
-- * 'gReason'
--
-- * 'gDuration'
--
-- * 'gSliName'
googleCloudSaasacceleratorManagementProvidersV1SloExclusion
    :: GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
googleCloudSaasacceleratorManagementProvidersV1SloExclusion =
  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion'
    { _gStartTime = Nothing
    , _gReason = Nothing
    , _gDuration = Nothing
    , _gSliName = Nothing
    }


-- | Start time of the exclusion. No alignment (e.g. to a full minute)
-- needed.
gStartTime :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion (Maybe UTCTime)
gStartTime
  = lens _gStartTime (\ s a -> s{_gStartTime = a}) .
      mapping _DateTime

-- | Human-readable reason for the exclusion. This should be a static string
-- (e.g. \"Disruptive update in progress\") and should not contain
-- dynamically generated data (e.g. instance name). Can be left empty.
gReason :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion (Maybe Text)
gReason = lens _gReason (\ s a -> s{_gReason = a})

-- | Exclusion duration. No restrictions on the possible values. When an
-- ongoing operation is taking longer than initially expected, an existing
-- entry in the exclusion list can be updated by extending the duration.
-- This is supported by the subsystem exporting eligibility data as long as
-- such extension is committed at least 10 minutes before the original
-- exclusion expiration - otherwise it is possible that there will be
-- \"gaps\" in the exclusion application in the exported timeseries.
gDuration :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion (Maybe Scientific)
gDuration
  = lens _gDuration (\ s a -> s{_gDuration = a}) .
      mapping _GDuration

-- | Name of an SLI that this exclusion applies to. Can be left empty,
-- signaling that the instance should be excluded from all SLIs.
gSliName :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion (Maybe Text)
gSliName = lens _gSliName (\ s a -> s{_gSliName = a})

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion'
                   <$>
                   (o .:? "startTime") <*> (o .:? "reason") <*>
                     (o .:? "duration")
                     <*> (o .:? "sliName"))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
         where
        toJSON
          GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gStartTime,
                  ("reason" .=) <$> _gReason,
                  ("duration" .=) <$> _gDuration,
                  ("sliName" .=) <$> _gSliName])

-- | RestoreInstanceRequest restores an existing instances\'s file share from
-- a backup.
--
-- /See:/ 'restoreInstanceRequest' smart constructor.
data RestoreInstanceRequest =
  RestoreInstanceRequest'
    { _rirSourceBackup :: !(Maybe Text)
    , _rirFileShare :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rirSourceBackup'
--
-- * 'rirFileShare'
restoreInstanceRequest
    :: RestoreInstanceRequest
restoreInstanceRequest =
  RestoreInstanceRequest' {_rirSourceBackup = Nothing, _rirFileShare = Nothing}


-- | The resource name of the backup, in the format
-- projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id}.
rirSourceBackup :: Lens' RestoreInstanceRequest (Maybe Text)
rirSourceBackup
  = lens _rirSourceBackup
      (\ s a -> s{_rirSourceBackup = a})

-- | Required. Name of the file share in the Cloud Filestore instance that
-- the backup is being restored to.
rirFileShare :: Lens' RestoreInstanceRequest (Maybe Text)
rirFileShare
  = lens _rirFileShare (\ s a -> s{_rirFileShare = a})

instance FromJSON RestoreInstanceRequest where
        parseJSON
          = withObject "RestoreInstanceRequest"
              (\ o ->
                 RestoreInstanceRequest' <$>
                   (o .:? "sourceBackup") <*> (o .:? "fileShare"))

instance ToJSON RestoreInstanceRequest where
        toJSON RestoreInstanceRequest'{..}
          = object
              (catMaybes
                 [("sourceBackup" .=) <$> _rirSourceBackup,
                  ("fileShare" .=) <$> _rirFileShare])

-- | Represents a time of day. The date and time zone are either not
-- significant or are specified elsewhere. An API may choose to allow leap
-- seconds. Related types are google.type.Date and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'timeOfDay' smart constructor.
data TimeOfDay' =
  TimeOfDay''
    { _todNanos :: !(Maybe (Textual Int32))
    , _todHours :: !(Maybe (Textual Int32))
    , _todMinutes :: !(Maybe (Textual Int32))
    , _todSeconds :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todNanos'
--
-- * 'todHours'
--
-- * 'todMinutes'
--
-- * 'todSeconds'
timeOfDay
    :: TimeOfDay'
timeOfDay =
  TimeOfDay''
    { _todNanos = Nothing
    , _todHours = Nothing
    , _todMinutes = Nothing
    , _todSeconds = Nothing
    }


-- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
todNanos :: Lens' TimeOfDay' (Maybe Int32)
todNanos
  = lens _todNanos (\ s a -> s{_todNanos = a}) .
      mapping _Coerce

-- | Hours of day in 24 hour format. Should be from 0 to 23. An API may
-- choose to allow the value \"24:00:00\" for scenarios like business
-- closing time.
todHours :: Lens' TimeOfDay' (Maybe Int32)
todHours
  = lens _todHours (\ s a -> s{_todHours = a}) .
      mapping _Coerce

-- | Minutes of hour of day. Must be from 0 to 59.
todMinutes :: Lens' TimeOfDay' (Maybe Int32)
todMinutes
  = lens _todMinutes (\ s a -> s{_todMinutes = a}) .
      mapping _Coerce

-- | Seconds of minutes of the time. Must normally be from 0 to 59. An API
-- may allow the value 60 if it allows leap-seconds.
todSeconds :: Lens' TimeOfDay' (Maybe Int32)
todSeconds
  = lens _todSeconds (\ s a -> s{_todSeconds = a}) .
      mapping _Coerce

instance FromJSON TimeOfDay' where
        parseJSON
          = withObject "TimeOfDay"
              (\ o ->
                 TimeOfDay'' <$>
                   (o .:? "nanos") <*> (o .:? "hours") <*>
                     (o .:? "minutes")
                     <*> (o .:? "seconds"))

instance ToJSON TimeOfDay' where
        toJSON TimeOfDay''{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _todNanos,
                  ("hours" .=) <$> _todHours,
                  ("minutes" .=) <$> _todMinutes,
                  ("seconds" .=) <$> _todSeconds])

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

-- | Describes provisioned dataplane resources.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1ProvisionedResource' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource =
  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource'
    { _gcsmpvprResourceType :: !(Maybe Text)
    , _gcsmpvprResourceURL :: !(Maybe Text)
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

-- | The MaintenanceSchedule contains the scheduling information of published
-- maintenance schedule with same key as software_versions.
--
-- /See:/ 'googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules'
    { _gcsmpvimsAddtional :: HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsmpvimsAddtional'
googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules
    :: HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule -- ^ 'gcsmpvimsAddtional'
    -> GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules
googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules pGcsmpvimsAddtional_ =
  GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules'
    {_gcsmpvimsAddtional = _Coerce # pGcsmpvimsAddtional_}


gcsmpvimsAddtional :: Lens' GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules (HashMap Text GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule)
gcsmpvimsAddtional
  = lens _gcsmpvimsAddtional
      (\ s a -> s{_gcsmpvimsAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules
         where
        parseJSON
          = withObject
              "GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules"
              (\ o ->
                 GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules
         where
        toJSON = toJSON . _gcsmpvimsAddtional

-- | ListInstancesResponse is the result of ListInstancesRequest.
--
-- /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirUnreachable :: !(Maybe [Text])
    , _lirInstances :: !(Maybe [Instance])
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

-- | DenyMaintenancePeriod definition. Maintenance is forbidden within the
-- deny period. The start_date must be less than the end_date.
--
-- /See:/ 'denyMaintenancePeriod' smart constructor.
data DenyMaintenancePeriod =
  DenyMaintenancePeriod'
    { _dmpTime :: !(Maybe TimeOfDay')
    , _dmpEndDate :: !(Maybe Date)
    , _dmpStartDate :: !(Maybe Date)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DenyMaintenancePeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmpTime'
--
-- * 'dmpEndDate'
--
-- * 'dmpStartDate'
denyMaintenancePeriod
    :: DenyMaintenancePeriod
denyMaintenancePeriod =
  DenyMaintenancePeriod'
    {_dmpTime = Nothing, _dmpEndDate = Nothing, _dmpStartDate = Nothing}


-- | Time in UTC when the Blackout period starts on start_date and ends on
-- end_date. This can be: * Full time. * All zeros for 00:00:00 UTC
dmpTime :: Lens' DenyMaintenancePeriod (Maybe TimeOfDay')
dmpTime = lens _dmpTime (\ s a -> s{_dmpTime = a})

-- | Deny period end date. This can be: * A full date, with non-zero year,
-- month and day values. * A month and day value, with a zero year. Allows
-- recurring deny periods each year. Date matching this period will have to
-- be before the end.
dmpEndDate :: Lens' DenyMaintenancePeriod (Maybe Date)
dmpEndDate
  = lens _dmpEndDate (\ s a -> s{_dmpEndDate = a})

-- | Deny period start date. This can be: * A full date, with non-zero year,
-- month and day values. * A month and day value, with a zero year. Allows
-- recurring deny periods each year. Date matching this period will have to
-- be the same or after the start.
dmpStartDate :: Lens' DenyMaintenancePeriod (Maybe Date)
dmpStartDate
  = lens _dmpStartDate (\ s a -> s{_dmpStartDate = a})

instance FromJSON DenyMaintenancePeriod where
        parseJSON
          = withObject "DenyMaintenancePeriod"
              (\ o ->
                 DenyMaintenancePeriod' <$>
                   (o .:? "time") <*> (o .:? "endDate") <*>
                     (o .:? "startDate"))

instance ToJSON DenyMaintenancePeriod where
        toJSON DenyMaintenancePeriod'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _dmpTime,
                  ("endDate" .=) <$> _dmpEndDate,
                  ("startDate" .=) <$> _dmpStartDate])

-- | Time window specified for weekly operations.
--
-- /See:/ 'weeklyCycle' smart constructor.
newtype WeeklyCycle =
  WeeklyCycle'
    { _wcSchedule :: Maybe [Schedule]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WeeklyCycle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcSchedule'
weeklyCycle
    :: WeeklyCycle
weeklyCycle = WeeklyCycle' {_wcSchedule = Nothing}


-- | User can specify multiple windows in a week. Minimum of 1 window.
wcSchedule :: Lens' WeeklyCycle [Schedule]
wcSchedule
  = lens _wcSchedule (\ s a -> s{_wcSchedule = a}) .
      _Default
      . _Coerce

instance FromJSON WeeklyCycle where
        parseJSON
          = withObject "WeeklyCycle"
              (\ o ->
                 WeeklyCycle' <$> (o .:? "schedule" .!= mempty))

instance ToJSON WeeklyCycle where
        toJSON WeeklyCycle'{..}
          = object
              (catMaybes [("schedule" .=) <$> _wcSchedule])

-- | Deprecated. The MaintenancePolicies that have been attached to the
-- instance. The key must be of the type name of the oneof policy name
-- defined in MaintenancePolicy, and the referenced policy must define the
-- same policy type. For complete details of MaintenancePolicy, please
-- refer to go\/cloud-saas-mw-ug.
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
    { _iSatisfiesPzs :: !(Maybe Bool)
    , _iEtag :: !(Maybe Text)
    , _iState :: !(Maybe InstanceState)
    , _iNetworks :: !(Maybe [NetworkConfig])
    , _iFileShares :: !(Maybe [FileShareConfig])
    , _iName :: !(Maybe Text)
    , _iStatusMessage :: !(Maybe Text)
    , _iTier :: !(Maybe InstanceTier)
    , _iLabels :: !(Maybe InstanceLabels)
    , _iDescription :: !(Maybe Text)
    , _iCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iSatisfiesPzs'
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
    { _iSatisfiesPzs = Nothing
    , _iEtag = Nothing
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


-- | Output only. Reserved for future use.
iSatisfiesPzs :: Lens' Instance (Maybe Bool)
iSatisfiesPzs
  = lens _iSatisfiesPzs
      (\ s a -> s{_iSatisfiesPzs = a})

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
-- projects\/{project}\/locations\/{location}\/instances\/{instance}.
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

-- | The description of the instance (2048 characters or less).
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
                   (o .:? "satisfiesPzs") <*> (o .:? "etag") <*>
                     (o .:? "state")
                     <*> (o .:? "networks" .!= mempty)
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
                 [("satisfiesPzs" .=) <$> _iSatisfiesPzs,
                  ("etag" .=) <$> _iEtag, ("state" .=) <$> _iState,
                  ("networks" .=) <$> _iNetworks,
                  ("fileShares" .=) <$> _iFileShares,
                  ("name" .=) <$> _iName,
                  ("statusMessage" .=) <$> _iStatusMessage,
                  ("tier" .=) <$> _iTier, ("labels" .=) <$> _iLabels,
                  ("description" .=) <$> _iDescription,
                  ("createTime" .=) <$> _iCreateTime])
