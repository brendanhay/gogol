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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new stream for the authenticated user.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveBroadcasts.insert@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Insert
    (
    -- * REST Resource
      LiveBroadcastsInsertResource

    -- * Creating a Request
    , liveBroadcastsInsert
    , LiveBroadcastsInsert

    -- * Request Lenses
    , lbiXgafv
    , lbiPart
    , lbiUploadProtocol
    , lbiAccessToken
    , lbiUploadType
    , lbiPayload
    , lbiOnBehalfOfContentOwner
    , lbiOnBehalfOfContentOwnerChannel
    , lbiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.insert@ method which the
-- 'LiveBroadcastsInsert' request conforms to.
type LiveBroadcastsInsertResource =
     "youtube" :>
       "v3" :>
         "liveBroadcasts" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "onBehalfOfContentOwnerChannel" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LiveBroadcast :>
                               Post '[JSON] LiveBroadcast

-- | Inserts a new stream for the authenticated user.
--
-- /See:/ 'liveBroadcastsInsert' smart constructor.
data LiveBroadcastsInsert =
  LiveBroadcastsInsert'
    { _lbiXgafv :: !(Maybe Xgafv)
    , _lbiPart :: ![Text]
    , _lbiUploadProtocol :: !(Maybe Text)
    , _lbiAccessToken :: !(Maybe Text)
    , _lbiUploadType :: !(Maybe Text)
    , _lbiPayload :: !LiveBroadcast
    , _lbiOnBehalfOfContentOwner :: !(Maybe Text)
    , _lbiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveBroadcastsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbiXgafv'
--
-- * 'lbiPart'
--
-- * 'lbiUploadProtocol'
--
-- * 'lbiAccessToken'
--
-- * 'lbiUploadType'
--
-- * 'lbiPayload'
--
-- * 'lbiOnBehalfOfContentOwner'
--
-- * 'lbiOnBehalfOfContentOwnerChannel'
--
-- * 'lbiCallback'
liveBroadcastsInsert
    :: [Text] -- ^ 'lbiPart'
    -> LiveBroadcast -- ^ 'lbiPayload'
    -> LiveBroadcastsInsert
liveBroadcastsInsert pLbiPart_ pLbiPayload_ =
  LiveBroadcastsInsert'
    { _lbiXgafv = Nothing
    , _lbiPart = _Coerce # pLbiPart_
    , _lbiUploadProtocol = Nothing
    , _lbiAccessToken = Nothing
    , _lbiUploadType = Nothing
    , _lbiPayload = pLbiPayload_
    , _lbiOnBehalfOfContentOwner = Nothing
    , _lbiOnBehalfOfContentOwnerChannel = Nothing
    , _lbiCallback = Nothing
    }


-- | V1 error format.
lbiXgafv :: Lens' LiveBroadcastsInsert (Maybe Xgafv)
lbiXgafv = lens _lbiXgafv (\ s a -> s{_lbiXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. The part properties
-- that you can include in the parameter value are id, snippet,
-- contentDetails, and status.
lbiPart :: Lens' LiveBroadcastsInsert [Text]
lbiPart
  = lens _lbiPart (\ s a -> s{_lbiPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbiUploadProtocol :: Lens' LiveBroadcastsInsert (Maybe Text)
lbiUploadProtocol
  = lens _lbiUploadProtocol
      (\ s a -> s{_lbiUploadProtocol = a})

-- | OAuth access token.
lbiAccessToken :: Lens' LiveBroadcastsInsert (Maybe Text)
lbiAccessToken
  = lens _lbiAccessToken
      (\ s a -> s{_lbiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbiUploadType :: Lens' LiveBroadcastsInsert (Maybe Text)
lbiUploadType
  = lens _lbiUploadType
      (\ s a -> s{_lbiUploadType = a})

-- | Multipart request metadata.
lbiPayload :: Lens' LiveBroadcastsInsert LiveBroadcast
lbiPayload
  = lens _lbiPayload (\ s a -> s{_lbiPayload = a})

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
lbiOnBehalfOfContentOwner :: Lens' LiveBroadcastsInsert (Maybe Text)
lbiOnBehalfOfContentOwner
  = lens _lbiOnBehalfOfContentOwner
      (\ s a -> s{_lbiOnBehalfOfContentOwner = a})

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
lbiOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsInsert (Maybe Text)
lbiOnBehalfOfContentOwnerChannel
  = lens _lbiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbiOnBehalfOfContentOwnerChannel = a})

-- | JSONP
lbiCallback :: Lens' LiveBroadcastsInsert (Maybe Text)
lbiCallback
  = lens _lbiCallback (\ s a -> s{_lbiCallback = a})

instance GoogleRequest LiveBroadcastsInsert where
        type Rs LiveBroadcastsInsert = LiveBroadcast
        type Scopes LiveBroadcastsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveBroadcastsInsert'{..}
          = go _lbiPart _lbiXgafv _lbiUploadProtocol
              _lbiAccessToken
              _lbiUploadType
              _lbiOnBehalfOfContentOwner
              _lbiOnBehalfOfContentOwnerChannel
              _lbiCallback
              (Just AltJSON)
              _lbiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveBroadcastsInsertResource)
                      mempty
