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
-- Module      : Gogol.AndroidPublisher.Edits.Expansionfiles.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the APK\'s expansion file configuration to reference another APK\'s expansion file. To add a new expansion file use the Upload method.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.update@.
module Gogol.AndroidPublisher.Edits.Expansionfiles.Update
  ( -- * Resource
    AndroidPublisherEditsExpansionfilesUpdateResource,

    -- ** Constructing a Request
    AndroidPublisherEditsExpansionfilesUpdate (..),
    newAndroidPublisherEditsExpansionfilesUpdate,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.edits.expansionfiles.update@ method which the
-- 'AndroidPublisherEditsExpansionfilesUpdate' request conforms to.
type AndroidPublisherEditsExpansionfilesUpdateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "apks"
    Core.:> Core.Capture "apkVersionCode" Core.Int32
    Core.:> "expansionFiles"
    Core.:> Core.Capture
              "expansionFileType"
              EditsExpansionfilesUpdateExpansionFileType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ExpansionFile
    Core.:> Core.Put '[Core.JSON] ExpansionFile

-- | Updates the APK\'s expansion file configuration to reference another APK\'s expansion file. To add a new expansion file use the Upload method.
--
-- /See:/ 'newAndroidPublisherEditsExpansionfilesUpdate' smart constructor.
data AndroidPublisherEditsExpansionfilesUpdate = AndroidPublisherEditsExpansionfilesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The version code of the APK whose expansion file configuration is being read or modified.
    apkVersionCode :: Core.Int32,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | The file type of the file configuration which is being read or modified.
    expansionFileType :: EditsExpansionfilesUpdateExpansionFileType,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: ExpansionFile,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsExpansionfilesUpdate' with the minimum fields required to make a request.
newAndroidPublisherEditsExpansionfilesUpdate ::
  -- |  The version code of the APK whose expansion file configuration is being read or modified. See 'apkVersionCode'.
  Core.Int32 ->
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  The file type of the file configuration which is being read or modified. See 'expansionFileType'.
  EditsExpansionfilesUpdateExpansionFileType ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ExpansionFile ->
  AndroidPublisherEditsExpansionfilesUpdate
newAndroidPublisherEditsExpansionfilesUpdate
  apkVersionCode
  editId
  expansionFileType
  packageName
  payload =
    AndroidPublisherEditsExpansionfilesUpdate
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        apkVersionCode = apkVersionCode,
        callback = Core.Nothing,
        editId = editId,
        expansionFileType = expansionFileType,
        packageName = packageName,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherEditsExpansionfilesUpdate
  where
  type Rs AndroidPublisherEditsExpansionfilesUpdate = ExpansionFile
  type
    Scopes AndroidPublisherEditsExpansionfilesUpdate =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsExpansionfilesUpdate {..} =
    go
      packageName
      editId
      apkVersionCode
      expansionFileType
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
              Core.Proxy AndroidPublisherEditsExpansionfilesUpdateResource
          )
          Core.mempty
