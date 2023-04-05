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
-- Module      : Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new TunnelDestGroup.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.locations.destGroups.create@.
module Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Create
  ( -- * Resource
    IAPProjectsIap_tunnelLocationsDestGroupsCreateResource,

    -- ** Constructing a Request
    IAPProjectsIap_tunnelLocationsDestGroupsCreate (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsCreate,
  )
where

import Gogol.IAP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iap.projects.iap_tunnel.locations.destGroups.create@ method which the
-- 'IAPProjectsIap_tunnelLocationsDestGroupsCreate' request conforms to.
type IAPProjectsIap_tunnelLocationsDestGroupsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "destGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "tunnelDestGroupId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TunnelDestGroup
    Core.:> Core.Post '[Core.JSON] TunnelDestGroup

-- | Creates a new TunnelDestGroup.
--
-- /See:/ 'newIAPProjectsIap_tunnelLocationsDestGroupsCreate' smart constructor.
data IAPProjectsIap_tunnelLocationsDestGroupsCreate = IAPProjectsIap_tunnelLocationsDestGroupsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Google Cloud Project ID and location. In the following format: @projects\/{project_number\/id}\/iap_tunnel\/locations\/{location}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: TunnelDestGroup,
    -- | Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are @[a-z]-@.
    tunnelDestGroupId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsIap_tunnelLocationsDestGroupsCreate' with the minimum fields required to make a request.
newIAPProjectsIap_tunnelLocationsDestGroupsCreate ::
  -- |  Required. Google Cloud Project ID and location. In the following format: @projects\/{project_number\/id}\/iap_tunnel\/locations\/{location}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TunnelDestGroup ->
  IAPProjectsIap_tunnelLocationsDestGroupsCreate
newIAPProjectsIap_tunnelLocationsDestGroupsCreate parent payload =
  IAPProjectsIap_tunnelLocationsDestGroupsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      tunnelDestGroupId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAPProjectsIap_tunnelLocationsDestGroupsCreate
  where
  type
    Rs
      IAPProjectsIap_tunnelLocationsDestGroupsCreate =
      TunnelDestGroup
  type
    Scopes
      IAPProjectsIap_tunnelLocationsDestGroupsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    IAPProjectsIap_tunnelLocationsDestGroupsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        tunnelDestGroupId
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
                  IAPProjectsIap_tunnelLocationsDestGroupsCreateResource
            )
            Core.mempty
