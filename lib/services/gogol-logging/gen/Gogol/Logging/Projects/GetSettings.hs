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
-- Module      : Gogol.Logging.Projects.GetSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.See View default resource settings for Logging (https:\/\/cloud.google.com\/logging\/docs\/default-settings#view-org-settings) for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.getSettings@.
module Gogol.Logging.Projects.GetSettings
  ( -- * Resource
    LoggingProjectsGetSettingsResource,

    -- ** Constructing a Request
    LoggingProjectsGetSettings (..),
    newLoggingProjectsGetSettings,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.projects.getSettings@ method which the
-- 'LoggingProjectsGetSettings' request conforms to.
type LoggingProjectsGetSettingsResource =
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
-- /See:/ 'newLoggingProjectsGetSettings' smart constructor.
data LoggingProjectsGetSettings = LoggingProjectsGetSettings
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

-- | Creates a value of 'LoggingProjectsGetSettings' with the minimum fields required to make a request.
newLoggingProjectsGetSettings ::
  -- |  Required. The resource for which to retrieve settings. \"projects\/[PROJECT/ID]\/settings\" \"organizations\/[ORGANIZATION/ID]\/settings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/settings\" \"folders\/[FOLDER_ID]\/settings\" For example:\"organizations\/12345\/settings\"Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts. See 'name'.
  Core.Text ->
  LoggingProjectsGetSettings
newLoggingProjectsGetSettings name =
  LoggingProjectsGetSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingProjectsGetSettings where
  type Rs LoggingProjectsGetSettings = Settings
  type
    Scopes LoggingProjectsGetSettings =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingProjectsGetSettings {..} =
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
          (Core.Proxy :: Core.Proxy LoggingProjectsGetSettingsResource)
          Core.mempty
