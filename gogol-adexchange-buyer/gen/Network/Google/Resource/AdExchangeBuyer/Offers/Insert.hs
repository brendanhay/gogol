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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Offers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the requested offer.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerOffersInsert@.
module Network.Google.Resource.AdExchangeBuyer.Offers.Insert
    (
    -- * REST Resource
      OffersInsertResource

    -- * Creating a Request
    , offersInsert'
    , OffersInsert'

    -- * Request Lenses
    , oiPayload
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerOffersInsert@ method which the
-- 'OffersInsert'' request conforms to.
type OffersInsertResource =
     "offers" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] OfferDTO :> Post '[JSON] OfferDTO

-- | Creates or updates the requested offer.
--
-- /See:/ 'offersInsert'' smart constructor.
newtype OffersInsert' = OffersInsert'
    { _oiPayload :: OfferDTO
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiPayload'
offersInsert'
    :: OfferDTO -- ^ 'payload'
    -> OffersInsert'
offersInsert' pOiPayload_ =
    OffersInsert'
    { _oiPayload = pOiPayload_
    }

-- | Multipart request metadata.
oiPayload :: Lens' OffersInsert' OfferDTO
oiPayload
  = lens _oiPayload (\ s a -> s{_oiPayload = a})

instance GoogleRequest OffersInsert' where
        type Rs OffersInsert' = OfferDTO
        requestClient OffersInsert'{..}
          = go (Just AltJSON) _oiPayload adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy OffersInsertResource)
                      mempty
