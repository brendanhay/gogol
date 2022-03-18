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
-- Module      : Gogol.TPU.Projects.Locations.Nodes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.get@.
module Gogol.TPU.Projects.Locations.Nodes.Get
  ( -- * Resource
    TPUProjectsLocationsNodesGetResource,

    -- ** Constructing a Request
    newTPUProjectsLocationsNodesGet,
    TPUProjectsLocationsNodesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.get@ method which the
-- 'TPUProjectsLocationsNodesGet' request conforms to.
type TPUProjectsLocationsNodesGetResource =
  "v2alpha1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Node

-- | Gets the details of a node.
--
-- /See:/ 'newTPUProjectsLocationsNodesGet' smart constructor.
data TPUProjectsLocationsNodesGet = TPUProjectsLocationsNodesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsNodesGet' with the minimum fields required to make a request.
newTPUProjectsLocationsNodesGet ::
  -- |  Required. The resource name. See 'name'.
  Core.Text ->
  TPUProjectsLocationsNodesGet
newTPUProjectsLocationsNodesGet name =
  TPUProjectsLocationsNodesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TPUProjectsLocationsNodesGet
  where
  type Rs TPUProjectsLocationsNodesGet = Node
  type
    Scopes TPUProjectsLocationsNodesGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient TPUProjectsLocationsNodesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tPUService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TPUProjectsLocationsNodesGetResource
          )
          Core.mempty
