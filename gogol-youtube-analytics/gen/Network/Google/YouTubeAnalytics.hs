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
    -- * API
      YouTubeAnalyticsAPI
    , youTubeAnalyticsAPI
    , youTubeAnalyticsURL

    -- * Service Methods

    -- * REST Resources

    -- ** YouTubeAnalyticsBatchReportDefinitionsList
    , module YouTubeAnalytics.BatchReportDefinitions.List

    -- ** YouTubeAnalyticsBatchReportsList
    , module YouTubeAnalytics.BatchReports.List

    -- ** YouTubeAnalyticsGroupItemsDelete
    , module YouTubeAnalytics.GroupItems.Delete

    -- ** YouTubeAnalyticsGroupItemsInsert
    , module YouTubeAnalytics.GroupItems.Insert

    -- ** YouTubeAnalyticsGroupItemsList
    , module YouTubeAnalytics.GroupItems.List

    -- ** YouTubeAnalyticsGroupsDelete
    , module YouTubeAnalytics.Groups.Delete

    -- ** YouTubeAnalyticsGroupsInsert
    , module YouTubeAnalytics.Groups.Insert

    -- ** YouTubeAnalyticsGroupsList
    , module YouTubeAnalytics.Groups.List

    -- ** YouTubeAnalyticsGroupsUpdate
    , module YouTubeAnalytics.Groups.Update

    -- ** YouTubeAnalyticsReportsQuery
    , module YouTubeAnalytics.Reports.Query

    -- * Types

    -- ** Group
    , Group
    , group'
    , gEtag
    , gSnippet
    , gKind
    , gContentDetails
    , gId

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
     Groups :<|> Reports :<|> GroupItems :<|> BatchReports
       :<|> BatchReportDefinitions

youTubeAnalyticsAPI :: Proxy YouTubeAnalyticsAPI
youTubeAnalyticsAPI = Proxy
