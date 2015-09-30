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
-- Module      : Network.Google.Resource.YouTube.Videos.GetRating
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the ratings that the authorized user gave to a list of
-- specified videos.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideosGetRating@.
module Network.Google.Resource.YouTube.Videos.GetRating
    (
    -- * REST Resource
      VideosGetRatingResource

    -- * Creating a Request
    , videosGetRating'
    , VideosGetRating'

    -- * Request Lenses
    , vgrQuotaUser
    , vgrPrettyPrint
    , vgrUserIp
    , vgrOnBehalfOfContentOwner
    , vgrKey
    , vgrId
    , vgrOauthToken
    , vgrFields
    , vgrAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosGetRating@ which the
-- 'VideosGetRating'' request conforms to.
type VideosGetRatingResource =
     "videos" :>
       "getRating" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] VideoGetRatingResponse

-- | Retrieves the ratings that the authorized user gave to a list of
-- specified videos.
--
-- /See:/ 'videosGetRating'' smart constructor.
data VideosGetRating' = VideosGetRating'
    { _vgrQuotaUser              :: !(Maybe Text)
    , _vgrPrettyPrint            :: !Bool
    , _vgrUserIp                 :: !(Maybe Text)
    , _vgrOnBehalfOfContentOwner :: !(Maybe Text)
    , _vgrKey                    :: !(Maybe Text)
    , _vgrId                     :: !Text
    , _vgrOauthToken             :: !(Maybe Text)
    , _vgrFields                 :: !(Maybe Text)
    , _vgrAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosGetRating'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgrQuotaUser'
--
-- * 'vgrPrettyPrint'
--
-- * 'vgrUserIp'
--
-- * 'vgrOnBehalfOfContentOwner'
--
-- * 'vgrKey'
--
-- * 'vgrId'
--
-- * 'vgrOauthToken'
--
-- * 'vgrFields'
--
-- * 'vgrAlt'
videosGetRating'
    :: Text -- ^ 'id'
    -> VideosGetRating'
videosGetRating' pVgrId_ =
    VideosGetRating'
    { _vgrQuotaUser = Nothing
    , _vgrPrettyPrint = True
    , _vgrUserIp = Nothing
    , _vgrOnBehalfOfContentOwner = Nothing
    , _vgrKey = Nothing
    , _vgrId = pVgrId_
    , _vgrOauthToken = Nothing
    , _vgrFields = Nothing
    , _vgrAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vgrQuotaUser :: Lens' VideosGetRating' (Maybe Text)
vgrQuotaUser
  = lens _vgrQuotaUser (\ s a -> s{_vgrQuotaUser = a})

-- | Returns response with indentations and line breaks.
vgrPrettyPrint :: Lens' VideosGetRating' Bool
vgrPrettyPrint
  = lens _vgrPrettyPrint
      (\ s a -> s{_vgrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vgrUserIp :: Lens' VideosGetRating' (Maybe Text)
vgrUserIp
  = lens _vgrUserIp (\ s a -> s{_vgrUserIp = a})

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
vgrOnBehalfOfContentOwner :: Lens' VideosGetRating' (Maybe Text)
vgrOnBehalfOfContentOwner
  = lens _vgrOnBehalfOfContentOwner
      (\ s a -> s{_vgrOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vgrKey :: Lens' VideosGetRating' (Maybe Text)
vgrKey = lens _vgrKey (\ s a -> s{_vgrKey = a})

-- | The id parameter specifies a comma-separated list of the YouTube video
-- ID(s) for the resource(s) for which you are retrieving rating data. In a
-- video resource, the id property specifies the video\'s ID.
vgrId :: Lens' VideosGetRating' Text
vgrId = lens _vgrId (\ s a -> s{_vgrId = a})

-- | OAuth 2.0 token for the current user.
vgrOauthToken :: Lens' VideosGetRating' (Maybe Text)
vgrOauthToken
  = lens _vgrOauthToken
      (\ s a -> s{_vgrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vgrFields :: Lens' VideosGetRating' (Maybe Text)
vgrFields
  = lens _vgrFields (\ s a -> s{_vgrFields = a})

-- | Data format for the response.
vgrAlt :: Lens' VideosGetRating' Alt
vgrAlt = lens _vgrAlt (\ s a -> s{_vgrAlt = a})

instance GoogleRequest VideosGetRating' where
        type Rs VideosGetRating' = VideoGetRatingResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosGetRating'{..}
          = go _vgrQuotaUser (Just _vgrPrettyPrint) _vgrUserIp
              _vgrOnBehalfOfContentOwner
              _vgrKey
              (Just _vgrId)
              _vgrOauthToken
              _vgrFields
              (Just _vgrAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VideosGetRatingResource)
                      r
                      u
