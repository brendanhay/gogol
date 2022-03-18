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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create the given proposal. Each created proposal and any deals it contains are assigned a unique ID by the server.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.create@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.Create
  ( -- * Resource
    AdExchangeBuyer2AccountsProposalsCreateResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsProposalsCreate,
    AdExchangeBuyer2AccountsProposalsCreate,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.proposals.create@ method which the
-- 'AdExchangeBuyer2AccountsProposalsCreate' request conforms to.
type AdExchangeBuyer2AccountsProposalsCreateResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "proposals"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Proposal
    Core.:> Core.Post '[Core.JSON] Proposal

-- | Create the given proposal. Each created proposal and any deals it contains are assigned a unique ID by the server.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsCreate' smart constructor.
data AdExchangeBuyer2AccountsProposalsCreate = AdExchangeBuyer2AccountsProposalsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Proposal,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsCreate' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsCreate ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Proposal ->
  AdExchangeBuyer2AccountsProposalsCreate
newAdExchangeBuyer2AccountsProposalsCreate accountId payload =
  AdExchangeBuyer2AccountsProposalsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsProposalsCreate
  where
  type
    Rs AdExchangeBuyer2AccountsProposalsCreate =
      Proposal
  type
    Scopes AdExchangeBuyer2AccountsProposalsCreate =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2AccountsProposalsCreate {..} =
      go
        accountId
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
                  AdExchangeBuyer2AccountsProposalsCreateResource
            )
            Core.mempty
