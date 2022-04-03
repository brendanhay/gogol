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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal at the client known revision number. If the server revision has advanced since the passed-in @proposal.proposal_revision@, an @ABORTED@ error message will be returned. Only the buyer-modifiable fields of the proposal will be updated. Note that the deals in the proposal will be updated to match the passed-in copy. If a passed-in deal does not have a @deal_id@, the server will assign a new unique ID and create the deal. If passed-in deal has a @deal_id@, it will be updated to match the passed-in copy. Any existing deals not present in the passed-in proposal will be deleted. It is an error to pass in a deal with a @deal_id@ not present at head.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.update@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.Update
  ( -- * Resource
    AdExchangeBuyer2AccountsProposalsUpdateResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsProposalsUpdate (..),
    newAdExchangeBuyer2AccountsProposalsUpdate,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.proposals.update@ method which the
-- 'AdExchangeBuyer2AccountsProposalsUpdate' request conforms to.
type AdExchangeBuyer2AccountsProposalsUpdateResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "proposals"
    Core.:> Core.Capture "proposalId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Proposal
    Core.:> Core.Put '[Core.JSON] Proposal

-- | Update the given proposal at the client known revision number. If the server revision has advanced since the passed-in @proposal.proposal_revision@, an @ABORTED@ error message will be returned. Only the buyer-modifiable fields of the proposal will be updated. Note that the deals in the proposal will be updated to match the passed-in copy. If a passed-in deal does not have a @deal_id@, the server will assign a new unique ID and create the deal. If passed-in deal has a @deal_id@, it will be updated to match the passed-in copy. Any existing deals not present in the passed-in proposal will be deleted. It is an error to pass in a deal with a @deal_id@ not present at head.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsUpdate' smart constructor.
data AdExchangeBuyer2AccountsProposalsUpdate = AdExchangeBuyer2AccountsProposalsUpdate
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
    -- | The unique ID of the proposal.
    proposalId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsUpdate' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsUpdate ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Proposal ->
  -- |  The unique ID of the proposal. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyer2AccountsProposalsUpdate
newAdExchangeBuyer2AccountsProposalsUpdate accountId payload proposalId =
  AdExchangeBuyer2AccountsProposalsUpdate
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
    AdExchangeBuyer2AccountsProposalsUpdate
  where
  type
    Rs AdExchangeBuyer2AccountsProposalsUpdate =
      Proposal
  type
    Scopes AdExchangeBuyer2AccountsProposalsUpdate =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsProposalsUpdate {..} =
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
                  AdExchangeBuyer2AccountsProposalsUpdateResource
            )
            Core.mempty
