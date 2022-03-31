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
-- Module      : Gogol.Compute.LicenseCodes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a specified license code. License codes are mirrored across all projects that have permissions to read the License Code. /Caution/ This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.licenseCodes.get@.
module Gogol.Compute.LicenseCodes.Get
  ( -- * Resource
    ComputeLicenseCodesGetResource,

    -- ** Constructing a Request
    newComputeLicenseCodesGet,
    ComputeLicenseCodesGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.licenseCodes.get@ method which the
-- 'ComputeLicenseCodesGet' request conforms to.
type ComputeLicenseCodesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "licenseCodes"
    Core.:> Core.Capture "licenseCode" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LicenseCode

-- | Return a specified license code. License codes are mirrored across all projects that have permissions to read the License Code. /Caution/ This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
--
-- /See:/ 'newComputeLicenseCodesGet' smart constructor.
data ComputeLicenseCodesGet = ComputeLicenseCodesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number corresponding to the License code resource to return.
    licenseCode :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeLicenseCodesGet' with the minimum fields required to make a request.
newComputeLicenseCodesGet ::
  -- |  Number corresponding to the License code resource to return. See 'licenseCode'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeLicenseCodesGet
newComputeLicenseCodesGet licenseCode project =
  ComputeLicenseCodesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      licenseCode = licenseCode,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeLicenseCodesGet where
  type Rs ComputeLicenseCodesGet = LicenseCode
  type
    Scopes ComputeLicenseCodesGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeLicenseCodesGet {..} =
    go
      project
      licenseCode
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
              Core.Proxy ComputeLicenseCodesGetResource
          )
          Core.mempty
