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
-- Module      : Network.Google.Resource.Books.PromoOffer.Dismiss
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks the promo offer as dismissed.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.promooffer.dismiss@.
module Network.Google.Resource.Books.PromoOffer.Dismiss
    (
    -- * REST Resource
      PromoOfferDismissResource

    -- * Creating a Request
    , promoOfferDismiss
    , PromoOfferDismiss

    -- * Request Lenses
    , podXgafv
    , podManufacturer
    , podUploadProtocol
    , podSerial
    , podAccessToken
    , podDevice
    , podUploadType
    , podModel
    , podOfferId
    , podProduct
    , podAndroidId
    , podCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.promooffer.dismiss@ method which the
-- 'PromoOfferDismiss' request conforms to.
type PromoOfferDismissResource =
     "books" :>
       "v1" :>
         "promooffer" :>
           "dismiss" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "manufacturer" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "serial" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "device" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "model" Text :>
                             QueryParam "offerId" Text :>
                               QueryParam "product" Text :>
                                 QueryParam "androidId" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Post '[JSON] Empty

-- | Marks the promo offer as dismissed.
--
-- /See:/ 'promoOfferDismiss' smart constructor.
data PromoOfferDismiss =
  PromoOfferDismiss'
    { _podXgafv :: !(Maybe Xgafv)
    , _podManufacturer :: !(Maybe Text)
    , _podUploadProtocol :: !(Maybe Text)
    , _podSerial :: !(Maybe Text)
    , _podAccessToken :: !(Maybe Text)
    , _podDevice :: !(Maybe Text)
    , _podUploadType :: !(Maybe Text)
    , _podModel :: !(Maybe Text)
    , _podOfferId :: !(Maybe Text)
    , _podProduct :: !(Maybe Text)
    , _podAndroidId :: !(Maybe Text)
    , _podCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PromoOfferDismiss' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'podXgafv'
--
-- * 'podManufacturer'
--
-- * 'podUploadProtocol'
--
-- * 'podSerial'
--
-- * 'podAccessToken'
--
-- * 'podDevice'
--
-- * 'podUploadType'
--
-- * 'podModel'
--
-- * 'podOfferId'
--
-- * 'podProduct'
--
-- * 'podAndroidId'
--
-- * 'podCallback'
promoOfferDismiss
    :: PromoOfferDismiss
promoOfferDismiss =
  PromoOfferDismiss'
    { _podXgafv = Nothing
    , _podManufacturer = Nothing
    , _podUploadProtocol = Nothing
    , _podSerial = Nothing
    , _podAccessToken = Nothing
    , _podDevice = Nothing
    , _podUploadType = Nothing
    , _podModel = Nothing
    , _podOfferId = Nothing
    , _podProduct = Nothing
    , _podAndroidId = Nothing
    , _podCallback = Nothing
    }


-- | V1 error format.
podXgafv :: Lens' PromoOfferDismiss (Maybe Xgafv)
podXgafv = lens _podXgafv (\ s a -> s{_podXgafv = a})

-- | device manufacturer
podManufacturer :: Lens' PromoOfferDismiss (Maybe Text)
podManufacturer
  = lens _podManufacturer
      (\ s a -> s{_podManufacturer = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
podUploadProtocol :: Lens' PromoOfferDismiss (Maybe Text)
podUploadProtocol
  = lens _podUploadProtocol
      (\ s a -> s{_podUploadProtocol = a})

-- | device serial
podSerial :: Lens' PromoOfferDismiss (Maybe Text)
podSerial
  = lens _podSerial (\ s a -> s{_podSerial = a})

-- | OAuth access token.
podAccessToken :: Lens' PromoOfferDismiss (Maybe Text)
podAccessToken
  = lens _podAccessToken
      (\ s a -> s{_podAccessToken = a})

-- | device device
podDevice :: Lens' PromoOfferDismiss (Maybe Text)
podDevice
  = lens _podDevice (\ s a -> s{_podDevice = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
podUploadType :: Lens' PromoOfferDismiss (Maybe Text)
podUploadType
  = lens _podUploadType
      (\ s a -> s{_podUploadType = a})

-- | device model
podModel :: Lens' PromoOfferDismiss (Maybe Text)
podModel = lens _podModel (\ s a -> s{_podModel = a})

-- | Offer to dimiss
podOfferId :: Lens' PromoOfferDismiss (Maybe Text)
podOfferId
  = lens _podOfferId (\ s a -> s{_podOfferId = a})

-- | device product
podProduct :: Lens' PromoOfferDismiss (Maybe Text)
podProduct
  = lens _podProduct (\ s a -> s{_podProduct = a})

-- | device android_id
podAndroidId :: Lens' PromoOfferDismiss (Maybe Text)
podAndroidId
  = lens _podAndroidId (\ s a -> s{_podAndroidId = a})

-- | JSONP
podCallback :: Lens' PromoOfferDismiss (Maybe Text)
podCallback
  = lens _podCallback (\ s a -> s{_podCallback = a})

instance GoogleRequest PromoOfferDismiss where
        type Rs PromoOfferDismiss = Empty
        type Scopes PromoOfferDismiss =
             '["https://www.googleapis.com/auth/books"]
        requestClient PromoOfferDismiss'{..}
          = go _podXgafv _podManufacturer _podUploadProtocol
              _podSerial
              _podAccessToken
              _podDevice
              _podUploadType
              _podModel
              _podOfferId
              _podProduct
              _podAndroidId
              _podCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy PromoOfferDismissResource)
                      mempty
