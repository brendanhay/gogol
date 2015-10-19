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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOffersGet@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Get
    (
    -- * REST Resource
      MarketplaceOffersGetResource

    -- * Creating a Request
    , marketplaceOffersGet'
    , MarketplaceOffersGet'

    -- * Request Lenses
    , mogOfferId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOffersGet@ method which the
-- 'MarketplaceOffersGet'' request conforms to.
type MarketplaceOffersGetResource =
     "marketplaceOffers" :>
       Capture "offerId" Text :>
         QueryParam "alt" AltJSON :>
           Get '[JSON] MarketplaceOffer

-- | Gets the requested negotiation.
--
-- /See:/ 'marketplaceOffersGet'' smart constructor.
newtype MarketplaceOffersGet' = MarketplaceOffersGet'
    { _mogOfferId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOffersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mogOfferId'
marketplaceOffersGet'
    :: Text -- ^ 'offerId'
    -> MarketplaceOffersGet'
marketplaceOffersGet' pMogOfferId_ =
    MarketplaceOffersGet'
    { _mogOfferId = pMogOfferId_
    }

-- | The offerId for the offer to get the head revision for.
mogOfferId :: Lens' MarketplaceOffersGet' Text
mogOfferId
  = lens _mogOfferId (\ s a -> s{_mogOfferId = a})

instance GoogleRequest MarketplaceOffersGet' where
        type Rs MarketplaceOffersGet' = MarketplaceOffer
        requestClient MarketplaceOffersGet'{..}
          = go _mogOfferId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceOffersGetResource)
                      mempty
