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
-- Module      : Gogol.IAP.Projects.Brands.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Constructs a new OAuth brand for the project if one does not exist. The created brand is \"internal only\", meaning that OAuth clients created under it only accept requests from users who belong to the same Google Workspace organization as the project. The brand is created in an un-reviewed status. NOTE: The \"internal only\" status can be manually changed in the Google Cloud Console. Requires that a brand does not already exist for the project, and that the specified support email is owned by the caller.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.create@.
module Gogol.IAP.Projects.Brands.Create
  ( -- * Resource
    IAPProjectsBrandsCreateResource,

    -- ** Constructing a Request
    newIAPProjectsBrandsCreate,
    IAPProjectsBrandsCreate,
  )
where

import Gogol.IAP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iap.projects.brands.create@ method which the
-- 'IAPProjectsBrandsCreate' request conforms to.
type IAPProjectsBrandsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "brands"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Brand
    Core.:> Core.Post '[Core.JSON] Brand

-- | Constructs a new OAuth brand for the project if one does not exist. The created brand is \"internal only\", meaning that OAuth clients created under it only accept requests from users who belong to the same Google Workspace organization as the project. The brand is created in an un-reviewed status. NOTE: The \"internal only\" status can be manually changed in the Google Cloud Console. Requires that a brand does not already exist for the project, and that the specified support email is owned by the caller.
--
-- /See:/ 'newIAPProjectsBrandsCreate' smart constructor.
data IAPProjectsBrandsCreate = IAPProjectsBrandsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. GCP Project number\/id under which the brand is to be created. In the following format: projects\/{project_number\/id}.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Brand,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsBrandsCreate' with the minimum fields required to make a request.
newIAPProjectsBrandsCreate ::
  -- |  Required. GCP Project number\/id under which the brand is to be created. In the following format: projects\/{project_number\/id}. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Brand ->
  IAPProjectsBrandsCreate
newIAPProjectsBrandsCreate parent payload =
  IAPProjectsBrandsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAPProjectsBrandsCreate where
  type Rs IAPProjectsBrandsCreate = Brand
  type
    Scopes IAPProjectsBrandsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient IAPProjectsBrandsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      iAPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAPProjectsBrandsCreateResource
          )
          Core.mempty
