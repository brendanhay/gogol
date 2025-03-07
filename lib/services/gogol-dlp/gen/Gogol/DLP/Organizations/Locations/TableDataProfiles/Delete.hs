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
-- Module      : Gogol.DLP.Organizations.Locations.TableDataProfiles.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a TableDataProfile. Will not prevent the profile from being regenerated if the table is still included in a discovery configuration.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.tableDataProfiles.delete@.
module Gogol.DLP.Organizations.Locations.TableDataProfiles.Delete
  ( -- * Resource
    DLPOrganizationsLocationsTableDataProfilesDeleteResource,

    -- ** Constructing a Request
    DLPOrganizationsLocationsTableDataProfilesDelete (..),
    newDLPOrganizationsLocationsTableDataProfilesDelete,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.organizations.locations.tableDataProfiles.delete@ method which the
-- 'DLPOrganizationsLocationsTableDataProfilesDelete' request conforms to.
type DLPOrganizationsLocationsTableDataProfilesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Delete a TableDataProfile. Will not prevent the profile from being regenerated if the table is still included in a discovery configuration.
--
-- /See:/ 'newDLPOrganizationsLocationsTableDataProfilesDelete' smart constructor.
data DLPOrganizationsLocationsTableDataProfilesDelete = DLPOrganizationsLocationsTableDataProfilesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the table data profile.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsTableDataProfilesDelete' with the minimum fields required to make a request.
newDLPOrganizationsLocationsTableDataProfilesDelete ::
  -- |  Required. Resource name of the table data profile. See 'name'.
  Core.Text ->
  DLPOrganizationsLocationsTableDataProfilesDelete
newDLPOrganizationsLocationsTableDataProfilesDelete name =
  DLPOrganizationsLocationsTableDataProfilesDelete
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
    DLPOrganizationsLocationsTableDataProfilesDelete
  where
  type
    Rs DLPOrganizationsLocationsTableDataProfilesDelete =
      GoogleProtobufEmpty
  type
    Scopes DLPOrganizationsLocationsTableDataProfilesDelete =
      '[CloudPlatform'FullControl]
  requestClient DLPOrganizationsLocationsTableDataProfilesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dLPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DLPOrganizationsLocationsTableDataProfilesDeleteResource
          )
          Core.mempty
