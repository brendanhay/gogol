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
-- Module      : Network.Google.Resource.StreetViewPublish.Photo.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Photo and its metadata. This method returns the following
-- error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user
-- did not create the requested photo. * google.rpc.Code.NOT_FOUND if the
-- photo ID does not exist.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.delete@.
module Network.Google.Resource.StreetViewPublish.Photo.Delete
    (
    -- * REST Resource
      PhotoDeleteResource

    -- * Creating a Request
    , photoDelete
    , PhotoDelete

    -- * Request Lenses
    , pdXgafv
    , pdUploadProtocol
    , pdAccessToken
    , pdUploadType
    , pdPhotoId
    , pdCallback
    ) where

import Network.Google.Prelude
import Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.delete@ method which the
-- 'PhotoDelete' request conforms to.
type PhotoDeleteResource =
     "v1" :>
       "photo" :>
         Capture "photoId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a Photo and its metadata. This method returns the following
-- error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user
-- did not create the requested photo. * google.rpc.Code.NOT_FOUND if the
-- photo ID does not exist.
--
-- /See:/ 'photoDelete' smart constructor.
data PhotoDelete =
  PhotoDelete'
    { _pdXgafv :: !(Maybe Xgafv)
    , _pdUploadProtocol :: !(Maybe Text)
    , _pdAccessToken :: !(Maybe Text)
    , _pdUploadType :: !(Maybe Text)
    , _pdPhotoId :: !Text
    , _pdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhotoDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdXgafv'
--
-- * 'pdUploadProtocol'
--
-- * 'pdAccessToken'
--
-- * 'pdUploadType'
--
-- * 'pdPhotoId'
--
-- * 'pdCallback'
photoDelete
    :: Text -- ^ 'pdPhotoId'
    -> PhotoDelete
photoDelete pPdPhotoId_ =
  PhotoDelete'
    { _pdXgafv = Nothing
    , _pdUploadProtocol = Nothing
    , _pdAccessToken = Nothing
    , _pdUploadType = Nothing
    , _pdPhotoId = pPdPhotoId_
    , _pdCallback = Nothing
    }


-- | V1 error format.
pdXgafv :: Lens' PhotoDelete (Maybe Xgafv)
pdXgafv = lens _pdXgafv (\ s a -> s{_pdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdUploadProtocol :: Lens' PhotoDelete (Maybe Text)
pdUploadProtocol
  = lens _pdUploadProtocol
      (\ s a -> s{_pdUploadProtocol = a})

-- | OAuth access token.
pdAccessToken :: Lens' PhotoDelete (Maybe Text)
pdAccessToken
  = lens _pdAccessToken
      (\ s a -> s{_pdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdUploadType :: Lens' PhotoDelete (Maybe Text)
pdUploadType
  = lens _pdUploadType (\ s a -> s{_pdUploadType = a})

-- | Required. ID of the Photo.
pdPhotoId :: Lens' PhotoDelete Text
pdPhotoId
  = lens _pdPhotoId (\ s a -> s{_pdPhotoId = a})

-- | JSONP
pdCallback :: Lens' PhotoDelete (Maybe Text)
pdCallback
  = lens _pdCallback (\ s a -> s{_pdCallback = a})

instance GoogleRequest PhotoDelete where
        type Rs PhotoDelete = Empty
        type Scopes PhotoDelete =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotoDelete'{..}
          = go _pdPhotoId _pdXgafv _pdUploadProtocol
              _pdAccessToken
              _pdUploadType
              _pdCallback
              (Just AltJSON)
              streetViewPublishService
          where go
                  = buildClient (Proxy :: Proxy PhotoDeleteResource)
                      mempty
