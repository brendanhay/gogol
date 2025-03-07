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
-- Module      : Gogol.DialogFlow.Projects.Locations.SecuritySettings.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all security settings in the specified location.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.securitySettings.list@.
module Gogol.DialogFlow.Projects.Locations.SecuritySettings.List
  ( -- * Resource
    DialogFlowProjectsLocationsSecuritySettingsListResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsSecuritySettingsList (..),
    newDialogFlowProjectsLocationsSecuritySettingsList,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.securitySettings.list@ method which the
-- 'DialogFlowProjectsLocationsSecuritySettingsList' request conforms to.
type DialogFlowProjectsLocationsSecuritySettingsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "securitySettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ListSecuritySettingsResponse

-- | Returns the list of all security settings in the specified location.
--
-- /See:/ 'newDialogFlowProjectsLocationsSecuritySettingsList' smart constructor.
data DialogFlowProjectsLocationsSecuritySettingsList = DialogFlowProjectsLocationsSecuritySettingsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 20 and at most 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The location to list all security settings for. Format: @projects\/\/locations\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsSecuritySettingsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsSecuritySettingsList ::
  -- |  Required. The location to list all security settings for. Format: @projects\/\/locations\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsSecuritySettingsList
newDialogFlowProjectsLocationsSecuritySettingsList parent =
  DialogFlowProjectsLocationsSecuritySettingsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsSecuritySettingsList
  where
  type
    Rs DialogFlowProjectsLocationsSecuritySettingsList =
      GoogleCloudDialogflowCxV3ListSecuritySettingsResponse
  type
    Scopes DialogFlowProjectsLocationsSecuritySettingsList =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsSecuritySettingsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dialogFlowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DialogFlowProjectsLocationsSecuritySettingsListResource
          )
          Core.mempty
