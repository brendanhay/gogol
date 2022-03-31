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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.Pause
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update given deals to pause serving. This method will set the @DealServingMetadata.DealPauseStatus.has_buyer_paused@ bit to true for all listed deals in the request. Currently, this method only applies to PG and PD deals. For PA deals, please call accounts.proposals.pause endpoint. It is a no-op to pause already-paused deals. It is an error to call PauseProposalDeals for deals which are not part of the proposal of proposal_id or which are not finalized or renegotiating.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.finalizedProposals.pause@.
module Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.Pause
  ( -- * Resource
    AdExchangeBuyer2AccountsFinalizedProposalsPauseResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsFinalizedProposalsPause,
    AdExchangeBuyer2AccountsFinalizedProposalsPause,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.finalizedProposals.pause@ method which the
-- 'AdExchangeBuyer2AccountsFinalizedProposalsPause' request conforms to.
type AdExchangeBuyer2AccountsFinalizedProposalsPauseResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "finalizedProposals"
    Core.:> Core.CaptureMode "proposalId" "pause" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PauseProposalDealsRequest
    Core.:> Core.Post '[Core.JSON] Proposal

-- | Update given deals to pause serving. This method will set the @DealServingMetadata.DealPauseStatus.has_buyer_paused@ bit to true for all listed deals in the request. Currently, this method only applies to PG and PD deals. For PA deals, please call accounts.proposals.pause endpoint. It is a no-op to pause already-paused deals. It is an error to call PauseProposalDeals for deals which are not part of the proposal of proposal_id or which are not finalized or renegotiating.
--
-- /See:/ 'newAdExchangeBuyer2AccountsFinalizedProposalsPause' smart constructor.
data AdExchangeBuyer2AccountsFinalizedProposalsPause = AdExchangeBuyer2AccountsFinalizedProposalsPause
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: PauseProposalDealsRequest,
    -- | The proposal_id of the proposal containing the deals.
    proposalId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsFinalizedProposalsPause' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsFinalizedProposalsPause ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PauseProposalDealsRequest ->
  -- |  The proposal_id of the proposal containing the deals. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyer2AccountsFinalizedProposalsPause
newAdExchangeBuyer2AccountsFinalizedProposalsPause accountId payload proposalId =
  AdExchangeBuyer2AccountsFinalizedProposalsPause
    { xgafv = Core.Nothing,
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
    AdExchangeBuyer2AccountsFinalizedProposalsPause
  where
  type
    Rs
      AdExchangeBuyer2AccountsFinalizedProposalsPause =
      Proposal
  type
    Scopes
      AdExchangeBuyer2AccountsFinalizedProposalsPause =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsFinalizedProposalsPause {..} =
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
                Core.Proxy
                  AdExchangeBuyer2AccountsFinalizedProposalsPauseResource
            )
            Core.mempty
