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
-- Retrieves the shipping settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountshipping.get@.
module Network.Google.Resource.Content.Accountshipping.Get
    (
    -- * REST Resource
      AccountshippingGetResource

    -- * Creating a Request
    , accountshippingGet
    , AccountshippingGet

    -- * Request Lenses
    , acccMerchantId
    , acccAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountshipping.get@ method which the
-- 'AccountshippingGet' request conforms to.
type AccountshippingGetResource =
     Capture "merchantId" Word64 :>
       "accountshipping" :>
         Capture "accountId" Word64 :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] AccountShipping

-- | Retrieves the shipping settings of the account.
--
-- /See:/ 'accountshippingGet' smart constructor.
data AccountshippingGet = AccountshippingGet
    { _acccMerchantId :: !Word64
    , _acccAccountId  :: !Word64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccMerchantId'
--
-- * 'acccAccountId'
accountshippingGet
    :: Word64 -- ^ 'acccMerchantId'
    -> Word64 -- ^ 'acccAccountId'
    -> AccountshippingGet
accountshippingGet pAcccMerchantId_ pAcccAccountId_ =
    AccountshippingGet
    { _acccMerchantId = pAcccMerchantId_
    , _acccAccountId = pAcccAccountId_
    }

-- | The ID of the managing account.
acccMerchantId :: Lens' AccountshippingGet Word64
acccMerchantId
  = lens _acccMerchantId
      (\ s a -> s{_acccMerchantId = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
acccAccountId :: Lens' AccountshippingGet Word64
acccAccountId
  = lens _acccAccountId
      (\ s a -> s{_acccAccountId = a})

instance GoogleRequest AccountshippingGet where
        type Rs AccountshippingGet = AccountShipping
        requestClient AccountshippingGet{..}
          = go _acccMerchantId _acccAccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountshippingGetResource)
                      mempty
