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
-- Module      : Gogol.Logging.UpdateCmekSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Log Router CMEK settings for the given resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateCmekSettings fails when any of the following are true: The value of kms/key/name is invalid. The associated service account doesn\'t have the required roles\/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.updateCmekSettings@.
module Gogol.Logging.UpdateCmekSettings
  ( -- * Resource
    LoggingUpdateCmekSettingsResource,

    -- ** Constructing a Request
    LoggingUpdateCmekSettings (..),
    newLoggingUpdateCmekSettings,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.updateCmekSettings@ method which the
-- 'LoggingUpdateCmekSettings' request conforms to.
type LoggingUpdateCmekSettingsResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "cmekSettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CmekSettings
    Core.:> Core.Patch '[Core.JSON] CmekSettings

-- | Updates the Log Router CMEK settings for the given resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateCmekSettings fails when any of the following are true: The value of kms/key/name is invalid. The associated service account doesn\'t have the required roles\/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ 'newLoggingUpdateCmekSettings' smart constructor.
data LoggingUpdateCmekSettings = LoggingUpdateCmekSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name for the CMEK settings to update. \"projects\/[PROJECT/ID]\/cmekSettings\" \"organizations\/[ORGANIZATION/ID]\/cmekSettings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/cmekSettings\" \"folders\/[FOLDER_ID]\/cmekSettings\" For example:\"organizations\/12345\/cmekSettings\"Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CmekSettings,
    -- | Optional. Field mask identifying which fields from cmek_settings should be updated. A field will be overwritten if and only if it is in the update mask. Output only fields cannot be updated.See FieldMask for more information.For example: \"updateMask=kmsKeyName\"
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingUpdateCmekSettings' with the minimum fields required to make a request.
newLoggingUpdateCmekSettings ::
  -- |  Required. The resource name for the CMEK settings to update. \"projects\/[PROJECT/ID]\/cmekSettings\" \"organizations\/[ORGANIZATION/ID]\/cmekSettings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/cmekSettings\" \"folders\/[FOLDER_ID]\/cmekSettings\" For example:\"organizations\/12345\/cmekSettings\"Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CmekSettings ->
  LoggingUpdateCmekSettings
newLoggingUpdateCmekSettings name payload =
  LoggingUpdateCmekSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingUpdateCmekSettings where
  type Rs LoggingUpdateCmekSettings = CmekSettings
  type
    Scopes LoggingUpdateCmekSettings =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingUpdateCmekSettings {..} =
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
          (Core.Proxy :: Core.Proxy LoggingUpdateCmekSettingsResource)
          Core.mempty
