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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.Users.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing client user. Only the user status can be changed on update.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.users.update@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.Users.Update
  ( -- * Resource
    AdExchangeBuyer2AccountsClientsUsersUpdateResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsClientsUsersUpdate,
    AdExchangeBuyer2AccountsClientsUsersUpdate,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.clients.users.update@ method which the
-- 'AdExchangeBuyer2AccountsClientsUsersUpdate' request conforms to.
type AdExchangeBuyer2AccountsClientsUsersUpdateResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "clients"
    Core.:> Core.Capture "clientAccountId" Core.Int64
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ClientUser
    Core.:> Core.Put '[Core.JSON] ClientUser

-- | Updates an existing client user. Only the user status can be changed on update.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsUsersUpdate' smart constructor.
data AdExchangeBuyer2AccountsClientsUsersUpdate = AdExchangeBuyer2AccountsClientsUsersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client\'s sponsor buyer. (required)
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client buyer that the user to be retrieved is associated with. (required)
    clientAccountId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: ClientUser,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Numerical identifier of the user to retrieve. (required)
    userId :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsUsersUpdate' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsUsersUpdate ::
  -- |  Numerical account ID of the client\'s sponsor buyer. (required) See 'accountId'.
  Core.Int64 ->
  -- |  Numerical account ID of the client buyer that the user to be retrieved is associated with. (required) See 'clientAccountId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  ClientUser ->
  -- |  Numerical identifier of the user to retrieve. (required) See 'userId'.
  Core.Int64 ->
  AdExchangeBuyer2AccountsClientsUsersUpdate
newAdExchangeBuyer2AccountsClientsUsersUpdate accountId clientAccountId payload userId =
  AdExchangeBuyer2AccountsClientsUsersUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      clientAccountId = clientAccountId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsClientsUsersUpdate
  where
  type
    Rs AdExchangeBuyer2AccountsClientsUsersUpdate =
      ClientUser
  type
    Scopes
      AdExchangeBuyer2AccountsClientsUsersUpdate =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2AccountsClientsUsersUpdate {..} =
      go
        accountId
        clientAccountId
        userId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsClientsUsersUpdateResource
            )
            Core.mempty
