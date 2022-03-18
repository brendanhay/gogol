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
-- Module      : Gogol.AdExchangeBuyer.Proposals.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.update@.
module Gogol.AdExchangeBuyer.Proposals.Update
  ( -- * Resource
    AdExchangeBuyerProposalsUpdateResource,

    -- ** Constructing a Request
    newAdExchangeBuyerProposalsUpdate,
    AdExchangeBuyerProposalsUpdate,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.proposals.update@ method which the
-- 'AdExchangeBuyerProposalsUpdate' request conforms to.
type AdExchangeBuyerProposalsUpdateResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "proposals"
    Core.:> Core.Capture "proposalId" Core.Text
    Core.:> Core.Capture "revisionNumber" Core.Int64
    Core.:> Core.Capture
              "updateAction"
              ProposalsUpdateUpdateAction
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Proposal
    Core.:> Core.Put '[Core.JSON] Proposal

-- | Update the given proposal
--
-- /See:/ 'newAdExchangeBuyerProposalsUpdate' smart constructor.
data AdExchangeBuyerProposalsUpdate = AdExchangeBuyerProposalsUpdate
  { -- | Multipart request metadata.
    payload :: Proposal,
    -- | The proposal id to update.
    proposalId :: Core.Text,
    -- | The last known revision number to update. If the head revision in the marketplace database has since changed, an error will be thrown. The caller should then fetch the latest proposal at head revision and retry the update at that revision.
    revisionNumber :: Core.Int64,
    -- | The proposed action to take on the proposal. This field is required and it must be set when updating a proposal.
    updateAction :: ProposalsUpdateUpdateAction
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProposalsUpdate' with the minimum fields required to make a request.
newAdExchangeBuyerProposalsUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  Proposal ->
  -- |  The proposal id to update. See 'proposalId'.
  Core.Text ->
  -- |  The last known revision number to update. If the head revision in the marketplace database has since changed, an error will be thrown. The caller should then fetch the latest proposal at head revision and retry the update at that revision. See 'revisionNumber'.
  Core.Int64 ->
  -- |  The proposed action to take on the proposal. This field is required and it must be set when updating a proposal. See 'updateAction'.
  ProposalsUpdateUpdateAction ->
  AdExchangeBuyerProposalsUpdate
newAdExchangeBuyerProposalsUpdate payload proposalId revisionNumber updateAction =
  AdExchangeBuyerProposalsUpdate
    { payload = payload,
      proposalId = proposalId,
      revisionNumber = revisionNumber,
      updateAction = updateAction
    }

instance
  Core.GoogleRequest
    AdExchangeBuyerProposalsUpdate
  where
  type Rs AdExchangeBuyerProposalsUpdate = Proposal
  type
    Scopes AdExchangeBuyerProposalsUpdate =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient AdExchangeBuyerProposalsUpdate {..} =
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
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerProposalsUpdateResource
          )
          Core.mempty
