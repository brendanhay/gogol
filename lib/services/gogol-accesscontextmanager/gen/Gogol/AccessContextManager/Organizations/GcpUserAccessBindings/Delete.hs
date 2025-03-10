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
-- Module      : Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GcpUserAccessBinding. Completion of this long-running operation does not necessarily signify that the binding deletion is deployed onto all affected users, which may take more time.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.delete@.
module Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Delete
  ( -- * Resource
    AccessContextManagerOrganizationsGcpUserAccessBindingsDeleteResource,

    -- ** Constructing a Request
    AccessContextManagerOrganizationsGcpUserAccessBindingsDelete (..),
    newAccessContextManagerOrganizationsGcpUserAccessBindingsDelete,
  )
where

import Gogol.AccessContextManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.delete@ method which the
-- 'AccessContextManagerOrganizationsGcpUserAccessBindingsDelete' request conforms to.
type AccessContextManagerOrganizationsGcpUserAccessBindingsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a GcpUserAccessBinding. Completion of this long-running operation does not necessarily signify that the binding deletion is deployed onto all affected users, which may take more time.
--
-- /See:/ 'newAccessContextManagerOrganizationsGcpUserAccessBindingsDelete' smart constructor.
data AccessContextManagerOrganizationsGcpUserAccessBindingsDelete = AccessContextManagerOrganizationsGcpUserAccessBindingsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Example: \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerOrganizationsGcpUserAccessBindingsDelete' with the minimum fields required to make a request.
newAccessContextManagerOrganizationsGcpUserAccessBindingsDelete ::
  -- |  Required. Example: \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\" See 'name'.
  Core.Text ->
  AccessContextManagerOrganizationsGcpUserAccessBindingsDelete
newAccessContextManagerOrganizationsGcpUserAccessBindingsDelete
  name =
    AccessContextManagerOrganizationsGcpUserAccessBindingsDelete
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
    AccessContextManagerOrganizationsGcpUserAccessBindingsDelete
  where
  type
    Rs
      AccessContextManagerOrganizationsGcpUserAccessBindingsDelete =
      Operation
  type
    Scopes
      AccessContextManagerOrganizationsGcpUserAccessBindingsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    AccessContextManagerOrganizationsGcpUserAccessBindingsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        accessContextManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AccessContextManagerOrganizationsGcpUserAccessBindingsDeleteResource
            )
            Core.mempty
