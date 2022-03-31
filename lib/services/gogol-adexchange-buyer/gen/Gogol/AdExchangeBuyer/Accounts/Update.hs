{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Accounts.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.accounts.update@.
module Gogol.AdExchangeBuyer.Accounts.Update
  ( -- * Resource
    AdExchangeBuyerAccountsUpdateResource,

    -- ** Constructing a Request
    newAdExchangeBuyerAccountsUpdate,
    AdExchangeBuyerAccountsUpdate,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.accounts.update@ method which the
-- 'AdExchangeBuyerAccountsUpdate' request conforms to.
type AdExchangeBuyerAccountsUpdateResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "accounts"
    Core.:> Core.Capture "id" Core.Int32
    Core.:> Core.QueryParam
              "confirmUnsafeAccountChange"
              Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Account
    Core.:> Core.Put '[Core.JSON] Account

-- | Updates an existing account.
--
-- /See:/ 'newAdExchangeBuyerAccountsUpdate' smart constructor.
data AdExchangeBuyerAccountsUpdate = AdExchangeBuyerAccountsUpdate
  { -- | Confirmation for erasing bidder and cookie matching urls.
    confirmUnsafeAccountChange :: (Core.Maybe Core.Bool),
    -- | The account id
    id :: Core.Int32,
    -- | Multipart request metadata.
    payload :: Account
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerAccountsUpdate' with the minimum fields required to make a request.
newAdExchangeBuyerAccountsUpdate ::
  -- |  The account id See 'id'.
  Core.Int32 ->
  -- |  Multipart request metadata. See 'payload'.
  Account ->
  AdExchangeBuyerAccountsUpdate
newAdExchangeBuyerAccountsUpdate id payload =
  AdExchangeBuyerAccountsUpdate
    { confirmUnsafeAccountChange = Core.Nothing,
      id = id,
      payload = payload
    }

instance
  Core.GoogleRequest
    AdExchangeBuyerAccountsUpdate
  where
  type Rs AdExchangeBuyerAccountsUpdate = Account
  type
    Scopes AdExchangeBuyerAccountsUpdate =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerAccountsUpdate {..} =
    go
      id
      confirmUnsafeAccountChange
      (Core.Just Core.AltJSON)
      payload
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerAccountsUpdateResource
          )
          Core.mempty
