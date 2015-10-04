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
-- /See:/ 'usageReportParametersItem' smart constructor.
data UsageReportParametersItem = UsageReportParametersItem
    { _urpiDatetimeValue :: !(Maybe DateTime')
    , _urpiBoolValue     :: !(Maybe Bool)
    , _urpiIntValue      :: !(Maybe Int64)
    , _urpiStringValue   :: !(Maybe Text)
    , _urpiName          :: !(Maybe Text)
    , _urpiMsgValue      :: !(Maybe [MsgValueItem])
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
urpiMsgValue :: Lens' UsageReportParametersItem [MsgValueItem]
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

--
-- /See:/ 'msgValueItem' smart constructor.
data MsgValueItem =
    MsgValueItem
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MsgValueItem' with the minimum fields required to make a request.
--
msgValueItem
    :: MsgValueItem
msgValueItem = MsgValueItem

instance FromJSON MsgValueItem where
        parseJSON
          = withObject "MsgValueItem"
              (\ o -> pure MsgValueItem)

instance ToJSON MsgValueItem where
        toJSON = const (Object mempty)

--
-- /See:/ 'eventsItem' smart constructor.
data EventsItem = EventsItem
    { _eiName       :: !(Maybe Text)
    , _eiParameters :: !(Maybe [EventsItemParametersItem])
    , _eiType       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiName'
--
-- * 'eiParameters'
--
-- * 'eiType'
eventsItem
    :: EventsItem
eventsItem =
    EventsItem
    { _eiName = Nothing
    , _eiParameters = Nothing
    , _eiType = Nothing
    }

-- | Name of event.
eiName :: Lens' EventsItem (Maybe Text)
eiName = lens _eiName (\ s a -> s{_eiName = a})

-- | Parameter value pairs for various applications.
eiParameters :: Lens' EventsItem [EventsItemParametersItem]
eiParameters
  = lens _eiParameters (\ s a -> s{_eiParameters = a})
      . _Default
      . _Coerce

-- | Type of event.
eiType :: Lens' EventsItem (Maybe Text)
eiType = lens _eiType (\ s a -> s{_eiType = a})

instance FromJSON EventsItem where
        parseJSON
          = withObject "EventsItem"
              (\ o ->
                 EventsItem <$>
                   (o .:? "name") <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON EventsItem where
        toJSON EventsItem{..}
          = object
              (catMaybes
                 [("name" .=) <$> _eiName,
                  ("parameters" .=) <$> _eiParameters,
                  ("type" .=) <$> _eiType])

--
-- /See:/ 'eventsItemParametersItem' smart constructor.
data EventsItemParametersItem = EventsItemParametersItem
    { _eipiBoolValue     :: !(Maybe Bool)
    , _eipiIntValue      :: !(Maybe Int64)
    , _eipiValue         :: !(Maybe Text)
    , _eipiMultiIntValue :: !(Maybe [Int64])
    , _eipiName          :: !(Maybe Text)
    , _eipiMultiValue    :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsItemParametersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eipiBoolValue'
--
-- * 'eipiIntValue'
--
-- * 'eipiValue'
--
-- * 'eipiMultiIntValue'
--
-- * 'eipiName'
--
-- * 'eipiMultiValue'
eventsItemParametersItem
    :: EventsItemParametersItem
eventsItemParametersItem =
    EventsItemParametersItem
    { _eipiBoolValue = Nothing
    , _eipiIntValue = Nothing
    , _eipiValue = Nothing
    , _eipiMultiIntValue = Nothing
    , _eipiName = Nothing
    , _eipiMultiValue = Nothing
    }

-- | Boolean value of the parameter.
eipiBoolValue :: Lens' EventsItemParametersItem (Maybe Bool)
eipiBoolValue
  = lens _eipiBoolValue
      (\ s a -> s{_eipiBoolValue = a})

-- | Integral value of the parameter.
eipiIntValue :: Lens' EventsItemParametersItem (Maybe Int64)
eipiIntValue
  = lens _eipiIntValue (\ s a -> s{_eipiIntValue = a})

-- | String value of the parameter.
eipiValue :: Lens' EventsItemParametersItem (Maybe Text)
eipiValue
  = lens _eipiValue (\ s a -> s{_eipiValue = a})

-- | Multi-int value of the parameter.
eipiMultiIntValue :: Lens' EventsItemParametersItem [Int64]
eipiMultiIntValue
  = lens _eipiMultiIntValue
      (\ s a -> s{_eipiMultiIntValue = a})
      . _Default
      . _Coerce

-- | The name of the parameter.
eipiName :: Lens' EventsItemParametersItem (Maybe Text)
eipiName = lens _eipiName (\ s a -> s{_eipiName = a})

-- | Multi-string value of the parameter.
eipiMultiValue :: Lens' EventsItemParametersItem [Text]
eipiMultiValue
  = lens _eipiMultiValue
      (\ s a -> s{_eipiMultiValue = a})
      . _Default
      . _Coerce

instance FromJSON EventsItemParametersItem where
        parseJSON
          = withObject "EventsItemParametersItem"
              (\ o ->
                 EventsItemParametersItem <$>
                   (o .:? "boolValue") <*> (o .:? "intValue") <*>
                     (o .:? "value")
                     <*> (o .:? "multiIntValue" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "multiValue" .!= mempty))

instance ToJSON EventsItemParametersItem where
        toJSON EventsItemParametersItem{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _eipiBoolValue,
                  ("intValue" .=) <$> _eipiIntValue,
                  ("value" .=) <$> _eipiValue,
                  ("multiIntValue" .=) <$> _eipiMultiIntValue,
                  ("name" .=) <$> _eipiName,
                  ("multiValue" .=) <$> _eipiMultiValue])

-- | JSON template for a collection of usage reports.
--
-- /See:/ 'usageReports' smart constructor.
data UsageReports = UsageReports
    { _urEtag          :: !(Maybe Text)
    , _urNextPageToken :: !(Maybe Text)
    , _urUsageReports  :: !(Maybe [UsageReport])
    , _urKind          :: !Text
    , _urWarnings      :: !(Maybe [WarningsItem])
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
urWarnings :: Lens' UsageReports [WarningsItem]
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

-- | JSON template for a usage report.
--
-- /See:/ 'usageReport' smart constructor.
data UsageReport = UsageReport
    { _uEtag       :: !(Maybe Text)
    , _uKind       :: !Text
    , _uDate       :: !(Maybe Text)
    , _uParameters :: !(Maybe [UsageReportParametersItem])
    , _uEntity     :: !(Maybe Entity)
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
uEntity :: Lens' UsageReport (Maybe Entity)
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
    , _cParams      :: !(Maybe Params)
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
cParams :: Lens' Channel (Maybe Params)
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

-- | User doing the action.
--
-- /See:/ 'actor' smart constructor.
data Actor = Actor
    { _aEmail      :: !(Maybe Text)
    , _aCallerType :: !(Maybe Text)
    , _aProfileId  :: !(Maybe Text)
    , _aKey        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Actor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEmail'
--
-- * 'aCallerType'
--
-- * 'aProfileId'
--
-- * 'aKey'
actor
    :: Actor
actor =
    Actor
    { _aEmail = Nothing
    , _aCallerType = Nothing
    , _aProfileId = Nothing
    , _aKey = Nothing
    }

-- | Email address of the user.
aEmail :: Lens' Actor (Maybe Text)
aEmail = lens _aEmail (\ s a -> s{_aEmail = a})

-- | User or OAuth 2LO request.
aCallerType :: Lens' Actor (Maybe Text)
aCallerType
  = lens _aCallerType (\ s a -> s{_aCallerType = a})

-- | Obfuscated user id of the user.
aProfileId :: Lens' Actor (Maybe Text)
aProfileId
  = lens _aProfileId (\ s a -> s{_aProfileId = a})

-- | For OAuth 2LO API requests, consumer_key of the requestor.
aKey :: Lens' Actor (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

instance FromJSON Actor where
        parseJSON
          = withObject "Actor"
              (\ o ->
                 Actor <$>
                   (o .:? "email") <*> (o .:? "callerType") <*>
                     (o .:? "profileId")
                     <*> (o .:? "key"))

instance ToJSON Actor where
        toJSON Actor{..}
          = object
              (catMaybes
                 [("email" .=) <$> _aEmail,
                  ("callerType" .=) <$> _aCallerType,
                  ("profileId" .=) <$> _aProfileId,
                  ("key" .=) <$> _aKey])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'params' smart constructor.
data Params =
    Params
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Params' with the minimum fields required to make a request.
--
params
    :: Params
params = Params

instance FromJSON Params where
        parseJSON = withObject "Params" (\ o -> pure Params)

instance ToJSON Params where
        toJSON = const (Object mempty)

--
-- /See:/ 'warningsItem' smart constructor.
data WarningsItem = WarningsItem
    { _wiData    :: !(Maybe [DataItem])
    , _wiCode    :: !(Maybe Text)
    , _wiMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WarningsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiData'
--
-- * 'wiCode'
--
-- * 'wiMessage'
warningsItem
    :: WarningsItem
warningsItem =
    WarningsItem
    { _wiData = Nothing
    , _wiCode = Nothing
    , _wiMessage = Nothing
    }

-- | Key-Value pairs to give detailed information on the warning.
wiData :: Lens' WarningsItem [DataItem]
wiData
  = lens _wiData (\ s a -> s{_wiData = a}) . _Default .
      _Coerce

-- | Machine readable code \/ warning type.
wiCode :: Lens' WarningsItem (Maybe Text)
wiCode = lens _wiCode (\ s a -> s{_wiCode = a})

-- | Human readable message for the warning.
wiMessage :: Lens' WarningsItem (Maybe Text)
wiMessage
  = lens _wiMessage (\ s a -> s{_wiMessage = a})

instance FromJSON WarningsItem where
        parseJSON
          = withObject "WarningsItem"
              (\ o ->
                 WarningsItem <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON WarningsItem where
        toJSON WarningsItem{..}
          = object
              (catMaybes
                 [("data" .=) <$> _wiData, ("code" .=) <$> _wiCode,
                  ("message" .=) <$> _wiMessage])

--
-- /See:/ 'dataItem' smart constructor.
data DataItem = DataItem
    { _diValue :: !(Maybe Text)
    , _diKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diValue'
--
-- * 'diKey'
dataItem
    :: DataItem
dataItem =
    DataItem
    { _diValue = Nothing
    , _diKey = Nothing
    }

-- | Value associated with a key-value pair to give detailed information on
-- the warning.
diValue :: Lens' DataItem (Maybe Text)
diValue = lens _diValue (\ s a -> s{_diValue = a})

-- | Key associated with a key-value pair to give detailed information on the
-- warning.
diKey :: Lens' DataItem (Maybe Text)
diKey = lens _diKey (\ s a -> s{_diKey = a})

instance FromJSON DataItem where
        parseJSON
          = withObject "DataItem"
              (\ o ->
                 DataItem <$> (o .:? "value") <*> (o .:? "key"))

instance ToJSON DataItem where
        toJSON DataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _diValue, ("key" .=) <$> _diKey])

-- | JSON template for the activity resource.
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _actEtag        :: !(Maybe Text)
    , _actIPAddress   :: !(Maybe Text)
    , _actKind        :: !Text
    , _actActor       :: !(Maybe Actor)
    , _actOwnerDomain :: !(Maybe Text)
    , _actEvents      :: !(Maybe [EventsItem])
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
actActor :: Lens' Activity (Maybe Actor)
actActor = lens _actActor (\ s a -> s{_actActor = a})

-- | Domain of source customer.
actOwnerDomain :: Lens' Activity (Maybe Text)
actOwnerDomain
  = lens _actOwnerDomain
      (\ s a -> s{_actOwnerDomain = a})

-- | Activity events.
actEvents :: Lens' Activity [EventsItem]
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
-- /See:/ 'entity' smart constructor.
data Entity = Entity
    { _eProfileId  :: !(Maybe Text)
    , _eCustomerId :: !(Maybe Text)
    , _eUserEmail  :: !(Maybe Text)
    , _eType       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eProfileId'
--
-- * 'eCustomerId'
--
-- * 'eUserEmail'
--
-- * 'eType'
entity
    :: Entity
entity =
    Entity
    { _eProfileId = Nothing
    , _eCustomerId = Nothing
    , _eUserEmail = Nothing
    , _eType = Nothing
    }

-- | Obfuscated user id for the record.
eProfileId :: Lens' Entity (Maybe Text)
eProfileId
  = lens _eProfileId (\ s a -> s{_eProfileId = a})

-- | Obfuscated customer id for the record.
eCustomerId :: Lens' Entity (Maybe Text)
eCustomerId
  = lens _eCustomerId (\ s a -> s{_eCustomerId = a})

-- | user\'s email.
eUserEmail :: Lens' Entity (Maybe Text)
eUserEmail
  = lens _eUserEmail (\ s a -> s{_eUserEmail = a})

-- | The type of item, can be a customer or user.
eType :: Lens' Entity (Maybe Text)
eType = lens _eType (\ s a -> s{_eType = a})

instance FromJSON Entity where
        parseJSON
          = withObject "Entity"
              (\ o ->
                 Entity <$>
                   (o .:? "profileId") <*> (o .:? "customerId") <*>
                     (o .:? "userEmail")
                     <*> (o .:? "type"))

instance ToJSON Entity where
        toJSON Entity{..}
          = object
              (catMaybes
                 [("profileId" .=) <$> _eProfileId,
                  ("customerId" .=) <$> _eCustomerId,
                  ("userEmail" .=) <$> _eUserEmail,
                  ("type" .=) <$> _eType])
