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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the authenticated user\'s list of accounts.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.accounts.list@.
module Network.Google.Resource.AdExchangeBuyer.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList'
    , AccountsList'

    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.accounts.list@ method which the
-- 'AccountsList'' request conforms to.
type AccountsListResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "accounts" :>
           QueryParam "alt" AltJSON :> Get '[JSON] AccountsList

-- | Retrieves the authenticated user\'s list of accounts.
--
-- /See:/ 'accountsList'' smart constructor.
data AccountsList' =
    AccountsList'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList'' with the minimum fields required to make a request.
--
accountsList'
    :: AccountsList'
accountsList' = AccountsList'

instance GoogleRequest AccountsList' where
        type Rs AccountsList' = AccountsList
        requestClient AccountsList'{}
          = go (Just AltJSON) adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
