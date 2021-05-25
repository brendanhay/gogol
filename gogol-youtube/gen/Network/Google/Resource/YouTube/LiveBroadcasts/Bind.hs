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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Bind
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Bind a broadcast to a stream.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveBroadcasts.bind@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Bind
    (
    -- * REST Resource
      LiveBroadcastsBindResource

    -- * Creating a Request
    , liveBroadcastsBind
    , LiveBroadcastsBind

    -- * Request Lenses
    , lbbXgafv
    , lbbPart
    , lbbUploadProtocol
    , lbbAccessToken
    , lbbUploadType
    , lbbOnBehalfOfContentOwner
    , lbbOnBehalfOfContentOwnerChannel
    , lbbId
    , lbbStreamId
    , lbbCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.bind@ method which the
-- 'LiveBroadcastsBind' request conforms to.
type LiveBroadcastsBindResource =
     "youtube" :>
       "v3" :>
         "liveBroadcasts" :>
           "bind" :>
             QueryParam "id" Text :>
               QueryParams "part" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "onBehalfOfContentOwner" Text :>
                           QueryParam "onBehalfOfContentOwnerChannel" Text :>
                             QueryParam "streamId" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON] LiveBroadcast

-- | Bind a broadcast to a stream.
--
-- /See:/ 'liveBroadcastsBind' smart constructor.
data LiveBroadcastsBind =
  LiveBroadcastsBind'
    { _lbbXgafv :: !(Maybe Xgafv)
    , _lbbPart :: ![Text]
    , _lbbUploadProtocol :: !(Maybe Text)
    , _lbbAccessToken :: !(Maybe Text)
    , _lbbUploadType :: !(Maybe Text)
    , _lbbOnBehalfOfContentOwner :: !(Maybe Text)
    , _lbbOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbbId :: !Text
    , _lbbStreamId :: !(Maybe Text)
    , _lbbCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveBroadcastsBind' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbbXgafv'
--
-- * 'lbbPart'
--
-- * 'lbbUploadProtocol'
--
-- * 'lbbAccessToken'
--
-- * 'lbbUploadType'
--
-- * 'lbbOnBehalfOfContentOwner'
--
-- * 'lbbOnBehalfOfContentOwnerChannel'
--
-- * 'lbbId'
--
-- * 'lbbStreamId'
--
-- * 'lbbCallback'
liveBroadcastsBind
    :: [Text] -- ^ 'lbbPart'
    -> Text -- ^ 'lbbId'
    -> LiveBroadcastsBind
liveBroadcastsBind pLbbPart_ pLbbId_ =
  LiveBroadcastsBind'
    { _lbbXgafv = Nothing
    , _lbbPart = _Coerce # pLbbPart_
    , _lbbUploadProtocol = Nothing
    , _lbbAccessToken = Nothing
    , _lbbUploadType = Nothing
    , _lbbOnBehalfOfContentOwner = Nothing
    , _lbbOnBehalfOfContentOwnerChannel = Nothing
    , _lbbId = pLbbId_
    , _lbbStreamId = Nothing
    , _lbbCallback = Nothing
    }


-- | V1 error format.
lbbXgafv :: Lens' LiveBroadcastsBind (Maybe Xgafv)
lbbXgafv = lens _lbbXgafv (\ s a -> s{_lbbXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lbbPart :: Lens' LiveBroadcastsBind [Text]
lbbPart
  = lens _lbbPart (\ s a -> s{_lbbPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbbUploadProtocol :: Lens' LiveBroadcastsBind (Maybe Text)
lbbUploadProtocol
  = lens _lbbUploadProtocol
      (\ s a -> s{_lbbUploadProtocol = a})

-- | OAuth access token.
lbbAccessToken :: Lens' LiveBroadcastsBind (Maybe Text)
lbbAccessToken
  = lens _lbbAccessToken
      (\ s a -> s{_lbbAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbbUploadType :: Lens' LiveBroadcastsBind (Maybe Text)
lbbUploadType
  = lens _lbbUploadType
      (\ s a -> s{_lbbUploadType = a})

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
lbbOnBehalfOfContentOwner :: Lens' LiveBroadcastsBind (Maybe Text)
lbbOnBehalfOfContentOwner
  = lens _lbbOnBehalfOfContentOwner
      (\ s a -> s{_lbbOnBehalfOfContentOwner = a})

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
lbbOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsBind (Maybe Text)
lbbOnBehalfOfContentOwnerChannel
  = lens _lbbOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbbOnBehalfOfContentOwnerChannel = a})

-- | Broadcast to bind to the stream
lbbId :: Lens' LiveBroadcastsBind Text
lbbId = lens _lbbId (\ s a -> s{_lbbId = a})

-- | Stream to bind, if not set unbind the current one.
lbbStreamId :: Lens' LiveBroadcastsBind (Maybe Text)
lbbStreamId
  = lens _lbbStreamId (\ s a -> s{_lbbStreamId = a})

-- | JSONP
lbbCallback :: Lens' LiveBroadcastsBind (Maybe Text)
lbbCallback
  = lens _lbbCallback (\ s a -> s{_lbbCallback = a})

instance GoogleRequest LiveBroadcastsBind where
        type Rs LiveBroadcastsBind = LiveBroadcast
        type Scopes LiveBroadcastsBind =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveBroadcastsBind'{..}
          = go (Just _lbbId) _lbbPart _lbbXgafv
              _lbbUploadProtocol
              _lbbAccessToken
              _lbbUploadType
              _lbbOnBehalfOfContentOwner
              _lbbOnBehalfOfContentOwnerChannel
              _lbbStreamId
              _lbbCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveBroadcastsBindResource)
                      mempty
