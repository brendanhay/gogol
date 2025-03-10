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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Liens.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a Lien which applies to the resource denoted by the @parent@ field. Callers of this method will require permission on the @parent@ resource. For example, applying to @projects\/1234@ requires permission @resourcemanager.projects.updateLiens@. NOTE: Some resources may limit the number of Liens which may be applied.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.liens.create@.
module Gogol.ResourceManager.Cloudresourcemanager.Liens.Create
  ( -- * Resource
    CloudresourcemanagerLiensCreateResource,

    -- ** Constructing a Request
    CloudresourcemanagerLiensCreate (..),
    newCloudresourcemanagerLiensCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.liens.create@ method which the
-- 'CloudresourcemanagerLiensCreate' request conforms to.
type CloudresourcemanagerLiensCreateResource =
  "v3"
    Core.:> "liens"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Lien
    Core.:> Core.Post '[Core.JSON] Lien

-- | Create a Lien which applies to the resource denoted by the @parent@ field. Callers of this method will require permission on the @parent@ resource. For example, applying to @projects\/1234@ requires permission @resourcemanager.projects.updateLiens@. NOTE: Some resources may limit the number of Liens which may be applied.
--
-- /See:/ 'newCloudresourcemanagerLiensCreate' smart constructor.
data CloudresourcemanagerLiensCreate = CloudresourcemanagerLiensCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Lien,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerLiensCreate' with the minimum fields required to make a request.
newCloudresourcemanagerLiensCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Lien ->
  CloudresourcemanagerLiensCreate
newCloudresourcemanagerLiensCreate payload =
  CloudresourcemanagerLiensCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudresourcemanagerLiensCreate where
  type Rs CloudresourcemanagerLiensCreate = Lien
  type
    Scopes CloudresourcemanagerLiensCreate =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient CloudresourcemanagerLiensCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      resourceManagerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudresourcemanagerLiensCreateResource)
          Core.mempty
