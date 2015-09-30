{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Thumbnails.Set
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a custom video thumbnail to YouTube and sets it for a video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeThumbnailsSet@.
module YouTube.Thumbnails.Set
    (
    -- * REST Resource
      ThumbnailsSetAPI

    -- * Creating a Request
    , thumbnailsSet
    , ThumbnailsSet

    -- * Request Lenses
    , tsQuotaUser
    , tsPrettyPrint
    , tsUserIp
    , tsOnBehalfOfContentOwner
    , tsVideoId
    , tsKey
    , tsOauthToken
    , tsFields
    , tsAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeThumbnailsSet@ which the
-- 'ThumbnailsSet' request conforms to.
type ThumbnailsSetAPI =
     "thumbnails" :>
       "set" :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "videoId" Text :>
             Post '[JSON] ThumbnailSetResponse

-- | Uploads a custom video thumbnail to YouTube and sets it for a video.
--
-- /See:/ 'thumbnailsSet' smart constructor.
data ThumbnailsSet = ThumbnailsSet
    { _tsQuotaUser              :: !(Maybe Text)
    , _tsPrettyPrint            :: !Bool
    , _tsUserIp                 :: !(Maybe Text)
    , _tsOnBehalfOfContentOwner :: !(Maybe Text)
    , _tsVideoId                :: !Text
    , _tsKey                    :: !(Maybe Text)
    , _tsOauthToken             :: !(Maybe Text)
    , _tsFields                 :: !(Maybe Text)
    , _tsAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThumbnailsSet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsQuotaUser'
--
-- * 'tsPrettyPrint'
--
-- * 'tsUserIp'
--
-- * 'tsOnBehalfOfContentOwner'
--
-- * 'tsVideoId'
--
-- * 'tsKey'
--
-- * 'tsOauthToken'
--
-- * 'tsFields'
--
-- * 'tsAlt'
thumbnailsSet
    :: Text -- ^ 'videoId'
    -> ThumbnailsSet
thumbnailsSet pTsVideoId_ =
    ThumbnailsSet
    { _tsQuotaUser = Nothing
    , _tsPrettyPrint = True
    , _tsUserIp = Nothing
    , _tsOnBehalfOfContentOwner = Nothing
    , _tsVideoId = pTsVideoId_
    , _tsKey = Nothing
    , _tsOauthToken = Nothing
    , _tsFields = Nothing
    , _tsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tsQuotaUser :: Lens' ThumbnailsSet' (Maybe Text)
tsQuotaUser
  = lens _tsQuotaUser (\ s a -> s{_tsQuotaUser = a})

-- | Returns response with indentations and line breaks.
tsPrettyPrint :: Lens' ThumbnailsSet' Bool
tsPrettyPrint
  = lens _tsPrettyPrint
      (\ s a -> s{_tsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tsUserIp :: Lens' ThumbnailsSet' (Maybe Text)
tsUserIp = lens _tsUserIp (\ s a -> s{_tsUserIp = a})

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
tsOnBehalfOfContentOwner :: Lens' ThumbnailsSet' (Maybe Text)
tsOnBehalfOfContentOwner
  = lens _tsOnBehalfOfContentOwner
      (\ s a -> s{_tsOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies a YouTube video ID for which the custom
-- video thumbnail is being provided.
tsVideoId :: Lens' ThumbnailsSet' Text
tsVideoId
  = lens _tsVideoId (\ s a -> s{_tsVideoId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tsKey :: Lens' ThumbnailsSet' (Maybe Text)
tsKey = lens _tsKey (\ s a -> s{_tsKey = a})

-- | OAuth 2.0 token for the current user.
tsOauthToken :: Lens' ThumbnailsSet' (Maybe Text)
tsOauthToken
  = lens _tsOauthToken (\ s a -> s{_tsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tsFields :: Lens' ThumbnailsSet' (Maybe Text)
tsFields = lens _tsFields (\ s a -> s{_tsFields = a})

-- | Data format for the response.
tsAlt :: Lens' ThumbnailsSet' Text
tsAlt = lens _tsAlt (\ s a -> s{_tsAlt = a})

instance GoogleRequest ThumbnailsSet' where
        type Rs ThumbnailsSet' = ThumbnailSetResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ThumbnailsSet{..}
          = go _tsQuotaUser _tsPrettyPrint _tsUserIp
              _tsOnBehalfOfContentOwner
              (Just _tsVideoId)
              _tsKey
              _tsOauthToken
              _tsFields
              _tsAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ThumbnailsSetAPI) r
                      u
