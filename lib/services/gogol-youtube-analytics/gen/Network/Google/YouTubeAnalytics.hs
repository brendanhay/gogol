{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves your YouTube Analytics data.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference>
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
    , gErrors

    -- ** ListGroupsResponse
    , ListGroupsResponse
    , listGroupsResponse
    , lgrEtag
    , lgrNextPageToken
    , lgrKind
    , lgrItems
    , lgrErrors

    -- ** ListGroupItemsResponse
    , ListGroupItemsResponse
    , listGroupItemsResponse
    , lgirEtag
    , lgirKind
    , lgirItems
    , lgirErrors

    -- ** GroupItemResource
    , GroupItemResource
    , groupItemResource
    , girKind
    , girId

    -- ** Xgafv
    , Xgafv (..)

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
    , giErrors

    -- ** Errors
    , Errors
    , errors
    , eRequestId
    , eError
    , eCode

    -- ** ErrorProtoLocationType
    , ErrorProtoLocationType (..)

    -- ** ErrorsCode
    , ErrorsCode (..)

    -- ** ResultTableColumnHeader
    , ResultTableColumnHeader
    , resultTableColumnHeader
    , rtchColumnType
    , rtchName
    , rtchDataType

    -- ** ErrorProto
    , ErrorProto
    , errorProto
    , epDebugInfo
    , epLocation
    , epDomain
    , epArgument
    , epExternalErrorMessage
    , epCode
    , epLocationType

    -- ** EmptyResponse
    , EmptyResponse
    , emptyResponse
    , erErrors

    -- ** QueryResponse
    , QueryResponse
    , queryResponse
    , qrKind
    , qrRows
    , qrColumnHeaders
    , qrErrors
    ) where

import Network.Google.Prelude
import Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete
import Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert
import Network.Google.Resource.YouTubeAnalytics.GroupItems.List
import Network.Google.Resource.YouTubeAnalytics.Groups.Delete
import Network.Google.Resource.YouTubeAnalytics.Groups.Insert
import Network.Google.Resource.YouTubeAnalytics.Groups.List
import Network.Google.Resource.YouTubeAnalytics.Groups.Update
import Network.Google.Resource.YouTubeAnalytics.Reports.Query
import Network.Google.YouTubeAnalytics.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the YouTube Analytics API service.
type YouTubeAnalyticsAPI =
     GroupsInsertResource :<|> GroupsListResource :<|>
       GroupsDeleteResource
       :<|> GroupsUpdateResource
       :<|> ReportsQueryResource
       :<|> GroupItemsInsertResource
       :<|> GroupItemsListResource
       :<|> GroupItemsDeleteResource
