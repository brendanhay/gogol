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
-- Module      : Network.Google.Resource.StreetViewPublish.Photo.StartUpload
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an upload session to start uploading photo bytes. The method
-- uses the upload URL of the returned UploadRef to upload the bytes for
-- the Photo. In addition to the photo requirements shown in
-- https:\/\/support.google.com\/maps\/answer\/7012050?ref_topic=6275604,
-- the photo must meet the following requirements: * Photo Sphere XMP
-- metadata must be included in the photo metadata. See
-- https:\/\/developers.google.com\/streetview\/spherical-metadata for the
-- required fields. * The pixel size of the photo must meet the size
-- requirements listed in
-- https:\/\/support.google.com\/maps\/answer\/7012050?ref_topic=6275604,
-- and the photo must be a full 360 horizontally. After the upload
-- completes, the method uses UploadRef with CreatePhoto to create the
-- Photo object entry.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.startUpload@.
module Network.Google.Resource.StreetViewPublish.Photo.StartUpload
    (
    -- * REST Resource
      PhotoStartUploadResource

    -- * Creating a Request
    , photoStartUpload
    , PhotoStartUpload

    -- * Request Lenses
    , psuXgafv
    , psuUploadProtocol
    , psuAccessToken
    , psuUploadType
    , psuPayload
    , psuCallback
    ) where

import Network.Google.Prelude
import Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.startUpload@ method which the
-- 'PhotoStartUpload' request conforms to.
type PhotoStartUploadResource =
     "v1" :>
       "photo:startUpload" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Empty :> Post '[JSON] UploadRef

-- | Creates an upload session to start uploading photo bytes. The method
-- uses the upload URL of the returned UploadRef to upload the bytes for
-- the Photo. In addition to the photo requirements shown in
-- https:\/\/support.google.com\/maps\/answer\/7012050?ref_topic=6275604,
-- the photo must meet the following requirements: * Photo Sphere XMP
-- metadata must be included in the photo metadata. See
-- https:\/\/developers.google.com\/streetview\/spherical-metadata for the
-- required fields. * The pixel size of the photo must meet the size
-- requirements listed in
-- https:\/\/support.google.com\/maps\/answer\/7012050?ref_topic=6275604,
-- and the photo must be a full 360 horizontally. After the upload
-- completes, the method uses UploadRef with CreatePhoto to create the
-- Photo object entry.
--
-- /See:/ 'photoStartUpload' smart constructor.
data PhotoStartUpload =
  PhotoStartUpload'
    { _psuXgafv :: !(Maybe Xgafv)
    , _psuUploadProtocol :: !(Maybe Text)
    , _psuAccessToken :: !(Maybe Text)
    , _psuUploadType :: !(Maybe Text)
    , _psuPayload :: !Empty
    , _psuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhotoStartUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuXgafv'
--
-- * 'psuUploadProtocol'
--
-- * 'psuAccessToken'
--
-- * 'psuUploadType'
--
-- * 'psuPayload'
--
-- * 'psuCallback'
photoStartUpload
    :: Empty -- ^ 'psuPayload'
    -> PhotoStartUpload
photoStartUpload pPsuPayload_ =
  PhotoStartUpload'
    { _psuXgafv = Nothing
    , _psuUploadProtocol = Nothing
    , _psuAccessToken = Nothing
    , _psuUploadType = Nothing
    , _psuPayload = pPsuPayload_
    , _psuCallback = Nothing
    }


-- | V1 error format.
psuXgafv :: Lens' PhotoStartUpload (Maybe Xgafv)
psuXgafv = lens _psuXgafv (\ s a -> s{_psuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psuUploadProtocol :: Lens' PhotoStartUpload (Maybe Text)
psuUploadProtocol
  = lens _psuUploadProtocol
      (\ s a -> s{_psuUploadProtocol = a})

-- | OAuth access token.
psuAccessToken :: Lens' PhotoStartUpload (Maybe Text)
psuAccessToken
  = lens _psuAccessToken
      (\ s a -> s{_psuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psuUploadType :: Lens' PhotoStartUpload (Maybe Text)
psuUploadType
  = lens _psuUploadType
      (\ s a -> s{_psuUploadType = a})

-- | Multipart request metadata.
psuPayload :: Lens' PhotoStartUpload Empty
psuPayload
  = lens _psuPayload (\ s a -> s{_psuPayload = a})

-- | JSONP
psuCallback :: Lens' PhotoStartUpload (Maybe Text)
psuCallback
  = lens _psuCallback (\ s a -> s{_psuCallback = a})

instance GoogleRequest PhotoStartUpload where
        type Rs PhotoStartUpload = UploadRef
        type Scopes PhotoStartUpload =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotoStartUpload'{..}
          = go _psuXgafv _psuUploadProtocol _psuAccessToken
              _psuUploadType
              _psuCallback
              (Just AltJSON)
              _psuPayload
              streetViewPublishService
          where go
                  = buildClient
                      (Proxy :: Proxy PhotoStartUploadResource)
                      mempty
