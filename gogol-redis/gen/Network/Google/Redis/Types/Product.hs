{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Redis.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Redis.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Redis.Types.Sum

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
    { _gcrvomAPIVersion      :: !(Maybe Text)
    , _gcrvomEndTime         :: !(Maybe DateTime')
    , _gcrvomStatusDetail    :: !(Maybe Text)
    , _gcrvomVerb            :: !(Maybe Text)
    , _gcrvomCancelRequested :: !(Maybe Bool)
    , _gcrvomTarget          :: !(Maybe Text)
    , _gcrvomCreateTime      :: !(Maybe DateTime')
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
-- parameters are: * maxmemory-policy * notify-keyspace-events
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
-- unavailable, a dummy Redis entry is included in the response with the
-- \"name\" field set to a value of the form
-- projects\/{project_id}\/locations\/{location_id}\/instances\/- and the
-- \"status\" field set to ERROR and \"status_message\" field set to
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

-- | A Google Cloud Redis instance.
--
-- /See:/ 'instance'' smart constructor.
data Instance =
  Instance'
    { _iState                 :: !(Maybe InstanceState)
    , _iAuthorizedNetwork     :: !(Maybe Text)
    , _iMemorySizeGb          :: !(Maybe (Textual Int32))
    , _iName                  :: !(Maybe Text)
    , _iStatusMessage         :: !(Maybe Text)
    , _iAlternativeLocationId :: !(Maybe Text)
    , _iReservedIPRange       :: !(Maybe Text)
    , _iTier                  :: !(Maybe InstanceTier)
    , _iDisplayName           :: !(Maybe Text)
    , _iLabels                :: !(Maybe InstanceLabels)
    , _iLocationId            :: !(Maybe Text)
    , _iHost                  :: !(Maybe Text)
    , _iRedisConfigs          :: !(Maybe InstanceRedisConfigs)
    , _iRedisVersion          :: !(Maybe Text)
    , _iCreateTime            :: !(Maybe DateTime')
    , _iPort                  :: !(Maybe (Textual Int32))
    , _iCurrentLocationId     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iState'
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
    { _iState = Nothing
    , _iAuthorizedNetwork = Nothing
    , _iMemorySizeGb = Nothing
    , _iName = Nothing
    , _iStatusMessage = Nothing
    , _iAlternativeLocationId = Nothing
    , _iReservedIPRange = Nothing
    , _iTier = Nothing
    , _iDisplayName = Nothing
    , _iLabels = Nothing
    , _iLocationId = Nothing
    , _iHost = Nothing
    , _iRedisConfigs = Nothing
    , _iRedisVersion = Nothing
    , _iCreateTime = Nothing
    , _iPort = Nothing
    , _iCurrentLocationId = Nothing
    }


-- | Output only. The current state of this instance.
iState :: Lens' Instance (Maybe InstanceState)
iState = lens _iState (\ s a -> s{_iState = a})

-- | Optional. The full name of the Google Compute Engine
-- [network](\/compute\/docs\/networks-and-firewalls#networks) to which the
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
-- instance should be provisioned in. Refer to [location_id] and
-- [alternative_location_id] fields for more details.
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
-- [location_id].
iAlternativeLocationId :: Lens' Instance (Maybe Text)
iAlternativeLocationId
  = lens _iAlternativeLocationId
      (\ s a -> s{_iAlternativeLocationId = a})

-- | Optional. The CIDR range of internal addresses that are reserved for
-- this instance. If not provided, the service will choose an unused \/29
-- block, for example, 10.0.0.0\/29 or 192.168.0.0\/29. Ranges must be
-- unique and non-overlapping with existing subnets in an authorized
-- network.
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

-- | Optional. The zone where the instance will be provisioned. If not
-- provided, the service will choose a zone for the instance. For
-- STANDARD_HA tier, instances will be created across two zones for
-- protection against zonal failures. If [alternative_location_id] is also
-- provided, it must be different from [location_id].
iLocationId :: Lens' Instance (Maybe Text)
iLocationId
  = lens _iLocationId (\ s a -> s{_iLocationId = a})

-- | Output only. Hostname or IP address of the exposed Redis endpoint used
-- by clients to connect to the service.
iHost :: Lens' Instance (Maybe Text)
iHost = lens _iHost (\ s a -> s{_iHost = a})

-- | Optional. Redis configuration parameters, according to
-- http:\/\/redis.io\/topics\/config. Currently, the only supported
-- parameters are: * maxmemory-policy * notify-keyspace-events
iRedisConfigs :: Lens' Instance (Maybe InstanceRedisConfigs)
iRedisConfigs
  = lens _iRedisConfigs
      (\ s a -> s{_iRedisConfigs = a})

-- | Optional. The version of Redis software. If not provided, latest
-- supported version will be used. Updating the version will perform an
-- upgrade\/downgrade to the new version. Currently, the supported values
-- are \`REDIS_3_2\` for Redis 3.2.
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
-- Basic Tier instances, this will always be the same as the [location_id]
-- provided by the user at creation time. For Standard Tier instances, this
-- can be either [location_id] or [alternative_location_id] and can change
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
                   (o .:? "state") <*> (o .:? "authorizedNetwork") <*>
                     (o .:? "memorySizeGb")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "alternativeLocationId")
                     <*> (o .:? "reservedIpRange")
                     <*> (o .:? "tier")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels")
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
                 [("state" .=) <$> _iState,
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
                  ("locationId" .=) <$> _iLocationId,
                  ("host" .=) <$> _iHost,
                  ("redisConfigs" .=) <$> _iRedisConfigs,
                  ("redisVersion" .=) <$> _iRedisVersion,
                  ("createTime" .=) <$> _iCreateTime,
                  ("port" .=) <$> _iPort,
                  ("currentLocationId" .=) <$> _iCurrentLocationId])
