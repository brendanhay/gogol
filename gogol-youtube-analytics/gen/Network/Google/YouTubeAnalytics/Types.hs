{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeAnalytics.Types
    (
    -- * Service URL
      youTubeAnalyticsURL

    -- * Group
    , Group
    , group'
    , gEtag
    , gSnippet
    , gKind
    , gContentDetails
    , gId

    -- * ColumnHeadersItem
    , ColumnHeadersItem
    , columnHeadersItem
    , chiColumnType
    , chiName
    , chiDataType

    -- * Snippet
    , Snippet
    , snippet
    , sPublishedAt
    , sTitle

    -- * ContentDetails
    , ContentDetails
    , contentDetails
    , cdItemType
    , cdItemCount

    -- * TimeSpan
    , TimeSpan
    , timeSpan
    , tsStartTime
    , tsEndTime

    -- * OutputsItem
    , OutputsItem
    , outputsItem
    , oiFormat
    , oiDownloadURL
    , oiType

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

    -- * Resource
    , Resource
    , resource
    , rKind
    , rId

    -- * BatchReport
    , BatchReport
    , batchReport
    , brTimeUpdated
    , brKind
    , brReportId
    , brTimeSpan
    , brOutputs
    , brId

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
    , glrKind
    , glrItems
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types.Product
import           Network.Google.YouTubeAnalytics.Types.Sum

-- | URL referring to version 'v1beta1' of the YouTube Analytics API.
youTubeAnalyticsURL :: BaseUrl
youTubeAnalyticsURL
  = BaseUrl Https
      "https://www.googleapis.com/youtube/analytics/v1beta1/"
      443
