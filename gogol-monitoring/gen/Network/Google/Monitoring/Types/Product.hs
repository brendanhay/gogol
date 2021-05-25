{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Monitoring.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Monitoring.Types.Product where

import Network.Google.Monitoring.Types.Sum
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

-- | An SLI measuring performance on a well-known service type. Performance
-- will be computed on the basis of pre-defined metrics. The type of the
-- service_resource determines the metrics to use and the
-- service_resource.labels and metric_labels are used to construct a
-- monitoring filter to filter that metric down to just the data relevant
-- to this service.
--
-- /See:/ 'basicSli' smart constructor.
data BasicSli =
  BasicSli'
    { _bsLocation :: !(Maybe [Text])
    , _bsLatency :: !(Maybe LatencyCriteria)
    , _bsAvailability :: !(Maybe AvailabilityCriteria)
    , _bsMethod :: !(Maybe [Text])
    , _bsVersion :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicSli' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsLocation'
--
-- * 'bsLatency'
--
-- * 'bsAvailability'
--
-- * 'bsMethod'
--
-- * 'bsVersion'
basicSli
    :: BasicSli
basicSli =
  BasicSli'
    { _bsLocation = Nothing
    , _bsLatency = Nothing
    , _bsAvailability = Nothing
    , _bsMethod = Nothing
    , _bsVersion = Nothing
    }


-- | OPTIONAL: The set of locations to which this SLI is relevant. Telemetry
-- from other locations will not be used to calculate performance for this
-- SLI. If omitted, this SLI applies to all locations in which the Service
-- has activity. For service types that don\'t support breaking down by
-- location, setting this field will result in an error.
bsLocation :: Lens' BasicSli [Text]
bsLocation
  = lens _bsLocation (\ s a -> s{_bsLocation = a}) .
      _Default
      . _Coerce

-- | Good service is defined to be the count of requests made to this service
-- that are fast enough with respect to latency.threshold.
bsLatency :: Lens' BasicSli (Maybe LatencyCriteria)
bsLatency
  = lens _bsLatency (\ s a -> s{_bsLatency = a})

-- | Good service is defined to be the count of requests made to this service
-- that return successfully.
bsAvailability :: Lens' BasicSli (Maybe AvailabilityCriteria)
bsAvailability
  = lens _bsAvailability
      (\ s a -> s{_bsAvailability = a})

-- | OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from
-- other methods will not be used to calculate performance for this SLI. If
-- omitted, this SLI applies to all the Service\'s methods. For service
-- types that don\'t support breaking down by method, setting this field
-- will result in an error.
bsMethod :: Lens' BasicSli [Text]
bsMethod
  = lens _bsMethod (\ s a -> s{_bsMethod = a}) .
      _Default
      . _Coerce

-- | OPTIONAL: The set of API versions to which this SLI is relevant.
-- Telemetry from other API versions will not be used to calculate
-- performance for this SLI. If omitted, this SLI applies to all API
-- versions. For service types that don\'t support breaking down by
-- version, setting this field will result in an error.
bsVersion :: Lens' BasicSli [Text]
bsVersion
  = lens _bsVersion (\ s a -> s{_bsVersion = a}) .
      _Default
      . _Coerce

instance FromJSON BasicSli where
        parseJSON
          = withObject "BasicSli"
              (\ o ->
                 BasicSli' <$>
                   (o .:? "location" .!= mempty) <*> (o .:? "latency")
                     <*> (o .:? "availability")
                     <*> (o .:? "method" .!= mempty)
                     <*> (o .:? "version" .!= mempty))

instance ToJSON BasicSli where
        toJSON BasicSli'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _bsLocation,
                  ("latency" .=) <$> _bsLatency,
                  ("availability" .=) <$> _bsAvailability,
                  ("method" .=) <$> _bsMethod,
                  ("version" .=) <$> _bsVersion])

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

-- | A Service-Level Objective (SLO) describes a level of desired good
-- service. It consists of a service-level indicator (SLI), a performance
-- goal, and a period over which the objective is to be evaluated against
-- that goal. The SLO can use SLIs defined in a number of different
-- manners. Typical SLOs might include \"99% of requests in each rolling
-- week have latency below 200 milliseconds\" or \"99.5% of requests in
-- each calendar month return successfully.\"
--
-- /See:/ 'serviceLevelObjective' smart constructor.
data ServiceLevelObjective =
  ServiceLevelObjective'
    { _sloUserLabels :: !(Maybe ServiceLevelObjectiveUserLabels)
    , _sloName :: !(Maybe Text)
    , _sloCalendarPeriod :: !(Maybe ServiceLevelObjectiveCalendarPeriod)
    , _sloServiceLevelIndicator :: !(Maybe ServiceLevelIndicator)
    , _sloGoal :: !(Maybe (Textual Double))
    , _sloDisplayName :: !(Maybe Text)
    , _sloRollingPeriod :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceLevelObjective' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sloUserLabels'
--
-- * 'sloName'
--
-- * 'sloCalendarPeriod'
--
-- * 'sloServiceLevelIndicator'
--
-- * 'sloGoal'
--
-- * 'sloDisplayName'
--
-- * 'sloRollingPeriod'
serviceLevelObjective
    :: ServiceLevelObjective
serviceLevelObjective =
  ServiceLevelObjective'
    { _sloUserLabels = Nothing
    , _sloName = Nothing
    , _sloCalendarPeriod = Nothing
    , _sloServiceLevelIndicator = Nothing
    , _sloGoal = Nothing
    , _sloDisplayName = Nothing
    , _sloRollingPeriod = Nothing
    }


-- | Labels which have been used to annotate the service-level objective.
-- Label keys must start with a letter. Label keys and values may contain
-- lowercase letters, numbers, underscores, and dashes. Label keys and
-- values have a maximum length of 63 characters, and must be less than 128
-- bytes in size. Up to 64 label entries may be stored. For labels which do
-- not have a semantic value, the empty string may be supplied for the
-- label value.
sloUserLabels :: Lens' ServiceLevelObjective (Maybe ServiceLevelObjectiveUserLabels)
sloUserLabels
  = lens _sloUserLabels
      (\ s a -> s{_sloUserLabels = a})

-- | Resource name for this ServiceLevelObjective. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]\/serviceLevelObjectives\/[SLO_NAME]
sloName :: Lens' ServiceLevelObjective (Maybe Text)
sloName = lens _sloName (\ s a -> s{_sloName = a})

-- | A calendar period, semantically \"since the start of the current \". At
-- this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
sloCalendarPeriod :: Lens' ServiceLevelObjective (Maybe ServiceLevelObjectiveCalendarPeriod)
sloCalendarPeriod
  = lens _sloCalendarPeriod
      (\ s a -> s{_sloCalendarPeriod = a})

-- | The definition of good service, used to measure and calculate the
-- quality of the Service\'s performance with respect to a single aspect of
-- service quality.
sloServiceLevelIndicator :: Lens' ServiceLevelObjective (Maybe ServiceLevelIndicator)
sloServiceLevelIndicator
  = lens _sloServiceLevelIndicator
      (\ s a -> s{_sloServiceLevelIndicator = a})

-- | The fraction of service that must be good in order for this objective to
-- be met. 0 \< goal \<= 0.999.
sloGoal :: Lens' ServiceLevelObjective (Maybe Double)
sloGoal
  = lens _sloGoal (\ s a -> s{_sloGoal = a}) .
      mapping _Coerce

-- | Name used for UI elements listing this SLO.
sloDisplayName :: Lens' ServiceLevelObjective (Maybe Text)
sloDisplayName
  = lens _sloDisplayName
      (\ s a -> s{_sloDisplayName = a})

-- | A rolling time period, semantically \"in the past \". Must be an integer
-- multiple of 1 day no larger than 30 days.
sloRollingPeriod :: Lens' ServiceLevelObjective (Maybe Scientific)
sloRollingPeriod
  = lens _sloRollingPeriod
      (\ s a -> s{_sloRollingPeriod = a})
      . mapping _GDuration

instance FromJSON ServiceLevelObjective where
        parseJSON
          = withObject "ServiceLevelObjective"
              (\ o ->
                 ServiceLevelObjective' <$>
                   (o .:? "userLabels") <*> (o .:? "name") <*>
                     (o .:? "calendarPeriod")
                     <*> (o .:? "serviceLevelIndicator")
                     <*> (o .:? "goal")
                     <*> (o .:? "displayName")
                     <*> (o .:? "rollingPeriod"))

instance ToJSON ServiceLevelObjective where
        toJSON ServiceLevelObjective'{..}
          = object
              (catMaybes
                 [("userLabels" .=) <$> _sloUserLabels,
                  ("name" .=) <$> _sloName,
                  ("calendarPeriod" .=) <$> _sloCalendarPeriod,
                  ("serviceLevelIndicator" .=) <$>
                    _sloServiceLevelIndicator,
                  ("goal" .=) <$> _sloGoal,
                  ("displayName" .=) <$> _sloDisplayName,
                  ("rollingPeriod" .=) <$> _sloRollingPeriod])

-- | The ListNotificationChannels response.
--
-- /See:/ 'listNotificationChannelsResponse' smart constructor.
data ListNotificationChannelsResponse =
  ListNotificationChannelsResponse'
    { _lncrNextPageToken :: !(Maybe Text)
    , _lncrNotificationChannels :: !(Maybe [NotificationChannel])
    , _lncrTotalSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListNotificationChannelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lncrNextPageToken'
--
-- * 'lncrNotificationChannels'
--
-- * 'lncrTotalSize'
listNotificationChannelsResponse
    :: ListNotificationChannelsResponse
listNotificationChannelsResponse =
  ListNotificationChannelsResponse'
    { _lncrNextPageToken = Nothing
    , _lncrNotificationChannels = Nothing
    , _lncrTotalSize = Nothing
    }


-- | If not empty, indicates that there may be more results that match the
-- request. Use the value in the page_token field in a subsequent request
-- to fetch the next set of results. If empty, all results have been
-- returned.
lncrNextPageToken :: Lens' ListNotificationChannelsResponse (Maybe Text)
lncrNextPageToken
  = lens _lncrNextPageToken
      (\ s a -> s{_lncrNextPageToken = a})

-- | The notification channels defined for the specified project.
lncrNotificationChannels :: Lens' ListNotificationChannelsResponse [NotificationChannel]
lncrNotificationChannels
  = lens _lncrNotificationChannels
      (\ s a -> s{_lncrNotificationChannels = a})
      . _Default
      . _Coerce

-- | The total number of notification channels in all pages. This number is
-- only an estimate, and may change in subsequent pages.
-- https:\/\/aip.dev\/158
lncrTotalSize :: Lens' ListNotificationChannelsResponse (Maybe Int32)
lncrTotalSize
  = lens _lncrTotalSize
      (\ s a -> s{_lncrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListNotificationChannelsResponse
         where
        parseJSON
          = withObject "ListNotificationChannelsResponse"
              (\ o ->
                 ListNotificationChannelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "notificationChannels" .!= mempty)
                     <*> (o .:? "totalSize"))

instance ToJSON ListNotificationChannelsResponse
         where
        toJSON ListNotificationChannelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lncrNextPageToken,
                  ("notificationChannels" .=) <$>
                    _lncrNotificationChannels,
                  ("totalSize" .=) <$> _lncrTotalSize])

-- | The ListTimeSeries response.
--
-- /See:/ 'listTimeSeriesResponse' smart constructor.
data ListTimeSeriesResponse =
  ListTimeSeriesResponse'
    { _ltsrNextPageToken :: !(Maybe Text)
    , _ltsrExecutionErrors :: !(Maybe [Status])
    , _ltsrUnit :: !(Maybe Text)
    , _ltsrTimeSeries :: !(Maybe [TimeSeries])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTimeSeriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltsrNextPageToken'
--
-- * 'ltsrExecutionErrors'
--
-- * 'ltsrUnit'
--
-- * 'ltsrTimeSeries'
listTimeSeriesResponse
    :: ListTimeSeriesResponse
listTimeSeriesResponse =
  ListTimeSeriesResponse'
    { _ltsrNextPageToken = Nothing
    , _ltsrExecutionErrors = Nothing
    , _ltsrUnit = Nothing
    , _ltsrTimeSeries = Nothing
    }


-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
ltsrNextPageToken :: Lens' ListTimeSeriesResponse (Maybe Text)
ltsrNextPageToken
  = lens _ltsrNextPageToken
      (\ s a -> s{_ltsrNextPageToken = a})

-- | Query execution errors that may have caused the time series data
-- returned to be incomplete.
ltsrExecutionErrors :: Lens' ListTimeSeriesResponse [Status]
ltsrExecutionErrors
  = lens _ltsrExecutionErrors
      (\ s a -> s{_ltsrExecutionErrors = a})
      . _Default
      . _Coerce

-- | The unit in which all time_series point values are reported. unit
-- follows the UCUM format for units as seen in
-- https:\/\/unitsofmeasure.org\/ucum.html. If different time_series have
-- different units (for example, because they come from different metric
-- types, or a unit is absent), then unit will be \"{not_a_unit}\".
ltsrUnit :: Lens' ListTimeSeriesResponse (Maybe Text)
ltsrUnit = lens _ltsrUnit (\ s a -> s{_ltsrUnit = a})

-- | One or more time series that match the filter included in the request.
ltsrTimeSeries :: Lens' ListTimeSeriesResponse [TimeSeries]
ltsrTimeSeries
  = lens _ltsrTimeSeries
      (\ s a -> s{_ltsrTimeSeries = a})
      . _Default
      . _Coerce

instance FromJSON ListTimeSeriesResponse where
        parseJSON
          = withObject "ListTimeSeriesResponse"
              (\ o ->
                 ListTimeSeriesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "executionErrors" .!= mempty)
                     <*> (o .:? "unit")
                     <*> (o .:? "timeSeries" .!= mempty))

instance ToJSON ListTimeSeriesResponse where
        toJSON ListTimeSeriesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltsrNextPageToken,
                  ("executionErrors" .=) <$> _ltsrExecutionErrors,
                  ("unit" .=) <$> _ltsrUnit,
                  ("timeSeries" .=) <$> _ltsrTimeSeries])

-- | The GetNotificationChannelVerificationCode request.
--
-- /See:/ 'getNotificationChannelVerificationCodeResponse' smart constructor.
data GetNotificationChannelVerificationCodeResponse =
  GetNotificationChannelVerificationCodeResponse'
    { _gncvcrCode :: !(Maybe Text)
    , _gncvcrExpireTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetNotificationChannelVerificationCodeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gncvcrCode'
--
-- * 'gncvcrExpireTime'
getNotificationChannelVerificationCodeResponse
    :: GetNotificationChannelVerificationCodeResponse
getNotificationChannelVerificationCodeResponse =
  GetNotificationChannelVerificationCodeResponse'
    {_gncvcrCode = Nothing, _gncvcrExpireTime = Nothing}


-- | The verification code, which may be used to verify other channels that
-- have an equivalent identity (i.e. other channels of the same type with
-- the same fingerprint such as other email channels with the same email
-- address or other sms channels with the same number).
gncvcrCode :: Lens' GetNotificationChannelVerificationCodeResponse (Maybe Text)
gncvcrCode
  = lens _gncvcrCode (\ s a -> s{_gncvcrCode = a})

-- | The expiration time associated with the code that was returned. If an
-- expiration was provided in the request, this is the minimum of the
-- requested expiration in the request and the max permitted expiration.
gncvcrExpireTime :: Lens' GetNotificationChannelVerificationCodeResponse (Maybe UTCTime)
gncvcrExpireTime
  = lens _gncvcrExpireTime
      (\ s a -> s{_gncvcrExpireTime = a})
      . mapping _DateTime

instance FromJSON
           GetNotificationChannelVerificationCodeResponse
         where
        parseJSON
          = withObject
              "GetNotificationChannelVerificationCodeResponse"
              (\ o ->
                 GetNotificationChannelVerificationCodeResponse' <$>
                   (o .:? "code") <*> (o .:? "expireTime"))

instance ToJSON
           GetNotificationChannelVerificationCodeResponse
         where
        toJSON
          GetNotificationChannelVerificationCodeResponse'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _gncvcrCode,
                  ("expireTime" .=) <$> _gncvcrExpireTime])

-- | Configuration for how to query telemetry on a Service.
--
-- /See:/ 'telemetry' smart constructor.
newtype Telemetry =
  Telemetry'
    { _tResourceName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Telemetry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tResourceName'
telemetry
    :: Telemetry
telemetry = Telemetry' {_tResourceName = Nothing}


-- | The full name of the resource that defines this service. Formatted as
-- described in https:\/\/cloud.google.com\/apis\/design\/resource_names.
tResourceName :: Lens' Telemetry (Maybe Text)
tResourceName
  = lens _tResourceName
      (\ s a -> s{_tResourceName = a})

instance FromJSON Telemetry where
        parseJSON
          = withObject "Telemetry"
              (\ o -> Telemetry' <$> (o .:? "resourceName"))

instance ToJSON Telemetry where
        toJSON Telemetry'{..}
          = object
              (catMaybes [("resourceName" .=) <$> _tResourceName])

-- | A condition type that allows alert policies to be defined using
-- Monitoring Query Language (https:\/\/cloud.google.com\/monitoring\/mql).
--
-- /See:/ 'monitoringQueryLanguageCondition' smart constructor.
data MonitoringQueryLanguageCondition =
  MonitoringQueryLanguageCondition'
    { _mqlcQuery :: !(Maybe Text)
    , _mqlcTrigger :: !(Maybe Trigger)
    , _mqlcDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoringQueryLanguageCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mqlcQuery'
--
-- * 'mqlcTrigger'
--
-- * 'mqlcDuration'
monitoringQueryLanguageCondition
    :: MonitoringQueryLanguageCondition
monitoringQueryLanguageCondition =
  MonitoringQueryLanguageCondition'
    {_mqlcQuery = Nothing, _mqlcTrigger = Nothing, _mqlcDuration = Nothing}


-- | Monitoring Query Language (https:\/\/cloud.google.com\/monitoring\/mql)
-- query that outputs a boolean stream.
mqlcQuery :: Lens' MonitoringQueryLanguageCondition (Maybe Text)
mqlcQuery
  = lens _mqlcQuery (\ s a -> s{_mqlcQuery = a})

-- | The number\/percent of time series for which the comparison must hold in
-- order for the condition to trigger. If unspecified, then the condition
-- will trigger if the comparison is true for any of the time series that
-- have been identified by filter and aggregations, or by the ratio, if
-- denominator_filter and denominator_aggregations are specified.
mqlcTrigger :: Lens' MonitoringQueryLanguageCondition (Maybe Trigger)
mqlcTrigger
  = lens _mqlcTrigger (\ s a -> s{_mqlcTrigger = a})

-- | The amount of time that a time series must violate the threshold to be
-- considered failing. Currently, only values that are a multiple of a
-- minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid
-- value is given, an error will be returned. When choosing a duration, it
-- is useful to keep in mind the frequency of the underlying time series
-- data (which may also be affected by any alignments specified in the
-- aggregations field); a good duration is long enough so that a single
-- outlier does not generate spurious alerts, but short enough that
-- unhealthy states are detected and alerted on quickly.
mqlcDuration :: Lens' MonitoringQueryLanguageCondition (Maybe Scientific)
mqlcDuration
  = lens _mqlcDuration (\ s a -> s{_mqlcDuration = a})
      . mapping _GDuration

instance FromJSON MonitoringQueryLanguageCondition
         where
        parseJSON
          = withObject "MonitoringQueryLanguageCondition"
              (\ o ->
                 MonitoringQueryLanguageCondition' <$>
                   (o .:? "query") <*> (o .:? "trigger") <*>
                     (o .:? "duration"))

instance ToJSON MonitoringQueryLanguageCondition
         where
        toJSON MonitoringQueryLanguageCondition'{..}
          = object
              (catMaybes
                 [("query" .=) <$> _mqlcQuery,
                  ("trigger" .=) <$> _mqlcTrigger,
                  ("duration" .=) <$> _mqlcDuration])

-- | The ListServices response.
--
-- /See:/ 'listServicesResponse' smart constructor.
data ListServicesResponse =
  ListServicesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrServices :: !(Maybe [Service])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrServices'
listServicesResponse
    :: ListServicesResponse
listServicesResponse =
  ListServicesResponse' {_lsrNextPageToken = Nothing, _lsrServices = Nothing}


-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
lsrNextPageToken :: Lens' ListServicesResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The Services matching the specified filter.
lsrServices :: Lens' ListServicesResponse [Service]
lsrServices
  = lens _lsrServices (\ s a -> s{_lsrServices = a}) .
      _Default
      . _Coerce

instance FromJSON ListServicesResponse where
        parseJSON
          = withObject "ListServicesResponse"
              (\ o ->
                 ListServicesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "services" .!= mempty))

instance ToJSON ListServicesResponse where
        toJSON ListServicesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("services" .=) <$> _lsrServices])

-- | The ListNotificationChannelDescriptors response.
--
-- /See:/ 'listNotificationChannelDescriptorsResponse' smart constructor.
data ListNotificationChannelDescriptorsResponse =
  ListNotificationChannelDescriptorsResponse'
    { _lncdrNextPageToken :: !(Maybe Text)
    , _lncdrChannelDescriptors :: !(Maybe [NotificationChannelDescriptor])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListNotificationChannelDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lncdrNextPageToken'
--
-- * 'lncdrChannelDescriptors'
listNotificationChannelDescriptorsResponse
    :: ListNotificationChannelDescriptorsResponse
listNotificationChannelDescriptorsResponse =
  ListNotificationChannelDescriptorsResponse'
    {_lncdrNextPageToken = Nothing, _lncdrChannelDescriptors = Nothing}


-- | If not empty, indicates that there may be more results that match the
-- request. Use the value in the page_token field in a subsequent request
-- to fetch the next set of results. If empty, all results have been
-- returned.
lncdrNextPageToken :: Lens' ListNotificationChannelDescriptorsResponse (Maybe Text)
lncdrNextPageToken
  = lens _lncdrNextPageToken
      (\ s a -> s{_lncdrNextPageToken = a})

-- | The monitored resource descriptors supported for the specified project,
-- optionally filtered.
lncdrChannelDescriptors :: Lens' ListNotificationChannelDescriptorsResponse [NotificationChannelDescriptor]
lncdrChannelDescriptors
  = lens _lncdrChannelDescriptors
      (\ s a -> s{_lncdrChannelDescriptors = a})
      . _Default
      . _Coerce

instance FromJSON
           ListNotificationChannelDescriptorsResponse
         where
        parseJSON
          = withObject
              "ListNotificationChannelDescriptorsResponse"
              (\ o ->
                 ListNotificationChannelDescriptorsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "channelDescriptors" .!= mempty))

instance ToJSON
           ListNotificationChannelDescriptorsResponse
         where
        toJSON
          ListNotificationChannelDescriptorsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lncdrNextPageToken,
                  ("channelDescriptors" .=) <$>
                    _lncdrChannelDescriptors])

-- | A TimeSeriesRatio specifies two TimeSeries to use for computing the
-- good_service \/ total_service ratio. The specified TimeSeries must have
-- ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA
-- or MetricKind = CUMULATIVE. The TimeSeriesRatio must specify exactly two
-- of good, bad, and total, and the relationship good_service + bad_service
-- = total_service will be assumed.
--
-- /See:/ 'timeSeriesRatio' smart constructor.
data TimeSeriesRatio =
  TimeSeriesRatio'
    { _tsrTotalServiceFilter :: !(Maybe Text)
    , _tsrGoodServiceFilter :: !(Maybe Text)
    , _tsrBadServiceFilter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeSeriesRatio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsrTotalServiceFilter'
--
-- * 'tsrGoodServiceFilter'
--
-- * 'tsrBadServiceFilter'
timeSeriesRatio
    :: TimeSeriesRatio
timeSeriesRatio =
  TimeSeriesRatio'
    { _tsrTotalServiceFilter = Nothing
    , _tsrGoodServiceFilter = Nothing
    , _tsrBadServiceFilter = Nothing
    }


-- | A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a
-- TimeSeries quantifying total demanded service. Must have ValueType =
-- DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or
-- MetricKind = CUMULATIVE.
tsrTotalServiceFilter :: Lens' TimeSeriesRatio (Maybe Text)
tsrTotalServiceFilter
  = lens _tsrTotalServiceFilter
      (\ s a -> s{_tsrTotalServiceFilter = a})

-- | A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a
-- TimeSeries quantifying good service provided. Must have ValueType =
-- DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or
-- MetricKind = CUMULATIVE.
tsrGoodServiceFilter :: Lens' TimeSeriesRatio (Maybe Text)
tsrGoodServiceFilter
  = lens _tsrGoodServiceFilter
      (\ s a -> s{_tsrGoodServiceFilter = a})

-- | A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a
-- TimeSeries quantifying bad service, either demanded service that was not
-- provided or demanded service that was of inadequate quality. Must have
-- ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA
-- or MetricKind = CUMULATIVE.
tsrBadServiceFilter :: Lens' TimeSeriesRatio (Maybe Text)
tsrBadServiceFilter
  = lens _tsrBadServiceFilter
      (\ s a -> s{_tsrBadServiceFilter = a})

instance FromJSON TimeSeriesRatio where
        parseJSON
          = withObject "TimeSeriesRatio"
              (\ o ->
                 TimeSeriesRatio' <$>
                   (o .:? "totalServiceFilter") <*>
                     (o .:? "goodServiceFilter")
                     <*> (o .:? "badServiceFilter"))

instance ToJSON TimeSeriesRatio where
        toJSON TimeSeriesRatio'{..}
          = object
              (catMaybes
                 [("totalServiceFilter" .=) <$>
                    _tsrTotalServiceFilter,
                  ("goodServiceFilter" .=) <$> _tsrGoodServiceFilter,
                  ("badServiceFilter" .=) <$> _tsrBadServiceFilter])

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

-- | Range of numerical values within min and max. If the open range \"\<
-- range.max\" is desired, set range.min = -infinity. If the open range
-- \">= range.min\" is desired, set range.max = infinity.
--
-- /See:/ 'googleMonitoringV3Range' smart constructor.
data GoogleMonitoringV3Range =
  GoogleMonitoringV3Range'
    { _gmvrMax :: !(Maybe (Textual Double))
    , _gmvrMin :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleMonitoringV3Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmvrMax'
--
-- * 'gmvrMin'
googleMonitoringV3Range
    :: GoogleMonitoringV3Range
googleMonitoringV3Range =
  GoogleMonitoringV3Range' {_gmvrMax = Nothing, _gmvrMin = Nothing}


-- | Range maximum.
gmvrMax :: Lens' GoogleMonitoringV3Range (Maybe Double)
gmvrMax
  = lens _gmvrMax (\ s a -> s{_gmvrMax = a}) .
      mapping _Coerce

-- | Range minimum.
gmvrMin :: Lens' GoogleMonitoringV3Range (Maybe Double)
gmvrMin
  = lens _gmvrMin (\ s a -> s{_gmvrMin = a}) .
      mapping _Coerce

instance FromJSON GoogleMonitoringV3Range where
        parseJSON
          = withObject "GoogleMonitoringV3Range"
              (\ o ->
                 GoogleMonitoringV3Range' <$>
                   (o .:? "max") <*> (o .:? "min"))

instance ToJSON GoogleMonitoringV3Range where
        toJSON GoogleMonitoringV3Range'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _gmvrMax, ("min" .=) <$> _gmvrMin])

-- | The description of a dynamic collection of monitored resources. Each
-- group has a filter that is matched against monitored resources and their
-- associated metadata. If a group\'s filter matches an available monitored
-- resource, then that resource is a member of that group. Groups can
-- contain any number of monitored resources, and each monitored resource
-- can be a member of any number of groups.Groups can be nested in
-- parent-child hierarchies. The parentName field identifies an optional
-- parent for each group. If a group has a parent, then the only monitored
-- resources available to be matched by the group\'s filter are the
-- resources contained in the parent group. In other words, a group
-- contains the monitored resources that match its filter and the filters
-- of all the group\'s ancestors. A group without a parent can contain any
-- monitored resource.For example, consider an infrastructure running a set
-- of instances with two user-defined tags: \"environment\" and \"role\". A
-- parent group has a filter, environment=\"production\". A child of that
-- parent group has a filter, role=\"transcoder\". The parent group
-- contains all instances in the production environment, regardless of
-- their roles. The child group contains instances that have the transcoder
-- role and are in the production environment.The monitored resources
-- contained in a group can change at any moment, depending on what
-- resources exist and what filters are associated with the group and its
-- ancestors.
--
-- /See:/ 'group'' smart constructor.
data Group =
  Group'
    { _gName :: !(Maybe Text)
    , _gDisplayName :: !(Maybe Text)
    , _gFilter :: !(Maybe Text)
    , _gIsCluster :: !(Maybe Bool)
    , _gParentName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gName'
--
-- * 'gDisplayName'
--
-- * 'gFilter'
--
-- * 'gIsCluster'
--
-- * 'gParentName'
group'
    :: Group
group' =
  Group'
    { _gName = Nothing
    , _gDisplayName = Nothing
    , _gFilter = Nothing
    , _gIsCluster = Nothing
    , _gParentName = Nothing
    }


-- | Output only. The name of this group. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/groups\/[GROUP_ID] When creating a
-- group, this field is ignored and a new name is created consisting of the
-- project specified in the call to CreateGroup and a unique [GROUP_ID]
-- that is generated automatically.
gName :: Lens' Group (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | A user-assigned name for this group, used only for display purposes.
gDisplayName :: Lens' Group (Maybe Text)
gDisplayName
  = lens _gDisplayName (\ s a -> s{_gDisplayName = a})

-- | The filter used to determine which monitored resources belong to this
-- group.
gFilter :: Lens' Group (Maybe Text)
gFilter = lens _gFilter (\ s a -> s{_gFilter = a})

-- | If true, the members of this group are considered to be a cluster. The
-- system can perform additional analysis on groups that are clusters.
gIsCluster :: Lens' Group (Maybe Bool)
gIsCluster
  = lens _gIsCluster (\ s a -> s{_gIsCluster = a})

-- | The name of the group\'s parent, if it has one. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/groups\/[GROUP_ID] For groups with no
-- parent, parent_name is the empty string, \"\".
gParentName :: Lens' Group (Maybe Text)
gParentName
  = lens _gParentName (\ s a -> s{_gParentName = a})

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "filter")
                     <*> (o .:? "isCluster")
                     <*> (o .:? "parentName"))

instance ToJSON Group where
        toJSON Group'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gName,
                  ("displayName" .=) <$> _gDisplayName,
                  ("filter" .=) <$> _gFilter,
                  ("isCluster" .=) <$> _gIsCluster,
                  ("parentName" .=) <$> _gParentName])

