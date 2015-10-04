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
-- | Retrieve your YouTube Analytics reports.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference>
module Network.Google.YouTubeAnalytics
    (
    -- * API
      YouTubeAnalyticsAPI
    , youTubeAnalyticsAPI
    , youTubeAnalyticsURL

    -- * Service Methods

    -- * REST Resources

    -- ** YouTubeAnalyticsBatchReportDefinitionsList
    , module Network.Google.Resource.YouTubeAnalytics.BatchReportDefinitions.List

    -- ** YouTubeAnalyticsBatchReportsList
    , module Network.Google.Resource.YouTubeAnalytics.BatchReports.List

    -- ** YouTubeAnalyticsGroupItemsDelete
    , module Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete

    -- ** YouTubeAnalyticsGroupItemsInsert
    , module Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert

    -- ** YouTubeAnalyticsGroupItemsList
    , module Network.Google.Resource.YouTubeAnalytics.GroupItems.List

    -- ** YouTubeAnalyticsGroupsDelete
    , module Network.Google.Resource.YouTubeAnalytics.Groups.Delete

    -- ** YouTubeAnalyticsGroupsInsert
    , module Network.Google.Resource.YouTubeAnalytics.Groups.Insert

    -- ** YouTubeAnalyticsGroupsList
    , module Network.Google.Resource.YouTubeAnalytics.Groups.List

    -- ** YouTubeAnalyticsGroupsUpdate
    , module Network.Google.Resource.YouTubeAnalytics.Groups.Update

    -- ** YouTubeAnalyticsReportsQuery
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

youTubeAnalyticsAPI :: Proxy YouTubeAnalyticsAPI
youTubeAnalyticsAPI = Proxy
