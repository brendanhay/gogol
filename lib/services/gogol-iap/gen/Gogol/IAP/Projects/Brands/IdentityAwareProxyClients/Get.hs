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
-- Module      : Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the client is owned by IAP.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.get@.
module Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Get
  ( -- * Resource
    IAPProjectsBrandsIdentityAwareProxyClientsGetResource,

    -- ** Constructing a Request
    newIAPProjectsBrandsIdentityAwareProxyClientsGet,
    IAPProjectsBrandsIdentityAwareProxyClientsGet,
  )
where

import Gogol.IAP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.get@ method which the
-- 'IAPProjectsBrandsIdentityAwareProxyClientsGet' request conforms to.
type IAPProjectsBrandsIdentityAwareProxyClientsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] IdentityAwareProxyClient

-- | Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the client is owned by IAP.
--
-- /See:/ 'newIAPProjectsBrandsIdentityAwareProxyClientsGet' smart constructor.
data IAPProjectsBrandsIdentityAwareProxyClientsGet = IAPProjectsBrandsIdentityAwareProxyClientsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the Identity Aware Proxy client to be fetched. In the following format: projects\/{project/number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client/id}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsBrandsIdentityAwareProxyClientsGet' with the minimum fields required to make a request.
newIAPProjectsBrandsIdentityAwareProxyClientsGet ::
  -- |  Required. Name of the Identity Aware Proxy client to be fetched. In the following format: projects\/{project/number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client/id}. See 'name'.
  Core.Text ->
  IAPProjectsBrandsIdentityAwareProxyClientsGet
newIAPProjectsBrandsIdentityAwareProxyClientsGet name =
  IAPProjectsBrandsIdentityAwareProxyClientsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAPProjectsBrandsIdentityAwareProxyClientsGet
  where
  type
    Rs IAPProjectsBrandsIdentityAwareProxyClientsGet =
      IdentityAwareProxyClient
  type
    Scopes
      IAPProjectsBrandsIdentityAwareProxyClientsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IAPProjectsBrandsIdentityAwareProxyClientsGet {..} =
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
                  IAPProjectsBrandsIdentityAwareProxyClientsGetResource
            )
            Core.mempty
