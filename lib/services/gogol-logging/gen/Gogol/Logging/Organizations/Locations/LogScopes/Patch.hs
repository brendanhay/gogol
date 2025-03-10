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
-- Module      : Gogol.Logging.Organizations.Locations.LogScopes.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a log scope.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.logScopes.patch@.
module Gogol.Logging.Organizations.Locations.LogScopes.Patch
  ( -- * Resource
    LoggingOrganizationsLocationsLogScopesPatchResource,

    -- ** Constructing a Request
    LoggingOrganizationsLocationsLogScopesPatch (..),
    newLoggingOrganizationsLocationsLogScopesPatch,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.organizations.locations.logScopes.patch@ method which the
-- 'LoggingOrganizationsLocationsLogScopesPatch' request conforms to.
type LoggingOrganizationsLocationsLogScopesPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogScope
    Core.:> Core.Patch '[Core.JSON] LogScope

-- | Updates a log scope.
--
-- /See:/ 'newLoggingOrganizationsLocationsLogScopesPatch' smart constructor.
data LoggingOrganizationsLocationsLogScopesPatch = LoggingOrganizationsLocationsLogScopesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the log scope.Log scopes are only available in the global location. For example:projects\/my-project\/locations\/global\/logScopes\/my-log-scope
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogScope,
    -- | Optional. Field mask that specifies the fields in log_scope that need an update. A field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=description
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsLocationsLogScopesPatch' with the minimum fields required to make a request.
newLoggingOrganizationsLocationsLogScopesPatch ::
  -- |  Output only. The resource name of the log scope.Log scopes are only available in the global location. For example:projects\/my-project\/locations\/global\/logScopes\/my-log-scope See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogScope ->
  LoggingOrganizationsLocationsLogScopesPatch
newLoggingOrganizationsLocationsLogScopesPatch name payload =
  LoggingOrganizationsLocationsLogScopesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingOrganizationsLocationsLogScopesPatch
  where
  type Rs LoggingOrganizationsLocationsLogScopesPatch = LogScope
  type
    Scopes LoggingOrganizationsLocationsLogScopesPatch =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingOrganizationsLocationsLogScopesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingOrganizationsLocationsLogScopesPatchResource
          )
          Core.mempty
