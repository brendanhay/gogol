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
-- Module      : Gogol.Compute.GlobalPublicDelegatedPrefixes.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified global PublicDelegatedPrefix resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalPublicDelegatedPrefixes.get@.
module Gogol.Compute.GlobalPublicDelegatedPrefixes.Get
  ( -- * Resource
    ComputeGlobalPublicDelegatedPrefixesGetResource,

    -- ** Constructing a Request
    ComputeGlobalPublicDelegatedPrefixesGet (..),
    newComputeGlobalPublicDelegatedPrefixesGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.globalPublicDelegatedPrefixes.get@ method which the
-- 'ComputeGlobalPublicDelegatedPrefixesGet' request conforms to.
type ComputeGlobalPublicDelegatedPrefixesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "publicDelegatedPrefixes"
    Core.:> Core.Capture "publicDelegatedPrefix" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PublicDelegatedPrefix

-- | Returns the specified global PublicDelegatedPrefix resource.
--
-- /See:/ 'newComputeGlobalPublicDelegatedPrefixesGet' smart constructor.
data ComputeGlobalPublicDelegatedPrefixesGet = ComputeGlobalPublicDelegatedPrefixesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the PublicDelegatedPrefix resource to return.
    publicDelegatedPrefix :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalPublicDelegatedPrefixesGet' with the minimum fields required to make a request.
newComputeGlobalPublicDelegatedPrefixesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the PublicDelegatedPrefix resource to return. See 'publicDelegatedPrefix'.
  Core.Text ->
  ComputeGlobalPublicDelegatedPrefixesGet
newComputeGlobalPublicDelegatedPrefixesGet
  project
  publicDelegatedPrefix =
    ComputeGlobalPublicDelegatedPrefixesGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        project = project,
        publicDelegatedPrefix = publicDelegatedPrefix,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputeGlobalPublicDelegatedPrefixesGet where
  type
    Rs ComputeGlobalPublicDelegatedPrefixesGet =
      PublicDelegatedPrefix
  type
    Scopes ComputeGlobalPublicDelegatedPrefixesGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeGlobalPublicDelegatedPrefixesGet {..} =
    go
      project
      publicDelegatedPrefix
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeGlobalPublicDelegatedPrefixesGetResource
          )
          Core.mempty
