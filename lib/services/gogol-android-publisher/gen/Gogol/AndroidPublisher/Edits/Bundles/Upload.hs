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
-- Module      : Gogol.AndroidPublisher.Edits.Bundles.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a new Android App Bundle to this edit. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.bundles.upload@.
module Gogol.AndroidPublisher.Edits.Bundles.Upload
  ( -- * Resource
    AndroidPublisherEditsBundlesUploadResource,

    -- ** Constructing a Request
    AndroidPublisherEditsBundlesUpload (..),
    newAndroidPublisherEditsBundlesUpload,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.edits.bundles.upload@ method which the
-- 'AndroidPublisherEditsBundlesUpload' request conforms to.
type AndroidPublisherEditsBundlesUploadResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "bundles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam
              "ackBundleInstallationWarning"
              Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "deviceTierConfigId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Bundle
    Core.:<|> "upload"
      Core.:> "androidpublisher"
      Core.:> "v3"
      Core.:> "applications"
      Core.:> Core.Capture "packageName" Core.Text
      Core.:> "edits"
      Core.:> Core.Capture "editId" Core.Text
      Core.:> "bundles"
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam
                "ackBundleInstallationWarning"
                Core.Bool
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "deviceTierConfigId" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam
                "uploadType"
                Core.AltMedia
      Core.:> Core.AltMedia
      Core.:> Core.Post '[Core.JSON] Bundle

-- | Uploads a new Android App Bundle to this edit. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
--
-- /See:/ 'newAndroidPublisherEditsBundlesUpload' smart constructor.
data AndroidPublisherEditsBundlesUpload = AndroidPublisherEditsBundlesUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Must be set to true if the app bundle installation may trigger a warning on user devices (for example, if installation size may be over a threshold, typically 100 MB).
    ackBundleInstallationWarning :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Device tier config (DTC) to be used for generating deliverables (APKs). Contains id of the DTC or \"LATEST\" for last uploaded DTC.
    deviceTierConfigId :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsBundlesUpload' with the minimum fields required to make a request.
newAndroidPublisherEditsBundlesUpload ::
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsBundlesUpload
newAndroidPublisherEditsBundlesUpload editId packageName =
  AndroidPublisherEditsBundlesUpload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      ackBundleInstallationWarning = Core.Nothing,
      callback = Core.Nothing,
      deviceTierConfigId = Core.Nothing,
      editId = editId,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherEditsBundlesUpload
  where
  type Rs AndroidPublisherEditsBundlesUpload = Bundle
  type
    Scopes AndroidPublisherEditsBundlesUpload =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsBundlesUpload {..} =
    go
      packageName
      editId
      xgafv
      accessToken
      ackBundleInstallationWarning
      callback
      deviceTierConfigId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AndroidPublisherEditsBundlesUploadResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload AndroidPublisherEditsBundlesUpload)
  where
  type
    Rs
      (Core.MediaUpload AndroidPublisherEditsBundlesUpload) =
      Bundle
  type
    Scopes
      (Core.MediaUpload AndroidPublisherEditsBundlesUpload) =
      Core.Scopes AndroidPublisherEditsBundlesUpload
  requestClient
    ( Core.MediaUpload
        AndroidPublisherEditsBundlesUpload {..}
        body
      ) =
      go
        packageName
        editId
        xgafv
        accessToken
        ackBundleInstallationWarning
        callback
        deviceTierConfigId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.AltMedia)
        body
        androidPublisherService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherEditsBundlesUploadResource
            )
            Core.mempty
