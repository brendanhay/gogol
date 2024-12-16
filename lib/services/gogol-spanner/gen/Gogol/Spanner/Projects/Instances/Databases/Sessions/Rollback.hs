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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.Rollback
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back a transaction, releasing any locks it holds. It is a good idea to call this for any transaction that includes one or more Read or ExecuteSql requests and ultimately decides not to commit. @Rollback@ returns @OK@ if it successfully aborts the transaction, the transaction was already aborted, or the transaction is not found. @Rollback@ never returns @ABORTED@.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.rollback@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.Rollback
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesSessionsRollbackResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesSessionsRollback (..)
    , newSpannerProjectsInstancesDatabasesSessionsRollback
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.rollback@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsRollback' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsRollbackResource
     =
     "v1" Core.:>
       Core.CaptureMode "session" "rollback" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RollbackRequest Core.:>
                       Core.Post '[Core.JSON] Empty

-- | Rolls back a transaction, releasing any locks it holds. It is a good idea to call this for any transaction that includes one or more Read or ExecuteSql requests and ultimately decides not to commit. @Rollback@ returns @OK@ if it successfully aborts the transaction, the transaction was already aborted, or the transaction is not found. @Rollback@ never returns @ABORTED@.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsRollback' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsRollback = SpannerProjectsInstancesDatabasesSessionsRollback
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RollbackRequest
      -- | Required. The session in which the transaction to roll back is running.
    , session :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsRollback' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsRollback 
    ::  RollbackRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The session in which the transaction to roll back is running. See 'session'.
    -> SpannerProjectsInstancesDatabasesSessionsRollback
newSpannerProjectsInstancesDatabasesSessionsRollback payload session =
  SpannerProjectsInstancesDatabasesSessionsRollback
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , session = session
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesSessionsRollback
         where
        type Rs
               SpannerProjectsInstancesDatabasesSessionsRollback
             = Empty
        type Scopes
               SpannerProjectsInstancesDatabasesSessionsRollback
             = '[CloudPlatform'FullControl, Spanner'Data]
        requestClient
          SpannerProjectsInstancesDatabasesSessionsRollback{..}
          = go session xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesSessionsRollbackResource)
                      Core.mempty

