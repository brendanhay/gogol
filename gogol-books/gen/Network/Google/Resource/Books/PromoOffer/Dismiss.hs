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
-- -- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.promooffer.dismiss@.
module Network.Google.Resource.Books.PromoOffer.Dismiss
    (
    -- * REST Resource
      PromoOfferDismissResource

    -- * Creating a Request
    , promoOfferDismiss
    , PromoOfferDismiss

    -- * Request Lenses
    , podManufacturer
    , podSerial
    , podDevice
    , podModel
    , podOfferId
    , podProduct
    , podAndroidId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.promooffer.dismiss@ method which the
-- 'PromoOfferDismiss' request conforms to.
type PromoOfferDismissResource =
     "books" :>
       "v1" :>
         "promooffer" :>
           "dismiss" :>
             QueryParam "manufacturer" Text :>
               QueryParam "serial" Text :>
                 QueryParam "device" Text :>
                   QueryParam "model" Text :>
                     QueryParam "offerId" Text :>
                       QueryParam "product" Text :>
                         QueryParam "androidId" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- |
--
-- /See:/ 'promoOfferDismiss' smart constructor.
data PromoOfferDismiss =
  PromoOfferDismiss'
    { _podManufacturer :: !(Maybe Text)
    , _podSerial       :: !(Maybe Text)
    , _podDevice       :: !(Maybe Text)
    , _podModel        :: !(Maybe Text)
    , _podOfferId      :: !(Maybe Text)
    , _podProduct      :: !(Maybe Text)
    , _podAndroidId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PromoOfferDismiss' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'podManufacturer'
--
-- * 'podSerial'
--
-- * 'podDevice'
--
-- * 'podModel'
--
-- * 'podOfferId'
--
-- * 'podProduct'
--
-- * 'podAndroidId'
promoOfferDismiss
    :: PromoOfferDismiss
promoOfferDismiss =
  PromoOfferDismiss'
    { _podManufacturer = Nothing
    , _podSerial = Nothing
    , _podDevice = Nothing
    , _podModel = Nothing
    , _podOfferId = Nothing
    , _podProduct = Nothing
    , _podAndroidId = Nothing
    }


-- | device manufacturer
podManufacturer :: Lens' PromoOfferDismiss (Maybe Text)
podManufacturer
  = lens _podManufacturer
      (\ s a -> s{_podManufacturer = a})

-- | device serial
podSerial :: Lens' PromoOfferDismiss (Maybe Text)
podSerial
  = lens _podSerial (\ s a -> s{_podSerial = a})

-- | device device
podDevice :: Lens' PromoOfferDismiss (Maybe Text)
podDevice
  = lens _podDevice (\ s a -> s{_podDevice = a})

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

instance GoogleRequest PromoOfferDismiss where
        type Rs PromoOfferDismiss = ()
        type Scopes PromoOfferDismiss =
             '["https://www.googleapis.com/auth/books"]
        requestClient PromoOfferDismiss'{..}
          = go _podManufacturer _podSerial _podDevice _podModel
              _podOfferId
              _podProduct
              _podAndroidId
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy PromoOfferDismissResource)
                      mempty
