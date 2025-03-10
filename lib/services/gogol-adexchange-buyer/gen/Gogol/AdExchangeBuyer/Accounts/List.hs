{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Accounts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the authenticated user\'s list of accounts.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.accounts.list@.
module Gogol.AdExchangeBuyer.Accounts.List
  ( -- * Resource
    AdExchangeBuyerAccountsListResource,

    -- ** Constructing a Request
    AdExchangeBuyerAccountsList (..),
    newAdExchangeBuyerAccountsList,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.accounts.list@ method which the
-- 'AdExchangeBuyerAccountsList' request conforms to.
type AdExchangeBuyerAccountsListResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "accounts"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccountsList

-- | Retrieves the authenticated user\'s list of accounts.
--
-- /See:/ 'newAdExchangeBuyerAccountsList' smart constructor.
data AdExchangeBuyerAccountsList = AdExchangeBuyerAccountsList
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerAccountsList' with the minimum fields required to make a request.
newAdExchangeBuyerAccountsList ::
  AdExchangeBuyerAccountsList
newAdExchangeBuyerAccountsList = AdExchangeBuyerAccountsList

instance Core.GoogleRequest AdExchangeBuyerAccountsList where
  type Rs AdExchangeBuyerAccountsList = AccountsList
  type Scopes AdExchangeBuyerAccountsList = '[Adexchange'Buyer]
  requestClient AdExchangeBuyerAccountsList {} =
    go (Core.Just Core.AltJSON) adExchangeBuyerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdExchangeBuyerAccountsListResource)
          Core.mempty
