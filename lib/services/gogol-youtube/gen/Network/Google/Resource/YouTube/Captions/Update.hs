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
-- Module      : Network.Google.Resource.YouTube.Captions.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.captions.update@.
module Network.Google.Resource.YouTube.Captions.Update
    (
    -- * REST Resource
      CaptionsUpdateResource

    -- * Creating a Request
    , captionsUpdate
    , CaptionsUpdate

    -- * Request Lenses
    , capOnBehalfOf
    , capXgafv
    , capPart
    , capUploadProtocol
    , capAccessToken
    , capUploadType
    , capPayload
    , capOnBehalfOfContentOwner
    , capSync
    , capCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.captions.update@ method which the
-- 'CaptionsUpdate' request conforms to.
type CaptionsUpdateResource =
     "youtube" :>
       "v3" :>
         "captions" :>
           QueryParams "part" Text :>
             QueryParam "onBehalfOf" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "sync" Bool :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Caption :> Put '[JSON] Caption
       :<|>
       "upload" :>
         "youtube" :>
           "v3" :>
             "captions" :>
               QueryParams "part" Text :>
                 QueryParam "onBehalfOf" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "sync" Bool :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   QueryParam "uploadType" Multipart :>
                                     MultipartRelated '[JSON] Caption :>
                                       Put '[JSON] Caption

-- | Updates an existing resource.
--
-- /See:/ 'captionsUpdate' smart constructor.
data CaptionsUpdate =
  CaptionsUpdate'
    { _capOnBehalfOf :: !(Maybe Text)
    , _capXgafv :: !(Maybe Xgafv)
    , _capPart :: ![Text]
    , _capUploadProtocol :: !(Maybe Text)
    , _capAccessToken :: !(Maybe Text)
    , _capUploadType :: !(Maybe Text)
    , _capPayload :: !Caption
    , _capOnBehalfOfContentOwner :: !(Maybe Text)
    , _capSync :: !(Maybe Bool)
    , _capCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CaptionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capOnBehalfOf'
--
-- * 'capXgafv'
--
-- * 'capPart'
--
-- * 'capUploadProtocol'
--
-- * 'capAccessToken'
--
-- * 'capUploadType'
--
-- * 'capPayload'
--
-- * 'capOnBehalfOfContentOwner'
--
-- * 'capSync'
--
-- * 'capCallback'
captionsUpdate
    :: [Text] -- ^ 'capPart'
    -> Caption -- ^ 'capPayload'
    -> CaptionsUpdate
captionsUpdate pCapPart_ pCapPayload_ =
  CaptionsUpdate'
    { _capOnBehalfOf = Nothing
    , _capXgafv = Nothing
    , _capPart = _Coerce # pCapPart_
    , _capUploadProtocol = Nothing
    , _capAccessToken = Nothing
    , _capUploadType = Nothing
    , _capPayload = pCapPayload_
    , _capOnBehalfOfContentOwner = Nothing
    , _capSync = Nothing
    , _capCallback = Nothing
    }


-- | ID of the Google+ Page for the channel that the request is on behalf of.
capOnBehalfOf :: Lens' CaptionsUpdate (Maybe Text)
capOnBehalfOf
  = lens _capOnBehalfOf
      (\ s a -> s{_capOnBehalfOf = a})

-- | V1 error format.
capXgafv :: Lens' CaptionsUpdate (Maybe Xgafv)
capXgafv = lens _capXgafv (\ s a -> s{_capXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- caption resource parts that the API response will include. The part
-- names that you can include in the parameter value are id and snippet.
capPart :: Lens' CaptionsUpdate [Text]
capPart
  = lens _capPart (\ s a -> s{_capPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
capUploadProtocol :: Lens' CaptionsUpdate (Maybe Text)
capUploadProtocol
  = lens _capUploadProtocol
      (\ s a -> s{_capUploadProtocol = a})

-- | OAuth access token.
capAccessToken :: Lens' CaptionsUpdate (Maybe Text)
capAccessToken
  = lens _capAccessToken
      (\ s a -> s{_capAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
capUploadType :: Lens' CaptionsUpdate (Maybe Text)
capUploadType
  = lens _capUploadType
      (\ s a -> s{_capUploadType = a})

-- | Multipart request metadata.
capPayload :: Lens' CaptionsUpdate Caption
capPayload
  = lens _capPayload (\ s a -> s{_capPayload = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
capOnBehalfOfContentOwner :: Lens' CaptionsUpdate (Maybe Text)
capOnBehalfOfContentOwner
  = lens _capOnBehalfOfContentOwner
      (\ s a -> s{_capOnBehalfOfContentOwner = a})

-- | Extra parameter to allow automatically syncing the uploaded
-- caption\/transcript with the audio.
capSync :: Lens' CaptionsUpdate (Maybe Bool)
capSync = lens _capSync (\ s a -> s{_capSync = a})

-- | JSONP
capCallback :: Lens' CaptionsUpdate (Maybe Text)
capCallback
  = lens _capCallback (\ s a -> s{_capCallback = a})

instance GoogleRequest CaptionsUpdate where
        type Rs CaptionsUpdate = Caption
        type Scopes CaptionsUpdate =
             '["https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient CaptionsUpdate'{..}
          = go _capPart _capOnBehalfOf _capXgafv
              _capUploadProtocol
              _capAccessToken
              _capUploadType
              _capOnBehalfOfContentOwner
              _capSync
              _capCallback
              (Just AltJSON)
              _capPayload
              youTubeService
          where go :<|> _
                  = buildClient (Proxy :: Proxy CaptionsUpdateResource)
                      mempty

instance GoogleRequest (MediaUpload CaptionsUpdate)
         where
        type Rs (MediaUpload CaptionsUpdate) = Caption
        type Scopes (MediaUpload CaptionsUpdate) =
             Scopes CaptionsUpdate
        requestClient (MediaUpload CaptionsUpdate'{..} body)
          = go _capPart _capOnBehalfOf _capXgafv
              _capUploadProtocol
              _capAccessToken
              _capUploadType
              _capOnBehalfOfContentOwner
              _capSync
              _capCallback
              (Just AltJSON)
              (Just Multipart)
              _capPayload
              body
              youTubeService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy CaptionsUpdateResource)
                      mempty
