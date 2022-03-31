{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Deletequery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stored query as well as the associated stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.deletequery@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Deletequery
  ( -- * Resource
    DoubleclickbidmanagerQueriesDeletequeryResource,

    -- ** Constructing a Request
    newDoubleclickbidmanagerQueriesDeletequery,
    DoubleclickbidmanagerQueriesDeletequery,
  )
where

import Gogol.DoubleClickBids.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclickbidmanager.queries.deletequery@ method which the
-- 'DoubleclickbidmanagerQueriesDeletequery' request conforms to.
type DoubleclickbidmanagerQueriesDeletequeryResource =
  "doubleclickbidmanager"
    Core.:> "v1.1"
    Core.:> "query"
    Core.:> Core.Capture "queryId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesDeletequery' smart constructor.
data DoubleclickbidmanagerQueriesDeletequery = DoubleclickbidmanagerQueriesDeletequery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Query ID to delete.
    queryId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesDeletequery' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesDeletequery ::
  -- |  Query ID to delete. See 'queryId'.
  Core.Int64 ->
  DoubleclickbidmanagerQueriesDeletequery
newDoubleclickbidmanagerQueriesDeletequery queryId =
  DoubleclickbidmanagerQueriesDeletequery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      queryId = queryId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleclickbidmanagerQueriesDeletequery
  where
  type Rs DoubleclickbidmanagerQueriesDeletequery = ()
  type
    Scopes DoubleclickbidmanagerQueriesDeletequery =
      '[Doubleclickbidmanager'FullControl]
  requestClient
    DoubleclickbidmanagerQueriesDeletequery {..} =
      go
        queryId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        doubleClickBidsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DoubleclickbidmanagerQueriesDeletequeryResource
            )
            Core.mempty
