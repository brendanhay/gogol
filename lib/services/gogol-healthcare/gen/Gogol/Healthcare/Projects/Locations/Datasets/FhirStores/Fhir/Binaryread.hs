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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binaryread
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the contents of a FHIR Binary resource. This method can be used to retrieve a Binary resource either by using the FHIR JSON mimetype as the value for the Accept header, or as a raw data stream. If the FHIR Accept type is used this method will return a Binary resource with the data base64-encoded, regardless of how the resource was created. The resource data can be retrieved in base64-decoded form if the Accept type of the request matches the value of the resource\'s @contentType@ field. The definition of the Binary REST API can be found at https:\/\/hl7.org\/fhir\/binary.html#rest.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Binaryread@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binaryread
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryreadResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Binaryread@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryreadResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] HttpBody

-- | Gets the contents of a FHIR Binary resource. This method can be used to retrieve a Binary resource either by using the FHIR JSON mimetype as the value for the Accept header, or as a raw data stream. If the FHIR Accept type is used this method will return a Binary resource with the data base64-encoded, regardless of how the resource was created. The resource data can be retrieved in base64-decoded form if the Accept type of the request matches the value of the resource\'s @contentType@ field. The definition of the Binary REST API can be found at https:\/\/hl7.org\/fhir\/binary.html#rest.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread = HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the Binary resource to retrieve.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread 
    ::  Core.Text
       -- ^  Required. The name of the Binary resource to retrieve. See 'name'.
    -> HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread
newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread name =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread
         where
        type Rs
               HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread
             = HttpBody
        type Scopes
               HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryreadResource)
                      Core.mempty

