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
-- Module      : Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned by IAP. Requires that the brand for the project exists and that it is set for internal-only use.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.create@.
module Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Create
  ( -- * Resource
    IAPProjectsBrandsIdentityAwareProxyClientsCreateResource,

    -- ** Constructing a Request
    IAPProjectsBrandsIdentityAwareProxyClientsCreate (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsCreate,
  )
where

import Gogol.IAP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.create@ method which the
-- 'IAPProjectsBrandsIdentityAwareProxyClientsCreate' request conforms to.
type IAPProjectsBrandsIdentityAwareProxyClientsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "identityAwareProxyClients"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] IdentityAwareProxyClient
    Core.:> Core.Post '[Core.JSON] IdentityAwareProxyClient

-- | Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned by IAP. Requires that the brand for the project exists and that it is set for internal-only use.
--
-- /See:/ 'newIAPProjectsBrandsIdentityAwareProxyClientsCreate' smart constructor.
data IAPProjectsBrandsIdentityAwareProxyClientsCreate = IAPProjectsBrandsIdentityAwareProxyClientsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Path to create the client in. In the following format: projects\/{project_number\/id}\/brands\/{brand}. The project must belong to a G Suite account.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: IdentityAwareProxyClient,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsBrandsIdentityAwareProxyClientsCreate' with the minimum fields required to make a request.
newIAPProjectsBrandsIdentityAwareProxyClientsCreate ::
  -- |  Required. Path to create the client in. In the following format: projects\/{project_number\/id}\/brands\/{brand}. The project must belong to a G Suite account. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  IdentityAwareProxyClient ->
  IAPProjectsBrandsIdentityAwareProxyClientsCreate
newIAPProjectsBrandsIdentityAwareProxyClientsCreate parent payload =
  IAPProjectsBrandsIdentityAwareProxyClientsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAPProjectsBrandsIdentityAwareProxyClientsCreate
  where
  type
    Rs
      IAPProjectsBrandsIdentityAwareProxyClientsCreate =
      IdentityAwareProxyClient
  type
    Scopes
      IAPProjectsBrandsIdentityAwareProxyClientsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    IAPProjectsBrandsIdentityAwareProxyClientsCreate {..} =
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
                Core.Proxy
                  IAPProjectsBrandsIdentityAwareProxyClientsCreateResource
            )
            Core.mempty
