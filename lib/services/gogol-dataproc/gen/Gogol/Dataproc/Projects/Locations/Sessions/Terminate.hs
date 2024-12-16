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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.Terminate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Terminates the interactive session.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.terminate@.
module Gogol.Dataproc.Projects.Locations.Sessions.Terminate
    (
    -- * Resource
      DataprocProjectsLocationsSessionsTerminateResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsSessionsTerminate (..)
    , newDataprocProjectsLocationsSessionsTerminate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.sessions.terminate@ method which the
-- 'DataprocProjectsLocationsSessionsTerminate' request conforms to.
type DataprocProjectsLocationsSessionsTerminateResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "terminate" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TerminateSessionRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Terminates the interactive session.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsTerminate' smart constructor.
data DataprocProjectsLocationsSessionsTerminate = DataprocProjectsLocationsSessionsTerminate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the session resource to terminate.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: TerminateSessionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsTerminate' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsTerminate 
    ::  Core.Text
       -- ^  Required. The name of the session resource to terminate. See 'name'.
    -> TerminateSessionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DataprocProjectsLocationsSessionsTerminate
newDataprocProjectsLocationsSessionsTerminate name payload =
  DataprocProjectsLocationsSessionsTerminate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsSessionsTerminate
         where
        type Rs DataprocProjectsLocationsSessionsTerminate =
             Operation
        type Scopes
               DataprocProjectsLocationsSessionsTerminate
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsSessionsTerminate{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsSessionsTerminateResource)
                      Core.mempty
