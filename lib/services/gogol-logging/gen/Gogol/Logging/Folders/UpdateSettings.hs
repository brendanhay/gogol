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
-- Module      : Gogol.Logging.Folders.UpdateSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings for the given resource. This method applies to all feature configurations for organization and folders.UpdateSettings fails when any of the following are true: The value of storage/location either isn\'t supported by Logging or violates the location OrgPolicy. The default/sink/config field is set, but it has an unspecified filter write mode. The value of kms/key_name is invalid. The associated service account doesn\'t have the required roles\/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Configure default settings for organizations and folders (https:\/\/cloud.google.com\/logging\/docs\/default-settings) for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.updateSettings@.
module Gogol.Logging.Folders.UpdateSettings
  ( -- * Resource
    LoggingFoldersUpdateSettingsResource,

    -- ** Constructing a Request
    LoggingFoldersUpdateSettings (..),
    newLoggingFoldersUpdateSettings,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.folders.updateSettings@ method which the
-- 'LoggingFoldersUpdateSettings' request conforms to.
type LoggingFoldersUpdateSettingsResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "settings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Settings
    Core.:> Core.Patch '[Core.JSON] Settings

-- | Updates the settings for the given resource. This method applies to all feature configurations for organization and folders.UpdateSettings fails when any of the following are true: The value of storage/location either isn\'t supported by Logging or violates the location OrgPolicy. The default/sink/config field is set, but it has an unspecified filter write mode. The value of kms/key_name is invalid. The associated service account doesn\'t have the required roles\/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Configure default settings for organizations and folders (https:\/\/cloud.google.com\/logging\/docs\/default-settings) for more information.
--
-- /See:/ 'newLoggingFoldersUpdateSettings' smart constructor.
data LoggingFoldersUpdateSettings = LoggingFoldersUpdateSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name for the settings to update. \"organizations\/[ORGANIZATION/ID]\/settings\" \"folders\/[FOLDER/ID]\/settings\" For example:\"organizations\/12345\/settings\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Settings,
    -- | Optional. Field mask identifying which fields from settings should be updated. A field will be overwritten if and only if it is in the update mask. Output only fields cannot be updated.See FieldMask for more information.For example: \"updateMask=kmsKeyName\"
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersUpdateSettings' with the minimum fields required to make a request.
newLoggingFoldersUpdateSettings ::
  -- |  Required. The resource name for the settings to update. \"organizations\/[ORGANIZATION/ID]\/settings\" \"folders\/[FOLDER/ID]\/settings\" For example:\"organizations\/12345\/settings\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Settings ->
  LoggingFoldersUpdateSettings
newLoggingFoldersUpdateSettings name payload =
  LoggingFoldersUpdateSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingFoldersUpdateSettings where
  type Rs LoggingFoldersUpdateSettings = Settings
  type
    Scopes LoggingFoldersUpdateSettings =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingFoldersUpdateSettings {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      loggingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy LoggingFoldersUpdateSettingsResource)
          Core.mempty
