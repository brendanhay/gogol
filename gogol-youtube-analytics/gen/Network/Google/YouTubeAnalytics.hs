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
-- Module      : Network.Google.YouTubeAnalytics
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves your YouTube Analytics data.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference>
module Network.Google.YouTubeAnalytics
  ( -- * Configuration
    youTubeAnalyticsService,

    -- * OAuth Scopes
    youtubeScope,
    youtubeReadOnlyScope,
    youtubepartnerScope,
    youtubeAnalyticsMonetaryReadOnlyScope,
    youtubeAnalyticsReadOnlyScope,

    -- * Resources

    -- ** youtubeAnalytics.groupItems.delete
    YouTubeAnalyticsGroupItemsDeleteResource,
    newYouTubeAnalyticsGroupItemsDelete,
    YouTubeAnalyticsGroupItemsDelete,

    -- ** youtubeAnalytics.groupItems.insert
    YouTubeAnalyticsGroupItemsInsertResource,
    newYouTubeAnalyticsGroupItemsInsert,
    YouTubeAnalyticsGroupItemsInsert,

    -- ** youtubeAnalytics.groupItems.list
    YouTubeAnalyticsGroupItemsListResource,
    newYouTubeAnalyticsGroupItemsList,
    YouTubeAnalyticsGroupItemsList,

    -- ** youtubeAnalytics.groups.delete
    YouTubeAnalyticsGroupsDeleteResource,
    newYouTubeAnalyticsGroupsDelete,
    YouTubeAnalyticsGroupsDelete,

    -- ** youtubeAnalytics.groups.insert
    YouTubeAnalyticsGroupsInsertResource,
    newYouTubeAnalyticsGroupsInsert,
    YouTubeAnalyticsGroupsInsert,

    -- ** youtubeAnalytics.groups.list
    YouTubeAnalyticsGroupsListResource,
    newYouTubeAnalyticsGroupsList,
    YouTubeAnalyticsGroupsList,

    -- ** youtubeAnalytics.groups.update
    YouTubeAnalyticsGroupsUpdateResource,
    newYouTubeAnalyticsGroupsUpdate,
    YouTubeAnalyticsGroupsUpdate,

    -- ** youtubeAnalytics.reports.query
    YouTubeAnalyticsReportsQueryResource,
    newYouTubeAnalyticsReportsQuery,
    YouTubeAnalyticsReportsQuery,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** EmptyResponse
    EmptyResponse (..),
    newEmptyResponse,

    -- ** ErrorProto
    ErrorProto (..),
    newErrorProto,

    -- ** ErrorProto_LocationType
    ErrorProto_LocationType (..),

    -- ** Errors
    Errors (..),
    newErrors,

    -- ** Errors_Code
    Errors_Code (..),

    -- ** Group
    Group (..),
    newGroup,

    -- ** GroupContentDetails
    GroupContentDetails (..),
    newGroupContentDetails,

    -- ** GroupItem
    GroupItem (..),
    newGroupItem,

    -- ** GroupItemResource
    GroupItemResource (..),
    newGroupItemResource,

    -- ** GroupSnippet
    GroupSnippet (..),
    newGroupSnippet,

    -- ** ListGroupItemsResponse
    ListGroupItemsResponse (..),
    newListGroupItemsResponse,

    -- ** ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- ** QueryResponse
    QueryResponse (..),
    newQueryResponse,

    -- ** ResultTableColumnHeader
    ResultTableColumnHeader (..),
    newResultTableColumnHeader,
  )
where

import Network.Google.YouTubeAnalytics.GroupItems.Delete
import Network.Google.YouTubeAnalytics.GroupItems.Insert
import Network.Google.YouTubeAnalytics.GroupItems.List
import Network.Google.YouTubeAnalytics.Groups.Delete
import Network.Google.YouTubeAnalytics.Groups.Insert
import Network.Google.YouTubeAnalytics.Groups.List
import Network.Google.YouTubeAnalytics.Groups.Update
import Network.Google.YouTubeAnalytics.Reports.Query
import Network.Google.YouTubeAnalytics.Types
