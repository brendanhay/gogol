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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.Pause
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal to pause serving. This method will set the @DealServingMetadata.DealPauseStatus.has_buyer_paused@ bit to true for all deals in the proposal. It is a no-op to pause an already-paused proposal. It is an error to call PauseProposal for a proposal that is not finalized or renegotiating.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.pause@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.Pause
  ( -- * Resource
    AdExchangeBuyer2AccountsProposalsPauseResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsProposalsPause,
    AdExchangeBuyer2AccountsProposalsPause,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.proposals.pause@ method which the
-- 'AdExchangeBuyer2AccountsProposalsPause' request conforms to.
type AdExchangeBuyer2AccountsProposalsPauseResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "proposals"
    Core.:> Core.CaptureMode "proposalId" "pause" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PauseProposalRequest
    Core.:> Core.Post '[Core.JSON] Proposal

-- | Update the given proposal to pause serving. This method will set the @DealServingMetadata.DealPauseStatus.has_buyer_paused@ bit to true for all deals in the proposal. It is a no-op to pause an already-paused proposal. It is an error to call PauseProposal for a proposal that is not finalized or renegotiating.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsPause' smart constructor.
data AdExchangeBuyer2AccountsProposalsPause = AdExchangeBuyer2AccountsProposalsPause
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: PauseProposalRequest,
    -- | The ID of the proposal to pause.
    proposalId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsPause' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsPause ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PauseProposalRequest ->
  -- |  The ID of the proposal to pause. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyer2AccountsProposalsPause
newAdExchangeBuyer2AccountsProposalsPause accountId payload proposalId =
  AdExchangeBuyer2AccountsProposalsPause
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
    AdExchangeBuyer2AccountsProposalsPause
  where
  type
    Rs AdExchangeBuyer2AccountsProposalsPause =
      Proposal
  type
    Scopes AdExchangeBuyer2AccountsProposalsPause =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2AccountsProposalsPause {..} =
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
                  AdExchangeBuyer2AccountsProposalsPauseResource
            )
            Core.mempty
