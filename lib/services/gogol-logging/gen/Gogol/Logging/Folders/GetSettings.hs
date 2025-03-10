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
-- Module      : Gogol.Logging.Folders.GetSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.See View default resource settings for Logging (https:\/\/cloud.google.com\/logging\/docs\/default-settings#view-org-settings) for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.getSettings@.
module Gogol.Logging.Folders.GetSettings
  ( -- * Resource
    LoggingFoldersGetSettingsResource,

    -- ** Constructing a Request
    LoggingFoldersGetSettings (..),
    newLoggingFoldersGetSettings,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.folders.getSettings@ method which the
-- 'LoggingFoldersGetSettings' request conforms to.
type LoggingFoldersGetSettingsResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "settings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Settings

-- | Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.See View default resource settings for Logging (https:\/\/cloud.google.com\/logging\/docs\/default-settings#view-org-settings) for more information.
--
-- /See:/ 'newLoggingFoldersGetSettings' smart constructor.
data LoggingFoldersGetSettings = LoggingFoldersGetSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource for which to retrieve settings. \"projects\/[PROJECT/ID]\/settings\" \"organizations\/[ORGANIZATION/ID]\/settings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/settings\" \"folders\/[FOLDER_ID]\/settings\" For example:\"organizations\/12345\/settings\"Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersGetSettings' with the minimum fields required to make a request.
newLoggingFoldersGetSettings ::
  -- |  Required. The resource for which to retrieve settings. \"projects\/[PROJECT/ID]\/settings\" \"organizations\/[ORGANIZATION/ID]\/settings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/settings\" \"folders\/[FOLDER_ID]\/settings\" For example:\"organizations\/12345\/settings\"Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts. See 'name'.
  Core.Text ->
  LoggingFoldersGetSettings
newLoggingFoldersGetSettings name =
  LoggingFoldersGetSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingFoldersGetSettings where
  type Rs LoggingFoldersGetSettings = Settings
  type
    Scopes LoggingFoldersGetSettings =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingFoldersGetSettings {..} =
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
          (Core.Proxy :: Core.Proxy LoggingFoldersGetSettingsResource)
          Core.mempty
