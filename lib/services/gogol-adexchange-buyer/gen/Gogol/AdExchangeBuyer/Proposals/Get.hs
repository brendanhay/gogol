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
-- Module      : Gogol.AdExchangeBuyer.Proposals.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a proposal given its id
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.get@.
module Gogol.AdExchangeBuyer.Proposals.Get
  ( -- * Resource
    AdExchangeBuyerProposalsGetResource,

    -- ** Constructing a Request
    newAdExchangeBuyerProposalsGet,
    AdExchangeBuyerProposalsGet,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.proposals.get@ method which the
-- 'AdExchangeBuyerProposalsGet' request conforms to.
type AdExchangeBuyerProposalsGetResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "proposals"
    Core.:> Core.Capture "proposalId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Proposal

-- | Get a proposal given its id
--
-- /See:/ 'newAdExchangeBuyerProposalsGet' smart constructor.
newtype AdExchangeBuyerProposalsGet = AdExchangeBuyerProposalsGet
  { -- | Id of the proposal to retrieve.
    proposalId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProposalsGet' with the minimum fields required to make a request.
newAdExchangeBuyerProposalsGet ::
  -- |  Id of the proposal to retrieve. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyerProposalsGet
newAdExchangeBuyerProposalsGet proposalId =
  AdExchangeBuyerProposalsGet {proposalId = proposalId}

instance
  Core.GoogleRequest
    AdExchangeBuyerProposalsGet
  where
  type Rs AdExchangeBuyerProposalsGet = Proposal
  type
    Scopes AdExchangeBuyerProposalsGet =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerProposalsGet {..} =
    go
      proposalId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerProposalsGetResource
          )
          Core.mempty
