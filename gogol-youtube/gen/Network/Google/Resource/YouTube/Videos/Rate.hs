{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Videos.Rate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a like or dislike rating to a video or remove a rating from a video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideosRate@.
module YouTube.Videos.Rate
    (
    -- * REST Resource
      VideosRateAPI

    -- * Creating a Request
    , videosRate
    , VideosRate

    -- * Request Lenses
    , vidQuotaUser
    , vidRating
    , vidPrettyPrint
    , vidUserIp
    , vidKey
    , vidId
    , vidOauthToken
    , vidFields
    , vidAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosRate@ which the
-- 'VideosRate' request conforms to.
type VideosRateAPI =
     "videos" :>
       "rate" :>
         QueryParam "rating" Text :>
           QueryParam "id" Text :> Post '[JSON] ()

-- | Add a like or dislike rating to a video or remove a rating from a video.
--
-- /See:/ 'videosRate' smart constructor.
data VideosRate = VideosRate
    { _vidQuotaUser   :: !(Maybe Text)
    , _vidRating      :: !Text
    , _vidPrettyPrint :: !Bool
    , _vidUserIp      :: !(Maybe Text)
    , _vidKey         :: !(Maybe Text)
    , _vidId          :: !Text
    , _vidOauthToken  :: !(Maybe Text)
    , _vidFields      :: !(Maybe Text)
    , _vidAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosRate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vidQuotaUser'
--
-- * 'vidRating'
--
-- * 'vidPrettyPrint'
--
-- * 'vidUserIp'
--
-- * 'vidKey'
--
-- * 'vidId'
--
-- * 'vidOauthToken'
--
-- * 'vidFields'
--
-- * 'vidAlt'
videosRate
    :: Text -- ^ 'rating'
    -> Text -- ^ 'id'
    -> VideosRate
videosRate pVidRating_ pVidId_ =
    VideosRate
    { _vidQuotaUser = Nothing
    , _vidRating = pVidRating_
    , _vidPrettyPrint = True
    , _vidUserIp = Nothing
    , _vidKey = Nothing
    , _vidId = pVidId_
    , _vidOauthToken = Nothing
    , _vidFields = Nothing
    , _vidAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vidQuotaUser :: Lens' VideosRate' (Maybe Text)
vidQuotaUser
  = lens _vidQuotaUser (\ s a -> s{_vidQuotaUser = a})

-- | Specifies the rating to record.
vidRating :: Lens' VideosRate' Text
vidRating
  = lens _vidRating (\ s a -> s{_vidRating = a})

-- | Returns response with indentations and line breaks.
vidPrettyPrint :: Lens' VideosRate' Bool
vidPrettyPrint
  = lens _vidPrettyPrint
      (\ s a -> s{_vidPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vidUserIp :: Lens' VideosRate' (Maybe Text)
vidUserIp
  = lens _vidUserIp (\ s a -> s{_vidUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vidKey :: Lens' VideosRate' (Maybe Text)
vidKey = lens _vidKey (\ s a -> s{_vidKey = a})

-- | The id parameter specifies the YouTube video ID of the video that is
-- being rated or having its rating removed.
vidId :: Lens' VideosRate' Text
vidId = lens _vidId (\ s a -> s{_vidId = a})

-- | OAuth 2.0 token for the current user.
vidOauthToken :: Lens' VideosRate' (Maybe Text)
vidOauthToken
  = lens _vidOauthToken
      (\ s a -> s{_vidOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vidFields :: Lens' VideosRate' (Maybe Text)
vidFields
  = lens _vidFields (\ s a -> s{_vidFields = a})

-- | Data format for the response.
vidAlt :: Lens' VideosRate' Text
vidAlt = lens _vidAlt (\ s a -> s{_vidAlt = a})

instance GoogleRequest VideosRate' where
        type Rs VideosRate' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosRate{..}
          = go _vidQuotaUser (Just _vidRating) _vidPrettyPrint
              _vidUserIp
              _vidKey
              (Just _vidId)
              _vidOauthToken
              _vidFields
              _vidAlt
          where go
                  = clientWithRoute (Proxy :: Proxy VideosRateAPI) r u
