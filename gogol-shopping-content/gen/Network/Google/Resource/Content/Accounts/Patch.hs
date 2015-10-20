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
-- Module      : Network.Google.Resource.Content.Accounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Merchant Center account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.patch@.
module Network.Google.Resource.Content.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch
    , AccountsPatch

    -- * Request Lenses
    , apMerchantId
    , apPayload
    , apAccountId
    , apDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.patch@ method which the
-- 'AccountsPatch' request conforms to.
type AccountsPatchResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Account :> Patch '[JSON] Account

-- | Updates a Merchant Center account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch' smart constructor.
data AccountsPatch = AccountsPatch
    { _apMerchantId :: !Word64
    , _apPayload    :: !Account
    , _apAccountId  :: !Word64
    , _apDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apMerchantId'
--
-- * 'apPayload'
--
-- * 'apAccountId'
--
-- * 'apDryRun'
accountsPatch
    :: Word64 -- ^ 'apMerchantId'
    -> Account -- ^ 'apPayload'
    -> Word64 -- ^ 'apAccountId'
    -> AccountsPatch
accountsPatch pApMerchantId_ pApPayload_ pApAccountId_ =
    AccountsPatch
    { _apMerchantId = pApMerchantId_
    , _apPayload = pApPayload_
    , _apAccountId = pApAccountId_
    , _apDryRun = Nothing
    }

-- | The ID of the managing account.
apMerchantId :: Lens' AccountsPatch Word64
apMerchantId
  = lens _apMerchantId (\ s a -> s{_apMerchantId = a})

-- | Multipart request metadata.
apPayload :: Lens' AccountsPatch Account
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | The ID of the account.
apAccountId :: Lens' AccountsPatch Word64
apAccountId
  = lens _apAccountId (\ s a -> s{_apAccountId = a})

-- | Flag to run the request in dry-run mode.
apDryRun :: Lens' AccountsPatch (Maybe Bool)
apDryRun = lens _apDryRun (\ s a -> s{_apDryRun = a})

instance GoogleRequest AccountsPatch where
        type Rs AccountsPatch = Account
        requestClient AccountsPatch{..}
          = go _apMerchantId _apAccountId _apDryRun
              (Just AltJSON)
              _apPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsPatchResource)
                      mempty