-- | A single strongly-typed value.
--
-- /See:/ 'typedValue' smart constructor.
data TypedValue =
  TypedValue'
    { _tvBoolValue :: !(Maybe Bool)
    , _tvDoubleValue :: !(Maybe (Textual Double))
    , _tvStringValue :: !(Maybe Text)
    , _tvDistributionValue :: !(Maybe Distribution)
    , _tvInt64Value :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TypedValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvBoolValue'
--
-- * 'tvDoubleValue'
--
-- * 'tvStringValue'
--
-- * 'tvDistributionValue'
--
-- * 'tvInt64Value'
typedValue
    :: TypedValue
typedValue =
  TypedValue'
    { _tvBoolValue = Nothing
    , _tvDoubleValue = Nothing
    , _tvStringValue = Nothing
    , _tvDistributionValue = Nothing
    , _tvInt64Value = Nothing
    }


-- | A Boolean value: true or false.
tvBoolValue :: Lens' TypedValue (Maybe Bool)
tvBoolValue
  = lens _tvBoolValue (\ s a -> s{_tvBoolValue = a})

-- | A 64-bit double-precision floating-point number. Its magnitude is
-- approximately ±10±300 and it has 16 significant digits of precision.
tvDoubleValue :: Lens' TypedValue (Maybe Double)
tvDoubleValue
  = lens _tvDoubleValue
      (\ s a -> s{_tvDoubleValue = a})
      . mapping _Coerce

-- | A variable-length string value.
tvStringValue :: Lens' TypedValue (Maybe Text)
tvStringValue
  = lens _tvStringValue
      (\ s a -> s{_tvStringValue = a})

-- | A distribution value.
tvDistributionValue :: Lens' TypedValue (Maybe Distribution)
tvDistributionValue
  = lens _tvDistributionValue
      (\ s a -> s{_tvDistributionValue = a})

-- | A 64-bit integer. Its range is approximately ±9.2x1018.
tvInt64Value :: Lens' TypedValue (Maybe Int64)
tvInt64Value
  = lens _tvInt64Value (\ s a -> s{_tvInt64Value = a})
      . mapping _Coerce

instance FromJSON TypedValue where
        parseJSON
          = withObject "TypedValue"
              (\ o ->
                 TypedValue' <$>
                   (o .:? "boolValue") <*> (o .:? "doubleValue") <*>
                     (o .:? "stringValue")
                     <*> (o .:? "distributionValue")
                     <*> (o .:? "int64Value"))

instance ToJSON TypedValue where
        toJSON TypedValue'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _tvBoolValue,
                  ("doubleValue" .=) <$> _tvDoubleValue,
                  ("stringValue" .=) <$> _tvStringValue,
                  ("distributionValue" .=) <$> _tvDistributionValue,
                  ("int64Value" .=) <$> _tvInt64Value])

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

