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
module Network.Google.Resource.YouTube.Videos.Rate
    (
    -- * REST Resource
      VideosRateResource

    -- * Creating a Request
    , videosRate'
    , VideosRate'

    -- * Request Lenses
    , vrQuotaUser
    , vrRating
    , vrPrettyPrint
    , vrUserIP
    , vrKey
    , vrId
    , vrOAuthToken
    , vrFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosRate@ which the
-- 'VideosRate'' request conforms to.
type VideosRateResource =
     "videos" :>
       "rate" :>
         QueryParam "id" Text :>
           QueryParam "rating" VideosRateRating :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Add a like or dislike rating to a video or remove a rating from a video.
--
-- /See:/ 'videosRate'' smart constructor.
data VideosRate' = VideosRate'
    { _vrQuotaUser   :: !(Maybe Text)
    , _vrRating      :: !VideosRateRating
    , _vrPrettyPrint :: !Bool
    , _vrUserIP      :: !(Maybe Text)
    , _vrKey         :: !(Maybe AuthKey)
    , _vrId          :: !Text
    , _vrOAuthToken  :: !(Maybe OAuthToken)
    , _vrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'vrUserIP'
--
-- * 'vrKey'
--
-- * 'vrId'
--
-- * 'vrOAuthToken'
--
-- * 'vrFields'
videosRate'
    :: VideosRateRating -- ^ 'rating'
    -> Text -- ^ 'id'
    -> VideosRate'
videosRate' pVrRating_ pVrId_ =
    VideosRate'
    { _vrQuotaUser = Nothing
    , _vrRating = pVrRating_
    , _vrPrettyPrint = True
    , _vrUserIP = Nothing
    , _vrKey = Nothing
    , _vrId = pVrId_
    , _vrOAuthToken = Nothing
    , _vrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vrQuotaUser :: Lens' VideosRate' (Maybe Text)
vrQuotaUser
  = lens _vrQuotaUser (\ s a -> s{_vrQuotaUser = a})

-- | Specifies the rating to record.
vrRating :: Lens' VideosRate' VideosRateRating
vrRating = lens _vrRating (\ s a -> s{_vrRating = a})

-- | Returns response with indentations and line breaks.
vrPrettyPrint :: Lens' VideosRate' Bool
vrPrettyPrint
  = lens _vrPrettyPrint
      (\ s a -> s{_vrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vrUserIP :: Lens' VideosRate' (Maybe Text)
vrUserIP = lens _vrUserIP (\ s a -> s{_vrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vrKey :: Lens' VideosRate' (Maybe AuthKey)
vrKey = lens _vrKey (\ s a -> s{_vrKey = a})

-- | The id parameter specifies the YouTube video ID of the video that is
-- being rated or having its rating removed.
vrId :: Lens' VideosRate' Text
vrId = lens _vrId (\ s a -> s{_vrId = a})

-- | OAuth 2.0 token for the current user.
vrOAuthToken :: Lens' VideosRate' (Maybe OAuthToken)
vrOAuthToken
  = lens _vrOAuthToken (\ s a -> s{_vrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vrFields :: Lens' VideosRate' (Maybe Text)
vrFields = lens _vrFields (\ s a -> s{_vrFields = a})

instance GoogleAuth VideosRate' where
        authKey = vrKey . _Just
        authToken = vrOAuthToken . _Just

instance GoogleRequest VideosRate' where
        type Rs VideosRate' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosRate'{..}
          = go (Just _vrId) (Just _vrRating) _vrQuotaUser
              (Just _vrPrettyPrint)
              _vrUserIP
              _vrFields
              _vrKey
              _vrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy VideosRateResource)
                      r
                      u
