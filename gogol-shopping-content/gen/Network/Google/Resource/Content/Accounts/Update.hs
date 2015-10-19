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
-- Module      : Network.Google.Resource.Content.Accounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.update@.
module Network.Google.Resource.Content.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate'
    , AccountsUpdate'

    -- * Request Lenses
    , auMerchantId
    , auPayload
    , auAccountId
    , auDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.update@ method which the
-- 'AccountsUpdate'' request conforms to.
type AccountsUpdateResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a Merchant Center account.
--
-- /See:/ 'accountsUpdate'' smart constructor.
data AccountsUpdate' = AccountsUpdate'
    { _auMerchantId :: !Word64
    , _auPayload    :: !Account
    , _auAccountId  :: !Word64
    , _auDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auMerchantId'
--
-- * 'auPayload'
--
-- * 'auAccountId'
--
-- * 'auDryRun'
accountsUpdate'
    :: Word64 -- ^ 'auMerchantId'
    -> Account -- ^ 'auPayload'
    -> Word64 -- ^ 'auAccountId'
    -> AccountsUpdate'
accountsUpdate' pAuMerchantId_ pAuPayload_ pAuAccountId_ =
    AccountsUpdate'
    { _auMerchantId = pAuMerchantId_
    , _auPayload = pAuPayload_
    , _auAccountId = pAuAccountId_
    , _auDryRun = Nothing
    }

-- | The ID of the managing account.
auMerchantId :: Lens' AccountsUpdate' Word64
auMerchantId
  = lens _auMerchantId (\ s a -> s{_auMerchantId = a})

-- | Multipart request metadata.
auPayload :: Lens' AccountsUpdate' Account
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | The ID of the account.
auAccountId :: Lens' AccountsUpdate' Word64
auAccountId
  = lens _auAccountId (\ s a -> s{_auAccountId = a})

-- | Flag to run the request in dry-run mode.
auDryRun :: Lens' AccountsUpdate' (Maybe Bool)
auDryRun = lens _auDryRun (\ s a -> s{_auDryRun = a})

instance GoogleRequest AccountsUpdate' where
        type Rs AccountsUpdate' = Account
        requestClient AccountsUpdate'{..}
          = go _auMerchantId _auAccountId _auDryRun
              (Just AltJSON)
              _auPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
