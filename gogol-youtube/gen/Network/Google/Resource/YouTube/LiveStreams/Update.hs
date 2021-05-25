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
-- Module      : Network.Google.Resource.YouTube.LiveStreams.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing stream for the authenticated user.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveStreams.update@.
module Network.Google.Resource.YouTube.LiveStreams.Update
    (
    -- * REST Resource
      LiveStreamsUpdateResource

    -- * Creating a Request
    , liveStreamsUpdate
    , LiveStreamsUpdate

    -- * Request Lenses
    , lsuXgafv
    , lsuPart
    , lsuUploadProtocol
    , lsuAccessToken
    , lsuUploadType
    , lsuPayload
    , lsuOnBehalfOfContentOwner
    , lsuOnBehalfOfContentOwnerChannel
    , lsuCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveStreams.update@ method which the
-- 'LiveStreamsUpdate' request conforms to.
type LiveStreamsUpdateResource =
     "youtube" :>
       "v3" :>
         "liveStreams" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "onBehalfOfContentOwnerChannel" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LiveStream :>
                               Put '[JSON] LiveStream

-- | Updates an existing stream for the authenticated user.
--
-- /See:/ 'liveStreamsUpdate' smart constructor.
data LiveStreamsUpdate =
  LiveStreamsUpdate'
    { _lsuXgafv :: !(Maybe Xgafv)
    , _lsuPart :: ![Text]
    , _lsuUploadProtocol :: !(Maybe Text)
    , _lsuAccessToken :: !(Maybe Text)
    , _lsuUploadType :: !(Maybe Text)
    , _lsuPayload :: !LiveStream
    , _lsuOnBehalfOfContentOwner :: !(Maybe Text)
    , _lsuOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lsuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveStreamsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsuXgafv'
--
-- * 'lsuPart'
--
-- * 'lsuUploadProtocol'
--
-- * 'lsuAccessToken'
--
-- * 'lsuUploadType'
--
-- * 'lsuPayload'
--
-- * 'lsuOnBehalfOfContentOwner'
--
-- * 'lsuOnBehalfOfContentOwnerChannel'
--
-- * 'lsuCallback'
liveStreamsUpdate
    :: [Text] -- ^ 'lsuPart'
    -> LiveStream -- ^ 'lsuPayload'
    -> LiveStreamsUpdate
liveStreamsUpdate pLsuPart_ pLsuPayload_ =
  LiveStreamsUpdate'
    { _lsuXgafv = Nothing
    , _lsuPart = _Coerce # pLsuPart_
    , _lsuUploadProtocol = Nothing
    , _lsuAccessToken = Nothing
    , _lsuUploadType = Nothing
    , _lsuPayload = pLsuPayload_
    , _lsuOnBehalfOfContentOwner = Nothing
    , _lsuOnBehalfOfContentOwnerChannel = Nothing
    , _lsuCallback = Nothing
    }


-- | V1 error format.
lsuXgafv :: Lens' LiveStreamsUpdate (Maybe Xgafv)
lsuXgafv = lens _lsuXgafv (\ s a -> s{_lsuXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. The part properties
-- that you can include in the parameter value are id, snippet, cdn, and
-- status. Note that this method will override the existing values for all
-- of the mutable properties that are contained in any parts that the
-- parameter value specifies. If the request body does not specify a value
-- for a mutable property, the existing value for that property will be
-- removed.
lsuPart :: Lens' LiveStreamsUpdate [Text]
lsuPart
  = lens _lsuPart (\ s a -> s{_lsuPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lsuUploadProtocol :: Lens' LiveStreamsUpdate (Maybe Text)
lsuUploadProtocol
  = lens _lsuUploadProtocol
      (\ s a -> s{_lsuUploadProtocol = a})

-- | OAuth access token.
lsuAccessToken :: Lens' LiveStreamsUpdate (Maybe Text)
lsuAccessToken
  = lens _lsuAccessToken
      (\ s a -> s{_lsuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lsuUploadType :: Lens' LiveStreamsUpdate (Maybe Text)
lsuUploadType
  = lens _lsuUploadType
      (\ s a -> s{_lsuUploadType = a})

-- | Multipart request metadata.
lsuPayload :: Lens' LiveStreamsUpdate LiveStream
lsuPayload
  = lens _lsuPayload (\ s a -> s{_lsuPayload = a})

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
lsuOnBehalfOfContentOwner :: Lens' LiveStreamsUpdate (Maybe Text)
lsuOnBehalfOfContentOwner
  = lens _lsuOnBehalfOfContentOwner
      (\ s a -> s{_lsuOnBehalfOfContentOwner = a})

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
lsuOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsUpdate (Maybe Text)
lsuOnBehalfOfContentOwnerChannel
  = lens _lsuOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lsuOnBehalfOfContentOwnerChannel = a})

-- | JSONP
lsuCallback :: Lens' LiveStreamsUpdate (Maybe Text)
lsuCallback
  = lens _lsuCallback (\ s a -> s{_lsuCallback = a})

instance GoogleRequest LiveStreamsUpdate where
        type Rs LiveStreamsUpdate = LiveStream
        type Scopes LiveStreamsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveStreamsUpdate'{..}
          = go _lsuPart _lsuXgafv _lsuUploadProtocol
              _lsuAccessToken
              _lsuUploadType
              _lsuOnBehalfOfContentOwner
              _lsuOnBehalfOfContentOwnerChannel
              _lsuCallback
              (Just AltJSON)
              _lsuPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveStreamsUpdateResource)
                      mempty
