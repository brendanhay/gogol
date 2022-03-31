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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an existing client user invitation.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.invitations.get@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.Get
  ( -- * Resource
    AdExchangeBuyer2AccountsClientsInvitationsGetResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsClientsInvitationsGet,
    AdExchangeBuyer2AccountsClientsInvitationsGet,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.clients.invitations.get@ method which the
-- 'AdExchangeBuyer2AccountsClientsInvitationsGet' request conforms to.
type AdExchangeBuyer2AccountsClientsInvitationsGetResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "clients"
    Core.:> Core.Capture "clientAccountId" Core.Int64
    Core.:> "invitations"
    Core.:> Core.Capture "invitationId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ClientUserInvitation

-- | Retrieves an existing client user invitation.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsInvitationsGet' smart constructor.
data AdExchangeBuyer2AccountsClientsInvitationsGet = AdExchangeBuyer2AccountsClientsInvitationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client\'s sponsor buyer. (required)
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client buyer that the user invitation to be retrieved is associated with. (required)
    clientAccountId :: Core.Int64,
    -- | Numerical identifier of the user invitation to retrieve. (required)
    invitationId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsInvitationsGet' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsInvitationsGet ::
  -- |  Numerical account ID of the client\'s sponsor buyer. (required) See 'accountId'.
  Core.Int64 ->
  -- |  Numerical account ID of the client buyer that the user invitation to be retrieved is associated with. (required) See 'clientAccountId'.
  Core.Int64 ->
  -- |  Numerical identifier of the user invitation to retrieve. (required) See 'invitationId'.
  Core.Int64 ->
  AdExchangeBuyer2AccountsClientsInvitationsGet
newAdExchangeBuyer2AccountsClientsInvitationsGet accountId clientAccountId invitationId =
  AdExchangeBuyer2AccountsClientsInvitationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      clientAccountId = clientAccountId,
      invitationId = invitationId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsClientsInvitationsGet
  where
  type
    Rs AdExchangeBuyer2AccountsClientsInvitationsGet =
      ClientUserInvitation
  type
    Scopes
      AdExchangeBuyer2AccountsClientsInvitationsGet =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsClientsInvitationsGet {..} =
      go
        accountId
        clientAccountId
        invitationId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsClientsInvitationsGetResource
            )
            Core.mempty
