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
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Runquery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a stored query to generate a report.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.runquery@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Runquery
    (
    -- * Resource
      DoubleclickbidmanagerQueriesRunqueryResource

    -- ** Constructing a Request
    , newDoubleclickbidmanagerQueriesRunquery
    , DoubleclickbidmanagerQueriesRunquery
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DoubleClickBids.Types

-- | A resource alias for @doubleclickbidmanager.queries.runquery@ method which the
-- 'DoubleclickbidmanagerQueriesRunquery' request conforms to.
type DoubleclickbidmanagerQueriesRunqueryResource =
     "doubleclickbidmanager" Core.:>
       "v1.1" Core.:>
         "query" Core.:>
           Core.Capture "queryId" Core.Int64 Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "asynchronous" Core.Bool Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] RunQueryRequest Core.:>
                             Core.Post '[Core.JSON] ()

-- | Runs a stored query to generate a report.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesRunquery' smart constructor.
data DoubleclickbidmanagerQueriesRunquery = DoubleclickbidmanagerQueriesRunquery
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | If true, tries to run the query asynchronously.
    , asynchronous :: Core.Bool
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RunQueryRequest
      -- | Query ID to run.
    , queryId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesRunquery' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesRunquery 
    ::  RunQueryRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Int64
       -- ^  Query ID to run. See 'queryId'.
    -> DoubleclickbidmanagerQueriesRunquery
newDoubleclickbidmanagerQueriesRunquery payload queryId =
  DoubleclickbidmanagerQueriesRunquery
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , asynchronous = Core.False
    , callback = Core.Nothing
    , payload = payload
    , queryId = queryId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DoubleclickbidmanagerQueriesRunquery
         where
        type Rs DoubleclickbidmanagerQueriesRunquery = ()
        type Scopes DoubleclickbidmanagerQueriesRunquery =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient
          DoubleclickbidmanagerQueriesRunquery{..}
          = go queryId xgafv accessToken
              (Core.Just asynchronous)
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              doubleClickBidsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DoubleclickbidmanagerQueriesRunqueryResource)
                      Core.mempty

