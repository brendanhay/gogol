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
-- Module      : Network.Google.IAP.Projects.Brands.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the OAuth brand of the project.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.get@.
module Network.Google.IAP.Projects.Brands.Get
  ( -- * Resource
    IAPProjectsBrandsGetResource,

    -- ** Constructing a Request
    newIAPProjectsBrandsGet,
    IAPProjectsBrandsGet,
  )
where

import Network.Google.IAP.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @iap.projects.brands.get@ method which the
-- 'IAPProjectsBrandsGet' request conforms to.
type IAPProjectsBrandsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Brand

-- | Retrieves the OAuth brand of the project.
--
-- /See:/ 'newIAPProjectsBrandsGet' smart constructor.
data IAPProjectsBrandsGet = IAPProjectsBrandsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the brand to be fetched. In the following format: projects\/{project_number\/id}\/brands\/{brand}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsBrandsGet' with the minimum fields required to make a request.
newIAPProjectsBrandsGet ::
  -- |  Required. Name of the brand to be fetched. In the following format: projects\/{project_number\/id}\/brands\/{brand}. See 'name'.
  Core.Text ->
  IAPProjectsBrandsGet
newIAPProjectsBrandsGet name =
  IAPProjectsBrandsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAPProjectsBrandsGet where
  type Rs IAPProjectsBrandsGet = Brand
  type
    Scopes IAPProjectsBrandsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient IAPProjectsBrandsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAPProjectsBrandsGetResource
          )
          Core.mempty
