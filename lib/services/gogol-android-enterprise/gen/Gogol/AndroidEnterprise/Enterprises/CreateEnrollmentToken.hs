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
-- Module      : Gogol.AndroidEnterprise.Enterprises.CreateEnrollmentToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a token for device enrollment. The DPC can encode this token within the QR\/NFC\/zero-touch enrollment payload or fetch it before calling the on-device API to authenticate the user. The token can be generated for each device or reused across multiple devices.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.createEnrollmentToken@.
module Gogol.AndroidEnterprise.Enterprises.CreateEnrollmentToken
  ( -- * Resource
    AndroidEnterpriseEnterprisesCreateEnrollmentTokenResource,

    -- ** Constructing a Request
    AndroidEnterpriseEnterprisesCreateEnrollmentToken (..),
    newAndroidEnterpriseEnterprisesCreateEnrollmentToken,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.enterprises.createEnrollmentToken@ method which the
-- 'AndroidEnterpriseEnterprisesCreateEnrollmentToken' request conforms to.
type AndroidEnterpriseEnterprisesCreateEnrollmentTokenResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "createEnrollmentToken"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "deviceType"
              EnterprisesCreateEnrollmentTokenDeviceType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              CreateEnrollmentTokenResponse

-- | Returns a token for device enrollment. The DPC can encode this token within the QR\/NFC\/zero-touch enrollment payload or fetch it before calling the on-device API to authenticate the user. The token can be generated for each device or reused across multiple devices.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesCreateEnrollmentToken' smart constructor.
data AndroidEnterpriseEnterprisesCreateEnrollmentToken = AndroidEnterpriseEnterprisesCreateEnrollmentToken
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether it’s a dedicated device or a knowledge worker device.
    deviceType :: (Core.Maybe EnterprisesCreateEnrollmentTokenDeviceType),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesCreateEnrollmentToken' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesCreateEnrollmentToken ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  AndroidEnterpriseEnterprisesCreateEnrollmentToken
newAndroidEnterpriseEnterprisesCreateEnrollmentToken enterpriseId =
  AndroidEnterpriseEnterprisesCreateEnrollmentToken
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deviceType = Core.Nothing,
      enterpriseId = enterpriseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesCreateEnrollmentToken
  where
  type
    Rs
      AndroidEnterpriseEnterprisesCreateEnrollmentToken =
      CreateEnrollmentTokenResponse
  type
    Scopes
      AndroidEnterpriseEnterprisesCreateEnrollmentToken =
      '[Androidenterprise'FullControl]
  requestClient
    AndroidEnterpriseEnterprisesCreateEnrollmentToken {..} =
      go
        enterpriseId
        xgafv
        accessToken
        callback
        deviceType
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseEnterprisesCreateEnrollmentTokenResource
            )
            Core.mempty
