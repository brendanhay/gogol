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
-- Module      : Gogol.AccessApproval.Folders.GetAccessApprovalSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings associated with a project, folder, or organization.
--
-- /See:/ <https://cloud.google.com/assured-workloads/access-approval/docs Access Approval API Reference> for @accessapproval.folders.getAccessApprovalSettings@.
module Gogol.AccessApproval.Folders.GetAccessApprovalSettings
  ( -- * Resource
    AccessApprovalFoldersGetAccessApprovalSettingsResource,

    -- ** Constructing a Request
    AccessApprovalFoldersGetAccessApprovalSettings (..),
    newAccessApprovalFoldersGetAccessApprovalSettings,
  )
where

import Gogol.AccessApproval.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accessapproval.folders.getAccessApprovalSettings@ method which the
-- 'AccessApprovalFoldersGetAccessApprovalSettings' request conforms to.
type AccessApprovalFoldersGetAccessApprovalSettingsResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccessApprovalSettings

-- | Gets the settings associated with a project, folder, or organization.
--
-- /See:/ 'newAccessApprovalFoldersGetAccessApprovalSettings' smart constructor.
data AccessApprovalFoldersGetAccessApprovalSettings = AccessApprovalFoldersGetAccessApprovalSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the AccessApprovalSettings to retrieve. Format: \"{projects|folders|organizations}\/{id}\/accessApprovalSettings\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalFoldersGetAccessApprovalSettings' with the minimum fields required to make a request.
newAccessApprovalFoldersGetAccessApprovalSettings ::
  -- |  The name of the AccessApprovalSettings to retrieve. Format: \"{projects|folders|organizations}\/{id}\/accessApprovalSettings\" See 'name'.
  Core.Text ->
  AccessApprovalFoldersGetAccessApprovalSettings
newAccessApprovalFoldersGetAccessApprovalSettings name =
  AccessApprovalFoldersGetAccessApprovalSettings
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessApprovalFoldersGetAccessApprovalSettings
  where
  type
    Rs AccessApprovalFoldersGetAccessApprovalSettings =
      AccessApprovalSettings
  type
    Scopes AccessApprovalFoldersGetAccessApprovalSettings =
      '[CloudPlatform'FullControl]
  requestClient AccessApprovalFoldersGetAccessApprovalSettings {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      accessApprovalService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AccessApprovalFoldersGetAccessApprovalSettingsResource
          )
          Core.mempty
