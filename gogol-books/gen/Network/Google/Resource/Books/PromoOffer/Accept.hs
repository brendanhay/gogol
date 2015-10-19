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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksPromoOfferAccept@.
module Network.Google.Resource.Books.PromoOffer.Accept
    (
    -- * REST Resource
      PromoOfferAcceptResource

    -- * Creating a Request
    , promoOfferAccept'
    , PromoOfferAccept'

    -- * Request Lenses
    , poaManufacturer
    , poaSerial
    , poaDevice
    , poaModel
    , poaVolumeId
    , poaOfferId
    , poaProduct
    , poaAndroidId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksPromoOfferAccept@ method which the
-- 'PromoOfferAccept'' request conforms to.
type PromoOfferAcceptResource =
     "promooffer" :>
       "accept" :>
         QueryParam "manufacturer" Text :>
           QueryParam "serial" Text :>
             QueryParam "device" Text :>
               QueryParam "model" Text :>
                 QueryParam "volumeId" Text :>
                   QueryParam "offerId" Text :>
                     QueryParam "product" Text :>
                       QueryParam "androidId" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- |
--
-- /See:/ 'promoOfferAccept'' smart constructor.
data PromoOfferAccept' = PromoOfferAccept'
    { _poaManufacturer :: !(Maybe Text)
    , _poaSerial       :: !(Maybe Text)
    , _poaDevice       :: !(Maybe Text)
    , _poaModel        :: !(Maybe Text)
    , _poaVolumeId     :: !(Maybe Text)
    , _poaOfferId      :: !(Maybe Text)
    , _poaProduct      :: !(Maybe Text)
    , _poaAndroidId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromoOfferAccept'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poaManufacturer'
--
-- * 'poaSerial'
--
-- * 'poaDevice'
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
promoOfferAccept'
    :: PromoOfferAccept'
promoOfferAccept' =
    PromoOfferAccept'
    { _poaManufacturer = Nothing
    , _poaSerial = Nothing
    , _poaDevice = Nothing
    , _poaModel = Nothing
    , _poaVolumeId = Nothing
    , _poaOfferId = Nothing
    , _poaProduct = Nothing
    , _poaAndroidId = Nothing
    }

-- | device manufacturer
poaManufacturer :: Lens' PromoOfferAccept' (Maybe Text)
poaManufacturer
  = lens _poaManufacturer
      (\ s a -> s{_poaManufacturer = a})

-- | device serial
poaSerial :: Lens' PromoOfferAccept' (Maybe Text)
poaSerial
  = lens _poaSerial (\ s a -> s{_poaSerial = a})

-- | device device
poaDevice :: Lens' PromoOfferAccept' (Maybe Text)
poaDevice
  = lens _poaDevice (\ s a -> s{_poaDevice = a})

-- | device model
poaModel :: Lens' PromoOfferAccept' (Maybe Text)
poaModel = lens _poaModel (\ s a -> s{_poaModel = a})

-- | Volume id to exercise the offer
poaVolumeId :: Lens' PromoOfferAccept' (Maybe Text)
poaVolumeId
  = lens _poaVolumeId (\ s a -> s{_poaVolumeId = a})

poaOfferId :: Lens' PromoOfferAccept' (Maybe Text)
poaOfferId
  = lens _poaOfferId (\ s a -> s{_poaOfferId = a})

-- | device product
poaProduct :: Lens' PromoOfferAccept' (Maybe Text)
poaProduct
  = lens _poaProduct (\ s a -> s{_poaProduct = a})

-- | device android_id
poaAndroidId :: Lens' PromoOfferAccept' (Maybe Text)
poaAndroidId
  = lens _poaAndroidId (\ s a -> s{_poaAndroidId = a})

instance GoogleRequest PromoOfferAccept' where
        type Rs PromoOfferAccept' = ()
        requestClient PromoOfferAccept'{..}
          = go _poaManufacturer _poaSerial _poaDevice _poaModel
              _poaVolumeId
              _poaOfferId
              _poaProduct
              _poaAndroidId
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy PromoOfferAcceptResource)
                      mempty
