{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.YouTube.Analytics
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Retrieve your YouTube Analytics reports.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference>
module Network.Google.YouTube.Analytics
    (
    -- * Resources
      YouTubeAnalytics
    , GroupsAPI
    , GroupsInsert
    , GroupsList
    , GroupsDelete
    , GroupsUpdate
    , ReportsAPI
    , ReportsQuery
    , GroupItemsAPI
    , GroupItemsInsert
    , GroupItemsList
    , GroupItemsDelete
    , BatchReportsAPI
    , BatchReportsList
    , BatchReportDefinitionsAPI
    , BatchReportDefinitionsList

    -- * Types

    -- ** BatchReport
    , BatchReport
    , batchReport
    , brTimeUpdated
    , brKind
    , brReportId
    , brTimeSpan
    , brOutputs
    , brId

    -- ** BatchReportDefinition
    , BatchReportDefinition
    , batchReportDefinition
    , brdStatus
    , brdKind
    , brdName
    , brdId
    , brdType

    -- ** BatchReportDefinitionList
    , BatchReportDefinitionList
    , batchReportDefinitionList
    , brdlKind
    , brdlItems

    -- ** BatchReportItemOutputs
    , BatchReportItemOutputs
    , batchReportItemOutputs
    , brioFormat
    , brioDownloadUrl
    , brioType

    -- ** BatchReportList
    , BatchReportList
    , batchReportList
    , brlKind
    , brlItems

    -- ** BatchReportTimeSpan
    , BatchReportTimeSpan
    , batchReportTimeSpan
    , brtsStartTime
    , brtsEndTime

    -- ** Group
    , Group
    , group'
    , gEtag
    , gSnippet
    , gKind
    , gContentDetails
    , gId

    -- ** GroupContentDetails
    , GroupContentDetails
    , groupContentDetails
    , gcdItemType
    , gcdItemCount

    -- ** GroupItem
    , GroupItem
    , groupItem
    , giEtag
    , giKind
    , giResource
    , giGroupId
    , giId

    -- ** GroupItemListResponse
    , GroupItemListResponse
    , groupItemListResponse
    , gilrEtag
    , gilrKind
    , gilrItems

    -- ** GroupItemResource
    , GroupItemResource
    , groupItemResource
    , girKind
    , girId

    -- ** GroupListResponse
    , GroupListResponse
    , groupListResponse
    , glrEtag
    , glrKind
    , glrItems

    -- ** GroupSnippet
    , GroupSnippet
    , groupSnippet
    , gsPublishedAt
    , gsTitle

    -- ** ResultTable
    , ResultTable
    , resultTable
    , rtKind
    , rtRows
    , rtColumnHeaders

    -- ** ResultTableItemColumnHeaders
    , ResultTableItemColumnHeaders
    , resultTableItemColumnHeaders
    , rtichColumnType
    , rtichName
    , rtichDataType
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Analytics.Types

{- $resources
TODO
-}

type YouTubeAnalytics =
     GroupsAPI :<|> ReportsAPI :<|> GroupItemsAPI :<|>
       BatchReportsAPI
       :<|> BatchReportDefinitionsAPI

type GroupsAPI =
     GroupsInsert :<|> GroupsList :<|> GroupsDelete :<|>
       GroupsUpdate

-- | Creates a group.
type GroupsInsert =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "groups" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Group

-- | Returns a collection of groups that match the API request parameters.
-- For example, you can retrieve all groups that the authenticated user
-- owns, or you can retrieve one or more groups by their unique IDs.
type GroupsList =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "groups" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "mine" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "key" Text :>
                         QueryParam "id" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] GroupListResponse

-- | Deletes a group.
type GroupsDelete =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "groups" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "id" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Delete '[JSON] ()

-- | Modifies a group. For example, you could change a group\'s title.
type GroupsUpdate =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "groups" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Put '[JSON] Group

type ReportsAPI = ReportsQuery

-- | Retrieve your YouTube Analytics reports.
type ReportsQuery =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "reports" :>
             QueryParam "quotaUser" Text :>
               QueryParam "metrics" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "filters" Text :>
                       QueryParam "ids" Text :>
                         QueryParam "end-date" Text :>
                           QueryParam "key" Text :>
                             QueryParam "currency" Text :>
                               QueryParam "sort" Text :>
                                 QueryParam "dimensions" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "start-index" Natural :>
                                       QueryParam "max-results" Natural :>
                                         QueryParam "start-date" Text :>
                                           QueryParam "fields" Text :>
                                             QueryParam "alt" Text :>
                                               Get '[JSON] ResultTable

type GroupItemsAPI =
     GroupItemsInsert :<|> GroupItemsList :<|>
       GroupItemsDelete

-- | Creates a group item.
type GroupItemsInsert =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "groupItems" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] GroupItem

-- | Returns a collection of group items that match the API request
-- parameters.
type GroupItemsList =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "groupItems" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "groupId" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Get '[JSON] GroupItemListResponse

-- | Removes an item from a group.
type GroupItemsDelete =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "groupItems" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "id" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Delete '[JSON] ()

type BatchReportsAPI = BatchReportsList

-- | Retrieves a list of processed batch reports.
type BatchReportsList =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "batchReports" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "batchReportDefinitionId" Text :>
                   QueryParam "userIp" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Get '[JSON] BatchReportList

type BatchReportDefinitionsAPI =
     BatchReportDefinitionsList

-- | Retrieves a list of available batch report definitions.
type BatchReportDefinitionsList =
     "youtube" :>
       "analytics" :>
         "v1beta1" :>
           "batchReportDefinitions" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Get '[JSON] BatchReportDefinitionList
