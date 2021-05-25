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
-- Module      : Network.Google.Resource.YouTube.Captions.Download
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a caption track.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.captions.download@.
module Network.Google.Resource.YouTube.Captions.Download
    (
    -- * REST Resource
      CaptionsDownloadResource

    -- * Creating a Request
    , captionsDownload
    , CaptionsDownload

    -- * Request Lenses
    , capaOnBehalfOf
    , capaXgafv
    , capaUploadProtocol
    , capaAccessToken
    , capaTlang
    , capaUploadType
    , capaOnBehalfOfContentOwner
    , capaId
    , capaTfmt
    , capaCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.captions.download@ method which the
-- 'CaptionsDownload' request conforms to.
type CaptionsDownloadResource =
     "youtube" :>
       "v3" :>
         "captions" :>
           Capture "id" Text :>
             QueryParam "onBehalfOf" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "tlang" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "onBehalfOfContentOwner" Text :>
                           QueryParam "tfmt" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "youtube" :>
         "v3" :>
           "captions" :>
             Capture "id" Text :>
               QueryParam "onBehalfOf" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "tlang" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "tfmt" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltMedia :>
                                   Get '[OctetStream] Stream

-- | Downloads a caption track.
--
-- /See:/ 'captionsDownload' smart constructor.
data CaptionsDownload =
  CaptionsDownload'
    { _capaOnBehalfOf :: !(Maybe Text)
    , _capaXgafv :: !(Maybe Xgafv)
    , _capaUploadProtocol :: !(Maybe Text)
    , _capaAccessToken :: !(Maybe Text)
    , _capaTlang :: !(Maybe Text)
    , _capaUploadType :: !(Maybe Text)
    , _capaOnBehalfOfContentOwner :: !(Maybe Text)
    , _capaId :: !Text
    , _capaTfmt :: !(Maybe Text)
    , _capaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CaptionsDownload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capaOnBehalfOf'
--
-- * 'capaXgafv'
--
-- * 'capaUploadProtocol'
--
-- * 'capaAccessToken'
--
-- * 'capaTlang'
--
-- * 'capaUploadType'
--
-- * 'capaOnBehalfOfContentOwner'
--
-- * 'capaId'
--
-- * 'capaTfmt'
--
-- * 'capaCallback'
captionsDownload
    :: Text -- ^ 'capaId'
    -> CaptionsDownload
captionsDownload pCapaId_ =
  CaptionsDownload'
    { _capaOnBehalfOf = Nothing
    , _capaXgafv = Nothing
    , _capaUploadProtocol = Nothing
    , _capaAccessToken = Nothing
    , _capaTlang = Nothing
    , _capaUploadType = Nothing
    , _capaOnBehalfOfContentOwner = Nothing
    , _capaId = pCapaId_
    , _capaTfmt = Nothing
    , _capaCallback = Nothing
    }


-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
capaOnBehalfOf :: Lens' CaptionsDownload (Maybe Text)
capaOnBehalfOf
  = lens _capaOnBehalfOf
      (\ s a -> s{_capaOnBehalfOf = a})

-- | V1 error format.
capaXgafv :: Lens' CaptionsDownload (Maybe Xgafv)
capaXgafv
  = lens _capaXgafv (\ s a -> s{_capaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
capaUploadProtocol :: Lens' CaptionsDownload (Maybe Text)
capaUploadProtocol
  = lens _capaUploadProtocol
      (\ s a -> s{_capaUploadProtocol = a})

-- | OAuth access token.
capaAccessToken :: Lens' CaptionsDownload (Maybe Text)
capaAccessToken
  = lens _capaAccessToken
      (\ s a -> s{_capaAccessToken = a})

-- | tlang is the language code; machine translate the captions into this
-- language.
capaTlang :: Lens' CaptionsDownload (Maybe Text)
capaTlang
  = lens _capaTlang (\ s a -> s{_capaTlang = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
capaUploadType :: Lens' CaptionsDownload (Maybe Text)
capaUploadType
  = lens _capaUploadType
      (\ s a -> s{_capaUploadType = a})

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
capaOnBehalfOfContentOwner :: Lens' CaptionsDownload (Maybe Text)
capaOnBehalfOfContentOwner
  = lens _capaOnBehalfOfContentOwner
      (\ s a -> s{_capaOnBehalfOfContentOwner = a})

-- | The ID of the caption track to download, required for One Platform.
capaId :: Lens' CaptionsDownload Text
capaId = lens _capaId (\ s a -> s{_capaId = a})

-- | Convert the captions into this format. Supported options are sbv, srt,
-- and vtt.
capaTfmt :: Lens' CaptionsDownload (Maybe Text)
capaTfmt = lens _capaTfmt (\ s a -> s{_capaTfmt = a})

-- | JSONP
capaCallback :: Lens' CaptionsDownload (Maybe Text)
capaCallback
  = lens _capaCallback (\ s a -> s{_capaCallback = a})

instance GoogleRequest CaptionsDownload where
        type Rs CaptionsDownload = ()
        type Scopes CaptionsDownload =
             '["https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient CaptionsDownload'{..}
          = go _capaId _capaOnBehalfOf _capaXgafv
              _capaUploadProtocol
              _capaAccessToken
              _capaTlang
              _capaUploadType
              _capaOnBehalfOfContentOwner
              _capaTfmt
              _capaCallback
              (Just AltJSON)
              youTubeService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy CaptionsDownloadResource)
                      mempty

instance GoogleRequest
           (MediaDownload CaptionsDownload)
         where
        type Rs (MediaDownload CaptionsDownload) = Stream
        type Scopes (MediaDownload CaptionsDownload) =
             Scopes CaptionsDownload
        requestClient (MediaDownload CaptionsDownload'{..})
          = go _capaId _capaOnBehalfOf _capaXgafv
              _capaUploadProtocol
              _capaAccessToken
              _capaTlang
              _capaUploadType
              _capaOnBehalfOfContentOwner
              _capaTfmt
              _capaCallback
              (Just AltMedia)
              youTubeService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy CaptionsDownloadResource)
                      mempty
