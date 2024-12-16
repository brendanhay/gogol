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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Attribute definition.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Patch
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatchResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] AttributeDefinition Core.:>
                         Core.Patch '[Core.JSON] AttributeDefinition

-- | Updates the specified Attribute definition.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch = HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier. Resource name of the Attribute definition, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/attributeDefinitions\/{attribute_definition_id}@. Cannot be changed after creation.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AttributeDefinition
      -- | Required. The update mask that applies to the resource. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask. Only the @description@, @allowed_values@, @consent_default_values@ and @data_mapping_default_value@ fields can be updated. The updated @allowed_values@ must contain all values from the previous @allowed_values@.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch 
    ::  Core.Text
       -- ^  Identifier. Resource name of the Attribute definition, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/attributeDefinitions\/{attribute_definition_id}@. Cannot be changed after creation. See 'name'.
    -> AttributeDefinition
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch name payload =
  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch
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
           HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch
         where
        type Rs
               HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch
             = AttributeDefinition
        type Scopes
               HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatchResource)
                      Core.mempty

