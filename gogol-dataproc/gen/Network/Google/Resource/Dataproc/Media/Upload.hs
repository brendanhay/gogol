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
-- Module      : Network.Google.Resource.Dataproc.Media.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Method for media upload. Upload is supported on the URI
-- \`\/upload\/v1\/media\/{+name}\`.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.media.upload@.
module Network.Google.Resource.Dataproc.Media.Upload
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
    , muPp
    , muAccessToken
    , muUploadType
    , muPayload
    , muBearerToken
    , muCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.media.upload@ method which the
-- 'MediaUpload'' request conforms to.
type MediaUploadResource =
     "v1" :>
       "media" :>
         Capture "resourceName" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Media :> Post '[JSON] Media
       :<|>
       "upload" :>
         "v1" :>
           "media" :>
             Capture "resourceName" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               QueryParam "uploadType" AltMedia :>
                                 MultipartRelated '[JSON] Media RequestBody :>
                                   Post '[JSON] Media

-- | Method for media upload. Upload is supported on the URI
-- \`\/upload\/v1\/media\/{+name}\`.
--
-- /See:/ 'mediaUpload' smart constructor.
data MediaUpload' = MediaUpload'
    { _muXgafv          :: !(Maybe Text)
    , _muUploadProtocol :: !(Maybe Text)
    , _muResourceName   :: !Text
    , _muPp             :: !Bool
    , _muAccessToken    :: !(Maybe Text)
    , _muUploadType     :: !(Maybe Text)
    , _muPayload        :: !Media
    , _muBearerToken    :: !(Maybe Text)
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
-- * 'muPp'
--
-- * 'muAccessToken'
--
-- * 'muUploadType'
--
-- * 'muPayload'
--
-- * 'muBearerToken'
--
-- * 'muCallback'
mediaUpload
    :: Text -- ^ 'muResourceName'
    -> Media -- ^ 'muPayload'
    -> MediaUpload'
mediaUpload pMuResourceName_ pMuPayload_ =
    MediaUpload'
    { _muXgafv = Nothing
    , _muUploadProtocol = Nothing
    , _muResourceName = pMuResourceName_
    , _muPp = True
    , _muAccessToken = Nothing
    , _muUploadType = Nothing
    , _muPayload = pMuPayload_
    , _muBearerToken = Nothing
    , _muCallback = Nothing
    }

-- | V1 error format.
muXgafv :: Lens' MediaUpload' (Maybe Text)
muXgafv = lens _muXgafv (\ s a -> s{_muXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
muUploadProtocol :: Lens' MediaUpload' (Maybe Text)
muUploadProtocol
  = lens _muUploadProtocol
      (\ s a -> s{_muUploadProtocol = a})

-- | Name of the media that is being downloaded. See
-- ByteStream.ReadRequest.resource_name.
muResourceName :: Lens' MediaUpload' Text
muResourceName
  = lens _muResourceName
      (\ s a -> s{_muResourceName = a})

-- | Pretty-print response.
muPp :: Lens' MediaUpload' Bool
muPp = lens _muPp (\ s a -> s{_muPp = a})

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

-- | OAuth bearer token.
muBearerToken :: Lens' MediaUpload' (Maybe Text)
muBearerToken
  = lens _muBearerToken
      (\ s a -> s{_muBearerToken = a})

-- | JSONP
muCallback :: Lens' MediaUpload' (Maybe Text)
muCallback
  = lens _muCallback (\ s a -> s{_muCallback = a})

instance GoogleRequest MediaUpload' where
        type Rs MediaUpload' = Media
        type Scopes MediaUpload' =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read",
               "https://www.googleapis.com/auth/logging.write"]
        requestClient MediaUpload'{..}
          = go _muResourceName _muXgafv _muUploadProtocol
              (Just _muPp)
              _muAccessToken
              _muUploadType
              _muBearerToken
              _muCallback
              (Just AltJSON)
              _muPayload
              dataprocService
          where go :<|> _
                  = buildClient (Proxy :: Proxy MediaUploadResource)
                      mempty

instance GoogleRequest (MediaUpload MediaUpload')
         where
        type Rs (MediaUpload MediaUpload') = Media
        type Scopes (MediaUpload MediaUpload') =
             Scopes MediaUpload'
        requestClient (MediaUpload MediaUpload'{..} body)
          = go _muResourceName _muXgafv _muUploadProtocol
              (Just _muPp)
              _muAccessToken
              _muUploadType
              _muBearerToken
              _muCallback
              (Just AltJSON)
              (Just AltMedia)
              _muPayload
              body
              dataprocService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy MediaUploadResource)
                      mempty
