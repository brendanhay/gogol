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
-- Module      : Gogol.DialogFlow.Projects.Locations.SecuritySettings.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified SecuritySettings. The returned settings may be stale by up to 1 minute.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.securitySettings.get@.
module Gogol.DialogFlow.Projects.Locations.SecuritySettings.Get
  ( -- * Resource
    DialogFlowProjectsLocationsSecuritySettingsGetResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsSecuritySettingsGet (..),
    newDialogFlowProjectsLocationsSecuritySettingsGet,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.securitySettings.get@ method which the
-- 'DialogFlowProjectsLocationsSecuritySettingsGet' request conforms to.
type DialogFlowProjectsLocationsSecuritySettingsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3SecuritySettings

-- | Retrieves the specified SecuritySettings. The returned settings may be stale by up to 1 minute.
--
-- /See:/ 'newDialogFlowProjectsLocationsSecuritySettingsGet' smart constructor.
data DialogFlowProjectsLocationsSecuritySettingsGet = DialogFlowProjectsLocationsSecuritySettingsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the settings. Format: @projects\/\/locations\/\/securitySettings\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsSecuritySettingsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsSecuritySettingsGet ::
  -- |  Required. Resource name of the settings. Format: @projects\/\/locations\/\/securitySettings\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsSecuritySettingsGet
newDialogFlowProjectsLocationsSecuritySettingsGet name =
  DialogFlowProjectsLocationsSecuritySettingsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsSecuritySettingsGet
  where
  type
    Rs DialogFlowProjectsLocationsSecuritySettingsGet =
      GoogleCloudDialogflowCxV3SecuritySettings
  type
    Scopes DialogFlowProjectsLocationsSecuritySettingsGet =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsSecuritySettingsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dialogFlowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DialogFlowProjectsLocationsSecuritySettingsGetResource
          )
          Core.mempty
