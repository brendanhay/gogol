{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Logging.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Logging.Types.Product where

import Network.Google.Logging.Types.Sum
import Network.Google.Prelude

-- | An object that describes the schema of a MonitoredResource object using
-- a type name and a set of labels. For example, the monitored resource
-- descriptor for Google Compute Engine VM instances has a type of
-- \"gce_instance\" and specifies the use of the labels \"instance_id\" and
-- \"zone\" to identify particular VM instances.Different APIs can support
-- different monitored resource types. APIs generally provide a list method
-- that returns the monitored resource descriptors used by the API.
--
-- /See:/ 'monitoredResourceDescriptor' smart constructor.
data MonitoredResourceDescriptor =
  MonitoredResourceDescriptor'
    { _mrdName :: !(Maybe Text)
    , _mrdDisplayName :: !(Maybe Text)
    , _mrdLabels :: !(Maybe [LabelDescriptor])
    , _mrdType :: !(Maybe Text)
    , _mrdDescription :: !(Maybe Text)
    , _mrdLaunchStage :: !(Maybe MonitoredResourceDescriptorLaunchStage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoredResourceDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrdName'
--
-- * 'mrdDisplayName'
--
-- * 'mrdLabels'
--
-- * 'mrdType'
--
-- * 'mrdDescription'
--
-- * 'mrdLaunchStage'
monitoredResourceDescriptor
    :: MonitoredResourceDescriptor
monitoredResourceDescriptor =
  MonitoredResourceDescriptor'
    { _mrdName = Nothing
    , _mrdDisplayName = Nothing
    , _mrdLabels = Nothing
    , _mrdType = Nothing
    , _mrdDescription = Nothing
    , _mrdLaunchStage = Nothing
    }


-- | Optional. The resource name of the monitored resource descriptor:
-- \"projects\/{project_id}\/monitoredResourceDescriptors\/{type}\" where
-- {type} is the value of the type field in this object and {project_id} is
-- a project ID that provides API-specific context for accessing the type.
-- APIs that do not use project information can use the resource name
-- format \"monitoredResourceDescriptors\/{type}\".
mrdName :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdName = lens _mrdName (\ s a -> s{_mrdName = a})

-- | Optional. A concise name for the monitored resource type that might be
-- displayed in user interfaces. It should be a Title Cased Noun Phrase,
-- without any article or other determiners. For example, \"Google Cloud
-- SQL Database\".
mrdDisplayName :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDisplayName
  = lens _mrdDisplayName
      (\ s a -> s{_mrdDisplayName = a})

-- | Required. A set of labels used to describe instances of this monitored
-- resource type. For example, an individual Google Cloud SQL database is
-- identified by values for the labels \"database_id\" and \"zone\".
mrdLabels :: Lens' MonitoredResourceDescriptor [LabelDescriptor]
mrdLabels
  = lens _mrdLabels (\ s a -> s{_mrdLabels = a}) .
      _Default
      . _Coerce

-- | Required. The monitored resource type. For example, the type
-- \"cloudsql_database\" represents databases in Google Cloud SQL.
mrdType :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdType = lens _mrdType (\ s a -> s{_mrdType = a})

-- | Optional. A detailed description of the monitored resource type that
-- might be used in documentation.
mrdDescription :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDescription
  = lens _mrdDescription
      (\ s a -> s{_mrdDescription = a})

-- | Optional. The launch stage of the monitored resource definition.
mrdLaunchStage :: Lens' MonitoredResourceDescriptor (Maybe MonitoredResourceDescriptorLaunchStage)
mrdLaunchStage
  = lens _mrdLaunchStage
      (\ s a -> s{_mrdLaunchStage = a})

instance FromJSON MonitoredResourceDescriptor where
        parseJSON
          = withObject "MonitoredResourceDescriptor"
              (\ o ->
                 MonitoredResourceDescriptor' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "launchStage"))

instance ToJSON MonitoredResourceDescriptor where
        toJSON MonitoredResourceDescriptor'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _mrdName,
                  ("displayName" .=) <$> _mrdDisplayName,
                  ("labels" .=) <$> _mrdLabels,
                  ("type" .=) <$> _mrdType,
                  ("description" .=) <$> _mrdDescription,
                  ("launchStage" .=) <$> _mrdLaunchStage])

-- | The response from ListBuckets.
--
-- /See:/ 'listBucketsResponse' smart constructor.
data ListBucketsResponse =
  ListBucketsResponse'
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrBuckets :: !(Maybe [LogBucket])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBucketsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextPageToken'
--
-- * 'lbrBuckets'
listBucketsResponse
    :: ListBucketsResponse
listBucketsResponse =
  ListBucketsResponse' {_lbrNextPageToken = Nothing, _lbrBuckets = Nothing}


-- | If there might be more results than appear in this response, then
-- nextPageToken is included. To get the next set of results, call the same
-- method again using the value of nextPageToken as pageToken.
lbrNextPageToken :: Lens' ListBucketsResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | A list of buckets.
lbrBuckets :: Lens' ListBucketsResponse [LogBucket]
lbrBuckets
  = lens _lbrBuckets (\ s a -> s{_lbrBuckets = a}) .
      _Default
      . _Coerce

instance FromJSON ListBucketsResponse where
        parseJSON
          = withObject "ListBucketsResponse"
              (\ o ->
                 ListBucketsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "buckets" .!= mempty))

instance ToJSON ListBucketsResponse where
        toJSON ListBucketsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("buckets" .=) <$> _lbrBuckets])

-- | The Status type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by gRPC (https:\/\/github.com\/grpc). Each Status message
-- contains three pieces of data: error code, error message, and error
-- details.You can find out more about this error model and how to work
-- with it in the API Design Guide
-- (https:\/\/cloud.google.com\/apis\/design\/errors).
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

-- | Result returned from ListLogEntries.
--
-- /See:/ 'listLogEntriesResponse' smart constructor.
data ListLogEntriesResponse =
  ListLogEntriesResponse'
    { _llerNextPageToken :: !(Maybe Text)
    , _llerEntries :: !(Maybe [LogEntry])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLogEntriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llerNextPageToken'
--
-- * 'llerEntries'
listLogEntriesResponse
    :: ListLogEntriesResponse
listLogEntriesResponse =
  ListLogEntriesResponse' {_llerNextPageToken = Nothing, _llerEntries = Nothing}


-- | If there might be more results than those appearing in this response,
-- then nextPageToken is included. To get the next set of results, call
-- this method again using the value of nextPageToken as pageToken.If a
-- value for next_page_token appears and the entries field is empty, it
-- means that the search found no log entries so far but it did not have
-- time to search all the possible log entries. Retry the method with this
-- value for page_token to continue the search. Alternatively, consider
-- speeding up the search by changing your filter to specify a single log
-- name or resource type, or to narrow the time range of the search.
llerNextPageToken :: Lens' ListLogEntriesResponse (Maybe Text)
llerNextPageToken
  = lens _llerNextPageToken
      (\ s a -> s{_llerNextPageToken = a})

-- | A list of log entries. If entries is empty, nextPageToken may still be
-- returned, indicating that more entries may exist. See nextPageToken for
-- more information.
llerEntries :: Lens' ListLogEntriesResponse [LogEntry]
llerEntries
  = lens _llerEntries (\ s a -> s{_llerEntries = a}) .
      _Default
      . _Coerce

instance FromJSON ListLogEntriesResponse where
        parseJSON
          = withObject "ListLogEntriesResponse"
              (\ o ->
                 ListLogEntriesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "entries" .!= mempty))

instance ToJSON ListLogEntriesResponse where
        toJSON ListLogEntriesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llerNextPageToken,
                  ("entries" .=) <$> _llerEntries])