-- | User-supplied key\/value data that does not need to conform to the
-- corresponding NotificationChannelDescriptor\'s schema, unlike the labels
-- field. This field is intended to be used for organizing and identifying
-- the NotificationChannel objects.The field can contain up to 64 entries.
-- Each key and value is limited to 63 Unicode characters or 128 bytes,
-- whichever is smaller. Labels and values can contain only lowercase
-- letters, numerals, underscores, and dashes. Keys must begin with a
-- letter.
--
-- /See:/ 'notificationChannelUserLabels' smart constructor.
newtype NotificationChannelUserLabels =
  NotificationChannelUserLabels'
    { _nculAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationChannelUserLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nculAddtional'
notificationChannelUserLabels
    :: HashMap Text Text -- ^ 'nculAddtional'
    -> NotificationChannelUserLabels
notificationChannelUserLabels pNculAddtional_ =
  NotificationChannelUserLabels' {_nculAddtional = _Coerce # pNculAddtional_}


nculAddtional :: Lens' NotificationChannelUserLabels (HashMap Text Text)
nculAddtional
  = lens _nculAddtional
      (\ s a -> s{_nculAddtional = a})
      . _Coerce

instance FromJSON NotificationChannelUserLabels where
        parseJSON
          = withObject "NotificationChannelUserLabels"
              (\ o ->
                 NotificationChannelUserLabels' <$>
                   (parseJSONObject o))

instance ToJSON NotificationChannelUserLabels where
        toJSON = toJSON . _nculAddtional

-- | SourceContext represents information about the source of a protobuf
-- element, like the file in which it is defined.
--
-- /See:/ 'sourceContext' smart constructor.
newtype SourceContext =
  SourceContext'
    { _scFileName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scFileName'
sourceContext
    :: SourceContext
sourceContext = SourceContext' {_scFileName = Nothing}


-- | The path-qualified name of the .proto file that contained the associated
-- protobuf element. For example:
-- \"google\/protobuf\/source_context.proto\".
scFileName :: Lens' SourceContext (Maybe Text)
scFileName
  = lens _scFileName (\ s a -> s{_scFileName = a})

instance FromJSON SourceContext where
        parseJSON
          = withObject "SourceContext"
              (\ o -> SourceContext' <$> (o .:? "fileName"))

instance ToJSON SourceContext where
        toJSON SourceContext'{..}
          = object
              (catMaybes [("fileName" .=) <$> _scFileName])

-- | The authentication parameters to provide to the specified resource or
-- URL that requires a username and password. Currently, only Basic HTTP
-- authentication (https:\/\/tools.ietf.org\/html\/rfc7617) is supported in
-- Uptime checks.
--
-- /See:/ 'basicAuthentication' smart constructor.
data BasicAuthentication =
  BasicAuthentication'
    { _baUsername :: !(Maybe Text)
    , _baPassword :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicAuthentication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baUsername'
--
-- * 'baPassword'
basicAuthentication
    :: BasicAuthentication
basicAuthentication =
  BasicAuthentication' {_baUsername = Nothing, _baPassword = Nothing}


-- | The username to use when authenticating with the HTTP server.
baUsername :: Lens' BasicAuthentication (Maybe Text)
baUsername
  = lens _baUsername (\ s a -> s{_baUsername = a})

-- | The password to use when authenticating with the HTTP server.
baPassword :: Lens' BasicAuthentication (Maybe Text)
baPassword
  = lens _baPassword (\ s a -> s{_baPassword = a})

instance FromJSON BasicAuthentication where
        parseJSON
          = withObject "BasicAuthentication"
              (\ o ->
                 BasicAuthentication' <$>
                   (o .:? "username") <*> (o .:? "password"))

instance ToJSON BasicAuthentication where
        toJSON BasicAuthentication'{..}
          = object
              (catMaybes
                 [("username" .=) <$> _baUsername,
                  ("password" .=) <$> _baPassword])

-- | Distribution contains summary statistics for a population of values. It
-- optionally contains a histogram representing the distribution of those
-- values across a set of buckets.The summary statistics are the count,
-- mean, sum of the squared deviation from the mean, the minimum, and the
-- maximum of the set of population of values. The histogram is based on a
-- sequence of buckets and gives a count of values that fall into each
-- bucket. The boundaries of the buckets are given either explicitly or by
-- formulas for buckets of fixed or exponentially increasing
-- widths.Although it is not forbidden, it is generally a bad idea to
-- include non-finite values (infinities or NaNs) in the population of
-- values, as this will render the mean and sum_of_squared_deviation fields
-- meaningless.
--
-- /See:/ 'distribution' smart constructor.
data Distribution =
  Distribution'
    { _dSumOfSquaredDeviation :: !(Maybe (Textual Double))
    , _dMean :: !(Maybe (Textual Double))
    , _dCount :: !(Maybe (Textual Int64))
    , _dBucketCounts :: !(Maybe [Textual Int64])
    , _dExemplars :: !(Maybe [Exemplar])
    , _dRange :: !(Maybe Range)
    , _dBucketOptions :: !(Maybe BucketOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Distribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSumOfSquaredDeviation'
--
-- * 'dMean'
--
-- * 'dCount'
--
-- * 'dBucketCounts'
--
-- * 'dExemplars'
--
-- * 'dRange'
--
-- * 'dBucketOptions'
distribution
    :: Distribution
distribution =
  Distribution'
    { _dSumOfSquaredDeviation = Nothing
    , _dMean = Nothing
    , _dCount = Nothing
    , _dBucketCounts = Nothing
    , _dExemplars = Nothing
    , _dRange = Nothing
    , _dBucketOptions = Nothing
    }


-- | The sum of squared deviations from the mean of the values in the
-- population. For values x_i this is: Sum[i=1..n]((x_i - mean)^2) Knuth,
-- \"The Art of Computer Programming\", Vol. 2, page 232, 3rd edition
-- describes Welford\'s method for accumulating this sum in one pass.If
-- count is zero then this field must be zero.
dSumOfSquaredDeviation :: Lens' Distribution (Maybe Double)
dSumOfSquaredDeviation
  = lens _dSumOfSquaredDeviation
      (\ s a -> s{_dSumOfSquaredDeviation = a})
      . mapping _Coerce

-- | The arithmetic mean of the values in the population. If count is zero
-- then this field must be zero.
dMean :: Lens' Distribution (Maybe Double)
dMean
  = lens _dMean (\ s a -> s{_dMean = a}) .
      mapping _Coerce

-- | The number of values in the population. Must be non-negative. This value
-- must equal the sum of the values in bucket_counts if a histogram is
-- provided.
dCount :: Lens' Distribution (Maybe Int64)
dCount
  = lens _dCount (\ s a -> s{_dCount = a}) .
      mapping _Coerce

-- | Required in the Cloud Monitoring API v3. The values for each bucket
-- specified in bucket_options. The sum of the values in bucketCounts must
-- equal the value in the count field of the Distribution object. The order
-- of the bucket counts follows the numbering schemes described for the
-- three bucket types. The underflow bucket has number 0; the finite
-- buckets, if any, have numbers 1 through N-2; and the overflow bucket has
-- number N-1. The size of bucket_counts must not be greater than N. If the
-- size is less than N, then the remaining buckets are assigned values of
-- zero.
dBucketCounts :: Lens' Distribution [Int64]
dBucketCounts
  = lens _dBucketCounts
      (\ s a -> s{_dBucketCounts = a})
      . _Default
      . _Coerce

-- | Must be in increasing order of value field.
dExemplars :: Lens' Distribution [Exemplar]
dExemplars
  = lens _dExemplars (\ s a -> s{_dExemplars = a}) .
      _Default
      . _Coerce

-- | If specified, contains the range of the population values. The field
-- must not be present if the count is zero. This field is presently
-- ignored by the Cloud Monitoring API v3.
dRange :: Lens' Distribution (Maybe Range)
dRange = lens _dRange (\ s a -> s{_dRange = a})

-- | Required in the Cloud Monitoring API v3. Defines the histogram bucket
-- boundaries.
dBucketOptions :: Lens' Distribution (Maybe BucketOptions)
dBucketOptions
  = lens _dBucketOptions
      (\ s a -> s{_dBucketOptions = a})

instance FromJSON Distribution where
        parseJSON
          = withObject "Distribution"
              (\ o ->
                 Distribution' <$>
                   (o .:? "sumOfSquaredDeviation") <*> (o .:? "mean")
                     <*> (o .:? "count")
                     <*> (o .:? "bucketCounts" .!= mempty)
                     <*> (o .:? "exemplars" .!= mempty)
                     <*> (o .:? "range")
                     <*> (o .:? "bucketOptions"))

instance ToJSON Distribution where
        toJSON Distribution'{..}
          = object
              (catMaybes
                 [("sumOfSquaredDeviation" .=) <$>
                    _dSumOfSquaredDeviation,
                  ("mean" .=) <$> _dMean, ("count" .=) <$> _dCount,
                  ("bucketCounts" .=) <$> _dBucketCounts,
                  ("exemplars" .=) <$> _dExemplars,
                  ("range" .=) <$> _dRange,
                  ("bucketOptions" .=) <$> _dBucketOptions])

-- | A single field of a message type.
--
-- /See:/ 'field' smart constructor.
data Field =
  Field'
    { _fKind :: !(Maybe FieldKind)
    , _fOneofIndex :: !(Maybe (Textual Int32))
    , _fName :: !(Maybe Text)
    , _fJSONName :: !(Maybe Text)
    , _fCardinality :: !(Maybe FieldCardinality)
    , _fOptions :: !(Maybe [Option])
    , _fPacked :: !(Maybe Bool)
    , _fDefaultValue :: !(Maybe Text)
    , _fNumber :: !(Maybe (Textual Int32))
    , _fTypeURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Field' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fKind'
--
-- * 'fOneofIndex'
--
-- * 'fName'
--
-- * 'fJSONName'
--
-- * 'fCardinality'
--
-- * 'fOptions'
--
-- * 'fPacked'
--
-- * 'fDefaultValue'
--
-- * 'fNumber'
--
-- * 'fTypeURL'
field
    :: Field
field =
  Field'
    { _fKind = Nothing
    , _fOneofIndex = Nothing
    , _fName = Nothing
    , _fJSONName = Nothing
    , _fCardinality = Nothing
    , _fOptions = Nothing
    , _fPacked = Nothing
    , _fDefaultValue = Nothing
    , _fNumber = Nothing
    , _fTypeURL = Nothing
    }


-- | The field type.
fKind :: Lens' Field (Maybe FieldKind)
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The index of the field type in Type.oneofs, for message or enumeration
-- types. The first type has index 1; zero means the type is not in the
-- list.
fOneofIndex :: Lens' Field (Maybe Int32)
fOneofIndex
  = lens _fOneofIndex (\ s a -> s{_fOneofIndex = a}) .
      mapping _Coerce

-- | The field name.
fName :: Lens' Field (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The field JSON name.
fJSONName :: Lens' Field (Maybe Text)
fJSONName
  = lens _fJSONName (\ s a -> s{_fJSONName = a})

-- | The field cardinality.
fCardinality :: Lens' Field (Maybe FieldCardinality)
fCardinality
  = lens _fCardinality (\ s a -> s{_fCardinality = a})

-- | The protocol buffer options.
fOptions :: Lens' Field [Option]
fOptions
  = lens _fOptions (\ s a -> s{_fOptions = a}) .
      _Default
      . _Coerce

-- | Whether to use alternative packed wire representation.
fPacked :: Lens' Field (Maybe Bool)
fPacked = lens _fPacked (\ s a -> s{_fPacked = a})

-- | The string value of the default value of this field. Proto2 syntax only.
fDefaultValue :: Lens' Field (Maybe Text)
fDefaultValue
  = lens _fDefaultValue
      (\ s a -> s{_fDefaultValue = a})

-- | The field number.
fNumber :: Lens' Field (Maybe Int32)
fNumber
  = lens _fNumber (\ s a -> s{_fNumber = a}) .
      mapping _Coerce

-- | The field type URL, without the scheme, for message or enumeration
-- types. Example: \"type.googleapis.com\/google.protobuf.Timestamp\".
fTypeURL :: Lens' Field (Maybe Text)
fTypeURL = lens _fTypeURL (\ s a -> s{_fTypeURL = a})

instance FromJSON Field where
        parseJSON
          = withObject "Field"
              (\ o ->
                 Field' <$>
                   (o .:? "kind") <*> (o .:? "oneofIndex") <*>
                     (o .:? "name")
                     <*> (o .:? "jsonName")
                     <*> (o .:? "cardinality")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "packed")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "number")
                     <*> (o .:? "typeUrl"))

instance ToJSON Field where
        toJSON Field'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _fKind,
                  ("oneofIndex" .=) <$> _fOneofIndex,
                  ("name" .=) <$> _fName,
                  ("jsonName" .=) <$> _fJSONName,
                  ("cardinality" .=) <$> _fCardinality,
                  ("options" .=) <$> _fOptions,
                  ("packed" .=) <$> _fPacked,
                  ("defaultValue" .=) <$> _fDefaultValue,
                  ("number" .=) <$> _fNumber,
                  ("typeUrl" .=) <$> _fTypeURL])

--
-- /See:/ 'exemplarAttachmentsItem' smart constructor.
newtype ExemplarAttachmentsItem =
  ExemplarAttachmentsItem'
    { _eaiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExemplarAttachmentsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaiAddtional'
exemplarAttachmentsItem
    :: HashMap Text JSONValue -- ^ 'eaiAddtional'
    -> ExemplarAttachmentsItem
exemplarAttachmentsItem pEaiAddtional_ =
  ExemplarAttachmentsItem' {_eaiAddtional = _Coerce # pEaiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
eaiAddtional :: Lens' ExemplarAttachmentsItem (HashMap Text JSONValue)
eaiAddtional
  = lens _eaiAddtional (\ s a -> s{_eaiAddtional = a})
      . _Coerce

instance FromJSON ExemplarAttachmentsItem where
        parseJSON
          = withObject "ExemplarAttachmentsItem"
              (\ o ->
                 ExemplarAttachmentsItem' <$> (parseJSONObject o))

instance ToJSON ExemplarAttachmentsItem where
        toJSON = toJSON . _eaiAddtional

-- | A Service is a discrete, autonomous, and network-accessible unit,
-- designed to solve an individual concern (Wikipedia
-- (https:\/\/en.wikipedia.org\/wiki\/Service-orientation)). In Cloud
-- Monitoring, a Service acts as the root resource under which operational
-- aspects of the service are accessible.
--
-- /See:/ 'service' smart constructor.
data Service =
  Service'
    { _sTelemetry :: !(Maybe Telemetry)
    , _sCustom :: !(Maybe Custom)
    , _sUserLabels :: !(Maybe ServiceUserLabels)
    , _sIstioCanonicalService :: !(Maybe IstioCanonicalService)
    , _sName :: !(Maybe Text)
    , _sAppEngine :: !(Maybe AppEngine)
    , _sClusterIstio :: !(Maybe ClusterIstio)
    , _sDisplayName :: !(Maybe Text)
    , _sMeshIstio :: !(Maybe MeshIstio)
    , _sCloudEndpoints :: !(Maybe CloudEndpoints)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTelemetry'
--
-- * 'sCustom'
--
-- * 'sUserLabels'
--
-- * 'sIstioCanonicalService'
--
-- * 'sName'
--
-- * 'sAppEngine'
--
-- * 'sClusterIstio'
--
-- * 'sDisplayName'
--
-- * 'sMeshIstio'
--
-- * 'sCloudEndpoints'
service
    :: Service
service =
  Service'
    { _sTelemetry = Nothing
    , _sCustom = Nothing
    , _sUserLabels = Nothing
    , _sIstioCanonicalService = Nothing
    , _sName = Nothing
    , _sAppEngine = Nothing
    , _sClusterIstio = Nothing
    , _sDisplayName = Nothing
    , _sMeshIstio = Nothing
    , _sCloudEndpoints = Nothing
    }


-- | Configuration for how to query telemetry on a Service.
sTelemetry :: Lens' Service (Maybe Telemetry)
sTelemetry
  = lens _sTelemetry (\ s a -> s{_sTelemetry = a})

-- | Custom service type.
sCustom :: Lens' Service (Maybe Custom)
sCustom = lens _sCustom (\ s a -> s{_sCustom = a})

-- | Labels which have been used to annotate the service. Label keys must
-- start with a letter. Label keys and values may contain lowercase
-- letters, numbers, underscores, and dashes. Label keys and values have a
-- maximum length of 63 characters, and must be less than 128 bytes in
-- size. Up to 64 label entries may be stored. For labels which do not have
-- a semantic value, the empty string may be supplied for the label value.
sUserLabels :: Lens' Service (Maybe ServiceUserLabels)
sUserLabels
  = lens _sUserLabels (\ s a -> s{_sUserLabels = a})

-- | Type used for canonical services scoped to an Istio mesh. Metrics for
-- Istio are documented here
-- (https:\/\/istio.io\/latest\/docs\/reference\/config\/metrics\/)
sIstioCanonicalService :: Lens' Service (Maybe IstioCanonicalService)
sIstioCanonicalService
  = lens _sIstioCanonicalService
      (\ s a -> s{_sIstioCanonicalService = a})

-- | Resource name for this Service. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]
sName :: Lens' Service (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Type used for App Engine services.
sAppEngine :: Lens' Service (Maybe AppEngine)
sAppEngine
  = lens _sAppEngine (\ s a -> s{_sAppEngine = a})

-- | Type used for Istio services that live in a Kubernetes cluster.
sClusterIstio :: Lens' Service (Maybe ClusterIstio)
sClusterIstio
  = lens _sClusterIstio
      (\ s a -> s{_sClusterIstio = a})

-- | Name used for UI elements listing this Service.
sDisplayName :: Lens' Service (Maybe Text)
sDisplayName
  = lens _sDisplayName (\ s a -> s{_sDisplayName = a})

-- | Type used for Istio services scoped to an Istio mesh.
sMeshIstio :: Lens' Service (Maybe MeshIstio)
sMeshIstio
  = lens _sMeshIstio (\ s a -> s{_sMeshIstio = a})

-- | Type used for Cloud Endpoints services.
sCloudEndpoints :: Lens' Service (Maybe CloudEndpoints)
sCloudEndpoints
  = lens _sCloudEndpoints
      (\ s a -> s{_sCloudEndpoints = a})

instance FromJSON Service where
        parseJSON
          = withObject "Service"
              (\ o ->
                 Service' <$>
                   (o .:? "telemetry") <*> (o .:? "custom") <*>
                     (o .:? "userLabels")
                     <*> (o .:? "istioCanonicalService")
                     <*> (o .:? "name")
                     <*> (o .:? "appEngine")
                     <*> (o .:? "clusterIstio")
                     <*> (o .:? "displayName")
                     <*> (o .:? "meshIstio")
                     <*> (o .:? "cloudEndpoints"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("telemetry" .=) <$> _sTelemetry,
                  ("custom" .=) <$> _sCustom,
                  ("userLabels" .=) <$> _sUserLabels,
                  ("istioCanonicalService" .=) <$>
                    _sIstioCanonicalService,
                  ("name" .=) <$> _sName,
                  ("appEngine" .=) <$> _sAppEngine,
                  ("clusterIstio" .=) <$> _sClusterIstio,
                  ("displayName" .=) <$> _sDisplayName,
                  ("meshIstio" .=) <$> _sMeshIstio,
                  ("cloudEndpoints" .=) <$> _sCloudEndpoints])

-- | The QueryTimeSeries request.
--
-- /See:/ 'queryTimeSeriesRequest' smart constructor.
data QueryTimeSeriesRequest =
  QueryTimeSeriesRequest'
    { _qtsrQuery :: !(Maybe Text)
    , _qtsrPageToken :: !(Maybe Text)
    , _qtsrPageSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryTimeSeriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qtsrQuery'
--
-- * 'qtsrPageToken'
--
-- * 'qtsrPageSize'
queryTimeSeriesRequest
    :: QueryTimeSeriesRequest
queryTimeSeriesRequest =
  QueryTimeSeriesRequest'
    {_qtsrQuery = Nothing, _qtsrPageToken = Nothing, _qtsrPageSize = Nothing}


-- | Required. The query in the Monitoring Query Language
-- (https:\/\/cloud.google.com\/monitoring\/mql\/reference) format. The
-- default time zone is in UTC.
qtsrQuery :: Lens' QueryTimeSeriesRequest (Maybe Text)
qtsrQuery
  = lens _qtsrQuery (\ s a -> s{_qtsrQuery = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
qtsrPageToken :: Lens' QueryTimeSeriesRequest (Maybe Text)
qtsrPageToken
  = lens _qtsrPageToken
      (\ s a -> s{_qtsrPageToken = a})

-- | A positive number that is the maximum number of time_series_data to
-- return.
qtsrPageSize :: Lens' QueryTimeSeriesRequest (Maybe Int32)
qtsrPageSize
  = lens _qtsrPageSize (\ s a -> s{_qtsrPageSize = a})
      . mapping _Coerce

instance FromJSON QueryTimeSeriesRequest where
        parseJSON
          = withObject "QueryTimeSeriesRequest"
              (\ o ->
                 QueryTimeSeriesRequest' <$>
                   (o .:? "query") <*> (o .:? "pageToken") <*>
                     (o .:? "pageSize"))

instance ToJSON QueryTimeSeriesRequest where
        toJSON QueryTimeSeriesRequest'{..}
          = object
              (catMaybes
                 [("query" .=) <$> _qtsrQuery,
                  ("pageToken" .=) <$> _qtsrPageToken,
                  ("pageSize" .=) <$> _qtsrPageSize])

-- | A description of a notification channel. The descriptor includes the
-- properties of the channel and the set of labels or fields that must be
-- specified to configure channels of a given type.
--
-- /See:/ 'notificationChannelDescriptor' smart constructor.
data NotificationChannelDescriptor =
  NotificationChannelDescriptor'
    { _ncdName :: !(Maybe Text)
    , _ncdDisplayName :: !(Maybe Text)
    , _ncdLabels :: !(Maybe [LabelDescriptor])
    , _ncdType :: !(Maybe Text)
    , _ncdDescription :: !(Maybe Text)
    , _ncdLaunchStage :: !(Maybe NotificationChannelDescriptorLaunchStage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationChannelDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncdName'
--
-- * 'ncdDisplayName'
--
-- * 'ncdLabels'
--
-- * 'ncdType'
--
-- * 'ncdDescription'
--
-- * 'ncdLaunchStage'
notificationChannelDescriptor
    :: NotificationChannelDescriptor
notificationChannelDescriptor =
  NotificationChannelDescriptor'
    { _ncdName = Nothing
    , _ncdDisplayName = Nothing
    , _ncdLabels = Nothing
    , _ncdType = Nothing
    , _ncdDescription = Nothing
    , _ncdLaunchStage = Nothing
    }


-- | The full REST resource name for this descriptor. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/notificationChannelDescriptors\/[TYPE]
-- In the above, [TYPE] is the value of the type field.
ncdName :: Lens' NotificationChannelDescriptor (Maybe Text)
ncdName = lens _ncdName (\ s a -> s{_ncdName = a})

-- | A human-readable name for the notification channel type. This form of
-- the name is suitable for a user interface.
ncdDisplayName :: Lens' NotificationChannelDescriptor (Maybe Text)
ncdDisplayName
  = lens _ncdDisplayName
      (\ s a -> s{_ncdDisplayName = a})

-- | The set of labels that must be defined to identify a particular channel
-- of the corresponding type. Each label includes a description for how
-- that field should be populated.
ncdLabels :: Lens' NotificationChannelDescriptor [LabelDescriptor]
ncdLabels
  = lens _ncdLabels (\ s a -> s{_ncdLabels = a}) .
      _Default
      . _Coerce

-- | The type of notification channel, such as \"email\" and \"sms\". To view
-- the full list of channels, see Channel descriptors
-- (https:\/\/cloud.google.com\/monitoring\/alerts\/using-channels-api#ncd).
-- Notification channel types are globally unique.
ncdType :: Lens' NotificationChannelDescriptor (Maybe Text)
ncdType = lens _ncdType (\ s a -> s{_ncdType = a})

-- | A human-readable description of the notification channel type. The
-- description may include a description of the properties of the channel
-- and pointers to external documentation.
ncdDescription :: Lens' NotificationChannelDescriptor (Maybe Text)
ncdDescription
  = lens _ncdDescription
      (\ s a -> s{_ncdDescription = a})

-- | The product launch stage for channels of this type.
ncdLaunchStage :: Lens' NotificationChannelDescriptor (Maybe NotificationChannelDescriptorLaunchStage)
ncdLaunchStage
  = lens _ncdLaunchStage
      (\ s a -> s{_ncdLaunchStage = a})

instance FromJSON NotificationChannelDescriptor where
        parseJSON
          = withObject "NotificationChannelDescriptor"
              (\ o ->
                 NotificationChannelDescriptor' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "launchStage"))

instance ToJSON NotificationChannelDescriptor where
        toJSON NotificationChannelDescriptor'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ncdName,
                  ("displayName" .=) <$> _ncdDisplayName,
                  ("labels" .=) <$> _ncdLabels,
                  ("type" .=) <$> _ncdType,
                  ("description" .=) <$> _ncdDescription,
                  ("launchStage" .=) <$> _ncdLaunchStage])

-- | A label value.
--
-- /See:/ 'labelValue' smart constructor.
data LabelValue =
  LabelValue'
    { _lvBoolValue :: !(Maybe Bool)
    , _lvStringValue :: !(Maybe Text)
    , _lvInt64Value :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LabelValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvBoolValue'
--
-- * 'lvStringValue'
--
-- * 'lvInt64Value'
labelValue
    :: LabelValue
labelValue =
  LabelValue'
    {_lvBoolValue = Nothing, _lvStringValue = Nothing, _lvInt64Value = Nothing}


-- | A bool label value.
lvBoolValue :: Lens' LabelValue (Maybe Bool)
lvBoolValue
  = lens _lvBoolValue (\ s a -> s{_lvBoolValue = a})

-- | A string label value.
lvStringValue :: Lens' LabelValue (Maybe Text)
lvStringValue
  = lens _lvStringValue
      (\ s a -> s{_lvStringValue = a})

-- | An int64 label value.
lvInt64Value :: Lens' LabelValue (Maybe Int64)
lvInt64Value
  = lens _lvInt64Value (\ s a -> s{_lvInt64Value = a})
      . mapping _Coerce

instance FromJSON LabelValue where
        parseJSON
          = withObject "LabelValue"
              (\ o ->
                 LabelValue' <$>
                   (o .:? "boolValue") <*> (o .:? "stringValue") <*>
                     (o .:? "int64Value"))

instance ToJSON LabelValue where
        toJSON LabelValue'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _lvBoolValue,
                  ("stringValue" .=) <$> _lvStringValue,
                  ("int64Value" .=) <$> _lvInt64Value])

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

-- | The ListGroups response.
--
-- /See:/ 'listGroupsResponse' smart constructor.
data ListGroupsResponse =
  ListGroupsResponse'
    { _lgrNextPageToken :: !(Maybe Text)
    , _lgrGroup :: !(Maybe [Group])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrNextPageToken'
--
-- * 'lgrGroup'
listGroupsResponse
    :: ListGroupsResponse
listGroupsResponse =
  ListGroupsResponse' {_lgrNextPageToken = Nothing, _lgrGroup = Nothing}


-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
lgrNextPageToken :: Lens' ListGroupsResponse (Maybe Text)
lgrNextPageToken
  = lens _lgrNextPageToken
      (\ s a -> s{_lgrNextPageToken = a})

-- | The groups that match the specified filters.
lgrGroup :: Lens' ListGroupsResponse [Group]
lgrGroup
  = lens _lgrGroup (\ s a -> s{_lgrGroup = a}) .
      _Default
      . _Coerce

instance FromJSON ListGroupsResponse where
        parseJSON
          = withObject "ListGroupsResponse"
              (\ o ->
                 ListGroupsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "group" .!= mempty))

instance ToJSON ListGroupsResponse where
        toJSON ListGroupsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lgrNextPageToken,
                  ("group" .=) <$> _lgrGroup])

-- | The ListMetricDescriptors response.
--
-- /See:/ 'listMetricDescriptorsResponse' smart constructor.
data ListMetricDescriptorsResponse =
  ListMetricDescriptorsResponse'
    { _lmdrMetricDescriptors :: !(Maybe [MetricDescriptor])
    , _lmdrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListMetricDescriptorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmdrMetricDescriptors'
--
-- * 'lmdrNextPageToken'
listMetricDescriptorsResponse
    :: ListMetricDescriptorsResponse
listMetricDescriptorsResponse =
  ListMetricDescriptorsResponse'
    {_lmdrMetricDescriptors = Nothing, _lmdrNextPageToken = Nothing}


-- | The metric descriptors that are available to the project and that match
-- the value of filter, if present.
lmdrMetricDescriptors :: Lens' ListMetricDescriptorsResponse [MetricDescriptor]
lmdrMetricDescriptors
  = lens _lmdrMetricDescriptors
      (\ s a -> s{_lmdrMetricDescriptors = a})
      . _Default
      . _Coerce

-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
lmdrNextPageToken :: Lens' ListMetricDescriptorsResponse (Maybe Text)
lmdrNextPageToken
  = lens _lmdrNextPageToken
      (\ s a -> s{_lmdrNextPageToken = a})

instance FromJSON ListMetricDescriptorsResponse where
        parseJSON
          = withObject "ListMetricDescriptorsResponse"
              (\ o ->
                 ListMetricDescriptorsResponse' <$>
                   (o .:? "metricDescriptors" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListMetricDescriptorsResponse where
        toJSON ListMetricDescriptorsResponse'{..}
          = object
              (catMaybes
                 [("metricDescriptors" .=) <$> _lmdrMetricDescriptors,
                  ("nextPageToken" .=) <$> _lmdrNextPageToken])

-- | A WindowsBasedSli defines good_service as the count of time windows for
-- which the provided service was of good quality. Criteria for determining
-- if service was good are embedded in the window_criterion.
--
-- /See:/ 'windowsBasedSli' smart constructor.
data WindowsBasedSli =
  WindowsBasedSli'
    { _wbsMetricSumInRange :: !(Maybe MetricRange)
    , _wbsWindowPeriod :: !(Maybe GDuration)
    , _wbsGoodTotalRatioThreshold :: !(Maybe PerformanceThreshold)
    , _wbsGoodBadMetricFilter :: !(Maybe Text)
    , _wbsMetricMeanInRange :: !(Maybe MetricRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WindowsBasedSli' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wbsMetricSumInRange'
--
-- * 'wbsWindowPeriod'
--
-- * 'wbsGoodTotalRatioThreshold'
--
-- * 'wbsGoodBadMetricFilter'
--
-- * 'wbsMetricMeanInRange'
windowsBasedSli
    :: WindowsBasedSli
windowsBasedSli =
  WindowsBasedSli'
    { _wbsMetricSumInRange = Nothing
    , _wbsWindowPeriod = Nothing
    , _wbsGoodTotalRatioThreshold = Nothing
    , _wbsGoodBadMetricFilter = Nothing
    , _wbsMetricMeanInRange = Nothing
    }


-- | A window is good if the metric\'s value is in a good range, summed
-- across returned streams.
wbsMetricSumInRange :: Lens' WindowsBasedSli (Maybe MetricRange)
wbsMetricSumInRange
  = lens _wbsMetricSumInRange
      (\ s a -> s{_wbsMetricSumInRange = a})

-- | Duration over which window quality is evaluated. Must be an integer
-- fraction of a day and at least 60s.
wbsWindowPeriod :: Lens' WindowsBasedSli (Maybe Scientific)
wbsWindowPeriod
  = lens _wbsWindowPeriod
      (\ s a -> s{_wbsWindowPeriod = a})
      . mapping _GDuration

-- | A window is good if its performance is high enough.
wbsGoodTotalRatioThreshold :: Lens' WindowsBasedSli (Maybe PerformanceThreshold)
wbsGoodTotalRatioThreshold
  = lens _wbsGoodTotalRatioThreshold
      (\ s a -> s{_wbsGoodTotalRatioThreshold = a})

-- | A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a
-- TimeSeries with ValueType = BOOL. The window is good if any true values
-- appear in the window.
wbsGoodBadMetricFilter :: Lens' WindowsBasedSli (Maybe Text)
wbsGoodBadMetricFilter
  = lens _wbsGoodBadMetricFilter
      (\ s a -> s{_wbsGoodBadMetricFilter = a})

-- | A window is good if the metric\'s value is in a good range, averaged
-- across returned streams.
wbsMetricMeanInRange :: Lens' WindowsBasedSli (Maybe MetricRange)
wbsMetricMeanInRange
  = lens _wbsMetricMeanInRange
      (\ s a -> s{_wbsMetricMeanInRange = a})

instance FromJSON WindowsBasedSli where
        parseJSON
          = withObject "WindowsBasedSli"
              (\ o ->
                 WindowsBasedSli' <$>
                   (o .:? "metricSumInRange") <*> (o .:? "windowPeriod")
                     <*> (o .:? "goodTotalRatioThreshold")
                     <*> (o .:? "goodBadMetricFilter")
                     <*> (o .:? "metricMeanInRange"))

instance ToJSON WindowsBasedSli where
        toJSON WindowsBasedSli'{..}
          = object
              (catMaybes
                 [("metricSumInRange" .=) <$> _wbsMetricSumInRange,
                  ("windowPeriod" .=) <$> _wbsWindowPeriod,
                  ("goodTotalRatioThreshold" .=) <$>
                    _wbsGoodTotalRatioThreshold,
                  ("goodBadMetricFilter" .=) <$>
                    _wbsGoodBadMetricFilter,
                  ("metricMeanInRange" .=) <$> _wbsMetricMeanInRange])

-- | Detailed information about an error category.
--
-- /See:/ 'error'' smart constructor.
data Error' =
  Error''
    { _eStatus :: !(Maybe Status)
    , _ePointCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Error' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eStatus'
--
-- * 'ePointCount'
error'
    :: Error'
error' = Error'' {_eStatus = Nothing, _ePointCount = Nothing}


-- | The status of the requested write operation.
eStatus :: Lens' Error' (Maybe Status)
eStatus = lens _eStatus (\ s a -> s{_eStatus = a})

-- | The number of points that couldn\'t be written because of status.
ePointCount :: Lens' Error' (Maybe Int32)
ePointCount
  = lens _ePointCount (\ s a -> s{_ePointCount = a}) .
      mapping _Coerce

instance FromJSON Error' where
        parseJSON
          = withObject "Error"
              (\ o ->
                 Error'' <$>
                   (o .:? "status") <*> (o .:? "pointCount"))

instance ToJSON Error' where
        toJSON Error''{..}
          = object
              (catMaybes
                 [("status" .=) <$> _eStatus,
                  ("pointCount" .=) <$> _ePointCount])

-- | The VerifyNotificationChannel request.
--
-- /See:/ 'verifyNotificationChannelRequest' smart constructor.
newtype VerifyNotificationChannelRequest =
  VerifyNotificationChannelRequest'
    { _vncrCode :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VerifyNotificationChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vncrCode'
verifyNotificationChannelRequest
    :: VerifyNotificationChannelRequest
verifyNotificationChannelRequest =
  VerifyNotificationChannelRequest' {_vncrCode = Nothing}


-- | Required. The verification code that was delivered to the channel as a
-- result of invoking the SendNotificationChannelVerificationCode API
-- method or that was retrieved from a verified channel via
-- GetNotificationChannelVerificationCode. For example, one might have
-- \"G-123456\" or \"TKNZGhhd2EyN3I1MnRnMjRv\" (in general, one is only
-- guaranteed that the code is valid UTF-8; one should not make any
-- assumptions regarding the structure or format of the code).
vncrCode :: Lens' VerifyNotificationChannelRequest (Maybe Text)
vncrCode = lens _vncrCode (\ s a -> s{_vncrCode = a})

instance FromJSON VerifyNotificationChannelRequest
         where
        parseJSON
          = withObject "VerifyNotificationChannelRequest"
              (\ o ->
                 VerifyNotificationChannelRequest' <$> (o .:? "code"))

instance ToJSON VerifyNotificationChannelRequest
         where
        toJSON VerifyNotificationChannelRequest'{..}
          = object (catMaybes [("code" .=) <$> _vncrCode])

-- | The option\'s value packed in an Any message. If the value is a
-- primitive, the corresponding wrapper type defined in
-- google\/protobuf\/wrappers.proto should be used. If the value is an
-- enum, it should be stored as an int32 value using the
-- google.protobuf.Int32Value type.
--
-- /See:/ 'optionValue' smart constructor.
newtype OptionValue =
  OptionValue'
    { _ovAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OptionValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ovAddtional'
optionValue
    :: HashMap Text JSONValue -- ^ 'ovAddtional'
    -> OptionValue
optionValue pOvAddtional_ =
  OptionValue' {_ovAddtional = _Coerce # pOvAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
ovAddtional :: Lens' OptionValue (HashMap Text JSONValue)
ovAddtional
  = lens _ovAddtional (\ s a -> s{_ovAddtional = a}) .
      _Coerce

instance FromJSON OptionValue where
        parseJSON
          = withObject "OptionValue"
              (\ o -> OptionValue' <$> (parseJSONObject o))

instance ToJSON OptionValue where
        toJSON = toJSON . _ovAddtional

-- | A DistributionCut defines a TimeSeries and thresholds used for measuring
-- good service and total service. The TimeSeries must have ValueType =
-- DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE. The
-- computed good_service will be the estimated count of values in the
-- Distribution that fall within the specified min and max.
--
-- /See:/ 'distributionCut' smart constructor.
data DistributionCut =
  DistributionCut'
    { _dcRange :: !(Maybe GoogleMonitoringV3Range)
    , _dcDistributionFilter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DistributionCut' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcRange'
--
-- * 'dcDistributionFilter'
distributionCut
    :: DistributionCut
distributionCut =
  DistributionCut' {_dcRange = Nothing, _dcDistributionFilter = Nothing}


-- | Range of values considered \"good.\" For a one-sided range, set one
-- bound to an infinite value.
dcRange :: Lens' DistributionCut (Maybe GoogleMonitoringV3Range)
dcRange = lens _dcRange (\ s a -> s{_dcRange = a})

-- | A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying a
-- TimeSeries aggregating values. Must have ValueType = DISTRIBUTION and
-- MetricKind = DELTA or MetricKind = CUMULATIVE.
dcDistributionFilter :: Lens' DistributionCut (Maybe Text)
dcDistributionFilter
  = lens _dcDistributionFilter
      (\ s a -> s{_dcDistributionFilter = a})

instance FromJSON DistributionCut where
        parseJSON
          = withObject "DistributionCut"
              (\ o ->
                 DistributionCut' <$>
                   (o .:? "range") <*> (o .:? "distributionFilter"))

instance ToJSON DistributionCut where
        toJSON DistributionCut'{..}
          = object
              (catMaybes
                 [("range" .=) <$> _dcRange,
                  ("distributionFilter" .=) <$> _dcDistributionFilter])

-- | A MetricRange is used when each window is good when the value x of a
-- single TimeSeries satisfies range.min \<= x \<= range.max. The provided
-- TimeSeries must have ValueType = INT64 or ValueType = DOUBLE and
-- MetricKind = GAUGE.
--
-- /See:/ 'metricRange' smart constructor.
data MetricRange =
  MetricRange'
    { _mrRange :: !(Maybe GoogleMonitoringV3Range)
    , _mrTimeSeries :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrRange'
--
-- * 'mrTimeSeries'
metricRange
    :: MetricRange
metricRange = MetricRange' {_mrRange = Nothing, _mrTimeSeries = Nothing}


-- | Range of values considered \"good.\" For a one-sided range, set one
-- bound to an infinite value.
mrRange :: Lens' MetricRange (Maybe GoogleMonitoringV3Range)
mrRange = lens _mrRange (\ s a -> s{_mrRange = a})

-- | A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifying
-- the TimeSeries to use for evaluating window quality.
mrTimeSeries :: Lens' MetricRange (Maybe Text)
mrTimeSeries
  = lens _mrTimeSeries (\ s a -> s{_mrTimeSeries = a})

instance FromJSON MetricRange where
        parseJSON
          = withObject "MetricRange"
              (\ o ->
                 MetricRange' <$>
                   (o .:? "range") <*> (o .:? "timeSeries"))

instance ToJSON MetricRange where
        toJSON MetricRange'{..}
          = object
              (catMaybes
                 [("range" .=) <$> _mrRange,
                  ("timeSeries" .=) <$> _mrTimeSeries])

-- | Configuration fields that define the channel and its behavior. The
-- permissible and required labels are specified in the
-- NotificationChannelDescriptor.labels of the
-- NotificationChannelDescriptor corresponding to the type field.
--
-- /See:/ 'notificationChannelLabels' smart constructor.
newtype NotificationChannelLabels =
  NotificationChannelLabels'
    { _nclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationChannelLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nclAddtional'
notificationChannelLabels
    :: HashMap Text Text -- ^ 'nclAddtional'
    -> NotificationChannelLabels
notificationChannelLabels pNclAddtional_ =
  NotificationChannelLabels' {_nclAddtional = _Coerce # pNclAddtional_}


nclAddtional :: Lens' NotificationChannelLabels (HashMap Text Text)
nclAddtional
  = lens _nclAddtional (\ s a -> s{_nclAddtional = a})
      . _Coerce

instance FromJSON NotificationChannelLabels where
        parseJSON
          = withObject "NotificationChannelLabels"
              (\ o ->
                 NotificationChannelLabels' <$> (parseJSONObject o))

instance ToJSON NotificationChannelLabels where
        toJSON = toJSON . _nclAddtional

-- | The CreateTimeSeries request.
--
-- /See:/ 'createTimeSeriesRequest' smart constructor.
newtype CreateTimeSeriesRequest =
  CreateTimeSeriesRequest'
    { _ctsrTimeSeries :: Maybe [TimeSeries]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateTimeSeriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctsrTimeSeries'
createTimeSeriesRequest
    :: CreateTimeSeriesRequest
createTimeSeriesRequest = CreateTimeSeriesRequest' {_ctsrTimeSeries = Nothing}


-- | Required. The new data to be added to a list of time series. Adds at
-- most one data point to each of several time series. The new data point
-- must be more recent than any other point in its time series. Each
-- TimeSeries value must fully specify a unique time series by supplying
-- all label values for the metric and the monitored resource.The maximum
-- number of TimeSeries objects per Create request is 200.
ctsrTimeSeries :: Lens' CreateTimeSeriesRequest [TimeSeries]
ctsrTimeSeries
  = lens _ctsrTimeSeries
      (\ s a -> s{_ctsrTimeSeries = a})
      . _Default
      . _Coerce

instance FromJSON CreateTimeSeriesRequest where
        parseJSON
          = withObject "CreateTimeSeriesRequest"
              (\ o ->
                 CreateTimeSeriesRequest' <$>
                   (o .:? "timeSeries" .!= mempty))

instance ToJSON CreateTimeSeriesRequest where
        toJSON CreateTimeSeriesRequest'{..}
          = object
              (catMaybes [("timeSeries" .=) <$> _ctsrTimeSeries])

-- | Custom view of service telemetry. Currently a place-holder pending final
-- design.
--
-- /See:/ 'custom' smart constructor.
data Custom =
  Custom'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Custom' with the minimum fields required to make a request.
--
custom
    :: Custom
custom = Custom'


instance FromJSON Custom where
        parseJSON = withObject "Custom" (\ o -> pure Custom')

instance ToJSON Custom where
        toJSON = const emptyObject

-- | Map from label to its value, for all labels dropped in any aggregation.
--
-- /See:/ 'droppedLabelsLabel' smart constructor.
newtype DroppedLabelsLabel =
  DroppedLabelsLabel'
    { _dllAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DroppedLabelsLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dllAddtional'
droppedLabelsLabel
    :: HashMap Text Text -- ^ 'dllAddtional'
    -> DroppedLabelsLabel
droppedLabelsLabel pDllAddtional_ =
  DroppedLabelsLabel' {_dllAddtional = _Coerce # pDllAddtional_}


dllAddtional :: Lens' DroppedLabelsLabel (HashMap Text Text)
dllAddtional
  = lens _dllAddtional (\ s a -> s{_dllAddtional = a})
      . _Coerce

instance FromJSON DroppedLabelsLabel where
        parseJSON
          = withObject "DroppedLabelsLabel"
              (\ o -> DroppedLabelsLabel' <$> (parseJSONObject o))

instance ToJSON DroppedLabelsLabel where
        toJSON = toJSON . _dllAddtional

-- | A condition type that compares a collection of time series against a
-- threshold.
--
-- /See:/ 'metricThreshold' smart constructor.
data MetricThreshold =
  MetricThreshold'
    { _mtThresholdValue :: !(Maybe (Textual Double))
    , _mtAggregations :: !(Maybe [Aggregation])
    , _mtDenominatorAggregations :: !(Maybe [Aggregation])
    , _mtComparison :: !(Maybe MetricThresholdComparison)
    , _mtDenominatorFilter :: !(Maybe Text)
    , _mtFilter :: !(Maybe Text)
    , _mtTrigger :: !(Maybe Trigger)
    , _mtDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricThreshold' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtThresholdValue'
--
-- * 'mtAggregations'
--
-- * 'mtDenominatorAggregations'
--
-- * 'mtComparison'
--
-- * 'mtDenominatorFilter'
--
-- * 'mtFilter'
--
-- * 'mtTrigger'
--
-- * 'mtDuration'
metricThreshold
    :: MetricThreshold
metricThreshold =
  MetricThreshold'
    { _mtThresholdValue = Nothing
    , _mtAggregations = Nothing
    , _mtDenominatorAggregations = Nothing
    , _mtComparison = Nothing
    , _mtDenominatorFilter = Nothing
    , _mtFilter = Nothing
    , _mtTrigger = Nothing
    , _mtDuration = Nothing
    }


-- | A value against which to compare the time series.
mtThresholdValue :: Lens' MetricThreshold (Maybe Double)
mtThresholdValue
  = lens _mtThresholdValue
      (\ s a -> s{_mtThresholdValue = a})
      . mapping _Coerce

-- | Specifies the alignment of data points in individual time series as well
-- as how to combine the retrieved time series together (such as when
-- aggregating multiple streams on each resource to a single stream for
-- each resource or when aggregating streams across all members of a group
-- of resrouces). Multiple aggregations are applied in the order
-- specified.This field is similar to the one in the ListTimeSeries request
-- (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list).
-- It is advisable to use the ListTimeSeries method when debugging this
-- field.
mtAggregations :: Lens' MetricThreshold [Aggregation]
mtAggregations
  = lens _mtAggregations
      (\ s a -> s{_mtAggregations = a})
      . _Default
      . _Coerce

-- | Specifies the alignment of data points in individual time series
-- selected by denominatorFilter as well as how to combine the retrieved
-- time series together (such as when aggregating multiple streams on each
-- resource to a single stream for each resource or when aggregating
-- streams across all members of a group of resources).When computing
-- ratios, the aggregations and denominator_aggregations fields must use
-- the same alignment period and produce time series that have the same
-- periodicity and labels.
mtDenominatorAggregations :: Lens' MetricThreshold [Aggregation]
mtDenominatorAggregations
  = lens _mtDenominatorAggregations
      (\ s a -> s{_mtDenominatorAggregations = a})
      . _Default
      . _Coerce

-- | The comparison to apply between the time series (indicated by filter and
-- aggregation) and the threshold (indicated by threshold_value). The
-- comparison is applied on each time series, with the time series on the
-- left-hand side and the threshold on the right-hand side.Only
-- COMPARISON_LT and COMPARISON_GT are supported currently.
mtComparison :: Lens' MetricThreshold (Maybe MetricThresholdComparison)
mtComparison
  = lens _mtComparison (\ s a -> s{_mtComparison = a})

-- | A filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that
-- identifies a time series that should be used as the denominator of a
-- ratio that will be compared with the threshold. If a denominator_filter
-- is specified, the time series specified by the filter field will be used
-- as the numerator.The filter must specify the metric type and optionally
-- may contain restrictions on resource type, resource labels, and metric
-- labels. This field may not exceed 2048 Unicode characters in length.
mtDenominatorFilter :: Lens' MetricThreshold (Maybe Text)
mtDenominatorFilter
  = lens _mtDenominatorFilter
      (\ s a -> s{_mtDenominatorFilter = a})

-- | Required. A filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that
-- identifies which time series should be compared with the threshold.The
-- filter is similar to the one that is specified in the ListTimeSeries
-- request
-- (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list)
-- (that call is useful to verify the time series that will be retrieved \/
-- processed). The filter must specify the metric type and the resource
-- type. Optionally, it can specify resource labels and metric labels. This
-- field must not exceed 2048 Unicode characters in length.
mtFilter :: Lens' MetricThreshold (Maybe Text)
mtFilter = lens _mtFilter (\ s a -> s{_mtFilter = a})

-- | The number\/percent of time series for which the comparison must hold in
-- order for the condition to trigger. If unspecified, then the condition
-- will trigger if the comparison is true for any of the time series that
-- have been identified by filter and aggregations, or by the ratio, if
-- denominator_filter and denominator_aggregations are specified.
mtTrigger :: Lens' MetricThreshold (Maybe Trigger)
mtTrigger
  = lens _mtTrigger (\ s a -> s{_mtTrigger = a})

-- | The amount of time that a time series must violate the threshold to be
-- considered failing. Currently, only values that are a multiple of a
-- minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid
-- value is given, an error will be returned. When choosing a duration, it
-- is useful to keep in mind the frequency of the underlying time series
-- data (which may also be affected by any alignments specified in the
-- aggregations field); a good duration is long enough so that a single
-- outlier does not generate spurious alerts, but short enough that
-- unhealthy states are detected and alerted on quickly.
mtDuration :: Lens' MetricThreshold (Maybe Scientific)
mtDuration
  = lens _mtDuration (\ s a -> s{_mtDuration = a}) .
      mapping _GDuration

instance FromJSON MetricThreshold where
        parseJSON
          = withObject "MetricThreshold"
              (\ o ->
                 MetricThreshold' <$>
                   (o .:? "thresholdValue") <*>
                     (o .:? "aggregations" .!= mempty)
                     <*> (o .:? "denominatorAggregations" .!= mempty)
                     <*> (o .:? "comparison")
                     <*> (o .:? "denominatorFilter")
                     <*> (o .:? "filter")
                     <*> (o .:? "trigger")
                     <*> (o .:? "duration"))

instance ToJSON MetricThreshold where
        toJSON MetricThreshold'{..}
          = object
              (catMaybes
                 [("thresholdValue" .=) <$> _mtThresholdValue,
                  ("aggregations" .=) <$> _mtAggregations,
                  ("denominatorAggregations" .=) <$>
                    _mtDenominatorAggregations,
                  ("comparison" .=) <$> _mtComparison,
                  ("denominatorFilter" .=) <$> _mtDenominatorFilter,
                  ("filter" .=) <$> _mtFilter,
                  ("trigger" .=) <$> _mtTrigger,
                  ("duration" .=) <$> _mtDuration])

-- | The context of a span. This is attached to an Exemplar in Distribution
-- values during aggregation.It contains the name of a span with format:
-- projects\/[PROJECT_ID_OR_NUMBER]\/traces\/[TRACE_ID]\/spans\/[SPAN_ID]
--
-- /See:/ 'spanContext' smart constructor.
newtype SpanContext =
  SpanContext'
    { _scSpanName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpanContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scSpanName'
spanContext
    :: SpanContext
spanContext = SpanContext' {_scSpanName = Nothing}


-- | The resource name of the span. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/traces\/[TRACE_ID]\/spans\/[SPAN_ID]
-- [TRACE_ID] is a unique identifier for a trace within a project; it is a
-- 32-character hexadecimal encoding of a 16-byte array.[SPAN_ID] is a
-- unique identifier for a span within a trace; it is a 16-character
-- hexadecimal encoding of an 8-byte array.
scSpanName :: Lens' SpanContext (Maybe Text)
scSpanName
  = lens _scSpanName (\ s a -> s{_scSpanName = a})

instance FromJSON SpanContext where
        parseJSON
          = withObject "SpanContext"
              (\ o -> SpanContext' <$> (o .:? "spanName"))

instance ToJSON SpanContext where
        toJSON SpanContext'{..}
          = object
              (catMaybes [("spanName" .=) <$> _scSpanName])

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

-- | Summary of the result of a failed request to write data to a time
-- series.
--
-- /See:/ 'createTimeSeriesSummary' smart constructor.
data CreateTimeSeriesSummary =
  CreateTimeSeriesSummary'
    { _ctssTotalPointCount :: !(Maybe (Textual Int32))
    , _ctssSuccessPointCount :: !(Maybe (Textual Int32))
    , _ctssErrors :: !(Maybe [Error'])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateTimeSeriesSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctssTotalPointCount'
--
-- * 'ctssSuccessPointCount'
--
-- * 'ctssErrors'
createTimeSeriesSummary
    :: CreateTimeSeriesSummary
createTimeSeriesSummary =
  CreateTimeSeriesSummary'
    { _ctssTotalPointCount = Nothing
    , _ctssSuccessPointCount = Nothing
    , _ctssErrors = Nothing
    }


-- | The number of points in the request.
ctssTotalPointCount :: Lens' CreateTimeSeriesSummary (Maybe Int32)
ctssTotalPointCount
  = lens _ctssTotalPointCount
      (\ s a -> s{_ctssTotalPointCount = a})
      . mapping _Coerce

-- | The number of points that were successfully written.
ctssSuccessPointCount :: Lens' CreateTimeSeriesSummary (Maybe Int32)
ctssSuccessPointCount
  = lens _ctssSuccessPointCount
      (\ s a -> s{_ctssSuccessPointCount = a})
      . mapping _Coerce

-- | The number of points that failed to be written. Order is not guaranteed.
ctssErrors :: Lens' CreateTimeSeriesSummary [Error']
ctssErrors
  = lens _ctssErrors (\ s a -> s{_ctssErrors = a}) .
      _Default
      . _Coerce

instance FromJSON CreateTimeSeriesSummary where
        parseJSON
          = withObject "CreateTimeSeriesSummary"
              (\ o ->
                 CreateTimeSeriesSummary' <$>
                   (o .:? "totalPointCount") <*>
                     (o .:? "successPointCount")
                     <*> (o .:? "errors" .!= mempty))

instance ToJSON CreateTimeSeriesSummary where
        toJSON CreateTimeSeriesSummary'{..}
          = object
              (catMaybes
                 [("totalPointCount" .=) <$> _ctssTotalPointCount,
                  ("successPointCount" .=) <$> _ctssSuccessPointCount,
                  ("errors" .=) <$> _ctssErrors])

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

-- | An internal checker allows Uptime checks to run on private\/internal GCP
-- resources.
--
-- /See:/ 'internalChecker' smart constructor.
data InternalChecker =
  InternalChecker'
    { _icState :: !(Maybe InternalCheckerState)
    , _icNetwork :: !(Maybe Text)
    , _icName :: !(Maybe Text)
    , _icPeerProjectId :: !(Maybe Text)
    , _icGcpZone :: !(Maybe Text)
    , _icDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InternalChecker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icState'
--
-- * 'icNetwork'
--
-- * 'icName'
--
-- * 'icPeerProjectId'
--
-- * 'icGcpZone'
--
-- * 'icDisplayName'
internalChecker
    :: InternalChecker
internalChecker =
  InternalChecker'
    { _icState = Nothing
    , _icNetwork = Nothing
    , _icName = Nothing
    , _icPeerProjectId = Nothing
    , _icGcpZone = Nothing
    , _icDisplayName = Nothing
    }


-- | The current operational state of the internal checker.
icState :: Lens' InternalChecker (Maybe InternalCheckerState)
icState = lens _icState (\ s a -> s{_icState = a})

-- | The GCP VPC network (https:\/\/cloud.google.com\/vpc\/docs\/vpc) where
-- the internal resource lives (ex: \"default\").
icNetwork :: Lens' InternalChecker (Maybe Text)
icNetwork
  = lens _icNetwork (\ s a -> s{_icNetwork = a})

-- | A unique resource name for this InternalChecker. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/internalCheckers\/[INTERNAL_CHECKER_ID]
-- [PROJECT_ID_OR_NUMBER] is the Stackdriver Workspace project for the
-- Uptime check config associated with the internal checker.
icName :: Lens' InternalChecker (Maybe Text)
icName = lens _icName (\ s a -> s{_icName = a})

-- | The GCP project ID where the internal checker lives. Not necessary the
-- same as the Workspace project.
icPeerProjectId :: Lens' InternalChecker (Maybe Text)
icPeerProjectId
  = lens _icPeerProjectId
      (\ s a -> s{_icPeerProjectId = a})

-- | The GCP zone the Uptime check should egress from. Only respected for
-- internal Uptime checks, where internal_network is specified.
icGcpZone :: Lens' InternalChecker (Maybe Text)
icGcpZone
  = lens _icGcpZone (\ s a -> s{_icGcpZone = a})

-- | The checker\'s human-readable name. The display name should be unique
-- within a Stackdriver Workspace in order to make it easier to identify;
-- however, uniqueness is not enforced.
icDisplayName :: Lens' InternalChecker (Maybe Text)
icDisplayName
  = lens _icDisplayName
      (\ s a -> s{_icDisplayName = a})

instance FromJSON InternalChecker where
        parseJSON
          = withObject "InternalChecker"
              (\ o ->
                 InternalChecker' <$>
                   (o .:? "state") <*> (o .:? "network") <*>
                     (o .:? "name")
                     <*> (o .:? "peerProjectId")
                     <*> (o .:? "gcpZone")
                     <*> (o .:? "displayName"))

instance ToJSON InternalChecker where
        toJSON InternalChecker'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _icState,
                  ("network" .=) <$> _icNetwork,
                  ("name" .=) <$> _icName,
                  ("peerProjectId" .=) <$> _icPeerProjectId,
                  ("gcpZone" .=) <$> _icGcpZone,
                  ("displayName" .=) <$> _icDisplayName])

-- | A NotificationChannel is a medium through which an alert is delivered
-- when a policy violation is detected. Examples of channels include email,
-- SMS, and third-party messaging applications. Fields containing sensitive
-- information like authentication tokens or contact info are only
-- partially populated on retrieval.
--
-- /See:/ 'notificationChannel' smart constructor.
data NotificationChannel =
  NotificationChannel'
    { _ncMutationRecords :: !(Maybe [MutationRecord])
    , _ncEnabled :: !(Maybe Bool)
    , _ncCreationRecord :: !(Maybe MutationRecord)
    , _ncUserLabels :: !(Maybe NotificationChannelUserLabels)
    , _ncName :: !(Maybe Text)
    , _ncDisplayName :: !(Maybe Text)
    , _ncVerificationStatus :: !(Maybe NotificationChannelVerificationStatus)
    , _ncLabels :: !(Maybe NotificationChannelLabels)
    , _ncType :: !(Maybe Text)
    , _ncDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncMutationRecords'
--
-- * 'ncEnabled'
--
-- * 'ncCreationRecord'
--
-- * 'ncUserLabels'
--
-- * 'ncName'
--
-- * 'ncDisplayName'
--
-- * 'ncVerificationStatus'
--
-- * 'ncLabels'
--
-- * 'ncType'
--
-- * 'ncDescription'
notificationChannel
    :: NotificationChannel
notificationChannel =
  NotificationChannel'
    { _ncMutationRecords = Nothing
    , _ncEnabled = Nothing
    , _ncCreationRecord = Nothing
    , _ncUserLabels = Nothing
    , _ncName = Nothing
    , _ncDisplayName = Nothing
    , _ncVerificationStatus = Nothing
    , _ncLabels = Nothing
    , _ncType = Nothing
    , _ncDescription = Nothing
    }


-- | Records of the modification of this channel.
ncMutationRecords :: Lens' NotificationChannel [MutationRecord]
ncMutationRecords
  = lens _ncMutationRecords
      (\ s a -> s{_ncMutationRecords = a})
      . _Default
      . _Coerce

-- | Whether notifications are forwarded to the described channel. This makes
-- it possible to disable delivery of notifications to a particular channel
-- without removing the channel from all alerting policies that reference
-- the channel. This is a more convenient approach when the change is
-- temporary and you want to receive notifications from the same set of
-- alerting policies on the channel at some point in the future.
ncEnabled :: Lens' NotificationChannel (Maybe Bool)
ncEnabled
  = lens _ncEnabled (\ s a -> s{_ncEnabled = a})

-- | Record of the creation of this channel.
ncCreationRecord :: Lens' NotificationChannel (Maybe MutationRecord)
ncCreationRecord
  = lens _ncCreationRecord
      (\ s a -> s{_ncCreationRecord = a})

-- | User-supplied key\/value data that does not need to conform to the
-- corresponding NotificationChannelDescriptor\'s schema, unlike the labels
-- field. This field is intended to be used for organizing and identifying
-- the NotificationChannel objects.The field can contain up to 64 entries.
-- Each key and value is limited to 63 Unicode characters or 128 bytes,
-- whichever is smaller. Labels and values can contain only lowercase
-- letters, numerals, underscores, and dashes. Keys must begin with a
-- letter.
ncUserLabels :: Lens' NotificationChannel (Maybe NotificationChannelUserLabels)
ncUserLabels
  = lens _ncUserLabels (\ s a -> s{_ncUserLabels = a})

-- | The full REST resource name for this channel. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/notificationChannels\/[CHANNEL_ID] The
-- [CHANNEL_ID] is automatically assigned by the server on creation.
ncName :: Lens' NotificationChannel (Maybe Text)
ncName = lens _ncName (\ s a -> s{_ncName = a})

-- | An optional human-readable name for this notification channel. It is
-- recommended that you specify a non-empty and unique name in order to
-- make it easier to identify the channels in your project, though this is
-- not enforced. The display name is limited to 512 Unicode characters.
ncDisplayName :: Lens' NotificationChannel (Maybe Text)
ncDisplayName
  = lens _ncDisplayName
      (\ s a -> s{_ncDisplayName = a})

-- | Indicates whether this channel has been verified or not. On a
-- ListNotificationChannels or GetNotificationChannel operation, this field
-- is expected to be populated.If the value is UNVERIFIED, then it
-- indicates that the channel is non-functioning (it both requires
-- verification and lacks verification); otherwise, it is assumed that the
-- channel works.If the channel is neither VERIFIED nor UNVERIFIED, it
-- implies that the channel is of a type that does not require verification
-- or that this specific channel has been exempted from verification
-- because it was created prior to verification being required for channels
-- of this type.This field cannot be modified using a standard
-- UpdateNotificationChannel operation. To change the value of this field,
-- you must call VerifyNotificationChannel.
ncVerificationStatus :: Lens' NotificationChannel (Maybe NotificationChannelVerificationStatus)
ncVerificationStatus
  = lens _ncVerificationStatus
      (\ s a -> s{_ncVerificationStatus = a})

-- | Configuration fields that define the channel and its behavior. The
-- permissible and required labels are specified in the
-- NotificationChannelDescriptor.labels of the
-- NotificationChannelDescriptor corresponding to the type field.
ncLabels :: Lens' NotificationChannel (Maybe NotificationChannelLabels)
ncLabels = lens _ncLabels (\ s a -> s{_ncLabels = a})

-- | The type of the notification channel. This field matches the value of
-- the NotificationChannelDescriptor.type field.
ncType :: Lens' NotificationChannel (Maybe Text)
ncType = lens _ncType (\ s a -> s{_ncType = a})

-- | An optional human-readable description of this notification channel.
-- This description may provide additional details, beyond the display
-- name, for the channel. This may not exceed 1024 Unicode characters.
ncDescription :: Lens' NotificationChannel (Maybe Text)
ncDescription
  = lens _ncDescription
      (\ s a -> s{_ncDescription = a})

instance FromJSON NotificationChannel where
        parseJSON
          = withObject "NotificationChannel"
              (\ o ->
                 NotificationChannel' <$>
                   (o .:? "mutationRecords" .!= mempty) <*>
                     (o .:? "enabled")
                     <*> (o .:? "creationRecord")
                     <*> (o .:? "userLabels")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "verificationStatus")
                     <*> (o .:? "labels")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON NotificationChannel where
        toJSON NotificationChannel'{..}
          = object
              (catMaybes
                 [("mutationRecords" .=) <$> _ncMutationRecords,
                  ("enabled" .=) <$> _ncEnabled,
                  ("creationRecord" .=) <$> _ncCreationRecord,
                  ("userLabels" .=) <$> _ncUserLabels,
                  ("name" .=) <$> _ncName,
                  ("displayName" .=) <$> _ncDisplayName,
                  ("verificationStatus" .=) <$> _ncVerificationStatus,
                  ("labels" .=) <$> _ncLabels, ("type" .=) <$> _ncType,
                  ("description" .=) <$> _ncDescription])

-- | The ListServiceLevelObjectives response.
--
-- /See:/ 'listServiceLevelObjectivesResponse' smart constructor.
data ListServiceLevelObjectivesResponse =
  ListServiceLevelObjectivesResponse'
    { _lslorNextPageToken :: !(Maybe Text)
    , _lslorServiceLevelObjectives :: !(Maybe [ServiceLevelObjective])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListServiceLevelObjectivesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslorNextPageToken'
--
-- * 'lslorServiceLevelObjectives'
listServiceLevelObjectivesResponse
    :: ListServiceLevelObjectivesResponse
listServiceLevelObjectivesResponse =
  ListServiceLevelObjectivesResponse'
    {_lslorNextPageToken = Nothing, _lslorServiceLevelObjectives = Nothing}


-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
lslorNextPageToken :: Lens' ListServiceLevelObjectivesResponse (Maybe Text)
lslorNextPageToken
  = lens _lslorNextPageToken
      (\ s a -> s{_lslorNextPageToken = a})

-- | The ServiceLevelObjectives matching the specified filter.
lslorServiceLevelObjectives :: Lens' ListServiceLevelObjectivesResponse [ServiceLevelObjective]
lslorServiceLevelObjectives
  = lens _lslorServiceLevelObjectives
      (\ s a -> s{_lslorServiceLevelObjectives = a})
      . _Default
      . _Coerce

instance FromJSON ListServiceLevelObjectivesResponse
         where
        parseJSON
          = withObject "ListServiceLevelObjectivesResponse"
              (\ o ->
                 ListServiceLevelObjectivesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "serviceLevelObjectives" .!= mempty))

instance ToJSON ListServiceLevelObjectivesResponse
         where
        toJSON ListServiceLevelObjectivesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lslorNextPageToken,
                  ("serviceLevelObjectives" .=) <$>
                    _lslorServiceLevelObjectives])

-- | The ListMonitoredResourceDescriptors response.
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


-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
lmrdrNextPageToken :: Lens' ListMonitoredResourceDescriptorsResponse (Maybe Text)
lmrdrNextPageToken
  = lens _lmrdrNextPageToken
      (\ s a -> s{_lmrdrNextPageToken = a})

-- | The monitored resource descriptors that are available to this project
-- and that match filter, if present.
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

-- | The set of label values that uniquely identify this metric. All labels
-- listed in the MetricDescriptor must be assigned values.
--
-- /See:/ 'metricLabels' smart constructor.
newtype MetricLabels =
  MetricLabels'
    { _mlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlAddtional'
metricLabels
    :: HashMap Text Text -- ^ 'mlAddtional'
    -> MetricLabels
metricLabels pMlAddtional_ =
  MetricLabels' {_mlAddtional = _Coerce # pMlAddtional_}


mlAddtional :: Lens' MetricLabels (HashMap Text Text)
mlAddtional
  = lens _mlAddtional (\ s a -> s{_mlAddtional = a}) .
      _Coerce

instance FromJSON MetricLabels where
        parseJSON
          = withObject "MetricLabels"
              (\ o -> MetricLabels' <$> (parseJSONObject o))

instance ToJSON MetricLabels where
        toJSON = toJSON . _mlAddtional

-- | The measurement metadata. Example: \"process_id\" -> 12345
--
-- /See:/ 'collectdPayloadMetadata' smart constructor.
newtype CollectdPayloadMetadata =
  CollectdPayloadMetadata'
    { _cpmAddtional :: HashMap Text TypedValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectdPayloadMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpmAddtional'
collectdPayloadMetadata
    :: HashMap Text TypedValue -- ^ 'cpmAddtional'
    -> CollectdPayloadMetadata
collectdPayloadMetadata pCpmAddtional_ =
  CollectdPayloadMetadata' {_cpmAddtional = _Coerce # pCpmAddtional_}


cpmAddtional :: Lens' CollectdPayloadMetadata (HashMap Text TypedValue)
cpmAddtional
  = lens _cpmAddtional (\ s a -> s{_cpmAddtional = a})
      . _Coerce

instance FromJSON CollectdPayloadMetadata where
        parseJSON
          = withObject "CollectdPayloadMetadata"
              (\ o ->
                 CollectdPayloadMetadata' <$> (parseJSONObject o))

instance ToJSON CollectdPayloadMetadata where
        toJSON = toJSON . _cpmAddtional

-- | A single data point from a collectd-based plugin.
--
-- /See:/ 'collectdValue' smart constructor.
data CollectdValue =
  CollectdValue'
    { _cvDataSourceName :: !(Maybe Text)
    , _cvDataSourceType :: !(Maybe CollectdValueDataSourceType)
    , _cvValue :: !(Maybe TypedValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectdValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvDataSourceName'
--
-- * 'cvDataSourceType'
--
-- * 'cvValue'
collectdValue
    :: CollectdValue
collectdValue =
  CollectdValue'
    { _cvDataSourceName = Nothing
    , _cvDataSourceType = Nothing
    , _cvValue = Nothing
    }


-- | The data source for the collectd value. For example, there are two data
-- sources for network measurements: \"rx\" and \"tx\".
cvDataSourceName :: Lens' CollectdValue (Maybe Text)
cvDataSourceName
  = lens _cvDataSourceName
      (\ s a -> s{_cvDataSourceName = a})

-- | The type of measurement.
cvDataSourceType :: Lens' CollectdValue (Maybe CollectdValueDataSourceType)
cvDataSourceType
  = lens _cvDataSourceType
      (\ s a -> s{_cvDataSourceType = a})

-- | The measurement value.
cvValue :: Lens' CollectdValue (Maybe TypedValue)
cvValue = lens _cvValue (\ s a -> s{_cvValue = a})

instance FromJSON CollectdValue where
        parseJSON
          = withObject "CollectdValue"
              (\ o ->
                 CollectdValue' <$>
                   (o .:? "dataSourceName") <*> (o .:? "dataSourceType")
                     <*> (o .:? "value"))

instance ToJSON CollectdValue where
        toJSON CollectdValue'{..}
          = object
              (catMaybes
                 [("dataSourceName" .=) <$> _cvDataSourceName,
                  ("dataSourceType" .=) <$> _cvDataSourceType,
                  ("value" .=) <$> _cvValue])

-- | The CreateCollectdTimeSeries request.
--
-- /See:/ 'createCollectdTimeSeriesRequest' smart constructor.
data CreateCollectdTimeSeriesRequest =
  CreateCollectdTimeSeriesRequest'
    { _cctsrCollectdPayloads :: !(Maybe [CollectdPayload])
    , _cctsrResource :: !(Maybe MonitoredResource)
    , _cctsrCollectdVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateCollectdTimeSeriesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cctsrCollectdPayloads'
--
-- * 'cctsrResource'
--
-- * 'cctsrCollectdVersion'
createCollectdTimeSeriesRequest
    :: CreateCollectdTimeSeriesRequest
createCollectdTimeSeriesRequest =
  CreateCollectdTimeSeriesRequest'
    { _cctsrCollectdPayloads = Nothing
    , _cctsrResource = Nothing
    , _cctsrCollectdVersion = Nothing
    }


-- | The collectd payloads representing the time series data. You must not
-- include more than a single point for each time series, so no two
-- payloads can have the same values for all of the fields plugin,
-- plugin_instance, type, and type_instance.
cctsrCollectdPayloads :: Lens' CreateCollectdTimeSeriesRequest [CollectdPayload]
cctsrCollectdPayloads
  = lens _cctsrCollectdPayloads
      (\ s a -> s{_cctsrCollectdPayloads = a})
      . _Default
      . _Coerce

-- | The monitored resource associated with the time series.
cctsrResource :: Lens' CreateCollectdTimeSeriesRequest (Maybe MonitoredResource)
cctsrResource
  = lens _cctsrResource
      (\ s a -> s{_cctsrResource = a})

-- | The version of collectd that collected the data. Example:
-- \"5.3.0-192.el6\".
cctsrCollectdVersion :: Lens' CreateCollectdTimeSeriesRequest (Maybe Text)
cctsrCollectdVersion
  = lens _cctsrCollectdVersion
      (\ s a -> s{_cctsrCollectdVersion = a})

instance FromJSON CreateCollectdTimeSeriesRequest
         where
        parseJSON
          = withObject "CreateCollectdTimeSeriesRequest"
              (\ o ->
                 CreateCollectdTimeSeriesRequest' <$>
                   (o .:? "collectdPayloads" .!= mempty) <*>
                     (o .:? "resource")
                     <*> (o .:? "collectdVersion"))

instance ToJSON CreateCollectdTimeSeriesRequest where
        toJSON CreateCollectdTimeSeriesRequest'{..}
          = object
              (catMaybes
                 [("collectdPayloads" .=) <$> _cctsrCollectdPayloads,
                  ("resource" .=) <$> _cctsrResource,
                  ("collectdVersion" .=) <$> _cctsrCollectdVersion])

-- | A point\'s value columns and time interval. Each point has one or more
-- point values corresponding to the entries in point_descriptors field in
-- the TimeSeriesDescriptor associated with this object.
--
-- /See:/ 'pointData' smart constructor.
data PointData =
  PointData'
    { _pdValues :: !(Maybe [TypedValue])
    , _pdTimeInterval :: !(Maybe TimeInterval)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PointData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdValues'
--
-- * 'pdTimeInterval'
pointData
    :: PointData
pointData = PointData' {_pdValues = Nothing, _pdTimeInterval = Nothing}


-- | The values that make up the point.
pdValues :: Lens' PointData [TypedValue]
pdValues
  = lens _pdValues (\ s a -> s{_pdValues = a}) .
      _Default
      . _Coerce

-- | The time interval associated with the point.
pdTimeInterval :: Lens' PointData (Maybe TimeInterval)
pdTimeInterval
  = lens _pdTimeInterval
      (\ s a -> s{_pdTimeInterval = a})

instance FromJSON PointData where
        parseJSON
          = withObject "PointData"
              (\ o ->
                 PointData' <$>
                   (o .:? "values" .!= mempty) <*>
                     (o .:? "timeInterval"))

instance ToJSON PointData where
        toJSON PointData'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _pdValues,
                  ("timeInterval" .=) <$> _pdTimeInterval])

-- | Describes how to combine multiple time series to provide a different
-- view of the data. Aggregation of time series is done in two steps.
-- First, each time series in the set is aligned to the same time interval
-- boundaries, then the set of time series is optionally reduced in
-- number.Alignment consists of applying the per_series_aligner operation
-- to each time series after its data has been divided into regular
-- alignment_period time intervals. This process takes all of the data
-- points in an alignment period, applies a mathematical transformation
-- such as averaging, minimum, maximum, delta, etc., and converts them into
-- a single data point per period.Reduction is when the aligned and
-- transformed time series can optionally be combined, reducing the number
-- of time series through similar mathematical transformations. Reduction
-- involves applying a cross_series_reducer to all the time series,
-- optionally sorting the time series into subsets with group_by_fields,
-- and applying the reducer to each subset.The raw time series data can
-- contain a huge amount of information from multiple sources. Alignment
-- and reduction transforms this mass of data into a more manageable and
-- representative collection of data, for example \"the 95% latency across
-- the average of all tasks in a cluster\". This representative data can be
-- more easily graphed and comprehended, and the individual time series
-- data is still available for later drilldown. For more details, see
-- Filtering and aggregation
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/aggregation).
--
-- /See:/ 'aggregation' smart constructor.
data Aggregation =
  Aggregation'
    { _aPerSeriesAligner :: !(Maybe AggregationPerSeriesAligner)
    , _aCrossSeriesReducer :: !(Maybe AggregationCrossSeriesReducer)
    , _aAlignmentPeriod :: !(Maybe GDuration)
    , _aGroupByFields :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Aggregation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPerSeriesAligner'
--
-- * 'aCrossSeriesReducer'
--
-- * 'aAlignmentPeriod'
--
-- * 'aGroupByFields'
aggregation
    :: Aggregation
aggregation =
  Aggregation'
    { _aPerSeriesAligner = Nothing
    , _aCrossSeriesReducer = Nothing
    , _aAlignmentPeriod = Nothing
    , _aGroupByFields = Nothing
    }


-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
aPerSeriesAligner :: Lens' Aggregation (Maybe AggregationPerSeriesAligner)
aPerSeriesAligner
  = lens _aPerSeriesAligner
      (\ s a -> s{_aPerSeriesAligner = a})

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
aCrossSeriesReducer :: Lens' Aggregation (Maybe AggregationCrossSeriesReducer)
aCrossSeriesReducer
  = lens _aCrossSeriesReducer
      (\ s a -> s{_aCrossSeriesReducer = a})

-- | The alignment_period specifies a time interval, in seconds, that is used
-- to divide the data in all the time series into consistent blocks of
-- time. This will be done before the per-series aligner can be applied to
-- the data.The value must be at least 60 seconds. If a per-series aligner
-- other than ALIGN_NONE is specified, this field is required or an error
-- is returned. If no per-series aligner is specified, or the aligner
-- ALIGN_NONE is specified, then this field is ignored.The maximum value of
-- the alignment_period is 104 weeks (2 years) for charts, and 90,000
-- seconds (25 hours) for alerting policies.
aAlignmentPeriod :: Lens' Aggregation (Maybe Scientific)
aAlignmentPeriod
  = lens _aAlignmentPeriod
      (\ s a -> s{_aAlignmentPeriod = a})
      . mapping _GDuration

-- | The set of fields to preserve when cross_series_reducer is specified.
-- The group_by_fields determine how the time series are partitioned into
-- subsets prior to applying the aggregation operation. Each subset
-- contains time series that have the same value for each of the grouping
-- fields. Each individual time series is a member of exactly one subset.
-- The cross_series_reducer is applied to each subset of time series. It is
-- not possible to reduce across different resource types, so this field
-- implicitly contains resource.type. Fields not specified in
-- group_by_fields are aggregated away. If group_by_fields is not specified
-- and all the time series have the same resource type, then the time
-- series are aggregated into a single output time series. If
-- cross_series_reducer is not defined, this field is ignored.
aGroupByFields :: Lens' Aggregation [Text]
aGroupByFields
  = lens _aGroupByFields
      (\ s a -> s{_aGroupByFields = a})
      . _Default
      . _Coerce

instance FromJSON Aggregation where
        parseJSON
          = withObject "Aggregation"
              (\ o ->
                 Aggregation' <$>
                   (o .:? "perSeriesAligner") <*>
                     (o .:? "crossSeriesReducer")
                     <*> (o .:? "alignmentPeriod")
                     <*> (o .:? "groupByFields" .!= mempty))

instance ToJSON Aggregation where
        toJSON Aggregation'{..}
          = object
              (catMaybes
                 [("perSeriesAligner" .=) <$> _aPerSeriesAligner,
                  ("crossSeriesReducer" .=) <$> _aCrossSeriesReducer,
                  ("alignmentPeriod" .=) <$> _aAlignmentPeriod,
                  ("groupByFields" .=) <$> _aGroupByFields])

-- | This message configures which resources and services to monitor for
-- availability.
--
-- /See:/ 'uptimeCheckConfig' smart constructor.
data UptimeCheckConfig =
  UptimeCheckConfig'
    { _uccInternalCheckers :: !(Maybe [InternalChecker])
    , _uccPeriod :: !(Maybe GDuration)
    , _uccContentMatchers :: !(Maybe [ContentMatcher])
    , _uccName :: !(Maybe Text)
    , _uccMonitoredResource :: !(Maybe MonitoredResource)
    , _uccSelectedRegions :: !(Maybe [UptimeCheckConfigSelectedRegionsItem])
    , _uccIsInternal :: !(Maybe Bool)
    , _uccDisplayName :: !(Maybe Text)
    , _uccResourceGroup :: !(Maybe ResourceGroup)
    , _uccTimeout :: !(Maybe GDuration)
    , _uccHTTPCheck :: !(Maybe HTTPCheck)
    , _uccTCPCheck :: !(Maybe TCPCheck)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UptimeCheckConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uccInternalCheckers'
--
-- * 'uccPeriod'
--
-- * 'uccContentMatchers'
--
-- * 'uccName'
--
-- * 'uccMonitoredResource'
--
-- * 'uccSelectedRegions'
--
-- * 'uccIsInternal'
--
-- * 'uccDisplayName'
--
-- * 'uccResourceGroup'
--
-- * 'uccTimeout'
--
-- * 'uccHTTPCheck'
--
-- * 'uccTCPCheck'
uptimeCheckConfig
    :: UptimeCheckConfig
uptimeCheckConfig =
  UptimeCheckConfig'
    { _uccInternalCheckers = Nothing
    , _uccPeriod = Nothing
    , _uccContentMatchers = Nothing
    , _uccName = Nothing
    , _uccMonitoredResource = Nothing
    , _uccSelectedRegions = Nothing
    , _uccIsInternal = Nothing
    , _uccDisplayName = Nothing
    , _uccResourceGroup = Nothing
    , _uccTimeout = Nothing
    , _uccHTTPCheck = Nothing
    , _uccTCPCheck = Nothing
    }


-- | The internal checkers that this check will egress from. If is_internal
-- is true and this list is empty, the check will egress from all the
-- InternalCheckers configured for the project that owns this
-- UptimeCheckConfig.
uccInternalCheckers :: Lens' UptimeCheckConfig [InternalChecker]
uccInternalCheckers
  = lens _uccInternalCheckers
      (\ s a -> s{_uccInternalCheckers = a})
      . _Default
      . _Coerce

-- | How often, in seconds, the Uptime check is performed. Currently, the
-- only supported values are 60s (1 minute), 300s (5 minutes), 600s (10
-- minutes), and 900s (15 minutes). Optional, defaults to 60s.
uccPeriod :: Lens' UptimeCheckConfig (Maybe Scientific)
uccPeriod
  = lens _uccPeriod (\ s a -> s{_uccPeriod = a}) .
      mapping _GDuration

-- | The content that is expected to appear in the data returned by the
-- target server against which the check is run. Currently, only the first
-- entry in the content_matchers list is supported, and additional entries
-- will be ignored. This field is optional and should only be specified if
-- a content match is required as part of the\/ Uptime check.
uccContentMatchers :: Lens' UptimeCheckConfig [ContentMatcher]
uccContentMatchers
  = lens _uccContentMatchers
      (\ s a -> s{_uccContentMatchers = a})
      . _Default
      . _Coerce

-- | A unique resource name for this Uptime check configuration. The format
-- is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/uptimeCheckConfigs\/[UPTIME_CHECK_ID]
-- [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the
-- Uptime check.This field should be omitted when creating the Uptime check
-- configuration; on create, the resource name is assigned by the server
-- and included in the response.
uccName :: Lens' UptimeCheckConfig (Maybe Text)
uccName = lens _uccName (\ s a -> s{_uccName = a})

-- | The monitored resource
-- (https:\/\/cloud.google.com\/monitoring\/api\/resources) associated with
-- the configuration. The following monitored resource types are valid for
-- this field: uptime_url, gce_instance, gae_app, aws_ec2_instance,
-- aws_elb_load_balancer
uccMonitoredResource :: Lens' UptimeCheckConfig (Maybe MonitoredResource)
uccMonitoredResource
  = lens _uccMonitoredResource
      (\ s a -> s{_uccMonitoredResource = a})

-- | The list of regions from which the check will be run. Some regions
-- contain one location, and others contain more than one. If this field is
-- specified, enough regions must be provided to include a minimum of 3
-- locations. Not specifying this field will result in Uptime checks
-- running from all available regions.
uccSelectedRegions :: Lens' UptimeCheckConfig [UptimeCheckConfigSelectedRegionsItem]
uccSelectedRegions
  = lens _uccSelectedRegions
      (\ s a -> s{_uccSelectedRegions = a})
      . _Default
      . _Coerce

-- | If this is true, then checks are made only from the
-- \'internal_checkers\'. If it is false, then checks are made only from
-- the \'selected_regions\'. It is an error to provide \'selected_regions\'
-- when is_internal is true, or to provide \'internal_checkers\' when
-- is_internal is false.
uccIsInternal :: Lens' UptimeCheckConfig (Maybe Bool)
uccIsInternal
  = lens _uccIsInternal
      (\ s a -> s{_uccIsInternal = a})

-- | A human-friendly name for the Uptime check configuration. The display
-- name should be unique within a Stackdriver Workspace in order to make it
-- easier to identify; however, uniqueness is not enforced. Required.
uccDisplayName :: Lens' UptimeCheckConfig (Maybe Text)
uccDisplayName
  = lens _uccDisplayName
      (\ s a -> s{_uccDisplayName = a})

-- | The group resource associated with the configuration.
uccResourceGroup :: Lens' UptimeCheckConfig (Maybe ResourceGroup)
uccResourceGroup
  = lens _uccResourceGroup
      (\ s a -> s{_uccResourceGroup = a})

-- | The maximum amount of time to wait for the request to complete (must be
-- between 1 and 60 seconds). Required.
uccTimeout :: Lens' UptimeCheckConfig (Maybe Scientific)
uccTimeout
  = lens _uccTimeout (\ s a -> s{_uccTimeout = a}) .
      mapping _GDuration

-- | Contains information needed to make an HTTP or HTTPS check.
uccHTTPCheck :: Lens' UptimeCheckConfig (Maybe HTTPCheck)
uccHTTPCheck
  = lens _uccHTTPCheck (\ s a -> s{_uccHTTPCheck = a})

-- | Contains information needed to make a TCP check.
uccTCPCheck :: Lens' UptimeCheckConfig (Maybe TCPCheck)
uccTCPCheck
  = lens _uccTCPCheck (\ s a -> s{_uccTCPCheck = a})

instance FromJSON UptimeCheckConfig where
        parseJSON
          = withObject "UptimeCheckConfig"
              (\ o ->
                 UptimeCheckConfig' <$>
                   (o .:? "internalCheckers" .!= mempty) <*>
                     (o .:? "period")
                     <*> (o .:? "contentMatchers" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "monitoredResource")
                     <*> (o .:? "selectedRegions" .!= mempty)
                     <*> (o .:? "isInternal")
                     <*> (o .:? "displayName")
                     <*> (o .:? "resourceGroup")
                     <*> (o .:? "timeout")
                     <*> (o .:? "httpCheck")
                     <*> (o .:? "tcpCheck"))

instance ToJSON UptimeCheckConfig where
        toJSON UptimeCheckConfig'{..}
          = object
              (catMaybes
                 [("internalCheckers" .=) <$> _uccInternalCheckers,
                  ("period" .=) <$> _uccPeriod,
                  ("contentMatchers" .=) <$> _uccContentMatchers,
                  ("name" .=) <$> _uccName,
                  ("monitoredResource" .=) <$> _uccMonitoredResource,
                  ("selectedRegions" .=) <$> _uccSelectedRegions,
                  ("isInternal" .=) <$> _uccIsInternal,
                  ("displayName" .=) <$> _uccDisplayName,
                  ("resourceGroup" .=) <$> _uccResourceGroup,
                  ("timeout" .=) <$> _uccTimeout,
                  ("httpCheck" .=) <$> _uccHTTPCheck,
                  ("tcpCheck" .=) <$> _uccTCPCheck])

-- | A single data point in a time series.
--
-- /See:/ 'point' smart constructor.
data Point =
  Point'
    { _pValue :: !(Maybe TypedValue)
    , _pInterval :: !(Maybe TimeInterval)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Point' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pValue'
--
-- * 'pInterval'
point
    :: Point
point = Point' {_pValue = Nothing, _pInterval = Nothing}


-- | The value of the data point.
pValue :: Lens' Point (Maybe TypedValue)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | The time interval to which the data point applies. For GAUGE metrics,
-- the start time is optional, but if it is supplied, it must equal the end
-- time. For DELTA metrics, the start and end time should specify a
-- non-zero interval, with subsequent points specifying contiguous and
-- non-overlapping intervals. For CUMULATIVE metrics, the start and end
-- time should specify a non-zero interval, with subsequent points
-- specifying the same start time and increasing end times, until an event
-- resets the cumulative value to zero and sets a new start time for the
-- following points.
pInterval :: Lens' Point (Maybe TimeInterval)
pInterval
  = lens _pInterval (\ s a -> s{_pInterval = a})

instance FromJSON Point where
        parseJSON
          = withObject "Point"
              (\ o ->
                 Point' <$> (o .:? "value") <*> (o .:? "interval"))

instance ToJSON Point where
        toJSON Point'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pValue,
                  ("interval" .=) <$> _pInterval])

-- | A collection of data points sent from a collectd-based plugin. See the
-- collectd documentation for more information.
--
-- /See:/ 'collectdPayload' smart constructor.
data CollectdPayload =
  CollectdPayload'
    { _cpStartTime :: !(Maybe DateTime')
    , _cpPluginInstance :: !(Maybe Text)
    , _cpValues :: !(Maybe [CollectdValue])
    , _cpTypeInstance :: !(Maybe Text)
    , _cpEndTime :: !(Maybe DateTime')
    , _cpMetadata :: !(Maybe CollectdPayloadMetadata)
    , _cpType :: !(Maybe Text)
    , _cpPlugin :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectdPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpStartTime'
--
-- * 'cpPluginInstance'
--
-- * 'cpValues'
--
-- * 'cpTypeInstance'
--
-- * 'cpEndTime'
--
-- * 'cpMetadata'
--
-- * 'cpType'
--
-- * 'cpPlugin'
collectdPayload
    :: CollectdPayload
collectdPayload =
  CollectdPayload'
    { _cpStartTime = Nothing
    , _cpPluginInstance = Nothing
    , _cpValues = Nothing
    , _cpTypeInstance = Nothing
    , _cpEndTime = Nothing
    , _cpMetadata = Nothing
    , _cpType = Nothing
    , _cpPlugin = Nothing
    }


-- | The start time of the interval.
cpStartTime :: Lens' CollectdPayload (Maybe UTCTime)
cpStartTime
  = lens _cpStartTime (\ s a -> s{_cpStartTime = a}) .
      mapping _DateTime

-- | The instance name of the plugin Example: \"hdcl\".
cpPluginInstance :: Lens' CollectdPayload (Maybe Text)
cpPluginInstance
  = lens _cpPluginInstance
      (\ s a -> s{_cpPluginInstance = a})

-- | The measured values during this time interval. Each value must have a
-- different data_source_name.
cpValues :: Lens' CollectdPayload [CollectdValue]
cpValues
  = lens _cpValues (\ s a -> s{_cpValues = a}) .
      _Default
      . _Coerce

-- | The measurement type instance. Example: \"used\".
cpTypeInstance :: Lens' CollectdPayload (Maybe Text)
cpTypeInstance
  = lens _cpTypeInstance
      (\ s a -> s{_cpTypeInstance = a})

-- | The end time of the interval.
cpEndTime :: Lens' CollectdPayload (Maybe UTCTime)
cpEndTime
  = lens _cpEndTime (\ s a -> s{_cpEndTime = a}) .
      mapping _DateTime

-- | The measurement metadata. Example: \"process_id\" -> 12345
cpMetadata :: Lens' CollectdPayload (Maybe CollectdPayloadMetadata)
cpMetadata
  = lens _cpMetadata (\ s a -> s{_cpMetadata = a})

-- | The measurement type. Example: \"memory\".
cpType :: Lens' CollectdPayload (Maybe Text)
cpType = lens _cpType (\ s a -> s{_cpType = a})

-- | The name of the plugin. Example: \"disk\".
cpPlugin :: Lens' CollectdPayload (Maybe Text)
cpPlugin = lens _cpPlugin (\ s a -> s{_cpPlugin = a})

instance FromJSON CollectdPayload where
        parseJSON
          = withObject "CollectdPayload"
              (\ o ->
                 CollectdPayload' <$>
                   (o .:? "startTime") <*> (o .:? "pluginInstance") <*>
                     (o .:? "values" .!= mempty)
                     <*> (o .:? "typeInstance")
                     <*> (o .:? "endTime")
                     <*> (o .:? "metadata")
                     <*> (o .:? "type")
                     <*> (o .:? "plugin"))

instance ToJSON CollectdPayload where
        toJSON CollectdPayload'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _cpStartTime,
                  ("pluginInstance" .=) <$> _cpPluginInstance,
                  ("values" .=) <$> _cpValues,
                  ("typeInstance" .=) <$> _cpTypeInstance,
                  ("endTime" .=) <$> _cpEndTime,
                  ("metadata" .=) <$> _cpMetadata,
                  ("type" .=) <$> _cpType,
                  ("plugin" .=) <$> _cpPlugin])

-- | Describes a change made to a configuration.
--
-- /See:/ 'mutationRecord' smart constructor.
data MutationRecord =
  MutationRecord'
    { _mrMutatedBy :: !(Maybe Text)
    , _mrMutateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MutationRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrMutatedBy'
--
-- * 'mrMutateTime'
mutationRecord
    :: MutationRecord
mutationRecord =
  MutationRecord' {_mrMutatedBy = Nothing, _mrMutateTime = Nothing}


-- | The email address of the user making the change.
mrMutatedBy :: Lens' MutationRecord (Maybe Text)
mrMutatedBy
  = lens _mrMutatedBy (\ s a -> s{_mrMutatedBy = a})

-- | When the change occurred.
mrMutateTime :: Lens' MutationRecord (Maybe UTCTime)
mrMutateTime
  = lens _mrMutateTime (\ s a -> s{_mrMutateTime = a})
      . mapping _DateTime

instance FromJSON MutationRecord where
        parseJSON
          = withObject "MutationRecord"
              (\ o ->
                 MutationRecord' <$>
                   (o .:? "mutatedBy") <*> (o .:? "mutateTime"))

instance ToJSON MutationRecord where
        toJSON MutationRecord'{..}
          = object
              (catMaybes
                 [("mutatedBy" .=) <$> _mrMutatedBy,
                  ("mutateTime" .=) <$> _mrMutateTime])

-- | A specific metric, identified by specifying values for all of the labels
-- of a MetricDescriptor.
--
-- /See:/ 'metric' smart constructor.
data Metric =
  Metric'
    { _mLabels :: !(Maybe MetricLabels)
    , _mType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mLabels'
--
-- * 'mType'
metric
    :: Metric
metric = Metric' {_mLabels = Nothing, _mType = Nothing}


-- | The set of label values that uniquely identify this metric. All labels
-- listed in the MetricDescriptor must be assigned values.
mLabels :: Lens' Metric (Maybe MetricLabels)
mLabels = lens _mLabels (\ s a -> s{_mLabels = a})

-- | An existing metric type, see google.api.MetricDescriptor. For example,
-- custom.googleapis.com\/invoice\/paid\/amount.
mType :: Lens' Metric (Maybe Text)
mType = lens _mType (\ s a -> s{_mType = a})

instance FromJSON Metric where
        parseJSON
          = withObject "Metric"
              (\ o ->
                 Metric' <$> (o .:? "labels") <*> (o .:? "type"))

instance ToJSON Metric where
        toJSON Metric'{..}
          = object
              (catMaybes
                 [("labels" .=) <$> _mLabels, ("type" .=) <$> _mType])

-- | Describes the error status for payloads that were not written.
--
-- /See:/ 'collectdPayloadError' smart constructor.
data CollectdPayloadError =
  CollectdPayloadError'
    { _cpeError :: !(Maybe Status)
    , _cpeValueErrors :: !(Maybe [CollectdValueError])
    , _cpeIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectdPayloadError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpeError'
--
-- * 'cpeValueErrors'
--
-- * 'cpeIndex'
collectdPayloadError
    :: CollectdPayloadError
collectdPayloadError =
  CollectdPayloadError'
    {_cpeError = Nothing, _cpeValueErrors = Nothing, _cpeIndex = Nothing}


-- | Records the error status for the payload. If this field is present, the
-- partial errors for nested values won\'t be populated.
cpeError :: Lens' CollectdPayloadError (Maybe Status)
cpeError = lens _cpeError (\ s a -> s{_cpeError = a})

-- | Records the error status for values that were not written due to an
-- error.Failed payloads for which nothing is written will not include
-- partial value errors.
cpeValueErrors :: Lens' CollectdPayloadError [CollectdValueError]
cpeValueErrors
  = lens _cpeValueErrors
      (\ s a -> s{_cpeValueErrors = a})
      . _Default
      . _Coerce

-- | The zero-based index in
-- CreateCollectdTimeSeriesRequest.collectd_payloads.
cpeIndex :: Lens' CollectdPayloadError (Maybe Int32)
cpeIndex
  = lens _cpeIndex (\ s a -> s{_cpeIndex = a}) .
      mapping _Coerce

instance FromJSON CollectdPayloadError where
        parseJSON
          = withObject "CollectdPayloadError"
              (\ o ->
                 CollectdPayloadError' <$>
                   (o .:? "error") <*> (o .:? "valueErrors" .!= mempty)
                     <*> (o .:? "index"))

instance ToJSON CollectdPayloadError where
        toJSON CollectdPayloadError'{..}
          = object
              (catMaybes
                 [("error" .=) <$> _cpeError,
                  ("valueErrors" .=) <$> _cpeValueErrors,
                  ("index" .=) <$> _cpeIndex])

-- | The SendNotificationChannelVerificationCode request.
--
-- /See:/ 'sendNotificationChannelVerificationCodeRequest' smart constructor.
data SendNotificationChannelVerificationCodeRequest =
  SendNotificationChannelVerificationCodeRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SendNotificationChannelVerificationCodeRequest' with the minimum fields required to make a request.
--
sendNotificationChannelVerificationCodeRequest
    :: SendNotificationChannelVerificationCodeRequest
sendNotificationChannelVerificationCodeRequest =
  SendNotificationChannelVerificationCodeRequest'


instance FromJSON
           SendNotificationChannelVerificationCodeRequest
         where
        parseJSON
          = withObject
              "SendNotificationChannelVerificationCodeRequest"
              (\ o ->
                 pure SendNotificationChannelVerificationCodeRequest')

instance ToJSON
           SendNotificationChannelVerificationCodeRequest
         where
        toJSON = const emptyObject

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

-- | A PerformanceThreshold is used when each window is good when that window
-- has a sufficiently high performance.
--
-- /See:/ 'performanceThreshold' smart constructor.
data PerformanceThreshold =
  PerformanceThreshold'
    { _ptBasicSliPerformance :: !(Maybe BasicSli)
    , _ptPerformance :: !(Maybe RequestBasedSli)
    , _ptThreshold :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PerformanceThreshold' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptBasicSliPerformance'
--
-- * 'ptPerformance'
--
-- * 'ptThreshold'
performanceThreshold
    :: PerformanceThreshold
performanceThreshold =
  PerformanceThreshold'
    { _ptBasicSliPerformance = Nothing
    , _ptPerformance = Nothing
    , _ptThreshold = Nothing
    }


-- | BasicSli to evaluate to judge window quality.
ptBasicSliPerformance :: Lens' PerformanceThreshold (Maybe BasicSli)
ptBasicSliPerformance
  = lens _ptBasicSliPerformance
      (\ s a -> s{_ptBasicSliPerformance = a})

-- | RequestBasedSli to evaluate to judge window quality.
ptPerformance :: Lens' PerformanceThreshold (Maybe RequestBasedSli)
ptPerformance
  = lens _ptPerformance
      (\ s a -> s{_ptPerformance = a})

-- | If window performance >= threshold, the window is counted as good.
ptThreshold :: Lens' PerformanceThreshold (Maybe Double)
ptThreshold
  = lens _ptThreshold (\ s a -> s{_ptThreshold = a}) .
      mapping _Coerce

instance FromJSON PerformanceThreshold where
        parseJSON
          = withObject "PerformanceThreshold"
              (\ o ->
                 PerformanceThreshold' <$>
                   (o .:? "basicSliPerformance") <*>
                     (o .:? "performance")
                     <*> (o .:? "threshold"))

instance ToJSON PerformanceThreshold where
        toJSON PerformanceThreshold'{..}
          = object
              (catMaybes
                 [("basicSliPerformance" .=) <$>
                    _ptBasicSliPerformance,
                  ("performance" .=) <$> _ptPerformance,
                  ("threshold" .=) <$> _ptThreshold])

-- | A condition type that checks whether a log message in the scoping
-- project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name)
-- satisfies the given filter. Logs from other projects in the metrics
-- scope are not evaluated.
--
-- /See:/ 'logMatch' smart constructor.
data LogMatch =
  LogMatch'
    { _lmLabelExtractors :: !(Maybe LogMatchLabelExtractors)
    , _lmFilter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogMatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmLabelExtractors'
--
-- * 'lmFilter'
logMatch
    :: LogMatch
logMatch = LogMatch' {_lmLabelExtractors = Nothing, _lmFilter = Nothing}


-- | Optional. A map from a label key to an extractor expression, which is
-- used to extract the value for this label key. Each entry in this map is
-- a specification for how data should be extracted from log entries that
-- match filter. Each combination of extracted values is treated as a
-- separate rule for the purposes of triggering notifications. Label keys
-- and corresponding values can be used in notifications generated by this
-- condition.Please see the documentation on logs-based metric
-- valueExtractors for syntax and examples.
lmLabelExtractors :: Lens' LogMatch (Maybe LogMatchLabelExtractors)
lmLabelExtractors
  = lens _lmLabelExtractors
      (\ s a -> s{_lmLabelExtractors = a})

-- | Required. A logs-based filter. See Advanced Logs Queries for how this
-- filter should be constructed.
lmFilter :: Lens' LogMatch (Maybe Text)
lmFilter = lens _lmFilter (\ s a -> s{_lmFilter = a})

instance FromJSON LogMatch where
        parseJSON
          = withObject "LogMatch"
              (\ o ->
                 LogMatch' <$>
                   (o .:? "labelExtractors") <*> (o .:? "filter"))

instance ToJSON LogMatch where
        toJSON LogMatch'{..}
          = object
              (catMaybes
                 [("labelExtractors" .=) <$> _lmLabelExtractors,
                  ("filter" .=) <$> _lmFilter])

-- | The range of the population values.
--
-- /See:/ 'range' smart constructor.
data Range =
  Range'
    { _rMax :: !(Maybe (Textual Double))
    , _rMin :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMax'
--
-- * 'rMin'
range
    :: Range
range = Range' {_rMax = Nothing, _rMin = Nothing}


-- | The maximum of the population values.
rMax :: Lens' Range (Maybe Double)
rMax
  = lens _rMax (\ s a -> s{_rMax = a}) .
      mapping _Coerce

-- | The minimum of the population values.
rMin :: Lens' Range (Maybe Double)
rMin
  = lens _rMin (\ s a -> s{_rMin = a}) .
      mapping _Coerce

instance FromJSON Range where
        parseJSON
          = withObject "Range"
              (\ o -> Range' <$> (o .:? "max") <*> (o .:? "min"))

instance ToJSON Range where
        toJSON Range'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _rMax, ("min" .=) <$> _rMin])

-- | Canonical service scoped to an Istio mesh. Anthos clusters running ASM
-- >= 1.6.8 will have their services ingested as this type.
--
-- /See:/ 'istioCanonicalService' smart constructor.
data IstioCanonicalService =
  IstioCanonicalService'
    { _icsCanonicalService :: !(Maybe Text)
    , _icsMeshUid :: !(Maybe Text)
    , _icsCanonicalServiceNamespace :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IstioCanonicalService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icsCanonicalService'
--
-- * 'icsMeshUid'
--
-- * 'icsCanonicalServiceNamespace'
istioCanonicalService
    :: IstioCanonicalService
istioCanonicalService =
  IstioCanonicalService'
    { _icsCanonicalService = Nothing
    , _icsMeshUid = Nothing
    , _icsCanonicalServiceNamespace = Nothing
    }


-- | The name of the canonical service underlying this service. Corresponds
-- to the destination_canonical_service_name metric label in label in Istio
-- metrics (https:\/\/cloud.google.com\/monitoring\/api\/metrics_istio).
icsCanonicalService :: Lens' IstioCanonicalService (Maybe Text)
icsCanonicalService
  = lens _icsCanonicalService
      (\ s a -> s{_icsCanonicalService = a})

-- | Identifier for the Istio mesh in which this canonical service is
-- defined. Corresponds to the mesh_uid metric label in Istio metrics
-- (https:\/\/cloud.google.com\/monitoring\/api\/metrics_istio).
icsMeshUid :: Lens' IstioCanonicalService (Maybe Text)
icsMeshUid
  = lens _icsMeshUid (\ s a -> s{_icsMeshUid = a})

-- | The namespace of the canonical service underlying this service.
-- Corresponds to the destination_canonical_service_namespace metric label
-- in Istio metrics
-- (https:\/\/cloud.google.com\/monitoring\/api\/metrics_istio).
icsCanonicalServiceNamespace :: Lens' IstioCanonicalService (Maybe Text)
icsCanonicalServiceNamespace
  = lens _icsCanonicalServiceNamespace
      (\ s a -> s{_icsCanonicalServiceNamespace = a})

instance FromJSON IstioCanonicalService where
        parseJSON
          = withObject "IstioCanonicalService"
              (\ o ->
                 IstioCanonicalService' <$>
                   (o .:? "canonicalService") <*> (o .:? "meshUid") <*>
                     (o .:? "canonicalServiceNamespace"))

instance ToJSON IstioCanonicalService where
        toJSON IstioCanonicalService'{..}
          = object
              (catMaybes
                 [("canonicalService" .=) <$> _icsCanonicalService,
                  ("meshUid" .=) <$> _icsMeshUid,
                  ("canonicalServiceNamespace" .=) <$>
                    _icsCanonicalServiceNamespace])

-- | App Engine service. Learn more at https:\/\/cloud.google.com\/appengine.
--
-- /See:/ 'appEngine' smart constructor.
newtype AppEngine =
  AppEngine'
    { _aeModuleId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppEngine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeModuleId'
appEngine
    :: AppEngine
appEngine = AppEngine' {_aeModuleId = Nothing}


-- | The ID of the App Engine module underlying this service. Corresponds to
-- the module_id resource label in the gae_app monitored resource:
-- https:\/\/cloud.google.com\/monitoring\/api\/resources#tag_gae_app
aeModuleId :: Lens' AppEngine (Maybe Text)
aeModuleId
  = lens _aeModuleId (\ s a -> s{_aeModuleId = a})

instance FromJSON AppEngine where
        parseJSON
          = withObject "AppEngine"
              (\ o -> AppEngine' <$> (o .:? "moduleId"))

instance ToJSON AppEngine where
        toJSON AppEngine'{..}
          = object
              (catMaybes [("moduleId" .=) <$> _aeModuleId])

-- | The QueryTimeSeries response.
--
-- /See:/ 'queryTimeSeriesResponse' smart constructor.
data QueryTimeSeriesResponse =
  QueryTimeSeriesResponse'
    { _qtsrNextPageToken :: !(Maybe Text)
    , _qtsrPartialErrors :: !(Maybe [Status])
    , _qtsrTimeSeriesDescriptor :: !(Maybe TimeSeriesDescriptor)
    , _qtsrTimeSeriesData :: !(Maybe [TimeSeriesData])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryTimeSeriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qtsrNextPageToken'
--
-- * 'qtsrPartialErrors'
--
-- * 'qtsrTimeSeriesDescriptor'
--
-- * 'qtsrTimeSeriesData'
queryTimeSeriesResponse
    :: QueryTimeSeriesResponse
queryTimeSeriesResponse =
  QueryTimeSeriesResponse'
    { _qtsrNextPageToken = Nothing
    , _qtsrPartialErrors = Nothing
    , _qtsrTimeSeriesDescriptor = Nothing
    , _qtsrTimeSeriesData = Nothing
    }


-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
qtsrNextPageToken :: Lens' QueryTimeSeriesResponse (Maybe Text)
qtsrNextPageToken
  = lens _qtsrNextPageToken
      (\ s a -> s{_qtsrNextPageToken = a})

-- | Query execution errors that may have caused the time series data
-- returned to be incomplete. The available data will be available in the
-- response.
qtsrPartialErrors :: Lens' QueryTimeSeriesResponse [Status]
qtsrPartialErrors
  = lens _qtsrPartialErrors
      (\ s a -> s{_qtsrPartialErrors = a})
      . _Default
      . _Coerce

-- | The descriptor for the time series data.
qtsrTimeSeriesDescriptor :: Lens' QueryTimeSeriesResponse (Maybe TimeSeriesDescriptor)
qtsrTimeSeriesDescriptor
  = lens _qtsrTimeSeriesDescriptor
      (\ s a -> s{_qtsrTimeSeriesDescriptor = a})

-- | The time series data.
qtsrTimeSeriesData :: Lens' QueryTimeSeriesResponse [TimeSeriesData]
qtsrTimeSeriesData
  = lens _qtsrTimeSeriesData
      (\ s a -> s{_qtsrTimeSeriesData = a})
      . _Default
      . _Coerce

instance FromJSON QueryTimeSeriesResponse where
        parseJSON
          = withObject "QueryTimeSeriesResponse"
              (\ o ->
                 QueryTimeSeriesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "partialErrors" .!= mempty)
                     <*> (o .:? "timeSeriesDescriptor")
                     <*> (o .:? "timeSeriesData" .!= mempty))

instance ToJSON QueryTimeSeriesResponse where
        toJSON QueryTimeSeriesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _qtsrNextPageToken,
                  ("partialErrors" .=) <$> _qtsrPartialErrors,
                  ("timeSeriesDescriptor" .=) <$>
                    _qtsrTimeSeriesDescriptor,
                  ("timeSeriesData" .=) <$> _qtsrTimeSeriesData])

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
-- a Compute Engine VM instance is gce_instance. For a list of types, see
-- Monitoring resource types
-- (https:\/\/cloud.google.com\/monitoring\/api\/resources) and Logging
-- resource types
-- (https:\/\/cloud.google.com\/logging\/docs\/api\/v2\/resource-list).
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

-- | Contains the region, location, and list of IP addresses where checkers
-- in the location run from.
--
-- /See:/ 'uptimeCheckIP' smart constructor.
data UptimeCheckIP =
  UptimeCheckIP'
    { _uciIPAddress :: !(Maybe Text)
    , _uciLocation :: !(Maybe Text)
    , _uciRegion :: !(Maybe UptimeCheckIPRegion)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UptimeCheckIP' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uciIPAddress'
--
-- * 'uciLocation'
--
-- * 'uciRegion'
uptimeCheckIP
    :: UptimeCheckIP
uptimeCheckIP =
  UptimeCheckIP'
    {_uciIPAddress = Nothing, _uciLocation = Nothing, _uciRegion = Nothing}


-- | The IP address from which the Uptime check originates. This is a fully
-- specified IP address (not an IP address range). Most IP addresses, as of
-- this publication, are in IPv4 format; however, one should not rely on
-- the IP addresses being in IPv4 format indefinitely, and should support
-- interpreting this field in either IPv4 or IPv6 format.
uciIPAddress :: Lens' UptimeCheckIP (Maybe Text)
uciIPAddress
  = lens _uciIPAddress (\ s a -> s{_uciIPAddress = a})

-- | A more specific location within the region that typically encodes a
-- particular city\/town\/metro (and its containing state\/province or
-- country) within the broader umbrella region category.
uciLocation :: Lens' UptimeCheckIP (Maybe Text)
uciLocation
  = lens _uciLocation (\ s a -> s{_uciLocation = a})

-- | A broad region category in which the IP address is located.
uciRegion :: Lens' UptimeCheckIP (Maybe UptimeCheckIPRegion)
uciRegion
  = lens _uciRegion (\ s a -> s{_uciRegion = a})

instance FromJSON UptimeCheckIP where
        parseJSON
          = withObject "UptimeCheckIP"
              (\ o ->
                 UptimeCheckIP' <$>
                   (o .:? "ipAddress") <*> (o .:? "location") <*>
                     (o .:? "region"))

instance ToJSON UptimeCheckIP where
        toJSON UptimeCheckIP'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _uciIPAddress,
                  ("location" .=) <$> _uciLocation,
                  ("region" .=) <$> _uciRegion])

-- | Istio service scoped to a single Kubernetes cluster. Learn more at
-- https:\/\/istio.io. Clusters running OSS Istio will have their services
-- ingested as this type.
--
-- /See:/ 'clusterIstio' smart constructor.
data ClusterIstio =
  ClusterIstio'
    { _ciLocation :: !(Maybe Text)
    , _ciServiceNamespace :: !(Maybe Text)
    , _ciServiceName :: !(Maybe Text)
    , _ciClusterName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterIstio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciLocation'
--
-- * 'ciServiceNamespace'
--
-- * 'ciServiceName'
--
-- * 'ciClusterName'
clusterIstio
    :: ClusterIstio
clusterIstio =
  ClusterIstio'
    { _ciLocation = Nothing
    , _ciServiceNamespace = Nothing
    , _ciServiceName = Nothing
    , _ciClusterName = Nothing
    }


-- | The location of the Kubernetes cluster in which this Istio service is
-- defined. Corresponds to the location resource label in k8s_cluster
-- resources.
ciLocation :: Lens' ClusterIstio (Maybe Text)
ciLocation
  = lens _ciLocation (\ s a -> s{_ciLocation = a})

-- | The namespace of the Istio service underlying this service. Corresponds
-- to the destination_service_namespace metric label in Istio metrics.
ciServiceNamespace :: Lens' ClusterIstio (Maybe Text)
ciServiceNamespace
  = lens _ciServiceNamespace
      (\ s a -> s{_ciServiceNamespace = a})

-- | The name of the Istio service underlying this service. Corresponds to
-- the destination_service_name metric label in Istio metrics.
ciServiceName :: Lens' ClusterIstio (Maybe Text)
ciServiceName
  = lens _ciServiceName
      (\ s a -> s{_ciServiceName = a})

-- | The name of the Kubernetes cluster in which this Istio service is
-- defined. Corresponds to the cluster_name resource label in k8s_cluster
-- resources.
ciClusterName :: Lens' ClusterIstio (Maybe Text)
ciClusterName
  = lens _ciClusterName
      (\ s a -> s{_ciClusterName = a})

instance FromJSON ClusterIstio where
        parseJSON
          = withObject "ClusterIstio"
              (\ o ->
                 ClusterIstio' <$>
                   (o .:? "location") <*> (o .:? "serviceNamespace") <*>
                     (o .:? "serviceName")
                     <*> (o .:? "clusterName"))

instance ToJSON ClusterIstio where
        toJSON ClusterIstio'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _ciLocation,
                  ("serviceNamespace" .=) <$> _ciServiceNamespace,
                  ("serviceName" .=) <$> _ciServiceName,
                  ("clusterName" .=) <$> _ciClusterName])

-- | User-supplied key\/value data to be used for organizing and identifying
-- the AlertPolicy objects.The field can contain up to 64 entries. Each key
-- and value is limited to 63 Unicode characters or 128 bytes, whichever is
-- smaller. Labels and values can contain only lowercase letters, numerals,
-- underscores, and dashes. Keys must begin with a letter.
--
-- /See:/ 'alertPolicyUserLabels' smart constructor.
newtype AlertPolicyUserLabels =
  AlertPolicyUserLabels'
    { _apulAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertPolicyUserLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apulAddtional'
alertPolicyUserLabels
    :: HashMap Text Text -- ^ 'apulAddtional'
    -> AlertPolicyUserLabels
alertPolicyUserLabels pApulAddtional_ =
  AlertPolicyUserLabels' {_apulAddtional = _Coerce # pApulAddtional_}


apulAddtional :: Lens' AlertPolicyUserLabels (HashMap Text Text)
apulAddtional
  = lens _apulAddtional
      (\ s a -> s{_apulAddtional = a})
      . _Coerce

instance FromJSON AlertPolicyUserLabels where
        parseJSON
          = withObject "AlertPolicyUserLabels"
              (\ o ->
                 AlertPolicyUserLabels' <$> (parseJSONObject o))

instance ToJSON AlertPolicyUserLabels where
        toJSON = toJSON . _apulAddtional

-- | A content string and a MIME type that describes the content string\'s
-- format.
--
-- /See:/ 'documentation' smart constructor.
data Documentation =
  Documentation'
    { _dContent :: !(Maybe Text)
    , _dMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Documentation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dContent'
--
-- * 'dMimeType'
documentation
    :: Documentation
documentation = Documentation' {_dContent = Nothing, _dMimeType = Nothing}


-- | The text of the documentation, interpreted according to mime_type. The
-- content may not exceed 8,192 Unicode characters and may not exceed more
-- than 10,240 bytes when encoded in UTF-8 format, whichever is smaller.
dContent :: Lens' Documentation (Maybe Text)
dContent = lens _dContent (\ s a -> s{_dContent = a})

-- | The format of the content field. Presently, only the value
-- \"text\/markdown\" is supported. See Markdown
-- (https:\/\/en.wikipedia.org\/wiki\/Markdown) for more information.
dMimeType :: Lens' Documentation (Maybe Text)
dMimeType
  = lens _dMimeType (\ s a -> s{_dMimeType = a})

instance FromJSON Documentation where
        parseJSON
          = withObject "Documentation"
              (\ o ->
                 Documentation' <$>
                   (o .:? "content") <*> (o .:? "mimeType"))

instance ToJSON Documentation where
        toJSON Documentation'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _dContent,
                  ("mimeType" .=) <$> _dMimeType])

-- | Optional. A map from a label key to an extractor expression, which is
-- used to extract the value for this label key. Each entry in this map is
-- a specification for how data should be extracted from log entries that
-- match filter. Each combination of extracted values is treated as a
-- separate rule for the purposes of triggering notifications. Label keys
-- and corresponding values can be used in notifications generated by this
-- condition.Please see the documentation on logs-based metric
-- valueExtractors for syntax and examples.
--
-- /See:/ 'logMatchLabelExtractors' smart constructor.
newtype LogMatchLabelExtractors =
  LogMatchLabelExtractors'
    { _lmleAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogMatchLabelExtractors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmleAddtional'
logMatchLabelExtractors
    :: HashMap Text Text -- ^ 'lmleAddtional'
    -> LogMatchLabelExtractors
logMatchLabelExtractors pLmleAddtional_ =
  LogMatchLabelExtractors' {_lmleAddtional = _Coerce # pLmleAddtional_}


lmleAddtional :: Lens' LogMatchLabelExtractors (HashMap Text Text)
lmleAddtional
  = lens _lmleAddtional
      (\ s a -> s{_lmleAddtional = a})
      . _Coerce

instance FromJSON LogMatchLabelExtractors where
        parseJSON
          = withObject "LogMatchLabelExtractors"
              (\ o ->
                 LogMatchLabelExtractors' <$> (parseJSONObject o))

instance ToJSON LogMatchLabelExtractors where
        toJSON = toJSON . _lmleAddtional

-- | Future parameters for the availability SLI.
--
-- /See:/ 'availabilityCriteria' smart constructor.
data AvailabilityCriteria =
  AvailabilityCriteria'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AvailabilityCriteria' with the minimum fields required to make a request.
--
availabilityCriteria
    :: AvailabilityCriteria
availabilityCriteria = AvailabilityCriteria'


instance FromJSON AvailabilityCriteria where
        parseJSON
          = withObject "AvailabilityCriteria"
              (\ o -> pure AvailabilityCriteria')

instance ToJSON AvailabilityCriteria where
        toJSON = const emptyObject

-- | Exemplars are example points that may be used to annotate aggregated
-- distribution values. They are metadata that gives information about a
-- particular value added to a Distribution bucket, such as a trace ID that
-- was active when a value was added. They may contain further information,
-- such as a example values and timestamps, origin, etc.
--
-- /See:/ 'exemplar' smart constructor.
data Exemplar =
  Exemplar'
    { _eAttachments :: !(Maybe [ExemplarAttachmentsItem])
    , _eValue :: !(Maybe (Textual Double))
    , _eTimestamp :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Exemplar' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAttachments'
--
-- * 'eValue'
--
-- * 'eTimestamp'
exemplar
    :: Exemplar
exemplar =
  Exemplar' {_eAttachments = Nothing, _eValue = Nothing, _eTimestamp = Nothing}


-- | Contextual information about the example value. Examples are:Trace:
-- type.googleapis.com\/google.monitoring.v3.SpanContextLiteral string:
-- type.googleapis.com\/google.protobuf.StringValueLabels dropped during
-- aggregation:
-- type.googleapis.com\/google.monitoring.v3.DroppedLabelsThere may be only
-- a single attachment of any given message type in a single exemplar, and
-- this is enforced by the system.
eAttachments :: Lens' Exemplar [ExemplarAttachmentsItem]
eAttachments
  = lens _eAttachments (\ s a -> s{_eAttachments = a})
      . _Default
      . _Coerce

-- | Value of the exemplar point. This value determines to which bucket the
-- exemplar belongs.
eValue :: Lens' Exemplar (Maybe Double)
eValue
  = lens _eValue (\ s a -> s{_eValue = a}) .
      mapping _Coerce

-- | The observation (sampling) time of the above value.
eTimestamp :: Lens' Exemplar (Maybe UTCTime)
eTimestamp
  = lens _eTimestamp (\ s a -> s{_eTimestamp = a}) .
      mapping _DateTime

instance FromJSON Exemplar where
        parseJSON
          = withObject "Exemplar"
              (\ o ->
                 Exemplar' <$>
                   (o .:? "attachments" .!= mempty) <*> (o .:? "value")
                     <*> (o .:? "timestamp"))

instance ToJSON Exemplar where
        toJSON Exemplar'{..}
          = object
              (catMaybes
                 [("attachments" .=) <$> _eAttachments,
                  ("value" .=) <$> _eValue,
                  ("timestamp" .=) <$> _eTimestamp])

-- | Control over the rate of notifications sent to this alert policy\'s
-- notification channels.
--
-- /See:/ 'notificationRateLimit' smart constructor.
newtype NotificationRateLimit =
  NotificationRateLimit'
    { _nrlPeriod :: Maybe GDuration
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationRateLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrlPeriod'
notificationRateLimit
    :: NotificationRateLimit
notificationRateLimit = NotificationRateLimit' {_nrlPeriod = Nothing}


-- | Not more than one notification per period.
nrlPeriod :: Lens' NotificationRateLimit (Maybe Scientific)
nrlPeriod
  = lens _nrlPeriod (\ s a -> s{_nrlPeriod = a}) .
      mapping _GDuration

instance FromJSON NotificationRateLimit where
        parseJSON
          = withObject "NotificationRateLimit"
              (\ o -> NotificationRateLimit' <$> (o .:? "period"))

instance ToJSON NotificationRateLimit where
        toJSON NotificationRateLimit'{..}
          = object (catMaybes [("period" .=) <$> _nrlPeriod])

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

-- | A Service-Level Indicator (SLI) describes the \"performance\" of a
-- service. For some services, the SLI is well-defined. In such cases, the
-- SLI can be described easily by referencing the well-known SLI and
-- providing the needed parameters. Alternatively, a \"custom\" SLI can be
-- defined with a query to the underlying metric store. An SLI is defined
-- to be good_service \/ total_service over any queried time interval. The
-- value of performance always falls into the range 0 \<= performance \<=
-- 1. A custom SLI describes how to compute this ratio, whether this is by
-- dividing values from a pair of time series, cutting a Distribution into
-- good and bad counts, or counting time windows in which the service
-- complies with a criterion. For separation of concerns, a single
-- Service-Level Indicator measures performance for only one aspect of
-- service quality, such as fraction of successful queries or fast-enough
-- queries.
--
-- /See:/ 'serviceLevelIndicator' smart constructor.
data ServiceLevelIndicator =
  ServiceLevelIndicator'
    { _sliBasicSli :: !(Maybe BasicSli)
    , _sliRequestBased :: !(Maybe RequestBasedSli)
    , _sliWindowsBased :: !(Maybe WindowsBasedSli)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceLevelIndicator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sliBasicSli'
--
-- * 'sliRequestBased'
--
-- * 'sliWindowsBased'
serviceLevelIndicator
    :: ServiceLevelIndicator
serviceLevelIndicator =
  ServiceLevelIndicator'
    { _sliBasicSli = Nothing
    , _sliRequestBased = Nothing
    , _sliWindowsBased = Nothing
    }


-- | Basic SLI on a well-known service type.
sliBasicSli :: Lens' ServiceLevelIndicator (Maybe BasicSli)
sliBasicSli
  = lens _sliBasicSli (\ s a -> s{_sliBasicSli = a})

-- | Request-based SLIs
sliRequestBased :: Lens' ServiceLevelIndicator (Maybe RequestBasedSli)
sliRequestBased
  = lens _sliRequestBased
      (\ s a -> s{_sliRequestBased = a})

-- | Windows-based SLIs
sliWindowsBased :: Lens' ServiceLevelIndicator (Maybe WindowsBasedSli)
sliWindowsBased
  = lens _sliWindowsBased
      (\ s a -> s{_sliWindowsBased = a})

instance FromJSON ServiceLevelIndicator where
        parseJSON
          = withObject "ServiceLevelIndicator"
              (\ o ->
                 ServiceLevelIndicator' <$>
                   (o .:? "basicSli") <*> (o .:? "requestBased") <*>
                     (o .:? "windowsBased"))

instance ToJSON ServiceLevelIndicator where
        toJSON ServiceLevelIndicator'{..}
          = object
              (catMaybes
                 [("basicSli" .=) <$> _sliBasicSli,
                  ("requestBased" .=) <$> _sliRequestBased,
                  ("windowsBased" .=) <$> _sliWindowsBased])

-- | A closed time interval. It extends from the start time to the end time,
-- and includes both: [startTime, endTime]. Valid time intervals depend on
-- the MetricKind
-- (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.metricDescriptors#MetricKind)
-- of the metric value. The end time must not be earlier than the start
-- time. When writing data points, the start time must not be more than 25
-- hours in the past and the end time must not be more than five minutes in
-- the future. For GAUGE metrics, the startTime value is technically
-- optional; if no value is specified, the start time defaults to the value
-- of the end time, and the interval represents a single point in time. If
-- both start and end times are specified, they must be identical. Such an
-- interval is valid only for GAUGE metrics, which are point-in-time
-- measurements. The end time of a new interval must be at least a
-- millisecond after the end time of the previous interval. For DELTA
-- metrics, the start time and end time must specify a non-zero interval,
-- with subsequent points specifying contiguous and non-overlapping
-- intervals. For DELTA metrics, the start time of the next interval must
-- be at least a millisecond after the end time of the previous interval.
-- For CUMULATIVE metrics, the start time and end time must specify a a
-- non-zero interval, with subsequent points specifying the same start time
-- and increasing end times, until an event resets the cumulative value to
-- zero and sets a new start time for the following points. The new start
-- time must be at least a millisecond after the end time of the previous
-- interval. The start time of a new interval must be at least a
-- millisecond after the end time of the previous interval because
-- intervals are closed. If the start time of a new interval is the same as
-- the end time of the previous interval, then data written at the new
-- start time could overwrite data written at the previous end time.
--
-- /See:/ 'timeInterval' smart constructor.
data TimeInterval =
  TimeInterval'
    { _tiStartTime :: !(Maybe DateTime')
    , _tiEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeInterval' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiStartTime'
--
-- * 'tiEndTime'
timeInterval
    :: TimeInterval
timeInterval = TimeInterval' {_tiStartTime = Nothing, _tiEndTime = Nothing}


-- | Optional. The beginning of the time interval. The default value for the
-- start time is the end time. The start time must not be later than the
-- end time.
tiStartTime :: Lens' TimeInterval (Maybe UTCTime)
tiStartTime
  = lens _tiStartTime (\ s a -> s{_tiStartTime = a}) .
      mapping _DateTime

-- | Required. The end of the time interval.
tiEndTime :: Lens' TimeInterval (Maybe UTCTime)
tiEndTime
  = lens _tiEndTime (\ s a -> s{_tiEndTime = a}) .
      mapping _DateTime

instance FromJSON TimeInterval where
        parseJSON
          = withObject "TimeInterval"
              (\ o ->
                 TimeInterval' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimeInterval where
        toJSON TimeInterval'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _tiStartTime,
                  ("endTime" .=) <$> _tiEndTime])

-- | The list of headers to send as part of the Uptime check request. If two
-- headers have the same key and different values, they should be entered
-- as a single header, with the value being a comma-separated list of all
-- the desired values as described at
-- https:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616.txt (page 31).
-- Entering two separate headers with the same key in a Create call will
-- cause the first to be overwritten by the second. The maximum number of
-- headers allowed is 100.
--
-- /See:/ 'hTTPCheckHeaders' smart constructor.
newtype HTTPCheckHeaders =
  HTTPCheckHeaders'
    { _httpchAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPCheckHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpchAddtional'
hTTPCheckHeaders
    :: HashMap Text Text -- ^ 'httpchAddtional'
    -> HTTPCheckHeaders
hTTPCheckHeaders pHttpchAddtional_ =
  HTTPCheckHeaders' {_httpchAddtional = _Coerce # pHttpchAddtional_}


httpchAddtional :: Lens' HTTPCheckHeaders (HashMap Text Text)
httpchAddtional
  = lens _httpchAddtional
      (\ s a -> s{_httpchAddtional = a})
      . _Coerce

instance FromJSON HTTPCheckHeaders where
        parseJSON
          = withObject "HTTPCheckHeaders"
              (\ o -> HTTPCheckHeaders' <$> (parseJSONObject o))

instance ToJSON HTTPCheckHeaders where
        toJSON = toJSON . _httpchAddtional

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

-- | Optional. Used to perform content matching. This allows matching based
-- on substrings and regular expressions, together with their negations.
-- Only the first 4 MB of an HTTP or HTTPS check\'s response (and the first
-- 1 MB of a TCP check\'s response) are examined for purposes of content
-- matching.
--
-- /See:/ 'contentMatcher' smart constructor.
data ContentMatcher =
  ContentMatcher'
    { _cmMatcher :: !(Maybe ContentMatcherMatcher)
    , _cmContent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContentMatcher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmMatcher'
--
-- * 'cmContent'
contentMatcher
    :: ContentMatcher
contentMatcher = ContentMatcher' {_cmMatcher = Nothing, _cmContent = Nothing}


-- | The type of content matcher that will be applied to the server output,
-- compared to the content string when the check is run.
cmMatcher :: Lens' ContentMatcher (Maybe ContentMatcherMatcher)
cmMatcher
  = lens _cmMatcher (\ s a -> s{_cmMatcher = a})

-- | String or regex content to match. Maximum 1024 bytes. An empty content
-- string indicates no content matching is to be performed.
cmContent :: Lens' ContentMatcher (Maybe Text)
cmContent
  = lens _cmContent (\ s a -> s{_cmContent = a})

instance FromJSON ContentMatcher where
        parseJSON
          = withObject "ContentMatcher"
              (\ o ->
                 ContentMatcher' <$>
                   (o .:? "matcher") <*> (o .:? "content"))

instance ToJSON ContentMatcher where
        toJSON ContentMatcher'{..}
          = object
              (catMaybes
                 [("matcher" .=) <$> _cmMatcher,
                  ("content" .=) <$> _cmContent])

-- | The ListGroupMembers response.
--
-- /See:/ 'listGroupMembersResponse' smart constructor.
data ListGroupMembersResponse =
  ListGroupMembersResponse'
    { _lgmrNextPageToken :: !(Maybe Text)
    , _lgmrMembers :: !(Maybe [MonitoredResource])
    , _lgmrTotalSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListGroupMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgmrNextPageToken'
--
-- * 'lgmrMembers'
--
-- * 'lgmrTotalSize'
listGroupMembersResponse
    :: ListGroupMembersResponse
listGroupMembersResponse =
  ListGroupMembersResponse'
    { _lgmrNextPageToken = Nothing
    , _lgmrMembers = Nothing
    , _lgmrTotalSize = Nothing
    }


-- | If there are more results than have been returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
lgmrNextPageToken :: Lens' ListGroupMembersResponse (Maybe Text)
lgmrNextPageToken
  = lens _lgmrNextPageToken
      (\ s a -> s{_lgmrNextPageToken = a})

-- | A set of monitored resources in the group.
lgmrMembers :: Lens' ListGroupMembersResponse [MonitoredResource]
lgmrMembers
  = lens _lgmrMembers (\ s a -> s{_lgmrMembers = a}) .
      _Default
      . _Coerce

-- | The total number of elements matching this request.
lgmrTotalSize :: Lens' ListGroupMembersResponse (Maybe Int32)
lgmrTotalSize
  = lens _lgmrTotalSize
      (\ s a -> s{_lgmrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListGroupMembersResponse where
        parseJSON
          = withObject "ListGroupMembersResponse"
              (\ o ->
                 ListGroupMembersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "members" .!= mempty)
                     <*> (o .:? "totalSize"))

instance ToJSON ListGroupMembersResponse where
        toJSON ListGroupMembersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lgmrNextPageToken,
                  ("members" .=) <$> _lgmrMembers,
                  ("totalSize" .=) <$> _lgmrTotalSize])

-- | Control over how the notification channels in notification_channels are
-- notified when this alert fires.
--
-- /See:/ 'alertStrategy' smart constructor.
newtype AlertStrategy =
  AlertStrategy'
    { _asNotificationRateLimit :: Maybe NotificationRateLimit
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertStrategy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asNotificationRateLimit'
alertStrategy
    :: AlertStrategy
alertStrategy = AlertStrategy' {_asNotificationRateLimit = Nothing}


-- | Required for alert policies with a LogMatch condition.This limit is not
-- implemented for alert policies that are not log-based.
asNotificationRateLimit :: Lens' AlertStrategy (Maybe NotificationRateLimit)
asNotificationRateLimit
  = lens _asNotificationRateLimit
      (\ s a -> s{_asNotificationRateLimit = a})

instance FromJSON AlertStrategy where
        parseJSON
          = withObject "AlertStrategy"
              (\ o ->
                 AlertStrategy' <$> (o .:? "notificationRateLimit"))

instance ToJSON AlertStrategy where
        toJSON AlertStrategy'{..}
          = object
              (catMaybes
                 [("notificationRateLimit" .=) <$>
                    _asNotificationRateLimit])

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


-- | The key for this label. The key must meet the following criteria: Does
-- not exceed 100 characters. Matches the following regular expression:
-- [a-zA-Z][a-zA-Z0-9_]* The first character must be an upper- or
-- lower-case letter. The remaining characters must be letters, digits, or
-- underscores.
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

-- | The protocol for the ListUptimeCheckIps response.
--
-- /See:/ 'listUptimeCheckIPsResponse' smart constructor.
data ListUptimeCheckIPsResponse =
  ListUptimeCheckIPsResponse'
    { _lucirNextPageToken :: !(Maybe Text)
    , _lucirUptimeCheckIPs :: !(Maybe [UptimeCheckIP])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListUptimeCheckIPsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lucirNextPageToken'
--
-- * 'lucirUptimeCheckIPs'
listUptimeCheckIPsResponse
    :: ListUptimeCheckIPsResponse
listUptimeCheckIPsResponse =
  ListUptimeCheckIPsResponse'
    {_lucirNextPageToken = Nothing, _lucirUptimeCheckIPs = Nothing}


-- | This field represents the pagination token to retrieve the next page of
-- results. If the value is empty, it means no further results for the
-- request. To retrieve the next page of results, the value of the
-- next_page_token is passed to the subsequent List method call (in the
-- request message\'s page_token field). NOTE: this field is not yet
-- implemented
lucirNextPageToken :: Lens' ListUptimeCheckIPsResponse (Maybe Text)
lucirNextPageToken
  = lens _lucirNextPageToken
      (\ s a -> s{_lucirNextPageToken = a})

-- | The returned list of IP addresses (including region and location) that
-- the checkers run from.
lucirUptimeCheckIPs :: Lens' ListUptimeCheckIPsResponse [UptimeCheckIP]
lucirUptimeCheckIPs
  = lens _lucirUptimeCheckIPs
      (\ s a -> s{_lucirUptimeCheckIPs = a})
      . _Default
      . _Coerce

instance FromJSON ListUptimeCheckIPsResponse where
        parseJSON
          = withObject "ListUptimeCheckIPsResponse"
              (\ o ->
                 ListUptimeCheckIPsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "uptimeCheckIps" .!= mempty))

instance ToJSON ListUptimeCheckIPsResponse where
        toJSON ListUptimeCheckIPsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lucirNextPageToken,
                  ("uptimeCheckIps" .=) <$> _lucirUptimeCheckIPs])

-- | The GetNotificationChannelVerificationCode request.
--
-- /See:/ 'getNotificationChannelVerificationCodeRequest' smart constructor.
newtype GetNotificationChannelVerificationCodeRequest =
  GetNotificationChannelVerificationCodeRequest'
    { _gExpireTime :: Maybe DateTime'
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetNotificationChannelVerificationCodeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gExpireTime'
getNotificationChannelVerificationCodeRequest
    :: GetNotificationChannelVerificationCodeRequest
getNotificationChannelVerificationCodeRequest =
  GetNotificationChannelVerificationCodeRequest' {_gExpireTime = Nothing}


-- | The desired expiration time. If specified, the API will guarantee that
-- the returned code will not be valid after the specified timestamp;
-- however, the API cannot guarantee that the returned code will be valid
-- for at least as long as the requested time (the API puts an upper bound
-- on the amount of time for which a code may be valid). If omitted, a
-- default expiration will be used, which may be less than the max
-- permissible expiration (so specifying an expiration may extend the
-- code\'s lifetime over omitting an expiration, even though the API does
-- impose an upper limit on the maximum expiration that is permitted).
gExpireTime :: Lens' GetNotificationChannelVerificationCodeRequest (Maybe UTCTime)
gExpireTime
  = lens _gExpireTime (\ s a -> s{_gExpireTime = a}) .
      mapping _DateTime

instance FromJSON
           GetNotificationChannelVerificationCodeRequest
         where
        parseJSON
          = withObject
              "GetNotificationChannelVerificationCodeRequest"
              (\ o ->
                 GetNotificationChannelVerificationCodeRequest' <$>
                   (o .:? "expireTime"))

instance ToJSON
           GetNotificationChannelVerificationCodeRequest
         where
        toJSON
          GetNotificationChannelVerificationCodeRequest'{..}
          = object
              (catMaybes [("expireTime" .=) <$> _gExpireTime])

-- | The resource submessage for group checks. It can be used instead of a
-- monitored resource, when multiple resources are being monitored.
--
-- /See:/ 'resourceGroup' smart constructor.
data ResourceGroup =
  ResourceGroup'
    { _rgResourceType :: !(Maybe ResourceGroupResourceType)
    , _rgGroupId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgResourceType'
--
-- * 'rgGroupId'
resourceGroup
    :: ResourceGroup
resourceGroup = ResourceGroup' {_rgResourceType = Nothing, _rgGroupId = Nothing}


-- | The resource type of the group members.
rgResourceType :: Lens' ResourceGroup (Maybe ResourceGroupResourceType)
rgResourceType
  = lens _rgResourceType
      (\ s a -> s{_rgResourceType = a})

-- | The group of resources being monitored. Should be only the [GROUP_ID],
-- and not the full-path
-- projects\/[PROJECT_ID_OR_NUMBER]\/groups\/[GROUP_ID].
rgGroupId :: Lens' ResourceGroup (Maybe Text)
rgGroupId
  = lens _rgGroupId (\ s a -> s{_rgGroupId = a})

instance FromJSON ResourceGroup where
        parseJSON
          = withObject "ResourceGroup"
              (\ o ->
                 ResourceGroup' <$>
                   (o .:? "resourceType") <*> (o .:? "groupId"))

instance ToJSON ResourceGroup where
        toJSON ResourceGroup'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _rgResourceType,
                  ("groupId" .=) <$> _rgGroupId])

-- | A set of (label, value) pairs that were removed from a Distribution time
-- series during aggregation and then added as an attachment to a
-- Distribution.Exemplar.The full label set for the exemplars is
-- constructed by using the dropped pairs in combination with the label
-- values that remain on the aggregated Distribution time series. The
-- constructed full label set can be used to identify the specific entity,
-- such as the instance or job, which might be contributing to a long-tail.
-- However, with dropped labels, the storage requirements are reduced
-- because only the aggregated distribution values for a large group of
-- time series are stored.Note that there are no guarantees on ordering of
-- the labels from exemplar-to-exemplar and from
-- distribution-to-distribution in the same stream, and there may be
-- duplicates. It is up to clients to resolve any ambiguities.
--
-- /See:/ 'droppedLabels' smart constructor.
newtype DroppedLabels =
  DroppedLabels'
    { _dlLabel :: Maybe DroppedLabelsLabel
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DroppedLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlLabel'
droppedLabels
    :: DroppedLabels
droppedLabels = DroppedLabels' {_dlLabel = Nothing}


-- | Map from label to its value, for all labels dropped in any aggregation.
dlLabel :: Lens' DroppedLabels (Maybe DroppedLabelsLabel)
dlLabel = lens _dlLabel (\ s a -> s{_dlLabel = a})

instance FromJSON DroppedLabels where
        parseJSON
          = withObject "DroppedLabels"
              (\ o -> DroppedLabels' <$> (o .:? "label"))

instance ToJSON DroppedLabels where
        toJSON DroppedLabels'{..}
          = object (catMaybes [("label" .=) <$> _dlLabel])

-- | A descriptor for the labels and points in a time series.
--
-- /See:/ 'timeSeriesDescriptor' smart constructor.
data TimeSeriesDescriptor =
  TimeSeriesDescriptor'
    { _tsdPointDescriptors :: !(Maybe [ValueDescriptor])
    , _tsdLabelDescriptors :: !(Maybe [LabelDescriptor])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeSeriesDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsdPointDescriptors'
--
-- * 'tsdLabelDescriptors'
timeSeriesDescriptor
    :: TimeSeriesDescriptor
timeSeriesDescriptor =
  TimeSeriesDescriptor'
    {_tsdPointDescriptors = Nothing, _tsdLabelDescriptors = Nothing}


-- | Descriptors for the point data value columns.
tsdPointDescriptors :: Lens' TimeSeriesDescriptor [ValueDescriptor]
tsdPointDescriptors
  = lens _tsdPointDescriptors
      (\ s a -> s{_tsdPointDescriptors = a})
      . _Default
      . _Coerce

-- | Descriptors for the labels.
tsdLabelDescriptors :: Lens' TimeSeriesDescriptor [LabelDescriptor]
tsdLabelDescriptors
  = lens _tsdLabelDescriptors
      (\ s a -> s{_tsdLabelDescriptors = a})
      . _Default
      . _Coerce

instance FromJSON TimeSeriesDescriptor where
        parseJSON
          = withObject "TimeSeriesDescriptor"
              (\ o ->
                 TimeSeriesDescriptor' <$>
                   (o .:? "pointDescriptors" .!= mempty) <*>
                     (o .:? "labelDescriptors" .!= mempty))

instance ToJSON TimeSeriesDescriptor where
        toJSON TimeSeriesDescriptor'{..}
          = object
              (catMaybes
                 [("pointDescriptors" .=) <$> _tsdPointDescriptors,
                  ("labelDescriptors" .=) <$> _tsdLabelDescriptors])

-- | Specifies how many time series must fail a predicate to trigger a
-- condition. If not specified, then a {count: 1} trigger is used.
--
-- /See:/ 'trigger' smart constructor.
data Trigger =
  Trigger'
    { _tPercent :: !(Maybe (Textual Double))
    , _tCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Trigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tPercent'
--
-- * 'tCount'
trigger
    :: Trigger
trigger = Trigger' {_tPercent = Nothing, _tCount = Nothing}


-- | The percentage of time series that must fail the predicate for the
-- condition to be triggered.
tPercent :: Lens' Trigger (Maybe Double)
tPercent
  = lens _tPercent (\ s a -> s{_tPercent = a}) .
      mapping _Coerce

-- | The absolute number of time series that must fail the predicate for the
-- condition to be triggered.
tCount :: Lens' Trigger (Maybe Int32)
tCount
  = lens _tCount (\ s a -> s{_tCount = a}) .
      mapping _Coerce

instance FromJSON Trigger where
        parseJSON
          = withObject "Trigger"
              (\ o ->
                 Trigger' <$> (o .:? "percent") <*> (o .:? "count"))

instance ToJSON Trigger where
        toJSON Trigger'{..}
          = object
              (catMaybes
                 [("percent" .=) <$> _tPercent,
                  ("count" .=) <$> _tCount])

-- | Labels which have been used to annotate the service-level objective.
-- Label keys must start with a letter. Label keys and values may contain
-- lowercase letters, numbers, underscores, and dashes. Label keys and
-- values have a maximum length of 63 characters, and must be less than 128
-- bytes in size. Up to 64 label entries may be stored. For labels which do
-- not have a semantic value, the empty string may be supplied for the
-- label value.
--
-- /See:/ 'serviceLevelObjectiveUserLabels' smart constructor.
newtype ServiceLevelObjectiveUserLabels =
  ServiceLevelObjectiveUserLabels'
    { _sloulAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceLevelObjectiveUserLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sloulAddtional'
serviceLevelObjectiveUserLabels
    :: HashMap Text Text -- ^ 'sloulAddtional'
    -> ServiceLevelObjectiveUserLabels
serviceLevelObjectiveUserLabels pSloulAddtional_ =
  ServiceLevelObjectiveUserLabels'
    {_sloulAddtional = _Coerce # pSloulAddtional_}


sloulAddtional :: Lens' ServiceLevelObjectiveUserLabels (HashMap Text Text)
sloulAddtional
  = lens _sloulAddtional
      (\ s a -> s{_sloulAddtional = a})
      . _Coerce

instance FromJSON ServiceLevelObjectiveUserLabels
         where
        parseJSON
          = withObject "ServiceLevelObjectiveUserLabels"
              (\ o ->
                 ServiceLevelObjectiveUserLabels' <$>
                   (parseJSONObject o))

instance ToJSON ServiceLevelObjectiveUserLabels where
        toJSON = toJSON . _sloulAddtional

-- | A descriptor for the value columns in a data point.
--
-- /See:/ 'valueDescriptor' smart constructor.
data ValueDescriptor =
  ValueDescriptor'
    { _vdMetricKind :: !(Maybe ValueDescriptorMetricKind)
    , _vdKey :: !(Maybe Text)
    , _vdValueType :: !(Maybe ValueDescriptorValueType)
    , _vdUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValueDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdMetricKind'
--
-- * 'vdKey'
--
-- * 'vdValueType'
--
-- * 'vdUnit'
valueDescriptor
    :: ValueDescriptor
valueDescriptor =
  ValueDescriptor'
    { _vdMetricKind = Nothing
    , _vdKey = Nothing
    , _vdValueType = Nothing
    , _vdUnit = Nothing
    }


-- | The value stream kind.
vdMetricKind :: Lens' ValueDescriptor (Maybe ValueDescriptorMetricKind)
vdMetricKind
  = lens _vdMetricKind (\ s a -> s{_vdMetricKind = a})

-- | The value key.
vdKey :: Lens' ValueDescriptor (Maybe Text)
vdKey = lens _vdKey (\ s a -> s{_vdKey = a})

-- | The value type.
vdValueType :: Lens' ValueDescriptor (Maybe ValueDescriptorValueType)
vdValueType
  = lens _vdValueType (\ s a -> s{_vdValueType = a})

-- | The unit in which time_series point values are reported. unit follows
-- the UCUM format for units as seen in
-- https:\/\/unitsofmeasure.org\/ucum.html. unit is only valid if
-- value_type is INTEGER, DOUBLE, DISTRIBUTION.
vdUnit :: Lens' ValueDescriptor (Maybe Text)
vdUnit = lens _vdUnit (\ s a -> s{_vdUnit = a})

instance FromJSON ValueDescriptor where
        parseJSON
          = withObject "ValueDescriptor"
              (\ o ->
                 ValueDescriptor' <$>
                   (o .:? "metricKind") <*> (o .:? "key") <*>
                     (o .:? "valueType")
                     <*> (o .:? "unit"))

instance ToJSON ValueDescriptor where
        toJSON ValueDescriptor'{..}
          = object
              (catMaybes
                 [("metricKind" .=) <$> _vdMetricKind,
                  ("key" .=) <$> _vdKey,
                  ("valueType" .=) <$> _vdValueType,
                  ("unit" .=) <$> _vdUnit])

-- | A protocol buffer message type.
--
-- /See:/ 'type'' smart constructor.
data Type =
  Type'
    { _tSourceContext :: !(Maybe SourceContext)
    , _tOneofs :: !(Maybe [Text])
    , _tName :: !(Maybe Text)
    , _tOptions :: !(Maybe [Option])
    , _tFields :: !(Maybe [Field])
    , _tSyntax :: !(Maybe TypeSyntax)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Type' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tSourceContext'
--
-- * 'tOneofs'
--
-- * 'tName'
--
-- * 'tOptions'
--
-- * 'tFields'
--
-- * 'tSyntax'
type'
    :: Type
type' =
  Type'
    { _tSourceContext = Nothing
    , _tOneofs = Nothing
    , _tName = Nothing
    , _tOptions = Nothing
    , _tFields = Nothing
    , _tSyntax = Nothing
    }


-- | The source context.
tSourceContext :: Lens' Type (Maybe SourceContext)
tSourceContext
  = lens _tSourceContext
      (\ s a -> s{_tSourceContext = a})

-- | The list of types appearing in oneof definitions in this type.
tOneofs :: Lens' Type [Text]
tOneofs
  = lens _tOneofs (\ s a -> s{_tOneofs = a}) . _Default
      . _Coerce

-- | The fully qualified message name.
tName :: Lens' Type (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | The protocol buffer options.
tOptions :: Lens' Type [Option]
tOptions
  = lens _tOptions (\ s a -> s{_tOptions = a}) .
      _Default
      . _Coerce

-- | The list of fields.
tFields :: Lens' Type [Field]
tFields
  = lens _tFields (\ s a -> s{_tFields = a}) . _Default
      . _Coerce

-- | The source syntax.
tSyntax :: Lens' Type (Maybe TypeSyntax)
tSyntax = lens _tSyntax (\ s a -> s{_tSyntax = a})

instance FromJSON Type where
        parseJSON
          = withObject "Type"
              (\ o ->
                 Type' <$>
                   (o .:? "sourceContext") <*>
                     (o .:? "oneofs" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "fields" .!= mempty)
                     <*> (o .:? "syntax"))

instance ToJSON Type where
        toJSON Type'{..}
          = object
              (catMaybes
                 [("sourceContext" .=) <$> _tSourceContext,
                  ("oneofs" .=) <$> _tOneofs, ("name" .=) <$> _tName,
                  ("options" .=) <$> _tOptions,
                  ("fields" .=) <$> _tFields,
                  ("syntax" .=) <$> _tSyntax])

-- | Contains metadata for longrunning operation for the edit Metrics Scope
-- endpoints.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
  OperationMetadata'
    { _omState :: !(Maybe OperationMetadataState)
    , _omUpdateTime :: !(Maybe DateTime')
    , _omCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omState'
--
-- * 'omUpdateTime'
--
-- * 'omCreateTime'
operationMetadata
    :: OperationMetadata
operationMetadata =
  OperationMetadata'
    {_omState = Nothing, _omUpdateTime = Nothing, _omCreateTime = Nothing}


-- | Current state of the batch operation.
omState :: Lens' OperationMetadata (Maybe OperationMetadataState)
omState = lens _omState (\ s a -> s{_omState = a})

-- | The time when the operation result was last updated.
omUpdateTime :: Lens' OperationMetadata (Maybe UTCTime)
omUpdateTime
  = lens _omUpdateTime (\ s a -> s{_omUpdateTime = a})
      . mapping _DateTime

-- | The time when the batch request was received.
omCreateTime :: Lens' OperationMetadata (Maybe UTCTime)
omCreateTime
  = lens _omCreateTime (\ s a -> s{_omCreateTime = a})
      . mapping _DateTime

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "updateTime") <*>
                     (o .:? "createTime"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _omState,
                  ("updateTime" .=) <$> _omUpdateTime,
                  ("createTime" .=) <$> _omCreateTime])

-- | The CreateCollectdTimeSeries response.
--
-- /See:/ 'createCollectdTimeSeriesResponse' smart constructor.
data CreateCollectdTimeSeriesResponse =
  CreateCollectdTimeSeriesResponse'
    { _cctsrSummary :: !(Maybe CreateTimeSeriesSummary)
    , _cctsrPayloadErrors :: !(Maybe [CollectdPayloadError])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateCollectdTimeSeriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cctsrSummary'
--
-- * 'cctsrPayloadErrors'
createCollectdTimeSeriesResponse
    :: CreateCollectdTimeSeriesResponse
createCollectdTimeSeriesResponse =
  CreateCollectdTimeSeriesResponse'
    {_cctsrSummary = Nothing, _cctsrPayloadErrors = Nothing}


-- | Aggregate statistics from writing the payloads. This field is omitted if
-- all points were successfully written, so that the response is empty.
-- This is for backwards compatibility with clients that log errors on any
-- non-empty response.
cctsrSummary :: Lens' CreateCollectdTimeSeriesResponse (Maybe CreateTimeSeriesSummary)
cctsrSummary
  = lens _cctsrSummary (\ s a -> s{_cctsrSummary = a})

-- | Records the error status for points that were not written due to an
-- error in the request.Failed requests for which nothing is written will
-- return an error response instead. Requests where data points were
-- rejected by the backend will set summary instead.
cctsrPayloadErrors :: Lens' CreateCollectdTimeSeriesResponse [CollectdPayloadError]
cctsrPayloadErrors
  = lens _cctsrPayloadErrors
      (\ s a -> s{_cctsrPayloadErrors = a})
      . _Default
      . _Coerce

instance FromJSON CreateCollectdTimeSeriesResponse
         where
        parseJSON
          = withObject "CreateCollectdTimeSeriesResponse"
              (\ o ->
                 CreateCollectdTimeSeriesResponse' <$>
                   (o .:? "summary") <*>
                     (o .:? "payloadErrors" .!= mempty))

instance ToJSON CreateCollectdTimeSeriesResponse
         where
        toJSON CreateCollectdTimeSeriesResponse'{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _cctsrSummary,
                  ("payloadErrors" .=) <$> _cctsrPayloadErrors])

-- | Parameters for a latency threshold SLI.
--
-- /See:/ 'latencyCriteria' smart constructor.
newtype LatencyCriteria =
  LatencyCriteria'
    { _lcThreshold :: Maybe GDuration
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LatencyCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcThreshold'
latencyCriteria
    :: LatencyCriteria
latencyCriteria = LatencyCriteria' {_lcThreshold = Nothing}


-- | Good service is defined to be the count of requests made to this service
-- that return in no more than threshold.
lcThreshold :: Lens' LatencyCriteria (Maybe Scientific)
lcThreshold
  = lens _lcThreshold (\ s a -> s{_lcThreshold = a}) .
      mapping _GDuration

instance FromJSON LatencyCriteria where
        parseJSON
          = withObject "LatencyCriteria"
              (\ o -> LatencyCriteria' <$> (o .:? "threshold"))

instance ToJSON LatencyCriteria where
        toJSON LatencyCriteria'{..}
          = object
              (catMaybes [("threshold" .=) <$> _lcThreshold])

-- | Istio service scoped to an Istio mesh. Anthos clusters running ASM \<
-- 1.6.8 will have their services ingested as this type.
--
-- /See:/ 'meshIstio' smart constructor.
data MeshIstio =
  MeshIstio'
    { _miMeshUid :: !(Maybe Text)
    , _miServiceNamespace :: !(Maybe Text)
    , _miServiceName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MeshIstio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miMeshUid'
--
-- * 'miServiceNamespace'
--
-- * 'miServiceName'
meshIstio
    :: MeshIstio
meshIstio =
  MeshIstio'
    { _miMeshUid = Nothing
    , _miServiceNamespace = Nothing
    , _miServiceName = Nothing
    }


-- | Identifier for the mesh in which this Istio service is defined.
-- Corresponds to the mesh_uid metric label in Istio metrics.
miMeshUid :: Lens' MeshIstio (Maybe Text)
miMeshUid
  = lens _miMeshUid (\ s a -> s{_miMeshUid = a})

-- | The namespace of the Istio service underlying this service. Corresponds
-- to the destination_service_namespace metric label in Istio metrics.
miServiceNamespace :: Lens' MeshIstio (Maybe Text)
miServiceNamespace
  = lens _miServiceNamespace
      (\ s a -> s{_miServiceNamespace = a})

-- | The name of the Istio service underlying this service. Corresponds to
-- the destination_service_name metric label in Istio metrics.
miServiceName :: Lens' MeshIstio (Maybe Text)
miServiceName
  = lens _miServiceName
      (\ s a -> s{_miServiceName = a})

instance FromJSON MeshIstio where
        parseJSON
          = withObject "MeshIstio"
              (\ o ->
                 MeshIstio' <$>
                   (o .:? "meshUid") <*> (o .:? "serviceNamespace") <*>
                     (o .:? "serviceName"))

instance ToJSON MeshIstio where
        toJSON MeshIstio'{..}
          = object
              (catMaybes
                 [("meshUid" .=) <$> _miMeshUid,
                  ("serviceNamespace" .=) <$> _miServiceNamespace,
                  ("serviceName" .=) <$> _miServiceName])

-- | A protocol buffer option, which can be attached to a message, field,
-- enumeration, etc.
--
-- /See:/ 'option' smart constructor.
data Option =
  Option'
    { _oValue :: !(Maybe OptionValue)
    , _oName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Option' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oValue'
--
-- * 'oName'
option
    :: Option
option = Option' {_oValue = Nothing, _oName = Nothing}


-- | The option\'s value packed in an Any message. If the value is a
-- primitive, the corresponding wrapper type defined in
-- google\/protobuf\/wrappers.proto should be used. If the value is an
-- enum, it should be stored as an int32 value using the
-- google.protobuf.Int32Value type.
oValue :: Lens' Option (Maybe OptionValue)
oValue = lens _oValue (\ s a -> s{_oValue = a})

-- | The option\'s name. For protobuf built-in options (options defined in
-- descriptor.proto), this is the short name. For example, \"map_entry\".
-- For custom options, it should be the fully-qualified name. For example,
-- \"google.api.http\".
oName :: Lens' Option (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

instance FromJSON Option where
        parseJSON
          = withObject "Option"
              (\ o ->
                 Option' <$> (o .:? "value") <*> (o .:? "name"))

instance ToJSON Option where
        toJSON Option'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _oValue, ("name" .=) <$> _oName])

-- | A condition is a true\/false test that determines when an alerting
-- policy should open an incident. If a condition evaluates to true, it
-- signifies that something is wrong.
--
-- /See:/ 'condition' smart constructor.
data Condition =
  Condition'
    { _cConditionAbsent :: !(Maybe MetricAbsence)
    , _cConditionThreshold :: !(Maybe MetricThreshold)
    , _cName :: !(Maybe Text)
    , _cConditionMonitoringQueryLanguage :: !(Maybe MonitoringQueryLanguageCondition)
    , _cConditionMatchedLog :: !(Maybe LogMatch)
    , _cDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cConditionAbsent'
--
-- * 'cConditionThreshold'
--
-- * 'cName'
--
-- * 'cConditionMonitoringQueryLanguage'
--
-- * 'cConditionMatchedLog'
--
-- * 'cDisplayName'
condition
    :: Condition
condition =
  Condition'
    { _cConditionAbsent = Nothing
    , _cConditionThreshold = Nothing
    , _cName = Nothing
    , _cConditionMonitoringQueryLanguage = Nothing
    , _cConditionMatchedLog = Nothing
    , _cDisplayName = Nothing
    }


-- | A condition that checks that a time series continues to receive new data
-- points.
cConditionAbsent :: Lens' Condition (Maybe MetricAbsence)
cConditionAbsent
  = lens _cConditionAbsent
      (\ s a -> s{_cConditionAbsent = a})

-- | A condition that compares a time series against a threshold.
cConditionThreshold :: Lens' Condition (Maybe MetricThreshold)
cConditionThreshold
  = lens _cConditionThreshold
      (\ s a -> s{_cConditionThreshold = a})

-- | Required if the condition exists. The unique resource name for this
-- condition. Its format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/alertPolicies\/[POLICY_ID]\/conditions\/[CONDITION_ID]
-- [CONDITION_ID] is assigned by Stackdriver Monitoring when the condition
-- is created as part of a new or updated alerting policy.When calling the
-- alertPolicies.create method, do not include the name field in the
-- conditions of the requested alerting policy. Stackdriver Monitoring
-- creates the condition identifiers and includes them in the new
-- policy.When calling the alertPolicies.update method to update a policy,
-- including a condition name causes the existing condition to be updated.
-- Conditions without names are added to the updated policy. Existing
-- conditions are deleted if they are not updated.Best practice is to
-- preserve [CONDITION_ID] if you make only small changes, such as those to
-- condition thresholds, durations, or trigger values. Otherwise, treat the
-- change as a new condition and let the existing condition be deleted.
cName :: Lens' Condition (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | A condition that uses the Monitoring Query Language to define alerts.
cConditionMonitoringQueryLanguage :: Lens' Condition (Maybe MonitoringQueryLanguageCondition)
cConditionMonitoringQueryLanguage
  = lens _cConditionMonitoringQueryLanguage
      (\ s a -> s{_cConditionMonitoringQueryLanguage = a})

-- | A condition that checks for log messages matching given constraints. If
-- set, no other conditions can be present.
cConditionMatchedLog :: Lens' Condition (Maybe LogMatch)
cConditionMatchedLog
  = lens _cConditionMatchedLog
      (\ s a -> s{_cConditionMatchedLog = a})

-- | A short name or phrase used to identify the condition in dashboards,
-- notifications, and incidents. To avoid confusion, don\'t use the same
-- display name for multiple conditions in the same policy.
cDisplayName :: Lens' Condition (Maybe Text)
cDisplayName
  = lens _cDisplayName (\ s a -> s{_cDisplayName = a})

instance FromJSON Condition where
        parseJSON
          = withObject "Condition"
              (\ o ->
                 Condition' <$>
                   (o .:? "conditionAbsent") <*>
                     (o .:? "conditionThreshold")
                     <*> (o .:? "name")
                     <*> (o .:? "conditionMonitoringQueryLanguage")
                     <*> (o .:? "conditionMatchedLog")
                     <*> (o .:? "displayName"))

instance ToJSON Condition where
        toJSON Condition'{..}
          = object
              (catMaybes
                 [("conditionAbsent" .=) <$> _cConditionAbsent,
                  ("conditionThreshold" .=) <$> _cConditionThreshold,
                  ("name" .=) <$> _cName,
                  ("conditionMonitoringQueryLanguage" .=) <$>
                    _cConditionMonitoringQueryLanguage,
                  ("conditionMatchedLog" .=) <$> _cConditionMatchedLog,
                  ("displayName" .=) <$> _cDisplayName])

-- | Represents the values of a time series associated with a
-- TimeSeriesDescriptor.
--
-- /See:/ 'timeSeriesData' smart constructor.
data TimeSeriesData =
  TimeSeriesData'
    { _tsdPointData :: !(Maybe [PointData])
    , _tsdLabelValues :: !(Maybe [LabelValue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeSeriesData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsdPointData'
--
-- * 'tsdLabelValues'
timeSeriesData
    :: TimeSeriesData
timeSeriesData =
  TimeSeriesData' {_tsdPointData = Nothing, _tsdLabelValues = Nothing}


-- | The points in the time series.
tsdPointData :: Lens' TimeSeriesData [PointData]
tsdPointData
  = lens _tsdPointData (\ s a -> s{_tsdPointData = a})
      . _Default
      . _Coerce

-- | The values of the labels in the time series identifier, given in the
-- same order as the label_descriptors field of the TimeSeriesDescriptor
-- associated with this object. Each value must have a value of the type
-- given in the corresponding entry of label_descriptors.
tsdLabelValues :: Lens' TimeSeriesData [LabelValue]
tsdLabelValues
  = lens _tsdLabelValues
      (\ s a -> s{_tsdLabelValues = a})
      . _Default
      . _Coerce

instance FromJSON TimeSeriesData where
        parseJSON
          = withObject "TimeSeriesData"
              (\ o ->
                 TimeSeriesData' <$>
                   (o .:? "pointData" .!= mempty) <*>
                     (o .:? "labelValues" .!= mempty))

instance ToJSON TimeSeriesData where
        toJSON TimeSeriesData'{..}
          = object
              (catMaybes
                 [("pointData" .=) <$> _tsdPointData,
                  ("labelValues" .=) <$> _tsdLabelValues])

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

-- | The protocol for the ListUptimeCheckConfigs response.
--
-- /See:/ 'listUptimeCheckConfigsResponse' smart constructor.
data ListUptimeCheckConfigsResponse =
  ListUptimeCheckConfigsResponse'
    { _luccrUptimeCheckConfigs :: !(Maybe [UptimeCheckConfig])
    , _luccrNextPageToken :: !(Maybe Text)
    , _luccrTotalSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListUptimeCheckConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luccrUptimeCheckConfigs'
--
-- * 'luccrNextPageToken'
--
-- * 'luccrTotalSize'
listUptimeCheckConfigsResponse
    :: ListUptimeCheckConfigsResponse
listUptimeCheckConfigsResponse =
  ListUptimeCheckConfigsResponse'
    { _luccrUptimeCheckConfigs = Nothing
    , _luccrNextPageToken = Nothing
    , _luccrTotalSize = Nothing
    }


-- | The returned Uptime check configurations.
luccrUptimeCheckConfigs :: Lens' ListUptimeCheckConfigsResponse [UptimeCheckConfig]
luccrUptimeCheckConfigs
  = lens _luccrUptimeCheckConfigs
      (\ s a -> s{_luccrUptimeCheckConfigs = a})
      . _Default
      . _Coerce

-- | This field represents the pagination token to retrieve the next page of
-- results. If the value is empty, it means no further results for the
-- request. To retrieve the next page of results, the value of the
-- next_page_token is passed to the subsequent List method call (in the
-- request message\'s page_token field).
luccrNextPageToken :: Lens' ListUptimeCheckConfigsResponse (Maybe Text)
luccrNextPageToken
  = lens _luccrNextPageToken
      (\ s a -> s{_luccrNextPageToken = a})

-- | The total number of Uptime check configurations for the project,
-- irrespective of any pagination.
luccrTotalSize :: Lens' ListUptimeCheckConfigsResponse (Maybe Int32)
luccrTotalSize
  = lens _luccrTotalSize
      (\ s a -> s{_luccrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListUptimeCheckConfigsResponse
         where
        parseJSON
          = withObject "ListUptimeCheckConfigsResponse"
              (\ o ->
                 ListUptimeCheckConfigsResponse' <$>
                   (o .:? "uptimeCheckConfigs" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "totalSize"))

instance ToJSON ListUptimeCheckConfigsResponse where
        toJSON ListUptimeCheckConfigsResponse'{..}
          = object
              (catMaybes
                 [("uptimeCheckConfigs" .=) <$>
                    _luccrUptimeCheckConfigs,
                  ("nextPageToken" .=) <$> _luccrNextPageToken,
                  ("totalSize" .=) <$> _luccrTotalSize])

-- | Information involved in an HTTP\/HTTPS Uptime check request.
--
-- /See:/ 'hTTPCheck' smart constructor.
data HTTPCheck =
  HTTPCheck'
    { _httpcUseSSL :: !(Maybe Bool)
    , _httpcPath :: !(Maybe Text)
    , _httpcBody :: !(Maybe Bytes)
    , _httpcMaskHeaders :: !(Maybe Bool)
    , _httpcHeaders :: !(Maybe HTTPCheckHeaders)
    , _httpcValidateSSL :: !(Maybe Bool)
    , _httpcRequestMethod :: !(Maybe HTTPCheckRequestMethod)
    , _httpcAuthInfo :: !(Maybe BasicAuthentication)
    , _httpcContentType :: !(Maybe HTTPCheckContentType)
    , _httpcPort :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpcUseSSL'
--
-- * 'httpcPath'
--
-- * 'httpcBody'
--
-- * 'httpcMaskHeaders'
--
-- * 'httpcHeaders'
--
-- * 'httpcValidateSSL'
--
-- * 'httpcRequestMethod'
--
-- * 'httpcAuthInfo'
--
-- * 'httpcContentType'
--
-- * 'httpcPort'
hTTPCheck
    :: HTTPCheck
hTTPCheck =
  HTTPCheck'
    { _httpcUseSSL = Nothing
    , _httpcPath = Nothing
    , _httpcBody = Nothing
    , _httpcMaskHeaders = Nothing
    , _httpcHeaders = Nothing
    , _httpcValidateSSL = Nothing
    , _httpcRequestMethod = Nothing
    , _httpcAuthInfo = Nothing
    , _httpcContentType = Nothing
    , _httpcPort = Nothing
    }


-- | If true, use HTTPS instead of HTTP to run the check.
httpcUseSSL :: Lens' HTTPCheck (Maybe Bool)
httpcUseSSL
  = lens _httpcUseSSL (\ s a -> s{_httpcUseSSL = a})

-- | Optional (defaults to \"\/\"). The path to the page against which to run
-- the check. Will be combined with the host (specified within the
-- monitored_resource) and port to construct the full URL. If the provided
-- path does not begin with \"\/\", a \"\/\" will be prepended
-- automatically.
httpcPath :: Lens' HTTPCheck (Maybe Text)
httpcPath
  = lens _httpcPath (\ s a -> s{_httpcPath = a})

-- | The request body associated with the HTTP POST request. If content_type
-- is URL_ENCODED, the body passed in must be URL-encoded. Users can
-- provide a Content-Length header via the headers field or the API will do
-- so. If the request_method is GET and body is not empty, the API will
-- return an error. The maximum byte size is 1 megabyte. Note: As with all
-- bytes fields, JSON representations are base64 encoded. e.g.: \"foo=bar\"
-- in URL-encoded form is \"foo%3Dbar\" and in base64 encoding is
-- \"Zm9vJTI1M0RiYXI=\".
httpcBody :: Lens' HTTPCheck (Maybe ByteString)
httpcBody
  = lens _httpcBody (\ s a -> s{_httpcBody = a}) .
      mapping _Bytes

-- | Boolean specifying whether to encrypt the header information. Encryption
-- should be specified for any headers related to authentication that you
-- do not wish to be seen when retrieving the configuration. The server
-- will be responsible for encrypting the headers. On Get\/List calls, if
-- mask_headers is set to true then the headers will be obscured with
-- ******.
httpcMaskHeaders :: Lens' HTTPCheck (Maybe Bool)
httpcMaskHeaders
  = lens _httpcMaskHeaders
      (\ s a -> s{_httpcMaskHeaders = a})

-- | The list of headers to send as part of the Uptime check request. If two
-- headers have the same key and different values, they should be entered
-- as a single header, with the value being a comma-separated list of all
-- the desired values as described at
-- https:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616.txt (page 31).
-- Entering two separate headers with the same key in a Create call will
-- cause the first to be overwritten by the second. The maximum number of
-- headers allowed is 100.
httpcHeaders :: Lens' HTTPCheck (Maybe HTTPCheckHeaders)
httpcHeaders
  = lens _httpcHeaders (\ s a -> s{_httpcHeaders = a})

-- | Boolean specifying whether to include SSL certificate validation as a
-- part of the Uptime check. Only applies to checks where
-- monitored_resource is set to uptime_url. If use_ssl is false, setting
-- validate_ssl to true has no effect.
httpcValidateSSL :: Lens' HTTPCheck (Maybe Bool)
httpcValidateSSL
  = lens _httpcValidateSSL
      (\ s a -> s{_httpcValidateSSL = a})

-- | The HTTP request method to use for the check. If set to
-- METHOD_UNSPECIFIED then request_method defaults to GET.
httpcRequestMethod :: Lens' HTTPCheck (Maybe HTTPCheckRequestMethod)
httpcRequestMethod
  = lens _httpcRequestMethod
      (\ s a -> s{_httpcRequestMethod = a})

-- | The authentication information. Optional when creating an HTTP check;
-- defaults to empty.
httpcAuthInfo :: Lens' HTTPCheck (Maybe BasicAuthentication)
httpcAuthInfo
  = lens _httpcAuthInfo
      (\ s a -> s{_httpcAuthInfo = a})

-- | The content type header to use for the check. The following
-- configurations result in errors: 1. Content type is specified in both
-- the headers field and the content_type field. 2. Request method is GET
-- and content_type is not TYPE_UNSPECIFIED 3. Request method is POST and
-- content_type is TYPE_UNSPECIFIED. 4. Request method is POST and a
-- \"Content-Type\" header is provided via headers field. The content_type
-- field should be used instead.
httpcContentType :: Lens' HTTPCheck (Maybe HTTPCheckContentType)
httpcContentType
  = lens _httpcContentType
      (\ s a -> s{_httpcContentType = a})

-- | Optional (defaults to 80 when use_ssl is false, and 443 when use_ssl is
-- true). The TCP port on the HTTP server against which to run the check.
-- Will be combined with host (specified within the monitored_resource) and
-- path to construct the full URL.
httpcPort :: Lens' HTTPCheck (Maybe Int32)
httpcPort
  = lens _httpcPort (\ s a -> s{_httpcPort = a}) .
      mapping _Coerce

instance FromJSON HTTPCheck where
        parseJSON
          = withObject "HTTPCheck"
              (\ o ->
                 HTTPCheck' <$>
                   (o .:? "useSsl") <*> (o .:? "path") <*>
                     (o .:? "body")
                     <*> (o .:? "maskHeaders")
                     <*> (o .:? "headers")
                     <*> (o .:? "validateSsl")
                     <*> (o .:? "requestMethod")
                     <*> (o .:? "authInfo")
                     <*> (o .:? "contentType")
                     <*> (o .:? "port"))

instance ToJSON HTTPCheck where
        toJSON HTTPCheck'{..}
          = object
              (catMaybes
                 [("useSsl" .=) <$> _httpcUseSSL,
                  ("path" .=) <$> _httpcPath,
                  ("body" .=) <$> _httpcBody,
                  ("maskHeaders" .=) <$> _httpcMaskHeaders,
                  ("headers" .=) <$> _httpcHeaders,
                  ("validateSsl" .=) <$> _httpcValidateSSL,
                  ("requestMethod" .=) <$> _httpcRequestMethod,
                  ("authInfo" .=) <$> _httpcAuthInfo,
                  ("contentType" .=) <$> _httpcContentType,
                  ("port" .=) <$> _httpcPort])

-- | A collection of data points that describes the time-varying values of a
-- metric. A time series is identified by a combination of a
-- fully-specified monitored resource and a fully-specified metric. This
-- type is used for both listing and creating time series.
--
-- /See:/ 'timeSeries' smart constructor.
data TimeSeries =
  TimeSeries'
    { _tsPoints :: !(Maybe [Point])
    , _tsMetricKind :: !(Maybe TimeSeriesMetricKind)
    , _tsMetric :: !(Maybe Metric)
    , _tsResource :: !(Maybe MonitoredResource)
    , _tsMetadata :: !(Maybe MonitoredResourceMetadata)
    , _tsValueType :: !(Maybe TimeSeriesValueType)
    , _tsUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsPoints'
--
-- * 'tsMetricKind'
--
-- * 'tsMetric'
--
-- * 'tsResource'
--
-- * 'tsMetadata'
--
-- * 'tsValueType'
--
-- * 'tsUnit'
timeSeries
    :: TimeSeries
timeSeries =
  TimeSeries'
    { _tsPoints = Nothing
    , _tsMetricKind = Nothing
    , _tsMetric = Nothing
    , _tsResource = Nothing
    , _tsMetadata = Nothing
    , _tsValueType = Nothing
    , _tsUnit = Nothing
    }


-- | The data points of this time series. When listing time series, points
-- are returned in reverse time order.When creating a time series, this
-- field must contain exactly one point and the point\'s type must be the
-- same as the value type of the associated metric. If the associated
-- metric\'s descriptor must be auto-created, then the value type of the
-- descriptor is determined by the point\'s type, which must be BOOL,
-- INT64, DOUBLE, or DISTRIBUTION.
tsPoints :: Lens' TimeSeries [Point]
tsPoints
  = lens _tsPoints (\ s a -> s{_tsPoints = a}) .
      _Default
      . _Coerce

-- | The metric kind of the time series. When listing time series, this
-- metric kind might be different from the metric kind of the associated
-- metric if this time series is an alignment or reduction of other time
-- series.When creating a time series, this field is optional. If present,
-- it must be the same as the metric kind of the associated metric. If the
-- associated metric\'s descriptor must be auto-created, then this field
-- specifies the metric kind of the new descriptor and must be either GAUGE
-- (the default) or CUMULATIVE.
tsMetricKind :: Lens' TimeSeries (Maybe TimeSeriesMetricKind)
tsMetricKind
  = lens _tsMetricKind (\ s a -> s{_tsMetricKind = a})

-- | The associated metric. A fully-specified metric used to identify the
-- time series.
tsMetric :: Lens' TimeSeries (Maybe Metric)
tsMetric = lens _tsMetric (\ s a -> s{_tsMetric = a})

-- | The associated monitored resource. Custom metrics can use only certain
-- monitored resource types in their time series data. For more
-- information, see Monitored resources for custom metrics
-- (https:\/\/cloud.google.com\/monitoring\/custom-metrics\/creating-metrics#custom-metric-resources).
tsResource :: Lens' TimeSeries (Maybe MonitoredResource)
tsResource
  = lens _tsResource (\ s a -> s{_tsResource = a})

-- | Output only. The associated monitored resource metadata. When reading a
-- time series, this field will include metadata labels that are explicitly
-- named in the reduction. When creating a time series, this field is
-- ignored.
tsMetadata :: Lens' TimeSeries (Maybe MonitoredResourceMetadata)
tsMetadata
  = lens _tsMetadata (\ s a -> s{_tsMetadata = a})

-- | The value type of the time series. When listing time series, this value
-- type might be different from the value type of the associated metric if
-- this time series is an alignment or reduction of other time series.When
-- creating a time series, this field is optional. If present, it must be
-- the same as the type of the data in the points field.
tsValueType :: Lens' TimeSeries (Maybe TimeSeriesValueType)
tsValueType
  = lens _tsValueType (\ s a -> s{_tsValueType = a})

-- | The units in which the metric value is reported. It is only applicable
-- if the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines
-- the representation of the stored metric values.
tsUnit :: Lens' TimeSeries (Maybe Text)
tsUnit = lens _tsUnit (\ s a -> s{_tsUnit = a})

instance FromJSON TimeSeries where
        parseJSON
          = withObject "TimeSeries"
              (\ o ->
                 TimeSeries' <$>
                   (o .:? "points" .!= mempty) <*> (o .:? "metricKind")
                     <*> (o .:? "metric")
                     <*> (o .:? "resource")
                     <*> (o .:? "metadata")
                     <*> (o .:? "valueType")
                     <*> (o .:? "unit"))

instance ToJSON TimeSeries where
        toJSON TimeSeries'{..}
          = object
              (catMaybes
                 [("points" .=) <$> _tsPoints,
                  ("metricKind" .=) <$> _tsMetricKind,
                  ("metric" .=) <$> _tsMetric,
                  ("resource" .=) <$> _tsResource,
                  ("metadata" .=) <$> _tsMetadata,
                  ("valueType" .=) <$> _tsValueType,
                  ("unit" .=) <$> _tsUnit])

-- | A description of the conditions under which some aspect of your system
-- is considered to be \"unhealthy\" and the ways to notify people or
-- services about this state. For an overview of alert policies, see
-- Introduction to Alerting
-- (https:\/\/cloud.google.com\/monitoring\/alerts\/).
--
-- /See:/ 'alertPolicy' smart constructor.
data AlertPolicy =
  AlertPolicy'
    { _apEnabled :: !(Maybe Bool)
    , _apNotificationChannels :: !(Maybe [Text])
    , _apMutationRecord :: !(Maybe MutationRecord)
    , _apCreationRecord :: !(Maybe MutationRecord)
    , _apUserLabels :: !(Maybe AlertPolicyUserLabels)
    , _apName :: !(Maybe Text)
    , _apDocumentation :: !(Maybe Documentation)
    , _apValidity :: !(Maybe Status)
    , _apDisplayName :: !(Maybe Text)
    , _apAlertStrategy :: !(Maybe AlertStrategy)
    , _apConditions :: !(Maybe [Condition])
    , _apCombiner :: !(Maybe AlertPolicyCombiner)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apEnabled'
--
-- * 'apNotificationChannels'
--
-- * 'apMutationRecord'
--
-- * 'apCreationRecord'
--
-- * 'apUserLabels'
--
-- * 'apName'
--
-- * 'apDocumentation'
--
-- * 'apValidity'
--
-- * 'apDisplayName'
--
-- * 'apAlertStrategy'
--
-- * 'apConditions'
--
-- * 'apCombiner'
alertPolicy
    :: AlertPolicy
alertPolicy =
  AlertPolicy'
    { _apEnabled = Nothing
    , _apNotificationChannels = Nothing
    , _apMutationRecord = Nothing
    , _apCreationRecord = Nothing
    , _apUserLabels = Nothing
    , _apName = Nothing
    , _apDocumentation = Nothing
    , _apValidity = Nothing
    , _apDisplayName = Nothing
    , _apAlertStrategy = Nothing
    , _apConditions = Nothing
    , _apCombiner = Nothing
    }


-- | Whether or not the policy is enabled. On write, the default
-- interpretation if unset is that the policy is enabled. On read, clients
-- should not make any assumption about the state if it has not been
-- populated. The field should always be populated on List and Get
-- operations, unless a field projection has been specified that strips it
-- out.
apEnabled :: Lens' AlertPolicy (Maybe Bool)
apEnabled
  = lens _apEnabled (\ s a -> s{_apEnabled = a})

-- | Identifies the notification channels to which notifications should be
-- sent when incidents are opened or closed or when new violations occur on
-- an already opened incident. Each element of this array corresponds to
-- the name field in each of the NotificationChannel objects that are
-- returned from the ListNotificationChannels method. The format of the
-- entries in this field is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/notificationChannels\/[CHANNEL_ID]
apNotificationChannels :: Lens' AlertPolicy [Text]
apNotificationChannels
  = lens _apNotificationChannels
      (\ s a -> s{_apNotificationChannels = a})
      . _Default
      . _Coerce

-- | A read-only record of the most recent change to the alerting policy. If
-- provided in a call to create or update, this field will be ignored.
apMutationRecord :: Lens' AlertPolicy (Maybe MutationRecord)
apMutationRecord
  = lens _apMutationRecord
      (\ s a -> s{_apMutationRecord = a})

-- | A read-only record of the creation of the alerting policy. If provided
-- in a call to create or update, this field will be ignored.
apCreationRecord :: Lens' AlertPolicy (Maybe MutationRecord)
apCreationRecord
  = lens _apCreationRecord
      (\ s a -> s{_apCreationRecord = a})

-- | User-supplied key\/value data to be used for organizing and identifying
-- the AlertPolicy objects.The field can contain up to 64 entries. Each key
-- and value is limited to 63 Unicode characters or 128 bytes, whichever is
-- smaller. Labels and values can contain only lowercase letters, numerals,
-- underscores, and dashes. Keys must begin with a letter.
apUserLabels :: Lens' AlertPolicy (Maybe AlertPolicyUserLabels)
apUserLabels
  = lens _apUserLabels (\ s a -> s{_apUserLabels = a})

-- | Required if the policy exists. The resource name for this policy. The
-- format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/alertPolicies\/[ALERT_POLICY_ID]
-- [ALERT_POLICY_ID] is assigned by Stackdriver Monitoring when the policy
-- is created. When calling the alertPolicies.create method, do not include
-- the name field in the alerting policy passed as part of the request.
apName :: Lens' AlertPolicy (Maybe Text)
apName = lens _apName (\ s a -> s{_apName = a})

-- | Documentation that is included with notifications and incidents related
-- to this policy. Best practice is for the documentation to include
-- information to help responders understand, mitigate, escalate, and
-- correct the underlying problems detected by the alerting policy.
-- Notification channels that have limited capacity might not show this
-- documentation.
apDocumentation :: Lens' AlertPolicy (Maybe Documentation)
apDocumentation
  = lens _apDocumentation
      (\ s a -> s{_apDocumentation = a})

-- | Read-only description of how the alert policy is invalid. OK if the
-- alert policy is valid. If not OK, the alert policy will not generate
-- incidents.
apValidity :: Lens' AlertPolicy (Maybe Status)
apValidity
  = lens _apValidity (\ s a -> s{_apValidity = a})

-- | A short name or phrase used to identify the policy in dashboards,
-- notifications, and incidents. To avoid confusion, don\'t use the same
-- display name for multiple policies in the same project. The name is
-- limited to 512 Unicode characters.
apDisplayName :: Lens' AlertPolicy (Maybe Text)
apDisplayName
  = lens _apDisplayName
      (\ s a -> s{_apDisplayName = a})

-- | Control over how this alert policy\'s notification channels are
-- notified.
apAlertStrategy :: Lens' AlertPolicy (Maybe AlertStrategy)
apAlertStrategy
  = lens _apAlertStrategy
      (\ s a -> s{_apAlertStrategy = a})

-- | A list of conditions for the policy. The conditions are combined by AND
-- or OR according to the combiner field. If the combined conditions
-- evaluate to true, then an incident is created. A policy can have from
-- one to six conditions. If condition_time_series_query_language is
-- present, it must be the only condition.
apConditions :: Lens' AlertPolicy [Condition]
apConditions
  = lens _apConditions (\ s a -> s{_apConditions = a})
      . _Default
      . _Coerce

-- | How to combine the results of multiple conditions to determine if an
-- incident should be opened. If condition_time_series_query_language is
-- present, this must be COMBINE_UNSPECIFIED.
apCombiner :: Lens' AlertPolicy (Maybe AlertPolicyCombiner)
apCombiner
  = lens _apCombiner (\ s a -> s{_apCombiner = a})

instance FromJSON AlertPolicy where
        parseJSON
          = withObject "AlertPolicy"
              (\ o ->
                 AlertPolicy' <$>
                   (o .:? "enabled") <*>
                     (o .:? "notificationChannels" .!= mempty)
                     <*> (o .:? "mutationRecord")
                     <*> (o .:? "creationRecord")
                     <*> (o .:? "userLabels")
                     <*> (o .:? "name")
                     <*> (o .:? "documentation")
                     <*> (o .:? "validity")
                     <*> (o .:? "displayName")
                     <*> (o .:? "alertStrategy")
                     <*> (o .:? "conditions" .!= mempty)
                     <*> (o .:? "combiner"))

instance ToJSON AlertPolicy where
        toJSON AlertPolicy'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _apEnabled,
                  ("notificationChannels" .=) <$>
                    _apNotificationChannels,
                  ("mutationRecord" .=) <$> _apMutationRecord,
                  ("creationRecord" .=) <$> _apCreationRecord,
                  ("userLabels" .=) <$> _apUserLabels,
                  ("name" .=) <$> _apName,
                  ("documentation" .=) <$> _apDocumentation,
                  ("validity" .=) <$> _apValidity,
                  ("displayName" .=) <$> _apDisplayName,
                  ("alertStrategy" .=) <$> _apAlertStrategy,
                  ("conditions" .=) <$> _apConditions,
                  ("combiner" .=) <$> _apCombiner])

-- | Service Level Indicators for which atomic units of service are counted
-- directly.
--
-- /See:/ 'requestBasedSli' smart constructor.
data RequestBasedSli =
  RequestBasedSli'
    { _rbsGoodTotalRatio :: !(Maybe TimeSeriesRatio)
    , _rbsDistributionCut :: !(Maybe DistributionCut)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestBasedSli' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbsGoodTotalRatio'
--
-- * 'rbsDistributionCut'
requestBasedSli
    :: RequestBasedSli
requestBasedSli =
  RequestBasedSli' {_rbsGoodTotalRatio = Nothing, _rbsDistributionCut = Nothing}


-- | good_total_ratio is used when the ratio of good_service to total_service
-- is computed from two TimeSeries.
rbsGoodTotalRatio :: Lens' RequestBasedSli (Maybe TimeSeriesRatio)
rbsGoodTotalRatio
  = lens _rbsGoodTotalRatio
      (\ s a -> s{_rbsGoodTotalRatio = a})

-- | distribution_cut is used when good_service is a count of values
-- aggregated in a Distribution that fall into a good range. The
-- total_service is the total count of all values aggregated in the
-- Distribution.
rbsDistributionCut :: Lens' RequestBasedSli (Maybe DistributionCut)
rbsDistributionCut
  = lens _rbsDistributionCut
      (\ s a -> s{_rbsDistributionCut = a})

instance FromJSON RequestBasedSli where
        parseJSON
          = withObject "RequestBasedSli"
              (\ o ->
                 RequestBasedSli' <$>
                   (o .:? "goodTotalRatio") <*>
                     (o .:? "distributionCut"))

instance ToJSON RequestBasedSli where
        toJSON RequestBasedSli'{..}
          = object
              (catMaybes
                 [("goodTotalRatio" .=) <$> _rbsGoodTotalRatio,
                  ("distributionCut" .=) <$> _rbsDistributionCut])

-- | Cloud Endpoints service. Learn more at
-- https:\/\/cloud.google.com\/endpoints.
--
-- /See:/ 'cloudEndpoints' smart constructor.
newtype CloudEndpoints =
  CloudEndpoints'
    { _ceService :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceService'
cloudEndpoints
    :: CloudEndpoints
cloudEndpoints = CloudEndpoints' {_ceService = Nothing}


-- | The name of the Cloud Endpoints service underlying this service.
-- Corresponds to the service resource label in the api monitored resource:
-- https:\/\/cloud.google.com\/monitoring\/api\/resources#tag_api
ceService :: Lens' CloudEndpoints (Maybe Text)
ceService
  = lens _ceService (\ s a -> s{_ceService = a})

instance FromJSON CloudEndpoints where
        parseJSON
          = withObject "CloudEndpoints"
              (\ o -> CloudEndpoints' <$> (o .:? "service"))

instance ToJSON CloudEndpoints where
        toJSON CloudEndpoints'{..}
          = object (catMaybes [("service" .=) <$> _ceService])

-- | The protocol for the ListAlertPolicies response.
--
-- /See:/ 'listAlertPoliciesResponse' smart constructor.
data ListAlertPoliciesResponse =
  ListAlertPoliciesResponse'
    { _laprNextPageToken :: !(Maybe Text)
    , _laprTotalSize :: !(Maybe (Textual Int32))
    , _laprAlertPolicies :: !(Maybe [AlertPolicy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAlertPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laprNextPageToken'
--
-- * 'laprTotalSize'
--
-- * 'laprAlertPolicies'
listAlertPoliciesResponse
    :: ListAlertPoliciesResponse
listAlertPoliciesResponse =
  ListAlertPoliciesResponse'
    { _laprNextPageToken = Nothing
    , _laprTotalSize = Nothing
    , _laprAlertPolicies = Nothing
    }


-- | If there might be more results than were returned, then this field is
-- set to a non-empty value. To see the additional results, use that value
-- as page_token in the next call to this method.
laprNextPageToken :: Lens' ListAlertPoliciesResponse (Maybe Text)
laprNextPageToken
  = lens _laprNextPageToken
      (\ s a -> s{_laprNextPageToken = a})

-- | The total number of alert policies in all pages. This number is only an
-- estimate, and may change in subsequent pages. https:\/\/aip.dev\/158
laprTotalSize :: Lens' ListAlertPoliciesResponse (Maybe Int32)
laprTotalSize
  = lens _laprTotalSize
      (\ s a -> s{_laprTotalSize = a})
      . mapping _Coerce

-- | The returned alert policies.
laprAlertPolicies :: Lens' ListAlertPoliciesResponse [AlertPolicy]
laprAlertPolicies
  = lens _laprAlertPolicies
      (\ s a -> s{_laprAlertPolicies = a})
      . _Default
      . _Coerce

instance FromJSON ListAlertPoliciesResponse where
        parseJSON
          = withObject "ListAlertPoliciesResponse"
              (\ o ->
                 ListAlertPoliciesResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "alertPolicies" .!= mempty))

instance ToJSON ListAlertPoliciesResponse where
        toJSON ListAlertPoliciesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _laprNextPageToken,
                  ("totalSize" .=) <$> _laprTotalSize,
                  ("alertPolicies" .=) <$> _laprAlertPolicies])

-- | Information required for a TCP Uptime check request.
--
-- /See:/ 'tcpCheck' smart constructor.
newtype TCPCheck =
  TCPCheck'
    { _tcPort :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TCPCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcPort'
tcpCheck
    :: TCPCheck
tcpCheck = TCPCheck' {_tcPort = Nothing}


-- | The TCP port on the server against which to run the check. Will be
-- combined with host (specified within the monitored_resource) to
-- construct the full URL. Required.
tcPort :: Lens' TCPCheck (Maybe Int32)
tcPort
  = lens _tcPort (\ s a -> s{_tcPort = a}) .
      mapping _Coerce

instance FromJSON TCPCheck where
        parseJSON
          = withObject "TCPCheck"
              (\ o -> TCPCheck' <$> (o .:? "port"))

instance ToJSON TCPCheck where
        toJSON TCPCheck'{..}
          = object (catMaybes [("port" .=) <$> _tcPort])

-- | Labels which have been used to annotate the service. Label keys must
-- start with a letter. Label keys and values may contain lowercase
-- letters, numbers, underscores, and dashes. Label keys and values have a
-- maximum length of 63 characters, and must be less than 128 bytes in
-- size. Up to 64 label entries may be stored. For labels which do not have
-- a semantic value, the empty string may be supplied for the label value.
--
-- /See:/ 'serviceUserLabels' smart constructor.
newtype ServiceUserLabels =
  ServiceUserLabels'
    { _sulAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceUserLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sulAddtional'
serviceUserLabels
    :: HashMap Text Text -- ^ 'sulAddtional'
    -> ServiceUserLabels
serviceUserLabels pSulAddtional_ =
  ServiceUserLabels' {_sulAddtional = _Coerce # pSulAddtional_}


sulAddtional :: Lens' ServiceUserLabels (HashMap Text Text)
sulAddtional
  = lens _sulAddtional (\ s a -> s{_sulAddtional = a})
      . _Coerce

instance FromJSON ServiceUserLabels where
        parseJSON
          = withObject "ServiceUserLabels"
              (\ o -> ServiceUserLabels' <$> (parseJSONObject o))

instance ToJSON ServiceUserLabels where
        toJSON = toJSON . _sulAddtional

-- | A condition type that checks that monitored resources are reporting
-- data. The configuration defines a metric and a set of monitored
-- resources. The predicate is considered in violation when a time series
-- for the specified metric of a monitored resource does not include any
-- data in the specified duration.
--
-- /See:/ 'metricAbsence' smart constructor.
data MetricAbsence =
  MetricAbsence'
    { _maAggregations :: !(Maybe [Aggregation])
    , _maFilter :: !(Maybe Text)
    , _maTrigger :: !(Maybe Trigger)
    , _maDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricAbsence' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maAggregations'
--
-- * 'maFilter'
--
-- * 'maTrigger'
--
-- * 'maDuration'
metricAbsence
    :: MetricAbsence
metricAbsence =
  MetricAbsence'
    { _maAggregations = Nothing
    , _maFilter = Nothing
    , _maTrigger = Nothing
    , _maDuration = Nothing
    }


-- | Specifies the alignment of data points in individual time series as well
-- as how to combine the retrieved time series together (such as when
-- aggregating multiple streams on each resource to a single stream for
-- each resource or when aggregating streams across all members of a group
-- of resrouces). Multiple aggregations are applied in the order
-- specified.This field is similar to the one in the ListTimeSeries request
-- (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list).
-- It is advisable to use the ListTimeSeries method when debugging this
-- field.
maAggregations :: Lens' MetricAbsence [Aggregation]
maAggregations
  = lens _maAggregations
      (\ s a -> s{_maAggregations = a})
      . _Default
      . _Coerce

-- | Required. A filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that
-- identifies which time series should be compared with the threshold.The
-- filter is similar to the one that is specified in the ListTimeSeries
-- request
-- (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list)
-- (that call is useful to verify the time series that will be retrieved \/
-- processed). The filter must specify the metric type and the resource
-- type. Optionally, it can specify resource labels and metric labels. This
-- field must not exceed 2048 Unicode characters in length.
maFilter :: Lens' MetricAbsence (Maybe Text)
maFilter = lens _maFilter (\ s a -> s{_maFilter = a})

-- | The number\/percent of time series for which the comparison must hold in
-- order for the condition to trigger. If unspecified, then the condition
-- will trigger if the comparison is true for any of the time series that
-- have been identified by filter and aggregations.
maTrigger :: Lens' MetricAbsence (Maybe Trigger)
maTrigger
  = lens _maTrigger (\ s a -> s{_maTrigger = a})

-- | The amount of time that a time series must fail to report new data to be
-- considered failing. The minimum value of this field is 120 seconds.
-- Larger values that are a multiple of a minute--for example, 240 or 300
-- seconds--are supported. If an invalid value is given, an error will be
-- returned. The Duration.nanos field is ignored.
maDuration :: Lens' MetricAbsence (Maybe Scientific)
maDuration
  = lens _maDuration (\ s a -> s{_maDuration = a}) .
      mapping _GDuration

instance FromJSON MetricAbsence where
        parseJSON
          = withObject "MetricAbsence"
              (\ o ->
                 MetricAbsence' <$>
                   (o .:? "aggregations" .!= mempty) <*>
                     (o .:? "filter")
                     <*> (o .:? "trigger")
                     <*> (o .:? "duration"))

instance ToJSON MetricAbsence where
        toJSON MetricAbsence'{..}
          = object
              (catMaybes
                 [("aggregations" .=) <$> _maAggregations,
                  ("filter" .=) <$> _maFilter,
                  ("trigger" .=) <$> _maTrigger,
                  ("duration" .=) <$> _maDuration])

-- | Describes the error status for values that were not written.
--
-- /See:/ 'collectdValueError' smart constructor.
data CollectdValueError =
  CollectdValueError'
    { _cveError :: !(Maybe Status)
    , _cveIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectdValueError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cveError'
--
-- * 'cveIndex'
collectdValueError
    :: CollectdValueError
collectdValueError =
  CollectdValueError' {_cveError = Nothing, _cveIndex = Nothing}


-- | Records the error status for the value.
cveError :: Lens' CollectdValueError (Maybe Status)
cveError = lens _cveError (\ s a -> s{_cveError = a})

-- | The zero-based index in CollectdPayload.values within the parent
-- CreateCollectdTimeSeriesRequest.collectd_payloads.
cveIndex :: Lens' CollectdValueError (Maybe Int32)
cveIndex
  = lens _cveIndex (\ s a -> s{_cveIndex = a}) .
      mapping _Coerce

instance FromJSON CollectdValueError where
        parseJSON
          = withObject "CollectdValueError"
              (\ o ->
                 CollectdValueError' <$>
                   (o .:? "error") <*> (o .:? "index"))

instance ToJSON CollectdValueError where
        toJSON CollectdValueError'{..}
          = object
              (catMaybes
                 [("error" .=) <$> _cveError,
                  ("index" .=) <$> _cveIndex])
