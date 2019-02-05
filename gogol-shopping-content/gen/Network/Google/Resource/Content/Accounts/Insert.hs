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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.insert@.
module Network.Google.Resource.Content.Accounts.Insert
    (
    -- * REST Resource
      AccountsInsertResource

    -- * Creating a Request
    , accountsInsert
    , AccountsInsert

    -- * Request Lenses
    , aMerchantId
    , aPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.insert@ method which the
-- 'AccountsInsert' request conforms to.
type AccountsInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Account :> Post '[JSON] Account

-- | Creates a Merchant Center sub-account.
--
-- /See:/ 'accountsInsert' smart constructor.
data AccountsInsert = AccountsInsert'
    { _aMerchantId :: !(Textual Word64)
    , _aPayload    :: !Account
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aMerchantId'
--
-- * 'aPayload'
accountsInsert
    :: Word64 -- ^ 'aMerchantId'
    -> Account -- ^ 'aPayload'
    -> AccountsInsert
accountsInsert pAMerchantId_ pAPayload_ =
    AccountsInsert'
    { _aMerchantId = _Coerce # pAMerchantId_
    , _aPayload = pAPayload_
    }

-- | The ID of the managing account. This must be a multi-client account.
aMerchantId :: Lens' AccountsInsert Word64
aMerchantId
  = lens _aMerchantId (\ s a -> s{_aMerchantId = a}) .
      _Coerce

-- | Multipart request metadata.
aPayload :: Lens' AccountsInsert Account
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

instance GoogleRequest AccountsInsert where
        type Rs AccountsInsert = Account
        type Scopes AccountsInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsInsert'{..}
          = go _aMerchantId (Just AltJSON) _aPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsInsertResource)
                      mempty
