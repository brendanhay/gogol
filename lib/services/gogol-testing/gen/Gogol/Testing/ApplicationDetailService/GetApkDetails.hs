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
-- Module      : Gogol.Testing.ApplicationDetailService.GetApkDetails
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of an Android application APK.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.applicationDetailService.getApkDetails@.
module Gogol.Testing.ApplicationDetailService.GetApkDetails
  ( -- * Resource
    TestingApplicationDetailServiceGetApkDetailsResource,

    -- ** Constructing a Request
    TestingApplicationDetailServiceGetApkDetails (..),
    newTestingApplicationDetailServiceGetApkDetails,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.applicationDetailService.getApkDetails@ method which the
-- 'TestingApplicationDetailServiceGetApkDetails' request conforms to.
type TestingApplicationDetailServiceGetApkDetailsResource =
  "v1"
    Core.:> "applicationDetailService"
    Core.:> "getApkDetails"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "bundleLocation.gcsPath" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FileReference
    Core.:> Core.Post '[Core.JSON] GetApkDetailsResponse

-- | Gets the details of an Android application APK.
--
-- /See:/ 'newTestingApplicationDetailServiceGetApkDetails' smart constructor.
data TestingApplicationDetailServiceGetApkDetails = TestingApplicationDetailServiceGetApkDetails
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | A path to a file in Google Cloud Storage. Example: gs:\/\/build-app-1414623860166\/app%40debug-unaligned.apk These paths are expected to be url encoded (percent encoding)
    bundleLocationGcsPath :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: FileReference,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingApplicationDetailServiceGetApkDetails' with the minimum fields required to make a request.
newTestingApplicationDetailServiceGetApkDetails ::
  -- |  Multipart request metadata. See 'payload'.
  FileReference ->
  TestingApplicationDetailServiceGetApkDetails
newTestingApplicationDetailServiceGetApkDetails payload =
  TestingApplicationDetailServiceGetApkDetails
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      bundleLocationGcsPath = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TestingApplicationDetailServiceGetApkDetails
  where
  type
    Rs TestingApplicationDetailServiceGetApkDetails =
      GetApkDetailsResponse
  type
    Scopes TestingApplicationDetailServiceGetApkDetails =
      '[CloudPlatform'FullControl]
  requestClient TestingApplicationDetailServiceGetApkDetails {..} =
    go
      xgafv
      accessToken
      bundleLocationGcsPath
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      testingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TestingApplicationDetailServiceGetApkDetailsResource
          )
          Core.mempty
