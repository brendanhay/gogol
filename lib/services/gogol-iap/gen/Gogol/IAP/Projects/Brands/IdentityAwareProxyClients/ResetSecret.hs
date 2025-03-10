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
-- Module      : Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.ResetSecret
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the secret was compromised. Requires that the client is owned by IAP.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.resetSecret@.
module Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.ResetSecret
  ( -- * Resource
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecretResource,

    -- ** Constructing a Request
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecret (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsResetSecret,
  )
where

import Gogol.IAP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.resetSecret@ method which the
-- 'IAPProjectsBrandsIdentityAwareProxyClientsResetSecret' request conforms to.
type IAPProjectsBrandsIdentityAwareProxyClientsResetSecretResource =
  "v1"
    Core.:> Core.CaptureMode "name" "resetSecret" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ResetIdentityAwareProxyClientSecretRequest
    Core.:> Core.Post '[Core.JSON] IdentityAwareProxyClient

-- | Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the secret was compromised. Requires that the client is owned by IAP.
--
-- /See:/ 'newIAPProjectsBrandsIdentityAwareProxyClientsResetSecret' smart constructor.
data IAPProjectsBrandsIdentityAwareProxyClientsResetSecret = IAPProjectsBrandsIdentityAwareProxyClientsResetSecret
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the Identity Aware Proxy client to that will have its secret reset. In the following format: projects\/{project/number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client/id}.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ResetIdentityAwareProxyClientSecretRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsBrandsIdentityAwareProxyClientsResetSecret' with the minimum fields required to make a request.
newIAPProjectsBrandsIdentityAwareProxyClientsResetSecret ::
  -- |  Required. Name of the Identity Aware Proxy client to that will have its secret reset. In the following format: projects\/{project/number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client/id}. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ResetIdentityAwareProxyClientSecretRequest ->
  IAPProjectsBrandsIdentityAwareProxyClientsResetSecret
newIAPProjectsBrandsIdentityAwareProxyClientsResetSecret
  name
  payload =
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecret
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecret
  where
  type
    Rs IAPProjectsBrandsIdentityAwareProxyClientsResetSecret =
      IdentityAwareProxyClient
  type
    Scopes IAPProjectsBrandsIdentityAwareProxyClientsResetSecret =
      '[CloudPlatform'FullControl]
  requestClient
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecret {..} =
      go
        name
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
                Core.Proxy
                  IAPProjectsBrandsIdentityAwareProxyClientsResetSecretResource
            )
            Core.mempty
