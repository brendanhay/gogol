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
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , au1MerchantId
    , au1Payload
    , au1AccountId
    , au1DryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.update@ method which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a Merchant Center account.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate = AccountsUpdate
    { _au1MerchantId :: !Word64
    , _au1Payload    :: !Account
    , _au1AccountId  :: !Word64
    , _au1DryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'au1MerchantId'
--
-- * 'au1Payload'
--
-- * 'au1AccountId'
--
-- * 'au1DryRun'
accountsUpdate
    :: Word64 -- ^ 'au1MerchantId'
    -> Account -- ^ 'au1Payload'
    -> Word64 -- ^ 'au1AccountId'
    -> AccountsUpdate
accountsUpdate pAu1MerchantId_ pAu1Payload_ pAu1AccountId_ =
    AccountsUpdate
    { _au1MerchantId = pAu1MerchantId_
    , _au1Payload = pAu1Payload_
    , _au1AccountId = pAu1AccountId_
    , _au1DryRun = Nothing
    }

-- | The ID of the managing account.
au1MerchantId :: Lens' AccountsUpdate Word64
au1MerchantId
  = lens _au1MerchantId
      (\ s a -> s{_au1MerchantId = a})

-- | Multipart request metadata.
au1Payload :: Lens' AccountsUpdate Account
au1Payload
  = lens _au1Payload (\ s a -> s{_au1Payload = a})

-- | The ID of the account.
au1AccountId :: Lens' AccountsUpdate Word64
au1AccountId
  = lens _au1AccountId (\ s a -> s{_au1AccountId = a})

-- | Flag to run the request in dry-run mode.
au1DryRun :: Lens' AccountsUpdate (Maybe Bool)
au1DryRun
  = lens _au1DryRun (\ s a -> s{_au1DryRun = a})

instance GoogleRequest AccountsUpdate where
        type Rs AccountsUpdate = Account
        requestClient AccountsUpdate{..}
          = go _au1MerchantId _au1AccountId _au1DryRun
              (Just AltJSON)
              _au1Payload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
