{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing clients for the brand.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.list@.
module Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.List
  ( -- * Resource
    IAPProjectsBrandsIdentityAwareProxyClientsListResource,

    -- ** Constructing a Request
    IAPProjectsBrandsIdentityAwareProxyClientsList (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsList,
  )
where

import Gogol.IAP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.list@ method which the
-- 'IAPProjectsBrandsIdentityAwareProxyClientsList' request conforms to.
type IAPProjectsBrandsIdentityAwareProxyClientsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "identityAwareProxyClients"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListIdentityAwareProxyClientsResponse

-- | Lists the existing clients for the brand.
--
-- /See:/ 'newIAPProjectsBrandsIdentityAwareProxyClientsList' smart constructor.
data IAPProjectsBrandsIdentityAwareProxyClientsList = IAPProjectsBrandsIdentityAwareProxyClientsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of clients to return. The service may return fewer than this value. If unspecified, at most 100 clients will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListIdentityAwareProxyClients@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListIdentityAwareProxyClients@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Full brand path. In the following format: projects\/{project_number\/id}\/brands\/{brand}.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsBrandsIdentityAwareProxyClientsList' with the minimum fields required to make a request.
newIAPProjectsBrandsIdentityAwareProxyClientsList ::
  -- |  Required. Full brand path. In the following format: projects\/{project_number\/id}\/brands\/{brand}. See 'parent'.
  Core.Text ->
  IAPProjectsBrandsIdentityAwareProxyClientsList
newIAPProjectsBrandsIdentityAwareProxyClientsList parent =
  IAPProjectsBrandsIdentityAwareProxyClientsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAPProjectsBrandsIdentityAwareProxyClientsList
  where
  type
    Rs IAPProjectsBrandsIdentityAwareProxyClientsList =
      ListIdentityAwareProxyClientsResponse
  type
    Scopes IAPProjectsBrandsIdentityAwareProxyClientsList =
      '[CloudPlatform'FullControl]
  requestClient IAPProjectsBrandsIdentityAwareProxyClientsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAPProjectsBrandsIdentityAwareProxyClientsListResource
          )
          Core.mempty
