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
-- Module      : Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an active, unexpired enrollment token. A partial view of the enrollment token is returned. Only the following fields are populated: name, expirationTimestamp, allowPersonalUsage, value, qrCode. This method is meant to help manage active enrollment tokens lifecycle. For security reasons, it\'s recommended to delete active enrollment tokens as soon as they\'re not intended to be used anymore.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.enrollmentTokens.get@.
module Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Get
  ( -- * Resource
    AndroidManagementEnterprisesEnrollmentTokensGetResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesEnrollmentTokensGet (..),
    newAndroidManagementEnterprisesEnrollmentTokensGet,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.enterprises.enrollmentTokens.get@ method which the
-- 'AndroidManagementEnterprisesEnrollmentTokensGet' request conforms to.
type AndroidManagementEnterprisesEnrollmentTokensGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EnrollmentToken

-- | Gets an active, unexpired enrollment token. A partial view of the enrollment token is returned. Only the following fields are populated: name, expirationTimestamp, allowPersonalUsage, value, qrCode. This method is meant to help manage active enrollment tokens lifecycle. For security reasons, it\'s recommended to delete active enrollment tokens as soon as they\'re not intended to be used anymore.
--
-- /See:/ 'newAndroidManagementEnterprisesEnrollmentTokensGet' smart constructor.
data AndroidManagementEnterprisesEnrollmentTokensGet = AndroidManagementEnterprisesEnrollmentTokensGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the enrollment token in the form enterprises\/{enterpriseId}\/enrollmentTokens\/{enrollmentTokenId}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesEnrollmentTokensGet' with the minimum fields required to make a request.
newAndroidManagementEnterprisesEnrollmentTokensGet ::
  -- |  Required. The name of the enrollment token in the form enterprises\/{enterpriseId}\/enrollmentTokens\/{enrollmentTokenId}. See 'name'.
  Core.Text ->
  AndroidManagementEnterprisesEnrollmentTokensGet
newAndroidManagementEnterprisesEnrollmentTokensGet name =
  AndroidManagementEnterprisesEnrollmentTokensGet
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
    AndroidManagementEnterprisesEnrollmentTokensGet
  where
  type
    Rs AndroidManagementEnterprisesEnrollmentTokensGet =
      EnrollmentToken
  type
    Scopes AndroidManagementEnterprisesEnrollmentTokensGet =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesEnrollmentTokensGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementEnterprisesEnrollmentTokensGetResource
          )
          Core.mempty
