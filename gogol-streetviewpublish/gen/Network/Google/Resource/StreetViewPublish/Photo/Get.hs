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
-- Module      : Network.Google.Resource.StreetViewPublish.Photo.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of the specified Photo. This method returns the
-- following error codes: * google.rpc.Code.PERMISSION_DENIED if the
-- requesting user did not create the requested Photo. *
-- google.rpc.Code.NOT_FOUND if the requested Photo does not exist. *
-- google.rpc.Code.UNAVAILABLE if the requested Photo is still being
-- indexed.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.get@.
module Network.Google.Resource.StreetViewPublish.Photo.Get
    (
    -- * REST Resource
      PhotoGetResource

    -- * Creating a Request
    , photoGet
    , PhotoGet

    -- * Request Lenses
    , pgXgafv
    , pgLanguageCode
    , pgUploadProtocol
    , pgAccessToken
    , pgUploadType
    , pgView
    , pgPhotoId
    , pgCallback
    ) where

import Network.Google.Prelude
import Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.get@ method which the
-- 'PhotoGet' request conforms to.
type PhotoGetResource =
     "v1" :>
       "photo" :>
         Capture "photoId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "view" PhotoGetView :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Photo

-- | Gets the metadata of the specified Photo. This method returns the
-- following error codes: * google.rpc.Code.PERMISSION_DENIED if the
-- requesting user did not create the requested Photo. *
-- google.rpc.Code.NOT_FOUND if the requested Photo does not exist. *
-- google.rpc.Code.UNAVAILABLE if the requested Photo is still being
-- indexed.
--
-- /See:/ 'photoGet' smart constructor.
data PhotoGet =
  PhotoGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgLanguageCode :: !(Maybe Text)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgAccessToken :: !(Maybe Text)
    , _pgUploadType :: !(Maybe Text)
    , _pgView :: !(Maybe PhotoGetView)
    , _pgPhotoId :: !Text
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhotoGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgLanguageCode'
--
-- * 'pgUploadProtocol'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgView'
--
-- * 'pgPhotoId'
--
-- * 'pgCallback'
photoGet
    :: Text -- ^ 'pgPhotoId'
    -> PhotoGet
photoGet pPgPhotoId_ =
  PhotoGet'
    { _pgXgafv = Nothing
    , _pgLanguageCode = Nothing
    , _pgUploadProtocol = Nothing
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgView = Nothing
    , _pgPhotoId = pPgPhotoId_
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' PhotoGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier. If
-- language_code is unspecified, the user\'s language preference for Google
-- services is used.
pgLanguageCode :: Lens' PhotoGet (Maybe Text)
pgLanguageCode
  = lens _pgLanguageCode
      (\ s a -> s{_pgLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PhotoGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | OAuth access token.
pgAccessToken :: Lens' PhotoGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PhotoGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | Required. Specifies if a download URL for the photo bytes should be
-- returned in the Photo response.
pgView :: Lens' PhotoGet (Maybe PhotoGetView)
pgView = lens _pgView (\ s a -> s{_pgView = a})

-- | Required. ID of the Photo.
pgPhotoId :: Lens' PhotoGet Text
pgPhotoId
  = lens _pgPhotoId (\ s a -> s{_pgPhotoId = a})

-- | JSONP
pgCallback :: Lens' PhotoGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PhotoGet where
        type Rs PhotoGet = Photo
        type Scopes PhotoGet =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotoGet'{..}
          = go _pgPhotoId _pgXgafv _pgLanguageCode
              _pgUploadProtocol
              _pgAccessToken
              _pgUploadType
              _pgView
              _pgCallback
              (Just AltJSON)
              streetViewPublishService
          where go
                  = buildClient (Proxy :: Proxy PhotoGetResource)
                      mempty
