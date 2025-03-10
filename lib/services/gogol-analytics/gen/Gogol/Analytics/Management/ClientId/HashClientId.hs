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
-- Module      : Gogol.Analytics.Management.ClientId.HashClientId
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hashes the given Client ID.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.clientId.hashClientId@.
module Gogol.Analytics.Management.ClientId.HashClientId
  ( -- * Resource
    AnalyticsManagementClientIdHashClientIdResource,

    -- ** Constructing a Request
    AnalyticsManagementClientIdHashClientId (..),
    newAnalyticsManagementClientIdHashClientId,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.clientId.hashClientId@ method which the
-- 'AnalyticsManagementClientIdHashClientId' request conforms to.
type AnalyticsManagementClientIdHashClientIdResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "clientId:hashClientId"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] HashClientIdRequest
    Core.:> Core.Post '[Core.JSON] HashClientIdResponse

-- | Hashes the given Client ID.
--
-- /See:/ 'newAnalyticsManagementClientIdHashClientId' smart constructor.
newtype AnalyticsManagementClientIdHashClientId = AnalyticsManagementClientIdHashClientId
  { -- | Multipart request metadata.
    payload :: HashClientIdRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementClientIdHashClientId' with the minimum fields required to make a request.
newAnalyticsManagementClientIdHashClientId ::
  -- |  Multipart request metadata. See 'payload'.
  HashClientIdRequest ->
  AnalyticsManagementClientIdHashClientId
newAnalyticsManagementClientIdHashClientId payload =
  AnalyticsManagementClientIdHashClientId {payload = payload}

instance Core.GoogleRequest AnalyticsManagementClientIdHashClientId where
  type
    Rs AnalyticsManagementClientIdHashClientId =
      HashClientIdResponse
  type
    Scopes AnalyticsManagementClientIdHashClientId =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementClientIdHashClientId {..} =
    go (Core.Just Core.AltJSON) payload analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementClientIdHashClientIdResource
          )
          Core.mempty
