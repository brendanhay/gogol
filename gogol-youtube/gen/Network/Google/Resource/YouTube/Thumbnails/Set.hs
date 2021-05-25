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
-- Module      : Network.Google.Resource.YouTube.Thumbnails.Set
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- As this is not an insert in a strict sense (it supports
-- uploading\/setting of a thumbnail for multiple videos, which doesn\'t
-- result in creation of a single resource), I use a custom verb here.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thumbnails.set@.
module Network.Google.Resource.YouTube.Thumbnails.Set
    (
    -- * REST Resource
      ThumbnailsSetResource

    -- * Creating a Request
    , thumbnailsSet
    , ThumbnailsSet

    -- * Request Lenses
    , tsXgafv
    , tsUploadProtocol
    , tsAccessToken
    , tsUploadType
    , tsOnBehalfOfContentOwner
    , tsVideoId
    , tsCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.thumbnails.set@ method which the
-- 'ThumbnailsSet' request conforms to.
type ThumbnailsSetResource =
     "youtube" :>
       "v3" :>
         "thumbnails" :>
           "set" :>
             QueryParam "videoId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] ThumbnailSetResponse
       :<|>
       "upload" :>
         "youtube" :>
           "v3" :>
             "thumbnails" :>
               "set" :>
                 QueryParam "videoId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 QueryParam "uploadType" AltMedia :>
                                   AltMedia :> Post '[JSON] ThumbnailSetResponse

-- | As this is not an insert in a strict sense (it supports
-- uploading\/setting of a thumbnail for multiple videos, which doesn\'t
-- result in creation of a single resource), I use a custom verb here.
--
-- /See:/ 'thumbnailsSet' smart constructor.
data ThumbnailsSet =
  ThumbnailsSet'
    { _tsXgafv :: !(Maybe Xgafv)
    , _tsUploadProtocol :: !(Maybe Text)
    , _tsAccessToken :: !(Maybe Text)
    , _tsUploadType :: !(Maybe Text)
    , _tsOnBehalfOfContentOwner :: !(Maybe Text)
    , _tsVideoId :: !Text
    , _tsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThumbnailsSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsXgafv'
--
-- * 'tsUploadProtocol'
--
-- * 'tsAccessToken'
--
-- * 'tsUploadType'
--
-- * 'tsOnBehalfOfContentOwner'
--
-- * 'tsVideoId'
--
-- * 'tsCallback'
thumbnailsSet
    :: Text -- ^ 'tsVideoId'
    -> ThumbnailsSet
thumbnailsSet pTsVideoId_ =
  ThumbnailsSet'
    { _tsXgafv = Nothing
    , _tsUploadProtocol = Nothing
    , _tsAccessToken = Nothing
    , _tsUploadType = Nothing
    , _tsOnBehalfOfContentOwner = Nothing
    , _tsVideoId = pTsVideoId_
    , _tsCallback = Nothing
    }


-- | V1 error format.
tsXgafv :: Lens' ThumbnailsSet (Maybe Xgafv)
tsXgafv = lens _tsXgafv (\ s a -> s{_tsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tsUploadProtocol :: Lens' ThumbnailsSet (Maybe Text)
tsUploadProtocol
  = lens _tsUploadProtocol
      (\ s a -> s{_tsUploadProtocol = a})

-- | OAuth access token.
tsAccessToken :: Lens' ThumbnailsSet (Maybe Text)
tsAccessToken
  = lens _tsAccessToken
      (\ s a -> s{_tsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tsUploadType :: Lens' ThumbnailsSet (Maybe Text)
tsUploadType
  = lens _tsUploadType (\ s a -> s{_tsUploadType = a})

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
tsOnBehalfOfContentOwner :: Lens' ThumbnailsSet (Maybe Text)
tsOnBehalfOfContentOwner
  = lens _tsOnBehalfOfContentOwner
      (\ s a -> s{_tsOnBehalfOfContentOwner = a})

-- | Returns the Thumbnail with the given video IDs for Stubby or Apiary.
tsVideoId :: Lens' ThumbnailsSet Text
tsVideoId
  = lens _tsVideoId (\ s a -> s{_tsVideoId = a})

-- | JSONP
tsCallback :: Lens' ThumbnailsSet (Maybe Text)
tsCallback
  = lens _tsCallback (\ s a -> s{_tsCallback = a})

instance GoogleRequest ThumbnailsSet where
        type Rs ThumbnailsSet = ThumbnailSetResponse
        type Scopes ThumbnailsSet =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.upload",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ThumbnailsSet'{..}
          = go (Just _tsVideoId) _tsXgafv _tsUploadProtocol
              _tsAccessToken
              _tsUploadType
              _tsOnBehalfOfContentOwner
              _tsCallback
              (Just AltJSON)
              youTubeService
          where go :<|> _
                  = buildClient (Proxy :: Proxy ThumbnailsSetResource)
                      mempty

instance GoogleRequest (MediaUpload ThumbnailsSet)
         where
        type Rs (MediaUpload ThumbnailsSet) =
             ThumbnailSetResponse
        type Scopes (MediaUpload ThumbnailsSet) =
             Scopes ThumbnailsSet
        requestClient (MediaUpload ThumbnailsSet'{..} body)
          = go (Just _tsVideoId) _tsXgafv _tsUploadProtocol
              _tsAccessToken
              _tsUploadType
              _tsOnBehalfOfContentOwner
              _tsCallback
              (Just AltJSON)
              (Just AltMedia)
              body
              youTubeService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ThumbnailsSetResource)
                      mempty
