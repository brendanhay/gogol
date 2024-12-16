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
-- Module      : Gogol.DLP.Organizations.Locations.DiscoveryConfigs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a discovery configuration.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.discoveryConfigs.patch@.
module Gogol.DLP.Organizations.Locations.DiscoveryConfigs.Patch
    (
    -- * Resource
      DLPOrganizationsLocationsDiscoveryConfigsPatchResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsDiscoveryConfigsPatch (..)
    , newDLPOrganizationsLocationsDiscoveryConfigsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.discoveryConfigs.patch@ method which the
-- 'DLPOrganizationsLocationsDiscoveryConfigsPatch' request conforms to.
type DLPOrganizationsLocationsDiscoveryConfigsPatchResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
                       Core.:>
                       Core.Patch '[Core.JSON]
                         GooglePrivacyDlpV2DiscoveryConfig

-- | Updates a discovery configuration.
--
-- /See:/ 'newDLPOrganizationsLocationsDiscoveryConfigsPatch' smart constructor.
data DLPOrganizationsLocationsDiscoveryConfigsPatch = DLPOrganizationsLocationsDiscoveryConfigsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the project and the configuration, for example @projects\/dlp-test-project\/discoveryConfigs\/53234423@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsDiscoveryConfigsPatch' with the minimum fields required to make a request.
newDLPOrganizationsLocationsDiscoveryConfigsPatch 
    ::  Core.Text
       -- ^  Required. Resource name of the project and the configuration, for example @projects\/dlp-test-project\/discoveryConfigs\/53234423@. See 'name'.
    -> GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPOrganizationsLocationsDiscoveryConfigsPatch
newDLPOrganizationsLocationsDiscoveryConfigsPatch name payload =
  DLPOrganizationsLocationsDiscoveryConfigsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsLocationsDiscoveryConfigsPatch
         where
        type Rs
               DLPOrganizationsLocationsDiscoveryConfigsPatch
             = GooglePrivacyDlpV2DiscoveryConfig
        type Scopes
               DLPOrganizationsLocationsDiscoveryConfigsPatch
             = '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsDiscoveryConfigsPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsLocationsDiscoveryConfigsPatchResource)
                      Core.mempty

