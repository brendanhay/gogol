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
-- Module      : Gogol.AdExchangeBuyer.Proposals.Setupcomplete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal to indicate that setup has been completed.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.setupcomplete@.
module Gogol.AdExchangeBuyer.Proposals.Setupcomplete
  ( -- * Resource
    AdExchangeBuyerProposalsSetupcompleteResource,

    -- ** Constructing a Request
    AdExchangeBuyerProposalsSetupcomplete (..),
    newAdExchangeBuyerProposalsSetupcomplete,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.proposals.setupcomplete@ method which the
-- 'AdExchangeBuyerProposalsSetupcomplete' request conforms to.
type AdExchangeBuyerProposalsSetupcompleteResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "proposals"
    Core.:> Core.Capture "proposalId" Core.Text
    Core.:> "setupcomplete"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Update the given proposal to indicate that setup has been completed.
--
-- /See:/ 'newAdExchangeBuyerProposalsSetupcomplete' smart constructor.
newtype AdExchangeBuyerProposalsSetupcomplete = AdExchangeBuyerProposalsSetupcomplete
  { -- | The proposal id for which the setup is complete
    proposalId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProposalsSetupcomplete' with the minimum fields required to make a request.
newAdExchangeBuyerProposalsSetupcomplete ::
  -- |  The proposal id for which the setup is complete See 'proposalId'.
  Core.Text ->
  AdExchangeBuyerProposalsSetupcomplete
newAdExchangeBuyerProposalsSetupcomplete proposalId =
  AdExchangeBuyerProposalsSetupcomplete {proposalId = proposalId}

instance Core.GoogleRequest AdExchangeBuyerProposalsSetupcomplete where
  type Rs AdExchangeBuyerProposalsSetupcomplete = ()
  type
    Scopes AdExchangeBuyerProposalsSetupcomplete =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerProposalsSetupcomplete {..} =
    go proposalId (Core.Just Core.AltJSON) adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerProposalsSetupcompleteResource
          )
          Core.mempty
