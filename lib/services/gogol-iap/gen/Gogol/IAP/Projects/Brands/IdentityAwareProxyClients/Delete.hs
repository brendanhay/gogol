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
-- Module      : Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing obsolete clients, managing the number of clients in a given project, and cleaning up after tests. Requires that the client is owned by IAP.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.delete@.
module Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Delete
  ( -- * Resource
    IAPProjectsBrandsIdentityAwareProxyClientsDeleteResource,

    -- ** Constructing a Request
    IAPProjectsBrandsIdentityAwareProxyClientsDelete (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsDelete,
  )
where

import Gogol.IAP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.delete@ method which the
-- 'IAPProjectsBrandsIdentityAwareProxyClientsDelete' request conforms to.
type IAPProjectsBrandsIdentityAwareProxyClientsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing obsolete clients, managing the number of clients in a given project, and cleaning up after tests. Requires that the client is owned by IAP.
--
-- /See:/ 'newIAPProjectsBrandsIdentityAwareProxyClientsDelete' smart constructor.
data IAPProjectsBrandsIdentityAwareProxyClientsDelete = IAPProjectsBrandsIdentityAwareProxyClientsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the Identity Aware Proxy client to be deleted. In the following format: projects\/{project/number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client/id}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsBrandsIdentityAwareProxyClientsDelete' with the minimum fields required to make a request.
newIAPProjectsBrandsIdentityAwareProxyClientsDelete ::
  -- |  Required. Name of the Identity Aware Proxy client to be deleted. In the following format: projects\/{project/number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client/id}. See 'name'.
  Core.Text ->
  IAPProjectsBrandsIdentityAwareProxyClientsDelete
newIAPProjectsBrandsIdentityAwareProxyClientsDelete name =
  IAPProjectsBrandsIdentityAwareProxyClientsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAPProjectsBrandsIdentityAwareProxyClientsDelete
  where
  type Rs IAPProjectsBrandsIdentityAwareProxyClientsDelete = Empty
  type
    Scopes IAPProjectsBrandsIdentityAwareProxyClientsDelete =
      '[CloudPlatform'FullControl]
  requestClient IAPProjectsBrandsIdentityAwareProxyClientsDelete {..} =
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
              Core.Proxy
                IAPProjectsBrandsIdentityAwareProxyClientsDeleteResource
          )
          Core.mempty
