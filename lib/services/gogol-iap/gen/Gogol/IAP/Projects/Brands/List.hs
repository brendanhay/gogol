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
-- Module      : Gogol.IAP.Projects.Brands.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing brands for the project.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.list@.
module Gogol.IAP.Projects.Brands.List
  ( -- * Resource
    IAPProjectsBrandsListResource,

    -- ** Constructing a Request
    IAPProjectsBrandsList (..),
    newIAPProjectsBrandsList,
  )
where

import Gogol.IAP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iap.projects.brands.list@ method which the
-- 'IAPProjectsBrandsList' request conforms to.
type IAPProjectsBrandsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "brands"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBrandsResponse

-- | Lists the existing brands for the project.
--
-- /See:/ 'newIAPProjectsBrandsList' smart constructor.
data IAPProjectsBrandsList = IAPProjectsBrandsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. GCP Project number\/id. In the following format: projects\/{project_number\/id}.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsBrandsList' with the minimum fields required to make a request.
newIAPProjectsBrandsList ::
  -- |  Required. GCP Project number\/id. In the following format: projects\/{project_number\/id}. See 'parent'.
  Core.Text ->
  IAPProjectsBrandsList
newIAPProjectsBrandsList parent =
  IAPProjectsBrandsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAPProjectsBrandsList where
  type Rs IAPProjectsBrandsList = ListBrandsResponse
  type
    Scopes IAPProjectsBrandsList =
      '[CloudPlatform'FullControl]
  requestClient IAPProjectsBrandsList {..} =
    go
      parent
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
              Core.Proxy IAPProjectsBrandsListResource
          )
          Core.mempty
