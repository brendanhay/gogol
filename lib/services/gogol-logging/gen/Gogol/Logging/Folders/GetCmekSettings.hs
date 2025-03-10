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
-- Module      : Gogol.Logging.Folders.GetCmekSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.getCmekSettings@.
module Gogol.Logging.Folders.GetCmekSettings
  ( -- * Resource
    LoggingFoldersGetCmekSettingsResource,

    -- ** Constructing a Request
    LoggingFoldersGetCmekSettings (..),
    newLoggingFoldersGetCmekSettings,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.folders.getCmekSettings@ method which the
-- 'LoggingFoldersGetCmekSettings' request conforms to.
type LoggingFoldersGetCmekSettingsResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "cmekSettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CmekSettings

-- | Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ 'newLoggingFoldersGetCmekSettings' smart constructor.
data LoggingFoldersGetCmekSettings = LoggingFoldersGetCmekSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource for which to retrieve CMEK settings. \"projects\/[PROJECT/ID]\/cmekSettings\" \"organizations\/[ORGANIZATION/ID]\/cmekSettings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/cmekSettings\" \"folders\/[FOLDER_ID]\/cmekSettings\" For example:\"organizations\/12345\/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersGetCmekSettings' with the minimum fields required to make a request.
newLoggingFoldersGetCmekSettings ::
  -- |  Required. The resource for which to retrieve CMEK settings. \"projects\/[PROJECT/ID]\/cmekSettings\" \"organizations\/[ORGANIZATION/ID]\/cmekSettings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/cmekSettings\" \"folders\/[FOLDER_ID]\/cmekSettings\" For example:\"organizations\/12345\/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization. See 'name'.
  Core.Text ->
  LoggingFoldersGetCmekSettings
newLoggingFoldersGetCmekSettings name =
  LoggingFoldersGetCmekSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingFoldersGetCmekSettings where
  type Rs LoggingFoldersGetCmekSettings = CmekSettings
  type
    Scopes LoggingFoldersGetCmekSettings =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingFoldersGetCmekSettings {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy LoggingFoldersGetCmekSettingsResource)
          Core.mempty
