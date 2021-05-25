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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all images for the specified language and image type. Returns an
-- empty response if no images are found.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.deleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall
    (
    -- * REST Resource
      EditsImagesDeleteallResource

    -- * Creating a Request
    , editsImagesDeleteall
    , EditsImagesDeleteall

    -- * Request Lenses
    , ediXgafv
    , ediUploadProtocol
    , ediPackageName
    , ediAccessToken
    , ediUploadType
    , ediImageType
    , ediLanguage
    , ediEditId
    , ediCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.images.deleteall@ method which the
-- 'EditsImagesDeleteall' request conforms to.
type EditsImagesDeleteallResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" EditsImagesDeleteallImageType :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] ImagesDeleteAllResponse

-- | Deletes all images for the specified language and image type. Returns an
-- empty response if no images are found.
--
-- /See:/ 'editsImagesDeleteall' smart constructor.
data EditsImagesDeleteall =
  EditsImagesDeleteall'
    { _ediXgafv :: !(Maybe Xgafv)
    , _ediUploadProtocol :: !(Maybe Text)
    , _ediPackageName :: !Text
    , _ediAccessToken :: !(Maybe Text)
    , _ediUploadType :: !(Maybe Text)
    , _ediImageType :: !EditsImagesDeleteallImageType
    , _ediLanguage :: !Text
    , _ediEditId :: !Text
    , _ediCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsImagesDeleteall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ediXgafv'
--
-- * 'ediUploadProtocol'
--
-- * 'ediPackageName'
--
-- * 'ediAccessToken'
--
-- * 'ediUploadType'
--
-- * 'ediImageType'
--
-- * 'ediLanguage'
--
-- * 'ediEditId'
--
-- * 'ediCallback'
editsImagesDeleteall
    :: Text -- ^ 'ediPackageName'
    -> EditsImagesDeleteallImageType -- ^ 'ediImageType'
    -> Text -- ^ 'ediLanguage'
    -> Text -- ^ 'ediEditId'
    -> EditsImagesDeleteall
editsImagesDeleteall pEdiPackageName_ pEdiImageType_ pEdiLanguage_ pEdiEditId_ =
  EditsImagesDeleteall'
    { _ediXgafv = Nothing
    , _ediUploadProtocol = Nothing
    , _ediPackageName = pEdiPackageName_
    , _ediAccessToken = Nothing
    , _ediUploadType = Nothing
    , _ediImageType = pEdiImageType_
    , _ediLanguage = pEdiLanguage_
    , _ediEditId = pEdiEditId_
    , _ediCallback = Nothing
    }


-- | V1 error format.
ediXgafv :: Lens' EditsImagesDeleteall (Maybe Xgafv)
ediXgafv = lens _ediXgafv (\ s a -> s{_ediXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ediUploadProtocol :: Lens' EditsImagesDeleteall (Maybe Text)
ediUploadProtocol
  = lens _ediUploadProtocol
      (\ s a -> s{_ediUploadProtocol = a})

-- | Package name of the app.
ediPackageName :: Lens' EditsImagesDeleteall Text
ediPackageName
  = lens _ediPackageName
      (\ s a -> s{_ediPackageName = a})

-- | OAuth access token.
ediAccessToken :: Lens' EditsImagesDeleteall (Maybe Text)
ediAccessToken
  = lens _ediAccessToken
      (\ s a -> s{_ediAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ediUploadType :: Lens' EditsImagesDeleteall (Maybe Text)
ediUploadType
  = lens _ediUploadType
      (\ s a -> s{_ediUploadType = a})

-- | Type of the Image. Providing an image type that refers to no images is a
-- no-op.
ediImageType :: Lens' EditsImagesDeleteall EditsImagesDeleteallImageType
ediImageType
  = lens _ediImageType (\ s a -> s{_ediImageType = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German). Providing a language that is not
-- supported by the App is a no-op.
ediLanguage :: Lens' EditsImagesDeleteall Text
ediLanguage
  = lens _ediLanguage (\ s a -> s{_ediLanguage = a})

-- | Identifier of the edit.
ediEditId :: Lens' EditsImagesDeleteall Text
ediEditId
  = lens _ediEditId (\ s a -> s{_ediEditId = a})

-- | JSONP
ediCallback :: Lens' EditsImagesDeleteall (Maybe Text)
ediCallback
  = lens _ediCallback (\ s a -> s{_ediCallback = a})

instance GoogleRequest EditsImagesDeleteall where
        type Rs EditsImagesDeleteall =
             ImagesDeleteAllResponse
        type Scopes EditsImagesDeleteall =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsImagesDeleteall'{..}
          = go _ediPackageName _ediEditId _ediLanguage
              _ediImageType
              _ediXgafv
              _ediUploadProtocol
              _ediAccessToken
              _ediUploadType
              _ediCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsImagesDeleteallResource)
                      mempty
