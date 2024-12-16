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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Spanner database and starts to prepare it for serving. The returned long-running operation will have a name of the format @\/operations\/@ and can be used to track preparation of the database. The metadata field type is CreateDatabaseMetadata. The response field type is Database, if successful.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.create@.
module Gogol.Spanner.Projects.Instances.Databases.Create
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesCreateResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesCreate (..)
    , newSpannerProjectsInstancesDatabasesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.create@ method which the
-- 'SpannerProjectsInstancesDatabasesCreate' request conforms to.
type SpannerProjectsInstancesDatabasesCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "databases" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] CreateDatabaseRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new Spanner database and starts to prepare it for serving. The returned long-running operation will have a name of the format @\/operations\/@ and can be used to track preparation of the database. The metadata field type is CreateDatabaseMetadata. The response field type is Database, if successful.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesCreate' smart constructor.
data SpannerProjectsInstancesDatabasesCreate = SpannerProjectsInstancesDatabasesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the instance that will serve the new database. Values are of the form @projects\/\/instances\/@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: CreateDatabaseRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesCreate' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesCreate 
    ::  Core.Text
       -- ^  Required. The name of the instance that will serve the new database. Values are of the form @projects\/\/instances\/@. See 'parent'.
    -> CreateDatabaseRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> SpannerProjectsInstancesDatabasesCreate
newSpannerProjectsInstancesDatabasesCreate parent payload =
  SpannerProjectsInstancesDatabasesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesCreate
         where
        type Rs SpannerProjectsInstancesDatabasesCreate =
             Operation
        type Scopes SpannerProjectsInstancesDatabasesCreate =
             '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstancesDatabasesCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesCreateResource)
                      Core.mempty

