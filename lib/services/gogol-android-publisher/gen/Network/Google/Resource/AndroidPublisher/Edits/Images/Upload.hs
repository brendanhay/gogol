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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.Upload
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an image of the specified language and image type, and adds to
-- the edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Upload
    (
    -- * REST Resource
      EditsImagesUploadResource

    -- * Creating a Request
    , editsImagesUpload
    , EditsImagesUpload

    -- * Request Lenses
    , eiuXgafv
    , eiuUploadProtocol
    , eiuPackageName
    , eiuAccessToken
    , eiuUploadType
    , eiuImageType
    , eiuLanguage
    , eiuEditId
    , eiuCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.images.upload@ method which the
-- 'EditsImagesUpload' request conforms to.
type EditsImagesUploadResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" EditsImagesUploadImageType :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON] ImagesUploadResponse
       :<|>
       "upload" :>
         "androidpublisher" :>
           "v3" :>
             "applications" :>
               Capture "packageName" Text :>
                 "edits" :>
                   Capture "editId" Text :>
                     "listings" :>
                       Capture "language" Text :>
                         Capture "imageType" EditsImagesUploadImageType :>
                           QueryParam "$.xgafv" Xgafv :>
                             QueryParam "upload_protocol" Text :>
                               QueryParam "access_token" Text :>
                                 QueryParam "uploadType" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       QueryParam "uploadType" AltMedia :>
                                         AltMedia :>
                                           Post '[JSON] ImagesUploadResponse

-- | Uploads an image of the specified language and image type, and adds to
-- the edit.
--
-- /See:/ 'editsImagesUpload' smart constructor.
data EditsImagesUpload =
  EditsImagesUpload'
    { _eiuXgafv :: !(Maybe Xgafv)
    , _eiuUploadProtocol :: !(Maybe Text)
    , _eiuPackageName :: !Text
    , _eiuAccessToken :: !(Maybe Text)
    , _eiuUploadType :: !(Maybe Text)
    , _eiuImageType :: !EditsImagesUploadImageType
    , _eiuLanguage :: !Text
    , _eiuEditId :: !Text
    , _eiuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsImagesUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiuXgafv'
--
-- * 'eiuUploadProtocol'
--
-- * 'eiuPackageName'
--
-- * 'eiuAccessToken'
--
-- * 'eiuUploadType'
--
-- * 'eiuImageType'
--
-- * 'eiuLanguage'
--
-- * 'eiuEditId'
--
-- * 'eiuCallback'
editsImagesUpload
    :: Text -- ^ 'eiuPackageName'
    -> EditsImagesUploadImageType -- ^ 'eiuImageType'
    -> Text -- ^ 'eiuLanguage'
    -> Text -- ^ 'eiuEditId'
    -> EditsImagesUpload
editsImagesUpload pEiuPackageName_ pEiuImageType_ pEiuLanguage_ pEiuEditId_ =
  EditsImagesUpload'
    { _eiuXgafv = Nothing
    , _eiuUploadProtocol = Nothing
    , _eiuPackageName = pEiuPackageName_
    , _eiuAccessToken = Nothing
    , _eiuUploadType = Nothing
    , _eiuImageType = pEiuImageType_
    , _eiuLanguage = pEiuLanguage_
    , _eiuEditId = pEiuEditId_
    , _eiuCallback = Nothing
    }


-- | V1 error format.
eiuXgafv :: Lens' EditsImagesUpload (Maybe Xgafv)
eiuXgafv = lens _eiuXgafv (\ s a -> s{_eiuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eiuUploadProtocol :: Lens' EditsImagesUpload (Maybe Text)
eiuUploadProtocol
  = lens _eiuUploadProtocol
      (\ s a -> s{_eiuUploadProtocol = a})

-- | Package name of the app.
eiuPackageName :: Lens' EditsImagesUpload Text
eiuPackageName
  = lens _eiuPackageName
      (\ s a -> s{_eiuPackageName = a})

-- | OAuth access token.
eiuAccessToken :: Lens' EditsImagesUpload (Maybe Text)
eiuAccessToken
  = lens _eiuAccessToken
      (\ s a -> s{_eiuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eiuUploadType :: Lens' EditsImagesUpload (Maybe Text)
eiuUploadType
  = lens _eiuUploadType
      (\ s a -> s{_eiuUploadType = a})

-- | Type of the Image.
eiuImageType :: Lens' EditsImagesUpload EditsImagesUploadImageType
eiuImageType
  = lens _eiuImageType (\ s a -> s{_eiuImageType = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German). Providing a language that is not
-- supported by the App is a no-op.
eiuLanguage :: Lens' EditsImagesUpload Text
eiuLanguage
  = lens _eiuLanguage (\ s a -> s{_eiuLanguage = a})

-- | Identifier of the edit.
eiuEditId :: Lens' EditsImagesUpload Text
eiuEditId
  = lens _eiuEditId (\ s a -> s{_eiuEditId = a})

-- | JSONP
eiuCallback :: Lens' EditsImagesUpload (Maybe Text)
eiuCallback
  = lens _eiuCallback (\ s a -> s{_eiuCallback = a})

instance GoogleRequest EditsImagesUpload where
        type Rs EditsImagesUpload = ImagesUploadResponse
        type Scopes EditsImagesUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsImagesUpload'{..}
          = go _eiuPackageName _eiuEditId _eiuLanguage
              _eiuImageType
              _eiuXgafv
              _eiuUploadProtocol
              _eiuAccessToken
              _eiuUploadType
              _eiuCallback
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy EditsImagesUploadResource)
                      mempty

instance GoogleRequest
           (MediaUpload EditsImagesUpload)
         where
        type Rs (MediaUpload EditsImagesUpload) =
             ImagesUploadResponse
        type Scopes (MediaUpload EditsImagesUpload) =
             Scopes EditsImagesUpload
        requestClient
          (MediaUpload EditsImagesUpload'{..} body)
          = go _eiuPackageName _eiuEditId _eiuLanguage
              _eiuImageType
              _eiuXgafv
              _eiuUploadProtocol
              _eiuAccessToken
              _eiuUploadType
              _eiuCallback
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy EditsImagesUploadResource)
                      mempty
