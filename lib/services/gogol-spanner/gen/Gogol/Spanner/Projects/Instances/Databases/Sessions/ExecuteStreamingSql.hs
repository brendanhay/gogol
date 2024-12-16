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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteStreamingSql
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Like ExecuteSql, except returns the result set as a stream. Unlike ExecuteSql, there is no limit on the size of the returned result set. However, no individual row in the result set can exceed 100 MiB, and no column value can exceed 10 MiB.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.executeStreamingSql@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteStreamingSql
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSqlResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql (..)
    , newSpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.executeStreamingSql@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSqlResource
     =
     "v1" Core.:>
       Core.CaptureMode "session" "executeStreamingSql"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ExecuteSqlRequest Core.:>
                       Core.Post '[Core.JSON] PartialResultSet

-- | Like ExecuteSql, except returns the result set as a stream. Unlike ExecuteSql, there is no limit on the size of the returned result set. However, no individual row in the result set can exceed 100 MiB, and no column value can exceed 10 MiB.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql = SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: ExecuteSqlRequest
      -- | Required. The session in which the SQL query should be performed.
    , session :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql 
    ::  ExecuteSqlRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The session in which the SQL query should be performed. See 'session'.
    -> SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql
newSpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql payload session =
  SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , session = session
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql
         where
        type Rs
               SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql
             = PartialResultSet
        type Scopes
               SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql
             = '[CloudPlatform'FullControl, Spanner'Data]
        requestClient
          SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSql{..}
          = go session xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesSessionsExecuteStreamingSqlResource)
                      Core.mempty

