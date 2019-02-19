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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.ListDeals
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the external deal ids associated with the creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.listDeals@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.ListDeals
    (
    -- * REST Resource
      CreativesListDealsResource

    -- * Creating a Request
    , creativesListDeals
    , CreativesListDeals

    -- * Request Lenses
    , cldBuyerCreativeId
    , cldAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.creatives.listDeals@ method which the
-- 'CreativesListDeals' request conforms to.
type CreativesListDealsResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "creatives" :>
           Capture "accountId" (Textual Int32) :>
             Capture "buyerCreativeId" Text :>
               "listDeals" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] CreativeDealIds

-- | Lists the external deal ids associated with the creative.
--
-- /See:/ 'creativesListDeals' smart constructor.
data CreativesListDeals =
  CreativesListDeals'
    { _cldBuyerCreativeId :: !Text
    , _cldAccountId       :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesListDeals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldBuyerCreativeId'
--
-- * 'cldAccountId'
creativesListDeals
    :: Text -- ^ 'cldBuyerCreativeId'
    -> Int32 -- ^ 'cldAccountId'
    -> CreativesListDeals
creativesListDeals pCldBuyerCreativeId_ pCldAccountId_ =
  CreativesListDeals'
    { _cldBuyerCreativeId = pCldBuyerCreativeId_
    , _cldAccountId = _Coerce # pCldAccountId_
    }


-- | The buyer-specific id for this creative.
cldBuyerCreativeId :: Lens' CreativesListDeals Text
cldBuyerCreativeId
  = lens _cldBuyerCreativeId
      (\ s a -> s{_cldBuyerCreativeId = a})

-- | The id for the account that will serve this creative.
cldAccountId :: Lens' CreativesListDeals Int32
cldAccountId
  = lens _cldAccountId (\ s a -> s{_cldAccountId = a})
      . _Coerce

instance GoogleRequest CreativesListDeals where
        type Rs CreativesListDeals = CreativeDealIds
        type Scopes CreativesListDeals =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient CreativesListDeals'{..}
          = go _cldAccountId _cldBuyerCreativeId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesListDealsResource)
                      mempty
