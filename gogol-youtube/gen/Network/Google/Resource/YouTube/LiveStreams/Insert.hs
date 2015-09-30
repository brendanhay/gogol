{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.LiveStreams.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a video stream. The stream enables you to send your video to
-- YouTube, which can then broadcast the video to your audience.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveStreamsInsert@.
module YouTube.LiveStreams.Insert
    (
    -- * REST Resource
      LiveStreamsInsertAPI

    -- * Creating a Request
    , liveStreamsInsert
    , LiveStreamsInsert

    -- * Request Lenses
    , lsiQuotaUser
    , lsiPart
    , lsiPrettyPrint
    , lsiUserIp
    , lsiOnBehalfOfContentOwner
    , lsiKey
    , lsiOnBehalfOfContentOwnerChannel
    , lsiOauthToken
    , lsiFields
    , lsiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveStreamsInsert@ which the
-- 'LiveStreamsInsert' request conforms to.
type LiveStreamsInsertAPI =
     "liveStreams" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "onBehalfOfContentOwnerChannel" Text :>
             Post '[JSON] LiveStream

-- | Creates a video stream. The stream enables you to send your video to
-- YouTube, which can then broadcast the video to your audience.
--
-- /See:/ 'liveStreamsInsert' smart constructor.
data LiveStreamsInsert = LiveStreamsInsert
    { _lsiQuotaUser                     :: !(Maybe Text)
    , _lsiPart                          :: !Text
    , _lsiPrettyPrint                   :: !Bool
    , _lsiUserIp                        :: !(Maybe Text)
    , _lsiOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lsiKey                           :: !(Maybe Text)
    , _lsiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lsiOauthToken                    :: !(Maybe Text)
    , _lsiFields                        :: !(Maybe Text)
    , _lsiAlt                           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsiQuotaUser'
--
-- * 'lsiPart'
--
-- * 'lsiPrettyPrint'
--
-- * 'lsiUserIp'
--
-- * 'lsiOnBehalfOfContentOwner'
--
-- * 'lsiKey'
--
-- * 'lsiOnBehalfOfContentOwnerChannel'
--
-- * 'lsiOauthToken'
--
-- * 'lsiFields'
--
-- * 'lsiAlt'
liveStreamsInsert
    :: Text -- ^ 'part'
    -> LiveStreamsInsert
liveStreamsInsert pLsiPart_ =
    LiveStreamsInsert
    { _lsiQuotaUser = Nothing
    , _lsiPart = pLsiPart_
    , _lsiPrettyPrint = True
    , _lsiUserIp = Nothing
    , _lsiOnBehalfOfContentOwner = Nothing
    , _lsiKey = Nothing
    , _lsiOnBehalfOfContentOwnerChannel = Nothing
    , _lsiOauthToken = Nothing
    , _lsiFields = Nothing
    , _lsiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lsiQuotaUser :: Lens' LiveStreamsInsert' (Maybe Text)
lsiQuotaUser
  = lens _lsiQuotaUser (\ s a -> s{_lsiQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part properties that
-- you can include in the parameter value are id, snippet, cdn, and status.
lsiPart :: Lens' LiveStreamsInsert' Text
lsiPart = lens _lsiPart (\ s a -> s{_lsiPart = a})

-- | Returns response with indentations and line breaks.
lsiPrettyPrint :: Lens' LiveStreamsInsert' Bool
lsiPrettyPrint
  = lens _lsiPrettyPrint
      (\ s a -> s{_lsiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lsiUserIp :: Lens' LiveStreamsInsert' (Maybe Text)
lsiUserIp
  = lens _lsiUserIp (\ s a -> s{_lsiUserIp = a})

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
lsiOnBehalfOfContentOwner :: Lens' LiveStreamsInsert' (Maybe Text)
lsiOnBehalfOfContentOwner
  = lens _lsiOnBehalfOfContentOwner
      (\ s a -> s{_lsiOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lsiKey :: Lens' LiveStreamsInsert' (Maybe Text)
lsiKey = lens _lsiKey (\ s a -> s{_lsiKey = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
lsiOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsInsert' (Maybe Text)
lsiOnBehalfOfContentOwnerChannel
  = lens _lsiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lsiOnBehalfOfContentOwnerChannel = a})

-- | OAuth 2.0 token for the current user.
lsiOauthToken :: Lens' LiveStreamsInsert' (Maybe Text)
lsiOauthToken
  = lens _lsiOauthToken
      (\ s a -> s{_lsiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lsiFields :: Lens' LiveStreamsInsert' (Maybe Text)
lsiFields
  = lens _lsiFields (\ s a -> s{_lsiFields = a})

-- | Data format for the response.
lsiAlt :: Lens' LiveStreamsInsert' Text
lsiAlt = lens _lsiAlt (\ s a -> s{_lsiAlt = a})

instance GoogleRequest LiveStreamsInsert' where
        type Rs LiveStreamsInsert' = LiveStream
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveStreamsInsert{..}
          = go _lsiQuotaUser (Just _lsiPart) _lsiPrettyPrint
              _lsiUserIp
              _lsiOnBehalfOfContentOwner
              _lsiKey
              _lsiOnBehalfOfContentOwnerChannel
              _lsiOauthToken
              _lsiFields
              _lsiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveStreamsInsertAPI)
                      r
                      u
