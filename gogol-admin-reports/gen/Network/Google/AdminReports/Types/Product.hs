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

-- | JSON template for a collection of usage reports.
--
-- /See:/ 'usageReports' smart constructor.
data UsageReports = UsageReports
    { _urEtag          :: !(Maybe Text)
    , _urNextPageToken :: !(Maybe Text)
    , _urUsageReports  :: !(Maybe [Maybe UsageReport])
    , _urKind          :: !Text
    , _urWarnings      :: !(Maybe [UsageReportsWarningsItem])
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

-- | JSON template for a collection of activites.
--
-- /See:/ 'activities' smart constructor.
data Activities = Activities
    { _aEtag          :: !(Maybe Text)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Maybe Activity])
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
aItems :: Lens' Activities [Maybe Activity]
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
                 [("resourceUri" .=) <$> _cResourceUri,
                  ("resourceId" .=) <$> _cResourceId,
                  Just ("kind" .= _cKind),
                  ("expiration" .=) <$> _cExpiration,
                  ("token" .=) <$> _cToken,
                  ("address" .=) <$> _cAddress,
                  ("payload" .=) <$> _cPayload,
                  ("params" .=) <$> _cParams, ("id" .=) <$> _cId,
                  ("type" .=) <$> _cType])

-- | JSON template for the activity resource.
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _actEtag        :: !(Maybe Text)
    , _actIpAddress   :: !(Maybe Text)
    , _actKind        :: !Text
    , _actActor       :: !(Maybe ActivityActor)
    , _actOwnerDomain :: !(Maybe Text)
    , _actEvents      :: !(Maybe [ActivityEventsItem])
    , _actId          :: !(Maybe ActivityId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actEtag'
--
-- * 'actIpAddress'
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
    , _actIpAddress = Nothing
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
actIpAddress :: Lens' Activity (Maybe Text)
actIpAddress
  = lens _actIpAddress (\ s a -> s{_actIpAddress = a})

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
                  ("ipAddress" .=) <$> _actIpAddress,
                  Just ("kind" .= _actKind),
                  ("actor" .=) <$> _actActor,
                  ("ownerDomain" .=) <$> _actOwnerDomain,
                  ("events" .=) <$> _actEvents, ("id" .=) <$> _actId])
