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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the image (specified by id) from the edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.delete@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Delete
    (
    -- * REST Resource
      EditsImagesDeleteResource

    -- * Creating a Request
    , editsImagesDelete
    , EditsImagesDelete

    -- * Request Lenses
    , eidXgafv
    , eidUploadProtocol
    , eidPackageName
    , eidAccessToken
    , eidUploadType
    , eidImageType
    , eidImageId
    , eidLanguage
    , eidEditId
    , eidCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.images.delete@ method which the
-- 'EditsImagesDelete' request conforms to.
type EditsImagesDeleteResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" EditsImagesDeleteImageType :>
                       Capture "imageId" Text :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ 'editsImagesDelete' smart constructor.
data EditsImagesDelete =
  EditsImagesDelete'
    { _eidXgafv :: !(Maybe Xgafv)
    , _eidUploadProtocol :: !(Maybe Text)
    , _eidPackageName :: !Text
    , _eidAccessToken :: !(Maybe Text)
    , _eidUploadType :: !(Maybe Text)
    , _eidImageType :: !EditsImagesDeleteImageType
    , _eidImageId :: !Text
    , _eidLanguage :: !Text
    , _eidEditId :: !Text
    , _eidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsImagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidXgafv'
--
-- * 'eidUploadProtocol'
--
-- * 'eidPackageName'
--
-- * 'eidAccessToken'
--
-- * 'eidUploadType'
--
-- * 'eidImageType'
--
-- * 'eidImageId'
--
-- * 'eidLanguage'
--
-- * 'eidEditId'
--
-- * 'eidCallback'
editsImagesDelete
    :: Text -- ^ 'eidPackageName'
    -> EditsImagesDeleteImageType -- ^ 'eidImageType'
    -> Text -- ^ 'eidImageId'
    -> Text -- ^ 'eidLanguage'
    -> Text -- ^ 'eidEditId'
    -> EditsImagesDelete
editsImagesDelete pEidPackageName_ pEidImageType_ pEidImageId_ pEidLanguage_ pEidEditId_ =
  EditsImagesDelete'
    { _eidXgafv = Nothing
    , _eidUploadProtocol = Nothing
    , _eidPackageName = pEidPackageName_
    , _eidAccessToken = Nothing
    , _eidUploadType = Nothing
    , _eidImageType = pEidImageType_
    , _eidImageId = pEidImageId_
    , _eidLanguage = pEidLanguage_
    , _eidEditId = pEidEditId_
    , _eidCallback = Nothing
    }


-- | V1 error format.
eidXgafv :: Lens' EditsImagesDelete (Maybe Xgafv)
eidXgafv = lens _eidXgafv (\ s a -> s{_eidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eidUploadProtocol :: Lens' EditsImagesDelete (Maybe Text)
eidUploadProtocol
  = lens _eidUploadProtocol
      (\ s a -> s{_eidUploadProtocol = a})

-- | Package name of the app.
eidPackageName :: Lens' EditsImagesDelete Text
eidPackageName
  = lens _eidPackageName
      (\ s a -> s{_eidPackageName = a})

-- | OAuth access token.
eidAccessToken :: Lens' EditsImagesDelete (Maybe Text)
eidAccessToken
  = lens _eidAccessToken
      (\ s a -> s{_eidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eidUploadType :: Lens' EditsImagesDelete (Maybe Text)
eidUploadType
  = lens _eidUploadType
      (\ s a -> s{_eidUploadType = a})

-- | Type of the Image.
eidImageType :: Lens' EditsImagesDelete EditsImagesDeleteImageType
eidImageType
  = lens _eidImageType (\ s a -> s{_eidImageType = a})

-- | Unique identifier an image within the set of images attached to this
-- edit.
eidImageId :: Lens' EditsImagesDelete Text
eidImageId
  = lens _eidImageId (\ s a -> s{_eidImageId = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German).
eidLanguage :: Lens' EditsImagesDelete Text
eidLanguage
  = lens _eidLanguage (\ s a -> s{_eidLanguage = a})

-- | Identifier of the edit.
eidEditId :: Lens' EditsImagesDelete Text
eidEditId
  = lens _eidEditId (\ s a -> s{_eidEditId = a})

-- | JSONP
eidCallback :: Lens' EditsImagesDelete (Maybe Text)
eidCallback
  = lens _eidCallback (\ s a -> s{_eidCallback = a})

instance GoogleRequest EditsImagesDelete where
        type Rs EditsImagesDelete = ()
        type Scopes EditsImagesDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsImagesDelete'{..}
          = go _eidPackageName _eidEditId _eidLanguage
              _eidImageType
              _eidImageId
              _eidXgafv
              _eidUploadProtocol
              _eidAccessToken
              _eidUploadType
              _eidCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsImagesDeleteResource)
                      mempty
