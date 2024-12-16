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
-- Module      : Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a TunnelDestGroup.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.locations.destGroups.delete@.
module Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Delete
    (
    -- * Resource
      IAPProjectsIap_tunnelLocationsDestGroupsDeleteResource

    -- ** Constructing a Request
    , IAPProjectsIap_tunnelLocationsDestGroupsDelete (..)
    , newIAPProjectsIap_tunnelLocationsDestGroupsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAP.Types

-- | A resource alias for @iap.projects.iap_tunnel.locations.destGroups.delete@ method which the
-- 'IAPProjectsIap_tunnelLocationsDestGroupsDelete' request conforms to.
type IAPProjectsIap_tunnelLocationsDestGroupsDeleteResource
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

-- | Deletes a TunnelDestGroup.
--
-- /See:/ 'newIAPProjectsIap_tunnelLocationsDestGroupsDelete' smart constructor.
data IAPProjectsIap_tunnelLocationsDestGroupsDelete = IAPProjectsIap_tunnelLocationsDestGroupsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the TunnelDestGroup to delete. In the following format: @projects\/{project_number\/id}\/iap_tunnel\/locations\/{location}\/destGroups\/{dest_group}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsIap_tunnelLocationsDestGroupsDelete' with the minimum fields required to make a request.
newIAPProjectsIap_tunnelLocationsDestGroupsDelete 
    ::  Core.Text
       -- ^  Required. Name of the TunnelDestGroup to delete. In the following format: @projects\/{project_number\/id}\/iap_tunnel\/locations\/{location}\/destGroups\/{dest_group}@. See 'name'.
    -> IAPProjectsIap_tunnelLocationsDestGroupsDelete
newIAPProjectsIap_tunnelLocationsDestGroupsDelete name =
  IAPProjectsIap_tunnelLocationsDestGroupsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           IAPProjectsIap_tunnelLocationsDestGroupsDelete
         where
        type Rs
               IAPProjectsIap_tunnelLocationsDestGroupsDelete
             = Empty
        type Scopes
               IAPProjectsIap_tunnelLocationsDestGroupsDelete
             = '[CloudPlatform'FullControl]
        requestClient
          IAPProjectsIap_tunnelLocationsDestGroupsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              iAPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IAPProjectsIap_tunnelLocationsDestGroupsDeleteResource)
                      Core.mempty

