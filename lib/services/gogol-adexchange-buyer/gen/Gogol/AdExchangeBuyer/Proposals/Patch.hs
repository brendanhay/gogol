{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AdExchangeBuyer.Proposals.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.patch@.
module Gogol.AdExchangeBuyer.Proposals.Patch
  ( -- * Resource
    AdExchangeBuyerProposalsPatchResource,

    -- ** Constructing a Request
    AdExchangeBuyerProposalsPatch (..),
    newAdExchangeBuyerProposalsPatch,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.proposals.patch@ method which the
-- 'AdExchangeBuyerProposalsPatch' request conforms to.
type AdExchangeBuyerProposalsPatchResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "proposals"
    Core.:> Core.Capture "proposalId" Core.Text
    Core.:> Core.Capture "revisionNumber" Core.Int64
    Core.:> Core.Capture "updateAction" ProposalsPatchUpdateAction
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Proposal
    Core.:> Core.Patch '[Core.JSON] Proposal

-- | Update the given proposal. This method supports patch semantics.
--
-- /See:/ 'newAdExchangeBuyerProposalsPatch' smart constructor.
data AdExchangeBuyerProposalsPatch = AdExchangeBuyerProposalsPatch
  { -- | Multipart request metadata.
    payload :: Proposal,
    -- | The proposal id to update.
    proposalId :: Core.Text,
    -- | The last known revision number to update. If the head revision in the marketplace database has since changed, an error will be thrown. The caller should then fetch the latest proposal at head revision and retry the update at that revision.
    revisionNumber :: Core.Int64,
    -- | The proposed action to take on the proposal. This field is required and it must be set when updating a proposal.
    updateAction :: ProposalsPatchUpdateAction
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProposalsPatch' with the minimum fields required to make a request.
newAdExchangeBuyerProposalsPatch ::
  -- |  Multipart request metadata. See 'payload'.
  Proposal ->
  -- |  The proposal id to update. See 'proposalId'.
  Core.Text ->
  -- |  The last known revision number to update. If the head revision in the marketplace database has since changed, an error will be thrown. The caller should then fetch the latest proposal at head revision and retry the update at that revision. See 'revisionNumber'.
  Core.Int64 ->
  -- |  The proposed action to take on the proposal. This field is required and it must be set when updating a proposal. See 'updateAction'.
  ProposalsPatchUpdateAction ->
  AdExchangeBuyerProposalsPatch
newAdExchangeBuyerProposalsPatch
  payload
  proposalId
  revisionNumber
  updateAction =
    AdExchangeBuyerProposalsPatch
      { payload = payload,
        proposalId = proposalId,
        revisionNumber = revisionNumber,
        updateAction = updateAction
      }

instance Core.GoogleRequest AdExchangeBuyerProposalsPatch where
  type Rs AdExchangeBuyerProposalsPatch = Proposal
  type Scopes AdExchangeBuyerProposalsPatch = '[Adexchange'Buyer]
  requestClient AdExchangeBuyerProposalsPatch {..} =
    go
      proposalId
      revisionNumber
      updateAction
      (Core.Just Core.AltJSON)
      payload
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdExchangeBuyerProposalsPatchResource)
          Core.mempty
