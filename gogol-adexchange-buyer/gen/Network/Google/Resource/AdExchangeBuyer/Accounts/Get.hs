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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Accounts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account by ID.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.accounts.get@.
module Network.Google.Resource.AdExchangeBuyer.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , agId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.accounts.get@ method which the
-- 'AccountsGet' request conforms to.
type AccountsGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "accounts" :>
           Capture "id" (Textual Int32) :>
             QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'accountsGet' smart constructor.
newtype AccountsGet =
  AccountsGet'
    { _agId :: Textual Int32
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agId'
accountsGet
    :: Int32 -- ^ 'agId'
    -> AccountsGet
accountsGet pAgId_ = AccountsGet' {_agId = _Coerce # pAgId_}

-- | The account id
agId :: Lens' AccountsGet Int32
agId = lens _agId (\ s a -> s{_agId = a}) . _Coerce

instance GoogleRequest AccountsGet where
        type Rs AccountsGet = Account
        type Scopes AccountsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsGet'{..}
          = go _agId (Just AltJSON) adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
