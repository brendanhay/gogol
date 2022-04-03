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
-- Module      : Gogol.AndroidEnterprise.Enterprises.CreateWebToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a unique token to access an embeddable UI. To generate a web UI, pass the generated token into the managed Google Play javascript API. Each token may only be used to start one UI session. See the javascript API documentation for further information.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.createWebToken@.
module Gogol.AndroidEnterprise.Enterprises.CreateWebToken
  ( -- * Resource
    AndroidEnterpriseEnterprisesCreateWebTokenResource,

    -- ** Constructing a Request
    AndroidEnterpriseEnterprisesCreateWebToken (..),
    newAndroidEnterpriseEnterprisesCreateWebToken,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.enterprises.createWebToken@ method which the
-- 'AndroidEnterpriseEnterprisesCreateWebToken' request conforms to.
type AndroidEnterpriseEnterprisesCreateWebTokenResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "createWebToken"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AdministratorWebTokenSpec
    Core.:> Core.Post '[Core.JSON] AdministratorWebToken

-- | Returns a unique token to access an embeddable UI. To generate a web UI, pass the generated token into the managed Google Play javascript API. Each token may only be used to start one UI session. See the javascript API documentation for further information.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesCreateWebToken' smart constructor.
data AndroidEnterpriseEnterprisesCreateWebToken = AndroidEnterpriseEnterprisesCreateWebToken
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: AdministratorWebTokenSpec,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesCreateWebToken' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesCreateWebToken ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AdministratorWebTokenSpec ->
  AndroidEnterpriseEnterprisesCreateWebToken
newAndroidEnterpriseEnterprisesCreateWebToken enterpriseId payload =
  AndroidEnterpriseEnterprisesCreateWebToken
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesCreateWebToken
  where
  type
    Rs AndroidEnterpriseEnterprisesCreateWebToken =
      AdministratorWebToken
  type
    Scopes
      AndroidEnterpriseEnterprisesCreateWebToken =
      '[Androidenterprise'FullControl]
  requestClient
    AndroidEnterpriseEnterprisesCreateWebToken {..} =
      go
        enterpriseId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseEnterprisesCreateWebTokenResource
            )
            Core.mempty
