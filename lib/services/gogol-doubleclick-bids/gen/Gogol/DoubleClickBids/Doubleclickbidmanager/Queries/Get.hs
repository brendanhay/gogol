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
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.get@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Get
    (
    -- * Resource
      DoubleclickbidmanagerQueriesGetResource

    -- ** Constructing a Request
    , DoubleclickbidmanagerQueriesGet (..)
    , newDoubleclickbidmanagerQueriesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DoubleClickBids.Types

-- | A resource alias for @doubleclickbidmanager.queries.get@ method which the
-- 'DoubleclickbidmanagerQueriesGet' request conforms to.
type DoubleclickbidmanagerQueriesGetResource =
     "v2" Core.:>
       "queries" Core.:>
         Core.Capture "queryId" Core.Int64 Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Query

-- | Retrieves a query.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesGet' smart constructor.
data DoubleclickbidmanagerQueriesGet = DoubleclickbidmanagerQueriesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID of the query to retrieve.
    , queryId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesGet' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesGet 
    ::  Core.Int64
       -- ^  Required. The ID of the query to retrieve. See 'queryId'.
    -> DoubleclickbidmanagerQueriesGet
newDoubleclickbidmanagerQueriesGet queryId =
  DoubleclickbidmanagerQueriesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , queryId = queryId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DoubleclickbidmanagerQueriesGet
         where
        type Rs DoubleclickbidmanagerQueriesGet = Query
        type Scopes DoubleclickbidmanagerQueriesGet =
             '[Doubleclickbidmanager'FullControl]
        requestClient DoubleclickbidmanagerQueriesGet{..}
          = go queryId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              doubleClickBidsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DoubleclickbidmanagerQueriesGetResource)
                      Core.mempty

