{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Activities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of channel activity events that match the request
-- criteria. For example, you can retrieve events associated with a
-- particular channel, events associated with the user\'s subscriptions and
-- Google+ friends, or the YouTube home page feed, which is customized for
-- each user.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeActivitiesList@.
module Network.Google.Resource.YouTube.Activities.List
    (
    -- * REST Resource
      ActivitiesListResource

    -- * Creating a Request
    , activitiesList'
    , ActivitiesList'

    -- * Request Lenses
    , alPublishedAfter
    , alPart
    , alHome
    , alMine
    , alRegionCode
    , alChannelId
    , alPageToken
    , alMaxResults
    , alPublishedBefore
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeActivitiesList@ method which the
-- 'ActivitiesList'' request conforms to.
type ActivitiesListResource =
     "activities" :>
       QueryParam "part" Text :>
         QueryParam "publishedAfter" DateTime' :>
           QueryParam "home" Bool :>
             QueryParam "mine" Bool :>
               QueryParam "regionCode" Text :>
                 QueryParam "channelId" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "publishedBefore" DateTime' :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ActivityListResponse

-- | Returns a list of channel activity events that match the request
-- criteria. For example, you can retrieve events associated with a
-- particular channel, events associated with the user\'s subscriptions and
-- Google+ friends, or the YouTube home page feed, which is customized for
-- each user.
--
-- /See:/ 'activitiesList'' smart constructor.
data ActivitiesList' = ActivitiesList'
    { _alPublishedAfter  :: !(Maybe DateTime')
    , _alPart            :: !Text
    , _alHome            :: !(Maybe Bool)
    , _alMine            :: !(Maybe Bool)
    , _alRegionCode      :: !(Maybe Text)
    , _alChannelId       :: !(Maybe Text)
    , _alPageToken       :: !(Maybe Text)
    , _alMaxResults      :: !Word32
    , _alPublishedBefore :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alPublishedAfter'
--
-- * 'alPart'
--
-- * 'alHome'
--
-- * 'alMine'
--
-- * 'alRegionCode'
--
-- * 'alChannelId'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
--
-- * 'alPublishedBefore'
activitiesList'
    :: Text -- ^ 'part'
    -> ActivitiesList'
activitiesList' pAlPart_ =
    ActivitiesList'
    { _alPublishedAfter = Nothing
    , _alPart = pAlPart_
    , _alHome = Nothing
    , _alMine = Nothing
    , _alRegionCode = Nothing
    , _alChannelId = Nothing
    , _alPageToken = Nothing
    , _alMaxResults = 5
    , _alPublishedBefore = Nothing
    }

-- | The publishedAfter parameter specifies the earliest date and time that
-- an activity could have occurred for that activity to be included in the
-- API response. If the parameter value specifies a day, but not a time,
-- then any activities that occurred that day will be included in the
-- result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ)
-- format.
alPublishedAfter :: Lens' ActivitiesList' (Maybe UTCTime)
alPublishedAfter
  = lens _alPublishedAfter
      (\ s a -> s{_alPublishedAfter = a})
      . mapping _DateTime

-- | The part parameter specifies a comma-separated list of one or more
-- activity resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in an
-- activity resource, the snippet property contains other properties that
-- identify the type of activity, a display title for the activity, and so
-- forth. If you set part=snippet, the API response will also contain all
-- of those nested properties.
alPart :: Lens' ActivitiesList' Text
alPart = lens _alPart (\ s a -> s{_alPart = a})

-- | Set this parameter\'s value to true to retrieve the activity feed that
-- displays on the YouTube home page for the currently authenticated user.
alHome :: Lens' ActivitiesList' (Maybe Bool)
alHome = lens _alHome (\ s a -> s{_alHome = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- authenticated user\'s activities.
alMine :: Lens' ActivitiesList' (Maybe Bool)
alMine = lens _alMine (\ s a -> s{_alMine = a})

-- | The regionCode parameter instructs the API to return results for the
-- specified country. The parameter value is an ISO 3166-1 alpha-2 country
-- code. YouTube uses this value when the authorized user\'s previous
-- activity on YouTube does not provide enough information to generate the
-- activity feed.
alRegionCode :: Lens' ActivitiesList' (Maybe Text)
alRegionCode
  = lens _alRegionCode (\ s a -> s{_alRegionCode = a})

-- | The channelId parameter specifies a unique YouTube channel ID. The API
-- will then return a list of that channel\'s activities.
alChannelId :: Lens' ActivitiesList' (Maybe Text)
alChannelId
  = lens _alChannelId (\ s a -> s{_alChannelId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
alPageToken :: Lens' ActivitiesList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
alMaxResults :: Lens' ActivitiesList' Word32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | The publishedBefore parameter specifies the date and time before which
-- an activity must have occurred for that activity to be included in the
-- API response. If the parameter value specifies a day, but not a time,
-- then any activities that occurred that day will be excluded from the
-- result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ)
-- format.
alPublishedBefore :: Lens' ActivitiesList' (Maybe UTCTime)
alPublishedBefore
  = lens _alPublishedBefore
      (\ s a -> s{_alPublishedBefore = a})
      . mapping _DateTime

instance GoogleRequest ActivitiesList' where
        type Rs ActivitiesList' = ActivityListResponse
        requestClient ActivitiesList'{..}
          = go (Just _alPart) _alPublishedAfter _alHome _alMine
              _alRegionCode
              _alChannelId
              _alPageToken
              (Just _alMaxResults)
              _alPublishedBefore
              (Just AltJSON)
              youTube
          where go
                  = buildClient (Proxy :: Proxy ActivitiesListResource)
                      mempty
