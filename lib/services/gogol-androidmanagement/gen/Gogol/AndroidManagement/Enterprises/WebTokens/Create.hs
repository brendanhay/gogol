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
-- Module      : Gogol.AndroidManagement.Enterprises.WebTokens.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a web token to access an embeddable managed Google Play web UI for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webTokens.create@.
module Gogol.AndroidManagement.Enterprises.WebTokens.Create
  ( -- * Resource
    AndroidManagementEnterprisesWebTokensCreateResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesWebTokensCreate (..),
    newAndroidManagementEnterprisesWebTokensCreate,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.enterprises.webTokens.create@ method which the
-- 'AndroidManagementEnterprisesWebTokensCreate' request conforms to.
type AndroidManagementEnterprisesWebTokensCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "webTokens"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WebToken
    Core.:> Core.Post '[Core.JSON] WebToken

-- | Creates a web token to access an embeddable managed Google Play web UI for a given enterprise.
--
-- /See:/ 'newAndroidManagementEnterprisesWebTokensCreate' smart constructor.
data AndroidManagementEnterprisesWebTokensCreate = AndroidManagementEnterprisesWebTokensCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the enterprise in the form enterprises\/{enterpriseId}.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: WebToken,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesWebTokensCreate' with the minimum fields required to make a request.
newAndroidManagementEnterprisesWebTokensCreate ::
  -- |  The name of the enterprise in the form enterprises\/{enterpriseId}. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WebToken ->
  AndroidManagementEnterprisesWebTokensCreate
newAndroidManagementEnterprisesWebTokensCreate parent payload =
  AndroidManagementEnterprisesWebTokensCreate
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
    AndroidManagementEnterprisesWebTokensCreate
  where
  type Rs AndroidManagementEnterprisesWebTokensCreate = WebToken
  type
    Scopes AndroidManagementEnterprisesWebTokensCreate =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesWebTokensCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementEnterprisesWebTokensCreateResource
          )
          Core.mempty
