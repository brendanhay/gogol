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
-- Module      : Network.Google.Resource.AdExchangeBuyer.BillingInfo.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the billing information for one account specified by account ID.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.billingInfo.get@.
module Network.Google.Resource.AdExchangeBuyer.BillingInfo.Get
    (
    -- * REST Resource
      BillingInfoGetResource

    -- * Creating a Request
    , billingInfoGet
    , BillingInfoGet

    -- * Request Lenses
    , bigAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.billingInfo.get@ method which the
-- 'BillingInfoGet' request conforms to.
type BillingInfoGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "billinginfo" :>
           Capture "accountId" (Textual Int32) :>
             QueryParam "alt" AltJSON :> Get '[JSON] BillingInfo

-- | Returns the billing information for one account specified by account ID.
--
-- /See:/ 'billingInfoGet' smart constructor.
newtype BillingInfoGet = BillingInfoGet'
    { _bigAccountId :: Textual Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingInfoGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bigAccountId'
billingInfoGet
    :: Int32 -- ^ 'bigAccountId'
    -> BillingInfoGet
billingInfoGet pBigAccountId_ =
    BillingInfoGet'
    { _bigAccountId = _Coerce # pBigAccountId_
    }

-- | The account id.
bigAccountId :: Lens' BillingInfoGet Int32
bigAccountId
  = lens _bigAccountId (\ s a -> s{_bigAccountId = a})
      . _Coerce

instance GoogleRequest BillingInfoGet where
        type Rs BillingInfoGet = BillingInfo
        type Scopes BillingInfoGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BillingInfoGet'{..}
          = go _bigAccountId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy BillingInfoGetResource)
                      mempty
