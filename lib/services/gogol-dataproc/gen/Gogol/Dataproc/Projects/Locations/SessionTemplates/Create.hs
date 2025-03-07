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
-- Module      : Gogol.Dataproc.Projects.Locations.SessionTemplates.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a session template synchronously.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessionTemplates.create@.
module Gogol.Dataproc.Projects.Locations.SessionTemplates.Create
  ( -- * Resource
    DataprocProjectsLocationsSessionTemplatesCreateResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsSessionTemplatesCreate (..),
    newDataprocProjectsLocationsSessionTemplatesCreate,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.sessionTemplates.create@ method which the
-- 'DataprocProjectsLocationsSessionTemplatesCreate' request conforms to.
type DataprocProjectsLocationsSessionTemplatesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "sessionTemplates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SessionTemplate
    Core.:> Core.Post '[Core.JSON] SessionTemplate

-- | Create a session template synchronously.
--
-- /See:/ 'newDataprocProjectsLocationsSessionTemplatesCreate' smart constructor.
data DataprocProjectsLocationsSessionTemplatesCreate = DataprocProjectsLocationsSessionTemplatesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource where this session template will be created.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: SessionTemplate,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionTemplatesCreate' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionTemplatesCreate ::
  -- |  Required. The parent resource where this session template will be created. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SessionTemplate ->
  DataprocProjectsLocationsSessionTemplatesCreate
newDataprocProjectsLocationsSessionTemplatesCreate parent payload =
  DataprocProjectsLocationsSessionTemplatesCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsSessionTemplatesCreate
  where
  type
    Rs DataprocProjectsLocationsSessionTemplatesCreate =
      SessionTemplate
  type
    Scopes DataprocProjectsLocationsSessionTemplatesCreate =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsLocationsSessionTemplatesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dataprocService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataprocProjectsLocationsSessionTemplatesCreateResource
          )
          Core.mempty
