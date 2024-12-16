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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified Attribute definition.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Get
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGetResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] AttributeDefinition

-- | Gets the specified Attribute definition.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet = HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the Attribute definition to get.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet 
    ::  Core.Text
       -- ^  Required. The resource name of the Attribute definition to get. See 'name'.
    -> HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet name =
  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet
         where
        type Rs
               HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet
             = AttributeDefinition
        type Scopes
               HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGetResource)
                      Core.mempty

