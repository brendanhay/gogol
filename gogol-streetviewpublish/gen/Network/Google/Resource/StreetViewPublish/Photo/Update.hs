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
-- Module      : Network.Google.Resource.StreetViewPublish.Photo.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadata of a Photo, such as pose, place association,
-- connections, etc. Changing the pixels of a photo is not supported. Only
-- the fields specified in the updateMask field are used. If \`updateMask\`
-- is not present, the update applies to all fields.
-- __Note:__ To update Pose.altitude, Pose.latLngPair has to be filled as
-- well. Otherwise, the request will fail.
-- This method returns the following error codes: *
-- google.rpc.Code.PERMISSION_DENIED if the requesting user did not create
-- the requested photo. * google.rpc.Code.INVALID_ARGUMENT if the request
-- is malformed. * google.rpc.Code.NOT_FOUND if the requested photo does
-- not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still
-- being indexed.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.update@.
module Network.Google.Resource.StreetViewPublish.Photo.Update
    (
    -- * REST Resource
      PhotoUpdateResource

    -- * Creating a Request
    , photoUpdate
    , PhotoUpdate

    -- * Request Lenses
    , puXgafv
    , puUploadProtocol
    , puUpdateMask
    , puAccessToken
    , puUploadType
    , puPayload
    , puId
    , puCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.update@ method which the
-- 'PhotoUpdate' request conforms to.
type PhotoUpdateResource =
     "v1" :>
       "photo" :>
         Capture "id" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Photo :> Put '[JSON] Photo

-- | Updates the metadata of a Photo, such as pose, place association,
-- connections, etc. Changing the pixels of a photo is not supported. Only
-- the fields specified in the updateMask field are used. If \`updateMask\`
-- is not present, the update applies to all fields.
-- __Note:__ To update Pose.altitude, Pose.latLngPair has to be filled as
-- well. Otherwise, the request will fail.
-- This method returns the following error codes: *
-- google.rpc.Code.PERMISSION_DENIED if the requesting user did not create
-- the requested photo. * google.rpc.Code.INVALID_ARGUMENT if the request
-- is malformed. * google.rpc.Code.NOT_FOUND if the requested photo does
-- not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still
-- being indexed.
--
-- /See:/ 'photoUpdate' smart constructor.
data PhotoUpdate =
  PhotoUpdate'
    { _puXgafv          :: !(Maybe Xgafv)
    , _puUploadProtocol :: !(Maybe Text)
    , _puUpdateMask     :: !(Maybe GFieldMask)
    , _puAccessToken    :: !(Maybe Text)
    , _puUploadType     :: !(Maybe Text)
    , _puPayload        :: !Photo
    , _puId             :: !Text
    , _puCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PhotoUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puUpdateMask'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puPayload'
--
-- * 'puId'
--
-- * 'puCallback'
photoUpdate
    :: Photo -- ^ 'puPayload'
    -> Text -- ^ 'puId'
    -> PhotoUpdate
photoUpdate pPuPayload_ pPuId_ =
  PhotoUpdate'
    { _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puUpdateMask = Nothing
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puPayload = pPuPayload_
    , _puId = pPuId_
    , _puCallback = Nothing
    }

-- | V1 error format.
puXgafv :: Lens' PhotoUpdate (Maybe Xgafv)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' PhotoUpdate (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | Mask that identifies fields on the photo metadata to update. If not
-- present, the old Photo metadata will be entirely replaced with the new
-- Photo metadata in this request. The update fails if invalid fields are
-- specified. Multiple fields can be specified in a comma-delimited list.
-- The following fields are valid: * \`pose.heading\` * \`pose.latLngPair\`
-- * \`pose.pitch\` * \`pose.roll\` * \`pose.level\` * \`pose.altitude\` *
-- \`connections\` * \`places\`
-- __Note:__ Repeated fields in updateMask mean the entire set of repeated
-- values will be replaced with the new contents. For example, if
-- updateMask contains \`connections\` and
-- \`UpdatePhotoRequest.photo.connections\` is empty, all connections will
-- be removed.
puUpdateMask :: Lens' PhotoUpdate (Maybe GFieldMask)
puUpdateMask
  = lens _puUpdateMask (\ s a -> s{_puUpdateMask = a})

-- | OAuth access token.
puAccessToken :: Lens' PhotoUpdate (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' PhotoUpdate (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | Multipart request metadata.
puPayload :: Lens' PhotoUpdate Photo
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | Required. A unique identifier for a photo.
puId :: Lens' PhotoUpdate Text
puId = lens _puId (\ s a -> s{_puId = a})

-- | JSONP
puCallback :: Lens' PhotoUpdate (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest PhotoUpdate where
        type Rs PhotoUpdate = Photo
        type Scopes PhotoUpdate =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotoUpdate'{..}
          = go _puId _puXgafv _puUploadProtocol _puUpdateMask
              _puAccessToken
              _puUploadType
              _puCallback
              (Just AltJSON)
              _puPayload
              streetViewPublishService
          where go
                  = buildClient (Proxy :: Proxy PhotoUpdateResource)
                      mempty
