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
-- Module      : Gogol.Datastore.Projects.RunAggregationQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs an aggregation query.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.runAggregationQuery@.
module Gogol.Datastore.Projects.RunAggregationQuery
    (
    -- * Resource
      DatastoreProjectsRunAggregationQueryResource

    -- ** Constructing a Request
    , DatastoreProjectsRunAggregationQuery (..)
    , newDatastoreProjectsRunAggregationQuery
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Datastore.Types

-- | A resource alias for @datastore.projects.runAggregationQuery@ method which the
-- 'DatastoreProjectsRunAggregationQuery' request conforms to.
type DatastoreProjectsRunAggregationQueryResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.CaptureMode "projectId" "runAggregationQuery"
           Core.Text
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] RunAggregationQueryRequest
                         Core.:>
                         Core.Post '[Core.JSON] RunAggregationQueryResponse

-- | Runs an aggregation query.
--
-- /See:/ 'newDatastoreProjectsRunAggregationQuery' smart constructor.
data DatastoreProjectsRunAggregationQuery = DatastoreProjectsRunAggregationQuery
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RunAggregationQueryRequest
      -- | Required. The ID of the project against which to make the request.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsRunAggregationQuery' with the minimum fields required to make a request.
newDatastoreProjectsRunAggregationQuery 
    ::  RunAggregationQueryRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the project against which to make the request. See 'projectId'.
    -> DatastoreProjectsRunAggregationQuery
newDatastoreProjectsRunAggregationQuery payload projectId =
  DatastoreProjectsRunAggregationQuery
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DatastoreProjectsRunAggregationQuery
         where
        type Rs DatastoreProjectsRunAggregationQuery =
             RunAggregationQueryResponse
        type Scopes DatastoreProjectsRunAggregationQuery =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient
          DatastoreProjectsRunAggregationQuery{..}
          = go projectId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              datastoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DatastoreProjectsRunAggregationQueryResource)
                      Core.mempty

