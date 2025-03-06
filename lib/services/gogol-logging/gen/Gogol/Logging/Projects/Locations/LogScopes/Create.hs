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
-- Module      : Gogol.Logging.Projects.Locations.LogScopes.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a log scope.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.logScopes.create@.
module Gogol.Logging.Projects.Locations.LogScopes.Create
  ( -- * Resource
    LoggingProjectsLocationsLogScopesCreateResource,

    -- ** Constructing a Request
    LoggingProjectsLocationsLogScopesCreate (..),
    newLoggingProjectsLocationsLogScopesCreate,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.projects.locations.logScopes.create@ method which the
-- 'LoggingProjectsLocationsLogScopesCreate' request conforms to.
type LoggingProjectsLocationsLogScopesCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "logScopes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "logScopeId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogScope
    Core.:> Core.Post '[Core.JSON] LogScope

-- | Creates a log scope.
--
-- /See:/ 'newLoggingProjectsLocationsLogScopesCreate' smart constructor.
data LoggingProjectsLocationsLogScopesCreate = LoggingProjectsLocationsLogScopesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A client-assigned identifier such as \"log-scope\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
    logScopeId :: (Core.Maybe Core.Text),
    -- | Required. The parent project in which to create the log scope \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" For example:\"projects\/my-project\/locations\/global\"
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogScope,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsLocationsLogScopesCreate' with the minimum fields required to make a request.
newLoggingProjectsLocationsLogScopesCreate ::
  -- |  Required. The parent project in which to create the log scope \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" For example:\"projects\/my-project\/locations\/global\" See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogScope ->
  LoggingProjectsLocationsLogScopesCreate
newLoggingProjectsLocationsLogScopesCreate parent payload =
  LoggingProjectsLocationsLogScopesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      logScopeId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingProjectsLocationsLogScopesCreate where
  type Rs LoggingProjectsLocationsLogScopesCreate = LogScope
  type
    Scopes LoggingProjectsLocationsLogScopesCreate =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingProjectsLocationsLogScopesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      logScopeId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingProjectsLocationsLogScopesCreateResource
          )
          Core.mempty
