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
-- Module      : Gogol.DLP.Organizations.Locations.Connections.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a Connection to an external data source.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.connections.create@.
module Gogol.DLP.Organizations.Locations.Connections.Create
  ( -- * Resource
    DLPOrganizationsLocationsConnectionsCreateResource,

    -- ** Constructing a Request
    DLPOrganizationsLocationsConnectionsCreate (..),
    newDLPOrganizationsLocationsConnectionsCreate,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.organizations.locations.connections.create@ method which the
-- 'DLPOrganizationsLocationsConnectionsCreate' request conforms to.
type DLPOrganizationsLocationsConnectionsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "connections"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GooglePrivacyDlpV2CreateConnectionRequest
    Core.:> Core.Post '[Core.JSON] GooglePrivacyDlpV2Connection

-- | Create a Connection to an external data source.
--
-- /See:/ 'newDLPOrganizationsLocationsConnectionsCreate' smart constructor.
data DLPOrganizationsLocationsConnectionsCreate = DLPOrganizationsLocationsConnectionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization): + Projects scope: @projects\/{project_id}\/locations\/{location_id}@ + Organizations scope: @organizations\/{org_id}\/locations\/{location_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2CreateConnectionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsConnectionsCreate' with the minimum fields required to make a request.
newDLPOrganizationsLocationsConnectionsCreate ::
  -- |  Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization): + Projects scope: @projects\/{project_id}\/locations\/{location_id}@ + Organizations scope: @organizations\/{org_id}\/locations\/{location_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2CreateConnectionRequest ->
  DLPOrganizationsLocationsConnectionsCreate
newDLPOrganizationsLocationsConnectionsCreate parent payload =
  DLPOrganizationsLocationsConnectionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPOrganizationsLocationsConnectionsCreate
  where
  type
    Rs DLPOrganizationsLocationsConnectionsCreate =
      GooglePrivacyDlpV2Connection
  type
    Scopes DLPOrganizationsLocationsConnectionsCreate =
      '[CloudPlatform'FullControl]
  requestClient DLPOrganizationsLocationsConnectionsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dLPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DLPOrganizationsLocationsConnectionsCreateResource
          )
          Core.mempty
