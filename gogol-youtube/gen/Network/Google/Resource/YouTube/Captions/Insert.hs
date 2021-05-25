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
-- Module      : Network.Google.Resource.YouTube.Captions.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.captions.insert@.
module Network.Google.Resource.YouTube.Captions.Insert
    (
    -- * REST Resource
      CaptionsInsertResource

    -- * Creating a Request
    , captionsInsert
    , CaptionsInsert

    -- * Request Lenses
    , ciOnBehalfOf
    , ciXgafv
    , ciPart
    , ciUploadProtocol
    , ciAccessToken
    , ciUploadType
    , ciPayload
    , ciOnBehalfOfContentOwner
    , ciSync
    , ciCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.captions.insert@ method which the
-- 'CaptionsInsert' request conforms to.
type CaptionsInsertResource =
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
                               ReqBody '[JSON] Caption :> Post '[JSON] Caption
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
                                       Post '[JSON] Caption

-- | Inserts a new resource into this collection.
--
-- /See:/ 'captionsInsert' smart constructor.
data CaptionsInsert =
  CaptionsInsert'
    { _ciOnBehalfOf :: !(Maybe Text)
    , _ciXgafv :: !(Maybe Xgafv)
    , _ciPart :: ![Text]
    , _ciUploadProtocol :: !(Maybe Text)
    , _ciAccessToken :: !(Maybe Text)
    , _ciUploadType :: !(Maybe Text)
    , _ciPayload :: !Caption
    , _ciOnBehalfOfContentOwner :: !(Maybe Text)
    , _ciSync :: !(Maybe Bool)
    , _ciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CaptionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciOnBehalfOf'
--
-- * 'ciXgafv'
--
-- * 'ciPart'
--
-- * 'ciUploadProtocol'
--
-- * 'ciAccessToken'
--
-- * 'ciUploadType'
--
-- * 'ciPayload'
--
-- * 'ciOnBehalfOfContentOwner'
--
-- * 'ciSync'
--
-- * 'ciCallback'
captionsInsert
    :: [Text] -- ^ 'ciPart'
    -> Caption -- ^ 'ciPayload'
    -> CaptionsInsert
captionsInsert pCiPart_ pCiPayload_ =
  CaptionsInsert'
    { _ciOnBehalfOf = Nothing
    , _ciXgafv = Nothing
    , _ciPart = _Coerce # pCiPart_
    , _ciUploadProtocol = Nothing
    , _ciAccessToken = Nothing
    , _ciUploadType = Nothing
    , _ciPayload = pCiPayload_
    , _ciOnBehalfOfContentOwner = Nothing
    , _ciSync = Nothing
    , _ciCallback = Nothing
    }


-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
ciOnBehalfOf :: Lens' CaptionsInsert (Maybe Text)
ciOnBehalfOf
  = lens _ciOnBehalfOf (\ s a -> s{_ciOnBehalfOf = a})

-- | V1 error format.
ciXgafv :: Lens' CaptionsInsert (Maybe Xgafv)
ciXgafv = lens _ciXgafv (\ s a -> s{_ciXgafv = a})

-- | The *part* parameter specifies the caption resource parts that the API
-- response will include. Set the parameter value to snippet.
ciPart :: Lens' CaptionsInsert [Text]
ciPart
  = lens _ciPart (\ s a -> s{_ciPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ciUploadProtocol :: Lens' CaptionsInsert (Maybe Text)
ciUploadProtocol
  = lens _ciUploadProtocol
      (\ s a -> s{_ciUploadProtocol = a})

-- | OAuth access token.
ciAccessToken :: Lens' CaptionsInsert (Maybe Text)
ciAccessToken
  = lens _ciAccessToken
      (\ s a -> s{_ciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ciUploadType :: Lens' CaptionsInsert (Maybe Text)
ciUploadType
  = lens _ciUploadType (\ s a -> s{_ciUploadType = a})

-- | Multipart request metadata.
ciPayload :: Lens' CaptionsInsert Caption
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

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
ciOnBehalfOfContentOwner :: Lens' CaptionsInsert (Maybe Text)
ciOnBehalfOfContentOwner
  = lens _ciOnBehalfOfContentOwner
      (\ s a -> s{_ciOnBehalfOfContentOwner = a})

-- | Extra parameter to allow automatically syncing the uploaded
-- caption\/transcript with the audio.
ciSync :: Lens' CaptionsInsert (Maybe Bool)
ciSync = lens _ciSync (\ s a -> s{_ciSync = a})

-- | JSONP
ciCallback :: Lens' CaptionsInsert (Maybe Text)
ciCallback
  = lens _ciCallback (\ s a -> s{_ciCallback = a})

instance GoogleRequest CaptionsInsert where
        type Rs CaptionsInsert = Caption
        type Scopes CaptionsInsert =
             '["https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient CaptionsInsert'{..}
          = go _ciPart _ciOnBehalfOf _ciXgafv _ciUploadProtocol
              _ciAccessToken
              _ciUploadType
              _ciOnBehalfOfContentOwner
              _ciSync
              _ciCallback
              (Just AltJSON)
              _ciPayload
              youTubeService
          where go :<|> _
                  = buildClient (Proxy :: Proxy CaptionsInsertResource)
                      mempty

instance GoogleRequest (MediaUpload CaptionsInsert)
         where
        type Rs (MediaUpload CaptionsInsert) = Caption
        type Scopes (MediaUpload CaptionsInsert) =
             Scopes CaptionsInsert
        requestClient (MediaUpload CaptionsInsert'{..} body)
          = go _ciPart _ciOnBehalfOf _ciXgafv _ciUploadProtocol
              _ciAccessToken
              _ciUploadType
              _ciOnBehalfOfContentOwner
              _ciSync
              _ciCallback
              (Just AltJSON)
              (Just Multipart)
              _ciPayload
              body
              youTubeService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy CaptionsInsertResource)
                      mempty
