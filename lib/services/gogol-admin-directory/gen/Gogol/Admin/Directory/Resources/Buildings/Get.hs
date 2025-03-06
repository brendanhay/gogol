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
-- Module      : Gogol.Admin.Directory.Resources.Buildings.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.get@.
module Gogol.Admin.Directory.Resources.Buildings.Get
  ( -- * Resource
    DirectoryResourcesBuildingsGetResource,

    -- ** Constructing a Request
    DirectoryResourcesBuildingsGet (..),
    newDirectoryResourcesBuildingsGet,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.resources.buildings.get@ method which the
-- 'DirectoryResourcesBuildingsGet' request conforms to.
type DirectoryResourcesBuildingsGetResource =
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
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Building

-- | Retrieves a building.
--
-- /See:/ 'newDirectoryResourcesBuildingsGet' smart constructor.
data DirectoryResourcesBuildingsGet = DirectoryResourcesBuildingsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The unique ID of the building to retrieve.
    buildingId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    customer :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesBuildingsGet' with the minimum fields required to make a request.
newDirectoryResourcesBuildingsGet ::
  -- |  The unique ID of the building to retrieve. See 'buildingId'.
  Core.Text ->
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
  Core.Text ->
  DirectoryResourcesBuildingsGet
newDirectoryResourcesBuildingsGet buildingId customer =
  DirectoryResourcesBuildingsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      buildingId = buildingId,
      callback = Core.Nothing,
      customer = customer,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryResourcesBuildingsGet where
  type Rs DirectoryResourcesBuildingsGet = Building
  type
    Scopes DirectoryResourcesBuildingsGet =
      '[ Admin'Directory'Resource'Calendar,
         Admin'Directory'Resource'Calendar'Readonly
       ]
  requestClient DirectoryResourcesBuildingsGet {..} =
    go
      customer
      buildingId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryResourcesBuildingsGetResource)
          Core.mempty
