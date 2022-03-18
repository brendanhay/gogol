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
-- Module      : Gogol.PlusDomains.Activities.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.activities.list@.
module Gogol.PlusDomains.Activities.List
  ( -- * Resource
    PlusDomainsActivitiesListResource,

    -- ** Constructing a Request
    newPlusDomainsActivitiesList,
    PlusDomainsActivitiesList,
  )
where

import Gogol.PlusDomains.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @plusDomains.activities.list@ method which the
-- 'PlusDomainsActivitiesList' request conforms to.
type PlusDomainsActivitiesListResource =
  "plusDomains"
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
-- /See:/ 'newPlusDomainsActivitiesList' smart constructor.
data PlusDomainsActivitiesList = PlusDomainsActivitiesList
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

-- | Creates a value of 'PlusDomainsActivitiesList' with the minimum fields required to make a request.
newPlusDomainsActivitiesList ::
  -- |  The collection of activities to list. See 'collection'.
  ActivitiesListCollection ->
  -- |  The ID of the user to get activities for. The special value \"me\" can be used to indicate the authenticated user. See 'userId'.
  Core.Text ->
  PlusDomainsActivitiesList
newPlusDomainsActivitiesList collection userId =
  PlusDomainsActivitiesList
    { collection = collection,
      maxResults = 20,
      pageToken = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest PlusDomainsActivitiesList where
  type Rs PlusDomainsActivitiesList = ActivityFeed
  type
    Scopes PlusDomainsActivitiesList =
      '[ "https://www.googleapis.com/auth/plus.login",
         "https://www.googleapis.com/auth/plus.me",
         "https://www.googleapis.com/auth/plus.stream.read"
       ]
  requestClient PlusDomainsActivitiesList {..} =
    go
      userId
      collection
      (Core.Just maxResults)
      pageToken
      (Core.Just Core.AltJSON)
      plusDomainsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlusDomainsActivitiesListResource
          )
          Core.mempty
