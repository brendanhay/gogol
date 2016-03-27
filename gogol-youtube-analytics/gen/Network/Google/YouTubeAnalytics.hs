{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves your YouTube Analytics reports.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference>
module Network.Google.YouTubeAnalytics
    (
    -- * Service Configuration
      youTubeAnalyticsService

    -- * OAuth Scopes
    , youTubeScope
    , youTubeAnalyticsReadOnlyScope
    , youTubePartnerScope
    , youTubeAnalyticsMonetaryReadOnlyScope
    , youTubeReadOnlyScope

    -- * API Declaration
    , YouTubeAnalyticsAPI

    -- * Resources

    -- ** youtubeAnalytics.batchReportDefinitions.list
    , module Network.Google.Resource.YouTubeAnalytics.BatchReportDefinitions.List

    -- ** youtubeAnalytics.batchReports.list
    , module Network.Google.Resource.YouTubeAnalytics.BatchReports.List

    -- ** youtubeAnalytics.groupItems.delete
    , module Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete

    -- ** youtubeAnalytics.groupItems.insert
    , module Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert

    -- ** youtubeAnalytics.groupItems.list
    , module Network.Google.Resource.YouTubeAnalytics.GroupItems.List

    -- ** youtubeAnalytics.groups.delete
    , module Network.Google.Resource.YouTubeAnalytics.Groups.Delete

    -- ** youtubeAnalytics.groups.insert
    , module Network.Google.Resource.YouTubeAnalytics.Groups.Insert

    -- ** youtubeAnalytics.groups.list
    , module Network.Google.Resource.YouTubeAnalytics.Groups.List

    -- ** youtubeAnalytics.groups.update
    , module Network.Google.Resource.YouTubeAnalytics.Groups.Update

    -- ** youtubeAnalytics.reports.query
    , module Network.Google.Resource.YouTubeAnalytics.Reports.Query

    -- * Types

    -- ** GroupContentDetails
    , GroupContentDetails
    , groupContentDetails
    , gcdItemType
    , gcdItemCount

    -- ** Group
    , Group
    , group'
    , gEtag
    , gSnippet
    , gKind
    , gContentDetails
    , gId

    -- ** GroupItemResource
    , GroupItemResource
    , groupItemResource
    , girKind
    , girId

    -- ** ResultTableColumnHeadersItem
    , ResultTableColumnHeadersItem
    , resultTableColumnHeadersItem
    , rtchiColumnType
    , rtchiName
    , rtchiDataType

    -- ** ResultTable
    , ResultTable
    , resultTable
    , rtKind
    , rtRows
    , rtColumnHeaders

    -- ** BatchReportDefinition
    , BatchReportDefinition
    , batchReportDefinition
    , brdStatus
    , brdKind
    , brdName
    , brdId
    , brdType

    -- ** BatchReport
    , BatchReport
    , batchReport
    , brTimeUpdated
    , brKind
    , brReportId
    , brTimeSpan
    , brOutputs
    , brId

    -- ** GroupSnippet
    , GroupSnippet
    , groupSnippet
    , gsPublishedAt
    , gsTitle

    -- ** GroupItem
    , GroupItem
    , groupItem
    , giEtag
    , giKind
    , giResource
    , giGroupId
    , giId

    -- ** BatchReportDefinitionList
    , BatchReportDefinitionList
    , batchReportDefinitionList
    , brdlKind
    , brdlItems

    -- ** BatchReportList
    , BatchReportList
    , batchReportList
    , brlKind
    , brlItems

    -- ** BatchReportOutputsItem
    , BatchReportOutputsItem
    , batchReportOutputsItem
    , broiFormat
    , broiDownloadURL
    , broiType

    -- ** BatchReportTimeSpan
    , BatchReportTimeSpan
    , batchReportTimeSpan
    , brtsStartTime
    , brtsEndTime

    -- ** GroupItemListResponse
    , GroupItemListResponse
    , groupItemListResponse
    , gilrEtag
    , gilrKind
    , gilrItems

    -- ** GroupListResponse
    , GroupListResponse
    , groupListResponse
    , glrEtag
    , glrNextPageToken
    , glrKind
    , glrItems
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.YouTubeAnalytics.BatchReportDefinitions.List
import           Network.Google.Resource.YouTubeAnalytics.BatchReports.List
import           Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete
import           Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert
import           Network.Google.Resource.YouTubeAnalytics.GroupItems.List
import           Network.Google.Resource.YouTubeAnalytics.Groups.Delete
import           Network.Google.Resource.YouTubeAnalytics.Groups.Insert
import           Network.Google.Resource.YouTubeAnalytics.Groups.List
import           Network.Google.Resource.YouTubeAnalytics.Groups.Update
import           Network.Google.Resource.YouTubeAnalytics.Reports.Query
import           Network.Google.YouTubeAnalytics.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the YouTube Analytics API service.
type YouTubeAnalyticsAPI =
     GroupsInsertResource :<|> GroupsListResource :<|>
       GroupsDeleteResource
       :<|> GroupsUpdateResource
       :<|> ReportsQueryResource
       :<|> BatchReportsListResource
       :<|> GroupItemsInsertResource
       :<|> GroupItemsListResource
       :<|> GroupItemsDeleteResource
       :<|> BatchReportDefinitionsListResource
