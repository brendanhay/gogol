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
-- Module      : Gogol.AndroidPublisher.Edits.Apks.Addexternallyhosted
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new APK without uploading the APK itself to Google Play, instead hosting the APK at a specified URL. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.apks.addexternallyhosted@.
module Gogol.AndroidPublisher.Edits.Apks.Addexternallyhosted
  ( -- * Resource
    AndroidPublisherEditsApksAddexternallyhostedResource,

    -- ** Constructing a Request
    AndroidPublisherEditsApksAddexternallyhosted (..),
    newAndroidPublisherEditsApksAddexternallyhosted,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.edits.apks.addexternallyhosted@ method which the
-- 'AndroidPublisherEditsApksAddexternallyhosted' request conforms to.
type AndroidPublisherEditsApksAddexternallyhostedResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "apks"
    Core.:> "externallyHosted"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ApksAddExternallyHostedRequest
    Core.:> Core.Post
              '[Core.JSON]
              ApksAddExternallyHostedResponse

-- | Creates a new APK without uploading the APK itself to Google Play, instead hosting the APK at a specified URL. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.
--
-- /See:/ 'newAndroidPublisherEditsApksAddexternallyhosted' smart constructor.
data AndroidPublisherEditsApksAddexternallyhosted = AndroidPublisherEditsApksAddexternallyhosted
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: ApksAddExternallyHostedRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsApksAddexternallyhosted' with the minimum fields required to make a request.
newAndroidPublisherEditsApksAddexternallyhosted ::
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ApksAddExternallyHostedRequest ->
  AndroidPublisherEditsApksAddexternallyhosted
newAndroidPublisherEditsApksAddexternallyhosted editId packageName payload =
  AndroidPublisherEditsApksAddexternallyhosted
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      editId = editId,
      packageName = packageName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherEditsApksAddexternallyhosted
  where
  type
    Rs AndroidPublisherEditsApksAddexternallyhosted =
      ApksAddExternallyHostedResponse
  type
    Scopes
      AndroidPublisherEditsApksAddexternallyhosted =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherEditsApksAddexternallyhosted {..} =
      go
        packageName
        editId
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
                Core.Proxy
                  AndroidPublisherEditsApksAddexternallyhostedResource
            )
            Core.mempty
