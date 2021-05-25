{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Reports.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Reports.Types.Product where

import Network.Google.Prelude
import Network.Google.Reports.Types.Sum

--
-- /See:/ 'usageReportParametersItem' smart constructor.
data UsageReportParametersItem =
  UsageReportParametersItem'
    { _urpiDatetimeValue :: !(Maybe DateTime')
    , _urpiBoolValue :: !(Maybe Bool)
    , _urpiIntValue :: !(Maybe (Textual Int64))
    , _urpiStringValue :: !(Maybe Text)
    , _urpiName :: !(Maybe Text)
    , _urpiMsgValue :: !(Maybe [UsageReportParametersItemMsgValueItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UsageReportParametersItem'
    { _urpiDatetimeValue = Nothing
    , _urpiBoolValue = Nothing
    , _urpiIntValue = Nothing
    , _urpiStringValue = Nothing
    , _urpiName = Nothing
    , _urpiMsgValue = Nothing
    }


-- | The RFC 3339 formatted value of the parameter, for example
-- 2010-10-28T10:26:35.000Z.
urpiDatetimeValue :: Lens' UsageReportParametersItem (Maybe UTCTime)
urpiDatetimeValue
  = lens _urpiDatetimeValue
      (\ s a -> s{_urpiDatetimeValue = a})
      . mapping _DateTime

-- | Output only. Boolean value of the parameter.
urpiBoolValue :: Lens' UsageReportParametersItem (Maybe Bool)
urpiBoolValue
  = lens _urpiBoolValue
      (\ s a -> s{_urpiBoolValue = a})

-- | Output only. Integer value of the parameter.
urpiIntValue :: Lens' UsageReportParametersItem (Maybe Int64)
urpiIntValue
  = lens _urpiIntValue (\ s a -> s{_urpiIntValue = a})
      . mapping _Coerce

-- | Output only. String value of the parameter.
urpiStringValue :: Lens' UsageReportParametersItem (Maybe Text)
urpiStringValue
  = lens _urpiStringValue
      (\ s a -> s{_urpiStringValue = a})

-- | The name of the parameter. For the User Usage Report parameter names,
-- see the User Usage parameters reference.
urpiName :: Lens' UsageReportParametersItem (Maybe Text)
urpiName = lens _urpiName (\ s a -> s{_urpiName = a})

-- | Output only. Nested message value of the parameter.
urpiMsgValue :: Lens' UsageReportParametersItem [UsageReportParametersItemMsgValueItem]
urpiMsgValue
  = lens _urpiMsgValue (\ s a -> s{_urpiMsgValue = a})
      . _Default
      . _Coerce

instance FromJSON UsageReportParametersItem where
        parseJSON
          = withObject "UsageReportParametersItem"
              (\ o ->
                 UsageReportParametersItem' <$>
                   (o .:? "datetimeValue") <*> (o .:? "boolValue") <*>
                     (o .:? "intValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "name")
                     <*> (o .:? "msgValue" .!= mempty))

instance ToJSON UsageReportParametersItem where
        toJSON UsageReportParametersItem'{..}
          = object
              (catMaybes
                 [("datetimeValue" .=) <$> _urpiDatetimeValue,
                  ("boolValue" .=) <$> _urpiBoolValue,
                  ("intValue" .=) <$> _urpiIntValue,
                  ("stringValue" .=) <$> _urpiStringValue,
                  ("name" .=) <$> _urpiName,
                  ("msgValue" .=) <$> _urpiMsgValue])

--
-- /See:/ 'activityEventsItemParametersItemMultiMessageValueItem' smart constructor.
newtype ActivityEventsItemParametersItemMultiMessageValueItem =
  ActivityEventsItemParametersItemMultiMessageValueItem'
    { _aeipimmviParameter :: Maybe [NestedParameter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityEventsItemParametersItemMultiMessageValueItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeipimmviParameter'
activityEventsItemParametersItemMultiMessageValueItem
    :: ActivityEventsItemParametersItemMultiMessageValueItem
activityEventsItemParametersItemMultiMessageValueItem =
  ActivityEventsItemParametersItemMultiMessageValueItem'
    {_aeipimmviParameter = Nothing}


-- | Parameter values
aeipimmviParameter :: Lens' ActivityEventsItemParametersItemMultiMessageValueItem [NestedParameter]
aeipimmviParameter
  = lens _aeipimmviParameter
      (\ s a -> s{_aeipimmviParameter = a})
      . _Default
      . _Coerce

instance FromJSON
           ActivityEventsItemParametersItemMultiMessageValueItem
         where
        parseJSON
          = withObject
              "ActivityEventsItemParametersItemMultiMessageValueItem"
              (\ o ->
                 ActivityEventsItemParametersItemMultiMessageValueItem'
                   <$> (o .:? "parameter" .!= mempty))

instance ToJSON
           ActivityEventsItemParametersItemMultiMessageValueItem
         where
        toJSON
          ActivityEventsItemParametersItemMultiMessageValueItem'{..}
          = object
              (catMaybes
                 [("parameter" .=) <$> _aeipimmviParameter])

-- | JSON template for a parameter used in various reports.
--
-- /See:/ 'nestedParameter' smart constructor.
data NestedParameter =
  NestedParameter'
    { _npBoolValue :: !(Maybe Bool)
    , _npIntValue :: !(Maybe (Textual Int64))
    , _npValue :: !(Maybe Text)
    , _npMultiIntValue :: !(Maybe [Textual Int64])
    , _npMultiBoolValue :: !(Maybe [Bool])
    , _npName :: !(Maybe Text)
    , _npMultiValue :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NestedParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npBoolValue'
--
-- * 'npIntValue'
--
-- * 'npValue'
--
-- * 'npMultiIntValue'
--
-- * 'npMultiBoolValue'
--
-- * 'npName'
--
-- * 'npMultiValue'
nestedParameter
    :: NestedParameter
nestedParameter =
  NestedParameter'
    { _npBoolValue = Nothing
    , _npIntValue = Nothing
    , _npValue = Nothing
    , _npMultiIntValue = Nothing
    , _npMultiBoolValue = Nothing
    , _npName = Nothing
    , _npMultiValue = Nothing
    }


-- | Boolean value of the parameter.
npBoolValue :: Lens' NestedParameter (Maybe Bool)
npBoolValue
  = lens _npBoolValue (\ s a -> s{_npBoolValue = a})

-- | Integer value of the parameter.
npIntValue :: Lens' NestedParameter (Maybe Int64)
npIntValue
  = lens _npIntValue (\ s a -> s{_npIntValue = a}) .
      mapping _Coerce

-- | String value of the parameter.
npValue :: Lens' NestedParameter (Maybe Text)
npValue = lens _npValue (\ s a -> s{_npValue = a})

-- | Multiple integer values of the parameter.
npMultiIntValue :: Lens' NestedParameter [Int64]
npMultiIntValue
  = lens _npMultiIntValue
      (\ s a -> s{_npMultiIntValue = a})
      . _Default
      . _Coerce

-- | Multiple boolean values of the parameter.
npMultiBoolValue :: Lens' NestedParameter [Bool]
npMultiBoolValue
  = lens _npMultiBoolValue
      (\ s a -> s{_npMultiBoolValue = a})
      . _Default
      . _Coerce

-- | The name of the parameter.
npName :: Lens' NestedParameter (Maybe Text)
npName = lens _npName (\ s a -> s{_npName = a})

-- | Multiple string values of the parameter.
npMultiValue :: Lens' NestedParameter [Text]
npMultiValue
  = lens _npMultiValue (\ s a -> s{_npMultiValue = a})
      . _Default
      . _Coerce

instance FromJSON NestedParameter where
        parseJSON
          = withObject "NestedParameter"
              (\ o ->
                 NestedParameter' <$>
                   (o .:? "boolValue") <*> (o .:? "intValue") <*>
                     (o .:? "value")
                     <*> (o .:? "multiIntValue" .!= mempty)
                     <*> (o .:? "multiBoolValue" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "multiValue" .!= mempty))

instance ToJSON NestedParameter where
        toJSON NestedParameter'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _npBoolValue,
                  ("intValue" .=) <$> _npIntValue,
                  ("value" .=) <$> _npValue,
                  ("multiIntValue" .=) <$> _npMultiIntValue,
                  ("multiBoolValue" .=) <$> _npMultiBoolValue,
                  ("name" .=) <$> _npName,
                  ("multiValue" .=) <$> _npMultiValue])

-- | Unique identifier for each activity record.
--
-- /See:/ 'activityId' smart constructor.
data ActivityId =
  ActivityId'
    { _aiTime :: !(Maybe DateTime')
    , _aiUniqueQualifier :: !(Maybe (Textual Int64))
    , _aiCustomerId :: !(Maybe Text)
    , _aiApplicationName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ActivityId'
    { _aiTime = Nothing
    , _aiUniqueQualifier = Nothing
    , _aiCustomerId = Nothing
    , _aiApplicationName = Nothing
    }


-- | Time of occurrence of the activity. This is in UNIX epoch time in
-- seconds.
aiTime :: Lens' ActivityId (Maybe UTCTime)
aiTime
  = lens _aiTime (\ s a -> s{_aiTime = a}) .
      mapping _DateTime

-- | Unique qualifier if multiple events have the same time.
aiUniqueQualifier :: Lens' ActivityId (Maybe Int64)
aiUniqueQualifier
  = lens _aiUniqueQualifier
      (\ s a -> s{_aiUniqueQualifier = a})
      . mapping _Coerce

-- | The unique identifier for a Google Workspace account.
aiCustomerId :: Lens' ActivityId (Maybe Text)
aiCustomerId
  = lens _aiCustomerId (\ s a -> s{_aiCustomerId = a})

-- | Application name to which the event belongs. For possible values see the
-- list of applications above in \`applicationName\`.
aiApplicationName :: Lens' ActivityId (Maybe Text)
aiApplicationName
  = lens _aiApplicationName
      (\ s a -> s{_aiApplicationName = a})

instance FromJSON ActivityId where
        parseJSON
          = withObject "ActivityId"
              (\ o ->
                 ActivityId' <$>
                   (o .:? "time") <*> (o .:? "uniqueQualifier") <*>
                     (o .:? "customerId")
                     <*> (o .:? "applicationName"))

instance ToJSON ActivityId where
        toJSON ActivityId'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _aiTime,
                  ("uniqueQualifier" .=) <$> _aiUniqueQualifier,
                  ("customerId" .=) <$> _aiCustomerId,
                  ("applicationName" .=) <$> _aiApplicationName])

--
-- /See:/ 'usageReports' smart constructor.
data UsageReports =
  UsageReports'
    { _urEtag :: !(Maybe Text)
    , _urNextPageToken :: !(Maybe Text)
    , _urUsageReports :: !(Maybe [UsageReport])
    , _urKind :: !Text
    , _urWarnings :: !(Maybe [UsageReportsWarningsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UsageReports'
    { _urEtag = Nothing
    , _urNextPageToken = Nothing
    , _urUsageReports = Nothing
    , _urKind = "admin#reports#usageReports"
    , _urWarnings = Nothing
    }


-- | ETag of the resource.
urEtag :: Lens' UsageReports (Maybe Text)
urEtag = lens _urEtag (\ s a -> s{_urEtag = a})

-- | Token to specify next page. A report with multiple pages has a
-- \`nextPageToken\` property in the response. For your follow-on requests
-- getting all of the report\'s pages, enter the \`nextPageToken\` value in
-- the \`pageToken\` query string.
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

-- | The type of API resource. For a usage report, the value is
-- \`admin#reports#usageReports\`.
urKind :: Lens' UsageReports Text
urKind = lens _urKind (\ s a -> s{_urKind = a})

-- | Warnings, if any.
urWarnings :: Lens' UsageReports [UsageReportsWarningsItem]
urWarnings
  = lens _urWarnings (\ s a -> s{_urWarnings = a}) .
      _Default
      . _Coerce

instance FromJSON UsageReports where
        parseJSON
          = withObject "UsageReports"
              (\ o ->
                 UsageReports' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "usageReports" .!= mempty)
                     <*> (o .:? "kind" .!= "admin#reports#usageReports")
                     <*> (o .:? "warnings" .!= mempty))

instance ToJSON UsageReports where
        toJSON UsageReports'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _urEtag,
                  ("nextPageToken" .=) <$> _urNextPageToken,
                  ("usageReports" .=) <$> _urUsageReports,
                  Just ("kind" .= _urKind),
                  ("warnings" .=) <$> _urWarnings])

--
-- /See:/ 'usageReportParametersItemMsgValueItem' smart constructor.
newtype UsageReportParametersItemMsgValueItem =
  UsageReportParametersItemMsgValueItem'
    { _urpimviAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsageReportParametersItemMsgValueItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpimviAddtional'
usageReportParametersItemMsgValueItem
    :: HashMap Text JSONValue -- ^ 'urpimviAddtional'
    -> UsageReportParametersItemMsgValueItem
usageReportParametersItemMsgValueItem pUrpimviAddtional_ =
  UsageReportParametersItemMsgValueItem'
    {_urpimviAddtional = _Coerce # pUrpimviAddtional_}


-- | Properties of the object.
urpimviAddtional :: Lens' UsageReportParametersItemMsgValueItem (HashMap Text JSONValue)
urpimviAddtional
  = lens _urpimviAddtional
      (\ s a -> s{_urpimviAddtional = a})
      . _Coerce

instance FromJSON
           UsageReportParametersItemMsgValueItem
         where
        parseJSON
          = withObject "UsageReportParametersItemMsgValueItem"
              (\ o ->
                 UsageReportParametersItemMsgValueItem' <$>
                   (parseJSONObject o))

instance ToJSON UsageReportParametersItemMsgValueItem
         where
        toJSON = toJSON . _urpimviAddtional

-- | JSON template for a collection of activities.
--
-- /See:/ 'activities' smart constructor.
data Activities =
  Activities'
    { _aEtag :: !(Maybe Text)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind :: !Text
    , _aItems :: !(Maybe [Activity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Activities'
    { _aEtag = Nothing
    , _aNextPageToken = Nothing
    , _aKind = "admin#reports#activities"
    , _aItems = Nothing
    }


-- | ETag of the resource.
aEtag :: Lens' Activities (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Token for retrieving the follow-on next page of the report. The
-- \`nextPageToken\` value is used in the request\'s \`pageToken\` query
-- string.
aNextPageToken :: Lens' Activities (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | The type of API resource. For an activity report, the value is
-- \`reports#activities\`.
aKind :: Lens' Activities Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | Each activity record in the response.
aItems :: Lens' Activities [Activity]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

instance FromJSON Activities where
        parseJSON
          = withObject "Activities"
              (\ o ->
                 Activities' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "admin#reports#activities")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Activities where
        toJSON Activities'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag,
                  ("nextPageToken" .=) <$> _aNextPageToken,
                  Just ("kind" .= _aKind), ("items" .=) <$> _aItems])

-- | A notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel =
  Channel'
    { _cResourceURI :: !(Maybe Text)
    , _cResourceId :: !(Maybe Text)
    , _cKind :: !Text
    , _cExpiration :: !(Maybe (Textual Int64))
    , _cToken :: !(Maybe Text)
    , _cAddress :: !(Maybe Text)
    , _cPayload :: !(Maybe Bool)
    , _cParams :: !(Maybe ChannelParams)
    , _cId :: !(Maybe Text)
    , _cType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Channel'
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
-- resource, which is \"\`api#channel\`\".
cKind :: Lens' Channel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
cExpiration :: Lens' Channel (Maybe Int64)
cExpiration
  = lens _cExpiration (\ s a -> s{_cExpiration = a}) .
      mapping _Coerce

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

-- | The type of delivery mechanism used for this channel. The value should
-- be set to \`\"web_hook\"\`.
cType :: Lens' Channel (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o ->
                 Channel' <$>
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
        toJSON Channel'{..}
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
data UsageReport =
  UsageReport'
    { _uEtag :: !(Maybe Text)
    , _uKind :: !Text
    , _uDate :: !(Maybe Text)
    , _uParameters :: !(Maybe [UsageReportParametersItem])
    , _uEntity :: !(Maybe UsageReportEntity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UsageReport'
    { _uEtag = Nothing
    , _uKind = "admin#reports#usageReport"
    , _uDate = Nothing
    , _uParameters = Nothing
    , _uEntity = Nothing
    }


-- | ETag of the resource.
uEtag :: Lens' UsageReport (Maybe Text)
uEtag = lens _uEtag (\ s a -> s{_uEtag = a})

-- | The type of API resource. For a usage report, the value is
-- \`admin#reports#usageReport\`.
uKind :: Lens' UsageReport Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | Output only. The date of the report request.
uDate :: Lens' UsageReport (Maybe Text)
uDate = lens _uDate (\ s a -> s{_uDate = a})

-- | Output only. Parameter value pairs for various applications. For the
-- Entity Usage Report parameters and values, see [the Entity Usage
-- parameters
-- reference](\/admin-sdk\/reports\/v1\/reference\/usage-ref-appendix-a\/entities).
uParameters :: Lens' UsageReport [UsageReportParametersItem]
uParameters
  = lens _uParameters (\ s a -> s{_uParameters = a}) .
      _Default
      . _Coerce

-- | Output only. Information about the type of the item.
uEntity :: Lens' UsageReport (Maybe UsageReportEntity)
uEntity = lens _uEntity (\ s a -> s{_uEntity = a})

instance FromJSON UsageReport where
        parseJSON
          = withObject "UsageReport"
              (\ o ->
                 UsageReport' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "admin#reports#usageReport")
                     <*> (o .:? "date")
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON UsageReport where
        toJSON UsageReport'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _uEtag, Just ("kind" .= _uKind),
                  ("date" .=) <$> _uDate,
                  ("parameters" .=) <$> _uParameters,
                  ("entity" .=) <$> _uEntity])

--
-- /See:/ 'usageReportsWarningsItemDataItem' smart constructor.
data UsageReportsWarningsItemDataItem =
  UsageReportsWarningsItemDataItem'
    { _urwidiValue :: !(Maybe Text)
    , _urwidiKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UsageReportsWarningsItemDataItem'
    {_urwidiValue = Nothing, _urwidiKey = Nothing}


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
                 UsageReportsWarningsItemDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON UsageReportsWarningsItemDataItem
         where
        toJSON UsageReportsWarningsItemDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _urwidiValue,
                  ("key" .=) <$> _urwidiKey])

--
-- /See:/ 'usageReportsWarningsItem' smart constructor.
data UsageReportsWarningsItem =
  UsageReportsWarningsItem'
    { _urwiData :: !(Maybe [UsageReportsWarningsItemDataItem])
    , _urwiCode :: !(Maybe Text)
    , _urwiMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UsageReportsWarningsItem'
    {_urwiData = Nothing, _urwiCode = Nothing, _urwiMessage = Nothing}


-- | Key-value pairs to give detailed information on the warning.
urwiData :: Lens' UsageReportsWarningsItem [UsageReportsWarningsItemDataItem]
urwiData
  = lens _urwiData (\ s a -> s{_urwiData = a}) .
      _Default
      . _Coerce

-- | Machine readable code or warning type. The warning code value is
-- \`200\`.
urwiCode :: Lens' UsageReportsWarningsItem (Maybe Text)
urwiCode = lens _urwiCode (\ s a -> s{_urwiCode = a})

-- | The human readable messages for a warning are: - Data is not available
-- warning - Sorry, data for date yyyy-mm-dd for application
-- \"\`application name\`\" is not available. - Partial data is available
-- warning - Data for date yyyy-mm-dd for application \"\`application
-- name\`\" is not available right now, please try again after a few hours.
urwiMessage :: Lens' UsageReportsWarningsItem (Maybe Text)
urwiMessage
  = lens _urwiMessage (\ s a -> s{_urwiMessage = a})

instance FromJSON UsageReportsWarningsItem where
        parseJSON
          = withObject "UsageReportsWarningsItem"
              (\ o ->
                 UsageReportsWarningsItem' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON UsageReportsWarningsItem where
        toJSON UsageReportsWarningsItem'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _urwiData,
                  ("code" .=) <$> _urwiCode,
                  ("message" .=) <$> _urwiMessage])

--
-- /See:/ 'activityEventsItem' smart constructor.
data ActivityEventsItem =
  ActivityEventsItem'
    { _aeiName :: !(Maybe Text)
    , _aeiParameters :: !(Maybe [ActivityEventsItemParametersItem])
    , _aeiType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ActivityEventsItem'
    {_aeiName = Nothing, _aeiParameters = Nothing, _aeiType = Nothing}


-- | Name of the event. This is the specific name of the activity reported by
-- the API. And each \`eventName\` is related to a specific Google
-- Workspace service or feature which the API organizes into types of
-- events. For \`eventName\` request parameters in general: - If no
-- \`eventName\` is given, the report returns all possible instances of an
-- \`eventName\`. - When you request an \`eventName\`, the API\'s response
-- returns all activities which contain that \`eventName\`. It is possible
-- that the returned activities will have other \`eventName\` properties in
-- addition to the one requested. For more information about \`eventName\`
-- properties, see the list of event names for various applications above
-- in \`applicationName\`.
aeiName :: Lens' ActivityEventsItem (Maybe Text)
aeiName = lens _aeiName (\ s a -> s{_aeiName = a})

-- | Parameter value pairs for various applications. For more information
-- about \`eventName\` parameters, see the list of event names for various
-- applications above in \`applicationName\`.
aeiParameters :: Lens' ActivityEventsItem [ActivityEventsItemParametersItem]
aeiParameters
  = lens _aeiParameters
      (\ s a -> s{_aeiParameters = a})
      . _Default
      . _Coerce

-- | Type of event. The Google Workspace service or feature that an
-- administrator changes is identified in the \`type\` property which
-- identifies an event using the \`eventName\` property. For a full list of
-- the API\'s \`type\` categories, see the list of event names for various
-- applications above in \`applicationName\`.
aeiType :: Lens' ActivityEventsItem (Maybe Text)
aeiType = lens _aeiType (\ s a -> s{_aeiType = a})

instance FromJSON ActivityEventsItem where
        parseJSON
          = withObject "ActivityEventsItem"
              (\ o ->
                 ActivityEventsItem' <$>
                   (o .:? "name") <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON ActivityEventsItem where
        toJSON ActivityEventsItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _aeiName,
                  ("parameters" .=) <$> _aeiParameters,
                  ("type" .=) <$> _aeiType])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
newtype ChannelParams =
  ChannelParams'
    { _cpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpAddtional'
channelParams
    :: HashMap Text Text -- ^ 'cpAddtional'
    -> ChannelParams
channelParams pCpAddtional_ =
  ChannelParams' {_cpAddtional = _Coerce # pCpAddtional_}


cpAddtional :: Lens' ChannelParams (HashMap Text Text)
cpAddtional
  = lens _cpAddtional (\ s a -> s{_cpAddtional = a}) .
      _Coerce

instance FromJSON ChannelParams where
        parseJSON
          = withObject "ChannelParams"
              (\ o -> ChannelParams' <$> (parseJSONObject o))

instance ToJSON ChannelParams where
        toJSON = toJSON . _cpAddtional

-- | JSON template for the activity resource.
--
-- /See:/ 'activity' smart constructor.
data Activity =
  Activity'
    { _actEtag :: !(Maybe Text)
    , _actIPAddress :: !(Maybe Text)
    , _actKind :: !Text
    , _actActor :: !(Maybe ActivityActor)
    , _actOwnerDomain :: !(Maybe Text)
    , _actEvents :: !(Maybe [ActivityEventsItem])
    , _actId :: !(Maybe ActivityId)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Activity'
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

-- | IP address of the user doing the action. This is the Internet Protocol
-- (IP) address of the user when logging into Google Workspace, which may
-- or may not reflect the user\'s physical location. For example, the IP
-- address can be the user\'s proxy server\'s address or a virtual private
-- network (VPN) address. The API supports IPv4 and IPv6.
actIPAddress :: Lens' Activity (Maybe Text)
actIPAddress
  = lens _actIPAddress (\ s a -> s{_actIPAddress = a})

-- | The type of API resource. For an activity report, the value is
-- \`audit#activity\`.
actKind :: Lens' Activity Text
actKind = lens _actKind (\ s a -> s{_actKind = a})

-- | User doing the action.
actActor :: Lens' Activity (Maybe ActivityActor)
actActor = lens _actActor (\ s a -> s{_actActor = a})

-- | This is the domain that is affected by the report\'s event. For example
-- domain of Admin console or the Drive application\'s document owner.
actOwnerDomain :: Lens' Activity (Maybe Text)
actOwnerDomain
  = lens _actOwnerDomain
      (\ s a -> s{_actOwnerDomain = a})

-- | Activity events in the report.
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
                 Activity' <$>
                   (o .:? "etag") <*> (o .:? "ipAddress") <*>
                     (o .:? "kind" .!= "admin#reports#activity")
                     <*> (o .:? "actor")
                     <*> (o .:? "ownerDomain")
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON Activity where
        toJSON Activity'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _actEtag,
                  ("ipAddress" .=) <$> _actIPAddress,
                  Just ("kind" .= _actKind),
                  ("actor" .=) <$> _actActor,
                  ("ownerDomain" .=) <$> _actOwnerDomain,
                  ("events" .=) <$> _actEvents, ("id" .=) <$> _actId])

-- | Output only. Information about the type of the item.
--
-- /See:/ 'usageReportEntity' smart constructor.
data UsageReportEntity =
  UsageReportEntity'
    { _ureProFileId :: !(Maybe Text)
    , _ureCustomerId :: !(Maybe Text)
    , _ureUserEmail :: !(Maybe Text)
    , _ureType :: !(Maybe Text)
    , _ureEntityId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
--
-- * 'ureEntityId'
usageReportEntity
    :: UsageReportEntity
usageReportEntity =
  UsageReportEntity'
    { _ureProFileId = Nothing
    , _ureCustomerId = Nothing
    , _ureUserEmail = Nothing
    , _ureType = Nothing
    , _ureEntityId = Nothing
    }


-- | Output only. The user\'s immutable Google Workspace profile identifier.
ureProFileId :: Lens' UsageReportEntity (Maybe Text)
ureProFileId
  = lens _ureProFileId (\ s a -> s{_ureProFileId = a})

-- | Output only. The unique identifier of the customer\'s account.
ureCustomerId :: Lens' UsageReportEntity (Maybe Text)
ureCustomerId
  = lens _ureCustomerId
      (\ s a -> s{_ureCustomerId = a})

-- | Output only. The user\'s email address. Only relevant if entity.type =
-- \"USER\"
ureUserEmail :: Lens' UsageReportEntity (Maybe Text)
ureUserEmail
  = lens _ureUserEmail (\ s a -> s{_ureUserEmail = a})

-- | Output only. The type of item. The value is \`user\`.
ureType :: Lens' UsageReportEntity (Maybe Text)
ureType = lens _ureType (\ s a -> s{_ureType = a})

-- | Output only. Object key. Only relevant if entity.type = \"OBJECT\" Note:
-- external-facing name of report is \"Entities\" rather than \"Objects\".
ureEntityId :: Lens' UsageReportEntity (Maybe Text)
ureEntityId
  = lens _ureEntityId (\ s a -> s{_ureEntityId = a})

instance FromJSON UsageReportEntity where
        parseJSON
          = withObject "UsageReportEntity"
              (\ o ->
                 UsageReportEntity' <$>
                   (o .:? "profileId") <*> (o .:? "customerId") <*>
                     (o .:? "userEmail")
                     <*> (o .:? "type")
                     <*> (o .:? "entityId"))

instance ToJSON UsageReportEntity where
        toJSON UsageReportEntity'{..}
          = object
              (catMaybes
                 [("profileId" .=) <$> _ureProFileId,
                  ("customerId" .=) <$> _ureCustomerId,
                  ("userEmail" .=) <$> _ureUserEmail,
                  ("type" .=) <$> _ureType,
                  ("entityId" .=) <$> _ureEntityId])

--
-- /See:/ 'activityEventsItemParametersItem' smart constructor.
data ActivityEventsItemParametersItem =
  ActivityEventsItemParametersItem'
    { _aeipiBoolValue :: !(Maybe Bool)
    , _aeipiMessageValue :: !(Maybe ActivityEventsItemParametersItemMessageValue)
    , _aeipiIntValue :: !(Maybe (Textual Int64))
    , _aeipiValue :: !(Maybe Text)
    , _aeipiMultiIntValue :: !(Maybe [Textual Int64])
    , _aeipiMultiMessageValue :: !(Maybe [ActivityEventsItemParametersItemMultiMessageValueItem])
    , _aeipiName :: !(Maybe Text)
    , _aeipiMultiValue :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityEventsItemParametersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeipiBoolValue'
--
-- * 'aeipiMessageValue'
--
-- * 'aeipiIntValue'
--
-- * 'aeipiValue'
--
-- * 'aeipiMultiIntValue'
--
-- * 'aeipiMultiMessageValue'
--
-- * 'aeipiName'
--
-- * 'aeipiMultiValue'
activityEventsItemParametersItem
    :: ActivityEventsItemParametersItem
activityEventsItemParametersItem =
  ActivityEventsItemParametersItem'
    { _aeipiBoolValue = Nothing
    , _aeipiMessageValue = Nothing
    , _aeipiIntValue = Nothing
    , _aeipiValue = Nothing
    , _aeipiMultiIntValue = Nothing
    , _aeipiMultiMessageValue = Nothing
    , _aeipiName = Nothing
    , _aeipiMultiValue = Nothing
    }


-- | Boolean value of the parameter.
aeipiBoolValue :: Lens' ActivityEventsItemParametersItem (Maybe Bool)
aeipiBoolValue
  = lens _aeipiBoolValue
      (\ s a -> s{_aeipiBoolValue = a})

-- | Nested parameter value pairs associated with this parameter. Complex
-- value type for a parameter are returned as a list of parameter values.
-- For example, the address parameter may have a value as \`[{parameter:
-- [{name: city, value: abc}]}]\`
aeipiMessageValue :: Lens' ActivityEventsItemParametersItem (Maybe ActivityEventsItemParametersItemMessageValue)
aeipiMessageValue
  = lens _aeipiMessageValue
      (\ s a -> s{_aeipiMessageValue = a})

-- | Integer value of the parameter.
aeipiIntValue :: Lens' ActivityEventsItemParametersItem (Maybe Int64)
aeipiIntValue
  = lens _aeipiIntValue
      (\ s a -> s{_aeipiIntValue = a})
      . mapping _Coerce

-- | String value of the parameter.
aeipiValue :: Lens' ActivityEventsItemParametersItem (Maybe Text)
aeipiValue
  = lens _aeipiValue (\ s a -> s{_aeipiValue = a})

-- | Integer values of the parameter.
aeipiMultiIntValue :: Lens' ActivityEventsItemParametersItem [Int64]
aeipiMultiIntValue
  = lens _aeipiMultiIntValue
      (\ s a -> s{_aeipiMultiIntValue = a})
      . _Default
      . _Coerce

-- | List of \`messageValue\` objects.
aeipiMultiMessageValue :: Lens' ActivityEventsItemParametersItem [ActivityEventsItemParametersItemMultiMessageValueItem]
aeipiMultiMessageValue
  = lens _aeipiMultiMessageValue
      (\ s a -> s{_aeipiMultiMessageValue = a})
      . _Default
      . _Coerce

-- | The name of the parameter.
aeipiName :: Lens' ActivityEventsItemParametersItem (Maybe Text)
aeipiName
  = lens _aeipiName (\ s a -> s{_aeipiName = a})

-- | String values of the parameter.
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
                 ActivityEventsItemParametersItem' <$>
                   (o .:? "boolValue") <*> (o .:? "messageValue") <*>
                     (o .:? "intValue")
                     <*> (o .:? "value")
                     <*> (o .:? "multiIntValue" .!= mempty)
                     <*> (o .:? "multiMessageValue" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "multiValue" .!= mempty))

instance ToJSON ActivityEventsItemParametersItem
         where
        toJSON ActivityEventsItemParametersItem'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _aeipiBoolValue,
                  ("messageValue" .=) <$> _aeipiMessageValue,
                  ("intValue" .=) <$> _aeipiIntValue,
                  ("value" .=) <$> _aeipiValue,
                  ("multiIntValue" .=) <$> _aeipiMultiIntValue,
                  ("multiMessageValue" .=) <$> _aeipiMultiMessageValue,
                  ("name" .=) <$> _aeipiName,
                  ("multiValue" .=) <$> _aeipiMultiValue])

-- | Nested parameter value pairs associated with this parameter. Complex
-- value type for a parameter are returned as a list of parameter values.
-- For example, the address parameter may have a value as \`[{parameter:
-- [{name: city, value: abc}]}]\`
--
-- /See:/ 'activityEventsItemParametersItemMessageValue' smart constructor.
newtype ActivityEventsItemParametersItemMessageValue =
  ActivityEventsItemParametersItemMessageValue'
    { _aeipimvParameter :: Maybe [NestedParameter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityEventsItemParametersItemMessageValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeipimvParameter'
activityEventsItemParametersItemMessageValue
    :: ActivityEventsItemParametersItemMessageValue
activityEventsItemParametersItemMessageValue =
  ActivityEventsItemParametersItemMessageValue' {_aeipimvParameter = Nothing}


-- | Parameter values
aeipimvParameter :: Lens' ActivityEventsItemParametersItemMessageValue [NestedParameter]
aeipimvParameter
  = lens _aeipimvParameter
      (\ s a -> s{_aeipimvParameter = a})
      . _Default
      . _Coerce

instance FromJSON
           ActivityEventsItemParametersItemMessageValue
         where
        parseJSON
          = withObject
              "ActivityEventsItemParametersItemMessageValue"
              (\ o ->
                 ActivityEventsItemParametersItemMessageValue' <$>
                   (o .:? "parameter" .!= mempty))

instance ToJSON
           ActivityEventsItemParametersItemMessageValue
         where
        toJSON
          ActivityEventsItemParametersItemMessageValue'{..}
          = object
              (catMaybes [("parameter" .=) <$> _aeipimvParameter])

-- | User doing the action.
--
-- /See:/ 'activityActor' smart constructor.
data ActivityActor =
  ActivityActor'
    { _aaEmail :: !(Maybe Text)
    , _aaCallerType :: !(Maybe Text)
    , _aaProFileId :: !(Maybe Text)
    , _aaKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ActivityActor'
    { _aaEmail = Nothing
    , _aaCallerType = Nothing
    , _aaProFileId = Nothing
    , _aaKey = Nothing
    }


-- | The primary email address of the actor. May be absent if there is no
-- email address associated with the actor.
aaEmail :: Lens' ActivityActor (Maybe Text)
aaEmail = lens _aaEmail (\ s a -> s{_aaEmail = a})

-- | The type of actor.
aaCallerType :: Lens' ActivityActor (Maybe Text)
aaCallerType
  = lens _aaCallerType (\ s a -> s{_aaCallerType = a})

-- | The unique Google Workspace profile ID of the actor. May be absent if
-- the actor is not a Google Workspace user.
aaProFileId :: Lens' ActivityActor (Maybe Text)
aaProFileId
  = lens _aaProFileId (\ s a -> s{_aaProFileId = a})

-- | Only present when \`callerType\` is \`KEY\`. Can be the \`consumer_key\`
-- of the requestor for OAuth 2LO API requests or an identifier for robot
-- accounts.
aaKey :: Lens' ActivityActor (Maybe Text)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

instance FromJSON ActivityActor where
        parseJSON
          = withObject "ActivityActor"
              (\ o ->
                 ActivityActor' <$>
                   (o .:? "email") <*> (o .:? "callerType") <*>
                     (o .:? "profileId")
                     <*> (o .:? "key"))

instance ToJSON ActivityActor where
        toJSON ActivityActor'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _aaEmail,
                  ("callerType" .=) <$> _aaCallerType,
                  ("profileId" .=) <$> _aaProFileId,
                  ("key" .=) <$> _aaKey])
