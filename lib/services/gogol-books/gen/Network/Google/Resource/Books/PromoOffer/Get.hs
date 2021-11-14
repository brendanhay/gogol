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
-- Module      : Network.Google.Resource.Books.PromoOffer.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of promo offers available to the user
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.promooffer.get@.
module Network.Google.Resource.Books.PromoOffer.Get
    (
    -- * REST Resource
      PromoOfferGetResource

    -- * Creating a Request
    , promoOfferGet
    , PromoOfferGet

    -- * Request Lenses
    , pogXgafv
    , pogManufacturer
    , pogUploadProtocol
    , pogSerial
    , pogAccessToken
    , pogDevice
    , pogUploadType
    , pogModel
    , pogProduct
    , pogAndroidId
    , pogCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.promooffer.get@ method which the
-- 'PromoOfferGet' request conforms to.
type PromoOfferGetResource =
     "books" :>
       "v1" :>
         "promooffer" :>
           "get" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "manufacturer" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "serial" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "device" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "model" Text :>
                             QueryParam "product" Text :>
                               QueryParam "androidId" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Offers

-- | Returns a list of promo offers available to the user
--
-- /See:/ 'promoOfferGet' smart constructor.
data PromoOfferGet =
  PromoOfferGet'
    { _pogXgafv :: !(Maybe Xgafv)
    , _pogManufacturer :: !(Maybe Text)
    , _pogUploadProtocol :: !(Maybe Text)
    , _pogSerial :: !(Maybe Text)
    , _pogAccessToken :: !(Maybe Text)
    , _pogDevice :: !(Maybe Text)
    , _pogUploadType :: !(Maybe Text)
    , _pogModel :: !(Maybe Text)
    , _pogProduct :: !(Maybe Text)
    , _pogAndroidId :: !(Maybe Text)
    , _pogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PromoOfferGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pogXgafv'
--
-- * 'pogManufacturer'
--
-- * 'pogUploadProtocol'
--
-- * 'pogSerial'
--
-- * 'pogAccessToken'
--
-- * 'pogDevice'
--
-- * 'pogUploadType'
--
-- * 'pogModel'
--
-- * 'pogProduct'
--
-- * 'pogAndroidId'
--
-- * 'pogCallback'
promoOfferGet
    :: PromoOfferGet
promoOfferGet =
  PromoOfferGet'
    { _pogXgafv = Nothing
    , _pogManufacturer = Nothing
    , _pogUploadProtocol = Nothing
    , _pogSerial = Nothing
    , _pogAccessToken = Nothing
    , _pogDevice = Nothing
    , _pogUploadType = Nothing
    , _pogModel = Nothing
    , _pogProduct = Nothing
    , _pogAndroidId = Nothing
    , _pogCallback = Nothing
    }


-- | V1 error format.
pogXgafv :: Lens' PromoOfferGet (Maybe Xgafv)
pogXgafv = lens _pogXgafv (\ s a -> s{_pogXgafv = a})

-- | device manufacturer
pogManufacturer :: Lens' PromoOfferGet (Maybe Text)
pogManufacturer
  = lens _pogManufacturer
      (\ s a -> s{_pogManufacturer = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pogUploadProtocol :: Lens' PromoOfferGet (Maybe Text)
pogUploadProtocol
  = lens _pogUploadProtocol
      (\ s a -> s{_pogUploadProtocol = a})

-- | device serial
pogSerial :: Lens' PromoOfferGet (Maybe Text)
pogSerial
  = lens _pogSerial (\ s a -> s{_pogSerial = a})

-- | OAuth access token.
pogAccessToken :: Lens' PromoOfferGet (Maybe Text)
pogAccessToken
  = lens _pogAccessToken
      (\ s a -> s{_pogAccessToken = a})

-- | device device
pogDevice :: Lens' PromoOfferGet (Maybe Text)
pogDevice
  = lens _pogDevice (\ s a -> s{_pogDevice = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pogUploadType :: Lens' PromoOfferGet (Maybe Text)
pogUploadType
  = lens _pogUploadType
      (\ s a -> s{_pogUploadType = a})

-- | device model
pogModel :: Lens' PromoOfferGet (Maybe Text)
pogModel = lens _pogModel (\ s a -> s{_pogModel = a})

-- | device product
pogProduct :: Lens' PromoOfferGet (Maybe Text)
pogProduct
  = lens _pogProduct (\ s a -> s{_pogProduct = a})

-- | device android_id
pogAndroidId :: Lens' PromoOfferGet (Maybe Text)
pogAndroidId
  = lens _pogAndroidId (\ s a -> s{_pogAndroidId = a})

-- | JSONP
pogCallback :: Lens' PromoOfferGet (Maybe Text)
pogCallback
  = lens _pogCallback (\ s a -> s{_pogCallback = a})

instance GoogleRequest PromoOfferGet where
        type Rs PromoOfferGet = Offers
        type Scopes PromoOfferGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient PromoOfferGet'{..}
          = go _pogXgafv _pogManufacturer _pogUploadProtocol
              _pogSerial
              _pogAccessToken
              _pogDevice
              _pogUploadType
              _pogModel
              _pogProduct
              _pogAndroidId
              _pogCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy PromoOfferGetResource)
                      mempty
