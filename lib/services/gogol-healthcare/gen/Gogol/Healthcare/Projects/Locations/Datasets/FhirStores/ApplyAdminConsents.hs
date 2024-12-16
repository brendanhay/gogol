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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.ApplyAdminConsents
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies the admin Consent resources for the FHIR store and reindexes the underlying resources in the FHIR store according to the aggregate consents. This method also updates the @consent_config.enforced_admin_consents@ field of the FhirStore unless @validate_only=true@ in ApplyAdminConsentsRequest. Any admin Consent resource change after this operation execution (including deletion) requires you to call ApplyAdminConsents again for the change to take effect. This method returns an Operation that can be used to track the progress of the resources that were reindexed, by calling GetOperation. Upon completion, the ApplyAdminConsentsResponse additionally contains the number of resources that were reindexed. If at least one Consent resource contains an error or fails be be enforced for any reason, the method returns an error instead of an Operation. No resources will be reindexed and the @consent_config.enforced_admin_consents@ field will be unchanged. To enforce a consent check for data access,
-- @consent_config.access_enforced@ must be set to true for the FhirStore.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.applyAdminConsents@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.ApplyAdminConsents
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsentsResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.applyAdminConsents@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsentsResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "applyAdminConsents"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ApplyAdminConsentsRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Applies the admin Consent resources for the FHIR store and reindexes the underlying resources in the FHIR store according to the aggregate consents. This method also updates the @consent_config.enforced_admin_consents@ field of the FhirStore unless @validate_only=true@ in ApplyAdminConsentsRequest. Any admin Consent resource change after this operation execution (including deletion) requires you to call ApplyAdminConsents again for the change to take effect. This method returns an Operation that can be used to track the progress of the resources that were reindexed, by calling GetOperation. Upon completion, the ApplyAdminConsentsResponse additionally contains the number of resources that were reindexed. If at least one Consent resource contains an error or fails be be enforced for any reason, the method returns an error instead of an Operation. No resources will be reindexed and the @consent_config.enforced_admin_consents@ field will be unchanged. To enforce a consent check for data access,
-- @consent_config.access_enforced@ must be set to true for the FhirStore.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents = HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the FHIR store to enforce, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ApplyAdminConsentsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents 
    ::  Core.Text
       -- ^  Required. The name of the FHIR store to enforce, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@. See 'name'.
    -> ApplyAdminConsentsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents
newHealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents name payload =
  HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents
         where
        type Rs
               HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents
             = Operation
        type Scopes
               HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsentsResource)
                      Core.mempty

