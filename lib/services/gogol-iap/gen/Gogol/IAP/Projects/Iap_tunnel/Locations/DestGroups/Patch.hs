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
-- Module      : Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a TunnelDestGroup.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.locations.destGroups.patch@.
module Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Patch
  ( -- * Resource
    IAPProjectsIap_tunnelLocationsDestGroupsPatchResource,

    -- ** Constructing a Request
    IAPProjectsIap_tunnelLocationsDestGroupsPatch (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsPatch,
  )
where

import Gogol.IAP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iap.projects.iap_tunnel.locations.destGroups.patch@ method which the
-- 'IAPProjectsIap_tunnelLocationsDestGroupsPatch' request conforms to.
type IAPProjectsIap_tunnelLocationsDestGroupsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TunnelDestGroup
    Core.:> Core.Patch '[Core.JSON] TunnelDestGroup

-- | Updates a TunnelDestGroup.
--
-- /See:/ 'newIAPProjectsIap_tunnelLocationsDestGroupsPatch' smart constructor.
data IAPProjectsIap_tunnelLocationsDestGroupsPatch = IAPProjectsIap_tunnelLocationsDestGroupsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: TunnelDestGroup,
    -- | A field mask that specifies which IAP settings to update. If omitted, then all of the settings are updated. See https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsIap_tunnelLocationsDestGroupsPatch' with the minimum fields required to make a request.
newIAPProjectsIap_tunnelLocationsDestGroupsPatch ::
  -- |  Required. Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-). See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TunnelDestGroup ->
  IAPProjectsIap_tunnelLocationsDestGroupsPatch
newIAPProjectsIap_tunnelLocationsDestGroupsPatch name payload =
  IAPProjectsIap_tunnelLocationsDestGroupsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAPProjectsIap_tunnelLocationsDestGroupsPatch
  where
  type
    Rs IAPProjectsIap_tunnelLocationsDestGroupsPatch =
      TunnelDestGroup
  type
    Scopes
      IAPProjectsIap_tunnelLocationsDestGroupsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    IAPProjectsIap_tunnelLocationsDestGroupsPatch {..} =
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
        iAPService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAPProjectsIap_tunnelLocationsDestGroupsPatchResource
            )
            Core.mempty
