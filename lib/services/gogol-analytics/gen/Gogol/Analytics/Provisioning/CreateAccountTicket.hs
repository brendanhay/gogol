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
-- Module      : Gogol.Analytics.Provisioning.CreateAccountTicket
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an account ticket.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.provisioning.createAccountTicket@.
module Gogol.Analytics.Provisioning.CreateAccountTicket
  ( -- * Resource
    AnalyticsProvisioningCreateAccountTicketResource,

    -- ** Constructing a Request
    AnalyticsProvisioningCreateAccountTicket (..),
    newAnalyticsProvisioningCreateAccountTicket,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.provisioning.createAccountTicket@ method which the
-- 'AnalyticsProvisioningCreateAccountTicket' request conforms to.
type AnalyticsProvisioningCreateAccountTicketResource =
  "analytics"
    Core.:> "v3"
    Core.:> "provisioning"
    Core.:> "createAccountTicket"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccountTicket
    Core.:> Core.Post '[Core.JSON] AccountTicket

-- | Creates an account ticket.
--
-- /See:/ 'newAnalyticsProvisioningCreateAccountTicket' smart constructor.
newtype AnalyticsProvisioningCreateAccountTicket = AnalyticsProvisioningCreateAccountTicket
  { -- | Multipart request metadata.
    payload :: AccountTicket
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsProvisioningCreateAccountTicket' with the minimum fields required to make a request.
newAnalyticsProvisioningCreateAccountTicket ::
  -- |  Multipart request metadata. See 'payload'.
  AccountTicket ->
  AnalyticsProvisioningCreateAccountTicket
newAnalyticsProvisioningCreateAccountTicket payload =
  AnalyticsProvisioningCreateAccountTicket {payload = payload}

instance
  Core.GoogleRequest
    AnalyticsProvisioningCreateAccountTicket
  where
  type Rs AnalyticsProvisioningCreateAccountTicket = AccountTicket
  type
    Scopes AnalyticsProvisioningCreateAccountTicket =
      '[Analytics'Provision]
  requestClient AnalyticsProvisioningCreateAccountTicket {..} =
    go (Core.Just Core.AltJSON) payload analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsProvisioningCreateAccountTicketResource
          )
          Core.mempty
