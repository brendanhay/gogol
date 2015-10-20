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
-- Module      : Network.Google.Resource.AdSense.Accounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about the selected AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.get@.
module Network.Google.Resource.AdSense.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , agTree
    , agAccountId
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.accounts.get@ method which the
-- 'AccountsGet' request conforms to.
type AccountsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         QueryParam "tree" Bool :>
           QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Get information about the selected AdSense account.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet = AccountsGet
    { _agTree      :: !(Maybe Bool)
    , _agAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agTree'
--
-- * 'agAccountId'
accountsGet
    :: Text -- ^ 'agAccountId'
    -> AccountsGet
accountsGet pAgAccountId_ =
    AccountsGet
    { _agTree = Nothing
    , _agAccountId = pAgAccountId_
    }

-- | Whether the tree of sub accounts should be returned.
agTree :: Lens' AccountsGet (Maybe Bool)
agTree = lens _agTree (\ s a -> s{_agTree = a})

-- | Account to get information about.
agAccountId :: Lens' AccountsGet Text
agAccountId
  = lens _agAccountId (\ s a -> s{_agAccountId = a})

instance GoogleRequest AccountsGet where
        type Rs AccountsGet = Account
        requestClient AccountsGet{..}
          = go _agAccountId _agTree (Just AltJSON)
              adSenseService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
