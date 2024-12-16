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
-- Module      : Gogol.DLP.Organizations.Locations.DiscoveryConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a config for discovery to scan and profile storage.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.discoveryConfigs.create@.
module Gogol.DLP.Organizations.Locations.DiscoveryConfigs.Create
    (
    -- * Resource
      DLPOrganizationsLocationsDiscoveryConfigsCreateResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsDiscoveryConfigsCreate (..)
    , newDLPOrganizationsLocationsDiscoveryConfigsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.discoveryConfigs.create@ method which the
-- 'DLPOrganizationsLocationsDiscoveryConfigsCreate' request conforms to.
type DLPOrganizationsLocationsDiscoveryConfigsCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "discoveryConfigs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GooglePrivacyDlpV2CreateDiscoveryConfigRequest
                         Core.:>
                         Core.Post '[Core.JSON]
                           GooglePrivacyDlpV2DiscoveryConfig

-- | Creates a config for discovery to scan and profile storage.
--
-- /See:/ 'newDLPOrganizationsLocationsDiscoveryConfigsCreate' smart constructor.
data DLPOrganizationsLocationsDiscoveryConfigsCreate = DLPOrganizationsLocationsDiscoveryConfigsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization): + Projects scope: @projects\/{project_id}\/locations\/{location_id}@ + Organizations scope: @organizations\/{org_id}\/locations\/{location_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2CreateDiscoveryConfigRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsDiscoveryConfigsCreate' with the minimum fields required to make a request.
newDLPOrganizationsLocationsDiscoveryConfigsCreate 
    ::  Core.Text
       -- ^  Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization): + Projects scope: @projects\/{project_id}\/locations\/{location_id}@ + Organizations scope: @organizations\/{org_id}\/locations\/{location_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
    -> GooglePrivacyDlpV2CreateDiscoveryConfigRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPOrganizationsLocationsDiscoveryConfigsCreate
newDLPOrganizationsLocationsDiscoveryConfigsCreate parent payload =
  DLPOrganizationsLocationsDiscoveryConfigsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsLocationsDiscoveryConfigsCreate
         where
        type Rs
               DLPOrganizationsLocationsDiscoveryConfigsCreate
             = GooglePrivacyDlpV2DiscoveryConfig
        type Scopes
               DLPOrganizationsLocationsDiscoveryConfigsCreate
             = '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsDiscoveryConfigsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsLocationsDiscoveryConfigsCreateResource)
                      Core.mempty

