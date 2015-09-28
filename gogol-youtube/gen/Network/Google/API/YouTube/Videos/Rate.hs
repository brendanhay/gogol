{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Videos.Rate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a like or dislike rating to a video or remove a rating from a video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.videos.rate@.
module Network.Google.API.YouTube.Videos.Rate
    (
    -- * REST Resource
      VideosRateAPI

    -- * Creating a Request
    , videosRate'
    , VideosRate'

    -- * Request Lenses
    , vrQuotaUser
    , vrRating
    , vrPrettyPrint
    , vrUserIp
    , vrKey
    , vrId
    , vrOauthToken
    , vrFields
    , vrAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.videos.rate which the
-- 'VideosRate'' request conforms to.
type VideosRateAPI =
     "videos" :>
       "rate" :>
         QueryParam "quotaUser" Text :>
           QueryParam "rating" VideosRate'Rating :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] ()

-- | Add a like or dislike rating to a video or remove a rating from a video.
--
-- /See:/ 'videosRate'' smart constructor.
data VideosRate' = VideosRate'
    { _vrQuotaUser   :: !(Maybe Text)
    , _vrRating      :: !VideosRate'Rating
    , _vrPrettyPrint :: !Bool
    , _vrUserIp      :: !(Maybe Text)
    , _vrKey         :: !(Maybe Text)
    , _vrId          :: !Text
    , _vrOauthToken  :: !(Maybe Text)
    , _vrFields      :: !(Maybe Text)
    , _vrAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosRate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrQuotaUser'
--
-- * 'vrRating'
--
-- * 'vrPrettyPrint'
--
-- * 'vrUserIp'
--
-- * 'vrKey'
--
-- * 'vrId'
--
-- * 'vrOauthToken'
--
-- * 'vrFields'
--
-- * 'vrAlt'
videosRate'
    :: VideosRate'Rating -- ^ 'rating'
    -> Text -- ^ 'id'
    -> VideosRate'
videosRate' pVrRating_ pVrId_ =
    VideosRate'
    { _vrQuotaUser = Nothing
    , _vrRating = pVrRating_
    , _vrPrettyPrint = True
    , _vrUserIp = Nothing
    , _vrKey = Nothing
    , _vrId = pVrId_
    , _vrOauthToken = Nothing
    , _vrFields = Nothing
    , _vrAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vrQuotaUser :: Lens' VideosRate' (Maybe Text)
vrQuotaUser
  = lens _vrQuotaUser (\ s a -> s{_vrQuotaUser = a})

-- | Specifies the rating to record.
vrRating :: Lens' VideosRate' VideosRate'Rating
vrRating = lens _vrRating (\ s a -> s{_vrRating = a})

-- | Returns response with indentations and line breaks.
vrPrettyPrint :: Lens' VideosRate' Bool
vrPrettyPrint
  = lens _vrPrettyPrint
      (\ s a -> s{_vrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vrUserIp :: Lens' VideosRate' (Maybe Text)
vrUserIp = lens _vrUserIp (\ s a -> s{_vrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vrKey :: Lens' VideosRate' (Maybe Text)
vrKey = lens _vrKey (\ s a -> s{_vrKey = a})

-- | The id parameter specifies the YouTube video ID of the video that is
-- being rated or having its rating removed.
vrId :: Lens' VideosRate' Text
vrId = lens _vrId (\ s a -> s{_vrId = a})

-- | OAuth 2.0 token for the current user.
vrOauthToken :: Lens' VideosRate' (Maybe Text)
vrOauthToken
  = lens _vrOauthToken (\ s a -> s{_vrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vrFields :: Lens' VideosRate' (Maybe Text)
vrFields = lens _vrFields (\ s a -> s{_vrFields = a})

-- | Data format for the response.
vrAlt :: Lens' VideosRate' Alt
vrAlt = lens _vrAlt (\ s a -> s{_vrAlt = a})

instance GoogleRequest VideosRate' where
        type Rs VideosRate' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosRate'{..}
          = go _vrQuotaUser (Just _vrRating)
              (Just _vrPrettyPrint)
              _vrUserIp
              _vrKey
              (Just _vrId)
              _vrOauthToken
              _vrFields
              (Just _vrAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy VideosRateAPI) r u
