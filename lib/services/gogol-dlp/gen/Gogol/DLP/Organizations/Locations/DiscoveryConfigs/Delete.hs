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
-- Module      : Gogol.DLP.Organizations.Locations.DiscoveryConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a discovery configuration.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.discoveryConfigs.delete@.
module Gogol.DLP.Organizations.Locations.DiscoveryConfigs.Delete
    (
    -- * Resource
      DLPOrganizationsLocationsDiscoveryConfigsDeleteResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsDiscoveryConfigsDelete (..)
    , newDLPOrganizationsLocationsDiscoveryConfigsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.discoveryConfigs.delete@ method which the
-- 'DLPOrganizationsLocationsDiscoveryConfigsDelete' request conforms to.
type DLPOrganizationsLocationsDiscoveryConfigsDeleteResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes a discovery configuration.
--
-- /See:/ 'newDLPOrganizationsLocationsDiscoveryConfigsDelete' smart constructor.
data DLPOrganizationsLocationsDiscoveryConfigsDelete = DLPOrganizationsLocationsDiscoveryConfigsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the project and the config, for example @projects\/dlp-test-project\/discoveryConfigs\/53234423@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsDiscoveryConfigsDelete' with the minimum fields required to make a request.
newDLPOrganizationsLocationsDiscoveryConfigsDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the project and the config, for example @projects\/dlp-test-project\/discoveryConfigs\/53234423@. See 'name'.
    -> DLPOrganizationsLocationsDiscoveryConfigsDelete
newDLPOrganizationsLocationsDiscoveryConfigsDelete name =
  DLPOrganizationsLocationsDiscoveryConfigsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsLocationsDiscoveryConfigsDelete
         where
        type Rs
               DLPOrganizationsLocationsDiscoveryConfigsDelete
             = GoogleProtobufEmpty
        type Scopes
               DLPOrganizationsLocationsDiscoveryConfigsDelete
             = '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsDiscoveryConfigsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsLocationsDiscoveryConfigsDeleteResource)
                      Core.mempty
