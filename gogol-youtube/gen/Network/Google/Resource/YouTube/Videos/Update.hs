{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Videos.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a video\'s metadata.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideosUpdate@.
module Network.Google.Resource.YouTube.Videos.Update
    (
    -- * REST Resource
      VideosUpdateResource

    -- * Creating a Request
    , videosUpdate'
    , VideosUpdate'

    -- * Request Lenses
    , vuQuotaUser
    , vuPart
    , vuPrettyPrint
    , vuUserIP
    , vuPayload
    , vuOnBehalfOfContentOwner
    , vuKey
    , vuOAuthToken
    , vuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosUpdate@ which the
-- 'VideosUpdate'' request conforms to.
type VideosUpdateResource =
     "videos" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Video :> Put '[JSON] Video

-- | Updates a video\'s metadata.
--
-- /See:/ 'videosUpdate'' smart constructor.
data VideosUpdate' = VideosUpdate'
    { _vuQuotaUser              :: !(Maybe Text)
    , _vuPart                   :: !Text
    , _vuPrettyPrint            :: !Bool
    , _vuUserIP                 :: !(Maybe Text)
    , _vuPayload                :: !Video
    , _vuOnBehalfOfContentOwner :: !(Maybe Text)
    , _vuKey                    :: !(Maybe Key)
    , _vuOAuthToken             :: !(Maybe OAuthToken)
    , _vuFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuQuotaUser'
--
-- * 'vuPart'
--
-- * 'vuPrettyPrint'
--
-- * 'vuUserIP'
--
-- * 'vuPayload'
--
-- * 'vuOnBehalfOfContentOwner'
--
-- * 'vuKey'
--
-- * 'vuOAuthToken'
--
-- * 'vuFields'
videosUpdate'
    :: Text -- ^ 'part'
    -> Video -- ^ 'payload'
    -> VideosUpdate'
videosUpdate' pVuPart_ pVuPayload_ =
    VideosUpdate'
    { _vuQuotaUser = Nothing
    , _vuPart = pVuPart_
    , _vuPrettyPrint = True
    , _vuUserIP = Nothing
    , _vuPayload = pVuPayload_
    , _vuOnBehalfOfContentOwner = Nothing
    , _vuKey = Nothing
    , _vuOAuthToken = Nothing
    , _vuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vuQuotaUser :: Lens' VideosUpdate' (Maybe Text)
vuQuotaUser
  = lens _vuQuotaUser (\ s a -> s{_vuQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Note that this method
-- will override the existing values for all of the mutable properties that
-- are contained in any parts that the parameter value specifies. For
-- example, a video\'s privacy setting is contained in the status part. As
-- such, if your request is updating a private video, and the request\'s
-- part parameter value includes the status part, the video\'s privacy
-- setting will be updated to whatever value the request body specifies. If
-- the request body does not specify a value, the existing privacy setting
-- will be removed and the video will revert to the default privacy
-- setting. In addition, not all parts contain properties that can be set
-- when inserting or updating a video. For example, the statistics object
-- encapsulates statistics that YouTube calculates for a video and does not
-- contain values that you can set or modify. If the parameter value
-- specifies a part that does not contain mutable values, that part will
-- still be included in the API response.
vuPart :: Lens' VideosUpdate' Text
vuPart = lens _vuPart (\ s a -> s{_vuPart = a})

-- | Returns response with indentations and line breaks.
vuPrettyPrint :: Lens' VideosUpdate' Bool
vuPrettyPrint
  = lens _vuPrettyPrint
      (\ s a -> s{_vuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vuUserIP :: Lens' VideosUpdate' (Maybe Text)
vuUserIP = lens _vuUserIP (\ s a -> s{_vuUserIP = a})

-- | Multipart request metadata.
vuPayload :: Lens' VideosUpdate' Video
vuPayload
  = lens _vuPayload (\ s a -> s{_vuPayload = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
vuOnBehalfOfContentOwner :: Lens' VideosUpdate' (Maybe Text)
vuOnBehalfOfContentOwner
  = lens _vuOnBehalfOfContentOwner
      (\ s a -> s{_vuOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vuKey :: Lens' VideosUpdate' (Maybe Key)
vuKey = lens _vuKey (\ s a -> s{_vuKey = a})

-- | OAuth 2.0 token for the current user.
vuOAuthToken :: Lens' VideosUpdate' (Maybe OAuthToken)
vuOAuthToken
  = lens _vuOAuthToken (\ s a -> s{_vuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vuFields :: Lens' VideosUpdate' (Maybe Text)
vuFields = lens _vuFields (\ s a -> s{_vuFields = a})

instance GoogleAuth VideosUpdate' where
        authKey = vuKey . _Just
        authToken = vuOAuthToken . _Just

instance GoogleRequest VideosUpdate' where
        type Rs VideosUpdate' = Video
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosUpdate'{..}
          = go (Just _vuPart) _vuOnBehalfOfContentOwner
              _vuQuotaUser
              (Just _vuPrettyPrint)
              _vuUserIP
              _vuFields
              _vuKey
              _vuOAuthToken
              (Just AltJSON)
              _vuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VideosUpdateResource)
                      r
                      u
