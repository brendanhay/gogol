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
-- Module      : Network.Google.Resource.StreetViewPublish.Photo.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- After the client finishes uploading the photo with the returned
-- UploadRef, CreatePhoto publishes the uploaded Photo to Street View on
-- Google Maps. Currently, the only way to set heading, pitch, and roll in
-- CreatePhoto is through the [Photo Sphere XMP
-- metadata](https:\/\/developers.google.com\/streetview\/spherical-metadata)
-- in the photo bytes. CreatePhoto ignores the \`pose.heading\`,
-- \`pose.pitch\`, \`pose.roll\`, \`pose.altitude\`, and \`pose.level\`
-- fields in Pose. This method returns the following error codes: *
-- google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if the
-- uploaded photo is not a 360 photo. * google.rpc.Code.NOT_FOUND if the
-- upload reference does not exist. * google.rpc.Code.RESOURCE_EXHAUSTED if
-- the account has reached the storage limit.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.create@.
module Network.Google.Resource.StreetViewPublish.Photo.Create
    (
    -- * REST Resource
      PhotoCreateResource

    -- * Creating a Request
    , photoCreate
    , PhotoCreate

    -- * Request Lenses
    , pcXgafv
    , pcUploadProtocol
    , pcAccessToken
    , pcUploadType
    , pcPayload
    , pcCallback
    ) where

import Network.Google.Prelude
import Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.create@ method which the
-- 'PhotoCreate' request conforms to.
type PhotoCreateResource =
     "v1" :>
       "photo" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Photo :> Post '[JSON] Photo

-- | After the client finishes uploading the photo with the returned
-- UploadRef, CreatePhoto publishes the uploaded Photo to Street View on
-- Google Maps. Currently, the only way to set heading, pitch, and roll in
-- CreatePhoto is through the [Photo Sphere XMP
-- metadata](https:\/\/developers.google.com\/streetview\/spherical-metadata)
-- in the photo bytes. CreatePhoto ignores the \`pose.heading\`,
-- \`pose.pitch\`, \`pose.roll\`, \`pose.altitude\`, and \`pose.level\`
-- fields in Pose. This method returns the following error codes: *
-- google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if the
-- uploaded photo is not a 360 photo. * google.rpc.Code.NOT_FOUND if the
-- upload reference does not exist. * google.rpc.Code.RESOURCE_EXHAUSTED if
-- the account has reached the storage limit.
--
-- /See:/ 'photoCreate' smart constructor.
data PhotoCreate =
  PhotoCreate'
    { _pcXgafv :: !(Maybe Xgafv)
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcAccessToken :: !(Maybe Text)
    , _pcUploadType :: !(Maybe Text)
    , _pcPayload :: !Photo
    , _pcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhotoCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcXgafv'
--
-- * 'pcUploadProtocol'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcPayload'
--
-- * 'pcCallback'
photoCreate
    :: Photo -- ^ 'pcPayload'
    -> PhotoCreate
photoCreate pPcPayload_ =
  PhotoCreate'
    { _pcXgafv = Nothing
    , _pcUploadProtocol = Nothing
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcPayload = pPcPayload_
    , _pcCallback = Nothing
    }


-- | V1 error format.
pcXgafv :: Lens' PhotoCreate (Maybe Xgafv)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' PhotoCreate (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | OAuth access token.
pcAccessToken :: Lens' PhotoCreate (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' PhotoCreate (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | Multipart request metadata.
pcPayload :: Lens' PhotoCreate Photo
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | JSONP
pcCallback :: Lens' PhotoCreate (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleRequest PhotoCreate where
        type Rs PhotoCreate = Photo
        type Scopes PhotoCreate =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotoCreate'{..}
          = go _pcXgafv _pcUploadProtocol _pcAccessToken
              _pcUploadType
              _pcCallback
              (Just AltJSON)
              _pcPayload
              streetViewPublishService
          where go
                  = buildClient (Proxy :: Proxy PhotoCreateResource)
                      mempty
