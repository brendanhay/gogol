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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.DeleteRevision
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified revision of a Consent. An INVALID_ARGUMENT error occurs if the specified revision is the latest revision.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.deleteRevision@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.DeleteRevision
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevisionResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.deleteRevision@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevisionResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "deleteRevision" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes the specified revision of a Consent. An INVALID_ARGUMENT error occurs if the specified revision is the latest revision.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision = HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the Consent revision to delete, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\@{revision_id}@. An INVALID_ARGUMENT error occurs if @revision_id@ is not specified in the name.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision 
    ::  Core.Text
       -- ^  Required. The resource name of the Consent revision to delete, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\@{revision_id}@. An INVALID_ARGUMENT error occurs if @revision_id@ is not specified in the name. See 'name'.
    -> HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision name =
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision
         where
        type Rs
               HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision
             = Empty
        type Scopes
               HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevisionResource)
                      Core.mempty

