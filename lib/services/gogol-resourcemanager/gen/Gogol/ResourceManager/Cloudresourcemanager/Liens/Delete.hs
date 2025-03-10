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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Liens.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a Lien by @name@. Callers of this method will require permission on the @parent@ resource. For example, a Lien with a @parent@ of @projects\/1234@ requires permission @resourcemanager.projects.updateLiens@.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.liens.delete@.
module Gogol.ResourceManager.Cloudresourcemanager.Liens.Delete
  ( -- * Resource
    CloudresourcemanagerLiensDeleteResource,

    -- ** Constructing a Request
    CloudresourcemanagerLiensDelete (..),
    newCloudresourcemanagerLiensDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.liens.delete@ method which the
-- 'CloudresourcemanagerLiensDelete' request conforms to.
type CloudresourcemanagerLiensDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Delete a Lien by @name@. Callers of this method will require permission on the @parent@ resource. For example, a Lien with a @parent@ of @projects\/1234@ requires permission @resourcemanager.projects.updateLiens@.
--
-- /See:/ 'newCloudresourcemanagerLiensDelete' smart constructor.
data CloudresourcemanagerLiensDelete = CloudresourcemanagerLiensDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name\/identifier of the Lien to delete.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerLiensDelete' with the minimum fields required to make a request.
newCloudresourcemanagerLiensDelete ::
  -- |  Required. The name\/identifier of the Lien to delete. See 'name'.
  Core.Text ->
  CloudresourcemanagerLiensDelete
newCloudresourcemanagerLiensDelete name =
  CloudresourcemanagerLiensDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudresourcemanagerLiensDelete where
  type Rs CloudresourcemanagerLiensDelete = Empty
  type
    Scopes CloudresourcemanagerLiensDelete =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient CloudresourcemanagerLiensDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      resourceManagerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudresourcemanagerLiensDeleteResource)
          Core.mempty
