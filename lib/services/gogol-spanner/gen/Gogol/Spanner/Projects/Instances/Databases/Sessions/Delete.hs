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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Ends a session, releasing server resources associated with it. This will asynchronously trigger cancellation of any operations that are running with this session.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.delete@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.Delete
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesSessionsDeleteResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesSessionsDelete (..)
    , newSpannerProjectsInstancesDatabasesSessionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.delete@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsDelete' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsDeleteResource
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

-- | Ends a session, releasing server resources associated with it. This will asynchronously trigger cancellation of any operations that are running with this session.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsDelete' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsDelete = SpannerProjectsInstancesDatabasesSessionsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the session to delete.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsDelete' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsDelete 
    ::  Core.Text
       -- ^  Required. The name of the session to delete. See 'name'.
    -> SpannerProjectsInstancesDatabasesSessionsDelete
newSpannerProjectsInstancesDatabasesSessionsDelete name =
  SpannerProjectsInstancesDatabasesSessionsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesSessionsDelete
         where
        type Rs
               SpannerProjectsInstancesDatabasesSessionsDelete
             = Empty
        type Scopes
               SpannerProjectsInstancesDatabasesSessionsDelete
             = '[CloudPlatform'FullControl, Spanner'Data]
        requestClient
          SpannerProjectsInstancesDatabasesSessionsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesSessionsDeleteResource)
                      Core.mempty

