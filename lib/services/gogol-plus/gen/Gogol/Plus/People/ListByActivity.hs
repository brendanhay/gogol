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
-- Module      : Gogol.Plus.People.ListByActivity
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.people.listByActivity@.
module Gogol.Plus.People.ListByActivity
  ( -- * Resource
    PlusPeopleListByActivityResource,

    -- ** Constructing a Request
    PlusPeopleListByActivity (..),
    newPlusPeopleListByActivity,
  )
where

import Gogol.Plus.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @plus.people.listByActivity@ method which the
-- 'PlusPeopleListByActivity' request conforms to.
type PlusPeopleListByActivityResource =
  "plus"
    Core.:> "v1"
    Core.:> "activities"
    Core.:> Core.Capture "activityId" Core.Text
    Core.:> "people"
    Core.:> Core.Capture
              "collection"
              PeopleListByActivityCollection
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PeopleFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusPeopleListByActivity' smart constructor.
data PlusPeopleListByActivity = PlusPeopleListByActivity
  { -- | The ID of the activity to get the list of people for.
    activityId :: Core.Text,
    -- | The collection of people to list.
    collection :: PeopleListByActivityCollection,
    -- | The maximum number of people to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    maxResults :: Core.Word32,
    -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusPeopleListByActivity' with the minimum fields required to make a request.
newPlusPeopleListByActivity ::
  -- |  The ID of the activity to get the list of people for. See 'activityId'.
  Core.Text ->
  -- |  The collection of people to list. See 'collection'.
  PeopleListByActivityCollection ->
  PlusPeopleListByActivity
newPlusPeopleListByActivity activityId collection =
  PlusPeopleListByActivity
    { activityId = activityId,
      collection = collection,
      maxResults = 20,
      pageToken = Core.Nothing
    }

instance Core.GoogleRequest PlusPeopleListByActivity where
  type Rs PlusPeopleListByActivity = PeopleFeed
  type
    Scopes PlusPeopleListByActivity =
      '[Plus'Login, Plus'Me]
  requestClient PlusPeopleListByActivity {..} =
    go
      activityId
      collection
      (Core.Just maxResults)
      pageToken
      (Core.Just Core.AltJSON)
      plusService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlusPeopleListByActivityResource
          )
          Core.mempty
