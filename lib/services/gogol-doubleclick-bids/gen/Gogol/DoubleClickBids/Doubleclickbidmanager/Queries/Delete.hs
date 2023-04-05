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
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a query as well as the associated reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.delete@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Delete
  ( -- * Resource
    DoubleclickbidmanagerQueriesDeleteResource,

    -- ** Constructing a Request
    DoubleclickbidmanagerQueriesDelete (..),
    newDoubleclickbidmanagerQueriesDelete,
  )
where

import Gogol.DoubleClickBids.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclickbidmanager.queries.delete@ method which the
-- 'DoubleclickbidmanagerQueriesDelete' request conforms to.
type DoubleclickbidmanagerQueriesDeleteResource =
  "v2"
    Core.:> "queries"
    Core.:> Core.Capture "queryId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a query as well as the associated reports.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesDelete' smart constructor.
data DoubleclickbidmanagerQueriesDelete = DoubleclickbidmanagerQueriesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. ID of query to delete.
    queryId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesDelete' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesDelete ::
  -- |  Required. ID of query to delete. See 'queryId'.
  Core.Int64 ->
  DoubleclickbidmanagerQueriesDelete
newDoubleclickbidmanagerQueriesDelete queryId =
  DoubleclickbidmanagerQueriesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      queryId = queryId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleclickbidmanagerQueriesDelete
  where
  type Rs DoubleclickbidmanagerQueriesDelete = ()
  type
    Scopes DoubleclickbidmanagerQueriesDelete =
      '[Doubleclickbidmanager'FullControl]
  requestClient DoubleclickbidmanagerQueriesDelete {..} =
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
                DoubleclickbidmanagerQueriesDeleteResource
          )
          Core.mempty
