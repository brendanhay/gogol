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
    , vgrUserIP
    , vgrOnBehalfOfContentOwner
    , vgrKey
    , vgrId
    , vgrOAuthToken
    , vgrFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosGetRating@ which the
-- 'VideosGetRating'' request conforms to.
type VideosGetRatingResource =
     "videos" :>
       "getRating" :>
         QueryParam "id" Text :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] VideoGetRatingResponse

-- | Retrieves the ratings that the authorized user gave to a list of
-- specified videos.
--
-- /See:/ 'videosGetRating'' smart constructor.
data VideosGetRating' = VideosGetRating'
    { _vgrQuotaUser              :: !(Maybe Text)
    , _vgrPrettyPrint            :: !Bool
    , _vgrUserIP                 :: !(Maybe Text)
    , _vgrOnBehalfOfContentOwner :: !(Maybe Text)
    , _vgrKey                    :: !(Maybe AuthKey)
    , _vgrId                     :: !Text
    , _vgrOAuthToken             :: !(Maybe OAuthToken)
    , _vgrFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosGetRating'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgrQuotaUser'
--
-- * 'vgrPrettyPrint'
--
-- * 'vgrUserIP'
--
-- * 'vgrOnBehalfOfContentOwner'
--
-- * 'vgrKey'
--
-- * 'vgrId'
--
-- * 'vgrOAuthToken'
--
-- * 'vgrFields'
videosGetRating'
    :: Text -- ^ 'id'
    -> VideosGetRating'
videosGetRating' pVgrId_ =
    VideosGetRating'
    { _vgrQuotaUser = Nothing
    , _vgrPrettyPrint = True
    , _vgrUserIP = Nothing
    , _vgrOnBehalfOfContentOwner = Nothing
    , _vgrKey = Nothing
    , _vgrId = pVgrId_
    , _vgrOAuthToken = Nothing
    , _vgrFields = Nothing
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
vgrUserIP :: Lens' VideosGetRating' (Maybe Text)
vgrUserIP
  = lens _vgrUserIP (\ s a -> s{_vgrUserIP = a})

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
vgrKey :: Lens' VideosGetRating' (Maybe AuthKey)
vgrKey = lens _vgrKey (\ s a -> s{_vgrKey = a})

-- | The id parameter specifies a comma-separated list of the YouTube video
-- ID(s) for the resource(s) for which you are retrieving rating data. In a
-- video resource, the id property specifies the video\'s ID.
vgrId :: Lens' VideosGetRating' Text
vgrId = lens _vgrId (\ s a -> s{_vgrId = a})

-- | OAuth 2.0 token for the current user.
vgrOAuthToken :: Lens' VideosGetRating' (Maybe OAuthToken)
vgrOAuthToken
  = lens _vgrOAuthToken
      (\ s a -> s{_vgrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vgrFields :: Lens' VideosGetRating' (Maybe Text)
vgrFields
  = lens _vgrFields (\ s a -> s{_vgrFields = a})

instance GoogleAuth VideosGetRating' where
        authKey = vgrKey . _Just
        authToken = vgrOAuthToken . _Just

instance GoogleRequest VideosGetRating' where
        type Rs VideosGetRating' = VideoGetRatingResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosGetRating'{..}
          = go (Just _vgrId) _vgrOnBehalfOfContentOwner
              _vgrQuotaUser
              (Just _vgrPrettyPrint)
              _vgrUserIP
              _vgrFields
              _vgrKey
              _vgrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VideosGetRatingResource)
                      r
                      u
