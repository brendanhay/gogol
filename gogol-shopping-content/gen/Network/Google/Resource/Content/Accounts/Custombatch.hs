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
-- Module      : Network.Google.Resource.Content.Accounts.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves, inserts, updates, and deletes multiple Merchant Center
-- (sub-)accounts in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsCustombatch@.
module Network.Google.Resource.Content.Accounts.Custombatch
    (
    -- * REST Resource
      AccountsCustombatchResource

    -- * Creating a Request
    , accountsCustombatch'
    , AccountsCustombatch'

    -- * Request Lenses
    , accPayload
    , accDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsCustombatch@ method which the
-- 'AccountsCustombatch'' request conforms to.
type AccountsCustombatchResource =
     "accounts" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] AccountsCustomBatchRequest :>
               Post '[JSON] AccountsCustomBatchResponse

-- | Retrieves, inserts, updates, and deletes multiple Merchant Center
-- (sub-)accounts in a single request.
--
-- /See:/ 'accountsCustombatch'' smart constructor.
data AccountsCustombatch' = AccountsCustombatch'
    { _accPayload :: !AccountsCustomBatchRequest
    , _accDryRun  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accPayload'
--
-- * 'accDryRun'
accountsCustombatch'
    :: AccountsCustomBatchRequest -- ^ 'payload'
    -> AccountsCustombatch'
accountsCustombatch' pAccPayload_ =
    AccountsCustombatch'
    { _accPayload = pAccPayload_
    , _accDryRun = Nothing
    }

-- | Multipart request metadata.
accPayload :: Lens' AccountsCustombatch' AccountsCustomBatchRequest
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

-- | Flag to run the request in dry-run mode.
accDryRun :: Lens' AccountsCustombatch' (Maybe Bool)
accDryRun
  = lens _accDryRun (\ s a -> s{_accDryRun = a})

instance GoogleRequest AccountsCustombatch' where
        type Rs AccountsCustombatch' =
             AccountsCustomBatchResponse
        requestClient AccountsCustombatch'{..}
          = go _accDryRun (Just AltJSON) _accPayload
              shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCustombatchResource)
                      mempty
