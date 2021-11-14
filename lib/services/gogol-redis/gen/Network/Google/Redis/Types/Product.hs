{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Redis.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Redis.Types.Product where

import Network.Google.Prelude
import Network.Google.Redis.Types.Sum

-- | Request for Failover.
--
-- /See:/ 'failoverInstanceRequest' smart constructor.
newtype FailoverInstanceRequest =
  FailoverInstanceRequest'
    { _firDataProtectionMode :: Maybe FailoverInstanceRequestDataProtectionMode
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailoverInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'firDataProtectionMode'
failoverInstanceRequest
    :: FailoverInstanceRequest
failoverInstanceRequest =
  FailoverInstanceRequest' {_firDataProtectionMode = Nothing}


-- | Optional. Available data protection modes that the user can choose. If
-- it\'s unspecified, data protection mode will be LIMITED_DATA_LOSS by
-- default.
firDataProtectionMode :: Lens' FailoverInstanceRequest (Maybe FailoverInstanceRequestDataProtectionMode)
firDataProtectionMode
  = lens _firDataProtectionMode
      (\ s a -> s{_firDataProtectionMode = a})

instance FromJSON FailoverInstanceRequest where
        parseJSON
          = withObject "FailoverInstanceRequest"
              (\ o ->
                 FailoverInstanceRequest' <$>
                   (o .:? "dataProtectionMode"))

instance ToJSON FailoverInstanceRequest where
        toJSON FailoverInstanceRequest'{..}
          = object
              (catMaybes
                 [("dataProtectionMode" .=) <$>
                    _firDataProtectionMode])

-- | Resource labels to represent user provided metadata
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

-- | The Cloud Storage location for the input content
--
-- /See:/ 'gcsSource' smart constructor.
newtype GcsSource =
  GcsSource'
    { _gsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsURI'
gcsSource
    :: GcsSource
gcsSource = GcsSource' {_gsURI = Nothing}


-- | Required. Source data URI. (e.g. \'gs:\/\/my_bucket\/my_object\').
gsURI :: Lens' GcsSource (Maybe Text)
gsURI = lens _gsURI (\ s a -> s{_gsURI = a})

instance FromJSON GcsSource where
        parseJSON
          = withObject "GcsSource"
              (\ o -> GcsSource' <$> (o .:? "uri"))

instance ToJSON GcsSource where
        toJSON GcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gsURI])

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


-- | Full resource name for the region. For example:
-- \"projects\/example-project\/locations\/us-east1\".
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Output only. The set of available zones in the location. The map is
-- keyed by the lowercase ID of each zone, as defined by Compute Engine.
-- These keys can be specified in \`location_id\` or
-- \`alternative_location_id\` fields when creating a Redis instance.
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

-- | Resource ID for the region. For example: \"us-east1\".
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

-- | Defines specific information for a particular zone. Currently empty and
-- reserved for future use only.
--
-- /See:/ 'googleCloudRedisV1ZoneMetadata' smart constructor.
data GoogleCloudRedisV1ZoneMetadata =
  GoogleCloudRedisV1ZoneMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudRedisV1ZoneMetadata' with the minimum fields required to make a request.
--
googleCloudRedisV1ZoneMetadata
    :: GoogleCloudRedisV1ZoneMetadata
googleCloudRedisV1ZoneMetadata = GoogleCloudRedisV1ZoneMetadata'


instance FromJSON GoogleCloudRedisV1ZoneMetadata
         where
        parseJSON
          = withObject "GoogleCloudRedisV1ZoneMetadata"
              (\ o -> pure GoogleCloudRedisV1ZoneMetadata')

instance ToJSON GoogleCloudRedisV1ZoneMetadata where
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

-- | { \`createTime\`: The time the operation was created. \`endTime\`: The
-- time the operation finished running. \`target\`: Server-defined resource
-- path for the target of the operation. \`verb\`: Name of the verb
-- executed by the operation. \`statusDetail\`: Human-readable status of
-- the operation, if any. \`cancelRequested\`: Identifies whether the user
-- has requested cancellation of the operation. Operations that have
-- successfully been cancelled have Operation.error value with a
-- google.rpc.Status.code of 1, corresponding to \`Code.CANCELLED\`.
-- \`apiVersion\`: API version used to start the operation. }
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

-- | Upcoming maintenance schedule. If no maintenance is scheduled, fields
-- are not populated.
--
-- /See:/ 'maintenanceSchedule' smart constructor.
data MaintenanceSchedule =
  MaintenanceSchedule'
    { _msStartTime :: !(Maybe DateTime')
    , _msCanReschedule :: !(Maybe Bool)
    , _msEndTime :: !(Maybe DateTime')
    , _msScheduleDeadlineTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenanceSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msStartTime'
--
-- * 'msCanReschedule'
--
-- * 'msEndTime'
--
-- * 'msScheduleDeadlineTime'
maintenanceSchedule
    :: MaintenanceSchedule
maintenanceSchedule =
  MaintenanceSchedule'
    { _msStartTime = Nothing
    , _msCanReschedule = Nothing
    , _msEndTime = Nothing
    , _msScheduleDeadlineTime = Nothing
    }


-- | Output only. The start time of any upcoming scheduled maintenance for
-- this instance.
msStartTime :: Lens' MaintenanceSchedule (Maybe UTCTime)
msStartTime
  = lens _msStartTime (\ s a -> s{_msStartTime = a}) .
      mapping _DateTime

-- | If the scheduled maintenance can be rescheduled, default is true.
msCanReschedule :: Lens' MaintenanceSchedule (Maybe Bool)
msCanReschedule
  = lens _msCanReschedule
      (\ s a -> s{_msCanReschedule = a})

-- | Output only. The end time of any upcoming scheduled maintenance for this
-- instance.
msEndTime :: Lens' MaintenanceSchedule (Maybe UTCTime)
msEndTime
  = lens _msEndTime (\ s a -> s{_msEndTime = a}) .
      mapping _DateTime

-- | Output only. The deadline that the maintenance schedule start time can
-- not go beyond, including reschedule.
msScheduleDeadlineTime :: Lens' MaintenanceSchedule (Maybe UTCTime)
msScheduleDeadlineTime
  = lens _msScheduleDeadlineTime
      (\ s a -> s{_msScheduleDeadlineTime = a})
      . mapping _DateTime

instance FromJSON MaintenanceSchedule where
        parseJSON
          = withObject "MaintenanceSchedule"
              (\ o ->
                 MaintenanceSchedule' <$>
                   (o .:? "startTime") <*> (o .:? "canReschedule") <*>
                     (o .:? "endTime")
                     <*> (o .:? "scheduleDeadlineTime"))

instance ToJSON MaintenanceSchedule where
        toJSON MaintenanceSchedule'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _msStartTime,
                  ("canReschedule" .=) <$> _msCanReschedule,
                  ("endTime" .=) <$> _msEndTime,
                  ("scheduleDeadlineTime" .=) <$>
                    _msScheduleDeadlineTime])

-- | Time window in which disruptive maintenance updates occur.
-- Non-disruptive updates can occur inside or outside this window.
--
-- /See:/ 'weeklyMaintenanceWindow' smart constructor.
data WeeklyMaintenanceWindow =
  WeeklyMaintenanceWindow'
    { _wmwStartTime :: !(Maybe TimeOfDay')
    , _wmwDay :: !(Maybe WeeklyMaintenanceWindowDay)
    , _wmwDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WeeklyMaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmwStartTime'
--
-- * 'wmwDay'
--
-- * 'wmwDuration'
weeklyMaintenanceWindow
    :: WeeklyMaintenanceWindow
weeklyMaintenanceWindow =
  WeeklyMaintenanceWindow'
    {_wmwStartTime = Nothing, _wmwDay = Nothing, _wmwDuration = Nothing}


-- | Required. Start time of the window in UTC time.
wmwStartTime :: Lens' WeeklyMaintenanceWindow (Maybe TimeOfDay')
wmwStartTime
  = lens _wmwStartTime (\ s a -> s{_wmwStartTime = a})

-- | Required. The day of week that maintenance updates occur.
wmwDay :: Lens' WeeklyMaintenanceWindow (Maybe WeeklyMaintenanceWindowDay)
wmwDay = lens _wmwDay (\ s a -> s{_wmwDay = a})

-- | Output only. Duration of the maintenance window. The current window is
-- fixed at 1 hour.
wmwDuration :: Lens' WeeklyMaintenanceWindow (Maybe Scientific)
wmwDuration
  = lens _wmwDuration (\ s a -> s{_wmwDuration = a}) .
      mapping _GDuration

instance FromJSON WeeklyMaintenanceWindow where
        parseJSON
          = withObject "WeeklyMaintenanceWindow"
              (\ o ->
                 WeeklyMaintenanceWindow' <$>
                   (o .:? "startTime") <*> (o .:? "day") <*>
                     (o .:? "duration"))

instance ToJSON WeeklyMaintenanceWindow where
        toJSON WeeklyMaintenanceWindow'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _wmwStartTime,
                  ("day" .=) <$> _wmwDay,
                  ("duration" .=) <$> _wmwDuration])

-- | The Cloud Storage location for the output content
--
-- /See:/ 'gcsDestination' smart constructor.
newtype GcsDestination =
  GcsDestination'
    { _gdURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdURI'
gcsDestination
    :: GcsDestination
gcsDestination = GcsDestination' {_gdURI = Nothing}


-- | Required. Data destination URI (e.g. \'gs:\/\/my_bucket\/my_object\').
-- Existing files will be overwritten.
gdURI :: Lens' GcsDestination (Maybe Text)
gdURI = lens _gdURI (\ s a -> s{_gdURI = a})

instance FromJSON GcsDestination where
        parseJSON
          = withObject "GcsDestination"
              (\ o -> GcsDestination' <$> (o .:? "uri"))

instance ToJSON GcsDestination where
        toJSON GcsDestination'{..}
          = object (catMaybes [("uri" .=) <$> _gdURI])

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

-- | This location metadata represents additional configuration options for a
-- given location where a Redis instance may be created. All fields are
-- output only. It is returned as content of the
-- \`google.cloud.location.Location.metadata\` field.
--
-- /See:/ 'googleCloudRedisV1LocationMetadata' smart constructor.
newtype GoogleCloudRedisV1LocationMetadata =
  GoogleCloudRedisV1LocationMetadata'
    { _gcrvlmAvailableZones :: Maybe GoogleCloudRedisV1LocationMetadataAvailableZones
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudRedisV1LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrvlmAvailableZones'
googleCloudRedisV1LocationMetadata
    :: GoogleCloudRedisV1LocationMetadata
googleCloudRedisV1LocationMetadata =
  GoogleCloudRedisV1LocationMetadata' {_gcrvlmAvailableZones = Nothing}


-- | Output only. The set of available zones in the location. The map is
-- keyed by the lowercase ID of each zone, as defined by GCE. These keys
-- can be specified in \`location_id\` or \`alternative_location_id\`
-- fields when creating a Redis instance.
gcrvlmAvailableZones :: Lens' GoogleCloudRedisV1LocationMetadata (Maybe GoogleCloudRedisV1LocationMetadataAvailableZones)
gcrvlmAvailableZones
  = lens _gcrvlmAvailableZones
      (\ s a -> s{_gcrvlmAvailableZones = a})

instance FromJSON GoogleCloudRedisV1LocationMetadata
         where
        parseJSON
          = withObject "GoogleCloudRedisV1LocationMetadata"
              (\ o ->
                 GoogleCloudRedisV1LocationMetadata' <$>
                   (o .:? "availableZones"))

instance ToJSON GoogleCloudRedisV1LocationMetadata
         where
        toJSON GoogleCloudRedisV1LocationMetadata'{..}
          = object
              (catMaybes
                 [("availableZones" .=) <$> _gcrvlmAvailableZones])

-- | Represents the v1 metadata of the long-running operation.
--
-- /See:/ 'googleCloudRedisV1OperationMetadata' smart constructor.
data GoogleCloudRedisV1OperationMetadata =
  GoogleCloudRedisV1OperationMetadata'
    { _gcrvomAPIVersion :: !(Maybe Text)
    , _gcrvomEndTime :: !(Maybe DateTime')
    , _gcrvomStatusDetail :: !(Maybe Text)
    , _gcrvomVerb :: !(Maybe Text)
    , _gcrvomCancelRequested :: !(Maybe Bool)
    , _gcrvomTarget :: !(Maybe Text)
    , _gcrvomCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudRedisV1OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrvomAPIVersion'
--
-- * 'gcrvomEndTime'
--
-- * 'gcrvomStatusDetail'
--
-- * 'gcrvomVerb'
--
-- * 'gcrvomCancelRequested'
--
-- * 'gcrvomTarget'
--
-- * 'gcrvomCreateTime'
googleCloudRedisV1OperationMetadata
    :: GoogleCloudRedisV1OperationMetadata
googleCloudRedisV1OperationMetadata =
  GoogleCloudRedisV1OperationMetadata'
    { _gcrvomAPIVersion = Nothing
    , _gcrvomEndTime = Nothing
    , _gcrvomStatusDetail = Nothing
    , _gcrvomVerb = Nothing
    , _gcrvomCancelRequested = Nothing
    , _gcrvomTarget = Nothing
    , _gcrvomCreateTime = Nothing
    }


-- | API version.
gcrvomAPIVersion :: Lens' GoogleCloudRedisV1OperationMetadata (Maybe Text)
gcrvomAPIVersion
  = lens _gcrvomAPIVersion
      (\ s a -> s{_gcrvomAPIVersion = a})

-- | End timestamp.
gcrvomEndTime :: Lens' GoogleCloudRedisV1OperationMetadata (Maybe UTCTime)
gcrvomEndTime
  = lens _gcrvomEndTime
      (\ s a -> s{_gcrvomEndTime = a})
      . mapping _DateTime

-- | Operation status details.
gcrvomStatusDetail :: Lens' GoogleCloudRedisV1OperationMetadata (Maybe Text)
gcrvomStatusDetail
  = lens _gcrvomStatusDetail
      (\ s a -> s{_gcrvomStatusDetail = a})

-- | Operation verb.
gcrvomVerb :: Lens' GoogleCloudRedisV1OperationMetadata (Maybe Text)
gcrvomVerb
  = lens _gcrvomVerb (\ s a -> s{_gcrvomVerb = a})

-- | Specifies if cancellation was requested for the operation.
gcrvomCancelRequested :: Lens' GoogleCloudRedisV1OperationMetadata (Maybe Bool)
gcrvomCancelRequested
  = lens _gcrvomCancelRequested
      (\ s a -> s{_gcrvomCancelRequested = a})

-- | Operation target.
gcrvomTarget :: Lens' GoogleCloudRedisV1OperationMetadata (Maybe Text)
gcrvomTarget
  = lens _gcrvomTarget (\ s a -> s{_gcrvomTarget = a})

-- | Creation timestamp.
gcrvomCreateTime :: Lens' GoogleCloudRedisV1OperationMetadata (Maybe UTCTime)
gcrvomCreateTime
  = lens _gcrvomCreateTime
      (\ s a -> s{_gcrvomCreateTime = a})
      . mapping _DateTime

instance FromJSON GoogleCloudRedisV1OperationMetadata
         where
        parseJSON
          = withObject "GoogleCloudRedisV1OperationMetadata"
              (\ o ->
                 GoogleCloudRedisV1OperationMetadata' <$>
                   (o .:? "apiVersion") <*> (o .:? "endTime") <*>
                     (o .:? "statusDetail")
                     <*> (o .:? "verb")
                     <*> (o .:? "cancelRequested")
                     <*> (o .:? "target")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleCloudRedisV1OperationMetadata
         where
        toJSON GoogleCloudRedisV1OperationMetadata'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _gcrvomAPIVersion,
                  ("endTime" .=) <$> _gcrvomEndTime,
                  ("statusDetail" .=) <$> _gcrvomStatusDetail,
                  ("verb" .=) <$> _gcrvomVerb,
                  ("cancelRequested" .=) <$> _gcrvomCancelRequested,
                  ("target" .=) <$> _gcrvomTarget,
                  ("createTime" .=) <$> _gcrvomCreateTime])

-- | Optional. Redis configuration parameters, according to
-- http:\/\/redis.io\/topics\/config. Currently, the only supported
-- parameters are: Redis version 3.2 and newer: * maxmemory-policy *
-- notify-keyspace-events Redis version 4.0 and newer: * activedefrag *
-- lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and
-- newer: * stream-node-max-bytes * stream-node-max-entries
--
-- /See:/ 'instanceRedisConfigs' smart constructor.
newtype InstanceRedisConfigs =
  InstanceRedisConfigs'
    { _ircAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceRedisConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ircAddtional'
instanceRedisConfigs
    :: HashMap Text Text -- ^ 'ircAddtional'
    -> InstanceRedisConfigs
instanceRedisConfigs pIrcAddtional_ =
  InstanceRedisConfigs' {_ircAddtional = _Coerce # pIrcAddtional_}


ircAddtional :: Lens' InstanceRedisConfigs (HashMap Text Text)
ircAddtional
  = lens _ircAddtional (\ s a -> s{_ircAddtional = a})
      . _Coerce

instance FromJSON InstanceRedisConfigs where
        parseJSON
          = withObject "InstanceRedisConfigs"
              (\ o ->
                 InstanceRedisConfigs' <$> (parseJSONObject o))

instance ToJSON InstanceRedisConfigs where
        toJSON = toJSON . _ircAddtional

-- | The input content
--
-- /See:/ 'inputConfig' smart constructor.
newtype InputConfig =
  InputConfig'
    { _icGcsSource :: Maybe GcsSource
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icGcsSource'
inputConfig
    :: InputConfig
inputConfig = InputConfig' {_icGcsSource = Nothing}


-- | Google Cloud Storage location where input content is located.
icGcsSource :: Lens' InputConfig (Maybe GcsSource)
icGcsSource
  = lens _icGcsSource (\ s a -> s{_icGcsSource = a})

instance FromJSON InputConfig where
        parseJSON
          = withObject "InputConfig"
              (\ o -> InputConfig' <$> (o .:? "gcsSource"))

instance ToJSON InputConfig where
        toJSON InputConfig'{..}
          = object
              (catMaybes [("gcsSource" .=) <$> _icGcsSource])

-- | Request for Export.
--
-- /See:/ 'exportInstanceRequest' smart constructor.
newtype ExportInstanceRequest =
  ExportInstanceRequest'
    { _eirOutputConfig :: Maybe OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eirOutputConfig'
exportInstanceRequest
    :: ExportInstanceRequest
exportInstanceRequest = ExportInstanceRequest' {_eirOutputConfig = Nothing}


-- | Required. Specify data to be exported.
eirOutputConfig :: Lens' ExportInstanceRequest (Maybe OutputConfig)
eirOutputConfig
  = lens _eirOutputConfig
      (\ s a -> s{_eirOutputConfig = a})

instance FromJSON ExportInstanceRequest where
        parseJSON
          = withObject "ExportInstanceRequest"
              (\ o ->
                 ExportInstanceRequest' <$> (o .:? "outputConfig"))

instance ToJSON ExportInstanceRequest where
        toJSON ExportInstanceRequest'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _eirOutputConfig])

-- | Instance AUTH string details.
--
-- /See:/ 'instanceAuthString' smart constructor.
newtype InstanceAuthString =
  InstanceAuthString'
    { _iasAuthString :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceAuthString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iasAuthString'
instanceAuthString
    :: InstanceAuthString
instanceAuthString = InstanceAuthString' {_iasAuthString = Nothing}


-- | AUTH string set on the instance.
iasAuthString :: Lens' InstanceAuthString (Maybe Text)
iasAuthString
  = lens _iasAuthString
      (\ s a -> s{_iasAuthString = a})

instance FromJSON InstanceAuthString where
        parseJSON
          = withObject "InstanceAuthString"
              (\ o -> InstanceAuthString' <$> (o .:? "authString"))

instance ToJSON InstanceAuthString where
        toJSON InstanceAuthString'{..}
          = object
              (catMaybes [("authString" .=) <$> _iasAuthString])

-- | Output only. The set of available zones in the location. The map is
-- keyed by the lowercase ID of each zone, as defined by GCE. These keys
-- can be specified in \`location_id\` or \`alternative_location_id\`
-- fields when creating a Redis instance.
--
-- /See:/ 'googleCloudRedisV1LocationMetadataAvailableZones' smart constructor.
newtype GoogleCloudRedisV1LocationMetadataAvailableZones =
  GoogleCloudRedisV1LocationMetadataAvailableZones'
    { _gcrvlmazAddtional :: HashMap Text GoogleCloudRedisV1ZoneMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudRedisV1LocationMetadataAvailableZones' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrvlmazAddtional'
googleCloudRedisV1LocationMetadataAvailableZones
    :: HashMap Text GoogleCloudRedisV1ZoneMetadata -- ^ 'gcrvlmazAddtional'
    -> GoogleCloudRedisV1LocationMetadataAvailableZones
googleCloudRedisV1LocationMetadataAvailableZones pGcrvlmazAddtional_ =
  GoogleCloudRedisV1LocationMetadataAvailableZones'
    {_gcrvlmazAddtional = _Coerce # pGcrvlmazAddtional_}


gcrvlmazAddtional :: Lens' GoogleCloudRedisV1LocationMetadataAvailableZones (HashMap Text GoogleCloudRedisV1ZoneMetadata)
gcrvlmazAddtional
  = lens _gcrvlmazAddtional
      (\ s a -> s{_gcrvlmazAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudRedisV1LocationMetadataAvailableZones
         where
        parseJSON
          = withObject
              "GoogleCloudRedisV1LocationMetadataAvailableZones"
              (\ o ->
                 GoogleCloudRedisV1LocationMetadataAvailableZones' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudRedisV1LocationMetadataAvailableZones
         where
        toJSON = toJSON . _gcrvlmazAddtional

-- | Maintenance policy for an instance.
--
-- /See:/ 'maintenancePolicy' smart constructor.
data MaintenancePolicy =
  MaintenancePolicy'
    { _mpWeeklyMaintenanceWindow :: !(Maybe [WeeklyMaintenanceWindow])
    , _mpUpdateTime :: !(Maybe DateTime')
    , _mpDescription :: !(Maybe Text)
    , _mpCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpWeeklyMaintenanceWindow'
--
-- * 'mpUpdateTime'
--
-- * 'mpDescription'
--
-- * 'mpCreateTime'
maintenancePolicy
    :: MaintenancePolicy
maintenancePolicy =
  MaintenancePolicy'
    { _mpWeeklyMaintenanceWindow = Nothing
    , _mpUpdateTime = Nothing
    , _mpDescription = Nothing
    , _mpCreateTime = Nothing
    }


-- | Optional. Maintenance window that is applied to resources covered by
-- this policy. Minimum 1. For the current version, the maximum number of
-- weekly_window is expected to be one.
mpWeeklyMaintenanceWindow :: Lens' MaintenancePolicy [WeeklyMaintenanceWindow]
mpWeeklyMaintenanceWindow
  = lens _mpWeeklyMaintenanceWindow
      (\ s a -> s{_mpWeeklyMaintenanceWindow = a})
      . _Default
      . _Coerce

-- | Output only. The time when the policy was last updated.
mpUpdateTime :: Lens' MaintenancePolicy (Maybe UTCTime)
mpUpdateTime
  = lens _mpUpdateTime (\ s a -> s{_mpUpdateTime = a})
      . mapping _DateTime

-- | Optional. Description of what this policy is for. Create\/Update methods
-- return INVALID_ARGUMENT if the length is greater than 512.
mpDescription :: Lens' MaintenancePolicy (Maybe Text)
mpDescription
  = lens _mpDescription
      (\ s a -> s{_mpDescription = a})

-- | Output only. The time when the policy was created.
mpCreateTime :: Lens' MaintenancePolicy (Maybe UTCTime)
mpCreateTime
  = lens _mpCreateTime (\ s a -> s{_mpCreateTime = a})
      . mapping _DateTime

instance FromJSON MaintenancePolicy where
        parseJSON
          = withObject "MaintenancePolicy"
              (\ o ->
                 MaintenancePolicy' <$>
                   (o .:? "weeklyMaintenanceWindow" .!= mempty) <*>
                     (o .:? "updateTime")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON MaintenancePolicy where
        toJSON MaintenancePolicy'{..}
          = object
              (catMaybes
                 [("weeklyMaintenanceWindow" .=) <$>
                    _mpWeeklyMaintenanceWindow,
                  ("updateTime" .=) <$> _mpUpdateTime,
                  ("description" .=) <$> _mpDescription,
                  ("createTime" .=) <$> _mpCreateTime])

-- | The output content
--
-- /See:/ 'outputConfig' smart constructor.
newtype OutputConfig =
  OutputConfig'
    { _ocGcsDestination :: Maybe GcsDestination
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocGcsDestination'
outputConfig
    :: OutputConfig
outputConfig = OutputConfig' {_ocGcsDestination = Nothing}


-- | Google Cloud Storage destination for output content.
ocGcsDestination :: Lens' OutputConfig (Maybe GcsDestination)
ocGcsDestination
  = lens _ocGcsDestination
      (\ s a -> s{_ocGcsDestination = a})

instance FromJSON OutputConfig where
        parseJSON
          = withObject "OutputConfig"
              (\ o -> OutputConfig' <$> (o .:? "gcsDestination"))

instance ToJSON OutputConfig where
        toJSON OutputConfig'{..}
          = object
              (catMaybes
                 [("gcsDestination" .=) <$> _ocGcsDestination])

-- | Request for Import.
--
-- /See:/ 'importInstanceRequest' smart constructor.
newtype ImportInstanceRequest =
  ImportInstanceRequest'
    { _iirInputConfig :: Maybe InputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iirInputConfig'
importInstanceRequest
    :: ImportInstanceRequest
importInstanceRequest = ImportInstanceRequest' {_iirInputConfig = Nothing}


-- | Required. Specify data to be imported.
iirInputConfig :: Lens' ImportInstanceRequest (Maybe InputConfig)
iirInputConfig
  = lens _iirInputConfig
      (\ s a -> s{_iirInputConfig = a})

instance FromJSON ImportInstanceRequest where
        parseJSON
          = withObject "ImportInstanceRequest"
              (\ o ->
                 ImportInstanceRequest' <$> (o .:? "inputConfig"))

instance ToJSON ImportInstanceRequest where
        toJSON ImportInstanceRequest'{..}
          = object
              (catMaybes [("inputConfig" .=) <$> _iirInputConfig])

-- | Request for UpgradeInstance.
--
-- /See:/ 'upgradeInstanceRequest' smart constructor.
newtype UpgradeInstanceRequest =
  UpgradeInstanceRequest'
    { _uirRedisVersion :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpgradeInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uirRedisVersion'
upgradeInstanceRequest
    :: UpgradeInstanceRequest
upgradeInstanceRequest = UpgradeInstanceRequest' {_uirRedisVersion = Nothing}


-- | Required. Specifies the target version of Redis software to upgrade to.
uirRedisVersion :: Lens' UpgradeInstanceRequest (Maybe Text)
uirRedisVersion
  = lens _uirRedisVersion
      (\ s a -> s{_uirRedisVersion = a})

instance FromJSON UpgradeInstanceRequest where
        parseJSON
          = withObject "UpgradeInstanceRequest"
              (\ o ->
                 UpgradeInstanceRequest' <$> (o .:? "redisVersion"))

instance ToJSON UpgradeInstanceRequest where
        toJSON UpgradeInstanceRequest'{..}
          = object
              (catMaybes
                 [("redisVersion" .=) <$> _uirRedisVersion])

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

-- | Output only. The set of available zones in the location. The map is
-- keyed by the lowercase ID of each zone, as defined by Compute Engine.
-- These keys can be specified in \`location_id\` or
-- \`alternative_location_id\` fields when creating a Redis instance.
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

-- | { \`createTime\`: The time the operation was created. \`endTime\`: The
-- time the operation finished running. \`target\`: Server-defined resource
-- path for the target of the operation. \`verb\`: Name of the verb
-- executed by the operation. \`statusDetail\`: Human-readable status of
-- the operation, if any. \`cancelRequested\`: Identifies whether the user
-- has requested cancellation of the operation. Operations that have
-- successfully been cancelled have Operation.error value with a
-- google.rpc.Status.code of 1, corresponding to \`Code.CANCELLED\`.
-- \`apiVersion\`: API version used to start the operation. }
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

-- | Response for ListInstances.
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


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
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

-- | A list of Redis instances in the project in the specified location, or
-- across all locations. If the \`location_id\` in the parent field of the
-- request is \"-\", all regions available to the project are queried, and
-- the results aggregated. If in such an aggregated query a location is
-- unavailable, a placeholder Redis entry is included in the response with
-- the \`name\` field set to a value of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/\`- and
-- the \`status\` field set to ERROR and \`status_message\` field set to
-- \"location not available for ListInstances\".
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

-- | TlsCertificate Resource
--
-- /See:/ 'tlsCertificate' smart constructor.
data TLSCertificate =
  TLSCertificate'
    { _tcCert :: !(Maybe Text)
    , _tcSerialNumber :: !(Maybe Text)
    , _tcSha1Fingerprint :: !(Maybe Text)
    , _tcExpireTime :: !(Maybe DateTime')
    , _tcCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TLSCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcCert'
--
-- * 'tcSerialNumber'
--
-- * 'tcSha1Fingerprint'
--
-- * 'tcExpireTime'
--
-- * 'tcCreateTime'
tlsCertificate
    :: TLSCertificate
tlsCertificate =
  TLSCertificate'
    { _tcCert = Nothing
    , _tcSerialNumber = Nothing
    , _tcSha1Fingerprint = Nothing
    , _tcExpireTime = Nothing
    , _tcCreateTime = Nothing
    }


-- | PEM representation.
tcCert :: Lens' TLSCertificate (Maybe Text)
tcCert = lens _tcCert (\ s a -> s{_tcCert = a})

-- | Serial number, as extracted from the certificate.
tcSerialNumber :: Lens' TLSCertificate (Maybe Text)
tcSerialNumber
  = lens _tcSerialNumber
      (\ s a -> s{_tcSerialNumber = a})

-- | Sha1 Fingerprint of the certificate.
tcSha1Fingerprint :: Lens' TLSCertificate (Maybe Text)
tcSha1Fingerprint
  = lens _tcSha1Fingerprint
      (\ s a -> s{_tcSha1Fingerprint = a})

-- | Output only. The time when the certificate expires in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- \`2020-05-18T00:00:00.094Z\`.
tcExpireTime :: Lens' TLSCertificate (Maybe UTCTime)
tcExpireTime
  = lens _tcExpireTime (\ s a -> s{_tcExpireTime = a})
      . mapping _DateTime

-- | Output only. The time when the certificate was created in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- \`2020-05-18T00:00:00.094Z\`.
tcCreateTime :: Lens' TLSCertificate (Maybe UTCTime)
tcCreateTime
  = lens _tcCreateTime (\ s a -> s{_tcCreateTime = a})
      . mapping _DateTime

instance FromJSON TLSCertificate where
        parseJSON
          = withObject "TLSCertificate"
              (\ o ->
                 TLSCertificate' <$>
                   (o .:? "cert") <*> (o .:? "serialNumber") <*>
                     (o .:? "sha1Fingerprint")
                     <*> (o .:? "expireTime")
                     <*> (o .:? "createTime"))

instance ToJSON TLSCertificate where
        toJSON TLSCertificate'{..}
          = object
              (catMaybes
                 [("cert" .=) <$> _tcCert,
                  ("serialNumber" .=) <$> _tcSerialNumber,
                  ("sha1Fingerprint" .=) <$> _tcSha1Fingerprint,
                  ("expireTime" .=) <$> _tcExpireTime,
                  ("createTime" .=) <$> _tcCreateTime])

-- | Request for RescheduleMaintenance.
--
-- /See:/ 'rescheduleMaintenanceRequest' smart constructor.
data RescheduleMaintenanceRequest =
  RescheduleMaintenanceRequest'
    { _rmrScheduleTime :: !(Maybe DateTime')
    , _rmrRescheduleType :: !(Maybe RescheduleMaintenanceRequestRescheduleType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RescheduleMaintenanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmrScheduleTime'
--
-- * 'rmrRescheduleType'
rescheduleMaintenanceRequest
    :: RescheduleMaintenanceRequest
rescheduleMaintenanceRequest =
  RescheduleMaintenanceRequest'
    {_rmrScheduleTime = Nothing, _rmrRescheduleType = Nothing}


-- | Optional. Timestamp when the maintenance shall be rescheduled to if
-- reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example
-- \`2012-11-15T16:19:00.094Z\`.
rmrScheduleTime :: Lens' RescheduleMaintenanceRequest (Maybe UTCTime)
rmrScheduleTime
  = lens _rmrScheduleTime
      (\ s a -> s{_rmrScheduleTime = a})
      . mapping _DateTime

-- | Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time
-- as well.
rmrRescheduleType :: Lens' RescheduleMaintenanceRequest (Maybe RescheduleMaintenanceRequestRescheduleType)
rmrRescheduleType
  = lens _rmrRescheduleType
      (\ s a -> s{_rmrRescheduleType = a})

instance FromJSON RescheduleMaintenanceRequest where
        parseJSON
          = withObject "RescheduleMaintenanceRequest"
              (\ o ->
                 RescheduleMaintenanceRequest' <$>
                   (o .:? "scheduleTime") <*> (o .:? "rescheduleType"))

instance ToJSON RescheduleMaintenanceRequest where
        toJSON RescheduleMaintenanceRequest'{..}
          = object
              (catMaybes
                 [("scheduleTime" .=) <$> _rmrScheduleTime,
                  ("rescheduleType" .=) <$> _rmrRescheduleType])

-- | A Google Cloud Redis instance. next id = 30
--
-- /See:/ 'instance'' smart constructor.
data Instance =
  Instance'
    { _iServerCaCerts :: !(Maybe [TLSCertificate])
    , _iPersistenceIAMIdentity :: !(Maybe Text)
    , _iState :: !(Maybe InstanceState)
    , _iAuthEnabled :: !(Maybe Bool)
    , _iMaintenanceSchedule :: !(Maybe MaintenanceSchedule)
    , _iTransitEncryptionMode :: !(Maybe InstanceTransitEncryptionMode)
    , _iAuthorizedNetwork :: !(Maybe Text)
    , _iMemorySizeGb :: !(Maybe (Textual Int32))
    , _iName :: !(Maybe Text)
    , _iStatusMessage :: !(Maybe Text)
    , _iAlternativeLocationId :: !(Maybe Text)
    , _iReservedIPRange :: !(Maybe Text)
    , _iTier :: !(Maybe InstanceTier)
    , _iDisplayName :: !(Maybe Text)
    , _iLabels :: !(Maybe InstanceLabels)
    , _iMaintenancePolicy :: !(Maybe MaintenancePolicy)
    , _iConnectMode :: !(Maybe InstanceConnectMode)
    , _iLocationId :: !(Maybe Text)
    , _iHost :: !(Maybe Text)
    , _iRedisConfigs :: !(Maybe InstanceRedisConfigs)
    , _iRedisVersion :: !(Maybe Text)
    , _iCreateTime :: !(Maybe DateTime')
    , _iPort :: !(Maybe (Textual Int32))
    , _iCurrentLocationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iServerCaCerts'
--
-- * 'iPersistenceIAMIdentity'
--
-- * 'iState'
--
-- * 'iAuthEnabled'
--
-- * 'iMaintenanceSchedule'
--
-- * 'iTransitEncryptionMode'
--
-- * 'iAuthorizedNetwork'
--
-- * 'iMemorySizeGb'
--
-- * 'iName'
--
-- * 'iStatusMessage'
--
-- * 'iAlternativeLocationId'
--
-- * 'iReservedIPRange'
--
-- * 'iTier'
--
-- * 'iDisplayName'
--
-- * 'iLabels'
--
-- * 'iMaintenancePolicy'
--
-- * 'iConnectMode'
--
-- * 'iLocationId'
--
-- * 'iHost'
--
-- * 'iRedisConfigs'
--
-- * 'iRedisVersion'
--
-- * 'iCreateTime'
--
-- * 'iPort'
--
-- * 'iCurrentLocationId'
instance'
    :: Instance
instance' =
  Instance'
    { _iServerCaCerts = Nothing
    , _iPersistenceIAMIdentity = Nothing
    , _iState = Nothing
    , _iAuthEnabled = Nothing
    , _iMaintenanceSchedule = Nothing
    , _iTransitEncryptionMode = Nothing
    , _iAuthorizedNetwork = Nothing
    , _iMemorySizeGb = Nothing
    , _iName = Nothing
    , _iStatusMessage = Nothing
    , _iAlternativeLocationId = Nothing
    , _iReservedIPRange = Nothing
    , _iTier = Nothing
    , _iDisplayName = Nothing
    , _iLabels = Nothing
    , _iMaintenancePolicy = Nothing
    , _iConnectMode = Nothing
    , _iLocationId = Nothing
    , _iHost = Nothing
    , _iRedisConfigs = Nothing
    , _iRedisVersion = Nothing
    , _iCreateTime = Nothing
    , _iPort = Nothing
    , _iCurrentLocationId = Nothing
    }


-- | Output only. List of server CA certificates for the instance.
iServerCaCerts :: Lens' Instance [TLSCertificate]
iServerCaCerts
  = lens _iServerCaCerts
      (\ s a -> s{_iServerCaCerts = a})
      . _Default
      . _Coerce

-- | Output only. Cloud IAM identity used by import \/ export operations to
-- transfer data to\/from Cloud Storage. Format is \"serviceAccount:\". The
-- value may change over time for a given instance so should be checked
-- before each import\/export operation.
iPersistenceIAMIdentity :: Lens' Instance (Maybe Text)
iPersistenceIAMIdentity
  = lens _iPersistenceIAMIdentity
      (\ s a -> s{_iPersistenceIAMIdentity = a})

-- | Output only. The current state of this instance.
iState :: Lens' Instance (Maybe InstanceState)
iState = lens _iState (\ s a -> s{_iState = a})

-- | Optional. Indicates whether OSS Redis AUTH is enabled for the instance.
-- If set to \"true\" AUTH is enabled on the instance. Default value is
-- \"false\" meaning AUTH is disabled.
iAuthEnabled :: Lens' Instance (Maybe Bool)
iAuthEnabled
  = lens _iAuthEnabled (\ s a -> s{_iAuthEnabled = a})

-- | Output only. Date and time of upcoming maintenance events which have
-- been scheduled.
iMaintenanceSchedule :: Lens' Instance (Maybe MaintenanceSchedule)
iMaintenanceSchedule
  = lens _iMaintenanceSchedule
      (\ s a -> s{_iMaintenanceSchedule = a})

-- | Optional. The TLS mode of the Redis instance. If not provided, TLS is
-- disabled for the instance.
iTransitEncryptionMode :: Lens' Instance (Maybe InstanceTransitEncryptionMode)
iTransitEncryptionMode
  = lens _iTransitEncryptionMode
      (\ s a -> s{_iTransitEncryptionMode = a})

-- | Optional. The full name of the Google Compute Engine
-- [network](https:\/\/cloud.google.com\/vpc\/docs\/vpc) to which the
-- instance is connected. If left unspecified, the \`default\` network will
-- be used.
iAuthorizedNetwork :: Lens' Instance (Maybe Text)
iAuthorizedNetwork
  = lens _iAuthorizedNetwork
      (\ s a -> s{_iAuthorizedNetwork = a})

-- | Required. Redis memory size in GiB.
iMemorySizeGb :: Lens' Instance (Maybe Int32)
iMemorySizeGb
  = lens _iMemorySizeGb
      (\ s a -> s{_iMemorySizeGb = a})
      . mapping _Coerce

-- | Required. Unique name of the resource in this scope including project
-- and location using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
-- Note: Redis instances are managed and addressed at regional level so
-- location_id here refers to a GCP region; however, users may choose which
-- specific zone (or collection of zones for cross-zone instances) an
-- instance should be provisioned in. Refer to location_id and
-- alternative_location_id fields for more details.
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | Output only. Additional information about the current status of this
-- instance, if available.
iStatusMessage :: Lens' Instance (Maybe Text)
iStatusMessage
  = lens _iStatusMessage
      (\ s a -> s{_iStatusMessage = a})

-- | Optional. Only applicable to STANDARD_HA tier which protects the
-- instance against zonal failures by provisioning it across two zones. If
-- provided, it must be a different zone from the one provided in
-- location_id.
iAlternativeLocationId :: Lens' Instance (Maybe Text)
iAlternativeLocationId
  = lens _iAlternativeLocationId
      (\ s a -> s{_iAlternativeLocationId = a})

-- | Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses
-- that are reserved for this instance. Range must be unique and
-- non-overlapping with existing subnets in an authorized network. For
-- PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges
-- associated with this private service access connection. If not provided,
-- the service will choose an unused \/29 block, for example, 10.0.0.0\/29
-- or 192.168.0.0\/29.
iReservedIPRange :: Lens' Instance (Maybe Text)
iReservedIPRange
  = lens _iReservedIPRange
      (\ s a -> s{_iReservedIPRange = a})

-- | Required. The service tier of the instance.
iTier :: Lens' Instance (Maybe InstanceTier)
iTier = lens _iTier (\ s a -> s{_iTier = a})

-- | An arbitrary and optional user-provided name for the instance.
iDisplayName :: Lens' Instance (Maybe Text)
iDisplayName
  = lens _iDisplayName (\ s a -> s{_iDisplayName = a})

-- | Resource labels to represent user provided metadata
iLabels :: Lens' Instance (Maybe InstanceLabels)
iLabels = lens _iLabels (\ s a -> s{_iLabels = a})

-- | Optional. The maintenance policy for the instance. If not provided,
-- maintenance events can be performed at any time.
iMaintenancePolicy :: Lens' Instance (Maybe MaintenancePolicy)
iMaintenancePolicy
  = lens _iMaintenancePolicy
      (\ s a -> s{_iMaintenancePolicy = a})

-- | Optional. The network connect mode of the Redis instance. If not
-- provided, the connect mode defaults to DIRECT_PEERING.
iConnectMode :: Lens' Instance (Maybe InstanceConnectMode)
iConnectMode
  = lens _iConnectMode (\ s a -> s{_iConnectMode = a})

-- | Optional. The zone where the instance will be provisioned. If not
-- provided, the service will choose a zone for the instance. For
-- STANDARD_HA tier, instances will be created across two zones for
-- protection against zonal failures. If alternative_location_id is also
-- provided, it must be different from location_id.
iLocationId :: Lens' Instance (Maybe Text)
iLocationId
  = lens _iLocationId (\ s a -> s{_iLocationId = a})

-- | Output only. Hostname or IP address of the exposed Redis endpoint used
-- by clients to connect to the service.
iHost :: Lens' Instance (Maybe Text)
iHost = lens _iHost (\ s a -> s{_iHost = a})

-- | Optional. Redis configuration parameters, according to
-- http:\/\/redis.io\/topics\/config. Currently, the only supported
-- parameters are: Redis version 3.2 and newer: * maxmemory-policy *
-- notify-keyspace-events Redis version 4.0 and newer: * activedefrag *
-- lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and
-- newer: * stream-node-max-bytes * stream-node-max-entries
iRedisConfigs :: Lens' Instance (Maybe InstanceRedisConfigs)
iRedisConfigs
  = lens _iRedisConfigs
      (\ s a -> s{_iRedisConfigs = a})

-- | Optional. The version of Redis software. If not provided, latest
-- supported version will be used. Currently, the supported values are: *
-- \`REDIS_3_2\` for Redis 3.2 compatibility * \`REDIS_4_0\` for Redis 4.0
-- compatibility (default) * \`REDIS_5_0\` for Redis 5.0 compatibility *
-- \`REDIS_6_X\` for Redis 6.x compatibility
iRedisVersion :: Lens' Instance (Maybe Text)
iRedisVersion
  = lens _iRedisVersion
      (\ s a -> s{_iRedisVersion = a})

-- | Output only. The time the instance was created.
iCreateTime :: Lens' Instance (Maybe UTCTime)
iCreateTime
  = lens _iCreateTime (\ s a -> s{_iCreateTime = a}) .
      mapping _DateTime

-- | Output only. The port number of the exposed Redis endpoint.
iPort :: Lens' Instance (Maybe Int32)
iPort
  = lens _iPort (\ s a -> s{_iPort = a}) .
      mapping _Coerce

-- | Output only. The current zone where the Redis endpoint is placed. For
-- Basic Tier instances, this will always be the same as the location_id
-- provided by the user at creation time. For Standard Tier instances, this
-- can be either location_id or alternative_location_id and can change
-- after a failover event.
iCurrentLocationId :: Lens' Instance (Maybe Text)
iCurrentLocationId
  = lens _iCurrentLocationId
      (\ s a -> s{_iCurrentLocationId = a})

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance' <$>
                   (o .:? "serverCaCerts" .!= mempty) <*>
                     (o .:? "persistenceIamIdentity")
                     <*> (o .:? "state")
                     <*> (o .:? "authEnabled")
                     <*> (o .:? "maintenanceSchedule")
                     <*> (o .:? "transitEncryptionMode")
                     <*> (o .:? "authorizedNetwork")
                     <*> (o .:? "memorySizeGb")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "alternativeLocationId")
                     <*> (o .:? "reservedIpRange")
                     <*> (o .:? "tier")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "maintenancePolicy")
                     <*> (o .:? "connectMode")
                     <*> (o .:? "locationId")
                     <*> (o .:? "host")
                     <*> (o .:? "redisConfigs")
                     <*> (o .:? "redisVersion")
                     <*> (o .:? "createTime")
                     <*> (o .:? "port")
                     <*> (o .:? "currentLocationId"))

instance ToJSON Instance where
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("serverCaCerts" .=) <$> _iServerCaCerts,
                  ("persistenceIamIdentity" .=) <$>
                    _iPersistenceIAMIdentity,
                  ("state" .=) <$> _iState,
                  ("authEnabled" .=) <$> _iAuthEnabled,
                  ("maintenanceSchedule" .=) <$> _iMaintenanceSchedule,
                  ("transitEncryptionMode" .=) <$>
                    _iTransitEncryptionMode,
                  ("authorizedNetwork" .=) <$> _iAuthorizedNetwork,
                  ("memorySizeGb" .=) <$> _iMemorySizeGb,
                  ("name" .=) <$> _iName,
                  ("statusMessage" .=) <$> _iStatusMessage,
                  ("alternativeLocationId" .=) <$>
                    _iAlternativeLocationId,
                  ("reservedIpRange" .=) <$> _iReservedIPRange,
                  ("tier" .=) <$> _iTier,
                  ("displayName" .=) <$> _iDisplayName,
                  ("labels" .=) <$> _iLabels,
                  ("maintenancePolicy" .=) <$> _iMaintenancePolicy,
                  ("connectMode" .=) <$> _iConnectMode,
                  ("locationId" .=) <$> _iLocationId,
                  ("host" .=) <$> _iHost,
                  ("redisConfigs" .=) <$> _iRedisConfigs,
                  ("redisVersion" .=) <$> _iRedisVersion,
                  ("createTime" .=) <$> _iCreateTime,
                  ("port" .=) <$> _iPort,
                  ("currentLocationId" .=) <$> _iCurrentLocationId])
