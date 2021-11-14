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
-- Module      : Network.Google.Resource.YouTube.Watermarks.Set
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows upload of watermark image and setting it for a channel.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.watermarks.set@.
module Network.Google.Resource.YouTube.Watermarks.Set
    (
    -- * REST Resource
      WatermarksSetResource

    -- * Creating a Request
    , watermarksSet
    , WatermarksSet

    -- * Request Lenses
    , wsXgafv
    , wsUploadProtocol
    , wsAccessToken
    , wsUploadType
    , wsChannelId
    , wsPayload
    , wsOnBehalfOfContentOwner
    , wsCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.watermarks.set@ method which the
-- 'WatermarksSet' request conforms to.
type WatermarksSetResource =
     "youtube" :>
       "v3" :>
         "watermarks" :>
           "set" :>
             QueryParam "channelId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InvideoBranding :> Post '[JSON] ()
       :<|>
       "upload" :>
         "youtube" :>
           "v3" :>
             "watermarks" :>
               "set" :>
                 QueryParam "channelId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 QueryParam "uploadType" Multipart :>
                                   MultipartRelated '[JSON] InvideoBranding :>
                                     Post '[JSON] ()

-- | Allows upload of watermark image and setting it for a channel.
--
-- /See:/ 'watermarksSet' smart constructor.
data WatermarksSet =
  WatermarksSet'
    { _wsXgafv :: !(Maybe Xgafv)
    , _wsUploadProtocol :: !(Maybe Text)
    , _wsAccessToken :: !(Maybe Text)
    , _wsUploadType :: !(Maybe Text)
    , _wsChannelId :: !Text
    , _wsPayload :: !InvideoBranding
    , _wsOnBehalfOfContentOwner :: !(Maybe Text)
    , _wsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WatermarksSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsXgafv'
--
-- * 'wsUploadProtocol'
--
-- * 'wsAccessToken'
--
-- * 'wsUploadType'
--
-- * 'wsChannelId'
--
-- * 'wsPayload'
--
-- * 'wsOnBehalfOfContentOwner'
--
-- * 'wsCallback'
watermarksSet
    :: Text -- ^ 'wsChannelId'
    -> InvideoBranding -- ^ 'wsPayload'
    -> WatermarksSet
watermarksSet pWsChannelId_ pWsPayload_ =
  WatermarksSet'
    { _wsXgafv = Nothing
    , _wsUploadProtocol = Nothing
    , _wsAccessToken = Nothing
    , _wsUploadType = Nothing
    , _wsChannelId = pWsChannelId_
    , _wsPayload = pWsPayload_
    , _wsOnBehalfOfContentOwner = Nothing
    , _wsCallback = Nothing
    }


-- | V1 error format.
wsXgafv :: Lens' WatermarksSet (Maybe Xgafv)
wsXgafv = lens _wsXgafv (\ s a -> s{_wsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
wsUploadProtocol :: Lens' WatermarksSet (Maybe Text)
wsUploadProtocol
  = lens _wsUploadProtocol
      (\ s a -> s{_wsUploadProtocol = a})

-- | OAuth access token.
wsAccessToken :: Lens' WatermarksSet (Maybe Text)
wsAccessToken
  = lens _wsAccessToken
      (\ s a -> s{_wsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
wsUploadType :: Lens' WatermarksSet (Maybe Text)
wsUploadType
  = lens _wsUploadType (\ s a -> s{_wsUploadType = a})

wsChannelId :: Lens' WatermarksSet Text
wsChannelId
  = lens _wsChannelId (\ s a -> s{_wsChannelId = a})

-- | Multipart request metadata.
wsPayload :: Lens' WatermarksSet InvideoBranding
wsPayload
  = lens _wsPayload (\ s a -> s{_wsPayload = a})

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
wsOnBehalfOfContentOwner :: Lens' WatermarksSet (Maybe Text)
wsOnBehalfOfContentOwner
  = lens _wsOnBehalfOfContentOwner
      (\ s a -> s{_wsOnBehalfOfContentOwner = a})

-- | JSONP
wsCallback :: Lens' WatermarksSet (Maybe Text)
wsCallback
  = lens _wsCallback (\ s a -> s{_wsCallback = a})

instance GoogleRequest WatermarksSet where
        type Rs WatermarksSet = ()
        type Scopes WatermarksSet =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.upload",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient WatermarksSet'{..}
          = go (Just _wsChannelId) _wsXgafv _wsUploadProtocol
              _wsAccessToken
              _wsUploadType
              _wsOnBehalfOfContentOwner
              _wsCallback
              (Just AltJSON)
              _wsPayload
              youTubeService
          where go :<|> _
                  = buildClient (Proxy :: Proxy WatermarksSetResource)
                      mempty

instance GoogleRequest (MediaUpload WatermarksSet)
         where
        type Rs (MediaUpload WatermarksSet) = ()
        type Scopes (MediaUpload WatermarksSet) =
             Scopes WatermarksSet
        requestClient (MediaUpload WatermarksSet'{..} body)
          = go (Just _wsChannelId) _wsXgafv _wsUploadProtocol
              _wsAccessToken
              _wsUploadType
              _wsOnBehalfOfContentOwner
              _wsCallback
              (Just AltJSON)
              (Just Multipart)
              _wsPayload
              body
              youTubeService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy WatermarksSetResource)
                      mempty
