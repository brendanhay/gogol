{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.CompleteSetup
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can opt-in to manually update proposals to indicate that setup is complete. By default, proposal setup is automatically completed after their deals are finalized. Contact your Technical Account Manager to opt in. Buyers can call this method when the proposal has been finalized, and all the required creatives have been uploaded using the Creatives API. This call updates the @is_setup_completed@ field on the deals in the proposal, and notifies the seller. The server then advances the revision number of the most recent proposal. To mark an individual deal as ready to serve, call @buyers.finalizedDeals.setReadyToServe@ in the Marketplace API.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.completeSetup@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.CompleteSetup
  ( -- * Resource
    AdExchangeBuyer2AccountsProposalsCompleteSetupResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsProposalsCompleteSetup (..),
    newAdExchangeBuyer2AccountsProposalsCompleteSetup,
  )
where

import Gogol.AdExchangeBuyer2.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer2.accounts.proposals.completeSetup@ method which the
-- 'AdExchangeBuyer2AccountsProposalsCompleteSetup' request conforms to.
type AdExchangeBuyer2AccountsProposalsCompleteSetupResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "proposals"
    Core.:> Core.CaptureMode "proposalId" "completeSetup" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CompleteSetupRequest
    Core.:> Core.Post '[Core.JSON] Proposal

-- | You can opt-in to manually update proposals to indicate that setup is complete. By default, proposal setup is automatically completed after their deals are finalized. Contact your Technical Account Manager to opt in. Buyers can call this method when the proposal has been finalized, and all the required creatives have been uploaded using the Creatives API. This call updates the @is_setup_completed@ field on the deals in the proposal, and notifies the seller. The server then advances the revision number of the most recent proposal. To mark an individual deal as ready to serve, call @buyers.finalizedDeals.setReadyToServe@ in the Marketplace API.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsCompleteSetup' smart constructor.
data AdExchangeBuyer2AccountsProposalsCompleteSetup = AdExchangeBuyer2AccountsProposalsCompleteSetup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CompleteSetupRequest,
    -- | The ID of the proposal to mark as setup completed.
    proposalId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsCompleteSetup' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsCompleteSetup ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CompleteSetupRequest ->
  -- |  The ID of the proposal to mark as setup completed. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyer2AccountsProposalsCompleteSetup
newAdExchangeBuyer2AccountsProposalsCompleteSetup
  accountId
  payload
  proposalId =
    AdExchangeBuyer2AccountsProposalsCompleteSetup
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        accountId = accountId,
        callback = Core.Nothing,
        payload = payload,
        proposalId = proposalId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsProposalsCompleteSetup
  where
  type Rs AdExchangeBuyer2AccountsProposalsCompleteSetup = Proposal
  type
    Scopes AdExchangeBuyer2AccountsProposalsCompleteSetup =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyer2AccountsProposalsCompleteSetup {..} =
    go
      accountId
      proposalId
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
              Core.Proxy AdExchangeBuyer2AccountsProposalsCompleteSetupResource
          )
          Core.mempty
