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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Deals.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested deal.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.deals.get@.
module Network.Google.Resource.AdExchangeBuyer.Deals.Get
    (
    -- * REST Resource
      DealsGetResource

    -- * Creating a Request
    , dealsGet'
    , DealsGet'

    -- * Request Lenses
    , dgPayload
    , dgDealId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.deals.get@ method which the
-- 'DealsGet'' request conforms to.
type DealsGetResource =
     "deals" :>
       Capture "dealId" Int64 :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON]
             GetFinalizedNegotiationByExternalDealIdRequest
             :> Get '[JSON] NegotiationDTO

-- | Gets the requested deal.
--
-- /See:/ 'dealsGet'' smart constructor.
data DealsGet' = DealsGet'
    { _dgPayload :: !GetFinalizedNegotiationByExternalDealIdRequest
    , _dgDealId  :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgPayload'
--
-- * 'dgDealId'
dealsGet'
    :: GetFinalizedNegotiationByExternalDealIdRequest -- ^ 'dgPayload'
    -> Int64 -- ^ 'dgDealId'
    -> DealsGet'
dealsGet' pDgPayload_ pDgDealId_ =
    DealsGet'
    { _dgPayload = pDgPayload_
    , _dgDealId = pDgDealId_
    }

-- | Multipart request metadata.
dgPayload :: Lens' DealsGet' GetFinalizedNegotiationByExternalDealIdRequest
dgPayload
  = lens _dgPayload (\ s a -> s{_dgPayload = a})

dgDealId :: Lens' DealsGet' Int64
dgDealId = lens _dgDealId (\ s a -> s{_dgDealId = a})

instance GoogleRequest DealsGet' where
        type Rs DealsGet' = NegotiationDTO
        requestClient DealsGet'{..}
          = go _dgDealId (Just AltJSON) _dgPayload
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy DealsGetResource)
                      mempty