-- | Defines a metric type and its schema. Once a metric descriptor is
-- created, deleting or altering it stops data collection and makes the
-- metric type\'s existing data unusable.
--
-- /See:/ 'metricDescriptor' smart constructor.
data MetricDescriptor =
  MetricDescriptor'
    { _mdMonitoredResourceTypes :: !(Maybe [Text])
    , _mdMetricKind :: !(Maybe MetricDescriptorMetricKind)
    , _mdName :: !(Maybe Text)
    , _mdMetadata :: !(Maybe MetricDescriptorMetadata)
    , _mdDisplayName :: !(Maybe Text)
    , _mdLabels :: !(Maybe [LabelDescriptor])
    , _mdType :: !(Maybe Text)
    , _mdValueType :: !(Maybe MetricDescriptorValueType)
    , _mdDescription :: !(Maybe Text)
    , _mdUnit :: !(Maybe Text)
    , _mdLaunchStage :: !(Maybe MetricDescriptorLaunchStage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdMonitoredResourceTypes'
--
-- * 'mdMetricKind'
--
-- * 'mdName'
--
-- * 'mdMetadata'
--
-- * 'mdDisplayName'
--
-- * 'mdLabels'
--
-- * 'mdType'
--
-- * 'mdValueType'
--
-- * 'mdDescription'
--
-- * 'mdUnit'
--
-- * 'mdLaunchStage'
metricDescriptor
    :: MetricDescriptor
metricDescriptor =
  MetricDescriptor'
    { _mdMonitoredResourceTypes = Nothing
    , _mdMetricKind = Nothing
    , _mdName = Nothing
    , _mdMetadata = Nothing
    , _mdDisplayName = Nothing
    , _mdLabels = Nothing
    , _mdType = Nothing
    , _mdValueType = Nothing
    , _mdDescription = Nothing
    , _mdUnit = Nothing
    , _mdLaunchStage = Nothing
    }


-- | Read-only. If present, then a time series, which is identified partially
-- by a metric type and a MonitoredResourceDescriptor, that is associated
-- with this metric type can only be associated with one of the monitored
-- resource types listed here.
mdMonitoredResourceTypes :: Lens' MetricDescriptor [Text]
mdMonitoredResourceTypes
  = lens _mdMonitoredResourceTypes
      (\ s a -> s{_mdMonitoredResourceTypes = a})
      . _Default
      . _Coerce

-- | Whether the metric records instantaneous values, changes to a value,
-- etc. Some combinations of metric_kind and value_type might not be
-- supported.
mdMetricKind :: Lens' MetricDescriptor (Maybe MetricDescriptorMetricKind)
mdMetricKind
  = lens _mdMetricKind (\ s a -> s{_mdMetricKind = a})

-- | The resource name of the metric descriptor.
mdName :: Lens' MetricDescriptor (Maybe Text)
mdName = lens _mdName (\ s a -> s{_mdName = a})

-- | Optional. Metadata which can be used to guide usage of the metric.
mdMetadata :: Lens' MetricDescriptor (Maybe MetricDescriptorMetadata)
mdMetadata
  = lens _mdMetadata (\ s a -> s{_mdMetadata = a})

-- | A concise name for the metric, which can be displayed in user
-- interfaces. Use sentence case without an ending period, for example
-- \"Request count\". This field is optional but it is recommended to be
-- set for any metrics associated with user-visible concepts, such as
-- Quota.
mdDisplayName :: Lens' MetricDescriptor (Maybe Text)
mdDisplayName
  = lens _mdDisplayName
      (\ s a -> s{_mdDisplayName = a})

-- | The set of labels that can be used to describe a specific instance of
-- this metric type. For example, the
-- appengine.googleapis.com\/http\/server\/response_latencies metric type
-- has a label for the HTTP response code, response_code, so you can look
-- at latencies for successful responses or just for responses that failed.
mdLabels :: Lens' MetricDescriptor [LabelDescriptor]
mdLabels
  = lens _mdLabels (\ s a -> s{_mdLabels = a}) .
      _Default
      . _Coerce

-- | The metric type, including its DNS name prefix. The type is not
-- URL-encoded. All user-defined metric types have the DNS name
-- custom.googleapis.com or external.googleapis.com. Metric types should
-- use a natural hierarchical grouping. For example:
-- \"custom.googleapis.com\/invoice\/paid\/amount\"
-- \"external.googleapis.com\/prometheus\/up\"
-- \"appengine.googleapis.com\/http\/server\/response_latencies\"
mdType :: Lens' MetricDescriptor (Maybe Text)
mdType = lens _mdType (\ s a -> s{_mdType = a})

-- | Whether the measurement is an integer, a floating-point number, etc.
-- Some combinations of metric_kind and value_type might not be supported.
mdValueType :: Lens' MetricDescriptor (Maybe MetricDescriptorValueType)
mdValueType
  = lens _mdValueType (\ s a -> s{_mdValueType = a})

-- | A detailed description of the metric, which can be used in
-- documentation.
mdDescription :: Lens' MetricDescriptor (Maybe Text)
mdDescription
  = lens _mdDescription
      (\ s a -> s{_mdDescription = a})

-- | The units in which the metric value is reported. It is only applicable
-- if the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines
-- the representation of the stored metric values.Different systems might
-- scale the values to be more easily displayed (so a value of 0.02kBy
-- might be displayed as 20By, and a value of 3523kBy might be displayed as
-- 3.5MBy). However, if the unit is kBy, then the value of the metric is
-- always in thousands of bytes, no matter how it might be displayed.If you
-- want a custom metric to record the exact number of CPU-seconds used by a
-- job, you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or
-- equivalently 1s{CPU} or just s). If the job uses 12,005 CPU-seconds,
-- then the value is written as 12005.Alternatively, if you want a custom
-- metric to record data in a more granular way, you can create a DOUBLE
-- CUMULATIVE metric whose unit is ks{CPU}, and then write the value 12.005
-- (which is 12005\/1000), or use Kis{CPU} and write 11.723 (which is
-- 12005\/1024).The supported units are a subset of The Unified Code for
-- Units of Measure (https:\/\/unitsofmeasure.org\/ucum.html)
-- standard:Basic units (UNIT) bit bit By byte s second min minute h hour d
-- day 1 dimensionlessPrefixes (PREFIX) k kilo (10^3) M mega (10^6) G giga
-- (10^9) T tera (10^12) P peta (10^15) E exa (10^18) Z zetta (10^21) Y
-- yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (10^-9) p pico
-- (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y yocto
-- (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi
-- pebi (2^50)GrammarThe grammar also includes these connectors: \/
-- division or ratio (as an infix operator). For examples, kBy\/{email} or
-- MiBy\/10ms (although you should almost never have \/s in a metric unit;
-- rates should always be computed at query time from the underlying
-- cumulative or delta value). . multiplication or composition (as an infix
-- operator). For examples, GBy.d or k{watt}.h.The grammar for a unit is as
-- follows: Expression = Component { \".\" Component } { \"\/\" Component }
-- ; Component = ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation |
-- \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: Annotation is just a
-- comment if it follows a UNIT. If the annotation is used alone, then the
-- unit is equivalent to 1. For examples, {request}\/s == 1\/s,
-- By{transmitted}\/s == By\/s. NAME is a sequence of non-blank printable
-- ASCII characters not containing { or }. 1 represents a unitary
-- dimensionless unit
-- (https:\/\/en.wikipedia.org\/wiki\/Dimensionless_quantity) of 1, such as
-- in 1\/s. It is typically used when none of the basic units are
-- appropriate. For example, \"new users per day\" can be represented as
-- 1\/d or {new-users}\/d (and a metric value 5 would mean \"5 new users).
-- Alternatively, \"thousands of page views per day\" would be represented
-- as 1000\/d or k1\/d or k{page_views}\/d (and a metric value of 5.3 would
-- mean \"5300 page views per day\"). % represents dimensionless value of
-- 1\/100, and annotates values giving a percentage (so the metric values
-- are typically in the range of 0..100, and a metric value 3 means \"3
-- percent\"). 10^2.% indicates a metric contains a ratio, typically in the
-- range 0..1, that will be multiplied by 100 and displayed as a percentage
-- (so a metric value 0.03 means \"3 percent\").
mdUnit :: Lens' MetricDescriptor (Maybe Text)
mdUnit = lens _mdUnit (\ s a -> s{_mdUnit = a})

-- | Optional. The launch stage of the metric definition.
mdLaunchStage :: Lens' MetricDescriptor (Maybe MetricDescriptorLaunchStage)
mdLaunchStage
  = lens _mdLaunchStage
      (\ s a -> s{_mdLaunchStage = a})

instance FromJSON MetricDescriptor where
        parseJSON
          = withObject "MetricDescriptor"
              (\ o ->
                 MetricDescriptor' <$>
                   (o .:? "monitoredResourceTypes" .!= mempty) <*>
                     (o .:? "metricKind")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "valueType")
                     <*> (o .:? "description")
                     <*> (o .:? "unit")
                     <*> (o .:? "launchStage"))

instance ToJSON MetricDescriptor where
        toJSON MetricDescriptor'{..}
          = object
              (catMaybes
                 [("monitoredResourceTypes" .=) <$>
                    _mdMonitoredResourceTypes,
                  ("metricKind" .=) <$> _mdMetricKind,
                  ("name" .=) <$> _mdName,
                  ("metadata" .=) <$> _mdMetadata,
                  ("displayName" .=) <$> _mdDisplayName,
                  ("labels" .=) <$> _mdLabels, ("type" .=) <$> _mdType,
                  ("valueType" .=) <$> _mdValueType,
                  ("description" .=) <$> _mdDescription,
                  ("unit" .=) <$> _mdUnit,
                  ("launchStage" .=) <$> _mdLaunchStage])

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

-- | The parameters to TailLogEntries.
--
-- /See:/ 'tailLogEntriesRequest' smart constructor.
data TailLogEntriesRequest =
  TailLogEntriesRequest'
    { _tlerBufferWindow :: !(Maybe GDuration)
    , _tlerFilter :: !(Maybe Text)
    , _tlerResourceNames :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TailLogEntriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlerBufferWindow'
--
-- * 'tlerFilter'
--
-- * 'tlerResourceNames'
tailLogEntriesRequest
    :: TailLogEntriesRequest
tailLogEntriesRequest =
  TailLogEntriesRequest'
    { _tlerBufferWindow = Nothing
    , _tlerFilter = Nothing
    , _tlerResourceNames = Nothing
    }


-- | Optional. The amount of time to buffer log entries at the server before
-- being returned to prevent out of order results due to late arriving log
-- entries. Valid values are between 0-60000 milliseconds. Defaults to 2000
-- milliseconds.
tlerBufferWindow :: Lens' TailLogEntriesRequest (Maybe Scientific)
tlerBufferWindow
  = lens _tlerBufferWindow
      (\ s a -> s{_tlerBufferWindow = a})
      . mapping _GDuration

-- | Optional. A filter that chooses which log entries to return. See
-- Advanced Logs Filters
-- (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced_filters).
-- Only log entries that match the filter are returned. An empty filter
-- matches all log entries in the resources listed in resource_names.
-- Referencing a parent resource that is not in resource_names will cause
-- the filter to return no results. The maximum length of the filter is
-- 20000 characters.
tlerFilter :: Lens' TailLogEntriesRequest (Maybe Text)
tlerFilter
  = lens _tlerFilter (\ s a -> s{_tlerFilter = a})

-- | Required. Name of a parent resource from which to retrieve log entries:
-- projects\/[PROJECT_ID] organizations\/[ORGANIZATION_ID]
-- billingAccounts\/[BILLING_ACCOUNT_ID] folders\/[FOLDER_ID]May
-- alternatively be one or more views:
-- projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
tlerResourceNames :: Lens' TailLogEntriesRequest [Text]
tlerResourceNames
  = lens _tlerResourceNames
      (\ s a -> s{_tlerResourceNames = a})
      . _Default
      . _Coerce

instance FromJSON TailLogEntriesRequest where
        parseJSON
          = withObject "TailLogEntriesRequest"
              (\ o ->
                 TailLogEntriesRequest' <$>
                   (o .:? "bufferWindow") <*> (o .:? "filter") <*>
                     (o .:? "resourceNames" .!= mempty))

instance ToJSON TailLogEntriesRequest where
        toJSON TailLogEntriesRequest'{..}
          = object
              (catMaybes
                 [("bufferWindow" .=) <$> _tlerBufferWindow,
                  ("filter" .=) <$> _tlerFilter,
                  ("resourceNames" .=) <$> _tlerResourceNames])

-- | Required. Values for all of the labels listed in the associated
-- monitored resource descriptor. For example, Compute Engine VM instances
-- use the labels \"project_id\", \"instance_id\", and \"zone\".
--
-- /See:/ 'monitoredResourceLabels' smart constructor.
newtype MonitoredResourceLabels =
  MonitoredResourceLabels'
    { _mrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoredResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrlAddtional'
monitoredResourceLabels
    :: HashMap Text Text -- ^ 'mrlAddtional'
    -> MonitoredResourceLabels
monitoredResourceLabels pMrlAddtional_ =
  MonitoredResourceLabels' {_mrlAddtional = _Coerce # pMrlAddtional_}


mrlAddtional :: Lens' MonitoredResourceLabels (HashMap Text Text)
mrlAddtional
  = lens _mrlAddtional (\ s a -> s{_mrlAddtional = a})
      . _Coerce

instance FromJSON MonitoredResourceLabels where
        parseJSON
          = withObject "MonitoredResourceLabels"
              (\ o ->
                 MonitoredResourceLabels' <$> (parseJSONObject o))

instance ToJSON MonitoredResourceLabels where
        toJSON = toJSON . _mrlAddtional

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

-- | Auxiliary metadata for a MonitoredResource object. MonitoredResource
-- objects contain the minimum set of information to uniquely identify a
-- monitored resource instance. There is some other useful auxiliary
-- metadata. Monitoring and Logging use an ingestion pipeline to extract
-- metadata for cloud resources of all types, and store the metadata in
-- this message.
--
-- /See:/ 'monitoredResourceMetadata' smart constructor.
data MonitoredResourceMetadata =
  MonitoredResourceMetadata'
    { _mrmUserLabels :: !(Maybe MonitoredResourceMetadataUserLabels)
    , _mrmSystemLabels :: !(Maybe MonitoredResourceMetadataSystemLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoredResourceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrmUserLabels'
--
-- * 'mrmSystemLabels'
monitoredResourceMetadata
    :: MonitoredResourceMetadata
monitoredResourceMetadata =
  MonitoredResourceMetadata'
    {_mrmUserLabels = Nothing, _mrmSystemLabels = Nothing}


-- | Output only. A map of user-defined metadata labels.
mrmUserLabels :: Lens' MonitoredResourceMetadata (Maybe MonitoredResourceMetadataUserLabels)
mrmUserLabels
  = lens _mrmUserLabels
      (\ s a -> s{_mrmUserLabels = a})

-- | Output only. Values for predefined system metadata labels. System labels
-- are a kind of metadata extracted by Google, including \"machine_image\",
-- \"vpc\", \"subnet_id\", \"security_group\", \"name\", etc. System label
-- values can be only strings, Boolean values, or a list of strings. For
-- example: { \"name\": \"my-test-instance\", \"security_group\": [\"a\",
-- \"b\", \"c\"], \"spot_instance\": false }
mrmSystemLabels :: Lens' MonitoredResourceMetadata (Maybe MonitoredResourceMetadataSystemLabels)
mrmSystemLabels
  = lens _mrmSystemLabels
      (\ s a -> s{_mrmSystemLabels = a})

instance FromJSON MonitoredResourceMetadata where
        parseJSON
          = withObject "MonitoredResourceMetadata"
              (\ o ->
                 MonitoredResourceMetadata' <$>
                   (o .:? "userLabels") <*> (o .:? "systemLabels"))

instance ToJSON MonitoredResourceMetadata where
        toJSON MonitoredResourceMetadata'{..}
          = object
              (catMaybes
                 [("userLabels" .=) <$> _mrmUserLabels,
                  ("systemLabels" .=) <$> _mrmSystemLabels])

-- | Result returned from ListLogMetrics.
--
-- /See:/ 'listLogMetricsResponse' smart constructor.
data ListLogMetricsResponse =
  ListLogMetricsResponse'
    { _llmrMetrics :: !(Maybe [LogMetric])
    , _llmrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLogMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llmrMetrics'
--
-- * 'llmrNextPageToken'
listLogMetricsResponse
    :: ListLogMetricsResponse
listLogMetricsResponse =
  ListLogMetricsResponse' {_llmrMetrics = Nothing, _llmrNextPageToken = Nothing}


-- | A list of logs-based metrics.
llmrMetrics :: Lens' ListLogMetricsResponse [LogMetric]
llmrMetrics
  = lens _llmrMetrics (\ s a -> s{_llmrMetrics = a}) .
      _Default
      . _Coerce

-- | If there might be more results than appear in this response, then
-- nextPageToken is included. To get the next set of results, call this
-- method again using the value of nextPageToken as pageToken.
llmrNextPageToken :: Lens' ListLogMetricsResponse (Maybe Text)
llmrNextPageToken
  = lens _llmrNextPageToken
      (\ s a -> s{_llmrNextPageToken = a})

instance FromJSON ListLogMetricsResponse where
        parseJSON
          = withObject "ListLogMetricsResponse"
              (\ o ->
                 ListLogMetricsResponse' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListLogMetricsResponse where
        toJSON ListLogMetricsResponse'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _llmrMetrics,
                  ("nextPageToken" .=) <$> _llmrNextPageToken])

-- | The parameters to WriteLogEntries.
--
-- /See:/ 'writeLogEntriesRequest' smart constructor.
data WriteLogEntriesRequest =
  WriteLogEntriesRequest'
    { _wlerEntries :: !(Maybe [LogEntry])
    , _wlerPartialSuccess :: !(Maybe Bool)
    , _wlerResource :: !(Maybe MonitoredResource)
    , _wlerLabels :: !(Maybe WriteLogEntriesRequestLabels)
    , _wlerLogName :: !(Maybe Text)
    , _wlerDryRun :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WriteLogEntriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlerEntries'
--
-- * 'wlerPartialSuccess'
--
-- * 'wlerResource'
--
-- * 'wlerLabels'
--
-- * 'wlerLogName'
--
-- * 'wlerDryRun'
writeLogEntriesRequest
    :: WriteLogEntriesRequest
writeLogEntriesRequest =
  WriteLogEntriesRequest'
    { _wlerEntries = Nothing
    , _wlerPartialSuccess = Nothing
    , _wlerResource = Nothing
    , _wlerLabels = Nothing
    , _wlerLogName = Nothing
    , _wlerDryRun = Nothing
    }


-- | Required. The log entries to send to Logging. The order of log entries
-- in this list does not matter. Values supplied in this method\'s
-- log_name, resource, and labels fields are copied into those log entries
-- in this list that do not include values for their corresponding fields.
-- For more information, see the LogEntry type.If the timestamp or
-- insert_id fields are missing in log entries, then this method supplies
-- the current time or a unique identifier, respectively. The supplied
-- values are chosen so that, among the log entries that did not supply
-- their own values, the entries earlier in the list will sort before the
-- entries later in the list. See the entries.list method.Log entries with
-- timestamps that are more than the logs retention period
-- (https:\/\/cloud.google.com\/logging\/quotas) in the past or more than
-- 24 hours in the future will not be available when calling entries.list.
-- However, those log entries can still be exported with LogSinks
-- (https:\/\/cloud.google.com\/logging\/docs\/api\/tasks\/exporting-logs).To
-- improve throughput and to avoid exceeding the quota limit
-- (https:\/\/cloud.google.com\/logging\/quotas) for calls to
-- entries.write, you should try to include several log entries in this
-- list, rather than calling this method for each individual log entry.
wlerEntries :: Lens' WriteLogEntriesRequest [LogEntry]
wlerEntries
  = lens _wlerEntries (\ s a -> s{_wlerEntries = a}) .
      _Default
      . _Coerce

-- | Optional. Whether valid entries should be written even if some other
-- entries fail due to INVALID_ARGUMENT or PERMISSION_DENIED errors. If any
-- entry is not written, then the response status is the error associated
-- with one of the failed entries and the response includes error details
-- keyed by the entries\' zero-based index in the entries.write method.
wlerPartialSuccess :: Lens' WriteLogEntriesRequest (Maybe Bool)
wlerPartialSuccess
  = lens _wlerPartialSuccess
      (\ s a -> s{_wlerPartialSuccess = a})

-- | Optional. A default monitored resource object that is assigned to all
-- log entries in entries that do not specify a value for resource.
-- Example: { \"type\": \"gce_instance\", \"labels\": { \"zone\":
-- \"us-central1-a\", \"instance_id\": \"00000000000000000000\" }} See
-- LogEntry.
wlerResource :: Lens' WriteLogEntriesRequest (Maybe MonitoredResource)
wlerResource
  = lens _wlerResource (\ s a -> s{_wlerResource = a})

-- | Optional. Default labels that are added to the labels field of all log
-- entries in entries. If a log entry already has a label with the same key
-- as a label in this parameter, then the log entry\'s label is not
-- changed. See LogEntry.
wlerLabels :: Lens' WriteLogEntriesRequest (Maybe WriteLogEntriesRequestLabels)
wlerLabels
  = lens _wlerLabels (\ s a -> s{_wlerLabels = a})

-- | Optional. A default log resource name that is assigned to all log
-- entries in entries that do not specify a value for log_name:
-- projects\/[PROJECT_ID]\/logs\/[LOG_ID]
-- organizations\/[ORGANIZATION_ID]\/logs\/[LOG_ID]
-- billingAccounts\/[BILLING_ACCOUNT_ID]\/logs\/[LOG_ID]
-- folders\/[FOLDER_ID]\/logs\/[LOG_ID][LOG_ID] must be URL-encoded. For
-- example: \"projects\/my-project-id\/logs\/syslog\"
-- \"organizations\/123\/logs\/cloudaudit.googleapis.com%2Factivity\" The
-- permission logging.logEntries.create is needed on each project,
-- organization, billing account, or folder that is receiving new log
-- entries, whether the resource is specified in logName or in an
-- individual log entry.
wlerLogName :: Lens' WriteLogEntriesRequest (Maybe Text)
wlerLogName
  = lens _wlerLogName (\ s a -> s{_wlerLogName = a})

-- | Optional. If true, the request should expect normal response, but the
-- entries won\'t be persisted nor exported. Useful for checking whether
-- the logging API endpoints are working properly before sending valuable
-- data.
wlerDryRun :: Lens' WriteLogEntriesRequest (Maybe Bool)
wlerDryRun
  = lens _wlerDryRun (\ s a -> s{_wlerDryRun = a})

instance FromJSON WriteLogEntriesRequest where
        parseJSON
          = withObject "WriteLogEntriesRequest"
              (\ o ->
                 WriteLogEntriesRequest' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "partialSuccess")
                     <*> (o .:? "resource")
                     <*> (o .:? "labels")
                     <*> (o .:? "logName")
                     <*> (o .:? "dryRun"))

instance ToJSON WriteLogEntriesRequest where
        toJSON WriteLogEntriesRequest'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _wlerEntries,
                  ("partialSuccess" .=) <$> _wlerPartialSuccess,
                  ("resource" .=) <$> _wlerResource,
                  ("labels" .=) <$> _wlerLabels,
                  ("logName" .=) <$> _wlerLogName,
                  ("dryRun" .=) <$> _wlerDryRun])

-- | The parameters to CopyLogEntries.
--
-- /See:/ 'copyLogEntriesRequest' smart constructor.
data CopyLogEntriesRequest =
  CopyLogEntriesRequest'
    { _clerDestination :: !(Maybe Text)
    , _clerName :: !(Maybe Text)
    , _clerFilter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CopyLogEntriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clerDestination'
--
-- * 'clerName'
--
-- * 'clerFilter'
copyLogEntriesRequest
    :: CopyLogEntriesRequest
copyLogEntriesRequest =
  CopyLogEntriesRequest'
    {_clerDestination = Nothing, _clerName = Nothing, _clerFilter = Nothing}


-- | Required. Destination to which to copy logs.
clerDestination :: Lens' CopyLogEntriesRequest (Maybe Text)
clerDestination
  = lens _clerDestination
      (\ s a -> s{_clerDestination = a})

-- | Required. Bucket from which to copy logs. e.g.
-- \"projects\/my-project\/locations\/my-location\/buckets\/my-source-bucket
clerName :: Lens' CopyLogEntriesRequest (Maybe Text)
clerName = lens _clerName (\ s a -> s{_clerName = a})

-- | Optional. A filter specifying which log entries to copy. The filter must
-- be no more than 20k characters. An empty filter matches all log entries.
clerFilter :: Lens' CopyLogEntriesRequest (Maybe Text)
clerFilter
  = lens _clerFilter (\ s a -> s{_clerFilter = a})

instance FromJSON CopyLogEntriesRequest where
        parseJSON
          = withObject "CopyLogEntriesRequest"
              (\ o ->
                 CopyLogEntriesRequest' <$>
                   (o .:? "destination") <*> (o .:? "name") <*>
                     (o .:? "filter"))

instance ToJSON CopyLogEntriesRequest where
        toJSON CopyLogEntriesRequest'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _clerDestination,
                  ("name" .=) <$> _clerName,
                  ("filter" .=) <$> _clerFilter])

-- | The parameters to UndeleteBucket.
--
-- /See:/ 'undeleteBucketRequest' smart constructor.
data UndeleteBucketRequest =
  UndeleteBucketRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteBucketRequest' with the minimum fields required to make a request.
--
undeleteBucketRequest
    :: UndeleteBucketRequest
undeleteBucketRequest = UndeleteBucketRequest'


instance FromJSON UndeleteBucketRequest where
        parseJSON
          = withObject "UndeleteBucketRequest"
              (\ o -> pure UndeleteBucketRequest')

instance ToJSON UndeleteBucketRequest where
        toJSON = const emptyObject

-- | Describes the customer-managed encryption key (CMEK) settings associated
-- with a project, folder, organization, billing account, or flexible
-- resource.Note: CMEK for the Logs Router can currently only be configured
-- for GCP organizations. Once configured, it applies to all projects and
-- folders in the GCP organization.See Enabling CMEK for Logs Router
-- (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption)
-- for more information.
--
-- /See:/ 'cmekSettings' smart constructor.
data CmekSettings =
  CmekSettings'
    { _csServiceAccountId :: !(Maybe Text)
    , _csName :: !(Maybe Text)
    , _csKmsKeyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CmekSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csServiceAccountId'
--
-- * 'csName'
--
-- * 'csKmsKeyName'
cmekSettings
    :: CmekSettings
cmekSettings =
  CmekSettings'
    {_csServiceAccountId = Nothing, _csName = Nothing, _csKmsKeyName = Nothing}


-- | Output only. The service account that will be used by the Logs Router to
-- access your Cloud KMS key.Before enabling CMEK for Logs Router, you must
-- first assign the role roles\/cloudkms.cryptoKeyEncrypterDecrypter to the
-- service account that the Logs Router will use to access your Cloud KMS
-- key. Use GetCmekSettings to obtain the service account ID.See Enabling
-- CMEK for Logs Router
-- (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption)
-- for more information.
csServiceAccountId :: Lens' CmekSettings (Maybe Text)
csServiceAccountId
  = lens _csServiceAccountId
      (\ s a -> s{_csServiceAccountId = a})

-- | Output only. The resource name of the CMEK settings.
csName :: Lens' CmekSettings (Maybe Text)
csName = lens _csName (\ s a -> s{_csName = a})

-- | The resource name for the configured Cloud KMS key.KMS key name format:
-- \"projects\/PROJECT_ID\/locations\/LOCATION\/keyRings\/KEYRING\/cryptoKeys\/KEY\"For
-- example:
-- \"projects\/my-project-id\/locations\/my-region\/keyRings\/key-ring-name\/cryptoKeys\/key-name\"To
-- enable CMEK for the Logs Router, set this field to a valid kms_key_name
-- for which the associated service account has the required
-- roles\/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the
-- key.The Cloud KMS key used by the Log Router can be updated by changing
-- the kms_key_name to a new valid key name. Encryption operations that are
-- in progress will be completed with the key that was in use when they
-- started. Decryption operations will be completed using the key that was
-- used at the time of encryption unless access to that key has been
-- revoked.To disable CMEK for the Logs Router, set this field to an empty
-- string.See Enabling CMEK for Logs Router
-- (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption)
-- for more information.
csKmsKeyName :: Lens' CmekSettings (Maybe Text)
csKmsKeyName
  = lens _csKmsKeyName (\ s a -> s{_csKmsKeyName = a})

instance FromJSON CmekSettings where
        parseJSON
          = withObject "CmekSettings"
              (\ o ->
                 CmekSettings' <$>
                   (o .:? "serviceAccountId") <*> (o .:? "name") <*>
                     (o .:? "kmsKeyName"))

instance ToJSON CmekSettings where
        toJSON CmekSettings'{..}
          = object
              (catMaybes
                 [("serviceAccountId" .=) <$> _csServiceAccountId,
                  ("name" .=) <$> _csName,
                  ("kmsKeyName" .=) <$> _csKmsKeyName])

-- | Optional. A map from a label key string to an extractor expression which
-- is used to extract data from a log entry field and assign as the label
-- value. Each label key specified in the LabelDescriptor must have an
-- associated extractor expression in this map. The syntax of the extractor
-- expression is the same as for the value_extractor field.The extracted
-- value is converted to the type defined in the label descriptor. If the
-- either the extraction or the type conversion fails, the label will have
-- a default value. The default value for a string label is an empty
-- string, for an integer label its 0, and for a boolean label its
-- false.Note that there are upper bounds on the maximum number of labels
-- and the number of active time series that are allowed in a project.
--
-- /See:/ 'logMetricLabelExtractors' smart constructor.
newtype LogMetricLabelExtractors =
  LogMetricLabelExtractors'
    { _lmleAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogMetricLabelExtractors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmleAddtional'
logMetricLabelExtractors
    :: HashMap Text Text -- ^ 'lmleAddtional'
    -> LogMetricLabelExtractors
logMetricLabelExtractors pLmleAddtional_ =
  LogMetricLabelExtractors' {_lmleAddtional = _Coerce # pLmleAddtional_}


lmleAddtional :: Lens' LogMetricLabelExtractors (HashMap Text Text)
lmleAddtional
  = lens _lmleAddtional
      (\ s a -> s{_lmleAddtional = a})
      . _Coerce

instance FromJSON LogMetricLabelExtractors where
        parseJSON
          = withObject "LogMetricLabelExtractors"
              (\ o ->
                 LogMetricLabelExtractors' <$> (parseJSONObject o))

instance ToJSON LogMetricLabelExtractors where
        toJSON = toJSON . _lmleAddtional

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
-- For example: \"projects\/example-project\/locations\/us-east1\"
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

-- | The canonical id for this location. For example: \"us-east1\".
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


-- | If the value is false, it means the operation is still in progress. If
-- true, the operation is completed, and either error or response is
-- available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as Delete, the response is
-- google.protobuf.Empty. If the original method is standard
-- Get\/Create\/Update, the response should be the resource. For other
-- methods, the response should have the type XxxResponse, where Xxx is the
-- original method name. For example, if the original method name is
-- TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- name should be a resource name ending with operations\/{unique_id}.
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
-- JSON representation for Empty is empty JSON object {}.
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

-- | Optional. A map of key, value pairs that provides additional information
-- about the log entry. The labels can be user-defined or
-- system-defined.User-defined labels are arbitrary key, value pairs that
-- you can use to classify logs.System-defined labels are defined by GCP
-- services for platform logs. They have two components - a service
-- namespace component and the attribute name. For example:
-- compute.googleapis.com\/resource_name.Cloud Logging truncates label keys
-- that exceed 512 B and label values that exceed 64 KB upon their
-- associated log entry being written. The truncation is indicated by an
-- ellipsis at the end of the character string.
--
-- /See:/ 'logEntryLabels' smart constructor.
newtype LogEntryLabels =
  LogEntryLabels'
    { _lelAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogEntryLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lelAddtional'
logEntryLabels
    :: HashMap Text Text -- ^ 'lelAddtional'
    -> LogEntryLabels
logEntryLabels pLelAddtional_ =
  LogEntryLabels' {_lelAddtional = _Coerce # pLelAddtional_}


lelAddtional :: Lens' LogEntryLabels (HashMap Text Text)
lelAddtional
  = lens _lelAddtional (\ s a -> s{_lelAddtional = a})
      . _Coerce

instance FromJSON LogEntryLabels where
        parseJSON
          = withObject "LogEntryLabels"
              (\ o -> LogEntryLabels' <$> (parseJSONObject o))

instance ToJSON LogEntryLabels where
        toJSON = toJSON . _lelAddtional

-- | Result returned from ListSinks.
--
-- /See:/ 'listSinksResponse' smart constructor.
data ListSinksResponse =
  ListSinksResponse'
    { _lsrSinks :: !(Maybe [LogSink])
    , _lsrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrSinks'
--
-- * 'lsrNextPageToken'
listSinksResponse
    :: ListSinksResponse
listSinksResponse =
  ListSinksResponse' {_lsrSinks = Nothing, _lsrNextPageToken = Nothing}


-- | A list of sinks.
lsrSinks :: Lens' ListSinksResponse [LogSink]
lsrSinks
  = lens _lsrSinks (\ s a -> s{_lsrSinks = a}) .
      _Default
      . _Coerce

-- | If there might be more results than appear in this response, then
-- nextPageToken is included. To get the next set of results, call the same
-- method again using the value of nextPageToken as pageToken.
lsrNextPageToken :: Lens' ListSinksResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

instance FromJSON ListSinksResponse where
        parseJSON
          = withObject "ListSinksResponse"
              (\ o ->
                 ListSinksResponse' <$>
                   (o .:? "sinks" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListSinksResponse where
        toJSON ListSinksResponse'{..}
          = object
              (catMaybes
                 [("sinks" .=) <$> _lsrSinks,
                  ("nextPageToken" .=) <$> _lsrNextPageToken])

-- | Complete log information about a single HTTP request to an App Engine
-- application.
--
-- /See:/ 'requestLog' smart constructor.
data RequestLog =
  RequestLog'
    { _rlTraceId :: !(Maybe Text)
    , _rlInstanceId :: !(Maybe Text)
    , _rlStatus :: !(Maybe (Textual Int32))
    , _rlRequestId :: !(Maybe Text)
    , _rlInstanceIndex :: !(Maybe (Textual Int32))
    , _rlModuleId :: !(Maybe Text)
    , _rlVersionId :: !(Maybe Text)
    , _rlHTTPVersion :: !(Maybe Text)
    , _rlTaskName :: !(Maybe Text)
    , _rlPendingTime :: !(Maybe GDuration)
    , _rlWasLoadingRequest :: !(Maybe Bool)
    , _rlFirst :: !(Maybe Bool)
    , _rlStartTime :: !(Maybe DateTime')
    , _rlLatency :: !(Maybe GDuration)
    , _rlURLMapEntry :: !(Maybe Text)
    , _rlCost :: !(Maybe (Textual Double))
    , _rlReferrer :: !(Maybe Text)
    , _rlLine :: !(Maybe [LogLine])
    , _rlIP :: !(Maybe Text)
    , _rlAppId :: !(Maybe Text)
    , _rlMethod :: !(Maybe Text)
    , _rlResource :: !(Maybe Text)
    , _rlEndTime :: !(Maybe DateTime')
    , _rlFinished :: !(Maybe Bool)
    , _rlMegaCycles :: !(Maybe (Textual Int64))
    , _rlUserAgent :: !(Maybe Text)
    , _rlNickname :: !(Maybe Text)
    , _rlHost :: !(Maybe Text)
    , _rlTraceSampled :: !(Maybe Bool)
    , _rlTaskQueueName :: !(Maybe Text)
    , _rlResponseSize :: !(Maybe (Textual Int64))
    , _rlSourceReference :: !(Maybe [SourceReference])
    , _rlAppEngineRelease :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlTraceId'
--
-- * 'rlInstanceId'
--
-- * 'rlStatus'
--
-- * 'rlRequestId'
--
-- * 'rlInstanceIndex'
--
-- * 'rlModuleId'
--
-- * 'rlVersionId'
--
-- * 'rlHTTPVersion'
--
-- * 'rlTaskName'
--
-- * 'rlPendingTime'
--
-- * 'rlWasLoadingRequest'
--
-- * 'rlFirst'
--
-- * 'rlStartTime'
--
-- * 'rlLatency'
--
-- * 'rlURLMapEntry'
--
-- * 'rlCost'
--
-- * 'rlReferrer'
--
-- * 'rlLine'
--
-- * 'rlIP'
--
-- * 'rlAppId'
--
-- * 'rlMethod'
--
-- * 'rlResource'
--
-- * 'rlEndTime'
--
-- * 'rlFinished'
--
-- * 'rlMegaCycles'
--
-- * 'rlUserAgent'
--
-- * 'rlNickname'
--
-- * 'rlHost'
--
-- * 'rlTraceSampled'
--
-- * 'rlTaskQueueName'
--
-- * 'rlResponseSize'
--
-- * 'rlSourceReference'
--
-- * 'rlAppEngineRelease'
requestLog
    :: RequestLog
requestLog =
  RequestLog'
    { _rlTraceId = Nothing
    , _rlInstanceId = Nothing
    , _rlStatus = Nothing
    , _rlRequestId = Nothing
    , _rlInstanceIndex = Nothing
    , _rlModuleId = Nothing
    , _rlVersionId = Nothing
    , _rlHTTPVersion = Nothing
    , _rlTaskName = Nothing
    , _rlPendingTime = Nothing
    , _rlWasLoadingRequest = Nothing
    , _rlFirst = Nothing
    , _rlStartTime = Nothing
    , _rlLatency = Nothing
    , _rlURLMapEntry = Nothing
    , _rlCost = Nothing
    , _rlReferrer = Nothing
    , _rlLine = Nothing
    , _rlIP = Nothing
    , _rlAppId = Nothing
    , _rlMethod = Nothing
    , _rlResource = Nothing
    , _rlEndTime = Nothing
    , _rlFinished = Nothing
    , _rlMegaCycles = Nothing
    , _rlUserAgent = Nothing
    , _rlNickname = Nothing
    , _rlHost = Nothing
    , _rlTraceSampled = Nothing
    , _rlTaskQueueName = Nothing
    , _rlResponseSize = Nothing
    , _rlSourceReference = Nothing
    , _rlAppEngineRelease = Nothing
    }


-- | Stackdriver Trace identifier for this request.
rlTraceId :: Lens' RequestLog (Maybe Text)
rlTraceId
  = lens _rlTraceId (\ s a -> s{_rlTraceId = a})

-- | An identifier for the instance that handled the request.
rlInstanceId :: Lens' RequestLog (Maybe Text)
rlInstanceId
  = lens _rlInstanceId (\ s a -> s{_rlInstanceId = a})

-- | HTTP response status code. Example: 200, 404.
rlStatus :: Lens' RequestLog (Maybe Int32)
rlStatus
  = lens _rlStatus (\ s a -> s{_rlStatus = a}) .
      mapping _Coerce

-- | Globally unique identifier for a request, which is based on the request
-- start time. Request IDs for requests which started later will compare
-- greater as strings than those for requests which started earlier.
rlRequestId :: Lens' RequestLog (Maybe Text)
rlRequestId
  = lens _rlRequestId (\ s a -> s{_rlRequestId = a})

-- | If the instance processing this request belongs to a manually scaled
-- module, then this is the 0-based index of the instance. Otherwise, this
-- value is -1.
rlInstanceIndex :: Lens' RequestLog (Maybe Int32)
rlInstanceIndex
  = lens _rlInstanceIndex
      (\ s a -> s{_rlInstanceIndex = a})
      . mapping _Coerce

-- | Module of the application that handled this request.
rlModuleId :: Lens' RequestLog (Maybe Text)
rlModuleId
  = lens _rlModuleId (\ s a -> s{_rlModuleId = a})

-- | Version of the application that handled this request.
rlVersionId :: Lens' RequestLog (Maybe Text)
rlVersionId
  = lens _rlVersionId (\ s a -> s{_rlVersionId = a})

-- | HTTP version of request. Example: \"HTTP\/1.1\".
rlHTTPVersion :: Lens' RequestLog (Maybe Text)
rlHTTPVersion
  = lens _rlHTTPVersion
      (\ s a -> s{_rlHTTPVersion = a})

-- | Task name of the request, in the case of an offline request.
rlTaskName :: Lens' RequestLog (Maybe Text)
rlTaskName
  = lens _rlTaskName (\ s a -> s{_rlTaskName = a})

-- | Time this request spent in the pending request queue.
rlPendingTime :: Lens' RequestLog (Maybe Scientific)
rlPendingTime
  = lens _rlPendingTime
      (\ s a -> s{_rlPendingTime = a})
      . mapping _GDuration

-- | Whether this was a loading request for the instance.
rlWasLoadingRequest :: Lens' RequestLog (Maybe Bool)
rlWasLoadingRequest
  = lens _rlWasLoadingRequest
      (\ s a -> s{_rlWasLoadingRequest = a})

-- | Whether this is the first RequestLog entry for this request. If an
-- active request has several RequestLog entries written to Stackdriver
-- Logging, then this field will be set for one of them.
rlFirst :: Lens' RequestLog (Maybe Bool)
rlFirst = lens _rlFirst (\ s a -> s{_rlFirst = a})

-- | Time when the request started.
rlStartTime :: Lens' RequestLog (Maybe UTCTime)
rlStartTime
  = lens _rlStartTime (\ s a -> s{_rlStartTime = a}) .
      mapping _DateTime

-- | Latency of the request.
rlLatency :: Lens' RequestLog (Maybe Scientific)
rlLatency
  = lens _rlLatency (\ s a -> s{_rlLatency = a}) .
      mapping _GDuration

-- | File or class that handled the request.
rlURLMapEntry :: Lens' RequestLog (Maybe Text)
rlURLMapEntry
  = lens _rlURLMapEntry
      (\ s a -> s{_rlURLMapEntry = a})

-- | An indication of the relative cost of serving this request.
rlCost :: Lens' RequestLog (Maybe Double)
rlCost
  = lens _rlCost (\ s a -> s{_rlCost = a}) .
      mapping _Coerce

-- | Referrer URL of request.
rlReferrer :: Lens' RequestLog (Maybe Text)
rlReferrer
  = lens _rlReferrer (\ s a -> s{_rlReferrer = a})

-- | A list of log lines emitted by the application while serving this
-- request.
rlLine :: Lens' RequestLog [LogLine]
rlLine
  = lens _rlLine (\ s a -> s{_rlLine = a}) . _Default .
      _Coerce

-- | Origin IP address.
rlIP :: Lens' RequestLog (Maybe Text)
rlIP = lens _rlIP (\ s a -> s{_rlIP = a})

-- | Application that handled this request.
rlAppId :: Lens' RequestLog (Maybe Text)
rlAppId = lens _rlAppId (\ s a -> s{_rlAppId = a})

-- | Request method. Example: \"GET\", \"HEAD\", \"PUT\", \"POST\",
-- \"DELETE\".
rlMethod :: Lens' RequestLog (Maybe Text)
rlMethod = lens _rlMethod (\ s a -> s{_rlMethod = a})

-- | Contains the path and query portion of the URL that was requested. For
-- example, if the URL was \"http:\/\/example.com\/app?name=val\", the
-- resource would be \"\/app?name=val\". The fragment identifier, which is
-- identified by the # character, is not included.
rlResource :: Lens' RequestLog (Maybe Text)
rlResource
  = lens _rlResource (\ s a -> s{_rlResource = a})

-- | Time when the request finished.
rlEndTime :: Lens' RequestLog (Maybe UTCTime)
rlEndTime
  = lens _rlEndTime (\ s a -> s{_rlEndTime = a}) .
      mapping _DateTime

-- | Whether this request is finished or active.
rlFinished :: Lens' RequestLog (Maybe Bool)
rlFinished
  = lens _rlFinished (\ s a -> s{_rlFinished = a})

-- | Number of CPU megacycles used to process request.
rlMegaCycles :: Lens' RequestLog (Maybe Int64)
rlMegaCycles
  = lens _rlMegaCycles (\ s a -> s{_rlMegaCycles = a})
      . mapping _Coerce

-- | User agent that made the request.
rlUserAgent :: Lens' RequestLog (Maybe Text)
rlUserAgent
  = lens _rlUserAgent (\ s a -> s{_rlUserAgent = a})

-- | The logged-in user who made the request.Most likely, this is the part of
-- the user\'s email before the \' sign. The field value is the same for
-- different requests from the same user, but different users can have
-- similar names. This information is also available to the application via
-- the App Engine Users API.This field will be populated starting with App
-- Engine 1.9.21.
rlNickname :: Lens' RequestLog (Maybe Text)
rlNickname
  = lens _rlNickname (\ s a -> s{_rlNickname = a})

-- | Internet host and port number of the resource being requested.
rlHost :: Lens' RequestLog (Maybe Text)
rlHost = lens _rlHost (\ s a -> s{_rlHost = a})

-- | If true, the value in the \'trace_id\' field was sampled for storage in
-- a trace backend.
rlTraceSampled :: Lens' RequestLog (Maybe Bool)
rlTraceSampled
  = lens _rlTraceSampled
      (\ s a -> s{_rlTraceSampled = a})

-- | Queue name of the request, in the case of an offline request.
rlTaskQueueName :: Lens' RequestLog (Maybe Text)
rlTaskQueueName
  = lens _rlTaskQueueName
      (\ s a -> s{_rlTaskQueueName = a})

-- | Size in bytes sent back to client by request.
rlResponseSize :: Lens' RequestLog (Maybe Int64)
rlResponseSize
  = lens _rlResponseSize
      (\ s a -> s{_rlResponseSize = a})
      . mapping _Coerce

-- | Source code for the application that handled this request. There can be
-- more than one source reference per deployed application if source code
-- is distributed among multiple repositories.
rlSourceReference :: Lens' RequestLog [SourceReference]
rlSourceReference
  = lens _rlSourceReference
      (\ s a -> s{_rlSourceReference = a})
      . _Default
      . _Coerce

-- | App Engine release version.
rlAppEngineRelease :: Lens' RequestLog (Maybe Text)
rlAppEngineRelease
  = lens _rlAppEngineRelease
      (\ s a -> s{_rlAppEngineRelease = a})

instance FromJSON RequestLog where
        parseJSON
          = withObject "RequestLog"
              (\ o ->
                 RequestLog' <$>
                   (o .:? "traceId") <*> (o .:? "instanceId") <*>
                     (o .:? "status")
                     <*> (o .:? "requestId")
                     <*> (o .:? "instanceIndex")
                     <*> (o .:? "moduleId")
                     <*> (o .:? "versionId")
                     <*> (o .:? "httpVersion")
                     <*> (o .:? "taskName")
                     <*> (o .:? "pendingTime")
                     <*> (o .:? "wasLoadingRequest")
                     <*> (o .:? "first")
                     <*> (o .:? "startTime")
                     <*> (o .:? "latency")
                     <*> (o .:? "urlMapEntry")
                     <*> (o .:? "cost")
                     <*> (o .:? "referrer")
                     <*> (o .:? "line" .!= mempty)
                     <*> (o .:? "ip")
                     <*> (o .:? "appId")
                     <*> (o .:? "method")
                     <*> (o .:? "resource")
                     <*> (o .:? "endTime")
                     <*> (o .:? "finished")
                     <*> (o .:? "megaCycles")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "nickname")
                     <*> (o .:? "host")
                     <*> (o .:? "traceSampled")
                     <*> (o .:? "taskQueueName")
                     <*> (o .:? "responseSize")
                     <*> (o .:? "sourceReference" .!= mempty)
                     <*> (o .:? "appEngineRelease"))

instance ToJSON RequestLog where
        toJSON RequestLog'{..}
          = object
              (catMaybes
                 [("traceId" .=) <$> _rlTraceId,
                  ("instanceId" .=) <$> _rlInstanceId,
                  ("status" .=) <$> _rlStatus,
                  ("requestId" .=) <$> _rlRequestId,
                  ("instanceIndex" .=) <$> _rlInstanceIndex,
                  ("moduleId" .=) <$> _rlModuleId,
                  ("versionId" .=) <$> _rlVersionId,
                  ("httpVersion" .=) <$> _rlHTTPVersion,
                  ("taskName" .=) <$> _rlTaskName,
                  ("pendingTime" .=) <$> _rlPendingTime,
                  ("wasLoadingRequest" .=) <$> _rlWasLoadingRequest,
                  ("first" .=) <$> _rlFirst,
                  ("startTime" .=) <$> _rlStartTime,
                  ("latency" .=) <$> _rlLatency,
                  ("urlMapEntry" .=) <$> _rlURLMapEntry,
                  ("cost" .=) <$> _rlCost,
                  ("referrer" .=) <$> _rlReferrer,
                  ("line" .=) <$> _rlLine, ("ip" .=) <$> _rlIP,
                  ("appId" .=) <$> _rlAppId,
                  ("method" .=) <$> _rlMethod,
                  ("resource" .=) <$> _rlResource,
                  ("endTime" .=) <$> _rlEndTime,
                  ("finished" .=) <$> _rlFinished,
                  ("megaCycles" .=) <$> _rlMegaCycles,
                  ("userAgent" .=) <$> _rlUserAgent,
                  ("nickname" .=) <$> _rlNickname,
                  ("host" .=) <$> _rlHost,
                  ("traceSampled" .=) <$> _rlTraceSampled,
                  ("taskQueueName" .=) <$> _rlTaskQueueName,
                  ("responseSize" .=) <$> _rlResponseSize,
                  ("sourceReference" .=) <$> _rlSourceReference,
                  ("appEngineRelease" .=) <$> _rlAppEngineRelease])

-- | The log entry payload, represented as a protocol buffer. Some Google
-- Cloud Platform services use this field for their log entry payloads.The
-- following protocol buffer types are supported; user-defined types are
-- not supported:\"type.googleapis.com\/google.cloud.audit.AuditLog\"
-- \"type.googleapis.com\/google.appengine.logging.v1.RequestLog\"
--
-- /See:/ 'logEntryProtoPayload' smart constructor.
newtype LogEntryProtoPayload =
  LogEntryProtoPayload'
    { _leppAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogEntryProtoPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leppAddtional'
logEntryProtoPayload
    :: HashMap Text JSONValue -- ^ 'leppAddtional'
    -> LogEntryProtoPayload
logEntryProtoPayload pLeppAddtional_ =
  LogEntryProtoPayload' {_leppAddtional = _Coerce # pLeppAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
leppAddtional :: Lens' LogEntryProtoPayload (HashMap Text JSONValue)
leppAddtional
  = lens _leppAddtional
      (\ s a -> s{_leppAddtional = a})
      . _Coerce

instance FromJSON LogEntryProtoPayload where
        parseJSON
          = withObject "LogEntryProtoPayload"
              (\ o ->
                 LogEntryProtoPayload' <$> (parseJSONObject o))

instance ToJSON LogEntryProtoPayload where
        toJSON = toJSON . _leppAddtional

-- | Additional information about the source code location that produced the
-- log entry.
--
-- /See:/ 'logEntrySourceLocation' smart constructor.
data LogEntrySourceLocation =
  LogEntrySourceLocation'
    { _leslFunction :: !(Maybe Text)
    , _leslLine :: !(Maybe (Textual Int64))
    , _leslFile :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogEntrySourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leslFunction'
--
-- * 'leslLine'
--
-- * 'leslFile'
logEntrySourceLocation
    :: LogEntrySourceLocation
logEntrySourceLocation =
  LogEntrySourceLocation'
    {_leslFunction = Nothing, _leslLine = Nothing, _leslFile = Nothing}


-- | Optional. Human-readable name of the function or method being invoked,
-- with optional context such as the class or package name. This
-- information may be used in contexts such as the logs viewer, where a
-- file and line number are less meaningful. The format can vary by
-- language. For example: qual.if.ied.Class.method (Java),
-- dir\/package.func (Go), function (Python).
leslFunction :: Lens' LogEntrySourceLocation (Maybe Text)
leslFunction
  = lens _leslFunction (\ s a -> s{_leslFunction = a})

-- | Optional. Line within the source file. 1-based; 0 indicates no line
-- number available.
leslLine :: Lens' LogEntrySourceLocation (Maybe Int64)
leslLine
  = lens _leslLine (\ s a -> s{_leslLine = a}) .
      mapping _Coerce

-- | Optional. Source file name. Depending on the runtime environment, this
-- might be a simple name or a fully-qualified name.
leslFile :: Lens' LogEntrySourceLocation (Maybe Text)
leslFile = lens _leslFile (\ s a -> s{_leslFile = a})

instance FromJSON LogEntrySourceLocation where
        parseJSON
          = withObject "LogEntrySourceLocation"
              (\ o ->
                 LogEntrySourceLocation' <$>
                   (o .:? "function") <*> (o .:? "line") <*>
                     (o .:? "file"))

instance ToJSON LogEntrySourceLocation where
        toJSON LogEntrySourceLocation'{..}
          = object
              (catMaybes
                 [("function" .=) <$> _leslFunction,
                  ("line" .=) <$> _leslLine,
                  ("file" .=) <$> _leslFile])

-- | Specifies a set of log entries that are not to be stored in Logging. If
-- your GCP resource receives a large volume of logs, you can use
-- exclusions to reduce your chargeable logs. Exclusions are processed
-- after log sinks, so you can export log entries before they are excluded.
-- Note that organization-level and folder-level exclusions don\'t apply to
-- child resources, and that you can\'t exclude audit log entries.
--
-- /See:/ 'logExclusion' smart constructor.
data LogExclusion =
  LogExclusion'
    { _leDisabled :: !(Maybe Bool)
    , _leUpdateTime :: !(Maybe DateTime')
    , _leName :: !(Maybe Text)
    , _leFilter :: !(Maybe Text)
    , _leDescription :: !(Maybe Text)
    , _leCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogExclusion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leDisabled'
--
-- * 'leUpdateTime'
--
-- * 'leName'
--
-- * 'leFilter'
--
-- * 'leDescription'
--
-- * 'leCreateTime'
logExclusion
    :: LogExclusion
logExclusion =
  LogExclusion'
    { _leDisabled = Nothing
    , _leUpdateTime = Nothing
    , _leName = Nothing
    , _leFilter = Nothing
    , _leDescription = Nothing
    , _leCreateTime = Nothing
    }


-- | Optional. If set to True, then this exclusion is disabled and it does
-- not exclude any log entries. You can update an exclusion to change the
-- value of this field.
leDisabled :: Lens' LogExclusion (Maybe Bool)
leDisabled
  = lens _leDisabled (\ s a -> s{_leDisabled = a})

-- | Output only. The last update timestamp of the exclusion.This field may
-- not be present for older exclusions.
leUpdateTime :: Lens' LogExclusion (Maybe UTCTime)
leUpdateTime
  = lens _leUpdateTime (\ s a -> s{_leUpdateTime = a})
      . mapping _DateTime

-- | Required. A client-assigned identifier, such as
-- \"load-balancer-exclusion\". Identifiers are limited to 100 characters
-- and can include only letters, digits, underscores, hyphens, and periods.
-- First character has to be alphanumeric.
leName :: Lens' LogExclusion (Maybe Text)
leName = lens _leName (\ s a -> s{_leName = a})

-- | Required. An advanced logs filter
-- (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries) that
-- matches the log entries to be excluded. By using the sample function
-- (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries#sample),
-- you can exclude less than 100% of the matching log entries. For example,
-- the following query matches 99% of low-severity log entries from Google
-- Cloud Storage buckets:\"resource.type=gcs_bucket severity
leFilter :: Lens' LogExclusion (Maybe Text)
leFilter = lens _leFilter (\ s a -> s{_leFilter = a})

-- | Optional. A description of this exclusion.
leDescription :: Lens' LogExclusion (Maybe Text)
leDescription
  = lens _leDescription
      (\ s a -> s{_leDescription = a})

-- | Output only. The creation timestamp of the exclusion.This field may not
-- be present for older exclusions.
leCreateTime :: Lens' LogExclusion (Maybe UTCTime)
leCreateTime
  = lens _leCreateTime (\ s a -> s{_leCreateTime = a})
      . mapping _DateTime

instance FromJSON LogExclusion where
        parseJSON
          = withObject "LogExclusion"
              (\ o ->
                 LogExclusion' <$>
                   (o .:? "disabled") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "filter")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON LogExclusion where
        toJSON LogExclusion'{..}
          = object
              (catMaybes
                 [("disabled" .=) <$> _leDisabled,
                  ("updateTime" .=) <$> _leUpdateTime,
                  ("name" .=) <$> _leName, ("filter" .=) <$> _leFilter,
                  ("description" .=) <$> _leDescription,
                  ("createTime" .=) <$> _leCreateTime])

-- | Result returned from WriteLogEntries.
--
-- /See:/ 'writeLogEntriesResponse' smart constructor.
data WriteLogEntriesResponse =
  WriteLogEntriesResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WriteLogEntriesResponse' with the minimum fields required to make a request.
--
writeLogEntriesResponse
    :: WriteLogEntriesResponse
writeLogEntriesResponse = WriteLogEntriesResponse'


instance FromJSON WriteLogEntriesResponse where
        parseJSON
          = withObject "WriteLogEntriesResponse"
              (\ o -> pure WriteLogEntriesResponse')

instance ToJSON WriteLogEntriesResponse where
        toJSON = const emptyObject

-- | Response type for CopyLogEntries long running operations.
--
-- /See:/ 'copyLogEntriesResponse' smart constructor.
newtype CopyLogEntriesResponse =
  CopyLogEntriesResponse'
    { _clerLogEntriesCopiedCount :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CopyLogEntriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clerLogEntriesCopiedCount'
copyLogEntriesResponse
    :: CopyLogEntriesResponse
copyLogEntriesResponse =
  CopyLogEntriesResponse' {_clerLogEntriesCopiedCount = Nothing}


-- | Number of log entries copied.
clerLogEntriesCopiedCount :: Lens' CopyLogEntriesResponse (Maybe Int64)
clerLogEntriesCopiedCount
  = lens _clerLogEntriesCopiedCount
      (\ s a -> s{_clerLogEntriesCopiedCount = a})
      . mapping _Coerce

instance FromJSON CopyLogEntriesResponse where
        parseJSON
          = withObject "CopyLogEntriesResponse"
              (\ o ->
                 CopyLogEntriesResponse' <$>
                   (o .:? "logEntriesCopiedCount"))

instance ToJSON CopyLogEntriesResponse where
        toJSON CopyLogEntriesResponse'{..}
          = object
              (catMaybes
                 [("logEntriesCopiedCount" .=) <$>
                    _clerLogEntriesCopiedCount])

-- | Describes a sink used to export log entries to one of the following
-- destinations in any project: a Cloud Storage bucket, a BigQuery dataset,
-- a Cloud Pub\/Sub topic or a Cloud Logging Bucket. A logs filter controls
-- which log entries are exported. The sink must be created within a
-- project, organization, billing account, or folder.
--
-- /See:/ 'logSink' smart constructor.
data LogSink =
  LogSink'
    { _lsDestination :: !(Maybe Text)
    , _lsIncludeChildren :: !(Maybe Bool)
    , _lsDisabled :: !(Maybe Bool)
    , _lsOutputVersionFormat :: !(Maybe LogSinkOutputVersionFormat)
    , _lsBigQueryOptions :: !(Maybe BigQueryOptions)
    , _lsWriterIdentity :: !(Maybe Text)
    , _lsUpdateTime :: !(Maybe DateTime')
    , _lsName :: !(Maybe Text)
    , _lsExclusions :: !(Maybe [LogExclusion])
    , _lsFilter :: !(Maybe Text)
    , _lsDescription :: !(Maybe Text)
    , _lsCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogSink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsDestination'
--
-- * 'lsIncludeChildren'
--
-- * 'lsDisabled'
--
-- * 'lsOutputVersionFormat'
--
-- * 'lsBigQueryOptions'
--
-- * 'lsWriterIdentity'
--
-- * 'lsUpdateTime'
--
-- * 'lsName'
--
-- * 'lsExclusions'
--
-- * 'lsFilter'
--
-- * 'lsDescription'
--
-- * 'lsCreateTime'
logSink
    :: LogSink
logSink =
  LogSink'
    { _lsDestination = Nothing
    , _lsIncludeChildren = Nothing
    , _lsDisabled = Nothing
    , _lsOutputVersionFormat = Nothing
    , _lsBigQueryOptions = Nothing
    , _lsWriterIdentity = Nothing
    , _lsUpdateTime = Nothing
    , _lsName = Nothing
    , _lsExclusions = Nothing
    , _lsFilter = Nothing
    , _lsDescription = Nothing
    , _lsCreateTime = Nothing
    }


-- | Required. The export destination:
-- \"storage.googleapis.com\/[GCS_BUCKET]\"
-- \"bigquery.googleapis.com\/projects\/[PROJECT_ID]\/datasets\/[DATASET]\"
-- \"pubsub.googleapis.com\/projects\/[PROJECT_ID]\/topics\/[TOPIC_ID]\"
-- The sink\'s writer_identity, set when the sink is created, must have
-- permission to write to the destination or else the log entries are not
-- exported. For more information, see Exporting Logs with Sinks
-- (https:\/\/cloud.google.com\/logging\/docs\/api\/tasks\/exporting-logs).
lsDestination :: Lens' LogSink (Maybe Text)
lsDestination
  = lens _lsDestination
      (\ s a -> s{_lsDestination = a})

-- | Optional. This field applies only to sinks owned by organizations and
-- folders. If the field is false, the default, only the logs owned by the
-- sink\'s parent resource are available for export. If the field is true,
-- then logs from all the projects, folders, and billing accounts contained
-- in the sink\'s parent resource are also available for export. Whether a
-- particular log entry from the children is exported depends on the
-- sink\'s filter expression. For example, if this field is true, then the
-- filter resource.type=gce_instance would export all Compute Engine VM
-- instance log entries from all projects in the sink\'s parent. To only
-- export entries from certain child projects, filter on the project part
-- of the log name: logName:(\"projects\/test-project1\/\" OR
-- \"projects\/test-project2\/\") AND resource.type=gce_instance
lsIncludeChildren :: Lens' LogSink (Maybe Bool)
lsIncludeChildren
  = lens _lsIncludeChildren
      (\ s a -> s{_lsIncludeChildren = a})

-- | Optional. If set to True, then this sink is disabled and it does not
-- export any log entries.
lsDisabled :: Lens' LogSink (Maybe Bool)
lsDisabled
  = lens _lsDisabled (\ s a -> s{_lsDisabled = a})

-- | Deprecated. This field is unused.
lsOutputVersionFormat :: Lens' LogSink (Maybe LogSinkOutputVersionFormat)
lsOutputVersionFormat
  = lens _lsOutputVersionFormat
      (\ s a -> s{_lsOutputVersionFormat = a})

-- | Optional. Options that affect sinks exporting data to BigQuery.
lsBigQueryOptions :: Lens' LogSink (Maybe BigQueryOptions)
lsBigQueryOptions
  = lens _lsBigQueryOptions
      (\ s a -> s{_lsBigQueryOptions = a})

-- | Output only. An IAM identity—a service account or group—under which
-- Logging writes the exported log entries to the sink\'s destination. This
-- field is set by sinks.create and sinks.update based on the value of
-- unique_writer_identity in those methods.Until you grant this identity
-- write-access to the destination, log entry exports from this sink will
-- fail. For more information, see Granting Access for a Resource
-- (https:\/\/cloud.google.com\/iam\/docs\/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource).
-- Consult the destination service\'s documentation to determine the
-- appropriate IAM roles to assign to the identity.
lsWriterIdentity :: Lens' LogSink (Maybe Text)
lsWriterIdentity
  = lens _lsWriterIdentity
      (\ s a -> s{_lsWriterIdentity = a})

-- | Output only. The last update timestamp of the sink.This field may not be
-- present for older sinks.
lsUpdateTime :: Lens' LogSink (Maybe UTCTime)
lsUpdateTime
  = lens _lsUpdateTime (\ s a -> s{_lsUpdateTime = a})
      . mapping _DateTime

-- | Required. The client-assigned sink identifier, unique within the
-- project. Example: \"my-syslog-errors-to-pubsub\". Sink identifiers are
-- limited to 100 characters and can include only the following characters:
-- upper and lower-case alphanumeric characters, underscores, hyphens, and
-- periods. First character has to be alphanumeric.
lsName :: Lens' LogSink (Maybe Text)
lsName = lens _lsName (\ s a -> s{_lsName = a})

-- | Optional. Log entries that match any of the exclusion filters will not
-- be exported. If a log entry is matched by both filter and one of
-- exclusion_filters it will not be exported.
lsExclusions :: Lens' LogSink [LogExclusion]
lsExclusions
  = lens _lsExclusions (\ s a -> s{_lsExclusions = a})
      . _Default
      . _Coerce

-- | Optional. An advanced logs filter
-- (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries). The
-- only exported log entries are those that are in the resource owning the
-- sink and that match the filter. For example:
-- logName=\"projects\/[PROJECT_ID]\/logs\/[LOG_ID]\" AND severity>=ERROR
lsFilter :: Lens' LogSink (Maybe Text)
lsFilter = lens _lsFilter (\ s a -> s{_lsFilter = a})

-- | Optional. A description of this sink. The maximum length of the
-- description is 8000 characters.
lsDescription :: Lens' LogSink (Maybe Text)
lsDescription
  = lens _lsDescription
      (\ s a -> s{_lsDescription = a})

-- | Output only. The creation timestamp of the sink.This field may not be
-- present for older sinks.
lsCreateTime :: Lens' LogSink (Maybe UTCTime)
lsCreateTime
  = lens _lsCreateTime (\ s a -> s{_lsCreateTime = a})
      . mapping _DateTime

instance FromJSON LogSink where
        parseJSON
          = withObject "LogSink"
              (\ o ->
                 LogSink' <$>
                   (o .:? "destination") <*> (o .:? "includeChildren")
                     <*> (o .:? "disabled")
                     <*> (o .:? "outputVersionFormat")
                     <*> (o .:? "bigqueryOptions")
                     <*> (o .:? "writerIdentity")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "exclusions" .!= mempty)
                     <*> (o .:? "filter")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON LogSink where
        toJSON LogSink'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _lsDestination,
                  ("includeChildren" .=) <$> _lsIncludeChildren,
                  ("disabled" .=) <$> _lsDisabled,
                  ("outputVersionFormat" .=) <$>
                    _lsOutputVersionFormat,
                  ("bigqueryOptions" .=) <$> _lsBigQueryOptions,
                  ("writerIdentity" .=) <$> _lsWriterIdentity,
                  ("updateTime" .=) <$> _lsUpdateTime,
                  ("name" .=) <$> _lsName,
                  ("exclusions" .=) <$> _lsExclusions,
                  ("filter" .=) <$> _lsFilter,
                  ("description" .=) <$> _lsDescription,
                  ("createTime" .=) <$> _lsCreateTime])

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

-- | Output only. A map of user-defined metadata labels.
--
-- /See:/ 'monitoredResourceMetadataUserLabels' smart constructor.
newtype MonitoredResourceMetadataUserLabels =
  MonitoredResourceMetadataUserLabels'
    { _mrmulAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoredResourceMetadataUserLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrmulAddtional'
monitoredResourceMetadataUserLabels
    :: HashMap Text Text -- ^ 'mrmulAddtional'
    -> MonitoredResourceMetadataUserLabels
monitoredResourceMetadataUserLabels pMrmulAddtional_ =
  MonitoredResourceMetadataUserLabels'
    {_mrmulAddtional = _Coerce # pMrmulAddtional_}


mrmulAddtional :: Lens' MonitoredResourceMetadataUserLabels (HashMap Text Text)
mrmulAddtional
  = lens _mrmulAddtional
      (\ s a -> s{_mrmulAddtional = a})
      . _Coerce

instance FromJSON MonitoredResourceMetadataUserLabels
         where
        parseJSON
          = withObject "MonitoredResourceMetadataUserLabels"
              (\ o ->
                 MonitoredResourceMetadataUserLabels' <$>
                   (parseJSONObject o))

instance ToJSON MonitoredResourceMetadataUserLabels
         where
        toJSON = toJSON . _mrmulAddtional

-- | Result returned from ListExclusions.
--
-- /See:/ 'listExclusionsResponse' smart constructor.
data ListExclusionsResponse =
  ListExclusionsResponse'
    { _lerNextPageToken :: !(Maybe Text)
    , _lerExclusions :: !(Maybe [LogExclusion])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListExclusionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerNextPageToken'
--
-- * 'lerExclusions'
listExclusionsResponse
    :: ListExclusionsResponse
listExclusionsResponse =
  ListExclusionsResponse'
    {_lerNextPageToken = Nothing, _lerExclusions = Nothing}


-- | If there might be more results than appear in this response, then
-- nextPageToken is included. To get the next set of results, call the same
-- method again using the value of nextPageToken as pageToken.
lerNextPageToken :: Lens' ListExclusionsResponse (Maybe Text)
lerNextPageToken
  = lens _lerNextPageToken
      (\ s a -> s{_lerNextPageToken = a})

-- | A list of exclusions.
lerExclusions :: Lens' ListExclusionsResponse [LogExclusion]
lerExclusions
  = lens _lerExclusions
      (\ s a -> s{_lerExclusions = a})
      . _Default
      . _Coerce

instance FromJSON ListExclusionsResponse where
        parseJSON
          = withObject "ListExclusionsResponse"
              (\ o ->
                 ListExclusionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "exclusions" .!= mempty))

instance ToJSON ListExclusionsResponse where
        toJSON ListExclusionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lerNextPageToken,
                  ("exclusions" .=) <$> _lerExclusions])

-- | Result returned from ListLogs.
--
-- /See:/ 'listLogsResponse' smart constructor.
data ListLogsResponse =
  ListLogsResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lLogNames :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLogsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lLogNames'
listLogsResponse
    :: ListLogsResponse
listLogsResponse =
  ListLogsResponse' {_lNextPageToken = Nothing, _lLogNames = Nothing}


-- | If there might be more results than those appearing in this response,
-- then nextPageToken is included. To get the next set of results, call
-- this method again using the value of nextPageToken as pageToken.
lNextPageToken :: Lens' ListLogsResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | A list of log names. For example, \"projects\/my-project\/logs\/syslog\"
-- or
-- \"organizations\/123\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".
lLogNames :: Lens' ListLogsResponse [Text]
lLogNames
  = lens _lLogNames (\ s a -> s{_lLogNames = a}) .
      _Default
      . _Coerce

instance FromJSON ListLogsResponse where
        parseJSON
          = withObject "ListLogsResponse"
              (\ o ->
                 ListLogsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "logNames" .!= mempty))

instance ToJSON ListLogsResponse where
        toJSON ListLogsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  ("logNames" .=) <$> _lLogNames])

-- | Metadata for CopyLogEntries long running operations.
--
-- /See:/ 'copyLogEntriesMetadata' smart constructor.
data CopyLogEntriesMetadata =
  CopyLogEntriesMetadata'
    { _clemState :: !(Maybe CopyLogEntriesMetadataState)
    , _clemCancellationRequested :: !(Maybe Bool)
    , _clemProgress :: !(Maybe (Textual Int32))
    , _clemStartTime :: !(Maybe DateTime')
    , _clemWriterIdentity :: !(Maybe Text)
    , _clemEndTime :: !(Maybe DateTime')
    , _clemRequest :: !(Maybe CopyLogEntriesRequest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CopyLogEntriesMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clemState'
--
-- * 'clemCancellationRequested'
--
-- * 'clemProgress'
--
-- * 'clemStartTime'
--
-- * 'clemWriterIdentity'
--
-- * 'clemEndTime'
--
-- * 'clemRequest'
copyLogEntriesMetadata
    :: CopyLogEntriesMetadata
copyLogEntriesMetadata =
  CopyLogEntriesMetadata'
    { _clemState = Nothing
    , _clemCancellationRequested = Nothing
    , _clemProgress = Nothing
    , _clemStartTime = Nothing
    , _clemWriterIdentity = Nothing
    , _clemEndTime = Nothing
    , _clemRequest = Nothing
    }


-- | State of an operation.
clemState :: Lens' CopyLogEntriesMetadata (Maybe CopyLogEntriesMetadataState)
clemState
  = lens _clemState (\ s a -> s{_clemState = a})

-- | Identifies whether the user has requested cancellation of the operation.
clemCancellationRequested :: Lens' CopyLogEntriesMetadata (Maybe Bool)
clemCancellationRequested
  = lens _clemCancellationRequested
      (\ s a -> s{_clemCancellationRequested = a})

-- | Estimated progress of the operation (0 - 100%).
clemProgress :: Lens' CopyLogEntriesMetadata (Maybe Int32)
clemProgress
  = lens _clemProgress (\ s a -> s{_clemProgress = a})
      . mapping _Coerce

-- | The create time of an operation.
clemStartTime :: Lens' CopyLogEntriesMetadata (Maybe UTCTime)
clemStartTime
  = lens _clemStartTime
      (\ s a -> s{_clemStartTime = a})
      . mapping _DateTime

-- | The IAM identity of a service account that must be granted access to the
-- destination. If the service account is not granted permission to the
-- destination within an hour, the operation will be cancelled. Example:
-- \"serviceAccount:foo\'bar.com\"
clemWriterIdentity :: Lens' CopyLogEntriesMetadata (Maybe Text)
clemWriterIdentity
  = lens _clemWriterIdentity
      (\ s a -> s{_clemWriterIdentity = a})

-- | The end time of an operation.
clemEndTime :: Lens' CopyLogEntriesMetadata (Maybe UTCTime)
clemEndTime
  = lens _clemEndTime (\ s a -> s{_clemEndTime = a}) .
      mapping _DateTime

-- | CopyLogEntries RPC request.
clemRequest :: Lens' CopyLogEntriesMetadata (Maybe CopyLogEntriesRequest)
clemRequest
  = lens _clemRequest (\ s a -> s{_clemRequest = a})

instance FromJSON CopyLogEntriesMetadata where
        parseJSON
          = withObject "CopyLogEntriesMetadata"
              (\ o ->
                 CopyLogEntriesMetadata' <$>
                   (o .:? "state") <*> (o .:? "cancellationRequested")
                     <*> (o .:? "progress")
                     <*> (o .:? "startTime")
                     <*> (o .:? "writerIdentity")
                     <*> (o .:? "endTime")
                     <*> (o .:? "request"))

instance ToJSON CopyLogEntriesMetadata where
        toJSON CopyLogEntriesMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _clemState,
                  ("cancellationRequested" .=) <$>
                    _clemCancellationRequested,
                  ("progress" .=) <$> _clemProgress,
                  ("startTime" .=) <$> _clemStartTime,
                  ("writerIdentity" .=) <$> _clemWriterIdentity,
                  ("endTime" .=) <$> _clemEndTime,
                  ("request" .=) <$> _clemRequest])

-- | Result returned from ListMonitoredResourceDescriptors.
--
-- /See:/ 'listMonitoredResourceDescriptorsResponse' smart constructor.
data ListMonitoredResourceDescriptorsResponse =
  ListMonitoredResourceDescriptorsResponse'
    { _lmrdrNextPageToken :: !(Maybe Text)
    , _lmrdrResourceDescriptors :: !(Maybe [MonitoredResourceDescriptor])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListMonitoredResourceDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrdrNextPageToken'
--
-- * 'lmrdrResourceDescriptors'
listMonitoredResourceDescriptorsResponse
    :: ListMonitoredResourceDescriptorsResponse
listMonitoredResourceDescriptorsResponse =
  ListMonitoredResourceDescriptorsResponse'
    {_lmrdrNextPageToken = Nothing, _lmrdrResourceDescriptors = Nothing}


-- | If there might be more results than those appearing in this response,
-- then nextPageToken is included. To get the next set of results, call
-- this method again using the value of nextPageToken as pageToken.
lmrdrNextPageToken :: Lens' ListMonitoredResourceDescriptorsResponse (Maybe Text)
lmrdrNextPageToken
  = lens _lmrdrNextPageToken
      (\ s a -> s{_lmrdrNextPageToken = a})

-- | A list of resource descriptors.
lmrdrResourceDescriptors :: Lens' ListMonitoredResourceDescriptorsResponse [MonitoredResourceDescriptor]
lmrdrResourceDescriptors
  = lens _lmrdrResourceDescriptors
      (\ s a -> s{_lmrdrResourceDescriptors = a})
      . _Default
      . _Coerce

instance FromJSON
           ListMonitoredResourceDescriptorsResponse
         where
        parseJSON
          = withObject
              "ListMonitoredResourceDescriptorsResponse"
              (\ o ->
                 ListMonitoredResourceDescriptorsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resourceDescriptors" .!= mempty))

instance ToJSON
           ListMonitoredResourceDescriptorsResponse
         where
        toJSON ListMonitoredResourceDescriptorsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrdrNextPageToken,
                  ("resourceDescriptors" .=) <$>
                    _lmrdrResourceDescriptors])

-- | Options that change functionality of a sink exporting data to BigQuery.
--
-- /See:/ 'bigQueryOptions' smart constructor.
data BigQueryOptions =
  BigQueryOptions'
    { _bqoUsePartitionedTables :: !(Maybe Bool)
    , _bqoUsesTimestampColumnPartitioning :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BigQueryOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bqoUsePartitionedTables'
--
-- * 'bqoUsesTimestampColumnPartitioning'
bigQueryOptions
    :: BigQueryOptions
bigQueryOptions =
  BigQueryOptions'
    { _bqoUsePartitionedTables = Nothing
    , _bqoUsesTimestampColumnPartitioning = Nothing
    }


-- | Optional. Whether to use BigQuery\'s partition tables
-- (https:\/\/cloud.google.com\/bigquery\/docs\/partitioned-tables). By
-- default, Logging creates dated tables based on the log entries\'
-- timestamps, e.g. syslog_20170523. With partitioned tables the date
-- suffix is no longer present and special query syntax
-- (https:\/\/cloud.google.com\/bigquery\/docs\/querying-partitioned-tables)
-- has to be used instead. In both cases, tables are sharded based on UTC
-- timezone.
bqoUsePartitionedTables :: Lens' BigQueryOptions (Maybe Bool)
bqoUsePartitionedTables
  = lens _bqoUsePartitionedTables
      (\ s a -> s{_bqoUsePartitionedTables = a})

-- | Output only. True if new timestamp column based partitioning is in use,
-- false if legacy ingestion-time partitioning is in use. All new sinks
-- will have this field set true and will use timestamp column based
-- partitioning. If use_partitioned_tables is false, this value has no
-- meaning and will be false. Legacy sinks using partitioned tables will
-- have this field set to false.
bqoUsesTimestampColumnPartitioning :: Lens' BigQueryOptions (Maybe Bool)
bqoUsesTimestampColumnPartitioning
  = lens _bqoUsesTimestampColumnPartitioning
      (\ s a -> s{_bqoUsesTimestampColumnPartitioning = a})

instance FromJSON BigQueryOptions where
        parseJSON
          = withObject "BigQueryOptions"
              (\ o ->
                 BigQueryOptions' <$>
                   (o .:? "usePartitionedTables") <*>
                     (o .:? "usesTimestampColumnPartitioning"))

instance ToJSON BigQueryOptions where
        toJSON BigQueryOptions'{..}
          = object
              (catMaybes
                 [("usePartitionedTables" .=) <$>
                    _bqoUsePartitionedTables,
                  ("usesTimestampColumnPartitioning" .=) <$>
                    _bqoUsesTimestampColumnPartitioning])

-- | Specifies a set of buckets with arbitrary widths.There are size(bounds)
-- + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0
-- \<= i \< N-1): boundsi Lower bound (1 \<= i \< N); boundsi - 1The bounds
-- field must contain at least one element. If bounds has only one element,
-- then there are no finite buckets, and that single element is the common
-- boundary of the overflow and underflow buckets.
--
-- /See:/ 'explicit' smart constructor.
newtype Explicit =
  Explicit'
    { _eBounds :: Maybe [Textual Double]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Explicit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eBounds'
explicit
    :: Explicit
explicit = Explicit' {_eBounds = Nothing}


-- | The values must be monotonically increasing.
eBounds :: Lens' Explicit [Double]
eBounds
  = lens _eBounds (\ s a -> s{_eBounds = a}) . _Default
      . _Coerce

instance FromJSON Explicit where
        parseJSON
          = withObject "Explicit"
              (\ o -> Explicit' <$> (o .:? "bounds" .!= mempty))

instance ToJSON Explicit where
        toJSON Explicit'{..}
          = object (catMaybes [("bounds" .=) <$> _eBounds])

-- | A common proto for logging HTTP requests. Only contains semantics
-- defined by the HTTP specification. Product-specific logging information
-- MUST be defined in a separate message.
--
-- /See:/ 'hTTPRequest' smart constructor.
data HTTPRequest =
  HTTPRequest'
    { _httprStatus :: !(Maybe (Textual Int32))
    , _httprRequestURL :: !(Maybe Text)
    , _httprCacheFillBytes :: !(Maybe (Textual Int64))
    , _httprRemoteIP :: !(Maybe Text)
    , _httprLatency :: !(Maybe GDuration)
    , _httprProtocol :: !(Maybe Text)
    , _httprServerIP :: !(Maybe Text)
    , _httprRequestSize :: !(Maybe (Textual Int64))
    , _httprCacheValidatedWithOriginServer :: !(Maybe Bool)
    , _httprUserAgent :: !(Maybe Text)
    , _httprCacheLookup :: !(Maybe Bool)
    , _httprResponseSize :: !(Maybe (Textual Int64))
    , _httprRequestMethod :: !(Maybe Text)
    , _httprCacheHit :: !(Maybe Bool)
    , _httprReferer :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httprStatus'
--
-- * 'httprRequestURL'
--
-- * 'httprCacheFillBytes'
--
-- * 'httprRemoteIP'
--
-- * 'httprLatency'
--
-- * 'httprProtocol'
--
-- * 'httprServerIP'
--
-- * 'httprRequestSize'
--
-- * 'httprCacheValidatedWithOriginServer'
--
-- * 'httprUserAgent'
--
-- * 'httprCacheLookup'
--
-- * 'httprResponseSize'
--
-- * 'httprRequestMethod'
--
-- * 'httprCacheHit'
--
-- * 'httprReferer'
hTTPRequest
    :: HTTPRequest
hTTPRequest =
  HTTPRequest'
    { _httprStatus = Nothing
    , _httprRequestURL = Nothing
    , _httprCacheFillBytes = Nothing
    , _httprRemoteIP = Nothing
    , _httprLatency = Nothing
    , _httprProtocol = Nothing
    , _httprServerIP = Nothing
    , _httprRequestSize = Nothing
    , _httprCacheValidatedWithOriginServer = Nothing
    , _httprUserAgent = Nothing
    , _httprCacheLookup = Nothing
    , _httprResponseSize = Nothing
    , _httprRequestMethod = Nothing
    , _httprCacheHit = Nothing
    , _httprReferer = Nothing
    }


-- | The response code indicating the status of response. Examples: 200, 404.
httprStatus :: Lens' HTTPRequest (Maybe Int32)
httprStatus
  = lens _httprStatus (\ s a -> s{_httprStatus = a}) .
      mapping _Coerce

-- | The scheme (http, https), the host name, the path and the query portion
-- of the URL that was requested. Example:
-- \"http:\/\/example.com\/some\/info?color=red\".
httprRequestURL :: Lens' HTTPRequest (Maybe Text)
httprRequestURL
  = lens _httprRequestURL
      (\ s a -> s{_httprRequestURL = a})

-- | The number of HTTP response bytes inserted into cache. Set only when a
-- cache fill was attempted.
httprCacheFillBytes :: Lens' HTTPRequest (Maybe Int64)
httprCacheFillBytes
  = lens _httprCacheFillBytes
      (\ s a -> s{_httprCacheFillBytes = a})
      . mapping _Coerce

-- | The IP address (IPv4 or IPv6) of the client that issued the HTTP
-- request. This field can include port information. Examples:
-- \"192.168.1.1\", \"10.0.0.1:80\", \"FE80::0202:B3FF:FE1E:8329\".
httprRemoteIP :: Lens' HTTPRequest (Maybe Text)
httprRemoteIP
  = lens _httprRemoteIP
      (\ s a -> s{_httprRemoteIP = a})

-- | The request processing latency on the server, from the time the request
-- was received until the response was sent.
httprLatency :: Lens' HTTPRequest (Maybe Scientific)
httprLatency
  = lens _httprLatency (\ s a -> s{_httprLatency = a})
      . mapping _GDuration

-- | Protocol used for the request. Examples: \"HTTP\/1.1\", \"HTTP\/2\",
-- \"websocket\"
httprProtocol :: Lens' HTTPRequest (Maybe Text)
httprProtocol
  = lens _httprProtocol
      (\ s a -> s{_httprProtocol = a})

-- | The IP address (IPv4 or IPv6) of the origin server that the request was
-- sent to. This field can include port information. Examples:
-- \"192.168.1.1\", \"10.0.0.1:80\", \"FE80::0202:B3FF:FE1E:8329\".
httprServerIP :: Lens' HTTPRequest (Maybe Text)
httprServerIP
  = lens _httprServerIP
      (\ s a -> s{_httprServerIP = a})

-- | The size of the HTTP request message in bytes, including the request
-- headers and the request body.
httprRequestSize :: Lens' HTTPRequest (Maybe Int64)
httprRequestSize
  = lens _httprRequestSize
      (\ s a -> s{_httprRequestSize = a})
      . mapping _Coerce

-- | Whether or not the response was validated with the origin server before
-- being served from cache. This field is only meaningful if cache_hit is
-- True.
httprCacheValidatedWithOriginServer :: Lens' HTTPRequest (Maybe Bool)
httprCacheValidatedWithOriginServer
  = lens _httprCacheValidatedWithOriginServer
      (\ s a ->
         s{_httprCacheValidatedWithOriginServer = a})

-- | The user agent sent by the client. Example: \"Mozilla\/4.0 (compatible;
-- MSIE 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)\".
httprUserAgent :: Lens' HTTPRequest (Maybe Text)
httprUserAgent
  = lens _httprUserAgent
      (\ s a -> s{_httprUserAgent = a})

-- | Whether or not a cache lookup was attempted.
httprCacheLookup :: Lens' HTTPRequest (Maybe Bool)
httprCacheLookup
  = lens _httprCacheLookup
      (\ s a -> s{_httprCacheLookup = a})

-- | The size of the HTTP response message sent back to the client, in bytes,
-- including the response headers and the response body.
httprResponseSize :: Lens' HTTPRequest (Maybe Int64)
httprResponseSize
  = lens _httprResponseSize
      (\ s a -> s{_httprResponseSize = a})
      . mapping _Coerce

-- | The request method. Examples: \"GET\", \"HEAD\", \"PUT\", \"POST\".
httprRequestMethod :: Lens' HTTPRequest (Maybe Text)
httprRequestMethod
  = lens _httprRequestMethod
      (\ s a -> s{_httprRequestMethod = a})

-- | Whether or not an entity was served from cache (with or without
-- validation).
httprCacheHit :: Lens' HTTPRequest (Maybe Bool)
httprCacheHit
  = lens _httprCacheHit
      (\ s a -> s{_httprCacheHit = a})

-- | The referer URL of the request, as defined in HTTP\/1.1 Header Field
-- Definitions
-- (http:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616-sec14.html).
httprReferer :: Lens' HTTPRequest (Maybe Text)
httprReferer
  = lens _httprReferer (\ s a -> s{_httprReferer = a})

instance FromJSON HTTPRequest where
        parseJSON
          = withObject "HTTPRequest"
              (\ o ->
                 HTTPRequest' <$>
                   (o .:? "status") <*> (o .:? "requestUrl") <*>
                     (o .:? "cacheFillBytes")
                     <*> (o .:? "remoteIp")
                     <*> (o .:? "latency")
                     <*> (o .:? "protocol")
                     <*> (o .:? "serverIp")
                     <*> (o .:? "requestSize")
                     <*> (o .:? "cacheValidatedWithOriginServer")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "cacheLookup")
                     <*> (o .:? "responseSize")
                     <*> (o .:? "requestMethod")
                     <*> (o .:? "cacheHit")
                     <*> (o .:? "referer"))

instance ToJSON HTTPRequest where
        toJSON HTTPRequest'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _httprStatus,
                  ("requestUrl" .=) <$> _httprRequestURL,
                  ("cacheFillBytes" .=) <$> _httprCacheFillBytes,
                  ("remoteIp" .=) <$> _httprRemoteIP,
                  ("latency" .=) <$> _httprLatency,
                  ("protocol" .=) <$> _httprProtocol,
                  ("serverIp" .=) <$> _httprServerIP,
                  ("requestSize" .=) <$> _httprRequestSize,
                  ("cacheValidatedWithOriginServer" .=) <$>
                    _httprCacheValidatedWithOriginServer,
                  ("userAgent" .=) <$> _httprUserAgent,
                  ("cacheLookup" .=) <$> _httprCacheLookup,
                  ("responseSize" .=) <$> _httprResponseSize,
                  ("requestMethod" .=) <$> _httprRequestMethod,
                  ("cacheHit" .=) <$> _httprCacheHit,
                  ("referer" .=) <$> _httprReferer])

-- | Specifies an exponential sequence of buckets that have a width that is
-- proportional to the value of the lower bound. Each bucket represents a
-- constant relative uncertainty on a specific value in the bucket.There
-- are num_finite_buckets + 2 (= N) buckets. Bucket i has the following
-- boundaries:Upper bound (0 \<= i \< N-1): scale * (growth_factor ^ i).
-- Lower bound (1 \<= i \< N): scale * (growth_factor ^ (i - 1)).
--
-- /See:/ 'exponential' smart constructor.
data Exponential =
  Exponential'
    { _eGrowthFactor :: !(Maybe (Textual Double))
    , _eScale :: !(Maybe (Textual Double))
    , _eNumFiniteBuckets :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Exponential' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eGrowthFactor'
--
-- * 'eScale'
--
-- * 'eNumFiniteBuckets'
exponential
    :: Exponential
exponential =
  Exponential'
    {_eGrowthFactor = Nothing, _eScale = Nothing, _eNumFiniteBuckets = Nothing}


-- | Must be greater than 1.
eGrowthFactor :: Lens' Exponential (Maybe Double)
eGrowthFactor
  = lens _eGrowthFactor
      (\ s a -> s{_eGrowthFactor = a})
      . mapping _Coerce

-- | Must be greater than 0.
eScale :: Lens' Exponential (Maybe Double)
eScale
  = lens _eScale (\ s a -> s{_eScale = a}) .
      mapping _Coerce

-- | Must be greater than 0.
eNumFiniteBuckets :: Lens' Exponential (Maybe Int32)
eNumFiniteBuckets
  = lens _eNumFiniteBuckets
      (\ s a -> s{_eNumFiniteBuckets = a})
      . mapping _Coerce

instance FromJSON Exponential where
        parseJSON
          = withObject "Exponential"
              (\ o ->
                 Exponential' <$>
                   (o .:? "growthFactor") <*> (o .:? "scale") <*>
                     (o .:? "numFiniteBuckets"))

instance ToJSON Exponential where
        toJSON Exponential'{..}
          = object
              (catMaybes
                 [("growthFactor" .=) <$> _eGrowthFactor,
                  ("scale" .=) <$> _eScale,
                  ("numFiniteBuckets" .=) <$> _eNumFiniteBuckets])

-- | Optional. Default labels that are added to the labels field of all log
-- entries in entries. If a log entry already has a label with the same key
-- as a label in this parameter, then the log entry\'s label is not
-- changed. See LogEntry.
--
-- /See:/ 'writeLogEntriesRequestLabels' smart constructor.
newtype WriteLogEntriesRequestLabels =
  WriteLogEntriesRequestLabels'
    { _wlerlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WriteLogEntriesRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlerlAddtional'
writeLogEntriesRequestLabels
    :: HashMap Text Text -- ^ 'wlerlAddtional'
    -> WriteLogEntriesRequestLabels
writeLogEntriesRequestLabels pWlerlAddtional_ =
  WriteLogEntriesRequestLabels' {_wlerlAddtional = _Coerce # pWlerlAddtional_}


wlerlAddtional :: Lens' WriteLogEntriesRequestLabels (HashMap Text Text)
wlerlAddtional
  = lens _wlerlAddtional
      (\ s a -> s{_wlerlAddtional = a})
      . _Coerce

instance FromJSON WriteLogEntriesRequestLabels where
        parseJSON
          = withObject "WriteLogEntriesRequestLabels"
              (\ o ->
                 WriteLogEntriesRequestLabels' <$>
                   (parseJSONObject o))

instance ToJSON WriteLogEntriesRequestLabels where
        toJSON = toJSON . _wlerlAddtional

-- | Information about entries that were omitted from the session.
--
-- /See:/ 'suppressionInfo' smart constructor.
data SuppressionInfo =
  SuppressionInfo'
    { _siReason :: !(Maybe SuppressionInfoReason)
    , _siSuppressedCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuppressionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siReason'
--
-- * 'siSuppressedCount'
suppressionInfo
    :: SuppressionInfo
suppressionInfo =
  SuppressionInfo' {_siReason = Nothing, _siSuppressedCount = Nothing}


-- | The reason that entries were omitted from the session.
siReason :: Lens' SuppressionInfo (Maybe SuppressionInfoReason)
siReason = lens _siReason (\ s a -> s{_siReason = a})

-- | A lower bound on the count of entries omitted due to reason.
siSuppressedCount :: Lens' SuppressionInfo (Maybe Int32)
siSuppressedCount
  = lens _siSuppressedCount
      (\ s a -> s{_siSuppressedCount = a})
      . mapping _Coerce

instance FromJSON SuppressionInfo where
        parseJSON
          = withObject "SuppressionInfo"
              (\ o ->
                 SuppressionInfo' <$>
                   (o .:? "reason") <*> (o .:? "suppressedCount"))

instance ToJSON SuppressionInfo where
        toJSON SuppressionInfo'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _siReason,
                  ("suppressedCount" .=) <$> _siSuppressedCount])

-- | The response from ListViews.
--
-- /See:/ 'listViewsResponse' smart constructor.
data ListViewsResponse =
  ListViewsResponse'
    { _lvrNextPageToken :: !(Maybe Text)
    , _lvrViews :: !(Maybe [LogView])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListViewsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrNextPageToken'
--
-- * 'lvrViews'
listViewsResponse
    :: ListViewsResponse
listViewsResponse =
  ListViewsResponse' {_lvrNextPageToken = Nothing, _lvrViews = Nothing}


-- | If there might be more results than appear in this response, then
-- nextPageToken is included. To get the next set of results, call the same
-- method again using the value of nextPageToken as pageToken.
lvrNextPageToken :: Lens' ListViewsResponse (Maybe Text)
lvrNextPageToken
  = lens _lvrNextPageToken
      (\ s a -> s{_lvrNextPageToken = a})

-- | A list of views.
lvrViews :: Lens' ListViewsResponse [LogView]
lvrViews
  = lens _lvrViews (\ s a -> s{_lvrViews = a}) .
      _Default
      . _Coerce

instance FromJSON ListViewsResponse where
        parseJSON
          = withObject "ListViewsResponse"
              (\ o ->
                 ListViewsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "views" .!= mempty))

instance ToJSON ListViewsResponse where
        toJSON ListViewsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lvrNextPageToken,
                  ("views" .=) <$> _lvrViews])

-- | An object representing a resource that can be used for monitoring,
-- logging, billing, or other purposes. Examples include virtual machine
-- instances, databases, and storage devices such as disks. The type field
-- identifies a MonitoredResourceDescriptor object that describes the
-- resource\'s schema. Information in the labels field identifies the
-- actual resource and its attributes according to the schema. For example,
-- a particular Compute Engine VM instance could be represented by the
-- following object, because the MonitoredResourceDescriptor for
-- \"gce_instance\" has labels \"instance_id\" and \"zone\": { \"type\":
-- \"gce_instance\", \"labels\": { \"instance_id\": \"12345678901234\",
-- \"zone\": \"us-central1-a\" }}
--
-- /See:/ 'monitoredResource' smart constructor.
data MonitoredResource =
  MonitoredResource'
    { _mrLabels :: !(Maybe MonitoredResourceLabels)
    , _mrType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoredResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrLabels'
--
-- * 'mrType'
monitoredResource
    :: MonitoredResource
monitoredResource = MonitoredResource' {_mrLabels = Nothing, _mrType = Nothing}


-- | Required. Values for all of the labels listed in the associated
-- monitored resource descriptor. For example, Compute Engine VM instances
-- use the labels \"project_id\", \"instance_id\", and \"zone\".
mrLabels :: Lens' MonitoredResource (Maybe MonitoredResourceLabels)
mrLabels = lens _mrLabels (\ s a -> s{_mrLabels = a})

-- | Required. The monitored resource type. This field must match the type
-- field of a MonitoredResourceDescriptor object. For example, the type of
-- a Compute Engine VM instance is gce_instance.
mrType :: Lens' MonitoredResource (Maybe Text)
mrType = lens _mrType (\ s a -> s{_mrType = a})

instance FromJSON MonitoredResource where
        parseJSON
          = withObject "MonitoredResource"
              (\ o ->
                 MonitoredResource' <$>
                   (o .:? "labels") <*> (o .:? "type"))

instance ToJSON MonitoredResource where
        toJSON MonitoredResource'{..}
          = object
              (catMaybes
                 [("labels" .=) <$> _mrLabels,
                  ("type" .=) <$> _mrType])

-- | Describes a repository of logs.
--
-- /See:/ 'logBucket' smart constructor.
data LogBucket =
  LogBucket'
    { _lbRestrictedFields :: !(Maybe [Text])
    , _lbLocked :: !(Maybe Bool)
    , _lbRetentionDays :: !(Maybe (Textual Int32))
    , _lbUpdateTime :: !(Maybe DateTime')
    , _lbName :: !(Maybe Text)
    , _lbDescription :: !(Maybe Text)
    , _lbLifecycleState :: !(Maybe LogBucketLifecycleState)
    , _lbCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbRestrictedFields'
--
-- * 'lbLocked'
--
-- * 'lbRetentionDays'
--
-- * 'lbUpdateTime'
--
-- * 'lbName'
--
-- * 'lbDescription'
--
-- * 'lbLifecycleState'
--
-- * 'lbCreateTime'
logBucket
    :: LogBucket
logBucket =
  LogBucket'
    { _lbRestrictedFields = Nothing
    , _lbLocked = Nothing
    , _lbRetentionDays = Nothing
    , _lbUpdateTime = Nothing
    , _lbName = Nothing
    , _lbDescription = Nothing
    , _lbLifecycleState = Nothing
    , _lbCreateTime = Nothing
    }


-- | Log entry field paths that are denied access in this bucket. The
-- following fields and their children are eligible: textPayload,
-- jsonPayload, protoPayload, httpRequest, labels, sourceLocation.
-- Restricting a repeated field will restrict all values. Adding a parent
-- will block all child fields e.g. foo.bar will block foo.bar.baz.
lbRestrictedFields :: Lens' LogBucket [Text]
lbRestrictedFields
  = lens _lbRestrictedFields
      (\ s a -> s{_lbRestrictedFields = a})
      . _Default
      . _Coerce

-- | Whether the bucket has been locked. The retention period on a locked
-- bucket may not be changed. Locked buckets may only be deleted if they
-- are empty.
lbLocked :: Lens' LogBucket (Maybe Bool)
lbLocked = lens _lbLocked (\ s a -> s{_lbLocked = a})

-- | Logs will be retained by default for this amount of time, after which
-- they will automatically be deleted. The minimum retention period is 1
-- day. If this value is set to zero at bucket creation time, the default
-- time of 30 days will be used.
lbRetentionDays :: Lens' LogBucket (Maybe Int32)
lbRetentionDays
  = lens _lbRetentionDays
      (\ s a -> s{_lbRetentionDays = a})
      . mapping _Coerce

-- | Output only. The last update timestamp of the bucket.
lbUpdateTime :: Lens' LogBucket (Maybe UTCTime)
lbUpdateTime
  = lens _lbUpdateTime (\ s a -> s{_lbUpdateTime = a})
      . mapping _DateTime

-- | Output only. The resource name of the bucket. For example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\"
-- The supported locations are: global, us-central1, us-east1, us-west1,
-- asia-east1, europe-west1.For the location of global it is unspecified
-- where logs are actually stored. Once a bucket has been created, the
-- location can not be changed.
lbName :: Lens' LogBucket (Maybe Text)
lbName = lens _lbName (\ s a -> s{_lbName = a})

-- | Describes this bucket.
lbDescription :: Lens' LogBucket (Maybe Text)
lbDescription
  = lens _lbDescription
      (\ s a -> s{_lbDescription = a})

-- | Output only. The bucket lifecycle state.
lbLifecycleState :: Lens' LogBucket (Maybe LogBucketLifecycleState)
lbLifecycleState
  = lens _lbLifecycleState
      (\ s a -> s{_lbLifecycleState = a})

-- | Output only. The creation timestamp of the bucket. This is not set for
-- any of the default buckets.
lbCreateTime :: Lens' LogBucket (Maybe UTCTime)
lbCreateTime
  = lens _lbCreateTime (\ s a -> s{_lbCreateTime = a})
      . mapping _DateTime

instance FromJSON LogBucket where
        parseJSON
          = withObject "LogBucket"
              (\ o ->
                 LogBucket' <$>
                   (o .:? "restrictedFields" .!= mempty) <*>
                     (o .:? "locked")
                     <*> (o .:? "retentionDays")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "description")
                     <*> (o .:? "lifecycleState")
                     <*> (o .:? "createTime"))

instance ToJSON LogBucket where
        toJSON LogBucket'{..}
          = object
              (catMaybes
                 [("restrictedFields" .=) <$> _lbRestrictedFields,
                  ("locked" .=) <$> _lbLocked,
                  ("retentionDays" .=) <$> _lbRetentionDays,
                  ("updateTime" .=) <$> _lbUpdateTime,
                  ("name" .=) <$> _lbName,
                  ("description" .=) <$> _lbDescription,
                  ("lifecycleState" .=) <$> _lbLifecycleState,
                  ("createTime" .=) <$> _lbCreateTime])

-- | Application log line emitted while processing a request.
--
-- /See:/ 'logLine' smart constructor.
data LogLine =
  LogLine'
    { _llTime :: !(Maybe DateTime')
    , _llSeverity :: !(Maybe LogLineSeverity)
    , _llLogMessage :: !(Maybe Text)
    , _llSourceLocation :: !(Maybe SourceLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogLine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llTime'
--
-- * 'llSeverity'
--
-- * 'llLogMessage'
--
-- * 'llSourceLocation'
logLine
    :: LogLine
logLine =
  LogLine'
    { _llTime = Nothing
    , _llSeverity = Nothing
    , _llLogMessage = Nothing
    , _llSourceLocation = Nothing
    }


-- | Approximate time when this log entry was made.
llTime :: Lens' LogLine (Maybe UTCTime)
llTime
  = lens _llTime (\ s a -> s{_llTime = a}) .
      mapping _DateTime

-- | Severity of this log entry.
llSeverity :: Lens' LogLine (Maybe LogLineSeverity)
llSeverity
  = lens _llSeverity (\ s a -> s{_llSeverity = a})

-- | App-provided log message.
llLogMessage :: Lens' LogLine (Maybe Text)
llLogMessage
  = lens _llLogMessage (\ s a -> s{_llLogMessage = a})

-- | Where in the source code this log message was written.
llSourceLocation :: Lens' LogLine (Maybe SourceLocation)
llSourceLocation
  = lens _llSourceLocation
      (\ s a -> s{_llSourceLocation = a})

instance FromJSON LogLine where
        parseJSON
          = withObject "LogLine"
              (\ o ->
                 LogLine' <$>
                   (o .:? "time") <*> (o .:? "severity") <*>
                     (o .:? "logMessage")
                     <*> (o .:? "sourceLocation"))

instance ToJSON LogLine where
        toJSON LogLine'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _llTime,
                  ("severity" .=) <$> _llSeverity,
                  ("logMessage" .=) <$> _llLogMessage,
                  ("sourceLocation" .=) <$> _llSourceLocation])

-- | Additional annotations that can be used to guide the usage of a metric.
--
-- /See:/ 'metricDescriptorMetadata' smart constructor.
data MetricDescriptorMetadata =
  MetricDescriptorMetadata'
    { _mdmSamplePeriod :: !(Maybe GDuration)
    , _mdmIngestDelay :: !(Maybe GDuration)
    , _mdmLaunchStage :: !(Maybe MetricDescriptorMetadataLaunchStage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricDescriptorMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdmSamplePeriod'
--
-- * 'mdmIngestDelay'
--
-- * 'mdmLaunchStage'
metricDescriptorMetadata
    :: MetricDescriptorMetadata
metricDescriptorMetadata =
  MetricDescriptorMetadata'
    { _mdmSamplePeriod = Nothing
    , _mdmIngestDelay = Nothing
    , _mdmLaunchStage = Nothing
    }


-- | The sampling period of metric data points. For metrics which are written
-- periodically, consecutive data points are stored at this time interval,
-- excluding data loss due to errors. Metrics with a higher granularity
-- have a smaller sampling period.
mdmSamplePeriod :: Lens' MetricDescriptorMetadata (Maybe Scientific)
mdmSamplePeriod
  = lens _mdmSamplePeriod
      (\ s a -> s{_mdmSamplePeriod = a})
      . mapping _GDuration

-- | The delay of data points caused by ingestion. Data points older than
-- this age are guaranteed to be ingested and available to be read,
-- excluding data loss due to errors.
mdmIngestDelay :: Lens' MetricDescriptorMetadata (Maybe Scientific)
mdmIngestDelay
  = lens _mdmIngestDelay
      (\ s a -> s{_mdmIngestDelay = a})
      . mapping _GDuration

-- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
mdmLaunchStage :: Lens' MetricDescriptorMetadata (Maybe MetricDescriptorMetadataLaunchStage)
mdmLaunchStage
  = lens _mdmLaunchStage
      (\ s a -> s{_mdmLaunchStage = a})

instance FromJSON MetricDescriptorMetadata where
        parseJSON
          = withObject "MetricDescriptorMetadata"
              (\ o ->
                 MetricDescriptorMetadata' <$>
                   (o .:? "samplePeriod") <*> (o .:? "ingestDelay") <*>
                     (o .:? "launchStage"))

instance ToJSON MetricDescriptorMetadata where
        toJSON MetricDescriptorMetadata'{..}
          = object
              (catMaybes
                 [("samplePeriod" .=) <$> _mdmSamplePeriod,
                  ("ingestDelay" .=) <$> _mdmIngestDelay,
                  ("launchStage" .=) <$> _mdmLaunchStage])

-- | Output only. Values for predefined system metadata labels. System labels
-- are a kind of metadata extracted by Google, including \"machine_image\",
-- \"vpc\", \"subnet_id\", \"security_group\", \"name\", etc. System label
-- values can be only strings, Boolean values, or a list of strings. For
-- example: { \"name\": \"my-test-instance\", \"security_group\": [\"a\",
-- \"b\", \"c\"], \"spot_instance\": false }
--
-- /See:/ 'monitoredResourceMetadataSystemLabels' smart constructor.
newtype MonitoredResourceMetadataSystemLabels =
  MonitoredResourceMetadataSystemLabels'
    { _mrmslAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoredResourceMetadataSystemLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrmslAddtional'
monitoredResourceMetadataSystemLabels
    :: HashMap Text JSONValue -- ^ 'mrmslAddtional'
    -> MonitoredResourceMetadataSystemLabels
monitoredResourceMetadataSystemLabels pMrmslAddtional_ =
  MonitoredResourceMetadataSystemLabels'
    {_mrmslAddtional = _Coerce # pMrmslAddtional_}


-- | Properties of the object.
mrmslAddtional :: Lens' MonitoredResourceMetadataSystemLabels (HashMap Text JSONValue)
mrmslAddtional
  = lens _mrmslAddtional
      (\ s a -> s{_mrmslAddtional = a})
      . _Coerce

instance FromJSON
           MonitoredResourceMetadataSystemLabels
         where
        parseJSON
          = withObject "MonitoredResourceMetadataSystemLabels"
              (\ o ->
                 MonitoredResourceMetadataSystemLabels' <$>
                   (parseJSONObject o))

instance ToJSON MonitoredResourceMetadataSystemLabels
         where
        toJSON = toJSON . _mrmslAddtional

-- | A description of a label.
--
-- /See:/ 'labelDescriptor' smart constructor.
data LabelDescriptor =
  LabelDescriptor'
    { _ldKey :: !(Maybe Text)
    , _ldValueType :: !(Maybe LabelDescriptorValueType)
    , _ldDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LabelDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldKey'
--
-- * 'ldValueType'
--
-- * 'ldDescription'
labelDescriptor
    :: LabelDescriptor
labelDescriptor =
  LabelDescriptor'
    {_ldKey = Nothing, _ldValueType = Nothing, _ldDescription = Nothing}


-- | The label key.
ldKey :: Lens' LabelDescriptor (Maybe Text)
ldKey = lens _ldKey (\ s a -> s{_ldKey = a})

-- | The type of data that can be assigned to the label.
ldValueType :: Lens' LabelDescriptor (Maybe LabelDescriptorValueType)
ldValueType
  = lens _ldValueType (\ s a -> s{_ldValueType = a})

-- | A human-readable description for the label.
ldDescription :: Lens' LabelDescriptor (Maybe Text)
ldDescription
  = lens _ldDescription
      (\ s a -> s{_ldDescription = a})

instance FromJSON LabelDescriptor where
        parseJSON
          = withObject "LabelDescriptor"
              (\ o ->
                 LabelDescriptor' <$>
                   (o .:? "key") <*> (o .:? "valueType") <*>
                     (o .:? "description"))

instance ToJSON LabelDescriptor where
        toJSON LabelDescriptor'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _ldKey,
                  ("valueType" .=) <$> _ldValueType,
                  ("description" .=) <$> _ldDescription])

-- | Specifies a linear sequence of buckets that all have the same width
-- (except overflow and underflow). Each bucket represents a constant
-- absolute uncertainty on the specific value in the bucket.There are
-- num_finite_buckets + 2 (= N) buckets. Bucket i has the following
-- boundaries:Upper bound (0 \<= i \< N-1): offset + (width * i). Lower
-- bound (1 \<= i \< N): offset + (width * (i - 1)).
--
-- /See:/ 'linear' smart constructor.
data Linear =
  Linear'
    { _lOffSet :: !(Maybe (Textual Double))
    , _lWidth :: !(Maybe (Textual Double))
    , _lNumFiniteBuckets :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Linear' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lOffSet'
--
-- * 'lWidth'
--
-- * 'lNumFiniteBuckets'
linear
    :: Linear
linear =
  Linear' {_lOffSet = Nothing, _lWidth = Nothing, _lNumFiniteBuckets = Nothing}


-- | Lower bound of the first bucket.
lOffSet :: Lens' Linear (Maybe Double)
lOffSet
  = lens _lOffSet (\ s a -> s{_lOffSet = a}) .
      mapping _Coerce

-- | Must be greater than 0.
lWidth :: Lens' Linear (Maybe Double)
lWidth
  = lens _lWidth (\ s a -> s{_lWidth = a}) .
      mapping _Coerce

-- | Must be greater than 0.
lNumFiniteBuckets :: Lens' Linear (Maybe Int32)
lNumFiniteBuckets
  = lens _lNumFiniteBuckets
      (\ s a -> s{_lNumFiniteBuckets = a})
      . mapping _Coerce

instance FromJSON Linear where
        parseJSON
          = withObject "Linear"
              (\ o ->
                 Linear' <$>
                   (o .:? "offset") <*> (o .:? "width") <*>
                     (o .:? "numFiniteBuckets"))

instance ToJSON Linear where
        toJSON Linear'{..}
          = object
              (catMaybes
                 [("offset" .=) <$> _lOffSet,
                  ("width" .=) <$> _lWidth,
                  ("numFiniteBuckets" .=) <$> _lNumFiniteBuckets])

-- | The parameters to ListLogEntries.
--
-- /See:/ 'listLogEntriesRequest' smart constructor.
data ListLogEntriesRequest =
  ListLogEntriesRequest'
    { _llerOrderBy :: !(Maybe Text)
    , _llerProjectIds :: !(Maybe [Text])
    , _llerFilter :: !(Maybe Text)
    , _llerPageToken :: !(Maybe Text)
    , _llerPageSize :: !(Maybe (Textual Int32))
    , _llerResourceNames :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLogEntriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llerOrderBy'
--
-- * 'llerProjectIds'
--
-- * 'llerFilter'
--
-- * 'llerPageToken'
--
-- * 'llerPageSize'
--
-- * 'llerResourceNames'
listLogEntriesRequest
    :: ListLogEntriesRequest
listLogEntriesRequest =
  ListLogEntriesRequest'
    { _llerOrderBy = Nothing
    , _llerProjectIds = Nothing
    , _llerFilter = Nothing
    , _llerPageToken = Nothing
    , _llerPageSize = Nothing
    , _llerResourceNames = Nothing
    }


-- | Optional. How the results should be sorted. Presently, the only
-- permitted values are \"timestamp asc\" (default) and \"timestamp desc\".
-- The first option returns entries in order of increasing values of
-- LogEntry.timestamp (oldest first), and the second option returns entries
-- in order of decreasing timestamps (newest first). Entries with equal
-- timestamps are returned in order of their insert_id values.
llerOrderBy :: Lens' ListLogEntriesRequest (Maybe Text)
llerOrderBy
  = lens _llerOrderBy (\ s a -> s{_llerOrderBy = a})

-- | Optional. Deprecated. Use resource_names instead. One or more project
-- identifiers or project numbers from which to retrieve log entries.
-- Example: \"my-project-1A\".
llerProjectIds :: Lens' ListLogEntriesRequest [Text]
llerProjectIds
  = lens _llerProjectIds
      (\ s a -> s{_llerProjectIds = a})
      . _Default
      . _Coerce

-- | Optional. A filter that chooses which log entries to return. See
-- Advanced Logs Queries
-- (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced-queries).
-- Only log entries that match the filter are returned. An empty filter
-- matches all log entries in the resources listed in resource_names.
-- Referencing a parent resource that is not listed in resource_names will
-- cause the filter to return no results. The maximum length of the filter
-- is 20000 characters.
llerFilter :: Lens' ListLogEntriesRequest (Maybe Text)
llerFilter
  = lens _llerFilter (\ s a -> s{_llerFilter = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. page_token must be the value of
-- next_page_token from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
llerPageToken :: Lens' ListLogEntriesRequest (Maybe Text)
llerPageToken
  = lens _llerPageToken
      (\ s a -> s{_llerPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Default is 50. If the value is negative or exceeds 1000, the request is
-- rejected. The presence of next_page_token in the response indicates that
-- more results might be available.
llerPageSize :: Lens' ListLogEntriesRequest (Maybe Int32)
llerPageSize
  = lens _llerPageSize (\ s a -> s{_llerPageSize = a})
      . mapping _Coerce

-- | Required. Names of one or more parent resources from which to retrieve
-- log entries: projects\/[PROJECT_ID] organizations\/[ORGANIZATION_ID]
-- billingAccounts\/[BILLING_ACCOUNT_ID] folders\/[FOLDER_ID]May
-- alternatively be one or more views:
-- projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]Projects
-- listed in the project_ids field are added to this list.
llerResourceNames :: Lens' ListLogEntriesRequest [Text]
llerResourceNames
  = lens _llerResourceNames
      (\ s a -> s{_llerResourceNames = a})
      . _Default
      . _Coerce

instance FromJSON ListLogEntriesRequest where
        parseJSON
          = withObject "ListLogEntriesRequest"
              (\ o ->
                 ListLogEntriesRequest' <$>
                   (o .:? "orderBy") <*> (o .:? "projectIds" .!= mempty)
                     <*> (o .:? "filter")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "resourceNames" .!= mempty))

instance ToJSON ListLogEntriesRequest where
        toJSON ListLogEntriesRequest'{..}
          = object
              (catMaybes
                 [("orderBy" .=) <$> _llerOrderBy,
                  ("projectIds" .=) <$> _llerProjectIds,
                  ("filter" .=) <$> _llerFilter,
                  ("pageToken" .=) <$> _llerPageToken,
                  ("pageSize" .=) <$> _llerPageSize,
                  ("resourceNames" .=) <$> _llerResourceNames])

-- | Result returned from TailLogEntries.
--
-- /See:/ 'tailLogEntriesResponse' smart constructor.
data TailLogEntriesResponse =
  TailLogEntriesResponse'
    { _tlerEntries :: !(Maybe [LogEntry])
    , _tlerSuppressionInfo :: !(Maybe [SuppressionInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TailLogEntriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlerEntries'
--
-- * 'tlerSuppressionInfo'
tailLogEntriesResponse
    :: TailLogEntriesResponse
tailLogEntriesResponse =
  TailLogEntriesResponse'
    {_tlerEntries = Nothing, _tlerSuppressionInfo = Nothing}


-- | A list of log entries. Each response in the stream will order entries
-- with increasing values of LogEntry.timestamp. Ordering is not guaranteed
-- between separate responses.
tlerEntries :: Lens' TailLogEntriesResponse [LogEntry]
tlerEntries
  = lens _tlerEntries (\ s a -> s{_tlerEntries = a}) .
      _Default
      . _Coerce

-- | If entries that otherwise would have been included in the session were
-- not sent back to the client, counts of relevant entries omitted from the
-- session with the reason that they were not included. There will be at
-- most one of each reason per response. The counts represent the number of
-- suppressed entries since the last streamed response.
tlerSuppressionInfo :: Lens' TailLogEntriesResponse [SuppressionInfo]
tlerSuppressionInfo
  = lens _tlerSuppressionInfo
      (\ s a -> s{_tlerSuppressionInfo = a})
      . _Default
      . _Coerce

instance FromJSON TailLogEntriesResponse where
        parseJSON
          = withObject "TailLogEntriesResponse"
              (\ o ->
                 TailLogEntriesResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "suppressionInfo" .!= mempty))

instance ToJSON TailLogEntriesResponse where
        toJSON TailLogEntriesResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _tlerEntries,
                  ("suppressionInfo" .=) <$> _tlerSuppressionInfo])

-- | Additional information about a potentially long-running operation with
-- which a log entry is associated.
--
-- /See:/ 'logEntryOperation' smart constructor.
data LogEntryOperation =
  LogEntryOperation'
    { _leoFirst :: !(Maybe Bool)
    , _leoProducer :: !(Maybe Text)
    , _leoLast :: !(Maybe Bool)
    , _leoId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogEntryOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leoFirst'
--
-- * 'leoProducer'
--
-- * 'leoLast'
--
-- * 'leoId'
logEntryOperation
    :: LogEntryOperation
logEntryOperation =
  LogEntryOperation'
    { _leoFirst = Nothing
    , _leoProducer = Nothing
    , _leoLast = Nothing
    , _leoId = Nothing
    }


-- | Optional. Set this to True if this is the first log entry in the
-- operation.
leoFirst :: Lens' LogEntryOperation (Maybe Bool)
leoFirst = lens _leoFirst (\ s a -> s{_leoFirst = a})

-- | Optional. An arbitrary producer identifier. The combination of id and
-- producer must be globally unique. Examples for producer:
-- \"MyDivision.MyBigCompany.com\",
-- \"github.com\/MyProject\/MyApplication\".
leoProducer :: Lens' LogEntryOperation (Maybe Text)
leoProducer
  = lens _leoProducer (\ s a -> s{_leoProducer = a})

-- | Optional. Set this to True if this is the last log entry in the
-- operation.
leoLast :: Lens' LogEntryOperation (Maybe Bool)
leoLast = lens _leoLast (\ s a -> s{_leoLast = a})

-- | Optional. An arbitrary operation identifier. Log entries with the same
-- identifier are assumed to be part of the same operation.
leoId :: Lens' LogEntryOperation (Maybe Text)
leoId = lens _leoId (\ s a -> s{_leoId = a})

instance FromJSON LogEntryOperation where
        parseJSON
          = withObject "LogEntryOperation"
              (\ o ->
                 LogEntryOperation' <$>
                   (o .:? "first") <*> (o .:? "producer") <*>
                     (o .:? "last")
                     <*> (o .:? "id"))

instance ToJSON LogEntryOperation where
        toJSON LogEntryOperation'{..}
          = object
              (catMaybes
                 [("first" .=) <$> _leoFirst,
                  ("producer" .=) <$> _leoProducer,
                  ("last" .=) <$> _leoLast, ("id" .=) <$> _leoId])

-- | Describes a logs-based metric. The value of the metric is the number of
-- log entries that match a logs filter in a given time interval.Logs-based
-- metrics can also be used to extract values from logs and create a
-- distribution of the values. The distribution records the statistics of
-- the extracted values along with an optional histogram of the values as
-- specified by the bucket options.
--
-- /See:/ 'logMetric' smart constructor.
data LogMetric =
  LogMetric'
    { _lmMetricDescriptor :: !(Maybe MetricDescriptor)
    , _lmDisabled :: !(Maybe Bool)
    , _lmUpdateTime :: !(Maybe DateTime')
    , _lmName :: !(Maybe Text)
    , _lmVersion :: !(Maybe LogMetricVersion)
    , _lmLabelExtractors :: !(Maybe LogMetricLabelExtractors)
    , _lmFilter :: !(Maybe Text)
    , _lmValueExtractor :: !(Maybe Text)
    , _lmBucketOptions :: !(Maybe BucketOptions)
    , _lmDescription :: !(Maybe Text)
    , _lmCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmMetricDescriptor'
--
-- * 'lmDisabled'
--
-- * 'lmUpdateTime'
--
-- * 'lmName'
--
-- * 'lmVersion'
--
-- * 'lmLabelExtractors'
--
-- * 'lmFilter'
--
-- * 'lmValueExtractor'
--
-- * 'lmBucketOptions'
--
-- * 'lmDescription'
--
-- * 'lmCreateTime'
logMetric
    :: LogMetric
logMetric =
  LogMetric'
    { _lmMetricDescriptor = Nothing
    , _lmDisabled = Nothing
    , _lmUpdateTime = Nothing
    , _lmName = Nothing
    , _lmVersion = Nothing
    , _lmLabelExtractors = Nothing
    , _lmFilter = Nothing
    , _lmValueExtractor = Nothing
    , _lmBucketOptions = Nothing
    , _lmDescription = Nothing
    , _lmCreateTime = Nothing
    }


-- | Optional. The metric descriptor associated with the logs-based metric.
-- If unspecified, it uses a default metric descriptor with a DELTA metric
-- kind, INT64 value type, with no labels and a unit of \"1\". Such a
-- metric counts the number of log entries matching the filter
-- expression.The name, type, and description fields in the
-- metric_descriptor are output only, and is constructed using the name and
-- description field in the LogMetric.To create a logs-based metric that
-- records a distribution of log values, a DELTA metric kind with a
-- DISTRIBUTION value type must be used along with a value_extractor
-- expression in the LogMetric.Each label in the metric descriptor must
-- have a matching label name as the key and an extractor expression as the
-- value in the label_extractors map.The metric_kind and value_type fields
-- in the metric_descriptor cannot be updated once initially configured.
-- New labels can be added in the metric_descriptor, but existing labels
-- cannot be modified except for their description.
lmMetricDescriptor :: Lens' LogMetric (Maybe MetricDescriptor)
lmMetricDescriptor
  = lens _lmMetricDescriptor
      (\ s a -> s{_lmMetricDescriptor = a})

-- | Optional. If set to True, then this metric is disabled and it does not
-- generate any points.
lmDisabled :: Lens' LogMetric (Maybe Bool)
lmDisabled
  = lens _lmDisabled (\ s a -> s{_lmDisabled = a})

-- | Output only. The last update timestamp of the metric.This field may not
-- be present for older metrics.
lmUpdateTime :: Lens' LogMetric (Maybe UTCTime)
lmUpdateTime
  = lens _lmUpdateTime (\ s a -> s{_lmUpdateTime = a})
      . mapping _DateTime

-- | Required. The client-assigned metric identifier. Examples:
-- \"error_count\", \"nginx\/requests\".Metric identifiers are limited to
-- 100 characters and can include only the following characters: A-Z, a-z,
-- 0-9, and the special characters _-.,+!*\',()%\/. The forward-slash
-- character (\/) denotes a hierarchy of name pieces, and it cannot be the
-- first character of the name.The metric identifier in this field must not
-- be URL-encoded (https:\/\/en.wikipedia.org\/wiki\/Percent-encoding).
-- However, when the metric identifier appears as the [METRIC_ID] part of a
-- metric_name API parameter, then the metric identifier must be
-- URL-encoded. Example:
-- \"projects\/my-project\/metrics\/nginx%2Frequests\".
lmName :: Lens' LogMetric (Maybe Text)
lmName = lens _lmName (\ s a -> s{_lmName = a})

-- | Deprecated. The API version that created or updated this metric. The v2
-- format is used by default and cannot be changed.
lmVersion :: Lens' LogMetric (Maybe LogMetricVersion)
lmVersion
  = lens _lmVersion (\ s a -> s{_lmVersion = a})

-- | Optional. A map from a label key string to an extractor expression which
-- is used to extract data from a log entry field and assign as the label
-- value. Each label key specified in the LabelDescriptor must have an
-- associated extractor expression in this map. The syntax of the extractor
-- expression is the same as for the value_extractor field.The extracted
-- value is converted to the type defined in the label descriptor. If the
-- either the extraction or the type conversion fails, the label will have
-- a default value. The default value for a string label is an empty
-- string, for an integer label its 0, and for a boolean label its
-- false.Note that there are upper bounds on the maximum number of labels
-- and the number of active time series that are allowed in a project.
lmLabelExtractors :: Lens' LogMetric (Maybe LogMetricLabelExtractors)
lmLabelExtractors
  = lens _lmLabelExtractors
      (\ s a -> s{_lmLabelExtractors = a})

-- | Required. An advanced logs filter
-- (https:\/\/cloud.google.com\/logging\/docs\/view\/advanced_filters)
-- which is used to match log entries. Example: \"resource.type=gae_app AND
-- severity>=ERROR\" The maximum length of the filter is 20000 characters.
lmFilter :: Lens' LogMetric (Maybe Text)
lmFilter = lens _lmFilter (\ s a -> s{_lmFilter = a})

-- | Optional. A value_extractor is required when using a distribution
-- logs-based metric to extract the values to record from a log entry. Two
-- functions are supported for value extraction: EXTRACT(field) or
-- REGEXP_EXTRACT(field, regex). The argument are: 1. field: The name of
-- the log entry field from which the value is to be extracted. 2. regex: A
-- regular expression using the Google RE2 syntax
-- (https:\/\/github.com\/google\/re2\/wiki\/Syntax) with a single capture
-- group to extract data from the specified log entry field. The value of
-- the field is converted to a string before applying the regex. It is an
-- error to specify a regex that does not include exactly one capture
-- group.The result of the extraction must be convertible to a double type,
-- as the distribution always records double values. If either the
-- extraction or the conversion to double fails, then those values are not
-- recorded in the distribution.Example:
-- REGEXP_EXTRACT(jsonPayload.request, \".*quantity=(\\d+).*\")
lmValueExtractor :: Lens' LogMetric (Maybe Text)
lmValueExtractor
  = lens _lmValueExtractor
      (\ s a -> s{_lmValueExtractor = a})

-- | Optional. The bucket_options are required when the logs-based metric is
-- using a DISTRIBUTION value type and it describes the bucket boundaries
-- used to create a histogram of the extracted values.
lmBucketOptions :: Lens' LogMetric (Maybe BucketOptions)
lmBucketOptions
  = lens _lmBucketOptions
      (\ s a -> s{_lmBucketOptions = a})

-- | Optional. A description of this metric, which is used in documentation.
-- The maximum length of the description is 8000 characters.
lmDescription :: Lens' LogMetric (Maybe Text)
lmDescription
  = lens _lmDescription
      (\ s a -> s{_lmDescription = a})

-- | Output only. The creation timestamp of the metric.This field may not be
-- present for older metrics.
lmCreateTime :: Lens' LogMetric (Maybe UTCTime)
lmCreateTime
  = lens _lmCreateTime (\ s a -> s{_lmCreateTime = a})
      . mapping _DateTime

instance FromJSON LogMetric where
        parseJSON
          = withObject "LogMetric"
              (\ o ->
                 LogMetric' <$>
                   (o .:? "metricDescriptor") <*> (o .:? "disabled") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "labelExtractors")
                     <*> (o .:? "filter")
                     <*> (o .:? "valueExtractor")
                     <*> (o .:? "bucketOptions")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON LogMetric where
        toJSON LogMetric'{..}
          = object
              (catMaybes
                 [("metricDescriptor" .=) <$> _lmMetricDescriptor,
                  ("disabled" .=) <$> _lmDisabled,
                  ("updateTime" .=) <$> _lmUpdateTime,
                  ("name" .=) <$> _lmName,
                  ("version" .=) <$> _lmVersion,
                  ("labelExtractors" .=) <$> _lmLabelExtractors,
                  ("filter" .=) <$> _lmFilter,
                  ("valueExtractor" .=) <$> _lmValueExtractor,
                  ("bucketOptions" .=) <$> _lmBucketOptions,
                  ("description" .=) <$> _lmDescription,
                  ("createTime" .=) <$> _lmCreateTime])

-- | An individual entry in a log.
--
-- /See:/ 'logEntry' smart constructor.
data LogEntry =
  LogEntry'
    { _leOperation :: !(Maybe LogEntryOperation)
    , _leSeverity :: !(Maybe LogEntrySeverity)
    , _leTextPayload :: !(Maybe Text)
    , _leJSONPayload :: !(Maybe LogEntryJSONPayload)
    , _leHTTPRequest :: !(Maybe HTTPRequest)
    , _leResource :: !(Maybe MonitoredResource)
    , _leInsertId :: !(Maybe Text)
    , _leMetadata :: !(Maybe MonitoredResourceMetadata)
    , _leReceiveTimestamp :: !(Maybe DateTime')
    , _leLabels :: !(Maybe LogEntryLabels)
    , _leProtoPayload :: !(Maybe LogEntryProtoPayload)
    , _leSourceLocation :: !(Maybe LogEntrySourceLocation)
    , _leTraceSampled :: !(Maybe Bool)
    , _leLogName :: !(Maybe Text)
    , _leTimestamp :: !(Maybe DateTime')
    , _leTrace :: !(Maybe Text)
    , _leSpanId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leOperation'
--
-- * 'leSeverity'
--
-- * 'leTextPayload'
--
-- * 'leJSONPayload'
--
-- * 'leHTTPRequest'
--
-- * 'leResource'
--
-- * 'leInsertId'
--
-- * 'leMetadata'
--
-- * 'leReceiveTimestamp'
--
-- * 'leLabels'
--
-- * 'leProtoPayload'
--
-- * 'leSourceLocation'
--
-- * 'leTraceSampled'
--
-- * 'leLogName'
--
-- * 'leTimestamp'
--
-- * 'leTrace'
--
-- * 'leSpanId'
logEntry
    :: LogEntry
logEntry =
  LogEntry'
    { _leOperation = Nothing
    , _leSeverity = Nothing
    , _leTextPayload = Nothing
    , _leJSONPayload = Nothing
    , _leHTTPRequest = Nothing
    , _leResource = Nothing
    , _leInsertId = Nothing
    , _leMetadata = Nothing
    , _leReceiveTimestamp = Nothing
    , _leLabels = Nothing
    , _leProtoPayload = Nothing
    , _leSourceLocation = Nothing
    , _leTraceSampled = Nothing
    , _leLogName = Nothing
    , _leTimestamp = Nothing
    , _leTrace = Nothing
    , _leSpanId = Nothing
    }


-- | Optional. Information about an operation associated with the log entry,
-- if applicable.
leOperation :: Lens' LogEntry (Maybe LogEntryOperation)
leOperation
  = lens _leOperation (\ s a -> s{_leOperation = a})

-- | Optional. The severity of the log entry. The default value is
-- LogSeverity.DEFAULT.
leSeverity :: Lens' LogEntry (Maybe LogEntrySeverity)
leSeverity
  = lens _leSeverity (\ s a -> s{_leSeverity = a})

-- | The log entry payload, represented as a Unicode string (UTF-8).
leTextPayload :: Lens' LogEntry (Maybe Text)
leTextPayload
  = lens _leTextPayload
      (\ s a -> s{_leTextPayload = a})

-- | The log entry payload, represented as a structure that is expressed as a
-- JSON object.
leJSONPayload :: Lens' LogEntry (Maybe LogEntryJSONPayload)
leJSONPayload
  = lens _leJSONPayload
      (\ s a -> s{_leJSONPayload = a})

-- | Optional. Information about the HTTP request associated with this log
-- entry, if applicable.
leHTTPRequest :: Lens' LogEntry (Maybe HTTPRequest)
leHTTPRequest
  = lens _leHTTPRequest
      (\ s a -> s{_leHTTPRequest = a})

-- | Required. The monitored resource that produced this log entry.Example: a
-- log entry that reports a database error would be associated with the
-- monitored resource designating the particular database that reported the
-- error.
leResource :: Lens' LogEntry (Maybe MonitoredResource)
leResource
  = lens _leResource (\ s a -> s{_leResource = a})

-- | Optional. A unique identifier for the log entry. If you provide a value,
-- then Logging considers other log entries in the same project, with the
-- same timestamp, and with the same insert_id to be duplicates which are
-- removed in a single query result. However, there are no guarantees of
-- de-duplication in the export of logs.If the insert_id is omitted when
-- writing a log entry, the Logging API assigns its own unique identifier
-- in this field.In queries, the insert_id is also used to order log
-- entries that have the same log_name and timestamp values.
leInsertId :: Lens' LogEntry (Maybe Text)
leInsertId
  = lens _leInsertId (\ s a -> s{_leInsertId = a})

-- | Output only. Deprecated. This field is not used by Logging. Any value
-- written to it is cleared.
leMetadata :: Lens' LogEntry (Maybe MonitoredResourceMetadata)
leMetadata
  = lens _leMetadata (\ s a -> s{_leMetadata = a})

-- | Output only. The time the log entry was received by Logging.
leReceiveTimestamp :: Lens' LogEntry (Maybe UTCTime)
leReceiveTimestamp
  = lens _leReceiveTimestamp
      (\ s a -> s{_leReceiveTimestamp = a})
      . mapping _DateTime

-- | Optional. A map of key, value pairs that provides additional information
-- about the log entry. The labels can be user-defined or
-- system-defined.User-defined labels are arbitrary key, value pairs that
-- you can use to classify logs.System-defined labels are defined by GCP
-- services for platform logs. They have two components - a service
-- namespace component and the attribute name. For example:
-- compute.googleapis.com\/resource_name.Cloud Logging truncates label keys
-- that exceed 512 B and label values that exceed 64 KB upon their
-- associated log entry being written. The truncation is indicated by an
-- ellipsis at the end of the character string.
leLabels :: Lens' LogEntry (Maybe LogEntryLabels)
leLabels = lens _leLabels (\ s a -> s{_leLabels = a})

-- | The log entry payload, represented as a protocol buffer. Some Google
-- Cloud Platform services use this field for their log entry payloads.The
-- following protocol buffer types are supported; user-defined types are
-- not supported:\"type.googleapis.com\/google.cloud.audit.AuditLog\"
-- \"type.googleapis.com\/google.appengine.logging.v1.RequestLog\"
leProtoPayload :: Lens' LogEntry (Maybe LogEntryProtoPayload)
leProtoPayload
  = lens _leProtoPayload
      (\ s a -> s{_leProtoPayload = a})

-- | Optional. Source code location information associated with the log
-- entry, if any.
leSourceLocation :: Lens' LogEntry (Maybe LogEntrySourceLocation)
leSourceLocation
  = lens _leSourceLocation
      (\ s a -> s{_leSourceLocation = a})

-- | Optional. The sampling decision of the trace associated with the log
-- entry.True means that the trace resource name in the trace field was
-- sampled for storage in a trace backend. False means that the trace was
-- not sampled for storage when this log entry was written, or the sampling
-- decision was unknown at the time. A non-sampled trace value is still
-- useful as a request correlation identifier. The default is False.
leTraceSampled :: Lens' LogEntry (Maybe Bool)
leTraceSampled
  = lens _leTraceSampled
      (\ s a -> s{_leTraceSampled = a})

-- | Required. The resource name of the log to which this log entry belongs:
-- \"projects\/[PROJECT_ID]\/logs\/[LOG_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/logs\/[LOG_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/logs\/[LOG_ID]\"
-- \"folders\/[FOLDER_ID]\/logs\/[LOG_ID]\" A project number may be used in
-- place of PROJECT_ID. The project number is translated to its
-- corresponding PROJECT_ID internally and the log_name field will contain
-- PROJECT_ID in queries and exports.[LOG_ID] must be URL-encoded within
-- log_name. Example:
-- \"organizations\/1234567890\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".[LOG_ID]
-- must be less than 512 characters long and can only include the following
-- characters: upper and lower case alphanumeric characters, forward-slash,
-- underscore, hyphen, and period.For backward compatibility, if log_name
-- begins with a forward-slash, such as \/projects\/..., then the log entry
-- is ingested as usual, but the forward-slash is removed. Listing the log
-- entry will not show the leading slash and filtering for a log name with
-- a leading slash will never return any results.
leLogName :: Lens' LogEntry (Maybe Text)
leLogName
  = lens _leLogName (\ s a -> s{_leLogName = a})

-- | Optional. The time the event described by the log entry occurred. This
-- time is used to compute the log entry\'s age and to enforce the logs
-- retention period. If this field is omitted in a new log entry, then
-- Logging assigns it the current time. Timestamps have nanosecond
-- accuracy, but trailing zeros in the fractional seconds might be omitted
-- when the timestamp is displayed.Incoming log entries must have
-- timestamps that don\'t exceed the logs retention period
-- (https:\/\/cloud.google.com\/logging\/quotas#logs_retention_periods) in
-- the past, and that don\'t exceed 24 hours in the future. Log entries
-- outside those time boundaries aren\'t ingested by Logging.
leTimestamp :: Lens' LogEntry (Maybe UTCTime)
leTimestamp
  = lens _leTimestamp (\ s a -> s{_leTimestamp = a}) .
      mapping _DateTime

-- | Optional. Resource name of the trace associated with the log entry, if
-- any. If it contains a relative resource name, the name is assumed to be
-- relative to \/\/tracing.googleapis.com. Example:
-- projects\/my-projectid\/traces\/06796866738c859f2f19b7cfb3214824
leTrace :: Lens' LogEntry (Maybe Text)
leTrace = lens _leTrace (\ s a -> s{_leTrace = a})

-- | Optional. The span ID within the trace associated with the log entry.For
-- Trace spans, this is the same format that the Trace API v2 uses: a
-- 16-character hexadecimal encoding of an 8-byte array, such as
-- 000000000000004a.
leSpanId :: Lens' LogEntry (Maybe Text)
leSpanId = lens _leSpanId (\ s a -> s{_leSpanId = a})

instance FromJSON LogEntry where
        parseJSON
          = withObject "LogEntry"
              (\ o ->
                 LogEntry' <$>
                   (o .:? "operation") <*> (o .:? "severity") <*>
                     (o .:? "textPayload")
                     <*> (o .:? "jsonPayload")
                     <*> (o .:? "httpRequest")
                     <*> (o .:? "resource")
                     <*> (o .:? "insertId")
                     <*> (o .:? "metadata")
                     <*> (o .:? "receiveTimestamp")
                     <*> (o .:? "labels")
                     <*> (o .:? "protoPayload")
                     <*> (o .:? "sourceLocation")
                     <*> (o .:? "traceSampled")
                     <*> (o .:? "logName")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "trace")
                     <*> (o .:? "spanId"))

instance ToJSON LogEntry where
        toJSON LogEntry'{..}
          = object
              (catMaybes
                 [("operation" .=) <$> _leOperation,
                  ("severity" .=) <$> _leSeverity,
                  ("textPayload" .=) <$> _leTextPayload,
                  ("jsonPayload" .=) <$> _leJSONPayload,
                  ("httpRequest" .=) <$> _leHTTPRequest,
                  ("resource" .=) <$> _leResource,
                  ("insertId" .=) <$> _leInsertId,
                  ("metadata" .=) <$> _leMetadata,
                  ("receiveTimestamp" .=) <$> _leReceiveTimestamp,
                  ("labels" .=) <$> _leLabels,
                  ("protoPayload" .=) <$> _leProtoPayload,
                  ("sourceLocation" .=) <$> _leSourceLocation,
                  ("traceSampled" .=) <$> _leTraceSampled,
                  ("logName" .=) <$> _leLogName,
                  ("timestamp" .=) <$> _leTimestamp,
                  ("trace" .=) <$> _leTrace,
                  ("spanId" .=) <$> _leSpanId])

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

-- | Specifies a location in a source code file.
--
-- /See:/ 'sourceLocation' smart constructor.
data SourceLocation =
  SourceLocation'
    { _slLine :: !(Maybe (Textual Int64))
    , _slFunctionName :: !(Maybe Text)
    , _slFile :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slLine'
--
-- * 'slFunctionName'
--
-- * 'slFile'
sourceLocation
    :: SourceLocation
sourceLocation =
  SourceLocation'
    {_slLine = Nothing, _slFunctionName = Nothing, _slFile = Nothing}


-- | Line within the source file.
slLine :: Lens' SourceLocation (Maybe Int64)
slLine
  = lens _slLine (\ s a -> s{_slLine = a}) .
      mapping _Coerce

-- | Human-readable name of the function or method being invoked, with
-- optional context such as the class or package name. This information is
-- used in contexts such as the logs viewer, where a file and line number
-- are less meaningful. The format can vary by language. For example:
-- qual.if.ied.Class.method (Java), dir\/package.func (Go), function
-- (Python).
slFunctionName :: Lens' SourceLocation (Maybe Text)
slFunctionName
  = lens _slFunctionName
      (\ s a -> s{_slFunctionName = a})

-- | Source file name. Depending on the runtime environment, this might be a
-- simple name or a fully-qualified name.
slFile :: Lens' SourceLocation (Maybe Text)
slFile = lens _slFile (\ s a -> s{_slFile = a})

instance FromJSON SourceLocation where
        parseJSON
          = withObject "SourceLocation"
              (\ o ->
                 SourceLocation' <$>
                   (o .:? "line") <*> (o .:? "functionName") <*>
                     (o .:? "file"))

instance ToJSON SourceLocation where
        toJSON SourceLocation'{..}
          = object
              (catMaybes
                 [("line" .=) <$> _slLine,
                  ("functionName" .=) <$> _slFunctionName,
                  ("file" .=) <$> _slFile])

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

-- | BucketOptions describes the bucket boundaries used to create a histogram
-- for the distribution. The buckets can be in a linear sequence, an
-- exponential sequence, or each bucket can be specified explicitly.
-- BucketOptions does not include the number of values in each bucket.A
-- bucket has an inclusive lower bound and exclusive upper bound for the
-- values that are counted for that bucket. The upper bound of a bucket
-- must be strictly greater than the lower bound. The sequence of N buckets
-- for a distribution consists of an underflow bucket (number 0), zero or
-- more finite buckets (number 1 through N - 2) and an overflow bucket
-- (number N - 1). The buckets are contiguous: the lower bound of bucket i
-- (i > 0) is the same as the upper bound of bucket i - 1. The buckets span
-- the whole range of finite values: lower bound of the underflow bucket is
-- -infinity and the upper bound of the overflow bucket is +infinity. The
-- finite buckets are so-called because both bounds are finite.
--
-- /See:/ 'bucketOptions' smart constructor.
data BucketOptions =
  BucketOptions'
    { _boExponentialBuckets :: !(Maybe Exponential)
    , _boLinearBuckets :: !(Maybe Linear)
    , _boExplicitBuckets :: !(Maybe Explicit)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boExponentialBuckets'
--
-- * 'boLinearBuckets'
--
-- * 'boExplicitBuckets'
bucketOptions
    :: BucketOptions
bucketOptions =
  BucketOptions'
    { _boExponentialBuckets = Nothing
    , _boLinearBuckets = Nothing
    , _boExplicitBuckets = Nothing
    }


-- | The exponential buckets.
boExponentialBuckets :: Lens' BucketOptions (Maybe Exponential)
boExponentialBuckets
  = lens _boExponentialBuckets
      (\ s a -> s{_boExponentialBuckets = a})

-- | The linear bucket.
boLinearBuckets :: Lens' BucketOptions (Maybe Linear)
boLinearBuckets
  = lens _boLinearBuckets
      (\ s a -> s{_boLinearBuckets = a})

-- | The explicit buckets.
boExplicitBuckets :: Lens' BucketOptions (Maybe Explicit)
boExplicitBuckets
  = lens _boExplicitBuckets
      (\ s a -> s{_boExplicitBuckets = a})

instance FromJSON BucketOptions where
        parseJSON
          = withObject "BucketOptions"
              (\ o ->
                 BucketOptions' <$>
                   (o .:? "exponentialBuckets") <*>
                     (o .:? "linearBuckets")
                     <*> (o .:? "explicitBuckets"))

instance ToJSON BucketOptions where
        toJSON BucketOptions'{..}
          = object
              (catMaybes
                 [("exponentialBuckets" .=) <$> _boExponentialBuckets,
                  ("linearBuckets" .=) <$> _boLinearBuckets,
                  ("explicitBuckets" .=) <$> _boExplicitBuckets])

-- | A reference to a particular snapshot of the source tree used to build
-- and deploy an application.
--
-- /See:/ 'sourceReference' smart constructor.
data SourceReference =
  SourceReference'
    { _srRepository :: !(Maybe Text)
    , _srRevisionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srRepository'
--
-- * 'srRevisionId'
sourceReference
    :: SourceReference
sourceReference =
  SourceReference' {_srRepository = Nothing, _srRevisionId = Nothing}


-- | Optional. A URI string identifying the repository. Example:
-- \"https:\/\/github.com\/GoogleCloudPlatform\/kubernetes.git\"
srRepository :: Lens' SourceReference (Maybe Text)
srRepository
  = lens _srRepository (\ s a -> s{_srRepository = a})

-- | The canonical and persistent identifier of the deployed revision.
-- Example (git): \"0035781c50ec7aa23385dc841529ce8a4b70db1b\"
srRevisionId :: Lens' SourceReference (Maybe Text)
srRevisionId
  = lens _srRevisionId (\ s a -> s{_srRevisionId = a})

instance FromJSON SourceReference where
        parseJSON
          = withObject "SourceReference"
              (\ o ->
                 SourceReference' <$>
                   (o .:? "repository") <*> (o .:? "revisionId"))

instance ToJSON SourceReference where
        toJSON SourceReference'{..}
          = object
              (catMaybes
                 [("repository" .=) <$> _srRepository,
                  ("revisionId" .=) <$> _srRevisionId])

-- | The log entry payload, represented as a structure that is expressed as a
-- JSON object.
--
-- /See:/ 'logEntryJSONPayload' smart constructor.
newtype LogEntryJSONPayload =
  LogEntryJSONPayload'
    { _lejpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogEntryJSONPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lejpAddtional'
logEntryJSONPayload
    :: HashMap Text JSONValue -- ^ 'lejpAddtional'
    -> LogEntryJSONPayload
logEntryJSONPayload pLejpAddtional_ =
  LogEntryJSONPayload' {_lejpAddtional = _Coerce # pLejpAddtional_}


-- | Properties of the object.
lejpAddtional :: Lens' LogEntryJSONPayload (HashMap Text JSONValue)
lejpAddtional
  = lens _lejpAddtional
      (\ s a -> s{_lejpAddtional = a})
      . _Coerce

instance FromJSON LogEntryJSONPayload where
        parseJSON
          = withObject "LogEntryJSONPayload"
              (\ o -> LogEntryJSONPayload' <$> (parseJSONObject o))

instance ToJSON LogEntryJSONPayload where
        toJSON = toJSON . _lejpAddtional

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as Delete, the response is
-- google.protobuf.Empty. If the original method is standard
-- Get\/Create\/Update, the response should be the resource. For other
-- methods, the response should have the type XxxResponse, where Xxx is the
-- original method name. For example, if the original method name is
-- TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
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

-- | Describes a view over logs in a bucket.
--
-- /See:/ 'logView' smart constructor.
data LogView =
  LogView'
    { _lvUpdateTime :: !(Maybe DateTime')
    , _lvName :: !(Maybe Text)
    , _lvFilter :: !(Maybe Text)
    , _lvDescription :: !(Maybe Text)
    , _lvCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogView' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvUpdateTime'
--
-- * 'lvName'
--
-- * 'lvFilter'
--
-- * 'lvDescription'
--
-- * 'lvCreateTime'
logView
    :: LogView
logView =
  LogView'
    { _lvUpdateTime = Nothing
    , _lvName = Nothing
    , _lvFilter = Nothing
    , _lvDescription = Nothing
    , _lvCreateTime = Nothing
    }


-- | Output only. The last update timestamp of the view.
lvUpdateTime :: Lens' LogView (Maybe UTCTime)
lvUpdateTime
  = lens _lvUpdateTime (\ s a -> s{_lvUpdateTime = a})
      . mapping _DateTime

-- | The resource name of the view. For example
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view
lvName :: Lens' LogView (Maybe Text)
lvName = lens _lvName (\ s a -> s{_lvName = a})

-- | Filter that restricts which log entries in a bucket are visible in this
-- view. Filters are restricted to be a logical AND of ==\/!= of any of the
-- following: originating project\/folder\/organization\/billing account.
-- resource type log id Example: SOURCE(\"projects\/myproject\") AND
-- resource.type = \"gce_instance\" AND LOG_ID(\"stdout\")
lvFilter :: Lens' LogView (Maybe Text)
lvFilter = lens _lvFilter (\ s a -> s{_lvFilter = a})

-- | Describes this view.
lvDescription :: Lens' LogView (Maybe Text)
lvDescription
  = lens _lvDescription
      (\ s a -> s{_lvDescription = a})

-- | Output only. The creation timestamp of the view.
lvCreateTime :: Lens' LogView (Maybe UTCTime)
lvCreateTime
  = lens _lvCreateTime (\ s a -> s{_lvCreateTime = a})
      . mapping _DateTime

instance FromJSON LogView where
        parseJSON
          = withObject "LogView"
              (\ o ->
                 LogView' <$>
                   (o .:? "updateTime") <*> (o .:? "name") <*>
                     (o .:? "filter")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON LogView where
        toJSON LogView'{..}
          = object
              (catMaybes
                 [("updateTime" .=) <$> _lvUpdateTime,
                  ("name" .=) <$> _lvName, ("filter" .=) <$> _lvFilter,
                  ("description" .=) <$> _lvDescription,
                  ("createTime" .=) <$> _lvCreateTime])
