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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a new image and adds it to the list of images for the specified
-- language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.images.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Upload
    (
    -- * REST Resource
      EditsImagesUploadResource

    -- * Creating a Request
    , editsImagesUpload
    , EditsImagesUpload

    -- * Request Lenses
    , eiuPackageName
    , eiuImageType
    , eiuLanguage
    , eiuEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.images.upload@ method which the
-- 'EditsImagesUpload' request conforms to.
type EditsImagesUploadResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" EditsImagesUploadImageType :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] ImagesUploadResponse
       :<|>
       "upload" :>
         "androidpublisher" :>
           "v2" :>
             "applications" :>
               Capture "packageName" Text :>
                 "edits" :>
                   Capture "editId" Text :>
                     "listings" :>
                       Capture "language" Text :>
                         Capture "imageType" EditsImagesUploadImageType :>
                           QueryParam "alt" AltJSON :>
                             QueryParam "uploadType" AltMedia :>
                               ReqBody '[OctetStream] RequestBody :>
                                 Post '[JSON] ImagesUploadResponse

-- | Uploads a new image and adds it to the list of images for the specified
-- language and image type.
--
-- /See:/ 'editsImagesUpload' smart constructor.
data EditsImagesUpload = EditsImagesUpload
    { _eiuPackageName :: !Text
    , _eiuImageType   :: !EditsImagesUploadImageType
    , _eiuLanguage    :: !Text
    , _eiuEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiuPackageName'
--
-- * 'eiuImageType'
--
-- * 'eiuLanguage'
--
-- * 'eiuEditId'
editsImagesUpload
    :: Text -- ^ 'eiuPackageName'
    -> EditsImagesUploadImageType -- ^ 'eiuImageType'
    -> Text -- ^ 'eiuLanguage'
    -> Text -- ^ 'eiuEditId'
    -> EditsImagesUpload
editsImagesUpload pEiuPackageName_ pEiuImageType_ pEiuLanguage_ pEiuEditId_ =
    EditsImagesUpload
    { _eiuPackageName = pEiuPackageName_
    , _eiuImageType = pEiuImageType_
    , _eiuLanguage = pEiuLanguage_
    , _eiuEditId = pEiuEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eiuPackageName :: Lens' EditsImagesUpload Text
eiuPackageName
  = lens _eiuPackageName
      (\ s a -> s{_eiuPackageName = a})

eiuImageType :: Lens' EditsImagesUpload EditsImagesUploadImageType
eiuImageType
  = lens _eiuImageType (\ s a -> s{_eiuImageType = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eiuLanguage :: Lens' EditsImagesUpload Text
eiuLanguage
  = lens _eiuLanguage (\ s a -> s{_eiuLanguage = a})

-- | Unique identifier for this edit.
eiuEditId :: Lens' EditsImagesUpload Text
eiuEditId
  = lens _eiuEditId (\ s a -> s{_eiuEditId = a})

instance GoogleRequest EditsImagesUpload where
        type Rs EditsImagesUpload = ImagesUploadResponse
        type Scopes EditsImagesUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsImagesUpload{..}
          = go _eiuPackageName _eiuEditId _eiuLanguage
              _eiuImageType
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy EditsImagesUploadResource)
                      mempty

instance GoogleRequest
         (MediaUpload EditsImagesUpload) where
        type Rs (MediaUpload EditsImagesUpload) =
             ImagesUploadResponse
        type Scopes (MediaUpload EditsImagesUpload) =
             Scopes EditsImagesUpload
        requestClient
          (MediaUpload EditsImagesUpload{..} body)
          = go _eiuPackageName _eiuEditId _eiuLanguage
              _eiuImageType
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy EditsImagesUploadResource)
                      mempty
