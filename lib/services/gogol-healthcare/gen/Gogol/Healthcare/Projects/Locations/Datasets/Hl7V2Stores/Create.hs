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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new HL7v2 store within the parent dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Create
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsHl7V2StoresCreateResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsHl7V2StoresCreate (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "hl7V2Stores" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "hl7V2StoreId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Hl7V2Store Core.:>
                           Core.Post '[Core.JSON] Hl7V2Store

-- | Creates a new HL7v2 store within the parent dataset.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresCreate = HealthcareProjectsLocationsDatasetsHl7V2StoresCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID of the HL7v2 store that is being created. The string must match the following regex: @[\\p{L}\\p{N}_\\-\\.]{1,256}@.
    , hl7V2StoreId :: (Core.Maybe Core.Text)
      -- | Required. The name of the dataset this HL7v2 store belongs to.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Hl7V2Store
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresCreate 
    ::  Core.Text
       -- ^  Required. The name of the dataset this HL7v2 store belongs to. See 'parent'.
    -> Hl7V2Store
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsHl7V2StoresCreate
newHealthcareProjectsLocationsDatasetsHl7V2StoresCreate parent payload =
  HealthcareProjectsLocationsDatasetsHl7V2StoresCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , hl7V2StoreId = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsHl7V2StoresCreate
         where
        type Rs
               HealthcareProjectsLocationsDatasetsHl7V2StoresCreate
             = Hl7V2Store
        type Scopes
               HealthcareProjectsLocationsDatasetsHl7V2StoresCreate
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsHl7V2StoresCreate{..}
          = go parent xgafv accessToken callback hl7V2StoreId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsHl7V2StoresCreateResource)
                      Core.mempty

