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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing broadcast for the authenticated user.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveBroadcasts.update@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Update
    (
    -- * REST Resource
      LiveBroadcastsUpdateResource

    -- * Creating a Request
    , liveBroadcastsUpdate
    , LiveBroadcastsUpdate

    -- * Request Lenses
    , lbuXgafv
    , lbuPart
    , lbuUploadProtocol
    , lbuAccessToken
    , lbuUploadType
    , lbuPayload
    , lbuOnBehalfOfContentOwner
    , lbuOnBehalfOfContentOwnerChannel
    , lbuCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.update@ method which the
-- 'LiveBroadcastsUpdate' request conforms to.
type LiveBroadcastsUpdateResource =
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
                               Put '[JSON] LiveBroadcast

-- | Updates an existing broadcast for the authenticated user.
--
-- /See:/ 'liveBroadcastsUpdate' smart constructor.
data LiveBroadcastsUpdate =
  LiveBroadcastsUpdate'
    { _lbuXgafv :: !(Maybe Xgafv)
    , _lbuPart :: ![Text]
    , _lbuUploadProtocol :: !(Maybe Text)
    , _lbuAccessToken :: !(Maybe Text)
    , _lbuUploadType :: !(Maybe Text)
    , _lbuPayload :: !LiveBroadcast
    , _lbuOnBehalfOfContentOwner :: !(Maybe Text)
    , _lbuOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveBroadcastsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbuXgafv'
--
-- * 'lbuPart'
--
-- * 'lbuUploadProtocol'
--
-- * 'lbuAccessToken'
--
-- * 'lbuUploadType'
--
-- * 'lbuPayload'
--
-- * 'lbuOnBehalfOfContentOwner'
--
-- * 'lbuOnBehalfOfContentOwnerChannel'
--
-- * 'lbuCallback'
liveBroadcastsUpdate
    :: [Text] -- ^ 'lbuPart'
    -> LiveBroadcast -- ^ 'lbuPayload'
    -> LiveBroadcastsUpdate
liveBroadcastsUpdate pLbuPart_ pLbuPayload_ =
  LiveBroadcastsUpdate'
    { _lbuXgafv = Nothing
    , _lbuPart = _Coerce # pLbuPart_
    , _lbuUploadProtocol = Nothing
    , _lbuAccessToken = Nothing
    , _lbuUploadType = Nothing
    , _lbuPayload = pLbuPayload_
    , _lbuOnBehalfOfContentOwner = Nothing
    , _lbuOnBehalfOfContentOwnerChannel = Nothing
    , _lbuCallback = Nothing
    }


-- | V1 error format.
lbuXgafv :: Lens' LiveBroadcastsUpdate (Maybe Xgafv)
lbuXgafv = lens _lbuXgafv (\ s a -> s{_lbuXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. The part properties
-- that you can include in the parameter value are id, snippet,
-- contentDetails, and status. Note that this method will override the
-- existing values for all of the mutable properties that are contained in
-- any parts that the parameter value specifies. For example, a
-- broadcast\'s privacy status is defined in the status part. As such, if
-- your request is updating a private or unlisted broadcast, and the
-- request\'s part parameter value includes the status part, the
-- broadcast\'s privacy setting will be updated to whatever value the
-- request body specifies. If the request body does not specify a value,
-- the existing privacy setting will be removed and the broadcast will
-- revert to the default privacy setting.
lbuPart :: Lens' LiveBroadcastsUpdate [Text]
lbuPart
  = lens _lbuPart (\ s a -> s{_lbuPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbuUploadProtocol :: Lens' LiveBroadcastsUpdate (Maybe Text)
lbuUploadProtocol
  = lens _lbuUploadProtocol
      (\ s a -> s{_lbuUploadProtocol = a})

-- | OAuth access token.
lbuAccessToken :: Lens' LiveBroadcastsUpdate (Maybe Text)
lbuAccessToken
  = lens _lbuAccessToken
      (\ s a -> s{_lbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbuUploadType :: Lens' LiveBroadcastsUpdate (Maybe Text)
lbuUploadType
  = lens _lbuUploadType
      (\ s a -> s{_lbuUploadType = a})

-- | Multipart request metadata.
lbuPayload :: Lens' LiveBroadcastsUpdate LiveBroadcast
lbuPayload
  = lens _lbuPayload (\ s a -> s{_lbuPayload = a})

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
lbuOnBehalfOfContentOwner :: Lens' LiveBroadcastsUpdate (Maybe Text)
lbuOnBehalfOfContentOwner
  = lens _lbuOnBehalfOfContentOwner
      (\ s a -> s{_lbuOnBehalfOfContentOwner = a})

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
lbuOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsUpdate (Maybe Text)
lbuOnBehalfOfContentOwnerChannel
  = lens _lbuOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbuOnBehalfOfContentOwnerChannel = a})

-- | JSONP
lbuCallback :: Lens' LiveBroadcastsUpdate (Maybe Text)
lbuCallback
  = lens _lbuCallback (\ s a -> s{_lbuCallback = a})

instance GoogleRequest LiveBroadcastsUpdate where
        type Rs LiveBroadcastsUpdate = LiveBroadcast
        type Scopes LiveBroadcastsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveBroadcastsUpdate'{..}
          = go _lbuPart _lbuXgafv _lbuUploadProtocol
              _lbuAccessToken
              _lbuUploadType
              _lbuOnBehalfOfContentOwner
              _lbuOnBehalfOfContentOwnerChannel
              _lbuCallback
              (Just AltJSON)
              _lbuPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveBroadcastsUpdateResource)
                      mempty
