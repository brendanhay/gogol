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
-- Module      : Network.Google.Resource.Content.Accounts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsInsert@.
module Network.Google.Resource.Content.Accounts.Insert
    (
    -- * REST Resource
      AccountsInsertResource

    -- * Creating a Request
    , accountsInsert'
    , AccountsInsert'

    -- * Request Lenses
    , aiiMerchantId
    , aiiPayload
    , aiiDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsInsert@ method which the
-- 'AccountsInsert'' request conforms to.
type AccountsInsertResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         QueryParam "dryRun" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Account :> Post '[JSON] Account

-- | Creates a Merchant Center sub-account.
--
-- /See:/ 'accountsInsert'' smart constructor.
data AccountsInsert' = AccountsInsert'
    { _aiiMerchantId :: !Word64
    , _aiiPayload    :: !Account
    , _aiiDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiMerchantId'
--
-- * 'aiiPayload'
--
-- * 'aiiDryRun'
accountsInsert'
    :: Word64 -- ^ 'merchantId'
    -> Account -- ^ 'payload'
    -> AccountsInsert'
accountsInsert' pAiiMerchantId_ pAiiPayload_ =
    AccountsInsert'
    { _aiiMerchantId = pAiiMerchantId_
    , _aiiPayload = pAiiPayload_
    , _aiiDryRun = Nothing
    }

-- | The ID of the managing account.
aiiMerchantId :: Lens' AccountsInsert' Word64
aiiMerchantId
  = lens _aiiMerchantId
      (\ s a -> s{_aiiMerchantId = a})

-- | Multipart request metadata.
aiiPayload :: Lens' AccountsInsert' Account
aiiPayload
  = lens _aiiPayload (\ s a -> s{_aiiPayload = a})

-- | Flag to run the request in dry-run mode.
aiiDryRun :: Lens' AccountsInsert' (Maybe Bool)
aiiDryRun
  = lens _aiiDryRun (\ s a -> s{_aiiDryRun = a})

instance GoogleRequest AccountsInsert' where
        type Rs AccountsInsert' = Account
        requestClient AccountsInsert'{..}
          = go _aiiMerchantId _aiiDryRun (Just AltJSON)
              _aiiPayload
              shoppingContent
          where go
                  = buildClient (Proxy :: Proxy AccountsInsertResource)
                      mempty
