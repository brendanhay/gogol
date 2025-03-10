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
-- Module      : Gogol.AndroidPublisher.Generatedapks.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns download metadata for all APKs that were generated from a given app bundle.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.generatedapks.list@.
module Gogol.AndroidPublisher.Generatedapks.List
  ( -- * Resource
    AndroidPublisherGeneratedapksListResource,

    -- ** Constructing a Request
    AndroidPublisherGeneratedapksList (..),
    newAndroidPublisherGeneratedapksList,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.generatedapks.list@ method which the
-- 'AndroidPublisherGeneratedapksList' request conforms to.
type AndroidPublisherGeneratedapksListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "generatedApks"
    Core.:> Core.Capture "versionCode" Core.Int32
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GeneratedApksListResponse

-- | Returns download metadata for all APKs that were generated from a given app bundle.
--
-- /See:/ 'newAndroidPublisherGeneratedapksList' smart constructor.
data AndroidPublisherGeneratedapksList = AndroidPublisherGeneratedapksList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Version code of the app bundle.
    versionCode :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherGeneratedapksList' with the minimum fields required to make a request.
newAndroidPublisherGeneratedapksList ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Version code of the app bundle. See 'versionCode'.
  Core.Int32 ->
  AndroidPublisherGeneratedapksList
newAndroidPublisherGeneratedapksList packageName versionCode =
  AndroidPublisherGeneratedapksList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      versionCode = versionCode
    }

instance Core.GoogleRequest AndroidPublisherGeneratedapksList where
  type
    Rs AndroidPublisherGeneratedapksList =
      GeneratedApksListResponse
  type
    Scopes AndroidPublisherGeneratedapksList =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherGeneratedapksList {..} =
    go
      packageName
      versionCode
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherGeneratedapksListResource
          )
          Core.mempty
