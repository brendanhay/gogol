{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.LiveStreams.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a video stream.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveStreams.delete@.
module Network.Google.API.YouTube.LiveStreams.Delete
    (
    -- * REST Resource
      LiveStreamsDeleteAPI

    -- * Creating a Request
    , liveStreamsDelete'
    , LiveStreamsDelete'

    -- * Request Lenses
    , lsdQuotaUser
    , lsdPrettyPrint
    , lsdUserIp
    , lsdOnBehalfOfContentOwner
    , lsdKey
    , lsdOnBehalfOfContentOwnerChannel
    , lsdId
    , lsdOauthToken
    , lsdFields
    , lsdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.liveStreams.delete which the
-- 'LiveStreamsDelete'' request conforms to.
type LiveStreamsDeleteAPI =
     "liveStreams" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "key" Text :>
                 QueryParam "onBehalfOfContentOwnerChannel" Text :>
                   QueryParam "id" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a video stream.
--
-- /See:/ 'liveStreamsDelete'' smart constructor.
data LiveStreamsDelete' = LiveStreamsDelete'
    { _lsdQuotaUser                     :: !(Maybe Text)
    , _lsdPrettyPrint                   :: !Bool
    , _lsdUserIp                        :: !(Maybe Text)
    , _lsdOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lsdKey                           :: !(Maybe Text)
    , _lsdOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lsdId                            :: !Text
    , _lsdOauthToken                    :: !(Maybe Text)
    , _lsdFields                        :: !(Maybe Text)
    , _lsdAlt                           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsdQuotaUser'
--
-- * 'lsdPrettyPrint'
--
-- * 'lsdUserIp'
--
-- * 'lsdOnBehalfOfContentOwner'
--
-- * 'lsdKey'
--
-- * 'lsdOnBehalfOfContentOwnerChannel'
--
-- * 'lsdId'
--
-- * 'lsdOauthToken'
--
-- * 'lsdFields'
--
-- * 'lsdAlt'
liveStreamsDelete'
    :: Text -- ^ 'id'
    -> LiveStreamsDelete'
liveStreamsDelete' pLsdId_ =
    LiveStreamsDelete'
    { _lsdQuotaUser = Nothing
    , _lsdPrettyPrint = True
    , _lsdUserIp = Nothing
    , _lsdOnBehalfOfContentOwner = Nothing
    , _lsdKey = Nothing
    , _lsdOnBehalfOfContentOwnerChannel = Nothing
    , _lsdId = pLsdId_
    , _lsdOauthToken = Nothing
    , _lsdFields = Nothing
    , _lsdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lsdQuotaUser :: Lens' LiveStreamsDelete' (Maybe Text)
lsdQuotaUser
  = lens _lsdQuotaUser (\ s a -> s{_lsdQuotaUser = a})

-- | Returns response with indentations and line breaks.
lsdPrettyPrint :: Lens' LiveStreamsDelete' Bool
lsdPrettyPrint
  = lens _lsdPrettyPrint
      (\ s a -> s{_lsdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lsdUserIp :: Lens' LiveStreamsDelete' (Maybe Text)
lsdUserIp
  = lens _lsdUserIp (\ s a -> s{_lsdUserIp = a})

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
lsdOnBehalfOfContentOwner :: Lens' LiveStreamsDelete' (Maybe Text)
lsdOnBehalfOfContentOwner
  = lens _lsdOnBehalfOfContentOwner
      (\ s a -> s{_lsdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lsdKey :: Lens' LiveStreamsDelete' (Maybe Text)
lsdKey = lens _lsdKey (\ s a -> s{_lsdKey = a})

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
lsdOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsDelete' (Maybe Text)
lsdOnBehalfOfContentOwnerChannel
  = lens _lsdOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lsdOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the YouTube live stream ID for the resource
-- that is being deleted.
lsdId :: Lens' LiveStreamsDelete' Text
lsdId = lens _lsdId (\ s a -> s{_lsdId = a})

-- | OAuth 2.0 token for the current user.
lsdOauthToken :: Lens' LiveStreamsDelete' (Maybe Text)
lsdOauthToken
  = lens _lsdOauthToken
      (\ s a -> s{_lsdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lsdFields :: Lens' LiveStreamsDelete' (Maybe Text)
lsdFields
  = lens _lsdFields (\ s a -> s{_lsdFields = a})

-- | Data format for the response.
lsdAlt :: Lens' LiveStreamsDelete' Alt
lsdAlt = lens _lsdAlt (\ s a -> s{_lsdAlt = a})

instance GoogleRequest LiveStreamsDelete' where
        type Rs LiveStreamsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveStreamsDelete'{..}
          = go _lsdQuotaUser (Just _lsdPrettyPrint) _lsdUserIp
              _lsdOnBehalfOfContentOwner
              _lsdKey
              _lsdOnBehalfOfContentOwnerChannel
              (Just _lsdId)
              _lsdOauthToken
              _lsdFields
              (Just _lsdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveStreamsDeleteAPI)
                      r
                      u
