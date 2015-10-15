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
-- Module      : Network.Google.Resource.Content.Accountshipping.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the shipping settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountshippingGet@.
module Network.Google.Resource.Content.Accountshipping.Get
    (
    -- * REST Resource
      AccountshippingGetResource

    -- * Creating a Request
    , accountshippingGet'
    , AccountshippingGet'

    -- * Request Lenses
    , agMerchantId
    , agAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountshippingGet@ method which the
-- 'AccountshippingGet'' request conforms to.
type AccountshippingGetResource =
     Capture "merchantId" Word64 :>
       "accountshipping" :>
         Capture "accountId" Word64 :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] AccountShipping

-- | Retrieves the shipping settings of the account.
--
-- /See:/ 'accountshippingGet'' smart constructor.
data AccountshippingGet' = AccountshippingGet'
    { _agMerchantId :: !Word64
    , _agAccountId  :: !Word64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agMerchantId'
--
-- * 'agAccountId'
accountshippingGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccountshippingGet'
accountshippingGet' pAgMerchantId_ pAgAccountId_ =
    AccountshippingGet'
    { _agMerchantId = pAgMerchantId_
    , _agAccountId = pAgAccountId_
    }

-- | The ID of the managing account.
agMerchantId :: Lens' AccountshippingGet' Word64
agMerchantId
  = lens _agMerchantId (\ s a -> s{_agMerchantId = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
agAccountId :: Lens' AccountshippingGet' Word64
agAccountId
  = lens _agAccountId (\ s a -> s{_agAccountId = a})

instance GoogleRequest AccountshippingGet' where
        type Rs AccountshippingGet' = AccountShipping
        requestClient AccountshippingGet'{..}
          = go _agMerchantId _agAccountId (Just AltJSON)
              shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy AccountshippingGetResource)
                      mempty
