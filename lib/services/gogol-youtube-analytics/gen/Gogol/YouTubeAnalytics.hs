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
  ( -- * Configuration
    youTubeAnalyticsService,

    -- * OAuth Scopes
    Youtube'FullControl,
    Youtube'Readonly,
    Youtubepartner'FullControl,
    YtAnalyticsMonetary'Readonly,
    YtAnalytics'Readonly,

    -- * Resources

    -- ** youtubeAnalytics.groupItems.delete
    YouTubeAnalyticsGroupItemsDeleteResource,
    YouTubeAnalyticsGroupItemsDelete (..),
    newYouTubeAnalyticsGroupItemsDelete,

    -- ** youtubeAnalytics.groupItems.insert
    YouTubeAnalyticsGroupItemsInsertResource,
    YouTubeAnalyticsGroupItemsInsert (..),
    newYouTubeAnalyticsGroupItemsInsert,

    -- ** youtubeAnalytics.groupItems.list
    YouTubeAnalyticsGroupItemsListResource,
    YouTubeAnalyticsGroupItemsList (..),
    newYouTubeAnalyticsGroupItemsList,

    -- ** youtubeAnalytics.groups.delete
    YouTubeAnalyticsGroupsDeleteResource,
    YouTubeAnalyticsGroupsDelete (..),
    newYouTubeAnalyticsGroupsDelete,

    -- ** youtubeAnalytics.groups.insert
    YouTubeAnalyticsGroupsInsertResource,
    YouTubeAnalyticsGroupsInsert (..),
    newYouTubeAnalyticsGroupsInsert,

    -- ** youtubeAnalytics.groups.list
    YouTubeAnalyticsGroupsListResource,
    YouTubeAnalyticsGroupsList (..),
    newYouTubeAnalyticsGroupsList,

    -- ** youtubeAnalytics.groups.update
    YouTubeAnalyticsGroupsUpdateResource,
    YouTubeAnalyticsGroupsUpdate (..),
    newYouTubeAnalyticsGroupsUpdate,

    -- ** youtubeAnalytics.reports.query
    YouTubeAnalyticsReportsQueryResource,
    YouTubeAnalyticsReportsQuery (..),
    newYouTubeAnalyticsReportsQuery,

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

import Gogol.YouTubeAnalytics.GroupItems.Delete
import Gogol.YouTubeAnalytics.GroupItems.Insert
import Gogol.YouTubeAnalytics.GroupItems.List
import Gogol.YouTubeAnalytics.Groups.Delete
import Gogol.YouTubeAnalytics.Groups.Insert
import Gogol.YouTubeAnalytics.Groups.List
import Gogol.YouTubeAnalytics.Groups.Update
import Gogol.YouTubeAnalytics.Reports.Query
import Gogol.YouTubeAnalytics.Types
