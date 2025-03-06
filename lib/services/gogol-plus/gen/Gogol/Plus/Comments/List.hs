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
-- Module      : Gogol.Plus.Comments.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.comments.list@.
module Gogol.Plus.Comments.List
  ( -- * Resource
    PlusCommentsListResource,

    -- ** Constructing a Request
    PlusCommentsList (..),
    newPlusCommentsList,
  )
where

import Gogol.Plus.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @plus.comments.list@ method which the
-- 'PlusCommentsList' request conforms to.
type PlusCommentsListResource =
  "plus"
    Core.:> "v1"
    Core.:> "activities"
    Core.:> Core.Capture "activityId" Core.Text
    Core.:> "comments"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "sortOrder" CommentsListSortOrder
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CommentFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusCommentsList' smart constructor.
data PlusCommentsList = PlusCommentsList
  { -- | The ID of the activity to get comments for.
    activityId :: Core.Text,
    -- | The maximum number of comments to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    maxResults :: Core.Word32,
    -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | The order in which to sort the list of comments.
    sortOrder :: CommentsListSortOrder
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusCommentsList' with the minimum fields required to make a request.
newPlusCommentsList ::
  -- |  The ID of the activity to get comments for. See 'activityId'.
  Core.Text ->
  PlusCommentsList
newPlusCommentsList activityId =
  PlusCommentsList
    { activityId = activityId,
      maxResults = 20,
      pageToken = Core.Nothing,
      sortOrder = CommentsListSortOrder_Ascending
    }

instance Core.GoogleRequest PlusCommentsList where
  type Rs PlusCommentsList = CommentFeed
  type Scopes PlusCommentsList = '[Plus'Login, Plus'Me]
  requestClient PlusCommentsList {..} =
    go
      activityId
      (Core.Just maxResults)
      pageToken
      (Core.Just sortOrder)
      (Core.Just Core.AltJSON)
      plusService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusCommentsListResource)
          Core.mempty
