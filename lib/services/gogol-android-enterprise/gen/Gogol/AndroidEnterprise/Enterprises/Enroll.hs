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
-- Module      : Gogol.AndroidEnterprise.Enterprises.Enroll
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enrolls an enterprise with the calling EMM.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.enroll@.
module Gogol.AndroidEnterprise.Enterprises.Enroll
  ( -- * Resource
    AndroidEnterpriseEnterprisesEnrollResource,

    -- ** Constructing a Request
    AndroidEnterpriseEnterprisesEnroll (..),
    newAndroidEnterpriseEnterprisesEnroll,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.enterprises.enroll@ method which the
-- 'AndroidEnterpriseEnterprisesEnroll' request conforms to.
type AndroidEnterpriseEnterprisesEnrollResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> "enroll"
    Core.:> Core.QueryParam "token" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Enterprise
    Core.:> Core.Post '[Core.JSON] Enterprise

-- | Enrolls an enterprise with the calling EMM.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesEnroll' smart constructor.
data AndroidEnterpriseEnterprisesEnroll = AndroidEnterpriseEnterprisesEnroll
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Enterprise,
    -- | Required. The token provided by the enterprise to register the EMM.
    token :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesEnroll' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesEnroll ::
  -- |  Multipart request metadata. See 'payload'.
  Enterprise ->
  -- |  Required. The token provided by the enterprise to register the EMM. See 'token'.
  Core.Text ->
  AndroidEnterpriseEnterprisesEnroll
newAndroidEnterpriseEnterprisesEnroll payload token =
  AndroidEnterpriseEnterprisesEnroll
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      token = token,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidEnterpriseEnterprisesEnroll where
  type Rs AndroidEnterpriseEnterprisesEnroll = Enterprise
  type
    Scopes AndroidEnterpriseEnterprisesEnroll =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseEnterprisesEnroll {..} =
    go
      (Core.Just token)
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
              Core.Proxy AndroidEnterpriseEnterprisesEnrollResource
          )
          Core.mempty
