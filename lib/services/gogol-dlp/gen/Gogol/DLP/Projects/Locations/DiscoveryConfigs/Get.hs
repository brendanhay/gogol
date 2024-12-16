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
-- Module      : Gogol.DLP.Projects.Locations.DiscoveryConfigs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a discovery configuration.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.discoveryConfigs.get@.
module Gogol.DLP.Projects.Locations.DiscoveryConfigs.Get
    (
    -- * Resource
      DLPProjectsLocationsDiscoveryConfigsGetResource

    -- ** Constructing a Request
    , DLPProjectsLocationsDiscoveryConfigsGet (..)
    , newDLPProjectsLocationsDiscoveryConfigsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.discoveryConfigs.get@ method which the
-- 'DLPProjectsLocationsDiscoveryConfigsGet' request conforms to.
type DLPProjectsLocationsDiscoveryConfigsGetResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       GooglePrivacyDlpV2DiscoveryConfig

-- | Gets a discovery configuration.
--
-- /See:/ 'newDLPProjectsLocationsDiscoveryConfigsGet' smart constructor.
data DLPProjectsLocationsDiscoveryConfigsGet = DLPProjectsLocationsDiscoveryConfigsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the project and the configuration, for example @projects\/dlp-test-project\/discoveryConfigs\/53234423@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDiscoveryConfigsGet' with the minimum fields required to make a request.
newDLPProjectsLocationsDiscoveryConfigsGet 
    ::  Core.Text
       -- ^  Required. Resource name of the project and the configuration, for example @projects\/dlp-test-project\/discoveryConfigs\/53234423@. See 'name'.
    -> DLPProjectsLocationsDiscoveryConfigsGet
newDLPProjectsLocationsDiscoveryConfigsGet name =
  DLPProjectsLocationsDiscoveryConfigsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsDiscoveryConfigsGet
         where
        type Rs DLPProjectsLocationsDiscoveryConfigsGet =
             GooglePrivacyDlpV2DiscoveryConfig
        type Scopes DLPProjectsLocationsDiscoveryConfigsGet =
             '[CloudPlatform'FullControl]
        requestClient
          DLPProjectsLocationsDiscoveryConfigsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsDiscoveryConfigsGetResource)
                      Core.mempty

