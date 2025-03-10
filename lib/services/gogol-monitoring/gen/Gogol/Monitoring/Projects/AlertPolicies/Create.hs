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
-- Module      : Gogol.Monitoring.Projects.AlertPolicies.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.alertPolicies.create@.
module Gogol.Monitoring.Projects.AlertPolicies.Create
  ( -- * Resource
    MonitoringProjectsAlertPoliciesCreateResource,

    -- ** Constructing a Request
    MonitoringProjectsAlertPoliciesCreate (..),
    newMonitoringProjectsAlertPoliciesCreate,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.alertPolicies.create@ method which the
-- 'MonitoringProjectsAlertPoliciesCreate' request conforms to.
type MonitoringProjectsAlertPoliciesCreateResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "alertPolicies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AlertPolicy
    Core.:> Core.Post '[Core.JSON] AlertPolicy

-- | Creates a new alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.
--
-- /See:/ 'newMonitoringProjectsAlertPoliciesCreate' smart constructor.
data MonitoringProjectsAlertPoliciesCreate = MonitoringProjectsAlertPoliciesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) in which to create the alerting policy. The format is: projects\/[PROJECT/ID/OR/NUMBER] Note that this field names the parent container in which the alerting policy will be written, not the name of the created policy. |name| must be a host project of a Metrics Scope, otherwise INVALID/ARGUMENT error will return. The alerting policy that is returned will have a name that contains a normalized representation of this name as a prefix but adds a suffix of the form \/alertPolicies\/[ALERT/POLICY_ID], identifying the policy in the container.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AlertPolicy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsAlertPoliciesCreate' with the minimum fields required to make a request.
newMonitoringProjectsAlertPoliciesCreate ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) in which to create the alerting policy. The format is: projects\/[PROJECT/ID/OR/NUMBER] Note that this field names the parent container in which the alerting policy will be written, not the name of the created policy. |name| must be a host project of a Metrics Scope, otherwise INVALID/ARGUMENT error will return. The alerting policy that is returned will have a name that contains a normalized representation of this name as a prefix but adds a suffix of the form \/alertPolicies\/[ALERT/POLICY_ID], identifying the policy in the container. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AlertPolicy ->
  MonitoringProjectsAlertPoliciesCreate
newMonitoringProjectsAlertPoliciesCreate name payload =
  MonitoringProjectsAlertPoliciesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsAlertPoliciesCreate where
  type Rs MonitoringProjectsAlertPoliciesCreate = AlertPolicy
  type
    Scopes MonitoringProjectsAlertPoliciesCreate =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient MonitoringProjectsAlertPoliciesCreate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      monitoringService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MonitoringProjectsAlertPoliciesCreateResource
          )
          Core.mempty
