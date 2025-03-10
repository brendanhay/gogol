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
-- Module      : Gogol.Admin.Directory.Resources.Buildings.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.insert@.
module Gogol.Admin.Directory.Resources.Buildings.Insert
  ( -- * Resource
    DirectoryResourcesBuildingsInsertResource,

    -- ** Constructing a Request
    DirectoryResourcesBuildingsInsert (..),
    newDirectoryResourcesBuildingsInsert,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.resources.buildings.insert@ method which the
-- 'DirectoryResourcesBuildingsInsert' request conforms to.
type DirectoryResourcesBuildingsInsertResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "resources"
    Core.:> "buildings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "coordinatesSource"
              ResourcesBuildingsInsertCoordinatesSource
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Building
    Core.:> Core.Post '[Core.JSON] Building

-- | Inserts a building.
--
-- /See:/ 'newDirectoryResourcesBuildingsInsert' smart constructor.
data DirectoryResourcesBuildingsInsert = DirectoryResourcesBuildingsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Source from which Building.coordinates are derived.
    coordinatesSource :: ResourcesBuildingsInsertCoordinatesSource,
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    customer :: Core.Text,
    -- | Multipart request metadata.
    payload :: Building,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesBuildingsInsert' with the minimum fields required to make a request.
newDirectoryResourcesBuildingsInsert ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Building ->
  DirectoryResourcesBuildingsInsert
newDirectoryResourcesBuildingsInsert customer payload =
  DirectoryResourcesBuildingsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      coordinatesSource =
        ResourcesBuildingsInsertCoordinatesSource_SOURCEUNSPECIFIED,
      customer = customer,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryResourcesBuildingsInsert where
  type Rs DirectoryResourcesBuildingsInsert = Building
  type
    Scopes DirectoryResourcesBuildingsInsert =
      '[Admin'Directory'Resource'Calendar]
  requestClient DirectoryResourcesBuildingsInsert {..} =
    go
      customer
      xgafv
      accessToken
      callback
      (Core.Just coordinatesSource)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryResourcesBuildingsInsertResource
          )
          Core.mempty
