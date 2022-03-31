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
-- Module      : Gogol.Logging.Organizations.GetCmekSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.getCmekSettings@.
module Gogol.Logging.Organizations.GetCmekSettings
  ( -- * Resource
    LoggingOrganizationsGetCmekSettingsResource,

    -- ** Constructing a Request
    newLoggingOrganizationsGetCmekSettings,
    LoggingOrganizationsGetCmekSettings,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.organizations.getCmekSettings@ method which the
-- 'LoggingOrganizationsGetCmekSettings' request conforms to.
type LoggingOrganizationsGetCmekSettingsResource =
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

-- | Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ 'newLoggingOrganizationsGetCmekSettings' smart constructor.
data LoggingOrganizationsGetCmekSettings = LoggingOrganizationsGetCmekSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource for which to retrieve CMEK settings. \"projects\/[PROJECT/ID]\/cmekSettings\" \"organizations\/[ORGANIZATION/ID]\/cmekSettings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/cmekSettings\" \"folders\/[FOLDER_ID]\/cmekSettings\" For example:\"organizations\/12345\/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsGetCmekSettings' with the minimum fields required to make a request.
newLoggingOrganizationsGetCmekSettings ::
  -- |  Required. The resource for which to retrieve CMEK settings. \"projects\/[PROJECT/ID]\/cmekSettings\" \"organizations\/[ORGANIZATION/ID]\/cmekSettings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/cmekSettings\" \"folders\/[FOLDER_ID]\/cmekSettings\" For example:\"organizations\/12345\/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization. See 'name'.
  Core.Text ->
  LoggingOrganizationsGetCmekSettings
newLoggingOrganizationsGetCmekSettings name =
  LoggingOrganizationsGetCmekSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingOrganizationsGetCmekSettings
  where
  type
    Rs LoggingOrganizationsGetCmekSettings =
      CmekSettings
  type
    Scopes LoggingOrganizationsGetCmekSettings =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingOrganizationsGetCmekSettings {..} =
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
          ( Core.Proxy ::
              Core.Proxy
                LoggingOrganizationsGetCmekSettingsResource
          )
          Core.mempty
