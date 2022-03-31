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
-- Module      : Gogol.Plus.Activities.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.activities.list@.
module Gogol.Plus.Activities.List
  ( -- * Resource
    PlusActivitiesListResource,

    -- ** Constructing a Request
    newPlusActivitiesList,
    PlusActivitiesList,
  )
where

import Gogol.Plus.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @plus.activities.list@ method which the
-- 'PlusActivitiesList' request conforms to.
type PlusActivitiesListResource =
  "plus"
    Core.:> "v1"
    Core.:> "people"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "activities"
    Core.:> Core.Capture "collection" ActivitiesListCollection
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ActivityFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusActivitiesList' smart constructor.
data PlusActivitiesList = PlusActivitiesList
  { -- | The collection of activities to list.
    collection :: ActivitiesListCollection,
    -- | The maximum number of activities to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    maxResults :: Core.Word32,
    -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | The ID of the user to get activities for. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusActivitiesList' with the minimum fields required to make a request.
newPlusActivitiesList ::
  -- |  The collection of activities to list. See 'collection'.
  ActivitiesListCollection ->
  -- |  The ID of the user to get activities for. The special value \"me\" can be used to indicate the authenticated user. See 'userId'.
  Core.Text ->
  PlusActivitiesList
newPlusActivitiesList collection userId =
  PlusActivitiesList
    { collection = collection,
      maxResults = 20,
      pageToken = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest PlusActivitiesList where
  type Rs PlusActivitiesList = ActivityFeed
  type
    Scopes PlusActivitiesList =
      '[Plus'Login, Plus'Me]
  requestClient PlusActivitiesList {..} =
    go
      userId
      collection
      (Core.Just maxResults)
      pageToken
      (Core.Just Core.AltJSON)
      plusService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusActivitiesListResource)
          Core.mempty
