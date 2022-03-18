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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified User data mapping.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.delete@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Delete
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDeleteResource

    -- ** Constructing a Request
    , newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.delete@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes the specified User data mapping.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete = HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the User data mapping to delete.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete 
    ::  Core.Text
       -- ^  Required. The resource name of the User data mapping to delete. See 'name'.
    -> HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete name =
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete
         where
        type Rs
               HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete
             = Empty
        type Scopes
               HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDeleteResource)
                      Core.mempty

