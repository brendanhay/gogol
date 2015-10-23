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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Offers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested offer.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.offers.get@.
module Network.Google.Resource.AdExchangeBuyer.Offers.Get
    (
    -- * REST Resource
      OffersGetResource

    -- * Creating a Request
    , offersGet
    , OffersGet

    -- * Request Lenses
    , ogOfferId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.offers.get@ method which the
-- 'OffersGet' request conforms to.
type OffersGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "offers" :>
           Capture "offerId" (JSONText Int64) :>
             QueryParam "alt" AltJSON :> Get '[JSON] OfferDTO

-- | Gets the requested offer.
--
-- /See:/ 'offersGet' smart constructor.
newtype OffersGet = OffersGet
    { _ogOfferId :: JSONText Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogOfferId'
offersGet
    :: Int64 -- ^ 'ogOfferId'
    -> OffersGet
offersGet pOgOfferId_ =
    OffersGet
    { _ogOfferId = _Coerce # pOgOfferId_
    }

ogOfferId :: Lens' OffersGet Int64
ogOfferId
  = lens _ogOfferId (\ s a -> s{_ogOfferId = a}) .
      _Coerce

instance GoogleRequest OffersGet where
        type Rs OffersGet = OfferDTO
        requestClient OffersGet{..}
          = go _ogOfferId (Just AltJSON) adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy OffersGetResource)
                      mempty
