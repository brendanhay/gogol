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
-- Module      : Gogol.DLP.Organizations.StoredInfoTypes.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stored infoType. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.storedInfoTypes.delete@.
module Gogol.DLP.Organizations.StoredInfoTypes.Delete
  ( -- * Resource
    DLPOrganizationsStoredInfoTypesDeleteResource,

    -- ** Constructing a Request
    DLPOrganizationsStoredInfoTypesDelete (..),
    newDLPOrganizationsStoredInfoTypesDelete,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.organizations.storedInfoTypes.delete@ method which the
-- 'DLPOrganizationsStoredInfoTypesDelete' request conforms to.
type DLPOrganizationsStoredInfoTypesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes a stored infoType. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ 'newDLPOrganizationsStoredInfoTypesDelete' smart constructor.
data DLPOrganizationsStoredInfoTypesDelete = DLPOrganizationsStoredInfoTypesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the organization and storedInfoType to be deleted, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or projects\/project-id\/storedInfoTypes\/432452342.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsStoredInfoTypesDelete' with the minimum fields required to make a request.
newDLPOrganizationsStoredInfoTypesDelete ::
  -- |  Required. Resource name of the organization and storedInfoType to be deleted, for example @organizations\/433245324\/storedInfoTypes\/432452342@ or projects\/project-id\/storedInfoTypes\/432452342. See 'name'.
  Core.Text ->
  DLPOrganizationsStoredInfoTypesDelete
newDLPOrganizationsStoredInfoTypesDelete name =
  DLPOrganizationsStoredInfoTypesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DLPOrganizationsStoredInfoTypesDelete where
  type Rs DLPOrganizationsStoredInfoTypesDelete = GoogleProtobufEmpty
  type
    Scopes DLPOrganizationsStoredInfoTypesDelete =
      '[CloudPlatform'FullControl]
  requestClient DLPOrganizationsStoredInfoTypesDelete {..} =
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
              Core.Proxy DLPOrganizationsStoredInfoTypesDeleteResource
          )
          Core.mempty
