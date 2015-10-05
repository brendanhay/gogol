{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Reports.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Reports.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Reports.Types.Sum

--
-- /See:/ 'usageReportParametersItem' smart constructor.
data UsageReportParametersItem = UsageReportParametersItem
    { _urpiDatetimeValue :: !(Maybe DateTime')
    , _urpiBoolValue     :: !(Maybe Bool)
    , _urpiIntValue      :: !(Maybe Int64)
    , _urpiStringValue   :: !(Maybe Text)
    , _urpiName          :: !(Maybe Text)
    , _urpiMsgValue      :: !(Maybe [UsageReportParametersItemMsgValueItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportParametersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpiDatetimeValue'
--
-- * 'urpiBoolValue'
--
-- * 'urpiIntValue'
--
-- * 'urpiStringValue'
--
-- * 'urpiName'
--
-- * 'urpiMsgValue'
usageReportParametersItem
    :: UsageReportParametersItem
usageReportParametersItem =
    UsageReportParametersItem
    { _urpiDatetimeValue = Nothing
    , _urpiBoolValue = Nothing
    , _urpiIntValue = Nothing
    , _urpiStringValue = Nothing
    , _urpiName = Nothing
    , _urpiMsgValue = Nothing
    }

-- | RFC 3339 formatted value of the parameter.
urpiDatetimeValue :: Lens' UsageReportParametersItem (Maybe UTCTime)
urpiDatetimeValue
  = lens _urpiDatetimeValue
      (\ s a -> s{_urpiDatetimeValue = a})
      . mapping _DateTime

-- | Boolean value of the parameter.
urpiBoolValue :: Lens' UsageReportParametersItem (Maybe Bool)
urpiBoolValue
  = lens _urpiBoolValue
      (\ s a -> s{_urpiBoolValue = a})

-- | Integral value of the parameter.
urpiIntValue :: Lens' UsageReportParametersItem (Maybe Int64)
urpiIntValue
  = lens _urpiIntValue (\ s a -> s{_urpiIntValue = a})

-- | String value of the parameter.
urpiStringValue :: Lens' UsageReportParametersItem (Maybe Text)
urpiStringValue
  = lens _urpiStringValue
      (\ s a -> s{_urpiStringValue = a})

-- | The name of the parameter.
urpiName :: Lens' UsageReportParametersItem (Maybe Text)
urpiName = lens _urpiName (\ s a -> s{_urpiName = a})

-- | Nested message value of the parameter.
urpiMsgValue :: Lens' UsageReportParametersItem [UsageReportParametersItemMsgValueItem]
urpiMsgValue
  = lens _urpiMsgValue (\ s a -> s{_urpiMsgValue = a})
      . _Default
      . _Coerce

instance FromJSON UsageReportParametersItem where
        parseJSON
          = withObject "UsageReportParametersItem"
              (\ o ->
                 UsageReportParametersItem <$>
                   (o .:? "datetimeValue") <*> (o .:? "boolValue") <*>
                     (o .:? "intValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "name")
                     <*> (o .:? "msgValue" .!= mempty))

instance ToJSON UsageReportParametersItem where
        toJSON UsageReportParametersItem{..}
          = object
              (catMaybes
                 [("datetimeValue" .=) <$> _urpiDatetimeValue,
                  ("boolValue" .=) <$> _urpiBoolValue,
                  ("intValue" .=) <$> _urpiIntValue,
                  ("stringValue" .=) <$> _urpiStringValue,
                  ("name" .=) <$> _urpiName,
                  ("msgValue" .=) <$> _urpiMsgValue])

-- | Unique identifier for each activity record.
--
-- /See:/ 'activityId' smart constructor.
data ActivityId = ActivityId
    { _aiTime            :: !(Maybe DateTime')
    , _aiUniqueQualifier :: !(Maybe Int64)
    , _aiCustomerId      :: !(Maybe Text)
    , _aiApplicationName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
aiTime
  = lens _aiTime (\ s a -> s{_aiTime = a}) .
      mapping _DateTime

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

-- | JSON template for a collection of usage reports.
--
-- /See:/ 'usageReports' smart constructor.
data UsageReports = UsageReports
    { _urEtag          :: !(Maybe Text)
    , _urNextPageToken :: !(Maybe Text)
    , _urUsageReports  :: !(Maybe [UsageReport])
    , _urKind          :: !Text
    , _urWarnings      :: !(Maybe [UsageReportsWarningsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
urWarnings :: Lens' UsageReports [UsageReportsWarningsItem]
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

--
-- /See:/ 'usageReportParametersItemMsgValueItem' smart constructor.
data UsageReportParametersItemMsgValueItem =
    UsageReportParametersItemMsgValueItem
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportParametersItemMsgValueItem' with the minimum fields required to make a request.
--
usageReportParametersItemMsgValueItem
    :: UsageReportParametersItemMsgValueItem
usageReportParametersItemMsgValueItem = UsageReportParametersItemMsgValueItem

instance FromJSON
         UsageReportParametersItemMsgValueItem where
        parseJSON
          = withObject "UsageReportParametersItemMsgValueItem"
              (\ o -> pure UsageReportParametersItemMsgValueItem)

instance ToJSON UsageReportParametersItemMsgValueItem
         where
        toJSON = const (Object mempty)

-- | JSON template for a collection of activites.
--
-- /See:/ 'activities' smart constructor.
data Activities = Activities
    { _aEtag          :: !(Maybe Text)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Activity])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    , _cPayload     :: !(Maybe Bool)
    , _cParams      :: !(Maybe ChannelParams)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cPayload'
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
    , _cPayload = Nothing
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
cPayload :: Lens' Channel (Maybe Bool)
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

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
                  ("payload" .=) <$> _cPayload,
                  ("params" .=) <$> _cParams, ("id" .=) <$> _cId,
                  ("type" .=) <$> _cType])

-- | JSON template for a usage report.
--
-- /See:/ 'usageReport' smart constructor.
data UsageReport = UsageReport
    { _uEtag       :: !(Maybe Text)
    , _uKind       :: !Text
    , _uDate       :: !(Maybe Text)
    , _uParameters :: !(Maybe [UsageReportParametersItem])
    , _uEntity     :: !(Maybe UsageReportEntity)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
uParameters :: Lens' UsageReport [UsageReportParametersItem]
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
-- /See:/ 'usageReportsWarningsItemDataItem' smart constructor.
data UsageReportsWarningsItemDataItem = UsageReportsWarningsItemDataItem
    { _urwidiValue :: !(Maybe Text)
    , _urwidiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportsWarningsItemDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urwidiValue'
--
-- * 'urwidiKey'
usageReportsWarningsItemDataItem
    :: UsageReportsWarningsItemDataItem
usageReportsWarningsItemDataItem =
    UsageReportsWarningsItemDataItem
    { _urwidiValue = Nothing
    , _urwidiKey = Nothing
    }

-- | Value associated with a key-value pair to give detailed information on
-- the warning.
urwidiValue :: Lens' UsageReportsWarningsItemDataItem (Maybe Text)
urwidiValue
  = lens _urwidiValue (\ s a -> s{_urwidiValue = a})

-- | Key associated with a key-value pair to give detailed information on the
-- warning.
urwidiKey :: Lens' UsageReportsWarningsItemDataItem (Maybe Text)
urwidiKey
  = lens _urwidiKey (\ s a -> s{_urwidiKey = a})

instance FromJSON UsageReportsWarningsItemDataItem
         where
        parseJSON
          = withObject "UsageReportsWarningsItemDataItem"
              (\ o ->
                 UsageReportsWarningsItemDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON UsageReportsWarningsItemDataItem
         where
        toJSON UsageReportsWarningsItemDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _urwidiValue,
                  ("key" .=) <$> _urwidiKey])

--
-- /See:/ 'usageReportsWarningsItem' smart constructor.
data UsageReportsWarningsItem = UsageReportsWarningsItem
    { _urwiData    :: !(Maybe [UsageReportsWarningsItemDataItem])
    , _urwiCode    :: !(Maybe Text)
    , _urwiMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportsWarningsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urwiData'
--
-- * 'urwiCode'
--
-- * 'urwiMessage'
usageReportsWarningsItem
    :: UsageReportsWarningsItem
usageReportsWarningsItem =
    UsageReportsWarningsItem
    { _urwiData = Nothing
    , _urwiCode = Nothing
    , _urwiMessage = Nothing
    }

-- | Key-Value pairs to give detailed information on the warning.
urwiData :: Lens' UsageReportsWarningsItem [UsageReportsWarningsItemDataItem]
urwiData
  = lens _urwiData (\ s a -> s{_urwiData = a}) .
      _Default
      . _Coerce

-- | Machine readable code \/ warning type.
urwiCode :: Lens' UsageReportsWarningsItem (Maybe Text)
urwiCode = lens _urwiCode (\ s a -> s{_urwiCode = a})

-- | Human readable message for the warning.
urwiMessage :: Lens' UsageReportsWarningsItem (Maybe Text)
urwiMessage
  = lens _urwiMessage (\ s a -> s{_urwiMessage = a})

instance FromJSON UsageReportsWarningsItem where
        parseJSON
          = withObject "UsageReportsWarningsItem"
              (\ o ->
                 UsageReportsWarningsItem <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON UsageReportsWarningsItem where
        toJSON UsageReportsWarningsItem{..}
          = object
              (catMaybes
                 [("data" .=) <$> _urwiData,
                  ("code" .=) <$> _urwiCode,
                  ("message" .=) <$> _urwiMessage])

--
-- /See:/ 'activityEventsItem' smart constructor.
data ActivityEventsItem = ActivityEventsItem
    { _aeiName       :: !(Maybe Text)
    , _aeiParameters :: !(Maybe [ActivityEventsItemParametersItem])
    , _aeiType       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityEventsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeiName'
--
-- * 'aeiParameters'
--
-- * 'aeiType'
activityEventsItem
    :: ActivityEventsItem
activityEventsItem =
    ActivityEventsItem
    { _aeiName = Nothing
    , _aeiParameters = Nothing
    , _aeiType = Nothing
    }

-- | Name of event.
aeiName :: Lens' ActivityEventsItem (Maybe Text)
aeiName = lens _aeiName (\ s a -> s{_aeiName = a})

-- | Parameter value pairs for various applications.
aeiParameters :: Lens' ActivityEventsItem [ActivityEventsItemParametersItem]
aeiParameters
  = lens _aeiParameters
      (\ s a -> s{_aeiParameters = a})
      . _Default
      . _Coerce

-- | Type of event.
aeiType :: Lens' ActivityEventsItem (Maybe Text)
aeiType = lens _aeiType (\ s a -> s{_aeiType = a})

instance FromJSON ActivityEventsItem where
        parseJSON
          = withObject "ActivityEventsItem"
              (\ o ->
                 ActivityEventsItem <$>
                   (o .:? "name") <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON ActivityEventsItem where
        toJSON ActivityEventsItem{..}
          = object
              (catMaybes
                 [("name" .=) <$> _aeiName,
                  ("parameters" .=) <$> _aeiParameters,
                  ("type" .=) <$> _aeiType])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
data ChannelParams =
    ChannelParams
    deriving (Eq,Show,Data,Typeable,Generic)

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
    , _actEvents      :: !(Maybe [ActivityEventsItem])
    , _actId          :: !(Maybe ActivityId)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
actEvents :: Lens' Activity [ActivityEventsItem]
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

-- | Information about the type of the item.
--
-- /See:/ 'usageReportEntity' smart constructor.
data UsageReportEntity = UsageReportEntity
    { _ureProFileId  :: !(Maybe Text)
    , _ureCustomerId :: !(Maybe Text)
    , _ureUserEmail  :: !(Maybe Text)
    , _ureType       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ureProFileId'
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
    { _ureProFileId = Nothing
    , _ureCustomerId = Nothing
    , _ureUserEmail = Nothing
    , _ureType = Nothing
    }

-- | Obfuscated user id for the record.
ureProFileId :: Lens' UsageReportEntity (Maybe Text)
ureProFileId
  = lens _ureProFileId (\ s a -> s{_ureProFileId = a})

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
                 [("profileId" .=) <$> _ureProFileId,
                  ("customerId" .=) <$> _ureCustomerId,
                  ("userEmail" .=) <$> _ureUserEmail,
                  ("type" .=) <$> _ureType])

--
-- /See:/ 'activityEventsItemParametersItem' smart constructor.
data ActivityEventsItemParametersItem = ActivityEventsItemParametersItem
    { _aeipiBoolValue     :: !(Maybe Bool)
    , _aeipiIntValue      :: !(Maybe Int64)
    , _aeipiValue         :: !(Maybe Text)
    , _aeipiMultiIntValue :: !(Maybe [Int64])
    , _aeipiName          :: !(Maybe Text)
    , _aeipiMultiValue    :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityEventsItemParametersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeipiBoolValue'
--
-- * 'aeipiIntValue'
--
-- * 'aeipiValue'
--
-- * 'aeipiMultiIntValue'
--
-- * 'aeipiName'
--
-- * 'aeipiMultiValue'
activityEventsItemParametersItem
    :: ActivityEventsItemParametersItem
activityEventsItemParametersItem =
    ActivityEventsItemParametersItem
    { _aeipiBoolValue = Nothing
    , _aeipiIntValue = Nothing
    , _aeipiValue = Nothing
    , _aeipiMultiIntValue = Nothing
    , _aeipiName = Nothing
    , _aeipiMultiValue = Nothing
    }

-- | Boolean value of the parameter.
aeipiBoolValue :: Lens' ActivityEventsItemParametersItem (Maybe Bool)
aeipiBoolValue
  = lens _aeipiBoolValue
      (\ s a -> s{_aeipiBoolValue = a})

-- | Integral value of the parameter.
aeipiIntValue :: Lens' ActivityEventsItemParametersItem (Maybe Int64)
aeipiIntValue
  = lens _aeipiIntValue
      (\ s a -> s{_aeipiIntValue = a})

-- | String value of the parameter.
aeipiValue :: Lens' ActivityEventsItemParametersItem (Maybe Text)
aeipiValue
  = lens _aeipiValue (\ s a -> s{_aeipiValue = a})

-- | Multi-int value of the parameter.
aeipiMultiIntValue :: Lens' ActivityEventsItemParametersItem [Int64]
aeipiMultiIntValue
  = lens _aeipiMultiIntValue
      (\ s a -> s{_aeipiMultiIntValue = a})
      . _Default
      . _Coerce

-- | The name of the parameter.
aeipiName :: Lens' ActivityEventsItemParametersItem (Maybe Text)
aeipiName
  = lens _aeipiName (\ s a -> s{_aeipiName = a})

-- | Multi-string value of the parameter.
aeipiMultiValue :: Lens' ActivityEventsItemParametersItem [Text]
aeipiMultiValue
  = lens _aeipiMultiValue
      (\ s a -> s{_aeipiMultiValue = a})
      . _Default
      . _Coerce

instance FromJSON ActivityEventsItemParametersItem
         where
        parseJSON
          = withObject "ActivityEventsItemParametersItem"
              (\ o ->
                 ActivityEventsItemParametersItem <$>
                   (o .:? "boolValue") <*> (o .:? "intValue") <*>
                     (o .:? "value")
                     <*> (o .:? "multiIntValue" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "multiValue" .!= mempty))

instance ToJSON ActivityEventsItemParametersItem
         where
        toJSON ActivityEventsItemParametersItem{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _aeipiBoolValue,
                  ("intValue" .=) <$> _aeipiIntValue,
                  ("value" .=) <$> _aeipiValue,
                  ("multiIntValue" .=) <$> _aeipiMultiIntValue,
                  ("name" .=) <$> _aeipiName,
                  ("multiValue" .=) <$> _aeipiMultiValue])

-- | User doing the action.
--
-- /See:/ 'activityActor' smart constructor.
data ActivityActor = ActivityActor
    { _aaEmail      :: !(Maybe Text)
    , _aaCallerType :: !(Maybe Text)
    , _aaProFileId  :: !(Maybe Text)
    , _aaKey        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaEmail'
--
-- * 'aaCallerType'
--
-- * 'aaProFileId'
--
-- * 'aaKey'
activityActor
    :: ActivityActor
activityActor =
    ActivityActor
    { _aaEmail = Nothing
    , _aaCallerType = Nothing
    , _aaProFileId = Nothing
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
aaProFileId :: Lens' ActivityActor (Maybe Text)
aaProFileId
  = lens _aaProFileId (\ s a -> s{_aaProFileId = a})

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
                  ("profileId" .=) <$> _aaProFileId,
                  ("key" .=) <$> _aaKey])
