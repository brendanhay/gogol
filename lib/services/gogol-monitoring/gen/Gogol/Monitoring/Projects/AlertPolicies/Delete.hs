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
-- Module      : Gogol.Monitoring.Projects.AlertPolicies.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.alertPolicies.delete@.
module Gogol.Monitoring.Projects.AlertPolicies.Delete
  ( -- * Resource
    MonitoringProjectsAlertPoliciesDeleteResource,

    -- ** Constructing a Request
    MonitoringProjectsAlertPoliciesDelete (..),
    newMonitoringProjectsAlertPoliciesDelete,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.alertPolicies.delete@ method which the
-- 'MonitoringProjectsAlertPoliciesDelete' request conforms to.
type MonitoringProjectsAlertPoliciesDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.
--
-- /See:/ 'newMonitoringProjectsAlertPoliciesDelete' smart constructor.
data MonitoringProjectsAlertPoliciesDelete = MonitoringProjectsAlertPoliciesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The alerting policy to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/alertPolicies\/[ALERT/POLICY_ID] For more information, see AlertPolicy.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsAlertPoliciesDelete' with the minimum fields required to make a request.
newMonitoringProjectsAlertPoliciesDelete ::
  -- |  Required. The alerting policy to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/alertPolicies\/[ALERT/POLICY_ID] For more information, see AlertPolicy. See 'name'.
  Core.Text ->
  MonitoringProjectsAlertPoliciesDelete
newMonitoringProjectsAlertPoliciesDelete name =
  MonitoringProjectsAlertPoliciesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsAlertPoliciesDelete where
  type Rs MonitoringProjectsAlertPoliciesDelete = Empty
  type
    Scopes MonitoringProjectsAlertPoliciesDelete =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient MonitoringProjectsAlertPoliciesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      monitoringService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MonitoringProjectsAlertPoliciesDeleteResource
          )
          Core.mempty
