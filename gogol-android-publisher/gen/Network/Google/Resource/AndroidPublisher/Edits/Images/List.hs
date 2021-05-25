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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all images. The response may be empty.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.list@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.List
    (
    -- * REST Resource
      EditsImagesListResource

    -- * Creating a Request
    , editsImagesList
    , EditsImagesList

    -- * Request Lenses
    , eilXgafv
    , eilUploadProtocol
    , eilPackageName
    , eilAccessToken
    , eilUploadType
    , eilImageType
    , eilLanguage
    , eilEditId
    , eilCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.images.list@ method which the
-- 'EditsImagesList' request conforms to.
type EditsImagesListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" EditsImagesListImageType :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ImagesListResponse

-- | Lists all images. The response may be empty.
--
-- /See:/ 'editsImagesList' smart constructor.
data EditsImagesList =
  EditsImagesList'
    { _eilXgafv :: !(Maybe Xgafv)
    , _eilUploadProtocol :: !(Maybe Text)
    , _eilPackageName :: !Text
    , _eilAccessToken :: !(Maybe Text)
    , _eilUploadType :: !(Maybe Text)
    , _eilImageType :: !EditsImagesListImageType
    , _eilLanguage :: !Text
    , _eilEditId :: !Text
    , _eilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsImagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eilXgafv'
--
-- * 'eilUploadProtocol'
--
-- * 'eilPackageName'
--
-- * 'eilAccessToken'
--
-- * 'eilUploadType'
--
-- * 'eilImageType'
--
-- * 'eilLanguage'
--
-- * 'eilEditId'
--
-- * 'eilCallback'
editsImagesList
    :: Text -- ^ 'eilPackageName'
    -> EditsImagesListImageType -- ^ 'eilImageType'
    -> Text -- ^ 'eilLanguage'
    -> Text -- ^ 'eilEditId'
    -> EditsImagesList
editsImagesList pEilPackageName_ pEilImageType_ pEilLanguage_ pEilEditId_ =
  EditsImagesList'
    { _eilXgafv = Nothing
    , _eilUploadProtocol = Nothing
    , _eilPackageName = pEilPackageName_
    , _eilAccessToken = Nothing
    , _eilUploadType = Nothing
    , _eilImageType = pEilImageType_
    , _eilLanguage = pEilLanguage_
    , _eilEditId = pEilEditId_
    , _eilCallback = Nothing
    }


-- | V1 error format.
eilXgafv :: Lens' EditsImagesList (Maybe Xgafv)
eilXgafv = lens _eilXgafv (\ s a -> s{_eilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eilUploadProtocol :: Lens' EditsImagesList (Maybe Text)
eilUploadProtocol
  = lens _eilUploadProtocol
      (\ s a -> s{_eilUploadProtocol = a})

-- | Package name of the app.
eilPackageName :: Lens' EditsImagesList Text
eilPackageName
  = lens _eilPackageName
      (\ s a -> s{_eilPackageName = a})

-- | OAuth access token.
eilAccessToken :: Lens' EditsImagesList (Maybe Text)
eilAccessToken
  = lens _eilAccessToken
      (\ s a -> s{_eilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eilUploadType :: Lens' EditsImagesList (Maybe Text)
eilUploadType
  = lens _eilUploadType
      (\ s a -> s{_eilUploadType = a})

-- | Type of the Image. Providing an image type that refers to no images will
-- return an empty response.
eilImageType :: Lens' EditsImagesList EditsImagesListImageType
eilImageType
  = lens _eilImageType (\ s a -> s{_eilImageType = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German). There must be a store listing for the
-- specified language.
eilLanguage :: Lens' EditsImagesList Text
eilLanguage
  = lens _eilLanguage (\ s a -> s{_eilLanguage = a})

-- | Identifier of the edit.
eilEditId :: Lens' EditsImagesList Text
eilEditId
  = lens _eilEditId (\ s a -> s{_eilEditId = a})

-- | JSONP
eilCallback :: Lens' EditsImagesList (Maybe Text)
eilCallback
  = lens _eilCallback (\ s a -> s{_eilCallback = a})

instance GoogleRequest EditsImagesList where
        type Rs EditsImagesList = ImagesListResponse
        type Scopes EditsImagesList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsImagesList'{..}
          = go _eilPackageName _eilEditId _eilLanguage
              _eilImageType
              _eilXgafv
              _eilUploadProtocol
              _eilAccessToken
              _eilUploadType
              _eilCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsImagesListResource)
                      mempty
