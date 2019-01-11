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
-- Module      : Network.Google.Resource.CloudSearch.Media.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads media for indexing. The upload endpoint supports direct and
-- resumable upload protocols and is intended for large items that can not
-- be inlined during index requests. To index large content: 1. Call upload
-- to begin a session and get the item reference. 1. Upload the content
-- using the item reference\'s resource name. 1. Call index with the item
-- reference as the content. For additional information, see [Create a
-- content connector using the REST
-- API](https:\/\/developers.google.com\/cloud-search\/docs\/guides\/content-connector#rest).
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.media.upload@.
module Network.Google.Resource.CloudSearch.Media.Upload
    (
    -- * REST Resource
      MediaUploadResource

    -- * Creating a Request
    , mediaUpload
    , MediaUpload'

    -- * Request Lenses
    , muXgafv
    , muUploadProtocol
    , muResourceName
    , muAccessToken
    , muUploadType
    , muPayload
    , muCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.media.upload@ method which the
-- 'MediaUpload'' request conforms to.
type MediaUploadResource =
     "v1" :>
       "media" :>
         Capture "resourceName" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Media :> Post '[JSON] Media
       :<|>
       "upload" :>
         "v1" :>
           "media" :>
             Capture "resourceName" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           QueryParam "uploadType" Multipart :>
                             MultipartRelated '[JSON] Media :>
                               Post '[JSON] Media

-- | Uploads media for indexing. The upload endpoint supports direct and
-- resumable upload protocols and is intended for large items that can not
-- be inlined during index requests. To index large content: 1. Call upload
-- to begin a session and get the item reference. 1. Upload the content
-- using the item reference\'s resource name. 1. Call index with the item
-- reference as the content. For additional information, see [Create a
-- content connector using the REST
-- API](https:\/\/developers.google.com\/cloud-search\/docs\/guides\/content-connector#rest).
--
-- /See:/ 'mediaUpload' smart constructor.
data MediaUpload' = MediaUpload''
    { _muXgafv          :: !(Maybe Xgafv)
    , _muUploadProtocol :: !(Maybe Text)
    , _muResourceName   :: !Text
    , _muAccessToken    :: !(Maybe Text)
    , _muUploadType     :: !(Maybe Text)
    , _muPayload        :: !Media
    , _muCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muXgafv'
--
-- * 'muUploadProtocol'
--
-- * 'muResourceName'
--
-- * 'muAccessToken'
--
-- * 'muUploadType'
--
-- * 'muPayload'
--
-- * 'muCallback'
mediaUpload
    :: Text -- ^ 'muResourceName'
    -> Media -- ^ 'muPayload'
    -> MediaUpload'
mediaUpload pMuResourceName_ pMuPayload_ =
    MediaUpload''
    { _muXgafv = Nothing
    , _muUploadProtocol = Nothing
    , _muResourceName = pMuResourceName_
    , _muAccessToken = Nothing
    , _muUploadType = Nothing
    , _muPayload = pMuPayload_
    , _muCallback = Nothing
    }

-- | V1 error format.
muXgafv :: Lens' MediaUpload' (Maybe Xgafv)
muXgafv = lens _muXgafv (\ s a -> s{_muXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
muUploadProtocol :: Lens' MediaUpload' (Maybe Text)
muUploadProtocol
  = lens _muUploadProtocol
      (\ s a -> s{_muUploadProtocol = a})

-- | Name of the media that is being downloaded. See
-- ReadRequest.resource_name.
muResourceName :: Lens' MediaUpload' Text
muResourceName
  = lens _muResourceName
      (\ s a -> s{_muResourceName = a})

-- | OAuth access token.
muAccessToken :: Lens' MediaUpload' (Maybe Text)
muAccessToken
  = lens _muAccessToken
      (\ s a -> s{_muAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
muUploadType :: Lens' MediaUpload' (Maybe Text)
muUploadType
  = lens _muUploadType (\ s a -> s{_muUploadType = a})

-- | Multipart request metadata.
muPayload :: Lens' MediaUpload' Media
muPayload
  = lens _muPayload (\ s a -> s{_muPayload = a})

-- | JSONP
muCallback :: Lens' MediaUpload' (Maybe Text)
muCallback
  = lens _muCallback (\ s a -> s{_muCallback = a})

instance GoogleRequest MediaUpload' where
        type Rs MediaUpload' = Media
        type Scopes MediaUpload' =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient MediaUpload''{..}
          = go _muResourceName _muXgafv _muUploadProtocol
              _muAccessToken
              _muUploadType
              _muCallback
              (Just AltJSON)
              _muPayload
              cloudSearchService
          where go :<|> _
                  = buildClient (Proxy :: Proxy MediaUploadResource)
                      mempty

instance GoogleRequest (MediaUpload MediaUpload')
         where
        type Rs (MediaUpload MediaUpload') = Media
        type Scopes (MediaUpload MediaUpload') =
             Scopes MediaUpload'
        requestClient (MediaUpload MediaUpload''{..} body)
          = go _muResourceName _muXgafv _muUploadProtocol
              _muAccessToken
              _muUploadType
              _muCallback
              (Just AltJSON)
              (Just Multipart)
              _muPayload
              body
              cloudSearchService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy MediaUploadResource)
                      mempty
