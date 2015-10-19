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
-- Module      : Network.Google.Resource.Content.Accounttax.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the tax settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccounttaxGet@.
module Network.Google.Resource.Content.Accounttax.Get
    (
    -- * REST Resource
      AccounttaxGetResource

    -- * Creating a Request
    , accounttaxGet'
    , AccounttaxGet'

    -- * Request Lenses
    , aggMerchantId
    , aggAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccounttaxGet@ method which the
-- 'AccounttaxGet'' request conforms to.
type AccounttaxGetResource =
     Capture "merchantId" Word64 :>
       "accounttax" :>
         Capture "accountId" Word64 :>
           QueryParam "alt" AltJSON :> Get '[JSON] AccountTax

-- | Retrieves the tax settings of the account.
--
-- /See:/ 'accounttaxGet'' smart constructor.
data AccounttaxGet' = AccounttaxGet'
    { _aggMerchantId :: !Word64
    , _aggAccountId  :: !Word64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggMerchantId'
--
-- * 'aggAccountId'
accounttaxGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccounttaxGet'
accounttaxGet' pAggMerchantId_ pAggAccountId_ =
    AccounttaxGet'
    { _aggMerchantId = pAggMerchantId_
    , _aggAccountId = pAggAccountId_
    }

-- | The ID of the managing account.
aggMerchantId :: Lens' AccounttaxGet' Word64
aggMerchantId
  = lens _aggMerchantId
      (\ s a -> s{_aggMerchantId = a})

-- | The ID of the account for which to get\/update account tax settings.
aggAccountId :: Lens' AccounttaxGet' Word64
aggAccountId
  = lens _aggAccountId (\ s a -> s{_aggAccountId = a})

instance GoogleRequest AccounttaxGet' where
        type Rs AccounttaxGet' = AccountTax
        requestClient AccounttaxGet'{..}
          = go _aggMerchantId _aggAccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccounttaxGetResource)
                      mempty
