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
module Network.Google.Resource.YouTube.LiveStreams.Insert
    (
    -- * REST Resource
      LiveStreamsInsertResource

    -- * Creating a Request
    , liveStreamsInsert'
    , LiveStreamsInsert'

    -- * Request Lenses
    , lsiQuotaUser
    , lsiPart
    , lsiPrettyPrint
    , lsiUserIP
    , lsiPayload
    , lsiOnBehalfOfContentOwner
    , lsiKey
    , lsiOnBehalfOfContentOwnerChannel
    , lsiOAuthToken
    , lsiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveStreamsInsert@ method which the
-- 'LiveStreamsInsert'' request conforms to.
type LiveStreamsInsertResource =
     "liveStreams" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "onBehalfOfContentOwnerChannel" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LiveStream :> Post '[JSON] LiveStream

-- | Creates a video stream. The stream enables you to send your video to
-- YouTube, which can then broadcast the video to your audience.
--
-- /See:/ 'liveStreamsInsert'' smart constructor.
data LiveStreamsInsert' = LiveStreamsInsert'
    { _lsiQuotaUser                     :: !(Maybe Text)
    , _lsiPart                          :: !Text
    , _lsiPrettyPrint                   :: !Bool
    , _lsiUserIP                        :: !(Maybe Text)
    , _lsiPayload                       :: !LiveStream
    , _lsiOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lsiKey                           :: !(Maybe AuthKey)
    , _lsiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lsiOAuthToken                    :: !(Maybe OAuthToken)
    , _lsiFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'lsiUserIP'
--
-- * 'lsiPayload'
--
-- * 'lsiOnBehalfOfContentOwner'
--
-- * 'lsiKey'
--
-- * 'lsiOnBehalfOfContentOwnerChannel'
--
-- * 'lsiOAuthToken'
--
-- * 'lsiFields'
liveStreamsInsert'
    :: Text -- ^ 'part'
    -> LiveStream -- ^ 'payload'
    -> LiveStreamsInsert'
liveStreamsInsert' pLsiPart_ pLsiPayload_ =
    LiveStreamsInsert'
    { _lsiQuotaUser = Nothing
    , _lsiPart = pLsiPart_
    , _lsiPrettyPrint = True
    , _lsiUserIP = Nothing
    , _lsiPayload = pLsiPayload_
    , _lsiOnBehalfOfContentOwner = Nothing
    , _lsiKey = Nothing
    , _lsiOnBehalfOfContentOwnerChannel = Nothing
    , _lsiOAuthToken = Nothing
    , _lsiFields = Nothing
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
lsiUserIP :: Lens' LiveStreamsInsert' (Maybe Text)
lsiUserIP
  = lens _lsiUserIP (\ s a -> s{_lsiUserIP = a})

-- | Multipart request metadata.
lsiPayload :: Lens' LiveStreamsInsert' LiveStream
lsiPayload
  = lens _lsiPayload (\ s a -> s{_lsiPayload = a})

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
lsiKey :: Lens' LiveStreamsInsert' (Maybe AuthKey)
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
lsiOAuthToken :: Lens' LiveStreamsInsert' (Maybe OAuthToken)
lsiOAuthToken
  = lens _lsiOAuthToken
      (\ s a -> s{_lsiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lsiFields :: Lens' LiveStreamsInsert' (Maybe Text)
lsiFields
  = lens _lsiFields (\ s a -> s{_lsiFields = a})

instance GoogleAuth LiveStreamsInsert' where
        _AuthKey = lsiKey . _Just
        _AuthToken = lsiOAuthToken . _Just

instance GoogleRequest LiveStreamsInsert' where
        type Rs LiveStreamsInsert' = LiveStream
        request = requestWith youTubeRequest
        requestWith rq LiveStreamsInsert'{..}
          = go (Just _lsiPart) _lsiOnBehalfOfContentOwner
              _lsiOnBehalfOfContentOwnerChannel
              _lsiQuotaUser
              (Just _lsiPrettyPrint)
              _lsiUserIP
              _lsiFields
              _lsiKey
              _lsiOAuthToken
              (Just AltJSON)
              _lsiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy LiveStreamsInsertResource)
                      rq
