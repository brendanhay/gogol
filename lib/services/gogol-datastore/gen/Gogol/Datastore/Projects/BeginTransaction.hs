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
-- Module      : Gogol.Datastore.Projects.BeginTransaction
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins a new transaction.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.beginTransaction@.
module Gogol.Datastore.Projects.BeginTransaction
    (
    -- * Resource
      DatastoreProjectsBeginTransactionResource

    -- ** Constructing a Request
    , DatastoreProjectsBeginTransaction (..)
    , newDatastoreProjectsBeginTransaction
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Datastore.Types

-- | A resource alias for @datastore.projects.beginTransaction@ method which the
-- 'DatastoreProjectsBeginTransaction' request conforms to.
type DatastoreProjectsBeginTransactionResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.CaptureMode "projectId" "beginTransaction"
           Core.Text
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BeginTransactionRequest
                         Core.:>
                         Core.Post '[Core.JSON] BeginTransactionResponse

-- | Begins a new transaction.
--
-- /See:/ 'newDatastoreProjectsBeginTransaction' smart constructor.
data DatastoreProjectsBeginTransaction = DatastoreProjectsBeginTransaction
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BeginTransactionRequest
      -- | Required. The ID of the project against which to make the request.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsBeginTransaction' with the minimum fields required to make a request.
newDatastoreProjectsBeginTransaction 
    ::  BeginTransactionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the project against which to make the request. See 'projectId'.
    -> DatastoreProjectsBeginTransaction
newDatastoreProjectsBeginTransaction payload projectId =
  DatastoreProjectsBeginTransaction
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DatastoreProjectsBeginTransaction
         where
        type Rs DatastoreProjectsBeginTransaction =
             BeginTransactionResponse
        type Scopes DatastoreProjectsBeginTransaction =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient DatastoreProjectsBeginTransaction{..}
          = go projectId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              datastoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DatastoreProjectsBeginTransactionResource)
                      Core.mempty

