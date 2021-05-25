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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.RemoveDeal
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove a deal id associated with the creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.removeDeal@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.RemoveDeal
    (
    -- * REST Resource
      CreativesRemoveDealResource

    -- * Creating a Request
    , creativesRemoveDeal
    , CreativesRemoveDeal

    -- * Request Lenses
    , crdBuyerCreativeId
    , crdDealId
    , crdAccountId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.creatives.removeDeal@ method which the
-- 'CreativesRemoveDeal' request conforms to.
type CreativesRemoveDealResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "creatives" :>
           Capture "accountId" (Textual Int32) :>
             Capture "buyerCreativeId" Text :>
               "removeDeal" :>
                 Capture "dealId" (Textual Int64) :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Remove a deal id associated with the creative.
--
-- /See:/ 'creativesRemoveDeal' smart constructor.
data CreativesRemoveDeal =
  CreativesRemoveDeal'
    { _crdBuyerCreativeId :: !Text
    , _crdDealId :: !(Textual Int64)
    , _crdAccountId :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesRemoveDeal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crdBuyerCreativeId'
--
-- * 'crdDealId'
--
-- * 'crdAccountId'
creativesRemoveDeal
    :: Text -- ^ 'crdBuyerCreativeId'
    -> Int64 -- ^ 'crdDealId'
    -> Int32 -- ^ 'crdAccountId'
    -> CreativesRemoveDeal
creativesRemoveDeal pCrdBuyerCreativeId_ pCrdDealId_ pCrdAccountId_ =
  CreativesRemoveDeal'
    { _crdBuyerCreativeId = pCrdBuyerCreativeId_
    , _crdDealId = _Coerce # pCrdDealId_
    , _crdAccountId = _Coerce # pCrdAccountId_
    }


-- | The buyer-specific id for this creative.
crdBuyerCreativeId :: Lens' CreativesRemoveDeal Text
crdBuyerCreativeId
  = lens _crdBuyerCreativeId
      (\ s a -> s{_crdBuyerCreativeId = a})

-- | The id of the deal id to disassociate with this creative.
crdDealId :: Lens' CreativesRemoveDeal Int64
crdDealId
  = lens _crdDealId (\ s a -> s{_crdDealId = a}) .
      _Coerce

-- | The id for the account that will serve this creative.
crdAccountId :: Lens' CreativesRemoveDeal Int32
crdAccountId
  = lens _crdAccountId (\ s a -> s{_crdAccountId = a})
      . _Coerce

instance GoogleRequest CreativesRemoveDeal where
        type Rs CreativesRemoveDeal = ()
        type Scopes CreativesRemoveDeal =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient CreativesRemoveDeal'{..}
          = go _crdAccountId _crdBuyerCreativeId _crdDealId
              (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesRemoveDealResource)
                      mempty
