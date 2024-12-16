{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Accounts.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account by ID.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.accounts.get@.
module Gogol.AdExchangeBuyer.Accounts.Get
    (
    -- * Resource
      AdExchangeBuyerAccountsGetResource

    -- ** Constructing a Request
    , AdExchangeBuyerAccountsGet (..)
    , newAdExchangeBuyerAccountsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.accounts.get@ method which the
-- 'AdExchangeBuyerAccountsGet' request conforms to.
type AdExchangeBuyerAccountsGetResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "accounts" Core.:>
           Core.Capture "id" Core.Int32 Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Get '[Core.JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'newAdExchangeBuyerAccountsGet' smart constructor.
newtype AdExchangeBuyerAccountsGet = AdExchangeBuyerAccountsGet
    {
      -- | The account id
      id :: Core.Int32
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerAccountsGet' with the minimum fields required to make a request.
newAdExchangeBuyerAccountsGet 
    ::  Core.Int32
       -- ^  The account id See 'id'.
    -> AdExchangeBuyerAccountsGet
newAdExchangeBuyerAccountsGet id = AdExchangeBuyerAccountsGet {id = id}

instance Core.GoogleRequest
           AdExchangeBuyerAccountsGet
         where
        type Rs AdExchangeBuyerAccountsGet = Account
        type Scopes AdExchangeBuyerAccountsGet =
             '[Adexchange'Buyer]
        requestClient AdExchangeBuyerAccountsGet{..}
          = go id (Core.Just Core.AltJSON)
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdExchangeBuyerAccountsGetResource)
                      Core.mempty

