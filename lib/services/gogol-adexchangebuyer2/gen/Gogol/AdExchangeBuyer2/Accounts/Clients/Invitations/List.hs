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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the client users invitations for a client with a given account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.invitations.list@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.Invitations.List
  ( -- * Resource
    AdExchangeBuyer2AccountsClientsInvitationsListResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsClientsInvitationsList (..),
    newAdExchangeBuyer2AccountsClientsInvitationsList,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.clients.invitations.list@ method which the
-- 'AdExchangeBuyer2AccountsClientsInvitationsList' request conforms to.
type AdExchangeBuyer2AccountsClientsInvitationsListResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "clients"
    Core.:> Core.Capture "clientAccountId" Core.Text
    Core.:> "invitations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListClientUserInvitationsResponse

-- | Lists all the client users invitations for a client with a given account ID.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsInvitationsList' smart constructor.
data AdExchangeBuyer2AccountsClientsInvitationsList = AdExchangeBuyer2AccountsClientsInvitationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client\'s sponsor buyer. (required)
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client buyer to list invitations for. (required) You must either specify a string representation of a numerical account identifier or the @-@ character to list all the invitations for all the clients of a given sponsor buyer.
    clientAccountId :: Core.Text,
    -- | Requested page size. Server may return fewer clients than requested. If unspecified, server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListClientUserInvitationsResponse.nextPageToken returned from the previous call to the clients.invitations.list method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsInvitationsList' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsInvitationsList ::
  -- |  Numerical account ID of the client\'s sponsor buyer. (required) See 'accountId'.
  Core.Int64 ->
  -- |  Numerical account ID of the client buyer to list invitations for. (required) You must either specify a string representation of a numerical account identifier or the @-@ character to list all the invitations for all the clients of a given sponsor buyer. See 'clientAccountId'.
  Core.Text ->
  AdExchangeBuyer2AccountsClientsInvitationsList
newAdExchangeBuyer2AccountsClientsInvitationsList accountId clientAccountId =
  AdExchangeBuyer2AccountsClientsInvitationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      clientAccountId = clientAccountId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsClientsInvitationsList
  where
  type
    Rs
      AdExchangeBuyer2AccountsClientsInvitationsList =
      ListClientUserInvitationsResponse
  type
    Scopes
      AdExchangeBuyer2AccountsClientsInvitationsList =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsClientsInvitationsList {..} =
      go
        accountId
        clientAccountId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsClientsInvitationsListResource
            )
            Core.mempty
