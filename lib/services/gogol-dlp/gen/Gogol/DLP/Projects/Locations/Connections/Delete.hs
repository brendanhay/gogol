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
-- Module      : Gogol.DLP.Projects.Locations.Connections.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a Connection.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.connections.delete@.
module Gogol.DLP.Projects.Locations.Connections.Delete
    (
    -- * Resource
      DLPProjectsLocationsConnectionsDeleteResource

    -- ** Constructing a Request
    , DLPProjectsLocationsConnectionsDelete (..)
    , newDLPProjectsLocationsConnectionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.connections.delete@ method which the
-- 'DLPProjectsLocationsConnectionsDelete' request conforms to.
type DLPProjectsLocationsConnectionsDeleteResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Delete a Connection.
--
-- /See:/ 'newDLPProjectsLocationsConnectionsDelete' smart constructor.
data DLPProjectsLocationsConnectionsDelete = DLPProjectsLocationsConnectionsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the Connection to be deleted, in the format: @projects\/{project}\/locations\/{location}\/connections\/{connection}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsConnectionsDelete' with the minimum fields required to make a request.
newDLPProjectsLocationsConnectionsDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the Connection to be deleted, in the format: @projects\/{project}\/locations\/{location}\/connections\/{connection}@. See 'name'.
    -> DLPProjectsLocationsConnectionsDelete
newDLPProjectsLocationsConnectionsDelete name =
  DLPProjectsLocationsConnectionsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsConnectionsDelete
         where
        type Rs DLPProjectsLocationsConnectionsDelete =
             GoogleProtobufEmpty
        type Scopes DLPProjectsLocationsConnectionsDelete =
             '[CloudPlatform'FullControl]
        requestClient
          DLPProjectsLocationsConnectionsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsConnectionsDeleteResource)
                      Core.mempty

