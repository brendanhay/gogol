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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new stream for the authenticated user.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveStreams.insert@.
module Network.Google.Resource.YouTube.LiveStreams.Insert
    (
    -- * REST Resource
      LiveStreamsInsertResource

    -- * Creating a Request
    , liveStreamsInsert
    , LiveStreamsInsert

    -- * Request Lenses
    , lsiXgafv
    , lsiPart
    , lsiUploadProtocol
    , lsiAccessToken
    , lsiUploadType
    , lsiPayload
    , lsiOnBehalfOfContentOwner
    , lsiOnBehalfOfContentOwnerChannel
    , lsiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveStreams.insert@ method which the
-- 'LiveStreamsInsert' request conforms to.
type LiveStreamsInsertResource =
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
                               Post '[JSON] LiveStream

-- | Inserts a new stream for the authenticated user.
--
-- /See:/ 'liveStreamsInsert' smart constructor.
data LiveStreamsInsert =
  LiveStreamsInsert'
    { _lsiXgafv :: !(Maybe Xgafv)
    , _lsiPart :: ![Text]
    , _lsiUploadProtocol :: !(Maybe Text)
    , _lsiAccessToken :: !(Maybe Text)
    , _lsiUploadType :: !(Maybe Text)
    , _lsiPayload :: !LiveStream
    , _lsiOnBehalfOfContentOwner :: !(Maybe Text)
    , _lsiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lsiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveStreamsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsiXgafv'
--
-- * 'lsiPart'
--
-- * 'lsiUploadProtocol'
--
-- * 'lsiAccessToken'
--
-- * 'lsiUploadType'
--
-- * 'lsiPayload'
--
-- * 'lsiOnBehalfOfContentOwner'
--
-- * 'lsiOnBehalfOfContentOwnerChannel'
--
-- * 'lsiCallback'
liveStreamsInsert
    :: [Text] -- ^ 'lsiPart'
    -> LiveStream -- ^ 'lsiPayload'
    -> LiveStreamsInsert
liveStreamsInsert pLsiPart_ pLsiPayload_ =
  LiveStreamsInsert'
    { _lsiXgafv = Nothing
    , _lsiPart = _Coerce # pLsiPart_
    , _lsiUploadProtocol = Nothing
    , _lsiAccessToken = Nothing
    , _lsiUploadType = Nothing
    , _lsiPayload = pLsiPayload_
    , _lsiOnBehalfOfContentOwner = Nothing
    , _lsiOnBehalfOfContentOwnerChannel = Nothing
    , _lsiCallback = Nothing
    }


-- | V1 error format.
lsiXgafv :: Lens' LiveStreamsInsert (Maybe Xgafv)
lsiXgafv = lens _lsiXgafv (\ s a -> s{_lsiXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. The part properties
-- that you can include in the parameter value are id, snippet, cdn,
-- content_details, and status.
lsiPart :: Lens' LiveStreamsInsert [Text]
lsiPart
  = lens _lsiPart (\ s a -> s{_lsiPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lsiUploadProtocol :: Lens' LiveStreamsInsert (Maybe Text)
lsiUploadProtocol
  = lens _lsiUploadProtocol
      (\ s a -> s{_lsiUploadProtocol = a})

-- | OAuth access token.
lsiAccessToken :: Lens' LiveStreamsInsert (Maybe Text)
lsiAccessToken
  = lens _lsiAccessToken
      (\ s a -> s{_lsiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lsiUploadType :: Lens' LiveStreamsInsert (Maybe Text)
lsiUploadType
  = lens _lsiUploadType
      (\ s a -> s{_lsiUploadType = a})

-- | Multipart request metadata.
lsiPayload :: Lens' LiveStreamsInsert LiveStream
lsiPayload
  = lens _lsiPayload (\ s a -> s{_lsiPayload = a})

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
lsiOnBehalfOfContentOwner :: Lens' LiveStreamsInsert (Maybe Text)
lsiOnBehalfOfContentOwner
  = lens _lsiOnBehalfOfContentOwner
      (\ s a -> s{_lsiOnBehalfOfContentOwner = a})

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
lsiOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsInsert (Maybe Text)
lsiOnBehalfOfContentOwnerChannel
  = lens _lsiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lsiOnBehalfOfContentOwnerChannel = a})

-- | JSONP
lsiCallback :: Lens' LiveStreamsInsert (Maybe Text)
lsiCallback
  = lens _lsiCallback (\ s a -> s{_lsiCallback = a})

instance GoogleRequest LiveStreamsInsert where
        type Rs LiveStreamsInsert = LiveStream
        type Scopes LiveStreamsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveStreamsInsert'{..}
          = go _lsiPart _lsiXgafv _lsiUploadProtocol
              _lsiAccessToken
              _lsiUploadType
              _lsiOnBehalfOfContentOwner
              _lsiOnBehalfOfContentOwnerChannel
              _lsiCallback
              (Just AltJSON)
              _lsiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveStreamsInsertResource)
                      mempty
