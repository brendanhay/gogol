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
-- Module      : Network.Google.AndroidPublisher.Edits.Expansionfiles.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the expansion file configuration for the specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.get@.
module Network.Google.AndroidPublisher.Edits.Expansionfiles.Get
  ( -- * Resource
    AndroidPublisherEditsExpansionfilesGetResource,

    -- ** Constructing a Request
    newAndroidPublisherEditsExpansionfilesGet,
    AndroidPublisherEditsExpansionfilesGet,
  )
where

import Network.Google.AndroidPublisher.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidpublisher.edits.expansionfiles.get@ method which the
-- 'AndroidPublisherEditsExpansionfilesGet' request conforms to.
type AndroidPublisherEditsExpansionfilesGetResource =
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
              EditsExpansionfilesGetExpansionFileType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ExpansionFile

-- | Fetches the expansion file configuration for the specified APK.
--
-- /See:/ 'newAndroidPublisherEditsExpansionfilesGet' smart constructor.
data AndroidPublisherEditsExpansionfilesGet = AndroidPublisherEditsExpansionfilesGet
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
    expansionFileType :: EditsExpansionfilesGetExpansionFileType,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsExpansionfilesGet' with the minimum fields required to make a request.
newAndroidPublisherEditsExpansionfilesGet ::
  -- |  The version code of the APK whose expansion file configuration is being read or modified. See 'apkVersionCode'.
  Core.Int32 ->
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  The file type of the file configuration which is being read or modified. See 'expansionFileType'.
  EditsExpansionfilesGetExpansionFileType ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsExpansionfilesGet
newAndroidPublisherEditsExpansionfilesGet apkVersionCode editId expansionFileType packageName =
  AndroidPublisherEditsExpansionfilesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      apkVersionCode = apkVersionCode,
      callback = Core.Nothing,
      editId = editId,
      expansionFileType = expansionFileType,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherEditsExpansionfilesGet
  where
  type
    Rs AndroidPublisherEditsExpansionfilesGet =
      ExpansionFile
  type
    Scopes AndroidPublisherEditsExpansionfilesGet =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    AndroidPublisherEditsExpansionfilesGet {..} =
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
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherEditsExpansionfilesGetResource
            )
            Core.mempty
