{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTubeAnalytics.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.YouTubeAnalytics.Internal.Product
  (

    -- * EmptyResponse
    EmptyResponse (..),
    newEmptyResponse,

    -- * ErrorProto
    ErrorProto (..),
    newErrorProto,

    -- * Errors
    Errors (..),
    newErrors,

    -- * Group
    Group (..),
    newGroup,

    -- * GroupContentDetails
    GroupContentDetails (..),
    newGroupContentDetails,

    -- * GroupItem
    GroupItem (..),
    newGroupItem,

    -- * GroupItemResource
    GroupItemResource (..),
    newGroupItemResource,

    -- * GroupSnippet
    GroupSnippet (..),
    newGroupSnippet,

    -- * ListGroupItemsResponse
    ListGroupItemsResponse (..),
    newListGroupItemsResponse,

    -- * ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- * QueryResponse
    QueryResponse (..),
    newQueryResponse,

    -- * ResultTableColumnHeader
    ResultTableColumnHeader (..),
    newResultTableColumnHeader,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTubeAnalytics.Internal.Sum

-- | Empty response.
--
-- /See:/ 'newEmptyResponse' smart constructor.
newtype EmptyResponse = EmptyResponse
    {
      -- | Apiary error details
      errors :: (Core.Maybe Errors)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmptyResponse' with the minimum fields required to make a request.
newEmptyResponse 
    ::  EmptyResponse
newEmptyResponse = EmptyResponse {errors = Core.Nothing}

instance Core.FromJSON EmptyResponse where
        parseJSON
          = Core.withObject "EmptyResponse"
              (\ o -> EmptyResponse Core.<$> (o Core..:? "errors"))

instance Core.ToJSON EmptyResponse where
        toJSON EmptyResponse{..}
          = Core.object
              (Core.catMaybes [("errors" Core..=) Core.<$> errors])


-- | Describes one specific error.
--
-- /See:/ 'newErrorProto' smart constructor.
data ErrorProto = ErrorProto
    {
      -- | Error arguments, to be used when building user-friendly error messages given the error domain and code. Different error codes require different arguments.
      argument :: (Core.Maybe [Core.Text])
      -- | Error code in the error domain. This should correspond to a value of the enum type whose name is in domain. See the core error domain in error_domain.proto.
    , code :: (Core.Maybe Core.Text)
      -- | Debugging information, which should not be shared externally.
    , debugInfo :: (Core.Maybe Core.Text)
      -- | Error domain. RoSy services can define their own domain and error codes. This should normally be the name of an enum type, such as: gdata.CoreErrorDomain
    , domain :: (Core.Maybe Core.Text)
      -- | A short explanation for the error, which can be shared outside Google. Please set domain, code and arguments whenever possible instead of this error message so that external APIs can build safe error messages themselves. External messages built in a RoSy interface will most likely refer to information and concepts that are not available externally and should not be exposed. It is safer if external APIs can understand the errors and decide what the error message should look like.
    , externalErrorMessage :: (Core.Maybe Core.Text)
      -- | Location of the error, as specified by the location type. If location/type is PATH, this should be a path to a field that\'s relative to the request, using FieldPath notation (net\/proto2\/util\/public\/field/path.h). Examples: authenticated/user.gaia/id resource.address[2].country
    , location :: (Core.Maybe Core.Text)
      -- | 
    , locationType :: (Core.Maybe ErrorProto_LocationType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorProto' with the minimum fields required to make a request.
newErrorProto 
    ::  ErrorProto
newErrorProto =
  ErrorProto
    { argument = Core.Nothing
    , code = Core.Nothing
    , debugInfo = Core.Nothing
    , domain = Core.Nothing
    , externalErrorMessage = Core.Nothing
    , location = Core.Nothing
    , locationType = Core.Nothing
    }

instance Core.FromJSON ErrorProto where
        parseJSON
          = Core.withObject "ErrorProto"
              (\ o ->
                 ErrorProto Core.<$>
                   (o Core..:? "argument") Core.<*> (o Core..:? "code")
                     Core.<*> (o Core..:? "debugInfo")
                     Core.<*> (o Core..:? "domain")
                     Core.<*> (o Core..:? "externalErrorMessage")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "locationType"))

instance Core.ToJSON ErrorProto where
        toJSON ErrorProto{..}
          = Core.object
              (Core.catMaybes
                 [("argument" Core..=) Core.<$> argument,
                  ("code" Core..=) Core.<$> code,
                  ("debugInfo" Core..=) Core.<$> debugInfo,
                  ("domain" Core..=) Core.<$> domain,
                  ("externalErrorMessage" Core..=) Core.<$>
                    externalErrorMessage,
                  ("location" Core..=) Core.<$> location,
                  ("locationType" Core..=) Core.<$> locationType])


-- | Request Error information. The presence of an error field signals that the operation has failed.
--
-- /See:/ 'newErrors' smart constructor.
data Errors = Errors
    {
      -- | Global error code. Deprecated and ignored. Set custom error codes in ErrorProto.domain and ErrorProto.code instead.
      code :: (Core.Maybe Errors_Code)
      -- | Specific error description and codes
    , error :: (Core.Maybe [ErrorProto])
      -- | Request identifier generated by the service, which can be used to identify the error in the logs
    , requestId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Errors' with the minimum fields required to make a request.
newErrors 
    ::  Errors
newErrors =
  Errors {code = Core.Nothing, error = Core.Nothing, requestId = Core.Nothing}

instance Core.FromJSON Errors where
        parseJSON
          = Core.withObject "Errors"
              (\ o ->
                 Errors Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "requestId"))

instance Core.ToJSON Errors where
        toJSON Errors{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("error" Core..=) Core.<$> error,
                  ("requestId" Core..=) Core.<$> requestId])


-- | A group.
--
-- /See:/ 'newGroup' smart constructor.
data Group = Group
    {
      -- | The @contentDetails@ object contains additional information about the group, such as the number and type of items that it contains.
      contentDetails :: (Core.Maybe GroupContentDetails)
      -- | Apiary error details
    , errors :: (Core.Maybe Errors)
      -- | The Etag of this resource.
    , etag :: (Core.Maybe Core.Text)
      -- | The ID that YouTube uses to uniquely identify the group.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies the API resource\'s type. The value will be @youtube#group@.
    , kind :: (Core.Maybe Core.Text)
      -- | The @snippet@ object contains basic information about the group, including its creation date and name.
    , snippet :: (Core.Maybe GroupSnippet)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
newGroup 
    ::  Group
newGroup =
  Group
    { contentDetails = Core.Nothing
    , errors = Core.Nothing
    , etag = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , snippet = Core.Nothing
    }

instance Core.FromJSON Group where
        parseJSON
          = Core.withObject "Group"
              (\ o ->
                 Group Core.<$>
                   (o Core..:? "contentDetails") Core.<*>
                     (o Core..:? "errors")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "snippet"))

instance Core.ToJSON Group where
        toJSON Group{..}
          = Core.object
              (Core.catMaybes
                 [("contentDetails" Core..=) Core.<$> contentDetails,
                  ("errors" Core..=) Core.<$> errors,
                  ("etag" Core..=) Core.<$> etag,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("snippet" Core..=) Core.<$> snippet])


-- | A group\'s content details.
--
-- /See:/ 'newGroupContentDetails' smart constructor.
data GroupContentDetails = GroupContentDetails
    {
      -- | The number of items in the group.
      itemCount :: (Core.Maybe Core.Word64)
      -- | The type of resources that the group contains. Valid values for this property are: * @youtube#channel@ * @youtube#playlist@ * @youtube#video@ * @youtubePartner#asset@
    , itemType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupContentDetails' with the minimum fields required to make a request.
newGroupContentDetails 
    ::  GroupContentDetails
newGroupContentDetails =
  GroupContentDetails {itemCount = Core.Nothing, itemType = Core.Nothing}

instance Core.FromJSON GroupContentDetails where
        parseJSON
          = Core.withObject "GroupContentDetails"
              (\ o ->
                 GroupContentDetails Core.<$>
                   (o Core..:? "itemCount" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "itemType"))

instance Core.ToJSON GroupContentDetails where
        toJSON GroupContentDetails{..}
          = Core.object
              (Core.catMaybes
                 [("itemCount" Core..=) Core.. Core.AsText Core.<$>
                    itemCount,
                  ("itemType" Core..=) Core.<$> itemType])


-- | A group item.
--
-- /See:/ 'newGroupItem' smart constructor.
data GroupItem = GroupItem
    {
      -- | Apiary error details
      errors :: (Core.Maybe Errors)
      -- | The Etag of this resource.
    , etag :: (Core.Maybe Core.Text)
      -- | The ID that YouTube uses to uniquely identify the group that contains the item.
    , groupId :: (Core.Maybe Core.Text)
      -- | The ID that YouTube uses to uniquely identify the @channel@, @video@, @playlist@, or @asset@ resource that is included in the group. Note that this ID refers specifically to the inclusion of that resource in a particular group and is different than the channel ID, video ID, playlist ID, or asset ID that uniquely identifies the resource itself. The @resource.id@ property\'s value specifies the unique channel, video, playlist, or asset ID.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies the API resource\'s type. The value will be @youtube#groupItem@.
    , kind :: (Core.Maybe Core.Text)
      -- | The @resource@ object contains information that identifies the item being added to the group.
    , resource :: (Core.Maybe GroupItemResource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupItem' with the minimum fields required to make a request.
newGroupItem 
    ::  GroupItem
newGroupItem =
  GroupItem
    { errors = Core.Nothing
    , etag = Core.Nothing
    , groupId = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , resource = Core.Nothing
    }

instance Core.FromJSON GroupItem where
        parseJSON
          = Core.withObject "GroupItem"
              (\ o ->
                 GroupItem Core.<$>
                   (o Core..:? "errors") Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "groupId")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "resource"))

instance Core.ToJSON GroupItem where
        toJSON GroupItem{..}
          = Core.object
              (Core.catMaybes
                 [("errors" Core..=) Core.<$> errors,
                  ("etag" Core..=) Core.<$> etag,
                  ("groupId" Core..=) Core.<$> groupId,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("resource" Core..=) Core.<$> resource])


--
-- /See:/ 'newGroupItemResource' smart constructor.
data GroupItemResource = GroupItemResource
    {
      -- | The channel, video, playlist, or asset ID that YouTube uses to uniquely identify the item that is being added to the group.
      id :: (Core.Maybe Core.Text)
      -- | Identifies the type of resource being added to the group. Valid values for this property are: * @youtube#channel@ * @youtube#playlist@ * @youtube#video@ * @youtubePartner#asset@
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupItemResource' with the minimum fields required to make a request.
newGroupItemResource 
    ::  GroupItemResource
newGroupItemResource =
  GroupItemResource {id = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON GroupItemResource where
        parseJSON
          = Core.withObject "GroupItemResource"
              (\ o ->
                 GroupItemResource Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "kind"))

instance Core.ToJSON GroupItemResource where
        toJSON GroupItemResource{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind])


-- | A group snippet.
--
-- /See:/ 'newGroupSnippet' smart constructor.
data GroupSnippet = GroupSnippet
    {
      -- | The date and time that the group was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
      publishedAt :: (Core.Maybe Core.DateTime)
      -- | The group name. The value must be a non-empty string.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupSnippet' with the minimum fields required to make a request.
newGroupSnippet 
    ::  GroupSnippet
newGroupSnippet =
  GroupSnippet {publishedAt = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON GroupSnippet where
        parseJSON
          = Core.withObject "GroupSnippet"
              (\ o ->
                 GroupSnippet Core.<$>
                   (o Core..:? "publishedAt") Core.<*>
                     (o Core..:? "title"))

instance Core.ToJSON GroupSnippet where
        toJSON GroupSnippet{..}
          = Core.object
              (Core.catMaybes
                 [("publishedAt" Core..=) Core.<$> publishedAt,
                  ("title" Core..=) Core.<$> title])


-- | Response message for GroupsService.ListGroupItems.
--
-- /See:/ 'newListGroupItemsResponse' smart constructor.
data ListGroupItemsResponse = ListGroupItemsResponse
    {
      -- | Apiary error details
      errors :: (Core.Maybe Errors)
      -- | The Etag of this resource.
    , etag :: (Core.Maybe Core.Text)
      -- | A list of groups that match the API request parameters. Each item in the list represents a @groupItem@ resource.
    , items :: (Core.Maybe [GroupItem])
      -- | Identifies the API resource\'s type. The value will be @youtube#groupItemListResponse@.
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGroupItemsResponse' with the minimum fields required to make a request.
newListGroupItemsResponse 
    ::  ListGroupItemsResponse
newListGroupItemsResponse =
  ListGroupItemsResponse
    { errors = Core.Nothing
    , etag = Core.Nothing
    , items = Core.Nothing
    , kind = Core.Nothing
    }

instance Core.FromJSON ListGroupItemsResponse where
        parseJSON
          = Core.withObject "ListGroupItemsResponse"
              (\ o ->
                 ListGroupItemsResponse Core.<$>
                   (o Core..:? "errors") Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "items")
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON ListGroupItemsResponse where
        toJSON ListGroupItemsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("errors" Core..=) Core.<$> errors,
                  ("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind])


-- | Response message for GroupsService.ListGroups.
--
-- /See:/ 'newListGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse
    {
      -- | Apiary error details
      errors :: (Core.Maybe Errors)
      -- | The Etag of this resource.
    , etag :: (Core.Maybe Core.Text)
      -- | A list of groups that match the API request parameters. Each item in the list represents a @group@ resource.
    , items :: (Core.Maybe [Group])
      -- | Identifies the API resource\'s type. The value will be @youtube#groupListResponse@.
    , kind :: (Core.Maybe Core.Text)
      -- | The token that can be used as the value of the @pageToken@ parameter to retrieve the next page in the result set.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
newListGroupsResponse 
    ::  ListGroupsResponse
newListGroupsResponse =
  ListGroupsResponse
    { errors = Core.Nothing
    , etag = Core.Nothing
    , items = Core.Nothing
    , kind = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListGroupsResponse where
        parseJSON
          = Core.withObject "ListGroupsResponse"
              (\ o ->
                 ListGroupsResponse Core.<$>
                   (o Core..:? "errors") Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "items")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListGroupsResponse where
        toJSON ListGroupsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("errors" Core..=) Core.<$> errors,
                  ("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for TargetedQueriesService.Query.
--
-- /See:/ 'newQueryResponse' smart constructor.
data QueryResponse = QueryResponse
    {
      -- | This value specifies information about the data returned in the @rows@ fields. Each item in the @columnHeaders@ list identifies a field returned in the @rows@ value, which contains a list of comma-delimited data. The @columnHeaders@ list will begin with the dimensions specified in the API request, which will be followed by the metrics specified in the API request. The order of both dimensions and metrics will match the ordering in the API request. For example, if the API request contains the parameters @dimensions=ageGroup,gender&metrics=viewerPercentage@, the API response will return columns in this order: @ageGroup@, @gender@, @viewerPercentage@.
      columnHeaders :: (Core.Maybe [ResultTableColumnHeader])
      -- | When set, indicates that the operation failed.
    , errors :: (Core.Maybe Errors)
      -- | This value specifies the type of data included in the API response. For the query method, the kind property value will be @youtubeAnalytics#resultTable@.
    , kind :: (Core.Maybe Core.Text)
      -- | The list contains all rows of the result table. Each item in the list is an array that contains comma-delimited data corresponding to a single row of data. The order of the comma-delimited data fields will match the order of the columns listed in the @columnHeaders@ field. If no data is available for the given query, the @rows@ element will be omitted from the response. The response for a query with the @day@ dimension will not contain rows for the most recent days.
    , rows :: (Core.Maybe [[Core.Value]])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryResponse' with the minimum fields required to make a request.
newQueryResponse 
    ::  QueryResponse
newQueryResponse =
  QueryResponse
    { columnHeaders = Core.Nothing
    , errors = Core.Nothing
    , kind = Core.Nothing
    , rows = Core.Nothing
    }

instance Core.FromJSON QueryResponse where
        parseJSON
          = Core.withObject "QueryResponse"
              (\ o ->
                 QueryResponse Core.<$>
                   (o Core..:? "columnHeaders") Core.<*>
                     (o Core..:? "errors")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "rows"))

instance Core.ToJSON QueryResponse where
        toJSON QueryResponse{..}
          = Core.object
              (Core.catMaybes
                 [("columnHeaders" Core..=) Core.<$> columnHeaders,
                  ("errors" Core..=) Core.<$> errors,
                  ("kind" Core..=) Core.<$> kind,
                  ("rows" Core..=) Core.<$> rows])


-- | The description of a column of the result table.
--
-- /See:/ 'newResultTableColumnHeader' smart constructor.
data ResultTableColumnHeader = ResultTableColumnHeader
    {
      -- | The type of the column (@DIMENSION@ or @METRIC@).
      columnType :: (Core.Maybe Core.Text)
      -- | The type of the data in the column (@STRING@, @INTEGER@, @FLOAT@, etc.).
    , dataType :: (Core.Maybe Core.Text)
      -- | The name of the dimension or metric.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultTableColumnHeader' with the minimum fields required to make a request.
newResultTableColumnHeader 
    ::  ResultTableColumnHeader
newResultTableColumnHeader =
  ResultTableColumnHeader
    {columnType = Core.Nothing, dataType = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON ResultTableColumnHeader where
        parseJSON
          = Core.withObject "ResultTableColumnHeader"
              (\ o ->
                 ResultTableColumnHeader Core.<$>
                   (o Core..:? "columnType") Core.<*>
                     (o Core..:? "dataType")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON ResultTableColumnHeader where
        toJSON ResultTableColumnHeader{..}
          = Core.object
              (Core.catMaybes
                 [("columnType" Core..=) Core.<$> columnType,
                  ("dataType" Core..=) Core.<$> dataType,
                  ("name" Core..=) Core.<$> name])

