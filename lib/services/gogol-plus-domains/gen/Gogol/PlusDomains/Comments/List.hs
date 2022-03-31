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
-- Module      : Gogol.PlusDomains.Comments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.comments.list@.
module Gogol.PlusDomains.Comments.List
  ( -- * Resource
    PlusDomainsCommentsListResource,

    -- ** Constructing a Request
    newPlusDomainsCommentsList,
    PlusDomainsCommentsList,
  )
where

import Gogol.PlusDomains.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @plusDomains.comments.list@ method which the
-- 'PlusDomainsCommentsList' request conforms to.
type PlusDomainsCommentsListResource =
  "plusDomains"
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
-- /See:/ 'newPlusDomainsCommentsList' smart constructor.
data PlusDomainsCommentsList = PlusDomainsCommentsList
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

-- | Creates a value of 'PlusDomainsCommentsList' with the minimum fields required to make a request.
newPlusDomainsCommentsList ::
  -- |  The ID of the activity to get comments for. See 'activityId'.
  Core.Text ->
  PlusDomainsCommentsList
newPlusDomainsCommentsList activityId =
  PlusDomainsCommentsList
    { activityId = activityId,
      maxResults = 20,
      pageToken = Core.Nothing,
      sortOrder = CommentsListSortOrder_Ascending
    }

instance Core.GoogleRequest PlusDomainsCommentsList where
  type Rs PlusDomainsCommentsList = CommentFeed
  type
    Scopes PlusDomainsCommentsList =
      '[Plus'Login, Plus'Stream'Read]
  requestClient PlusDomainsCommentsList {..} =
    go
      activityId
      (Core.Just maxResults)
      pageToken
      (Core.Just sortOrder)
      (Core.Just Core.AltJSON)
      plusDomainsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlusDomainsCommentsListResource
          )
          Core.mempty
