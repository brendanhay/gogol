{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeAnalytics.Types
    (
    -- * Service Configuration
      youTubeAnalyticsService

    -- * OAuth Scopes
    , youtubeScope
    , ytAnalyticsReadOnlyScope
    , youtubePartnerScope
    , ytAnalyticsMonetaryReadOnlyScope
    , youtubeReadOnlyScope

    -- * GroupContentDetails
    , GroupContentDetails
    , groupContentDetails
    , gcdItemType
    , gcdItemCount

    -- * Group
    , Group
    , group'
    , gEtag
    , gSnippet
    , gKind
    , gContentDetails
    , gId

    -- * GroupItemResource
    , GroupItemResource
    , groupItemResource
    , girKind
    , girId

    -- * ResultTableColumnHeadersItem
    , ResultTableColumnHeadersItem
    , resultTableColumnHeadersItem
    , rtchiColumnType
    , rtchiName
    , rtchiDataType

    -- * ResultTable
    , ResultTable
    , resultTable
    , rtKind
    , rtRows
    , rtColumnHeaders

    -- * BatchReportDefinition
    , BatchReportDefinition
    , batchReportDefinition
    , brdStatus
    , brdKind
    , brdName
    , brdId
    , brdType

    -- * BatchReport
    , BatchReport
    , batchReport
    , brTimeUpdated
    , brKind
    , brReportId
    , brTimeSpan
    , brOutputs
    , brId

    -- * GroupSnippet
    , GroupSnippet
    , groupSnippet
    , gsPublishedAt
    , gsTitle

    -- * GroupItem
    , GroupItem
    , groupItem
    , giEtag
    , giKind
    , giResource
    , giGroupId
    , giId

    -- * BatchReportDefinitionList
    , BatchReportDefinitionList
    , batchReportDefinitionList
    , brdlKind
    , brdlItems

    -- * BatchReportList
    , BatchReportList
    , batchReportList
    , brlKind
    , brlItems

    -- * BatchReportOutputsItem
    , BatchReportOutputsItem
    , batchReportOutputsItem
    , broiFormat
    , broiDownloadURL
    , broiType

    -- * BatchReportTimeSpan
    , BatchReportTimeSpan
    , batchReportTimeSpan
    , brtsStartTime
    , brtsEndTime

    -- * GroupItemListResponse
    , GroupItemListResponse
    , groupItemListResponse
    , gilrEtag
    , gilrKind
    , gilrItems

    -- * GroupListResponse
    , GroupListResponse
    , groupListResponse
    , glrEtag
    , glrNextPageToken
    , glrKind
    , glrItems
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types.Product
import           Network.Google.YouTubeAnalytics.Types.Sum

-- | Default request referring to version 'v1' of the YouTube Analytics API. This contains the host and root path used as a starting point for constructing service requests.
youTubeAnalyticsService :: ServiceConfig
youTubeAnalyticsService
  = defaultService (ServiceId "youtubeAnalytics:v1")
      "www.googleapis.com"

-- | Manage your YouTube account
youtubeScope :: Proxy '["https://www.googleapis.com/auth/youtube"]
youtubeScope = Proxy;

-- | View YouTube Analytics reports for your YouTube content
ytAnalyticsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/yt-analytics.readonly"]
ytAnalyticsReadOnlyScope = Proxy;

-- | View and manage your assets and associated content on YouTube
youtubePartnerScope :: Proxy '["https://www.googleapis.com/auth/youtubepartner"]
youtubePartnerScope = Proxy;

-- | View monetary and non-monetary YouTube Analytics reports for your
-- YouTube content
ytAnalyticsMonetaryReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly"]
ytAnalyticsMonetaryReadOnlyScope = Proxy;

-- | View your YouTube account
youtubeReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/youtube.readonly"]
youtubeReadOnlyScope = Proxy;
