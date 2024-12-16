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
-- Module      : Gogol.DataFusion.Projects.Locations.Operations.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.operations.delete@.
module Gogol.DataFusion.Projects.Locations.Operations.Delete
    (
    -- * Resource
      DataFusionProjectsLocationsOperationsDeleteResource

    -- ** Constructing a Request
    , DataFusionProjectsLocationsOperationsDelete (..)
    , newDataFusionProjectsLocationsOperationsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DataFusion.Types

-- | A resource alias for @datafusion.projects.locations.operations.delete@ method which the
-- 'DataFusionProjectsLocationsOperationsDelete' request conforms to.
type DataFusionProjectsLocationsOperationsDeleteResource
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

-- | Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@.
--
-- /See:/ 'newDataFusionProjectsLocationsOperationsDelete' smart constructor.
data DataFusionProjectsLocationsOperationsDelete = DataFusionProjectsLocationsOperationsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the operation resource to be deleted.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsOperationsDelete' with the minimum fields required to make a request.
newDataFusionProjectsLocationsOperationsDelete 
    ::  Core.Text
       -- ^  The name of the operation resource to be deleted. See 'name'.
    -> DataFusionProjectsLocationsOperationsDelete
newDataFusionProjectsLocationsOperationsDelete name =
  DataFusionProjectsLocationsOperationsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataFusionProjectsLocationsOperationsDelete
         where
        type Rs DataFusionProjectsLocationsOperationsDelete =
             Empty
        type Scopes
               DataFusionProjectsLocationsOperationsDelete
             = '[CloudPlatform'FullControl]
        requestClient
          DataFusionProjectsLocationsOperationsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataFusionService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataFusionProjectsLocationsOperationsDeleteResource)
                      Core.mempty

