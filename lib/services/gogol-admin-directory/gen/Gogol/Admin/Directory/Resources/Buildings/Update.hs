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
-- Module      : Gogol.Admin.Directory.Resources.Buildings.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.update@.
module Gogol.Admin.Directory.Resources.Buildings.Update
  ( -- * Resource
    DirectoryResourcesBuildingsUpdateResource,

    -- ** Constructing a Request
    newDirectoryResourcesBuildingsUpdate,
    DirectoryResourcesBuildingsUpdate,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.resources.buildings.update@ method which the
-- 'DirectoryResourcesBuildingsUpdate' request conforms to.
type DirectoryResourcesBuildingsUpdateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "resources"
    Core.:> "buildings"
    Core.:> Core.Capture "buildingId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "coordinatesSource"
              ResourcesBuildingsUpdateCoordinatesSource
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Building
    Core.:> Core.Put '[Core.JSON] Building

-- | Updates a building.
--
-- /See:/ 'newDirectoryResourcesBuildingsUpdate' smart constructor.
data DirectoryResourcesBuildingsUpdate = DirectoryResourcesBuildingsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The id of the building to update.
    buildingId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Source from which Building.coordinates are derived.
    coordinatesSource :: ResourcesBuildingsUpdateCoordinatesSource,
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

-- | Creates a value of 'DirectoryResourcesBuildingsUpdate' with the minimum fields required to make a request.
newDirectoryResourcesBuildingsUpdate ::
  -- |  The id of the building to update. See 'buildingId'.
  Core.Text ->
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Building ->
  DirectoryResourcesBuildingsUpdate
newDirectoryResourcesBuildingsUpdate buildingId customer payload =
  DirectoryResourcesBuildingsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      buildingId = buildingId,
      callback = Core.Nothing,
      coordinatesSource =
        ResourcesBuildingsUpdateCoordinatesSource_SOURCEUNSPECIFIED,
      customer = customer,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DirectoryResourcesBuildingsUpdate
  where
  type Rs DirectoryResourcesBuildingsUpdate = Building
  type
    Scopes DirectoryResourcesBuildingsUpdate =
      '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
  requestClient DirectoryResourcesBuildingsUpdate {..} =
    go
      customer
      buildingId
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
              Core.Proxy DirectoryResourcesBuildingsUpdateResource
          )
          Core.mempty
