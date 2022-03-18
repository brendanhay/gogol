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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.BatchCreate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates multiple new sessions. This API can be used to initialize a session cache on the clients. See https:\/\/goo.gl\/TgSFN2 for best practices on session cache management.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.batchCreate@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.BatchCreate
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesSessionsBatchCreateResource

    -- ** Constructing a Request
    , newSpannerProjectsInstancesDatabasesSessionsBatchCreate
    , SpannerProjectsInstancesDatabasesSessionsBatchCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.batchCreate@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsBatchCreate' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsBatchCreateResource
     =
     "v1" Core.:>
       Core.Capture "database" Core.Text Core.:>
         "sessions:batchCreate" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BatchCreateSessionsRequest
                         Core.:>
                         Core.Post '[Core.JSON] BatchCreateSessionsResponse

-- | Creates multiple new sessions. This API can be used to initialize a session cache on the clients. See https:\/\/goo.gl\/TgSFN2 for best practices on session cache management.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsBatchCreate' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsBatchCreate = SpannerProjectsInstancesDatabasesSessionsBatchCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The database in which the new sessions are created.
    , database :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchCreateSessionsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsBatchCreate' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsBatchCreate 
    ::  Core.Text
       -- ^  Required. The database in which the new sessions are created. See 'database'.
    -> BatchCreateSessionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> SpannerProjectsInstancesDatabasesSessionsBatchCreate
newSpannerProjectsInstancesDatabasesSessionsBatchCreate database payload =
  SpannerProjectsInstancesDatabasesSessionsBatchCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , database = database
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesSessionsBatchCreate
         where
        type Rs
               SpannerProjectsInstancesDatabasesSessionsBatchCreate
             = BatchCreateSessionsResponse
        type Scopes
               SpannerProjectsInstancesDatabasesSessionsBatchCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          SpannerProjectsInstancesDatabasesSessionsBatchCreate{..}
          = go database xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesSessionsBatchCreateResource)
                      Core.mempty

