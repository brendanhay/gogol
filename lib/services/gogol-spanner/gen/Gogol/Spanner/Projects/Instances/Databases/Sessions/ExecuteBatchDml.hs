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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteBatchDml
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes a batch of SQL DML statements. This method allows many statements to be run with lower latency than submitting them sequentially with ExecuteSql. Statements are executed in sequential order. A request can succeed even if a statement fails. The ExecuteBatchDmlResponse.status field in the response provides information about the statement that failed. Clients must inspect this field to determine whether an error occurred. Execution stops after the first failed statement; the remaining statements are not executed.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.executeBatchDml@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteBatchDml
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesSessionsExecuteBatchDmlResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml (..)
    , newSpannerProjectsInstancesDatabasesSessionsExecuteBatchDml
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.executeBatchDml@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsExecuteBatchDmlResource
     =
     "v1" Core.:>
       Core.CaptureMode "session" "executeBatchDml"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ExecuteBatchDmlRequest
                       Core.:>
                       Core.Post '[Core.JSON] ExecuteBatchDmlResponse

-- | Executes a batch of SQL DML statements. This method allows many statements to be run with lower latency than submitting them sequentially with ExecuteSql. Statements are executed in sequential order. A request can succeed even if a statement fails. The ExecuteBatchDmlResponse.status field in the response provides information about the statement that failed. Clients must inspect this field to determine whether an error occurred. Execution stops after the first failed statement; the remaining statements are not executed.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsExecuteBatchDml' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml = SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: ExecuteBatchDmlRequest
      -- | Required. The session in which the DML statements should be performed.
    , session :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsExecuteBatchDml 
    ::  ExecuteBatchDmlRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The session in which the DML statements should be performed. See 'session'.
    -> SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml
newSpannerProjectsInstancesDatabasesSessionsExecuteBatchDml payload session =
  SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , session = session
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml
         where
        type Rs
               SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml
             = ExecuteBatchDmlResponse
        type Scopes
               SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml
             = '[CloudPlatform'FullControl, Spanner'Data]
        requestClient
          SpannerProjectsInstancesDatabasesSessionsExecuteBatchDml{..}
          = go session xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesSessionsExecuteBatchDmlResource)
                      Core.mempty

