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
-- Module      : Gogol.Plus.Activities.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.activities.search@.
module Gogol.Plus.Activities.Search
  ( -- * Resource
    PlusActivitiesSearchResource,

    -- ** Constructing a Request
    PlusActivitiesSearch (..),
    newPlusActivitiesSearch,
  )
where

import Gogol.Plus.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @plus.activities.search@ method which the
-- 'PlusActivitiesSearch' request conforms to.
type PlusActivitiesSearchResource =
  "plus"
    Core.:> "v1"
    Core.:> "activities"
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "orderBy" ActivitiesSearchOrderBy
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ActivityFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusActivitiesSearch' smart constructor.
data PlusActivitiesSearch = PlusActivitiesSearch
  { -- | Specify the preferred language to search with. See search language codes for available values.
    language :: Core.Text,
    -- | The maximum number of activities to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    maxResults :: Core.Word32,
    -- | Specifies how to order search results.
    orderBy :: ActivitiesSearchOrderBy,
    -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response. This token can be of any length.
    pageToken :: (Core.Maybe Core.Text),
    -- | Full-text search query string.
    query :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusActivitiesSearch' with the minimum fields required to make a request.
newPlusActivitiesSearch ::
  -- |  Full-text search query string. See 'query'.
  Core.Text ->
  PlusActivitiesSearch
newPlusActivitiesSearch query =
  PlusActivitiesSearch
    { language = "en-US",
      maxResults = 10,
      orderBy = ActivitiesSearchOrderBy_Recent,
      pageToken = Core.Nothing,
      query = query
    }

instance Core.GoogleRequest PlusActivitiesSearch where
  type Rs PlusActivitiesSearch = ActivityFeed
  type Scopes PlusActivitiesSearch = '[Plus'Login, Plus'Me]
  requestClient PlusActivitiesSearch {..} =
    go
      (Core.Just query)
      (Core.Just language)
      (Core.Just maxResults)
      (Core.Just orderBy)
      pageToken
      (Core.Just Core.AltJSON)
      plusService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusActivitiesSearchResource)
          Core.mempty
