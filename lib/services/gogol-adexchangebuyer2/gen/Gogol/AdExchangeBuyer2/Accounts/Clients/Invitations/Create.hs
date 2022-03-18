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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and sends out an email invitation to access an Ad Exchange client buyer account.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.invitations.create@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.Create
  ( -- * Resource
    AdExchangeBuyer2AccountsClientsInvitationsCreateResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsClientsInvitationsCreate,
    AdExchangeBuyer2AccountsClientsInvitationsCreate,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.clients.invitations.create@ method which the
-- 'AdExchangeBuyer2AccountsClientsInvitationsCreate' request conforms to.
type AdExchangeBuyer2AccountsClientsInvitationsCreateResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "clients"
    Core.:> Core.Capture "clientAccountId" Core.Int64
    Core.:> "invitations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ClientUserInvitation
    Core.:> Core.Post '[Core.JSON] ClientUserInvitation

-- | Creates and sends out an email invitation to access an Ad Exchange client buyer account.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsInvitationsCreate' smart constructor.
data AdExchangeBuyer2AccountsClientsInvitationsCreate = AdExchangeBuyer2AccountsClientsInvitationsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client\'s sponsor buyer. (required)
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client buyer that the user should be associated with. (required)
    clientAccountId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: ClientUserInvitation,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsInvitationsCreate' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsInvitationsCreate ::
  -- |  Numerical account ID of the client\'s sponsor buyer. (required) See 'accountId'.
  Core.Int64 ->
  -- |  Numerical account ID of the client buyer that the user should be associated with. (required) See 'clientAccountId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  ClientUserInvitation ->
  AdExchangeBuyer2AccountsClientsInvitationsCreate
newAdExchangeBuyer2AccountsClientsInvitationsCreate accountId clientAccountId payload =
  AdExchangeBuyer2AccountsClientsInvitationsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      clientAccountId = clientAccountId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsClientsInvitationsCreate
  where
  type
    Rs
      AdExchangeBuyer2AccountsClientsInvitationsCreate =
      ClientUserInvitation
  type
    Scopes
      AdExchangeBuyer2AccountsClientsInvitationsCreate =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2AccountsClientsInvitationsCreate {..} =
      go
        accountId
        clientAccountId
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
                  AdExchangeBuyer2AccountsClientsInvitationsCreateResource
            )
            Core.mempty
