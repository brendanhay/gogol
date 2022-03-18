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
-- Module      : Gogol.Healthcare.Projects.Locations.Services.Nlp.AnalyzeEntities
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyze heathcare entity in a document. Its response includes the recognized entity mentions and the relationships between them. AnalyzeEntities uses context aware models to detect entities.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.services.nlp.analyzeEntities@.
module Gogol.Healthcare.Projects.Locations.Services.Nlp.AnalyzeEntities
    (
    -- * Resource
      HealthcareProjectsLocationsServicesNlpAnalyzeEntitiesResource

    -- ** Constructing a Request
    , newHealthcareProjectsLocationsServicesNlpAnalyzeEntities
    , HealthcareProjectsLocationsServicesNlpAnalyzeEntities
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.services.nlp.analyzeEntities@ method which the
-- 'HealthcareProjectsLocationsServicesNlpAnalyzeEntities' request conforms to.
type HealthcareProjectsLocationsServicesNlpAnalyzeEntitiesResource
     =
     "v1" Core.:>
       Core.CaptureMode "nlpService" "analyzeEntities"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AnalyzeEntitiesRequest
                       Core.:>
                       Core.Post '[Core.JSON] AnalyzeEntitiesResponse

-- | Analyze heathcare entity in a document. Its response includes the recognized entity mentions and the relationships between them. AnalyzeEntities uses context aware models to detect entities.
--
-- /See:/ 'newHealthcareProjectsLocationsServicesNlpAnalyzeEntities' smart constructor.
data HealthcareProjectsLocationsServicesNlpAnalyzeEntities = HealthcareProjectsLocationsServicesNlpAnalyzeEntities
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The resource name of the service of the form: \"projects\/{project/id}\/locations\/{location/id}\/services\/nlp\".
    , nlpService :: Core.Text
      -- | Multipart request metadata.
    , payload :: AnalyzeEntitiesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsServicesNlpAnalyzeEntities' with the minimum fields required to make a request.
newHealthcareProjectsLocationsServicesNlpAnalyzeEntities 
    ::  Core.Text
       -- ^  The resource name of the service of the form: \"projects\/{project/id}\/locations\/{location/id}\/services\/nlp\". See 'nlpService'.
    -> AnalyzeEntitiesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsServicesNlpAnalyzeEntities
newHealthcareProjectsLocationsServicesNlpAnalyzeEntities nlpService payload =
  HealthcareProjectsLocationsServicesNlpAnalyzeEntities
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , nlpService = nlpService
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsServicesNlpAnalyzeEntities
         where
        type Rs
               HealthcareProjectsLocationsServicesNlpAnalyzeEntities
             = AnalyzeEntitiesResponse
        type Scopes
               HealthcareProjectsLocationsServicesNlpAnalyzeEntities
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          HealthcareProjectsLocationsServicesNlpAnalyzeEntities{..}
          = go nlpService xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsServicesNlpAnalyzeEntitiesResource)
                      Core.mempty

