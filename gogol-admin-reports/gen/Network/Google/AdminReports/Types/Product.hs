{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdminReports.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdminReports.Types.Product where

import           Network.Google.AdminReports.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'activityEvents' smart constructor.
data ActivityEvents = ActivityEvents
    { _aeName       :: !(Maybe Text)
    , _aeParameters :: !(Maybe [ActivityEventsParameters])
    , _aeType       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeName'
--
-- * 'aeParameters'
--
-- * 'aeType'
activityEvents
    :: ActivityEvents
activityEvents =
    ActivityEvents
    { _aeName = Nothing
    , _aeParameters = Nothing
    , _aeType = Nothing
    }

-- | Name of event.
aeName :: Lens' ActivityEvents (Maybe Text)
aeName = lens _aeName (\ s a -> s{_aeName = a})

-- | Parameter value pairs for various applications.
aeParameters :: Lens' ActivityEvents [ActivityEventsParameters]
aeParameters
  = lens _aeParameters (\ s a -> s{_aeParameters = a})
      . _Default
      . _Coerce

-- | Type of event.
aeType :: Lens' ActivityEvents (Maybe Text)
aeType = lens _aeType (\ s a -> s{_aeType = a})

instance FromJSON ActivityEvents where
        parseJSON
          = withObject "ActivityEvents"
              (\ o ->
                 ActivityEvents <$>
                   (o .:? "name") <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON ActivityEvents where
        toJSON ActivityEvents{..}
          = object
              (catMaybes
                 [("name" .=) <$> _aeName,
                  ("parameters" .=) <$> _aeParameters,
                  ("type" .=) <$> _aeType])

-- | JSON template for a collection of usage reports.
--
-- /See:/ 'usageReports' smart constructor.
data UsageReports = UsageReports
    { _urEtag          :: !(Maybe Text)
    , _urNextPageToken :: !(Maybe Text)
    , _urUsageReports  :: !(Maybe [UsageReport])
    , _urKind          :: !Text
    , _urWarnings      :: !(Maybe [UsageReportsWarnings])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urEtag'
--
-- * 'urNextPageToken'
--
-- * 'urUsageReports'
--
-- * 'urKind'
--
-- * 'urWarnings'
usageReports
    :: UsageReports
usageReports =
    UsageReports
    { _urEtag = Nothing
    , _urNextPageToken = Nothing
    , _urUsageReports = Nothing
    , _urKind = "admin#reports#usageReports"
    , _urWarnings = Nothing
    }

-- | ETag of the resource.
urEtag :: Lens' UsageReports (Maybe Text)
urEtag = lens _urEtag (\ s a -> s{_urEtag = a})

-- | Token for retrieving the next page
urNextPageToken :: Lens' UsageReports (Maybe Text)
urNextPageToken
  = lens _urNextPageToken
      (\ s a -> s{_urNextPageToken = a})

-- | Various application parameter records.
urUsageReports :: Lens' UsageReports [UsageReport]
urUsageReports
  = lens _urUsageReports
      (\ s a -> s{_urUsageReports = a})
      . _Default
      . _Coerce

-- | The kind of object.
urKind :: Lens' UsageReports Text
urKind = lens _urKind (\ s a -> s{_urKind = a})

-- | Warnings if any.
urWarnings :: Lens' UsageReports [UsageReportsWarnings]
urWarnings
  = lens _urWarnings (\ s a -> s{_urWarnings = a}) .
      _Default
      . _Coerce

instance FromJSON UsageReports where
        parseJSON
          = withObject "UsageReports"
              (\ o ->
                 UsageReports <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "usageReports" .!= mempty)
                     <*> (o .:? "kind" .!= "admin#reports#usageReports")
                     <*> (o .:? "warnings" .!= mempty))

instance ToJSON UsageReports where
        toJSON UsageReports{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _urEtag,
                  ("nextPageToken" .=) <$> _urNextPageToken,
                  ("usageReports" .=) <$> _urUsageReports,
                  Just ("kind" .= _urKind),
                  ("warnings" .=) <$> _urWarnings])

-- | Unique identifier for each activity record.
--
-- /See:/ 'activityId' smart constructor.
data ActivityId = ActivityId
    { _aiTime            :: !(Maybe DateTime)
    , _aiUniqueQualifier :: !(Maybe Int64)
    , _aiCustomerId      :: !(Maybe Text)
    , _aiApplicationName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiTime'
--
-- * 'aiUniqueQualifier'
--
-- * 'aiCustomerId'
--
-- * 'aiApplicationName'
activityId
    :: ActivityId
activityId =
    ActivityId
    { _aiTime = Nothing
    , _aiUniqueQualifier = Nothing
    , _aiCustomerId = Nothing
    , _aiApplicationName = Nothing
    }

-- | Time of occurrence of the activity.
aiTime :: Lens' ActivityId (Maybe UTCTime)
aiTime = lens _aiTime (\ s a -> s{_aiTime = a})

-- | Unique qualifier if multiple events have the same time.
aiUniqueQualifier :: Lens' ActivityId (Maybe Int64)
aiUniqueQualifier
  = lens _aiUniqueQualifier
      (\ s a -> s{_aiUniqueQualifier = a})

-- | Obfuscated customer ID of the source customer.
aiCustomerId :: Lens' ActivityId (Maybe Text)
aiCustomerId
  = lens _aiCustomerId (\ s a -> s{_aiCustomerId = a})

-- | Application name to which the event belongs.
aiApplicationName :: Lens' ActivityId (Maybe Text)
aiApplicationName
  = lens _aiApplicationName
      (\ s a -> s{_aiApplicationName = a})

instance FromJSON ActivityId where
        parseJSON
          = withObject "ActivityId"
              (\ o ->
                 ActivityId <$>
                   (o .:? "time") <*> (o .:? "uniqueQualifier") <*>
                     (o .:? "customerId")
                     <*> (o .:? "applicationName"))

instance ToJSON ActivityId where
        toJSON ActivityId{..}
          = object
              (catMaybes
                 [("time" .=) <$> _aiTime,
                  ("uniqueQualifier" .=) <$> _aiUniqueQualifier,
                  ("customerId" .=) <$> _aiCustomerId,
                  ("applicationName" .=) <$> _aiApplicationName])

-- | JSON template for a collection of activites.
--
-- /See:/ 'activities' smart constructor.
data Activities = Activities
    { _aEtag          :: !(Maybe Text)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Activity])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aNextPageToken'
--
-- * 'aKind'
--
-- * 'aItems'
activities
    :: Activities
activities =
    Activities
    { _aEtag = Nothing
    , _aNextPageToken = Nothing
    , _aKind = "admin#reports#activities"
    , _aItems = Nothing
    }

-- | ETag of the resource.
aEtag :: Lens' Activities (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Token for retrieving the next page
aNextPageToken :: Lens' Activities (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | Kind of list response this is.
aKind :: Lens' Activities Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | Each record in read response.
aItems :: Lens' Activities [Activity]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

instance FromJSON Activities where
        parseJSON
          = withObject "Activities"
              (\ o ->
                 Activities <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#reports#activities")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Activities where
        toJSON Activities{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag,
                  ("nextPageToken" .=) <$> _aNextPageToken,
                  Just ("kind" .= _aKind), ("items" .=) <$> _aItems])

-- | JSON template for a usage report.
--
-- /See:/ 'usageReport' smart constructor.
data UsageReport = UsageReport
    { _uEtag       :: !(Maybe Text)
    , _uKind       :: !Text
    , _uDate       :: !(Maybe Text)
    , _uParameters :: !(Maybe [UsageReportParameters])
    , _uEntity     :: !(Maybe UsageReportEntity)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uEtag'
--
-- * 'uKind'
--
-- * 'uDate'
--
-- * 'uParameters'
--
-- * 'uEntity'
usageReport
    :: UsageReport
usageReport =
    UsageReport
    { _uEtag = Nothing
    , _uKind = "admin#reports#usageReport"
    , _uDate = Nothing
    , _uParameters = Nothing
    , _uEntity = Nothing
    }

-- | ETag of the resource.
uEtag :: Lens' UsageReport (Maybe Text)
uEtag = lens _uEtag (\ s a -> s{_uEtag = a})

-- | The kind of object.
uKind :: Lens' UsageReport Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | The date to which the record belongs.
uDate :: Lens' UsageReport (Maybe Text)
uDate = lens _uDate (\ s a -> s{_uDate = a})

-- | Parameter value pairs for various applications.
uParameters :: Lens' UsageReport [UsageReportParameters]
uParameters
  = lens _uParameters (\ s a -> s{_uParameters = a}) .
      _Default
      . _Coerce

-- | Information about the type of the item.
uEntity :: Lens' UsageReport (Maybe UsageReportEntity)
uEntity = lens _uEntity (\ s a -> s{_uEntity = a})

instance FromJSON UsageReport where
        parseJSON
          = withObject "UsageReport"
              (\ o ->
                 UsageReport <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#reports#usageReport")
                     <*> (o .:? "date")
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON UsageReport where
        toJSON UsageReport{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _uEtag, Just ("kind" .= _uKind),
                  ("date" .=) <$> _uDate,
                  ("parameters" .=) <$> _uParameters,
                  ("entity" .=) <$> _uEntity])

--
-- /See:/ 'usageReportParametersMsgValue' smart constructor.
data UsageReportParametersMsgValue =
    UsageReportParametersMsgValue
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportParametersMsgValue' with the minimum fields required to make a request.
--
usageReportParametersMsgValue
    :: UsageReportParametersMsgValue
usageReportParametersMsgValue = UsageReportParametersMsgValue

instance FromJSON UsageReportParametersMsgValue where
        parseJSON
          = withObject "UsageReportParametersMsgValue"
              (\ o -> pure UsageReportParametersMsgValue)

instance ToJSON UsageReportParametersMsgValue where
        toJSON = const (Object mempty)

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cResourceURI :: !(Maybe Text)
    , _cResourceId  :: !(Maybe Text)
    , _cKind        :: !Text
    , _cExpiration  :: !(Maybe Int64)
    , _cToken       :: !(Maybe Text)
    , _cAddress     :: !(Maybe Text)
    , _cPayLoad     :: !(Maybe Bool)
    , _cParams      :: !(Maybe ChannelParams)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceURI'
--
-- * 'cResourceId'
--
-- * 'cKind'
--
-- * 'cExpiration'
--
-- * 'cToken'
--
-- * 'cAddress'
--
-- * 'cPayLoad'
--
-- * 'cParams'
--
-- * 'cId'
--
-- * 'cType'
channel
    :: Channel
channel =
    Channel
    { _cResourceURI = Nothing
    , _cResourceId = Nothing
    , _cKind = "api#channel"
    , _cExpiration = Nothing
    , _cToken = Nothing
    , _cAddress = Nothing
    , _cPayLoad = Nothing
    , _cParams = Nothing
    , _cId = Nothing
    , _cType = Nothing
    }

-- | A version-specific identifier for the watched resource.
cResourceURI :: Lens' Channel (Maybe Text)
cResourceURI
  = lens _cResourceURI (\ s a -> s{_cResourceURI = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
cResourceId :: Lens' Channel (Maybe Text)
cResourceId
  = lens _cResourceId (\ s a -> s{_cResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
cKind :: Lens' Channel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
cExpiration :: Lens' Channel (Maybe Int64)
cExpiration
  = lens _cExpiration (\ s a -> s{_cExpiration = a})

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
cToken :: Lens' Channel (Maybe Text)
cToken = lens _cToken (\ s a -> s{_cToken = a})

-- | The address where notifications are delivered for this channel.
cAddress :: Lens' Channel (Maybe Text)
cAddress = lens _cAddress (\ s a -> s{_cAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
cPayLoad :: Lens' Channel (Maybe Bool)
cPayLoad = lens _cPayLoad (\ s a -> s{_cPayLoad = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
cParams :: Lens' Channel (Maybe ChannelParams)
cParams = lens _cParams (\ s a -> s{_cParams = a})

-- | A UUID or similar unique string that identifies this channel.
cId :: Lens' Channel (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The type of delivery mechanism used for this channel.
cType :: Lens' Channel (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o ->
                 Channel <$>
                   (o .:? "resourceUri") <*> (o .:? "resourceId") <*>
                     (o .:? "kind" .!= "api#channel")
                     <*> (o .:? "expiration")
                     <*> (o .:? "token")
                     <*> (o .:? "address")
                     <*> (o .:? "payload")
                     <*> (o .:? "params")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Channel where
        toJSON Channel{..}
          = object
              (catMaybes
                 [("resourceUri" .=) <$> _cResourceURI,
                  ("resourceId" .=) <$> _cResourceId,
                  Just ("kind" .= _cKind),
                  ("expiration" .=) <$> _cExpiration,
                  ("token" .=) <$> _cToken,
                  ("address" .=) <$> _cAddress,
                  ("payload" .=) <$> _cPayLoad,
                  ("params" .=) <$> _cParams, ("id" .=) <$> _cId,
                  ("type" .=) <$> _cType])

--
-- /See:/ 'usageReportsWarningsData' smart constructor.
data UsageReportsWarningsData = UsageReportsWarningsData
    { _urwdValue :: !(Maybe Text)
    , _urwdKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportsWarningsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urwdValue'
--
-- * 'urwdKey'
usageReportsWarningsData
    :: UsageReportsWarningsData
usageReportsWarningsData =
    UsageReportsWarningsData
    { _urwdValue = Nothing
    , _urwdKey = Nothing
    }

-- | Value associated with a key-value pair to give detailed information on
-- the warning.
urwdValue :: Lens' UsageReportsWarningsData (Maybe Text)
urwdValue
  = lens _urwdValue (\ s a -> s{_urwdValue = a})

-- | Key associated with a key-value pair to give detailed information on the
-- warning.
urwdKey :: Lens' UsageReportsWarningsData (Maybe Text)
urwdKey = lens _urwdKey (\ s a -> s{_urwdKey = a})

instance FromJSON UsageReportsWarningsData where
        parseJSON
          = withObject "UsageReportsWarningsData"
              (\ o ->
                 UsageReportsWarningsData <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON UsageReportsWarningsData where
        toJSON UsageReportsWarningsData{..}
          = object
              (catMaybes
                 [("value" .=) <$> _urwdValue,
                  ("key" .=) <$> _urwdKey])

--
-- /See:/ 'usageReportsWarnings' smart constructor.
data UsageReportsWarnings = UsageReportsWarnings
    { _urwData    :: !(Maybe [UsageReportsWarningsData])
    , _urwCode    :: !(Maybe Text)
    , _urwMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportsWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urwData'
--
-- * 'urwCode'
--
-- * 'urwMessage'
usageReportsWarnings
    :: UsageReportsWarnings
usageReportsWarnings =
    UsageReportsWarnings
    { _urwData = Nothing
    , _urwCode = Nothing
    , _urwMessage = Nothing
    }

-- | Key-Value pairs to give detailed information on the warning.
urwData :: Lens' UsageReportsWarnings [UsageReportsWarningsData]
urwData
  = lens _urwData (\ s a -> s{_urwData = a}) . _Default
      . _Coerce

-- | Machine readable code \/ warning type.
urwCode :: Lens' UsageReportsWarnings (Maybe Text)
urwCode = lens _urwCode (\ s a -> s{_urwCode = a})

-- | Human readable message for the warning.
urwMessage :: Lens' UsageReportsWarnings (Maybe Text)
urwMessage
  = lens _urwMessage (\ s a -> s{_urwMessage = a})

instance FromJSON UsageReportsWarnings where
        parseJSON
          = withObject "UsageReportsWarnings"
              (\ o ->
                 UsageReportsWarnings <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON UsageReportsWarnings where
        toJSON UsageReportsWarnings{..}
          = object
              (catMaybes
                 [("data" .=) <$> _urwData, ("code" .=) <$> _urwCode,
                  ("message" .=) <$> _urwMessage])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
data ChannelParams =
    ChannelParams
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
channelParams
    :: ChannelParams
channelParams = ChannelParams

instance FromJSON ChannelParams where
        parseJSON
          = withObject "ChannelParams"
              (\ o -> pure ChannelParams)

instance ToJSON ChannelParams where
        toJSON = const (Object mempty)

-- | JSON template for the activity resource.
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _actEtag        :: !(Maybe Text)
    , _actIPAddress   :: !(Maybe Text)
    , _actKind        :: !Text
    , _actActor       :: !(Maybe ActivityActor)
    , _actOwnerDomain :: !(Maybe Text)
    , _actEvents      :: !(Maybe [ActivityEvents])
    , _actId          :: !(Maybe ActivityId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actEtag'
--
-- * 'actIPAddress'
--
-- * 'actKind'
--
-- * 'actActor'
--
-- * 'actOwnerDomain'
--
-- * 'actEvents'
--
-- * 'actId'
activity
    :: Activity
activity =
    Activity
    { _actEtag = Nothing
    , _actIPAddress = Nothing
    , _actKind = "admin#reports#activity"
    , _actActor = Nothing
    , _actOwnerDomain = Nothing
    , _actEvents = Nothing
    , _actId = Nothing
    }

-- | ETag of the entry.
actEtag :: Lens' Activity (Maybe Text)
actEtag = lens _actEtag (\ s a -> s{_actEtag = a})

-- | IP Address of the user doing the action.
actIPAddress :: Lens' Activity (Maybe Text)
actIPAddress
  = lens _actIPAddress (\ s a -> s{_actIPAddress = a})

-- | Kind of resource this is.
actKind :: Lens' Activity Text
actKind = lens _actKind (\ s a -> s{_actKind = a})

-- | User doing the action.
actActor :: Lens' Activity (Maybe ActivityActor)
actActor = lens _actActor (\ s a -> s{_actActor = a})

-- | Domain of source customer.
actOwnerDomain :: Lens' Activity (Maybe Text)
actOwnerDomain
  = lens _actOwnerDomain
      (\ s a -> s{_actOwnerDomain = a})

-- | Activity events.
actEvents :: Lens' Activity [ActivityEvents]
actEvents
  = lens _actEvents (\ s a -> s{_actEvents = a}) .
      _Default
      . _Coerce

-- | Unique identifier for each activity record.
actId :: Lens' Activity (Maybe ActivityId)
actId = lens _actId (\ s a -> s{_actId = a})

instance FromJSON Activity where
        parseJSON
          = withObject "Activity"
              (\ o ->
                 Activity <$>
                   (o .:? "etag") <*> (o .:? "ipAddress") <*>
                     (o .:? "kind" .!= "admin#reports#activity")
                     <*> (o .:? "actor")
                     <*> (o .:? "ownerDomain")
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON Activity where
        toJSON Activity{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _actEtag,
                  ("ipAddress" .=) <$> _actIPAddress,
                  Just ("kind" .= _actKind),
                  ("actor" .=) <$> _actActor,
                  ("ownerDomain" .=) <$> _actOwnerDomain,
                  ("events" .=) <$> _actEvents, ("id" .=) <$> _actId])

--
-- /See:/ 'activityEventsParameters' smart constructor.
data ActivityEventsParameters = ActivityEventsParameters
    { _aepBoolValue     :: !(Maybe Bool)
    , _aepIntValue      :: !(Maybe Int64)
    , _aepValue         :: !(Maybe Text)
    , _aepMultiIntValue :: !(Maybe [Int64])
    , _aepName          :: !(Maybe Text)
    , _aepMultiValue    :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityEventsParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aepBoolValue'
--
-- * 'aepIntValue'
--
-- * 'aepValue'
--
-- * 'aepMultiIntValue'
--
-- * 'aepName'
--
-- * 'aepMultiValue'
activityEventsParameters
    :: ActivityEventsParameters
activityEventsParameters =
    ActivityEventsParameters
    { _aepBoolValue = Nothing
    , _aepIntValue = Nothing
    , _aepValue = Nothing
    , _aepMultiIntValue = Nothing
    , _aepName = Nothing
    , _aepMultiValue = Nothing
    }

-- | Boolean value of the parameter.
aepBoolValue :: Lens' ActivityEventsParameters (Maybe Bool)
aepBoolValue
  = lens _aepBoolValue (\ s a -> s{_aepBoolValue = a})

-- | Integral value of the parameter.
aepIntValue :: Lens' ActivityEventsParameters (Maybe Int64)
aepIntValue
  = lens _aepIntValue (\ s a -> s{_aepIntValue = a})

-- | String value of the parameter.
aepValue :: Lens' ActivityEventsParameters (Maybe Text)
aepValue = lens _aepValue (\ s a -> s{_aepValue = a})

-- | Multi-int value of the parameter.
aepMultiIntValue :: Lens' ActivityEventsParameters [Int64]
aepMultiIntValue
  = lens _aepMultiIntValue
      (\ s a -> s{_aepMultiIntValue = a})
      . _Default
      . _Coerce

-- | The name of the parameter.
aepName :: Lens' ActivityEventsParameters (Maybe Text)
aepName = lens _aepName (\ s a -> s{_aepName = a})

-- | Multi-string value of the parameter.
aepMultiValue :: Lens' ActivityEventsParameters [Text]
aepMultiValue
  = lens _aepMultiValue
      (\ s a -> s{_aepMultiValue = a})
      . _Default
      . _Coerce

instance FromJSON ActivityEventsParameters where
        parseJSON
          = withObject "ActivityEventsParameters"
              (\ o ->
                 ActivityEventsParameters <$>
                   (o .:? "boolValue") <*> (o .:? "intValue") <*>
                     (o .:? "value")
                     <*> (o .:? "multiIntValue" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "multiValue" .!= mempty))

instance ToJSON ActivityEventsParameters where
        toJSON ActivityEventsParameters{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _aepBoolValue,
                  ("intValue" .=) <$> _aepIntValue,
                  ("value" .=) <$> _aepValue,
                  ("multiIntValue" .=) <$> _aepMultiIntValue,
                  ("name" .=) <$> _aepName,
                  ("multiValue" .=) <$> _aepMultiValue])

-- | Information about the type of the item.
--
-- /See:/ 'usageReportEntity' smart constructor.
data UsageReportEntity = UsageReportEntity
    { _ureProfileId  :: !(Maybe Text)
    , _ureCustomerId :: !(Maybe Text)
    , _ureUserEmail  :: !(Maybe Text)
    , _ureType       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ureProfileId'
--
-- * 'ureCustomerId'
--
-- * 'ureUserEmail'
--
-- * 'ureType'
usageReportEntity
    :: UsageReportEntity
usageReportEntity =
    UsageReportEntity
    { _ureProfileId = Nothing
    , _ureCustomerId = Nothing
    , _ureUserEmail = Nothing
    , _ureType = Nothing
    }

-- | Obfuscated user id for the record.
ureProfileId :: Lens' UsageReportEntity (Maybe Text)
ureProfileId
  = lens _ureProfileId (\ s a -> s{_ureProfileId = a})

-- | Obfuscated customer id for the record.
ureCustomerId :: Lens' UsageReportEntity (Maybe Text)
ureCustomerId
  = lens _ureCustomerId
      (\ s a -> s{_ureCustomerId = a})

-- | user\'s email.
ureUserEmail :: Lens' UsageReportEntity (Maybe Text)
ureUserEmail
  = lens _ureUserEmail (\ s a -> s{_ureUserEmail = a})

-- | The type of item, can be a customer or user.
ureType :: Lens' UsageReportEntity (Maybe Text)
ureType = lens _ureType (\ s a -> s{_ureType = a})

instance FromJSON UsageReportEntity where
        parseJSON
          = withObject "UsageReportEntity"
              (\ o ->
                 UsageReportEntity <$>
                   (o .:? "profileId") <*> (o .:? "customerId") <*>
                     (o .:? "userEmail")
                     <*> (o .:? "type"))

instance ToJSON UsageReportEntity where
        toJSON UsageReportEntity{..}
          = object
              (catMaybes
                 [("profileId" .=) <$> _ureProfileId,
                  ("customerId" .=) <$> _ureCustomerId,
                  ("userEmail" .=) <$> _ureUserEmail,
                  ("type" .=) <$> _ureType])

-- | User doing the action.
--
-- /See:/ 'activityActor' smart constructor.
data ActivityActor = ActivityActor
    { _aaEmail      :: !(Maybe Text)
    , _aaCallerType :: !(Maybe Text)
    , _aaProfileId  :: !(Maybe Text)
    , _aaKey        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaEmail'
--
-- * 'aaCallerType'
--
-- * 'aaProfileId'
--
-- * 'aaKey'
activityActor
    :: ActivityActor
activityActor =
    ActivityActor
    { _aaEmail = Nothing
    , _aaCallerType = Nothing
    , _aaProfileId = Nothing
    , _aaKey = Nothing
    }

-- | Email address of the user.
aaEmail :: Lens' ActivityActor (Maybe Text)
aaEmail = lens _aaEmail (\ s a -> s{_aaEmail = a})

-- | User or OAuth 2LO request.
aaCallerType :: Lens' ActivityActor (Maybe Text)
aaCallerType
  = lens _aaCallerType (\ s a -> s{_aaCallerType = a})

-- | Obfuscated user id of the user.
aaProfileId :: Lens' ActivityActor (Maybe Text)
aaProfileId
  = lens _aaProfileId (\ s a -> s{_aaProfileId = a})

-- | For OAuth 2LO API requests, consumer_key of the requestor.
aaKey :: Lens' ActivityActor (Maybe Text)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

instance FromJSON ActivityActor where
        parseJSON
          = withObject "ActivityActor"
              (\ o ->
                 ActivityActor <$>
                   (o .:? "email") <*> (o .:? "callerType") <*>
                     (o .:? "profileId")
                     <*> (o .:? "key"))

instance ToJSON ActivityActor where
        toJSON ActivityActor{..}
          = object
              (catMaybes
                 [("email" .=) <$> _aaEmail,
                  ("callerType" .=) <$> _aaCallerType,
                  ("profileId" .=) <$> _aaProfileId,
                  ("key" .=) <$> _aaKey])

--
-- /See:/ 'usageReportParameters' smart constructor.
data UsageReportParameters = UsageReportParameters
    { _urpDatetimeValue :: !(Maybe DateTime)
    , _urpBoolValue     :: !(Maybe Bool)
    , _urpIntValue      :: !(Maybe Int64)
    , _urpStringValue   :: !(Maybe Text)
    , _urpName          :: !(Maybe Text)
    , _urpMsgValue      :: !(Maybe [UsageReportParametersMsgValue])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpDatetimeValue'
--
-- * 'urpBoolValue'
--
-- * 'urpIntValue'
--
-- * 'urpStringValue'
--
-- * 'urpName'
--
-- * 'urpMsgValue'
usageReportParameters
    :: UsageReportParameters
usageReportParameters =
    UsageReportParameters
    { _urpDatetimeValue = Nothing
    , _urpBoolValue = Nothing
    , _urpIntValue = Nothing
    , _urpStringValue = Nothing
    , _urpName = Nothing
    , _urpMsgValue = Nothing
    }

-- | RFC 3339 formatted value of the parameter.
urpDatetimeValue :: Lens' UsageReportParameters (Maybe UTCTime)
urpDatetimeValue
  = lens _urpDatetimeValue
      (\ s a -> s{_urpDatetimeValue = a})

-- | Boolean value of the parameter.
urpBoolValue :: Lens' UsageReportParameters (Maybe Bool)
urpBoolValue
  = lens _urpBoolValue (\ s a -> s{_urpBoolValue = a})

-- | Integral value of the parameter.
urpIntValue :: Lens' UsageReportParameters (Maybe Int64)
urpIntValue
  = lens _urpIntValue (\ s a -> s{_urpIntValue = a})

-- | String value of the parameter.
urpStringValue :: Lens' UsageReportParameters (Maybe Text)
urpStringValue
  = lens _urpStringValue
      (\ s a -> s{_urpStringValue = a})

-- | The name of the parameter.
urpName :: Lens' UsageReportParameters (Maybe Text)
urpName = lens _urpName (\ s a -> s{_urpName = a})

-- | Nested message value of the parameter.
urpMsgValue :: Lens' UsageReportParameters [UsageReportParametersMsgValue]
urpMsgValue
  = lens _urpMsgValue (\ s a -> s{_urpMsgValue = a}) .
      _Default
      . _Coerce

instance FromJSON UsageReportParameters where
        parseJSON
          = withObject "UsageReportParameters"
              (\ o ->
                 UsageReportParameters <$>
                   (o .:? "datetimeValue") <*> (o .:? "boolValue") <*>
                     (o .:? "intValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "name")
                     <*> (o .:? "msgValue" .!= mempty))

instance ToJSON UsageReportParameters where
        toJSON UsageReportParameters{..}
          = object
              (catMaybes
                 [("datetimeValue" .=) <$> _urpDatetimeValue,
                  ("boolValue" .=) <$> _urpBoolValue,
                  ("intValue" .=) <$> _urpIntValue,
                  ("stringValue" .=) <$> _urpStringValue,
                  ("name" .=) <$> _urpName,
                  ("msgValue" .=) <$> _urpMsgValue])
