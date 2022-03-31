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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.Accept
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Mark the proposal as accepted at the given revision number. If the number does not match the server\'s revision number an @ABORTED@ error message will be returned. This call updates the proposal_state from @PROPOSED@ to @BUYER_ACCEPTED@, or from @SELLER_ACCEPTED@ to @FINALIZED@. Upon calling this endpoint, the buyer implicitly agrees to the terms and conditions optionally set within the proposal by the publisher.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.accept@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.Accept
  ( -- * Resource
    AdExchangeBuyer2AccountsProposalsAcceptResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsProposalsAccept,
    AdExchangeBuyer2AccountsProposalsAccept,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.proposals.accept@ method which the
-- 'AdExchangeBuyer2AccountsProposalsAccept' request conforms to.
type AdExchangeBuyer2AccountsProposalsAcceptResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "proposals"
    Core.:> Core.CaptureMode "proposalId" "accept" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AcceptProposalRequest
    Core.:> Core.Post '[Core.JSON] Proposal

-- | Mark the proposal as accepted at the given revision number. If the number does not match the server\'s revision number an @ABORTED@ error message will be returned. This call updates the proposal_state from @PROPOSED@ to @BUYER_ACCEPTED@, or from @SELLER_ACCEPTED@ to @FINALIZED@. Upon calling this endpoint, the buyer implicitly agrees to the terms and conditions optionally set within the proposal by the publisher.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsAccept' smart constructor.
data AdExchangeBuyer2AccountsProposalsAccept = AdExchangeBuyer2AccountsProposalsAccept
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AcceptProposalRequest,
    -- | The ID of the proposal to accept.
    proposalId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsAccept' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsAccept ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AcceptProposalRequest ->
  -- |  The ID of the proposal to accept. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyer2AccountsProposalsAccept
newAdExchangeBuyer2AccountsProposalsAccept accountId payload proposalId =
  AdExchangeBuyer2AccountsProposalsAccept
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
    AdExchangeBuyer2AccountsProposalsAccept
  where
  type
    Rs AdExchangeBuyer2AccountsProposalsAccept =
      Proposal
  type
    Scopes AdExchangeBuyer2AccountsProposalsAccept =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsProposalsAccept {..} =
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
                  AdExchangeBuyer2AccountsProposalsAcceptResource
            )
            Core.mempty
