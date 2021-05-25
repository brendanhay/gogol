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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Transition
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transition a broadcast to a given status.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveBroadcasts.transition@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Transition
    (
    -- * REST Resource
      LiveBroadcastsTransitionResource

    -- * Creating a Request
    , liveBroadcastsTransition
    , LiveBroadcastsTransition

    -- * Request Lenses
    , lbtXgafv
    , lbtPart
    , lbtUploadProtocol
    , lbtAccessToken
    , lbtUploadType
    , lbtBroadcastStatus
    , lbtOnBehalfOfContentOwner
    , lbtOnBehalfOfContentOwnerChannel
    , lbtId
    , lbtCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.transition@ method which the
-- 'LiveBroadcastsTransition' request conforms to.
type LiveBroadcastsTransitionResource =
     "youtube" :>
       "v3" :>
         "liveBroadcasts" :>
           "transition" :>
             QueryParam "broadcastStatus"
               LiveBroadcastsTransitionBroadcastStatus
               :>
               QueryParam "id" Text :>
                 QueryParams "part" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "onBehalfOfContentOwnerChannel" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON] LiveBroadcast

-- | Transition a broadcast to a given status.
--
-- /See:/ 'liveBroadcastsTransition' smart constructor.
data LiveBroadcastsTransition =
  LiveBroadcastsTransition'
    { _lbtXgafv :: !(Maybe Xgafv)
    , _lbtPart :: ![Text]
    , _lbtUploadProtocol :: !(Maybe Text)
    , _lbtAccessToken :: !(Maybe Text)
    , _lbtUploadType :: !(Maybe Text)
    , _lbtBroadcastStatus :: !LiveBroadcastsTransitionBroadcastStatus
    , _lbtOnBehalfOfContentOwner :: !(Maybe Text)
    , _lbtOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbtId :: !Text
    , _lbtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveBroadcastsTransition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtXgafv'
--
-- * 'lbtPart'
--
-- * 'lbtUploadProtocol'
--
-- * 'lbtAccessToken'
--
-- * 'lbtUploadType'
--
-- * 'lbtBroadcastStatus'
--
-- * 'lbtOnBehalfOfContentOwner'
--
-- * 'lbtOnBehalfOfContentOwnerChannel'
--
-- * 'lbtId'
--
-- * 'lbtCallback'
liveBroadcastsTransition
    :: [Text] -- ^ 'lbtPart'
    -> LiveBroadcastsTransitionBroadcastStatus -- ^ 'lbtBroadcastStatus'
    -> Text -- ^ 'lbtId'
    -> LiveBroadcastsTransition
liveBroadcastsTransition pLbtPart_ pLbtBroadcastStatus_ pLbtId_ =
  LiveBroadcastsTransition'
    { _lbtXgafv = Nothing
    , _lbtPart = _Coerce # pLbtPart_
    , _lbtUploadProtocol = Nothing
    , _lbtAccessToken = Nothing
    , _lbtUploadType = Nothing
    , _lbtBroadcastStatus = pLbtBroadcastStatus_
    , _lbtOnBehalfOfContentOwner = Nothing
    , _lbtOnBehalfOfContentOwnerChannel = Nothing
    , _lbtId = pLbtId_
    , _lbtCallback = Nothing
    }


-- | V1 error format.
lbtXgafv :: Lens' LiveBroadcastsTransition (Maybe Xgafv)
lbtXgafv = lens _lbtXgafv (\ s a -> s{_lbtXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lbtPart :: Lens' LiveBroadcastsTransition [Text]
lbtPart
  = lens _lbtPart (\ s a -> s{_lbtPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbtUploadProtocol :: Lens' LiveBroadcastsTransition (Maybe Text)
lbtUploadProtocol
  = lens _lbtUploadProtocol
      (\ s a -> s{_lbtUploadProtocol = a})

-- | OAuth access token.
lbtAccessToken :: Lens' LiveBroadcastsTransition (Maybe Text)
lbtAccessToken
  = lens _lbtAccessToken
      (\ s a -> s{_lbtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbtUploadType :: Lens' LiveBroadcastsTransition (Maybe Text)
lbtUploadType
  = lens _lbtUploadType
      (\ s a -> s{_lbtUploadType = a})

-- | The status to which the broadcast is going to transition.
lbtBroadcastStatus :: Lens' LiveBroadcastsTransition LiveBroadcastsTransitionBroadcastStatus
lbtBroadcastStatus
  = lens _lbtBroadcastStatus
      (\ s a -> s{_lbtBroadcastStatus = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
lbtOnBehalfOfContentOwner :: Lens' LiveBroadcastsTransition (Maybe Text)
lbtOnBehalfOfContentOwner
  = lens _lbtOnBehalfOfContentOwner
      (\ s a -> s{_lbtOnBehalfOfContentOwner = a})

-- | This parameter can only be used in a properly authorized request.
-- *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwnerChannel* parameter specifies the
-- YouTube channel ID of the channel to which a video is being added. This
-- parameter is required when a request specifies a value for the
-- onBehalfOfContentOwner parameter, and it can only be used in conjunction
-- with that parameter. In addition, the request must be authorized using a
-- CMS account that is linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. Finally, the channel that
-- the onBehalfOfContentOwnerChannel parameter value specifies must be
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. This parameter is intended for YouTube content partners that
-- own and manage many different YouTube channels. It allows content owners
-- to authenticate once and perform actions on behalf of the channel
-- specified in the parameter value, without having to provide
-- authentication credentials for each separate channel.
lbtOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsTransition (Maybe Text)
lbtOnBehalfOfContentOwnerChannel
  = lens _lbtOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbtOnBehalfOfContentOwnerChannel = a})

-- | Broadcast to transition.
lbtId :: Lens' LiveBroadcastsTransition Text
lbtId = lens _lbtId (\ s a -> s{_lbtId = a})

-- | JSONP
lbtCallback :: Lens' LiveBroadcastsTransition (Maybe Text)
lbtCallback
  = lens _lbtCallback (\ s a -> s{_lbtCallback = a})

instance GoogleRequest LiveBroadcastsTransition where
        type Rs LiveBroadcastsTransition = LiveBroadcast
        type Scopes LiveBroadcastsTransition =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveBroadcastsTransition'{..}
          = go (Just _lbtBroadcastStatus) (Just _lbtId)
              _lbtPart
              _lbtXgafv
              _lbtUploadProtocol
              _lbtAccessToken
              _lbtUploadType
              _lbtOnBehalfOfContentOwner
              _lbtOnBehalfOfContentOwnerChannel
              _lbtCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveBroadcastsTransitionResource)
                      mempty
