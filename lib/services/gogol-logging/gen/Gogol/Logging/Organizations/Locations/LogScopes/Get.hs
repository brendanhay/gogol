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
-- Module      : Gogol.Logging.Organizations.Locations.LogScopes.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a log scope.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.logScopes.get@.
module Gogol.Logging.Organizations.Locations.LogScopes.Get
  ( -- * Resource
    LoggingOrganizationsLocationsLogScopesGetResource,

    -- ** Constructing a Request
    LoggingOrganizationsLocationsLogScopesGet (..),
    newLoggingOrganizationsLocationsLogScopesGet,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.organizations.locations.logScopes.get@ method which the
-- 'LoggingOrganizationsLocationsLogScopesGet' request conforms to.
type LoggingOrganizationsLocationsLogScopesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LogScope

-- | Gets a log scope.
--
-- /See:/ 'newLoggingOrganizationsLocationsLogScopesGet' smart constructor.
data LoggingOrganizationsLocationsLogScopesGet = LoggingOrganizationsLocationsLogScopesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the log scope: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/logScopes\/[LOG/SCOPE/ID]\" For example:\"projects\/my-project\/locations\/global\/logScopes\/my-log-scope\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsLocationsLogScopesGet' with the minimum fields required to make a request.
newLoggingOrganizationsLocationsLogScopesGet ::
  -- |  Required. The resource name of the log scope: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/logScopes\/[LOG/SCOPE/ID]\" For example:\"projects\/my-project\/locations\/global\/logScopes\/my-log-scope\" See 'name'.
  Core.Text ->
  LoggingOrganizationsLocationsLogScopesGet
newLoggingOrganizationsLocationsLogScopesGet name =
  LoggingOrganizationsLocationsLogScopesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingOrganizationsLocationsLogScopesGet
  where
  type Rs LoggingOrganizationsLocationsLogScopesGet = LogScope
  type
    Scopes LoggingOrganizationsLocationsLogScopesGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingOrganizationsLocationsLogScopesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingOrganizationsLocationsLogScopesGetResource
          )
          Core.mempty
