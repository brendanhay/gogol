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
-- Module      : Gogol.AndroidPublisher.Systemapks.Variants.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a previously created system APK variant.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.get@.
module Gogol.AndroidPublisher.Systemapks.Variants.Get
  ( -- * Resource
    AndroidPublisherSystemapksVariantsGetResource,

    -- ** Constructing a Request
    AndroidPublisherSystemapksVariantsGet (..),
    newAndroidPublisherSystemapksVariantsGet,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.systemapks.variants.get@ method which the
-- 'AndroidPublisherSystemapksVariantsGet' request conforms to.
type AndroidPublisherSystemapksVariantsGetResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "systemApks"
    Core.:> Core.Capture "versionCode" Core.Int64
    Core.:> "variants"
    Core.:> Core.Capture "variantId" Core.Word32
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Variant

-- | Returns a previously created system APK variant.
--
-- /See:/ 'newAndroidPublisherSystemapksVariantsGet' smart constructor.
data AndroidPublisherSystemapksVariantsGet = AndroidPublisherSystemapksVariantsGet
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
    -- | The ID of a previously created system APK variant.
    variantId :: Core.Word32,
    -- | The version code of the App Bundle.
    versionCode :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherSystemapksVariantsGet' with the minimum fields required to make a request.
newAndroidPublisherSystemapksVariantsGet ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  The ID of a previously created system APK variant. See 'variantId'.
  Core.Word32 ->
  -- |  The version code of the App Bundle. See 'versionCode'.
  Core.Int64 ->
  AndroidPublisherSystemapksVariantsGet
newAndroidPublisherSystemapksVariantsGet
  packageName
  variantId
  versionCode =
    AndroidPublisherSystemapksVariantsGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        packageName = packageName,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        variantId = variantId,
        versionCode = versionCode
      }

instance Core.GoogleRequest AndroidPublisherSystemapksVariantsGet where
  type Rs AndroidPublisherSystemapksVariantsGet = Variant
  type
    Scopes AndroidPublisherSystemapksVariantsGet =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherSystemapksVariantsGet {..} =
    go
      packageName
      versionCode
      variantId
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
              Core.Proxy AndroidPublisherSystemapksVariantsGetResource
          )
          Core.mempty
