{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Plus.People.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.people.search@.
module Gogol.Plus.People.Search
  ( -- * Resource
    PlusPeopleSearchResource,

    -- ** Constructing a Request
    PlusPeopleSearch (..),
    newPlusPeopleSearch,
  )
where

import Gogol.Plus.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @plus.people.search@ method which the
-- 'PlusPeopleSearch' request conforms to.
type PlusPeopleSearchResource =
  "plus"
    Core.:> "v1"
    Core.:> "people"
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PeopleFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusPeopleSearch' smart constructor.
data PlusPeopleSearch = PlusPeopleSearch
  { -- | Specify the preferred language to search with. See search language codes for available values.
    language :: Core.Text,
    -- | The maximum number of people to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    maxResults :: Core.Word32,
    -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response. This token can be of any length.
    pageToken :: (Core.Maybe Core.Text),
    -- | Specify a query string for full text search of public text in all profiles.
    query :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusPeopleSearch' with the minimum fields required to make a request.
newPlusPeopleSearch ::
  -- |  Specify a query string for full text search of public text in all profiles. See 'query'.
  Core.Text ->
  PlusPeopleSearch
newPlusPeopleSearch query =
  PlusPeopleSearch
    { language = "en-US",
      maxResults = 25,
      pageToken = Core.Nothing,
      query = query
    }

instance Core.GoogleRequest PlusPeopleSearch where
  type Rs PlusPeopleSearch = PeopleFeed
  type Scopes PlusPeopleSearch = '[Plus'Login, Plus'Me]
  requestClient PlusPeopleSearch {..} =
    go
      (Core.Just query)
      (Core.Just language)
      (Core.Just maxResults)
      pageToken
      (Core.Just Core.AltJSON)
      plusService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusPeopleSearchResource)
          Core.mempty
