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
-- Module      : Network.Google.Resource.Books.PromoOffer.Accept
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts the promo offer.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.promooffer.accept@.
module Network.Google.Resource.Books.PromoOffer.Accept
    (
    -- * REST Resource
      PromoOfferAcceptResource

    -- * Creating a Request
    , promoOfferAccept
    , PromoOfferAccept

    -- * Request Lenses
    , poaXgafv
    , poaManufacturer
    , poaUploadProtocol
    , poaSerial
    , poaAccessToken
    , poaDevice
    , poaUploadType
    , poaModel
    , poaVolumeId
    , poaOfferId
    , poaProduct
    , poaAndroidId
    , poaCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.promooffer.accept@ method which the
-- 'PromoOfferAccept' request conforms to.
type PromoOfferAcceptResource =
     "books" :>
       "v1" :>
         "promooffer" :>
           "accept" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "manufacturer" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "serial" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "device" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "model" Text :>
                             QueryParam "volumeId" Text :>
                               QueryParam "offerId" Text :>
                                 QueryParam "product" Text :>
                                   QueryParam "androidId" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Post '[JSON] Empty

-- | Accepts the promo offer.
--
-- /See:/ 'promoOfferAccept' smart constructor.
data PromoOfferAccept =
  PromoOfferAccept'
    { _poaXgafv :: !(Maybe Xgafv)
    , _poaManufacturer :: !(Maybe Text)
    , _poaUploadProtocol :: !(Maybe Text)
    , _poaSerial :: !(Maybe Text)
    , _poaAccessToken :: !(Maybe Text)
    , _poaDevice :: !(Maybe Text)
    , _poaUploadType :: !(Maybe Text)
    , _poaModel :: !(Maybe Text)
    , _poaVolumeId :: !(Maybe Text)
    , _poaOfferId :: !(Maybe Text)
    , _poaProduct :: !(Maybe Text)
    , _poaAndroidId :: !(Maybe Text)
    , _poaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PromoOfferAccept' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poaXgafv'
--
-- * 'poaManufacturer'
--
-- * 'poaUploadProtocol'
--
-- * 'poaSerial'
--
-- * 'poaAccessToken'
--
-- * 'poaDevice'
--
-- * 'poaUploadType'
--
-- * 'poaModel'
--
-- * 'poaVolumeId'
--
-- * 'poaOfferId'
--
-- * 'poaProduct'
--
-- * 'poaAndroidId'
--
-- * 'poaCallback'
promoOfferAccept
    :: PromoOfferAccept
promoOfferAccept =
  PromoOfferAccept'
    { _poaXgafv = Nothing
    , _poaManufacturer = Nothing
    , _poaUploadProtocol = Nothing
    , _poaSerial = Nothing
    , _poaAccessToken = Nothing
    , _poaDevice = Nothing
    , _poaUploadType = Nothing
    , _poaModel = Nothing
    , _poaVolumeId = Nothing
    , _poaOfferId = Nothing
    , _poaProduct = Nothing
    , _poaAndroidId = Nothing
    , _poaCallback = Nothing
    }


-- | V1 error format.
poaXgafv :: Lens' PromoOfferAccept (Maybe Xgafv)
poaXgafv = lens _poaXgafv (\ s a -> s{_poaXgafv = a})

-- | device manufacturer
poaManufacturer :: Lens' PromoOfferAccept (Maybe Text)
poaManufacturer
  = lens _poaManufacturer
      (\ s a -> s{_poaManufacturer = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
poaUploadProtocol :: Lens' PromoOfferAccept (Maybe Text)
poaUploadProtocol
  = lens _poaUploadProtocol
      (\ s a -> s{_poaUploadProtocol = a})

-- | device serial
poaSerial :: Lens' PromoOfferAccept (Maybe Text)
poaSerial
  = lens _poaSerial (\ s a -> s{_poaSerial = a})

-- | OAuth access token.
poaAccessToken :: Lens' PromoOfferAccept (Maybe Text)
poaAccessToken
  = lens _poaAccessToken
      (\ s a -> s{_poaAccessToken = a})

-- | device device
poaDevice :: Lens' PromoOfferAccept (Maybe Text)
poaDevice
  = lens _poaDevice (\ s a -> s{_poaDevice = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
poaUploadType :: Lens' PromoOfferAccept (Maybe Text)
poaUploadType
  = lens _poaUploadType
      (\ s a -> s{_poaUploadType = a})

-- | device model
poaModel :: Lens' PromoOfferAccept (Maybe Text)
poaModel = lens _poaModel (\ s a -> s{_poaModel = a})

-- | Volume id to exercise the offer
poaVolumeId :: Lens' PromoOfferAccept (Maybe Text)
poaVolumeId
  = lens _poaVolumeId (\ s a -> s{_poaVolumeId = a})

poaOfferId :: Lens' PromoOfferAccept (Maybe Text)
poaOfferId
  = lens _poaOfferId (\ s a -> s{_poaOfferId = a})

-- | device product
poaProduct :: Lens' PromoOfferAccept (Maybe Text)
poaProduct
  = lens _poaProduct (\ s a -> s{_poaProduct = a})

-- | device android_id
poaAndroidId :: Lens' PromoOfferAccept (Maybe Text)
poaAndroidId
  = lens _poaAndroidId (\ s a -> s{_poaAndroidId = a})

-- | JSONP
poaCallback :: Lens' PromoOfferAccept (Maybe Text)
poaCallback
  = lens _poaCallback (\ s a -> s{_poaCallback = a})

instance GoogleRequest PromoOfferAccept where
        type Rs PromoOfferAccept = Empty
        type Scopes PromoOfferAccept =
             '["https://www.googleapis.com/auth/books"]
        requestClient PromoOfferAccept'{..}
          = go _poaXgafv _poaManufacturer _poaUploadProtocol
              _poaSerial
              _poaAccessToken
              _poaDevice
              _poaUploadType
              _poaModel
              _poaVolumeId
              _poaOfferId
              _poaProduct
              _poaAndroidId
              _poaCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy PromoOfferAcceptResource)
                      mempty
