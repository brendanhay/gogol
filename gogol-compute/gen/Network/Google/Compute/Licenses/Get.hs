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
-- Module      : Network.Google.Compute.Licenses.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified License resource. /Caution/ This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.licenses.get@.
module Network.Google.Compute.Licenses.Get
  ( -- * Resource
    ComputeLicensesGetResource,

    -- ** Constructing a Request
    newComputeLicensesGet,
    ComputeLicensesGet,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.licenses.get@ method which the
-- 'ComputeLicensesGet' request conforms to.
type ComputeLicensesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "licenses"
    Core.:> Core.Capture "license" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] License

-- | Returns the specified License resource. /Caution/ This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
--
-- /See:/ 'newComputeLicensesGet' smart constructor.
data ComputeLicensesGet = ComputeLicensesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the License resource to return.
    license :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeLicensesGet' with the minimum fields required to make a request.
newComputeLicensesGet ::
  -- |  Name of the License resource to return. See 'license'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeLicensesGet
newComputeLicensesGet license project =
  ComputeLicensesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      license = license,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeLicensesGet where
  type Rs ComputeLicensesGet = License
  type
    Scopes ComputeLicensesGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly"
       ]
  requestClient ComputeLicensesGet {..} =
    go
      project
      license
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
          (Core.Proxy :: Core.Proxy ComputeLicensesGetResource)
          Core.mempty
