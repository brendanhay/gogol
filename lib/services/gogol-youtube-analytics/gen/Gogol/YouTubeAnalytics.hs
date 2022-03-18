{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTubeAnalytics
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves your YouTube Analytics data.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference>
module Gogol.YouTubeAnalytics
    (
    -- * Configuration
      youTubeAnalyticsService

    -- * OAuth Scopes
    , youtubeScope
    , youtubeReadOnlyScope
    , youtubepartnerScope
    , youtubeAnalyticsMonetaryReadOnlyScope
    , youtubeAnalyticsReadOnlyScope

    -- * Resources

    -- ** youtubeAnalytics.groupItems.delete
    , YouTubeAnalyticsGroupItemsDeleteResource
    , newYouTubeAnalyticsGroupItemsDelete
    , YouTubeAnalyticsGroupItemsDelete

    -- ** youtubeAnalytics.groupItems.insert
    , YouTubeAnalyticsGroupItemsInsertResource
    , newYouTubeAnalyticsGroupItemsInsert
    , YouTubeAnalyticsGroupItemsInsert

    -- ** youtubeAnalytics.groupItems.list
    , YouTubeAnalyticsGroupItemsListResource
    , newYouTubeAnalyticsGroupItemsList
    , YouTubeAnalyticsGroupItemsList

    -- ** youtubeAnalytics.groups.delete
    , YouTubeAnalyticsGroupsDeleteResource
    , newYouTubeAnalyticsGroupsDelete
    , YouTubeAnalyticsGroupsDelete

    -- ** youtubeAnalytics.groups.insert
    , YouTubeAnalyticsGroupsInsertResource
    , newYouTubeAnalyticsGroupsInsert
    , YouTubeAnalyticsGroupsInsert

    -- ** youtubeAnalytics.groups.list
    , YouTubeAnalyticsGroupsListResource
    , newYouTubeAnalyticsGroupsList
    , YouTubeAnalyticsGroupsList

    -- ** youtubeAnalytics.groups.update
    , YouTubeAnalyticsGroupsUpdateResource
    , newYouTubeAnalyticsGroupsUpdate
    , YouTubeAnalyticsGroupsUpdate

    -- ** youtubeAnalytics.reports.query
    , YouTubeAnalyticsReportsQueryResource
    , newYouTubeAnalyticsReportsQuery
    , YouTubeAnalyticsReportsQuery

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** EmptyResponse
    , EmptyResponse (..)
    , newEmptyResponse

    -- ** ErrorProto
    , ErrorProto (..)
    , newErrorProto

    -- ** ErrorProto_LocationType
    , ErrorProto_LocationType (..)

    -- ** Errors
    , Errors (..)
    , newErrors

    -- ** Errors_Code
    , Errors_Code (..)

    -- ** Group
    , Group (..)
    , newGroup

    -- ** GroupContentDetails
    , GroupContentDetails (..)
    , newGroupContentDetails

    -- ** GroupItem
    , GroupItem (..)
    , newGroupItem

    -- ** GroupItemResource
    , GroupItemResource (..)
    , newGroupItemResource

    -- ** GroupSnippet
    , GroupSnippet (..)
    , newGroupSnippet

    -- ** ListGroupItemsResponse
    , ListGroupItemsResponse (..)
    , newListGroupItemsResponse

    -- ** ListGroupsResponse
    , ListGroupsResponse (..)
    , newListGroupsResponse

    -- ** QueryResponse
    , QueryResponse (..)
    , newQueryResponse

    -- ** ResultTableColumnHeader
    , ResultTableColumnHeader (..)
    , newResultTableColumnHeader
    ) where

import Gogol.YouTubeAnalytics.GroupItems.Delete
import Gogol.YouTubeAnalytics.GroupItems.Insert
import Gogol.YouTubeAnalytics.GroupItems.List
import Gogol.YouTubeAnalytics.Groups.Delete
import Gogol.YouTubeAnalytics.Groups.Insert
import Gogol.YouTubeAnalytics.Groups.List
import Gogol.YouTubeAnalytics.Groups.Update
import Gogol.YouTubeAnalytics.Reports.Query
import Gogol.YouTubeAnalytics.Types
