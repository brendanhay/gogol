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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of promo offers available to the user
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.promooffer.get@.
module Network.Google.Resource.Books.PromoOffer.Get
    (
    -- * REST Resource
      PromoOfferGetResource

    -- * Creating a Request
    , promoOfferGet
    , PromoOfferGet

    -- * Request Lenses
    , pogManufacturer
    , pogSerial
    , pogDevice
    , pogModel
    , pogProduct
    , pogAndroidId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.promooffer.get@ method which the
-- 'PromoOfferGet' request conforms to.
type PromoOfferGetResource =
     "books" :>
       "v1" :>
         "promooffer" :>
           "get" :>
             QueryParam "manufacturer" Text :>
               QueryParam "serial" Text :>
                 QueryParam "device" Text :>
                   QueryParam "model" Text :>
                     QueryParam "product" Text :>
                       QueryParam "androidId" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Offers

-- | Returns a list of promo offers available to the user
--
-- /See:/ 'promoOfferGet' smart constructor.
data PromoOfferGet =
  PromoOfferGet'
    { _pogManufacturer :: !(Maybe Text)
    , _pogSerial       :: !(Maybe Text)
    , _pogDevice       :: !(Maybe Text)
    , _pogModel        :: !(Maybe Text)
    , _pogProduct      :: !(Maybe Text)
    , _pogAndroidId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PromoOfferGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pogManufacturer'
--
-- * 'pogSerial'
--
-- * 'pogDevice'
--
-- * 'pogModel'
--
-- * 'pogProduct'
--
-- * 'pogAndroidId'
promoOfferGet
    :: PromoOfferGet
promoOfferGet =
  PromoOfferGet'
    { _pogManufacturer = Nothing
    , _pogSerial = Nothing
    , _pogDevice = Nothing
    , _pogModel = Nothing
    , _pogProduct = Nothing
    , _pogAndroidId = Nothing
    }

-- | device manufacturer
pogManufacturer :: Lens' PromoOfferGet (Maybe Text)
pogManufacturer
  = lens _pogManufacturer
      (\ s a -> s{_pogManufacturer = a})

-- | device serial
pogSerial :: Lens' PromoOfferGet (Maybe Text)
pogSerial
  = lens _pogSerial (\ s a -> s{_pogSerial = a})

-- | device device
pogDevice :: Lens' PromoOfferGet (Maybe Text)
pogDevice
  = lens _pogDevice (\ s a -> s{_pogDevice = a})

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

instance GoogleRequest PromoOfferGet where
        type Rs PromoOfferGet = Offers
        type Scopes PromoOfferGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient PromoOfferGet'{..}
          = go _pogManufacturer _pogSerial _pogDevice _pogModel
              _pogProduct
              _pogAndroidId
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy PromoOfferGetResource)
                      mempty
