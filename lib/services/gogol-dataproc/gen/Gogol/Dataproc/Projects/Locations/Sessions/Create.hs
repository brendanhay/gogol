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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an interactive session asynchronously.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.create@.
module Gogol.Dataproc.Projects.Locations.Sessions.Create
    (
    -- * Resource
      DataprocProjectsLocationsSessionsCreateResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsSessionsCreate (..)
    , newDataprocProjectsLocationsSessionsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.sessions.create@ method which the
-- 'DataprocProjectsLocationsSessionsCreate' request conforms to.
type DataprocProjectsLocationsSessionsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "sessions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "requestId" Core.Text Core.:>
                   Core.QueryParam "sessionId" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Session Core.:>
                             Core.Post '[Core.JSON] Operation

-- | Create an interactive session asynchronously.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsCreate' smart constructor.
data DataprocProjectsLocationsSessionsCreate = DataprocProjectsLocationsSessionsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent resource where this session will be created.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Session
      -- | Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s with the same ID, the second request is ignored, and the first Session is created and stored in the backend.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    , requestId :: (Core.Maybe Core.Text)
      -- | Required. The ID to use for the session, which becomes the final component of the session\'s resource name.This value must be 4-63 characters. Valid characters are \/a-z-\/.
    , sessionId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsCreate' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsCreate 
    ::  Core.Text
       -- ^  Required. The parent resource where this session will be created. See 'parent'.
    -> Session
       -- ^  Multipart request metadata. See 'payload'.
    -> DataprocProjectsLocationsSessionsCreate
newDataprocProjectsLocationsSessionsCreate parent payload =
  DataprocProjectsLocationsSessionsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , requestId = Core.Nothing
    , sessionId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsSessionsCreate
         where
        type Rs DataprocProjectsLocationsSessionsCreate =
             Operation
        type Scopes DataprocProjectsLocationsSessionsCreate =
             '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsSessionsCreate{..}
          = go parent xgafv accessToken callback requestId
              sessionId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsSessionsCreateResource)
                      Core.mempty

