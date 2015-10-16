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
-- Module      : Network.Google.Resource.Content.Accountstatuses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the status of a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountstatusesGet@.
module Network.Google.Resource.Content.Accountstatuses.Get
    (
    -- * REST Resource
      AccountstatusesGetResource

    -- * Creating a Request
    , accountstatusesGet'
    , AccountstatusesGet'

    -- * Request Lenses
    , accMerchantId
    , accAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountstatusesGet@ method which the
-- 'AccountstatusesGet'' request conforms to.
type AccountstatusesGetResource =
     Capture "merchantId" Word64 :>
       "accountstatuses" :>
         Capture "accountId" Word64 :>
           QueryParam "alt" AltJSON :> Get '[JSON] AccountStatus

-- | Retrieves the status of a Merchant Center account.
--
-- /See:/ 'accountstatusesGet'' smart constructor.
data AccountstatusesGet' = AccountstatusesGet'
    { _accMerchantId :: !Word64
    , _accAccountId  :: !Word64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accMerchantId'
--
-- * 'accAccountId'
accountstatusesGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccountstatusesGet'
accountstatusesGet' pAccMerchantId_ pAccAccountId_ =
    AccountstatusesGet'
    { _accMerchantId = pAccMerchantId_
    , _accAccountId = pAccAccountId_
    }

-- | The ID of the managing account.
accMerchantId :: Lens' AccountstatusesGet' Word64
accMerchantId
  = lens _accMerchantId
      (\ s a -> s{_accMerchantId = a})

-- | The ID of the account.
accAccountId :: Lens' AccountstatusesGet' Word64
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

instance GoogleRequest AccountstatusesGet' where
        type Rs AccountstatusesGet' = AccountStatus
        requestClient AccountstatusesGet'{..}
          = go _accMerchantId _accAccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesGetResource)
                      mempty
