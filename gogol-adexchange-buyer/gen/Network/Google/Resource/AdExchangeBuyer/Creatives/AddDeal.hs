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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.AddDeal
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a deal id association for the creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.addDeal@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.AddDeal
    (
    -- * REST Resource
      CreativesAddDealResource

    -- * Creating a Request
    , creativesAddDeal
    , CreativesAddDeal

    -- * Request Lenses
    , cadBuyerCreativeId
    , cadDealId
    , cadAccountId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.creatives.addDeal@ method which the
-- 'CreativesAddDeal' request conforms to.
type CreativesAddDealResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "creatives" :>
           Capture "accountId" (Textual Int32) :>
             Capture "buyerCreativeId" Text :>
               "addDeal" :>
                 Capture "dealId" (Textual Int64) :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Add a deal id association for the creative.
--
-- /See:/ 'creativesAddDeal' smart constructor.
data CreativesAddDeal =
  CreativesAddDeal'
    { _cadBuyerCreativeId :: !Text
    , _cadDealId :: !(Textual Int64)
    , _cadAccountId :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesAddDeal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cadBuyerCreativeId'
--
-- * 'cadDealId'
--
-- * 'cadAccountId'
creativesAddDeal
    :: Text -- ^ 'cadBuyerCreativeId'
    -> Int64 -- ^ 'cadDealId'
    -> Int32 -- ^ 'cadAccountId'
    -> CreativesAddDeal
creativesAddDeal pCadBuyerCreativeId_ pCadDealId_ pCadAccountId_ =
  CreativesAddDeal'
    { _cadBuyerCreativeId = pCadBuyerCreativeId_
    , _cadDealId = _Coerce # pCadDealId_
    , _cadAccountId = _Coerce # pCadAccountId_
    }


-- | The buyer-specific id for this creative.
cadBuyerCreativeId :: Lens' CreativesAddDeal Text
cadBuyerCreativeId
  = lens _cadBuyerCreativeId
      (\ s a -> s{_cadBuyerCreativeId = a})

-- | The id of the deal id to associate with this creative.
cadDealId :: Lens' CreativesAddDeal Int64
cadDealId
  = lens _cadDealId (\ s a -> s{_cadDealId = a}) .
      _Coerce

-- | The id for the account that will serve this creative.
cadAccountId :: Lens' CreativesAddDeal Int32
cadAccountId
  = lens _cadAccountId (\ s a -> s{_cadAccountId = a})
      . _Coerce

instance GoogleRequest CreativesAddDeal where
        type Rs CreativesAddDeal = ()
        type Scopes CreativesAddDeal =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient CreativesAddDeal'{..}
          = go _cadAccountId _cadBuyerCreativeId _cadDealId
              (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesAddDealResource)
                      mempty
