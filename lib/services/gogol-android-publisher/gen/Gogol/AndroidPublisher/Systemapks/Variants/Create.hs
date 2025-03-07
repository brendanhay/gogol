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
-- Module      : Gogol.AndroidPublisher.Systemapks.Variants.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an APK which is suitable for inclusion in a system image from an already uploaded Android App Bundle.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.create@.
module Gogol.AndroidPublisher.Systemapks.Variants.Create
  ( -- * Resource
    AndroidPublisherSystemapksVariantsCreateResource,

    -- ** Constructing a Request
    AndroidPublisherSystemapksVariantsCreate (..),
    newAndroidPublisherSystemapksVariantsCreate,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.systemapks.variants.create@ method which the
-- 'AndroidPublisherSystemapksVariantsCreate' request conforms to.
type AndroidPublisherSystemapksVariantsCreateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "systemApks"
    Core.:> Core.Capture "versionCode" Core.Int64
    Core.:> "variants"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Variant
    Core.:> Core.Post '[Core.JSON] Variant

-- | Creates an APK which is suitable for inclusion in a system image from an already uploaded Android App Bundle.
--
-- /See:/ 'newAndroidPublisherSystemapksVariantsCreate' smart constructor.
data AndroidPublisherSystemapksVariantsCreate = AndroidPublisherSystemapksVariantsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: Variant,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The version code of the App Bundle.
    versionCode :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherSystemapksVariantsCreate' with the minimum fields required to make a request.
newAndroidPublisherSystemapksVariantsCreate ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Variant ->
  -- |  The version code of the App Bundle. See 'versionCode'.
  Core.Int64 ->
  AndroidPublisherSystemapksVariantsCreate
newAndroidPublisherSystemapksVariantsCreate
  packageName
  payload
  versionCode =
    AndroidPublisherSystemapksVariantsCreate
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        packageName = packageName,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        versionCode = versionCode
      }

instance
  Core.GoogleRequest
    AndroidPublisherSystemapksVariantsCreate
  where
  type Rs AndroidPublisherSystemapksVariantsCreate = Variant
  type
    Scopes AndroidPublisherSystemapksVariantsCreate =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherSystemapksVariantsCreate {..} =
    go
      packageName
      versionCode
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherSystemapksVariantsCreateResource
          )
          Core.mempty
