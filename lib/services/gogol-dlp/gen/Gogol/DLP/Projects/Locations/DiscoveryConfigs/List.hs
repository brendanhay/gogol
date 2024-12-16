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
-- Module      : Gogol.DLP.Projects.Locations.DiscoveryConfigs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists discovery configurations.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.discoveryConfigs.list@.
module Gogol.DLP.Projects.Locations.DiscoveryConfigs.List
    (
    -- * Resource
      DLPProjectsLocationsDiscoveryConfigsListResource

    -- ** Constructing a Request
    , DLPProjectsLocationsDiscoveryConfigsList (..)
    , newDLPProjectsLocationsDiscoveryConfigsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.discoveryConfigs.list@ method which the
-- 'DLPProjectsLocationsDiscoveryConfigsList' request conforms to.
type DLPProjectsLocationsDiscoveryConfigsListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "discoveryConfigs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "orderBy" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GooglePrivacyDlpV2ListDiscoveryConfigsResponse

-- | Lists discovery configurations.
--
-- /See:/ 'newDLPProjectsLocationsDiscoveryConfigsList' smart constructor.
data DLPProjectsLocationsDiscoveryConfigsList = DLPProjectsLocationsDiscoveryConfigsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Comma-separated list of config fields to order by, followed by @asc@ or @desc@ postfix. This list is case insensitive. The default sorting order is ascending. Redundant space characters are insignificant. Example: @name asc,update_time, create_time desc@ Supported fields are: - @last_run_time@: corresponds to the last time the DiscoveryConfig ran. - @name@: corresponds to the DiscoveryConfig\'s name. - @status@: corresponds to DiscoveryConfig\'s status.
    , orderBy :: (Core.Maybe Core.Text)
      -- | Size of the page. This value can be limited by a server.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Page token to continue retrieval. Comes from the previous call to ListDiscoveryConfigs. @order_by@ field must not change for subsequent calls.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Parent resource name. The format of this value is as follows: @projects\/{project_id}\/locations\/{location_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDiscoveryConfigsList' with the minimum fields required to make a request.
newDLPProjectsLocationsDiscoveryConfigsList 
    ::  Core.Text
       -- ^  Required. Parent resource name. The format of this value is as follows: @projects\/{project_id}\/locations\/{location_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
    -> DLPProjectsLocationsDiscoveryConfigsList
newDLPProjectsLocationsDiscoveryConfigsList parent =
  DLPProjectsLocationsDiscoveryConfigsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsDiscoveryConfigsList
         where
        type Rs DLPProjectsLocationsDiscoveryConfigsList =
             GooglePrivacyDlpV2ListDiscoveryConfigsResponse
        type Scopes DLPProjectsLocationsDiscoveryConfigsList
             = '[CloudPlatform'FullControl]
        requestClient
          DLPProjectsLocationsDiscoveryConfigsList{..}
          = go parent xgafv accessToken callback orderBy
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsDiscoveryConfigsListResource)
                      Core.mempty
