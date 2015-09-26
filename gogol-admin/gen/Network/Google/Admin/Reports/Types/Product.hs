{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Admin.Reports.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Admin.Reports.Types.Product where

import           Network.Google.Admin.Reports.Types.Sum
import           Network.Google.Prelude

-- | JSON template for a collection of activites.
--
-- /See:/ 'activities' smart constructor.
data Activities = Activities
    { _actEtag          :: !(Maybe Text)
    , _actNextPageToken :: !(Maybe Text)
    , _actKind          :: !Text
    , _actItems         :: !(Maybe [Maybe Activity])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actEtag'
--
-- * 'actNextPageToken'
--
-- * 'actKind'
--
-- * 'actItems'
activities
    :: Activities
activities =
    Activities
    { _actEtag = Nothing
    , _actNextPageToken = Nothing
    , _actKind = "admin#reports#activities"
    , _actItems = Nothing
    }

-- | ETag of the resource.
actEtag :: Lens' Activities (Maybe Text)
actEtag = lens _actEtag (\ s a -> s{_actEtag = a})

-- | Token for retrieving the next page
actNextPageToken :: Lens' Activities (Maybe Text)
actNextPageToken
  = lens _actNextPageToken
      (\ s a -> s{_actNextPageToken = a})

-- | Kind of list response this is.
actKind :: Lens' Activities Text
actKind = lens _actKind (\ s a -> s{_actKind = a})

-- | Each record in read response.
actItems :: Lens' Activities [Maybe Activity]
actItems
  = lens _actItems (\ s a -> s{_actItems = a}) .
      _Default
      . _Coerce

-- | JSON template for the activity resource.
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aEtag        :: !(Maybe Text)
    , _aIpAddress   :: !(Maybe Text)
    , _aKind        :: !Text
    , _aActor       :: !(Maybe ActivityActor)
    , _aOwnerDomain :: !(Maybe Text)
    , _aEvents      :: !(Maybe [ActivityItemEvents])
    , _aId          :: !(Maybe ActivityId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aIpAddress'
--
-- * 'aKind'
--
-- * 'aActor'
--
-- * 'aOwnerDomain'
--
-- * 'aEvents'
--
-- * 'aId'
activity
    :: Activity
activity =
    Activity
    { _aEtag = Nothing
    , _aIpAddress = Nothing
    , _aKind = "admin#reports#activity"
    , _aActor = Nothing
    , _aOwnerDomain = Nothing
    , _aEvents = Nothing
    , _aId = Nothing
    }

-- | ETag of the entry.
aEtag :: Lens' Activity (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | IP Address of the user doing the action.
aIpAddress :: Lens' Activity (Maybe Text)
aIpAddress
  = lens _aIpAddress (\ s a -> s{_aIpAddress = a})

-- | Kind of resource this is.
aKind :: Lens' Activity Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | User doing the action.
aActor :: Lens' Activity (Maybe ActivityActor)
aActor = lens _aActor (\ s a -> s{_aActor = a})

-- | Domain of source customer.
aOwnerDomain :: Lens' Activity (Maybe Text)
aOwnerDomain
  = lens _aOwnerDomain (\ s a -> s{_aOwnerDomain = a})

-- | Activity events.
aEvents :: Lens' Activity [ActivityItemEvents]
aEvents
  = lens _aEvents (\ s a -> s{_aEvents = a}) . _Default
      . _Coerce

-- | Unique identifier for each activity record.
aId :: Lens' Activity (Maybe ActivityId)
aId = lens _aId (\ s a -> s{_aId = a})

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

-- | Unique identifier for each activity record.
--
-- /See:/ 'activityId' smart constructor.
data ActivityId = ActivityId
    { _aiTime            :: !(Maybe UTCTime)
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

--
-- /See:/ 'activityItemEvents' smart constructor.
data ActivityItemEvents = ActivityItemEvents
    { _aieName       :: !(Maybe Text)
    , _aieParameters :: !(Maybe [ActivityItemParametersItemEvents])
    , _aieType       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityItemEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aieName'
--
-- * 'aieParameters'
--
-- * 'aieType'
activityItemEvents
    :: ActivityItemEvents
activityItemEvents =
    ActivityItemEvents
    { _aieName = Nothing
    , _aieParameters = Nothing
    , _aieType = Nothing
    }

-- | Name of event.
aieName :: Lens' ActivityItemEvents (Maybe Text)
aieName = lens _aieName (\ s a -> s{_aieName = a})

-- | Parameter value pairs for various applications.
aieParameters :: Lens' ActivityItemEvents [ActivityItemParametersItemEvents]
aieParameters
  = lens _aieParameters
      (\ s a -> s{_aieParameters = a})
      . _Default
      . _Coerce

-- | Type of event.
aieType :: Lens' ActivityItemEvents (Maybe Text)
aieType = lens _aieType (\ s a -> s{_aieType = a})

--
-- /See:/ 'activityItemParametersItemEvents' smart constructor.
data ActivityItemParametersItemEvents = ActivityItemParametersItemEvents
    { _aipieBoolValue     :: !(Maybe Bool)
    , _aipieIntValue      :: !(Maybe Int64)
    , _aipieValue         :: !(Maybe Text)
    , _aipieMultiIntValue :: !(Maybe [Int64])
    , _aipieName          :: !(Maybe Text)
    , _aipieMultiValue    :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityItemParametersItemEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aipieBoolValue'
--
-- * 'aipieIntValue'
--
-- * 'aipieValue'
--
-- * 'aipieMultiIntValue'
--
-- * 'aipieName'
--
-- * 'aipieMultiValue'
activityItemParametersItemEvents
    :: ActivityItemParametersItemEvents
activityItemParametersItemEvents =
    ActivityItemParametersItemEvents
    { _aipieBoolValue = Nothing
    , _aipieIntValue = Nothing
    , _aipieValue = Nothing
    , _aipieMultiIntValue = Nothing
    , _aipieName = Nothing
    , _aipieMultiValue = Nothing
    }

-- | Boolean value of the parameter.
aipieBoolValue :: Lens' ActivityItemParametersItemEvents (Maybe Bool)
aipieBoolValue
  = lens _aipieBoolValue
      (\ s a -> s{_aipieBoolValue = a})

-- | Integral value of the parameter.
aipieIntValue :: Lens' ActivityItemParametersItemEvents (Maybe Int64)
aipieIntValue
  = lens _aipieIntValue
      (\ s a -> s{_aipieIntValue = a})

-- | String value of the parameter.
aipieValue :: Lens' ActivityItemParametersItemEvents (Maybe Text)
aipieValue
  = lens _aipieValue (\ s a -> s{_aipieValue = a})

-- | Multi-int value of the parameter.
aipieMultiIntValue :: Lens' ActivityItemParametersItemEvents [Int64]
aipieMultiIntValue
  = lens _aipieMultiIntValue
      (\ s a -> s{_aipieMultiIntValue = a})
      . _Default
      . _Coerce

-- | The name of the parameter.
aipieName :: Lens' ActivityItemParametersItemEvents (Maybe Text)
aipieName
  = lens _aipieName (\ s a -> s{_aipieName = a})

-- | Multi-string value of the parameter.
aipieMultiValue :: Lens' ActivityItemParametersItemEvents [Text]
aipieMultiValue
  = lens _aipieMultiValue
      (\ s a -> s{_aipieMultiValue = a})
      . _Default
      . _Coerce

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cResourceUri :: !(Maybe Text)
    , _cResourceId  :: !(Maybe Text)
    , _cKind        :: !Text
    , _cExpiration  :: !(Maybe Int64)
    , _cToken       :: !(Maybe Text)
    , _cAddress     :: !(Maybe Text)
    , _cPayload     :: !(Maybe Bool)
    , _cParams      :: !(Maybe ChannelParams)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceUri'
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
    { _cResourceUri = Nothing
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
cResourceUri :: Lens' Channel (Maybe Text)
cResourceUri
  = lens _cResourceUri (\ s a -> s{_cResourceUri = a})

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

-- | JSON template for a usage report.
--
-- /See:/ 'usageReport' smart constructor.
data UsageReport = UsageReport
    { _uEtag       :: !(Maybe Text)
    , _uKind       :: !Text
    , _uDate       :: !(Maybe Text)
    , _uParameters :: !(Maybe [UsageReportItemParameters])
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
uParameters :: Lens' UsageReport [UsageReportItemParameters]
uParameters
  = lens _uParameters (\ s a -> s{_uParameters = a}) .
      _Default
      . _Coerce

-- | Information about the type of the item.
uEntity :: Lens' UsageReport (Maybe UsageReportEntity)
uEntity = lens _uEntity (\ s a -> s{_uEntity = a})

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

--
-- /See:/ 'usageReportItemMsgValueItemParameters' smart constructor.
data UsageReportItemMsgValueItemParameters =
    UsageReportItemMsgValueItemParameters
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportItemMsgValueItemParameters' with the minimum fields required to make a request.
--
usageReportItemMsgValueItemParameters
    :: UsageReportItemMsgValueItemParameters
usageReportItemMsgValueItemParameters = UsageReportItemMsgValueItemParameters

--
-- /See:/ 'usageReportItemParameters' smart constructor.
data UsageReportItemParameters = UsageReportItemParameters
    { _uripDatetimeValue :: !(Maybe UTCTime)
    , _uripBoolValue     :: !(Maybe Bool)
    , _uripIntValue      :: !(Maybe Int64)
    , _uripStringValue   :: !(Maybe Text)
    , _uripName          :: !(Maybe Text)
    , _uripMsgValue      :: !(Maybe [UsageReportItemMsgValueItemParameters])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportItemParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uripDatetimeValue'
--
-- * 'uripBoolValue'
--
-- * 'uripIntValue'
--
-- * 'uripStringValue'
--
-- * 'uripName'
--
-- * 'uripMsgValue'
usageReportItemParameters
    :: UsageReportItemParameters
usageReportItemParameters =
    UsageReportItemParameters
    { _uripDatetimeValue = Nothing
    , _uripBoolValue = Nothing
    , _uripIntValue = Nothing
    , _uripStringValue = Nothing
    , _uripName = Nothing
    , _uripMsgValue = Nothing
    }

-- | RFC 3339 formatted value of the parameter.
uripDatetimeValue :: Lens' UsageReportItemParameters (Maybe UTCTime)
uripDatetimeValue
  = lens _uripDatetimeValue
      (\ s a -> s{_uripDatetimeValue = a})

-- | Boolean value of the parameter.
uripBoolValue :: Lens' UsageReportItemParameters (Maybe Bool)
uripBoolValue
  = lens _uripBoolValue
      (\ s a -> s{_uripBoolValue = a})

-- | Integral value of the parameter.
uripIntValue :: Lens' UsageReportItemParameters (Maybe Int64)
uripIntValue
  = lens _uripIntValue (\ s a -> s{_uripIntValue = a})

-- | String value of the parameter.
uripStringValue :: Lens' UsageReportItemParameters (Maybe Text)
uripStringValue
  = lens _uripStringValue
      (\ s a -> s{_uripStringValue = a})

-- | The name of the parameter.
uripName :: Lens' UsageReportItemParameters (Maybe Text)
uripName = lens _uripName (\ s a -> s{_uripName = a})

-- | Nested message value of the parameter.
uripMsgValue :: Lens' UsageReportItemParameters [UsageReportItemMsgValueItemParameters]
uripMsgValue
  = lens _uripMsgValue (\ s a -> s{_uripMsgValue = a})
      . _Default
      . _Coerce

-- | JSON template for a collection of usage reports.
--
-- /See:/ 'usageReports' smart constructor.
data UsageReports = UsageReports
    { _urEtag          :: !(Maybe Text)
    , _urNextPageToken :: !(Maybe Text)
    , _urUsageReports  :: !(Maybe [Maybe UsageReport])
    , _urKind          :: !Text
    , _urWarnings      :: !(Maybe [UsageReportsItemWarnings])
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
urUsageReports :: Lens' UsageReports [Maybe UsageReport]
urUsageReports
  = lens _urUsageReports
      (\ s a -> s{_urUsageReports = a})
      . _Default
      . _Coerce

-- | The kind of object.
urKind :: Lens' UsageReports Text
urKind = lens _urKind (\ s a -> s{_urKind = a})

-- | Warnings if any.
urWarnings :: Lens' UsageReports [UsageReportsItemWarnings]
urWarnings
  = lens _urWarnings (\ s a -> s{_urWarnings = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'usageReportsItemDataItemWarnings' smart constructor.
data UsageReportsItemDataItemWarnings = UsageReportsItemDataItemWarnings
    { _uridiwValue :: !(Maybe Text)
    , _uridiwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportsItemDataItemWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uridiwValue'
--
-- * 'uridiwKey'
usageReportsItemDataItemWarnings
    :: UsageReportsItemDataItemWarnings
usageReportsItemDataItemWarnings =
    UsageReportsItemDataItemWarnings
    { _uridiwValue = Nothing
    , _uridiwKey = Nothing
    }

-- | Value associated with a key-value pair to give detailed information on
-- the warning.
uridiwValue :: Lens' UsageReportsItemDataItemWarnings (Maybe Text)
uridiwValue
  = lens _uridiwValue (\ s a -> s{_uridiwValue = a})

-- | Key associated with a key-value pair to give detailed information on the
-- warning.
uridiwKey :: Lens' UsageReportsItemDataItemWarnings (Maybe Text)
uridiwKey
  = lens _uridiwKey (\ s a -> s{_uridiwKey = a})

--
-- /See:/ 'usageReportsItemWarnings' smart constructor.
data UsageReportsItemWarnings = UsageReportsItemWarnings
    { _uriwData    :: !(Maybe [UsageReportsItemDataItemWarnings])
    , _uriwCode    :: !(Maybe Text)
    , _uriwMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageReportsItemWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uriwData'
--
-- * 'uriwCode'
--
-- * 'uriwMessage'
usageReportsItemWarnings
    :: UsageReportsItemWarnings
usageReportsItemWarnings =
    UsageReportsItemWarnings
    { _uriwData = Nothing
    , _uriwCode = Nothing
    , _uriwMessage = Nothing
    }

-- | Key-Value pairs to give detailed information on the warning.
uriwData :: Lens' UsageReportsItemWarnings [UsageReportsItemDataItemWarnings]
uriwData
  = lens _uriwData (\ s a -> s{_uriwData = a}) .
      _Default
      . _Coerce

-- | Machine readable code \/ warning type.
uriwCode :: Lens' UsageReportsItemWarnings (Maybe Text)
uriwCode = lens _uriwCode (\ s a -> s{_uriwCode = a})

-- | Human readable message for the warning.
uriwMessage :: Lens' UsageReportsItemWarnings (Maybe Text)
uriwMessage
  = lens _uriwMessage (\ s a -> s{_uriwMessage = a})
