{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Retrieve your YouTube Analytics reports.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference>
module Network.Google.YouTubeAnalytics
    (
    -- * REST Resources

    -- ** YouTube Analytics API
      YouTubeAnalytics
    , youTubeAnalytics
    , youTubeAnalyticsURL

    -- ** youtubeAnalytics.batchReportDefinitions.list
    , module Network.Google.API.YouTubeAnalytics.BatchReportDefinitions.List

    -- ** youtubeAnalytics.batchReports.list
    , module Network.Google.API.YouTubeAnalytics.BatchReports.List

    -- ** youtubeAnalytics.groupItems.delete
    , module Network.Google.API.YouTubeAnalytics.GroupItems.Delete

    -- ** youtubeAnalytics.groupItems.insert
    , module Network.Google.API.YouTubeAnalytics.GroupItems.Insert

    -- ** youtubeAnalytics.groupItems.list
    , module Network.Google.API.YouTubeAnalytics.GroupItems.List

    -- ** youtubeAnalytics.groups.delete
    , module Network.Google.API.YouTubeAnalytics.Groups.Delete

    -- ** youtubeAnalytics.groups.insert
    , module Network.Google.API.YouTubeAnalytics.Groups.Insert

    -- ** youtubeAnalytics.groups.list
    , module Network.Google.API.YouTubeAnalytics.Groups.List

    -- ** youtubeAnalytics.groups.update
    , module Network.Google.API.YouTubeAnalytics.Groups.Update

    -- ** youtubeAnalytics.reports.query
    , module Network.Google.API.YouTubeAnalytics.Reports.Query

    -- * Types

    -- ** BatchReportDefinition
    , BatchReportDefinition
    , batchReportDefinition
    , brdStatus
    , brdKind
    , brdName
    , brdId
    , brdType

    -- ** ResultTable
    , ResultTable
    , resultTable
    , rtKind
    , rtRows
    , rtColumnHeaders

    -- ** GroupContentDetails
    , GroupContentDetails
    , groupContentDetails
    , gcdItemType
    , gcdItemCount

    -- ** Alt
    , Alt (..)

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

    -- ** GroupItemListResponse
    , GroupItemListResponse
    , groupItemListResponse
    , gilrEtag
    , gilrKind
    , gilrItems

    -- ** ResultTableItemColumnHeaders
    , ResultTableItemColumnHeaders
    , resultTableItemColumnHeaders
    , rtichColumnType
    , rtichName
    , rtichDataType

    -- ** GroupItemResource
    , GroupItemResource
    , groupItemResource
    , girKind
    , girId

    -- ** GroupSnippet
    , GroupSnippet
    , groupSnippet
    , gsPublishedAt
    , gsTitle

    -- ** Group
    , Group
    , group'
    , gEtag
    , gSnippet
    , gKind
    , gContentDetails
    , gId

    -- ** BatchReport
    , BatchReport
    , batchReport
    , brTimeUpdated
    , brKind
    , brReportId
    , brTimeSpan
    , brOutputs
    , brId

    -- ** GroupItem
    , GroupItem
    , groupItem
    , giEtag
    , giKind
    , giResource
    , giGroupId
    , giId

    -- ** BatchReportItemOutputs
    , BatchReportItemOutputs
    , batchReportItemOutputs
    , brioFormat
    , brioDownloadUrl
    , brioType

    -- ** BatchReportTimeSpan
    , BatchReportTimeSpan
    , batchReportTimeSpan
    , brtsStartTime
    , brtsEndTime

    -- ** GroupListResponse
    , GroupListResponse
    , groupListResponse
    , glrEtag
    , glrKind
    , glrItems
    ) where

import           Network.Google.API.YouTubeAnalytics.BatchReportDefinitions.List
import           Network.Google.API.YouTubeAnalytics.BatchReports.List
import           Network.Google.API.YouTubeAnalytics.GroupItems.Delete
import           Network.Google.API.YouTubeAnalytics.GroupItems.Insert
import           Network.Google.API.YouTubeAnalytics.GroupItems.List
import           Network.Google.API.YouTubeAnalytics.Groups.Delete
import           Network.Google.API.YouTubeAnalytics.Groups.Insert
import           Network.Google.API.YouTubeAnalytics.Groups.List
import           Network.Google.API.YouTubeAnalytics.Groups.Update
import           Network.Google.API.YouTubeAnalytics.Reports.Query
import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

{- $resources
TODO
-}

type YouTubeAnalytics =
     GroupsInsertAPI :<|> GroupItemsInsertAPI :<|>
       GroupsListAPI
       :<|> BatchReportDefinitionsListAPI
       :<|> GroupItemsListAPI
       :<|> GroupsUpdateAPI
       :<|> GroupItemsDeleteAPI
       :<|> ReportsQueryAPI
       :<|> GroupsDeleteAPI
       :<|> BatchReportsListAPI

youTubeAnalytics :: Proxy YouTubeAnalytics
youTubeAnalytics = Proxy
