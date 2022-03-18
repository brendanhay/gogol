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
-- Module      : Network.Google.AccessContextManager.Organizations.GcpUserAccessBindings.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the GcpUserAccessBinding with the given name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.get@.
module Network.Google.AccessContextManager.Organizations.GcpUserAccessBindings.Get
  ( -- * Resource
    AccessContextManagerOrganizationsGcpUserAccessBindingsGetResource,

    -- ** Constructing a Request
    newAccessContextManagerOrganizationsGcpUserAccessBindingsGet,
    AccessContextManagerOrganizationsGcpUserAccessBindingsGet,
  )
where

import Network.Google.AccessContextManager.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.get@ method which the
-- 'AccessContextManagerOrganizationsGcpUserAccessBindingsGet' request conforms to.
type AccessContextManagerOrganizationsGcpUserAccessBindingsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GcpUserAccessBinding

-- | Gets the GcpUserAccessBinding with the given name.
--
-- /See:/ 'newAccessContextManagerOrganizationsGcpUserAccessBindingsGet' smart constructor.
data AccessContextManagerOrganizationsGcpUserAccessBindingsGet = AccessContextManagerOrganizationsGcpUserAccessBindingsGet
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

-- | Creates a value of 'AccessContextManagerOrganizationsGcpUserAccessBindingsGet' with the minimum fields required to make a request.
newAccessContextManagerOrganizationsGcpUserAccessBindingsGet ::
  -- |  Required. Example: \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\" See 'name'.
  Core.Text ->
  AccessContextManagerOrganizationsGcpUserAccessBindingsGet
newAccessContextManagerOrganizationsGcpUserAccessBindingsGet name =
  AccessContextManagerOrganizationsGcpUserAccessBindingsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessContextManagerOrganizationsGcpUserAccessBindingsGet
  where
  type
    Rs
      AccessContextManagerOrganizationsGcpUserAccessBindingsGet =
      GcpUserAccessBinding
  type
    Scopes
      AccessContextManagerOrganizationsGcpUserAccessBindingsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    AccessContextManagerOrganizationsGcpUserAccessBindingsGet {..} =
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
                  AccessContextManagerOrganizationsGcpUserAccessBindingsGetResource
            )
            Core.mempty
