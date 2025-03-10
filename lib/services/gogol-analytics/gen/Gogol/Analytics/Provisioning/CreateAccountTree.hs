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
-- Module      : Gogol.Analytics.Provisioning.CreateAccountTree
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provision account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.provisioning.createAccountTree@.
module Gogol.Analytics.Provisioning.CreateAccountTree
  ( -- * Resource
    AnalyticsProvisioningCreateAccountTreeResource,

    -- ** Constructing a Request
    AnalyticsProvisioningCreateAccountTree (..),
    newAnalyticsProvisioningCreateAccountTree,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.provisioning.createAccountTree@ method which the
-- 'AnalyticsProvisioningCreateAccountTree' request conforms to.
type AnalyticsProvisioningCreateAccountTreeResource =
  "analytics"
    Core.:> "v3"
    Core.:> "provisioning"
    Core.:> "createAccountTree"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccountTreeRequest
    Core.:> Core.Post '[Core.JSON] AccountTreeResponse

-- | Provision account.
--
-- /See:/ 'newAnalyticsProvisioningCreateAccountTree' smart constructor.
newtype AnalyticsProvisioningCreateAccountTree = AnalyticsProvisioningCreateAccountTree
  { -- | Multipart request metadata.
    payload :: AccountTreeRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsProvisioningCreateAccountTree' with the minimum fields required to make a request.
newAnalyticsProvisioningCreateAccountTree ::
  -- |  Multipart request metadata. See 'payload'.
  AccountTreeRequest ->
  AnalyticsProvisioningCreateAccountTree
newAnalyticsProvisioningCreateAccountTree payload =
  AnalyticsProvisioningCreateAccountTree {payload = payload}

instance Core.GoogleRequest AnalyticsProvisioningCreateAccountTree where
  type
    Rs AnalyticsProvisioningCreateAccountTree =
      AccountTreeResponse
  type
    Scopes AnalyticsProvisioningCreateAccountTree =
      '[Analytics'Provision]
  requestClient AnalyticsProvisioningCreateAccountTree {..} =
    go (Core.Just Core.AltJSON) payload analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsProvisioningCreateAccountTreeResource
          )
          Core.mempty
