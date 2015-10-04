{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Videos.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of videos that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideosList@.
module Network.Google.Resource.YouTube.Videos.List
    (
    -- * REST Resource
      VideosListResource

    -- * Creating a Request
    , videosList'
    , VideosList'

    -- * Request Lenses
    , vlChart
    , vlQuotaUser
    , vlPart
    , vlPrettyPrint
    , vlRegionCode
    , vlUserIP
    , vlLocale
    , vlMyRating
    , vlHl
    , vlOnBehalfOfContentOwner
    , vlVideoCategoryId
    , vlKey
    , vlId
    , vlPageToken
    , vlOAuthToken
    , vlMaxResults
    , vlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosList@ which the
-- 'VideosList'' request conforms to.
type VideosListResource =
     "videos" :>
       QueryParam "part" Text :>
         QueryParam "chart" Chart :>
           QueryParam "regionCode" Text :>
             QueryParam "locale" Text :>
               QueryParam "myRating" MyRating :>
                 QueryParam "hl" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "videoCategoryId" Text :>
                       QueryParam "id" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] VideoListResponse

-- | Returns a list of videos that match the API request parameters.
--
-- /See:/ 'videosList'' smart constructor.
data VideosList' = VideosList'
    { _vlChart                  :: !(Maybe Chart)
    , _vlQuotaUser              :: !(Maybe Text)
    , _vlPart                   :: !Text
    , _vlPrettyPrint            :: !Bool
    , _vlRegionCode             :: !(Maybe Text)
    , _vlUserIP                 :: !(Maybe Text)
    , _vlLocale                 :: !(Maybe Text)
    , _vlMyRating               :: !(Maybe MyRating)
    , _vlHl                     :: !(Maybe Text)
    , _vlOnBehalfOfContentOwner :: !(Maybe Text)
    , _vlVideoCategoryId        :: !Text
    , _vlKey                    :: !(Maybe Key)
    , _vlId                     :: !(Maybe Text)
    , _vlPageToken              :: !(Maybe Text)
    , _vlOAuthToken             :: !(Maybe OAuthToken)
    , _vlMaxResults             :: !Word32
    , _vlFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlChart'
--
-- * 'vlQuotaUser'
--
-- * 'vlPart'
--
-- * 'vlPrettyPrint'
--
-- * 'vlRegionCode'
--
-- * 'vlUserIP'
--
-- * 'vlLocale'
--
-- * 'vlMyRating'
--
-- * 'vlHl'
--
-- * 'vlOnBehalfOfContentOwner'
--
-- * 'vlVideoCategoryId'
--
-- * 'vlKey'
--
-- * 'vlId'
--
-- * 'vlPageToken'
--
-- * 'vlOAuthToken'
--
-- * 'vlMaxResults'
--
-- * 'vlFields'
videosList'
    :: Text -- ^ 'part'
    -> VideosList'
videosList' pVlPart_ =
    VideosList'
    { _vlChart = Nothing
    , _vlQuotaUser = Nothing
    , _vlPart = pVlPart_
    , _vlPrettyPrint = True
    , _vlRegionCode = Nothing
    , _vlUserIP = Nothing
    , _vlLocale = Nothing
    , _vlMyRating = Nothing
    , _vlHl = Nothing
    , _vlOnBehalfOfContentOwner = Nothing
    , _vlVideoCategoryId = "0"
    , _vlKey = Nothing
    , _vlId = Nothing
    , _vlPageToken = Nothing
    , _vlOAuthToken = Nothing
    , _vlMaxResults = 5
    , _vlFields = Nothing
    }

-- | The chart parameter identifies the chart that you want to retrieve.
vlChart :: Lens' VideosList' (Maybe Chart)
vlChart = lens _vlChart (\ s a -> s{_vlChart = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vlQuotaUser :: Lens' VideosList' (Maybe Text)
vlQuotaUser
  = lens _vlQuotaUser (\ s a -> s{_vlQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more video
-- resource properties that the API response will include. If the parameter
-- identifies a property that contains child properties, the child
-- properties will be included in the response. For example, in a video
-- resource, the snippet property contains the channelId, title,
-- description, tags, and categoryId properties. As such, if you set
-- part=snippet, the API response will contain all of those properties.
vlPart :: Lens' VideosList' Text
vlPart = lens _vlPart (\ s a -> s{_vlPart = a})

-- | Returns response with indentations and line breaks.
vlPrettyPrint :: Lens' VideosList' Bool
vlPrettyPrint
  = lens _vlPrettyPrint
      (\ s a -> s{_vlPrettyPrint = a})

-- | The regionCode parameter instructs the API to select a video chart
-- available in the specified region. This parameter can only be used in
-- conjunction with the chart parameter. The parameter value is an ISO
-- 3166-1 alpha-2 country code.
vlRegionCode :: Lens' VideosList' (Maybe Text)
vlRegionCode
  = lens _vlRegionCode (\ s a -> s{_vlRegionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vlUserIP :: Lens' VideosList' (Maybe Text)
vlUserIP = lens _vlUserIP (\ s a -> s{_vlUserIP = a})

-- | DEPRECATED
vlLocale :: Lens' VideosList' (Maybe Text)
vlLocale = lens _vlLocale (\ s a -> s{_vlLocale = a})

-- | Set this parameter\'s value to like or dislike to instruct the API to
-- only return videos liked or disliked by the authenticated user.
vlMyRating :: Lens' VideosList' (Maybe MyRating)
vlMyRating
  = lens _vlMyRating (\ s a -> s{_vlMyRating = a})

-- | The hl parameter instructs the API to retrieve localized resource
-- metadata for a specific application language that the YouTube website
-- supports. The parameter value must be a language code included in the
-- list returned by the i18nLanguages.list method. If localized resource
-- details are available in that language, the resource\'s
-- snippet.localized object will contain the localized values. However, if
-- localized details are not available, the snippet.localized object will
-- contain resource details in the resource\'s default language.
vlHl :: Lens' VideosList' (Maybe Text)
vlHl = lens _vlHl (\ s a -> s{_vlHl = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
vlOnBehalfOfContentOwner :: Lens' VideosList' (Maybe Text)
vlOnBehalfOfContentOwner
  = lens _vlOnBehalfOfContentOwner
      (\ s a -> s{_vlOnBehalfOfContentOwner = a})

-- | The videoCategoryId parameter identifies the video category for which
-- the chart should be retrieved. This parameter can only be used in
-- conjunction with the chart parameter. By default, charts are not
-- restricted to a particular category.
vlVideoCategoryId :: Lens' VideosList' Text
vlVideoCategoryId
  = lens _vlVideoCategoryId
      (\ s a -> s{_vlVideoCategoryId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vlKey :: Lens' VideosList' (Maybe Key)
vlKey = lens _vlKey (\ s a -> s{_vlKey = a})

-- | The id parameter specifies a comma-separated list of the YouTube video
-- ID(s) for the resource(s) that are being retrieved. In a video resource,
-- the id property specifies the video\'s ID.
vlId :: Lens' VideosList' (Maybe Text)
vlId = lens _vlId (\ s a -> s{_vlId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
-- Note: This parameter is supported for use in conjunction with the
-- myRating parameter, but it is not supported for use in conjunction with
-- the id parameter.
vlPageToken :: Lens' VideosList' (Maybe Text)
vlPageToken
  = lens _vlPageToken (\ s a -> s{_vlPageToken = a})

-- | OAuth 2.0 token for the current user.
vlOAuthToken :: Lens' VideosList' (Maybe OAuthToken)
vlOAuthToken
  = lens _vlOAuthToken (\ s a -> s{_vlOAuthToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is supported
-- for use in conjunction with the myRating parameter, but it is not
-- supported for use in conjunction with the id parameter.
vlMaxResults :: Lens' VideosList' Word32
vlMaxResults
  = lens _vlMaxResults (\ s a -> s{_vlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
vlFields :: Lens' VideosList' (Maybe Text)
vlFields = lens _vlFields (\ s a -> s{_vlFields = a})

instance GoogleAuth VideosList' where
        authKey = vlKey . _Just
        authToken = vlOAuthToken . _Just

instance GoogleRequest VideosList' where
        type Rs VideosList' = VideoListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosList'{..}
          = go (Just _vlPart) _vlChart _vlRegionCode _vlLocale
              _vlMyRating
              _vlHl
              _vlOnBehalfOfContentOwner
              (Just _vlVideoCategoryId)
              _vlId
              _vlPageToken
              (Just _vlMaxResults)
              _vlQuotaUser
              (Just _vlPrettyPrint)
              _vlUserIP
              _vlFields
              _vlKey
              _vlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy VideosListResource)
                      r
                      u
