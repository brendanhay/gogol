{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.getIamPolicy@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.GetIamPolicy
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicyResource

    -- ** Constructing a Request
    , newHealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy
    , HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.getIamPolicy@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicyResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "getIamPolicy" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "options.requestedPolicyVersion"
                 Core.Int32
                 Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy = HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32)
      -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy 
    ::  Core.Text
       -- ^  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
    -> HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy
newHealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy resource =
  HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , optionsRequestedPolicyVersion = Core.Nothing
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy
         where
        type Rs
               HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy
             = Policy
        type Scopes
               HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy{..}
          = go resource xgafv accessToken callback
              optionsRequestedPolicyVersion
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicyResource)
                      Core.mempty

