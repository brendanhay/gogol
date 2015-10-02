{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , alQuotaUser
    , alPart
    , alPrettyPrint
    , alHome
    , alMine
    , alRegionCode
    , alUserIP
    , alChannelId
    , alKey
    , alPageToken
    , alOAuthToken
    , alMaxResults
    , alPublishedBefore
    , alFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeActivitiesList@ which the
-- 'ActivitiesList'' request conforms to.
type ActivitiesListResource =
     "activities" :>
       QueryParam "channelId" Text :>
         QueryParam "home" Bool :>
           QueryParam "maxResults" Word32 :>
             QueryParam "mine" Bool :>
               QueryParam "pageToken" Text :>
                 QueryParam "publishedAfter" DateTime :>
                   QueryParam "publishedBefore" DateTime :>
                     QueryParam "regionCode" Text :>
                       QueryParam "part" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
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
    { _alPublishedAfter  :: !(Maybe DateTime)
    , _alQuotaUser       :: !(Maybe Text)
    , _alPart            :: !Text
    , _alPrettyPrint     :: !Bool
    , _alHome            :: !(Maybe Bool)
    , _alMine            :: !(Maybe Bool)
    , _alRegionCode      :: !(Maybe Text)
    , _alUserIP          :: !(Maybe Text)
    , _alChannelId       :: !(Maybe Text)
    , _alKey             :: !(Maybe Key)
    , _alPageToken       :: !(Maybe Text)
    , _alOAuthToken      :: !(Maybe OAuthToken)
    , _alMaxResults      :: !Word32
    , _alPublishedBefore :: !(Maybe DateTime)
    , _alFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alPublishedAfter'
--
-- * 'alQuotaUser'
--
-- * 'alPart'
--
-- * 'alPrettyPrint'
--
-- * 'alHome'
--
-- * 'alMine'
--
-- * 'alRegionCode'
--
-- * 'alUserIP'
--
-- * 'alChannelId'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alOAuthToken'
--
-- * 'alMaxResults'
--
-- * 'alPublishedBefore'
--
-- * 'alFields'
activitiesList'
    :: Text -- ^ 'part'
    -> ActivitiesList'
activitiesList' pAlPart_ =
    ActivitiesList'
    { _alPublishedAfter = Nothing
    , _alQuotaUser = Nothing
    , _alPart = pAlPart_
    , _alPrettyPrint = True
    , _alHome = Nothing
    , _alMine = Nothing
    , _alRegionCode = Nothing
    , _alUserIP = Nothing
    , _alChannelId = Nothing
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alOAuthToken = Nothing
    , _alMaxResults = 5
    , _alPublishedBefore = Nothing
    , _alFields = Nothing
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

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' ActivitiesList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

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

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' ActivitiesList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIP :: Lens' ActivitiesList' (Maybe Text)
alUserIP = lens _alUserIP (\ s a -> s{_alUserIP = a})

-- | The channelId parameter specifies a unique YouTube channel ID. The API
-- will then return a list of that channel\'s activities.
alChannelId :: Lens' ActivitiesList' (Maybe Text)
alChannelId
  = lens _alChannelId (\ s a -> s{_alChannelId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' ActivitiesList' (Maybe Key)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
alPageToken :: Lens' ActivitiesList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOAuthToken :: Lens' ActivitiesList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

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

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' ActivitiesList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth ActivitiesList' where
        authKey = alKey . _Just
        authToken = alOAuthToken . _Just

instance GoogleRequest ActivitiesList' where
        type Rs ActivitiesList' = ActivityListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ActivitiesList'{..}
          = go _alChannelId _alHome (Just _alMaxResults)
              _alMine
              _alPageToken
              _alPublishedAfter
              _alPublishedBefore
              _alRegionCode
              (Just _alPart)
              _alQuotaUser
              (Just _alPrettyPrint)
              _alUserIP
              _alFields
              _alKey
              _alOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ActivitiesListResource)
                      r
                      u
