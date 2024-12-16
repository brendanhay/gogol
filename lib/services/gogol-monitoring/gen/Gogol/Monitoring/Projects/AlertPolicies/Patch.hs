{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Monitoring.Projects.AlertPolicies.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an alerting policy. You can either replace the entire policy with a new one or replace only certain fields in the current alerting policy by specifying the fields to be updated via updateMask. Returns the updated alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.alertPolicies.patch@.
module Gogol.Monitoring.Projects.AlertPolicies.Patch
    (
    -- * Resource
      MonitoringProjectsAlertPoliciesPatchResource

    -- ** Constructing a Request
    , MonitoringProjectsAlertPoliciesPatch (..)
    , newMonitoringProjectsAlertPoliciesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.alertPolicies.patch@ method which the
-- 'MonitoringProjectsAlertPoliciesPatch' request conforms to.
type MonitoringProjectsAlertPoliciesPatchResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] AlertPolicy Core.:>
                         Core.Patch '[Core.JSON] AlertPolicy

-- | Updates an alerting policy. You can either replace the entire policy with a new one or replace only certain fields in the current alerting policy by specifying the fields to be updated via updateMask. Returns the updated alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.
--
-- /See:/ 'newMonitoringProjectsAlertPoliciesPatch' smart constructor.
data MonitoringProjectsAlertPoliciesPatch = MonitoringProjectsAlertPoliciesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier. Required if the policy exists. The resource name for this policy. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/alertPolicies\/[ALERT/POLICY/ID] [ALERT/POLICY_ID] is assigned by Cloud Monitoring when the policy is created. When calling the alertPolicies.create method, do not include the name field in the alerting policy passed as part of the request.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AlertPolicy
      -- | Optional. A list of alerting policy field names. If this field is not empty, each listed field in the existing alerting policy is set to the value of the corresponding field in the supplied policy (alert/policy), or to the field\'s default value if the field is not in the supplied alerting policy. Fields not listed retain their previous value.Examples of valid field masks include display/name, documentation, documentation.content, documentation.mime/type, user/labels, user/label.nameofkey, enabled, conditions, combiner, etc.If this field is empty, then the supplied alerting policy replaces the existing policy. It is the same as deleting the existing policy and adding the supplied policy, except for the following: The new policy will have the same [ALERT/POLICY/ID] as the former policy. This gives you continuity with the former policy in your notifications and incidents. Conditions in the new policy will keep their former [CONDITION/ID] if the supplied condition includes the name field with that
      -- [CONDITION/ID]. If the supplied condition omits the name field, then a new [CONDITION/ID] is created.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsAlertPoliciesPatch' with the minimum fields required to make a request.
newMonitoringProjectsAlertPoliciesPatch 
    ::  Core.Text
       -- ^  Identifier. Required if the policy exists. The resource name for this policy. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/alertPolicies\/[ALERT/POLICY/ID] [ALERT/POLICY_ID] is assigned by Cloud Monitoring when the policy is created. When calling the alertPolicies.create method, do not include the name field in the alerting policy passed as part of the request. See 'name'.
    -> AlertPolicy
       -- ^  Multipart request metadata. See 'payload'.
    -> MonitoringProjectsAlertPoliciesPatch
newMonitoringProjectsAlertPoliciesPatch name payload =
  MonitoringProjectsAlertPoliciesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsAlertPoliciesPatch
         where
        type Rs MonitoringProjectsAlertPoliciesPatch =
             AlertPolicy
        type Scopes MonitoringProjectsAlertPoliciesPatch =
             '[CloudPlatform'FullControl, Monitoring'FullControl]
        requestClient
          MonitoringProjectsAlertPoliciesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MonitoringProjectsAlertPoliciesPatchResource)
                      Core.mempty

