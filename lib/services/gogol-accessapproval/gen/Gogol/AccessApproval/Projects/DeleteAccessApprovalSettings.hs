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
-- Module      : Gogol.AccessApproval.Projects.DeleteAccessApprovalSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the project, folder, or organization, but only if all ancestors also have Access Approval disabled. If Access Approval is enabled at a higher level of the hierarchy, then Access Approval will still be enabled at this level as the settings are inherited.
--
-- /See:/ <https://cloud.google.com/assured-workloads/access-approval/docs Access Approval API Reference> for @accessapproval.projects.deleteAccessApprovalSettings@.
module Gogol.AccessApproval.Projects.DeleteAccessApprovalSettings
  ( -- * Resource
    AccessApprovalProjectsDeleteAccessApprovalSettingsResource,

    -- ** Constructing a Request
    AccessApprovalProjectsDeleteAccessApprovalSettings (..),
    newAccessApprovalProjectsDeleteAccessApprovalSettings,
  )
where

import Gogol.AccessApproval.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accessapproval.projects.deleteAccessApprovalSettings@ method which the
-- 'AccessApprovalProjectsDeleteAccessApprovalSettings' request conforms to.
type AccessApprovalProjectsDeleteAccessApprovalSettingsResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the project, folder, or organization, but only if all ancestors also have Access Approval disabled. If Access Approval is enabled at a higher level of the hierarchy, then Access Approval will still be enabled at this level as the settings are inherited.
--
-- /See:/ 'newAccessApprovalProjectsDeleteAccessApprovalSettings' smart constructor.
data AccessApprovalProjectsDeleteAccessApprovalSettings = AccessApprovalProjectsDeleteAccessApprovalSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the AccessApprovalSettings to delete.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalProjectsDeleteAccessApprovalSettings' with the minimum fields required to make a request.
newAccessApprovalProjectsDeleteAccessApprovalSettings ::
  -- |  Name of the AccessApprovalSettings to delete. See 'name'.
  Core.Text ->
  AccessApprovalProjectsDeleteAccessApprovalSettings
newAccessApprovalProjectsDeleteAccessApprovalSettings name =
  AccessApprovalProjectsDeleteAccessApprovalSettings
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
    AccessApprovalProjectsDeleteAccessApprovalSettings
  where
  type Rs AccessApprovalProjectsDeleteAccessApprovalSettings = Empty
  type
    Scopes AccessApprovalProjectsDeleteAccessApprovalSettings =
      '[CloudPlatform'FullControl]
  requestClient
    AccessApprovalProjectsDeleteAccessApprovalSettings {..} =
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
                Core.Proxy
                  AccessApprovalProjectsDeleteAccessApprovalSettingsResource
            )
            Core.mempty
