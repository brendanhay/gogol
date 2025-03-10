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
-- Module      : Gogol.SecurityCenter.Organizations.Sources.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.patch@.
module Gogol.SecurityCenter.Organizations.Sources.Patch
  ( -- * Resource
    SecurityCenterOrganizationsSourcesPatchResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsSourcesPatch (..),
    newSecurityCenterOrganizationsSourcesPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.patch@ method which the
-- 'SecurityCenterOrganizationsSourcesPatch' request conforms to.
type SecurityCenterOrganizationsSourcesPatchResource =
  "v1p1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Source
    Core.:> Core.Patch '[Core.JSON] Source

-- | Updates a source.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesPatch' smart constructor.
data SecurityCenterOrganizationsSourcesPatch = SecurityCenterOrganizationsSourcesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The relative resource name of this source. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source_id}\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Source,
    -- | The FieldMask to use when updating the source resource. If empty all mutable fields will be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesPatch' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesPatch ::
  -- |  The relative resource name of this source. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source_id}\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Source ->
  SecurityCenterOrganizationsSourcesPatch
newSecurityCenterOrganizationsSourcesPatch name payload =
  SecurityCenterOrganizationsSourcesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SecurityCenterOrganizationsSourcesPatch where
  type Rs SecurityCenterOrganizationsSourcesPatch = Source
  type
    Scopes SecurityCenterOrganizationsSourcesPatch =
      '[CloudPlatform'FullControl]
  requestClient SecurityCenterOrganizationsSourcesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      securityCenterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SecurityCenterOrganizationsSourcesPatchResource
          )
          Core.mempty
