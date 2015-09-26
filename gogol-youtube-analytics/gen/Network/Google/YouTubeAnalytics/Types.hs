{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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
    -- * API Definition
      youtubeAnalytics


    -- * BatchReport
    , BatchReport
    , batchReport
    , brTimeUpdated
    , brKind
    , brReportId
    , brTimeSpan
    , brOutputs
    , brId

    -- * BatchReportDefinition
    , BatchReportDefinition
    , batchReportDefinition
    , brdStatus
    , brdKind
    , brdName
    , brdId
    , brdType

    -- * BatchReportDefinitionList
    , BatchReportDefinitionList
    , batchReportDefinitionList
    , brdlKind
    , brdlItems

    -- * BatchReportItemOutputs
    , BatchReportItemOutputs
    , batchReportItemOutputs
    , brioFormat
    , brioDownloadUrl
    , brioType

    -- * BatchReportList
    , BatchReportList
    , batchReportList
    , brlKind
    , brlItems

    -- * BatchReportTimeSpan
    , BatchReportTimeSpan
    , batchReportTimeSpan
    , brtsStartTime
    , brtsEndTime

    -- * Group
    , Group
    , group'
    , gEtag
    , gSnippet
    , gKind
    , gContentDetails
    , gId

    -- * GroupContentDetails
    , GroupContentDetails
    , groupContentDetails
    , gcdItemType
    , gcdItemCount

    -- * GroupItem
    , GroupItem
    , groupItem
    , giEtag
    , giKind
    , giResource
    , giGroupId
    , giId

    -- * GroupItemListResponse
    , GroupItemListResponse
    , groupItemListResponse
    , gilrEtag
    , gilrKind
    , gilrItems

    -- * GroupItemResource
    , GroupItemResource
    , groupItemResource
    , girKind
    , girId

    -- * GroupListResponse
    , GroupListResponse
    , groupListResponse
    , glrEtag
    , glrKind
    , glrItems

    -- * GroupSnippet
    , GroupSnippet
    , groupSnippet
    , gsPublishedAt
    , gsTitle

    -- * ResultTable
    , ResultTable
    , resultTable
    , rtKind
    , rtRows
    , rtColumnHeaders

    -- * ResultTableItemColumnHeaders
    , ResultTableItemColumnHeaders
    , resultTableItemColumnHeaders
    , rtichColumnType
    , rtichName
    , rtichDataType
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types.Product
import           Network.Google.YouTubeAnalytics.Types.Sum

youtubeAnalytics :: a
youtubeAnalytics = error "youtubeAnalytics"
