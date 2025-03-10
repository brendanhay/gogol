{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists queries created by the current user.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.list@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.List
  ( -- * Resource
    DoubleclickbidmanagerQueriesListResource,

    -- ** Constructing a Request
    DoubleclickbidmanagerQueriesList (..),
    newDoubleclickbidmanagerQueriesList,
  )
where

import Gogol.DoubleClickBids.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @doubleclickbidmanager.queries.list@ method which the
-- 'DoubleclickbidmanagerQueriesList' request conforms to.
type DoubleclickbidmanagerQueriesListResource =
  "v2"
    Core.:> "queries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListQueriesResponse

-- | Lists queries created by the current user.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesList' smart constructor.
data DoubleclickbidmanagerQueriesList = DoubleclickbidmanagerQueriesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Field to sort the list by. Accepts the following values: * @queryId@ (default) * @metadata.title@ The default sorting order is ascending. To specify descending order for a field, add the suffix @desc@ to the field name. For example, @queryId desc@.
    orderBy :: (Core.Maybe Core.Text),
    -- | Maximum number of results per page. Must be between @1@ and @100@. Defaults to @100@ if unspecified.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying which page of results the server should return. Typically, this is the value of nextPageToken, returned from the previous call to the @queries.list@ method. If unspecified, the first page of results is returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesList' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesList ::
  DoubleclickbidmanagerQueriesList
newDoubleclickbidmanagerQueriesList =
  DoubleclickbidmanagerQueriesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DoubleclickbidmanagerQueriesList where
  type Rs DoubleclickbidmanagerQueriesList = ListQueriesResponse
  type
    Scopes DoubleclickbidmanagerQueriesList =
      '[Doubleclickbidmanager'FullControl]
  requestClient DoubleclickbidmanagerQueriesList {..} =
    go
      xgafv
      accessToken
      callback
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      doubleClickBidsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DoubleclickbidmanagerQueriesListResource)
          Core.mempty
