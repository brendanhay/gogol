{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudSearch.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudSearch.Internal.Product
  ( -- * AclInfo
    AclInfo (..),
    newAclInfo,

    -- * AppId
    AppId (..),
    newAppId,

    -- * AuditLoggingSettings
    AuditLoggingSettings (..),
    newAuditLoggingSettings,

    -- * AvatarInfo
    AvatarInfo (..),
    newAvatarInfo,

    -- * BooleanOperatorOptions
    BooleanOperatorOptions (..),
    newBooleanOperatorOptions,

    -- * BooleanPropertyOptions
    BooleanPropertyOptions (..),
    newBooleanPropertyOptions,

    -- * CheckAccessResponse
    CheckAccessResponse (..),
    newCheckAccessResponse,

    -- * CompositeFilter
    CompositeFilter (..),
    newCompositeFilter,

    -- * ContextAttribute
    ContextAttribute (..),
    newContextAttribute,

    -- * CustomEmoji
    CustomEmoji (..),
    newCustomEmoji,

    -- * CustomerId
    CustomerId (..),
    newCustomerId,

    -- * CustomerIndexStats
    CustomerIndexStats (..),
    newCustomerIndexStats,

    -- * CustomerQueryStats
    CustomerQueryStats (..),
    newCustomerQueryStats,

    -- * CustomerSearchApplicationStats
    CustomerSearchApplicationStats (..),
    newCustomerSearchApplicationStats,

    -- * CustomerSessionStats
    CustomerSessionStats (..),
    newCustomerSessionStats,

    -- * CustomerSettings
    CustomerSettings (..),
    newCustomerSettings,

    -- * CustomerUserStats
    CustomerUserStats (..),
    newCustomerUserStats,

    -- * DataSource
    DataSource (..),
    newDataSource,

    -- * DataSourceIndexStats
    DataSourceIndexStats (..),
    newDataSourceIndexStats,

    -- * DataSourceRestriction
    DataSourceRestriction (..),
    newDataSourceRestriction,

    -- * Date
    Date (..),
    newDate,

    -- * DateOperatorOptions
    DateOperatorOptions (..),
    newDateOperatorOptions,

    -- * DatePropertyOptions
    DatePropertyOptions (..),
    newDatePropertyOptions,

    -- * DateValues
    DateValues (..),
    newDateValues,

    -- * DebugOptions
    DebugOptions (..),
    newDebugOptions,

    -- * DeleteQueueItemsRequest
    DeleteQueueItemsRequest (..),
    newDeleteQueueItemsRequest,

    -- * DisplayedProperty
    DisplayedProperty (..),
    newDisplayedProperty,

    -- * DmId
    DmId (..),
    newDmId,

    -- * DoubleOperatorOptions
    DoubleOperatorOptions (..),
    newDoubleOperatorOptions,

    -- * DoublePropertyOptions
    DoublePropertyOptions (..),
    newDoublePropertyOptions,

    -- * DoubleValues
    DoubleValues (..),
    newDoubleValues,

    -- * DriveFollowUpRestrict
    DriveFollowUpRestrict (..),
    newDriveFollowUpRestrict,

    -- * DriveLocationRestrict
    DriveLocationRestrict (..),
    newDriveLocationRestrict,

    -- * DriveMimeTypeRestrict
    DriveMimeTypeRestrict (..),
    newDriveMimeTypeRestrict,

    -- * DriveTimeSpanRestrict
    DriveTimeSpanRestrict (..),
    newDriveTimeSpanRestrict,

    -- * DynamiteSpacesScoringInfo
    DynamiteSpacesScoringInfo (..),
    newDynamiteSpacesScoringInfo,

    -- * EmailAddress
    EmailAddress (..),
    newEmailAddress,

    -- * Emoji
    Emoji (..),
    newEmoji,

    -- * EnumOperatorOptions
    EnumOperatorOptions (..),
    newEnumOperatorOptions,

    -- * EnumPropertyOptions
    EnumPropertyOptions (..),
    newEnumPropertyOptions,

    -- * EnumValuePair
    EnumValuePair (..),
    newEnumValuePair,

    -- * EnumValues
    EnumValues (..),
    newEnumValues,

    -- * ErrorInfo
    ErrorInfo (..),
    newErrorInfo,

    -- * ErrorMessage
    ErrorMessage (..),
    newErrorMessage,

    -- * FacetBucket
    FacetBucket (..),
    newFacetBucket,

    -- * FacetOptions
    FacetOptions (..),
    newFacetOptions,

    -- * FacetResult
    FacetResult (..),
    newFacetResult,

    -- * FieldViolation
    FieldViolation (..),
    newFieldViolation,

    -- * Filter
    Filter (..),
    newFilter,

    -- * FilterOptions
    FilterOptions (..),
    newFilterOptions,

    -- * FreshnessOptions
    FreshnessOptions (..),
    newFreshnessOptions,

    -- * GSuitePrincipal
    GSuitePrincipal (..),
    newGSuitePrincipal,

    -- * GetCustomerIndexStatsResponse
    GetCustomerIndexStatsResponse (..),
    newGetCustomerIndexStatsResponse,

    -- * GetCustomerQueryStatsResponse
    GetCustomerQueryStatsResponse (..),
    newGetCustomerQueryStatsResponse,

    -- * GetCustomerSearchApplicationStatsResponse
    GetCustomerSearchApplicationStatsResponse (..),
    newGetCustomerSearchApplicationStatsResponse,

    -- * GetCustomerSessionStatsResponse
    GetCustomerSessionStatsResponse (..),
    newGetCustomerSessionStatsResponse,

    -- * GetCustomerUserStatsResponse
    GetCustomerUserStatsResponse (..),
    newGetCustomerUserStatsResponse,

    -- * GetDataSourceIndexStatsResponse
    GetDataSourceIndexStatsResponse (..),
    newGetDataSourceIndexStatsResponse,

    -- * GetSearchApplicationQueryStatsResponse
    GetSearchApplicationQueryStatsResponse (..),
    newGetSearchApplicationQueryStatsResponse,

    -- * GetSearchApplicationSessionStatsResponse
    GetSearchApplicationSessionStatsResponse (..),
    newGetSearchApplicationSessionStatsResponse,

    -- * GetSearchApplicationUserStatsResponse
    GetSearchApplicationUserStatsResponse (..),
    newGetSearchApplicationUserStatsResponse,

    -- * GoogleDocsMetadata
    GoogleDocsMetadata (..),
    newGoogleDocsMetadata,

    -- * GoogleDocsResultInfo
    GoogleDocsResultInfo (..),
    newGoogleDocsResultInfo,

    -- * GroupId
    GroupId (..),
    newGroupId,

    -- * HtmlOperatorOptions
    HtmlOperatorOptions (..),
    newHtmlOperatorOptions,

    -- * HtmlPropertyOptions
    HtmlPropertyOptions (..),
    newHtmlPropertyOptions,

    -- * HtmlValues
    HtmlValues (..),
    newHtmlValues,

    -- * Id
    Id (..),
    newId,

    -- * IndexItemOptions
    IndexItemOptions (..),
    newIndexItemOptions,

    -- * IndexItemRequest
    IndexItemRequest (..),
    newIndexItemRequest,

    -- * InitializeCustomerRequest
    InitializeCustomerRequest (..),
    newInitializeCustomerRequest,

    -- * IntegerOperatorOptions
    IntegerOperatorOptions (..),
    newIntegerOperatorOptions,

    -- * IntegerPropertyOptions
    IntegerPropertyOptions (..),
    newIntegerPropertyOptions,

    -- * IntegerValues
    IntegerValues (..),
    newIntegerValues,

    -- * Interaction
    Interaction (..),
    newInteraction,

    -- * Item
    Item (..),
    newItem,

    -- * ItemAcl
    ItemAcl (..),
    newItemAcl,

    -- * ItemContent
    ItemContent (..),
    newItemContent,

    -- * ItemCountByStatus
    ItemCountByStatus (..),
    newItemCountByStatus,

    -- * ItemMetadata
    ItemMetadata (..),
    newItemMetadata,

    -- * ItemStatus
    ItemStatus (..),
    newItemStatus,

    -- * ItemStructuredData
    ItemStructuredData (..),
    newItemStructuredData,

    -- * ListDataSourceResponse
    ListDataSourceResponse (..),
    newListDataSourceResponse,

    -- * ListItemNamesForUnmappedIdentityResponse
    ListItemNamesForUnmappedIdentityResponse (..),
    newListItemNamesForUnmappedIdentityResponse,

    -- * ListItemsResponse
    ListItemsResponse (..),
    newListItemsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListQuerySourcesResponse
    ListQuerySourcesResponse (..),
    newListQuerySourcesResponse,

    -- * ListSearchApplicationsResponse
    ListSearchApplicationsResponse (..),
    newListSearchApplicationsResponse,

    -- * ListUnmappedIdentitiesResponse
    ListUnmappedIdentitiesResponse (..),
    newListUnmappedIdentitiesResponse,

    -- * MatchRange
    MatchRange (..),
    newMatchRange,

    -- * Media
    Media (..),
    newMedia,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * Metaline
    Metaline (..),
    newMetaline,

    -- * Name
    Name (..),
    newName,

    -- * NamedProperty
    NamedProperty (..),
    newNamedProperty,

    -- * ObjectDefinition
    ObjectDefinition (..),
    newObjectDefinition,

    -- * ObjectDisplayOptions
    ObjectDisplayOptions (..),
    newObjectDisplayOptions,

    -- * ObjectOptions
    ObjectOptions (..),
    newObjectOptions,

    -- * ObjectPropertyOptions
    ObjectPropertyOptions (..),
    newObjectPropertyOptions,

    -- * ObjectValues
    ObjectValues (..),
    newObjectValues,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * PeopleSuggestion
    PeopleSuggestion (..),
    newPeopleSuggestion,

    -- * Person
    Person (..),
    newPerson,

    -- * Photo
    Photo (..),
    newPhoto,

    -- * PollItemsRequest
    PollItemsRequest (..),
    newPollItemsRequest,

    -- * PollItemsResponse
    PollItemsResponse (..),
    newPollItemsResponse,

    -- * Principal
    Principal (..),
    newPrincipal,

    -- * ProcessingError
    ProcessingError (..),
    newProcessingError,

    -- * PropertyDefinition
    PropertyDefinition (..),
    newPropertyDefinition,

    -- * PropertyDisplayOptions
    PropertyDisplayOptions (..),
    newPropertyDisplayOptions,

    -- * PushItem
    PushItem (..),
    newPushItem,

    -- * PushItemRequest
    PushItemRequest (..),
    newPushItemRequest,

    -- * QueryCountByStatus
    QueryCountByStatus (..),
    newQueryCountByStatus,

    -- * QueryInterpretation
    QueryInterpretation (..),
    newQueryInterpretation,

    -- * QueryInterpretationConfig
    QueryInterpretationConfig (..),
    newQueryInterpretationConfig,

    -- * QueryInterpretationOptions
    QueryInterpretationOptions (..),
    newQueryInterpretationOptions,

    -- * QueryItem
    QueryItem (..),
    newQueryItem,

    -- * QueryOperator
    QueryOperator (..),
    newQueryOperator,

    -- * QuerySource
    QuerySource (..),
    newQuerySource,

    -- * QuerySuggestion
    QuerySuggestion (..),
    newQuerySuggestion,

    -- * RepositoryError
    RepositoryError (..),
    newRepositoryError,

    -- * RequestOptions
    RequestOptions (..),
    newRequestOptions,

    -- * ResetSearchApplicationRequest
    ResetSearchApplicationRequest (..),
    newResetSearchApplicationRequest,

    -- * ResponseDebugInfo
    ResponseDebugInfo (..),
    newResponseDebugInfo,

    -- * RestrictItem
    RestrictItem (..),
    newRestrictItem,

    -- * ResultCounts
    ResultCounts (..),
    newResultCounts,

    -- * ResultDebugInfo
    ResultDebugInfo (..),
    newResultDebugInfo,

    -- * ResultDisplayField
    ResultDisplayField (..),
    newResultDisplayField,

    -- * ResultDisplayLine
    ResultDisplayLine (..),
    newResultDisplayLine,

    -- * ResultDisplayMetadata
    ResultDisplayMetadata (..),
    newResultDisplayMetadata,

    -- * RetrievalImportance
    RetrievalImportance (..),
    newRetrievalImportance,

    -- * Schema
    Schema (..),
    newSchema,

    -- * ScoringConfig
    ScoringConfig (..),
    newScoringConfig,

    -- * SearchApplication
    SearchApplication (..),
    newSearchApplication,

    -- * SearchApplicationQueryStats
    SearchApplicationQueryStats (..),
    newSearchApplicationQueryStats,

    -- * SearchApplicationSessionStats
    SearchApplicationSessionStats (..),
    newSearchApplicationSessionStats,

    -- * SearchApplicationUserStats
    SearchApplicationUserStats (..),
    newSearchApplicationUserStats,

    -- * SearchItemsByViewUrlRequest
    SearchItemsByViewUrlRequest (..),
    newSearchItemsByViewUrlRequest,

    -- * SearchItemsByViewUrlResponse
    SearchItemsByViewUrlResponse (..),
    newSearchItemsByViewUrlResponse,

    -- * SearchQualityMetadata
    SearchQualityMetadata (..),
    newSearchQualityMetadata,

    -- * SearchRequest
    SearchRequest (..),
    newSearchRequest,

    -- * SearchResponse
    SearchResponse (..),
    newSearchResponse,

    -- * SearchResult
    SearchResult (..),
    newSearchResult,

    -- * ShareScope
    ShareScope (..),
    newShareScope,

    -- * Snippet
    Snippet (..),
    newSnippet,

    -- * SortOptions
    SortOptions (..),
    newSortOptions,

    -- * Source
    Source (..),
    newSource,

    -- * SourceConfig
    SourceConfig (..),
    newSourceConfig,

    -- * SourceCrowdingConfig
    SourceCrowdingConfig (..),
    newSourceCrowdingConfig,

    -- * SourceResultCount
    SourceResultCount (..),
    newSourceResultCount,

    -- * SourceScoringConfig
    SourceScoringConfig (..),
    newSourceScoringConfig,

    -- * SpaceId
    SpaceId (..),
    newSpaceId,

    -- * SpaceInfo
    SpaceInfo (..),
    newSpaceInfo,

    -- * SpellResult
    SpellResult (..),
    newSpellResult,

    -- * StartUploadItemRequest
    StartUploadItemRequest (..),
    newStartUploadItemRequest,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StructuredDataObject
    StructuredDataObject (..),
    newStructuredDataObject,

    -- * StructuredResult
    StructuredResult (..),
    newStructuredResult,

    -- * SuggestRequest
    SuggestRequest (..),
    newSuggestRequest,

    -- * SuggestResponse
    SuggestResponse (..),
    newSuggestResponse,

    -- * SuggestResult
    SuggestResult (..),
    newSuggestResult,

    -- * TextOperatorOptions
    TextOperatorOptions (..),
    newTextOperatorOptions,

    -- * TextPropertyOptions
    TextPropertyOptions (..),
    newTextPropertyOptions,

    -- * TextValues
    TextValues (..),
    newTextValues,

    -- * TimestampOperatorOptions
    TimestampOperatorOptions (..),
    newTimestampOperatorOptions,

    -- * TimestampPropertyOptions
    TimestampPropertyOptions (..),
    newTimestampPropertyOptions,

    -- * TimestampValues
    TimestampValues (..),
    newTimestampValues,

    -- * TypeInfo
    TypeInfo (..),
    newTypeInfo,

    -- * UnmappedIdentity
    UnmappedIdentity (..),
    newUnmappedIdentity,

    -- * UnreserveItemsRequest
    UnreserveItemsRequest (..),
    newUnreserveItemsRequest,

    -- * UpdateDataSourceRequest
    UpdateDataSourceRequest (..),
    newUpdateDataSourceRequest,

    -- * UpdateSchemaRequest
    UpdateSchemaRequest (..),
    newUpdateSchemaRequest,

    -- * UploadItemRef
    UploadItemRef (..),
    newUploadItemRef,

    -- * UserId
    UserId (..),
    newUserId,

    -- * VPCSettings
    VPCSettings (..),
    newVPCSettings,

    -- * Value
    Value (..),
    newValue,

    -- * ValueFilter
    ValueFilter (..),
    newValueFilter,

    -- * VideoInfo
    VideoInfo (..),
    newVideoInfo,
  )
where

import Gogol.CloudSearch.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Next tag: 4
--
-- /See:/ 'newAclInfo' smart constructor.
data AclInfo = AclInfo
  { -- | Number of groups which have at least read access to the document.
    groupsCount :: (Core.Maybe Core.Int32),
    -- | The scope to which the content was shared.
    scope :: (Core.Maybe AclInfo_Scope),
    -- | Number of users which have at least read access to the document.
    usersCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AclInfo' with the minimum fields required to make a request.
newAclInfo ::
  AclInfo
newAclInfo =
  AclInfo
    { groupsCount = Core.Nothing,
      scope = Core.Nothing,
      usersCount = Core.Nothing
    }

instance Core.FromJSON AclInfo where
  parseJSON =
    Core.withObject
      "AclInfo"
      ( \o ->
          AclInfo
            Core.<$> (o Core..:? "groupsCount")
            Core.<*> (o Core..:? "scope")
            Core.<*> (o Core..:? "usersCount")
      )

instance Core.ToJSON AclInfo where
  toJSON AclInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupsCount" Core..=) Core.<$> groupsCount,
            ("scope" Core..=) Core.<$> scope,
            ("usersCount" Core..=) Core.<$> usersCount
          ]
      )

-- | Identifier of an App.
--
-- /See:/ 'newAppId' smart constructor.
data AppId = AppId
  { -- | Enum indicating the type of App this is.
    appType :: (Core.Maybe AppId_AppType),
    -- | Enum indicating which 1P App this is when app/type is GSUITE/APP. Determined & set by the 1P API as a convenience for all users of this identifier(Eg. clients, chime, backend etc.) to map to 1P properties.
    gsuiteAppType :: (Core.Maybe AppId_GsuiteAppType),
    -- | Numeric identifier of the App. Set to Project number for 1\/3P Apps. For Webhook, this is WebhookId. Determined & set by the 1P API from App credentials on the side channel.
    id :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppId' with the minimum fields required to make a request.
newAppId ::
  AppId
newAppId =
  AppId
    { appType = Core.Nothing,
      gsuiteAppType = Core.Nothing,
      id = Core.Nothing
    }

instance Core.FromJSON AppId where
  parseJSON =
    Core.withObject
      "AppId"
      ( \o ->
          AppId
            Core.<$> (o Core..:? "appType")
            Core.<*> (o Core..:? "gsuiteAppType")
            Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON AppId where
  toJSON AppId {..} =
    Core.object
      ( Core.catMaybes
          [ ("appType" Core..=) Core.<$> appType,
            ("gsuiteAppType" Core..=) Core.<$> gsuiteAppType,
            ("id" Core..=) Core.. Core.AsText Core.<$> id
          ]
      )

-- | Represents the settings for Cloud audit logging
--
-- /See:/ 'newAuditLoggingSettings' smart constructor.
data AuditLoggingSettings = AuditLoggingSettings
  { -- | Indicates whether audit logging is on\/off for admin activity read APIs i.e. Get\/List DataSources, Get\/List SearchApplications etc.
    logAdminReadActions :: (Core.Maybe Core.Bool),
    -- | Indicates whether audit logging is on\/off for data access read APIs i.e. ListItems, GetItem etc.
    logDataReadActions :: (Core.Maybe Core.Bool),
    -- | Indicates whether audit logging is on\/off for data access write APIs i.e. IndexItem etc.
    logDataWriteActions :: (Core.Maybe Core.Bool),
    -- | The resource name of the GCP Project to store audit logs. Cloud audit logging will be enabled after project/name has been updated through CustomerService. Format: projects\/{project/id}
    project :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLoggingSettings' with the minimum fields required to make a request.
newAuditLoggingSettings ::
  AuditLoggingSettings
newAuditLoggingSettings =
  AuditLoggingSettings
    { logAdminReadActions = Core.Nothing,
      logDataReadActions = Core.Nothing,
      logDataWriteActions = Core.Nothing,
      project = Core.Nothing
    }

instance Core.FromJSON AuditLoggingSettings where
  parseJSON =
    Core.withObject
      "AuditLoggingSettings"
      ( \o ->
          AuditLoggingSettings
            Core.<$> (o Core..:? "logAdminReadActions")
            Core.<*> (o Core..:? "logDataReadActions")
            Core.<*> (o Core..:? "logDataWriteActions")
            Core.<*> (o Core..:? "project")
      )

instance Core.ToJSON AuditLoggingSettings where
  toJSON AuditLoggingSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("logAdminReadActions" Core..=)
              Core.<$> logAdminReadActions,
            ("logDataReadActions" Core..=)
              Core.<$> logDataReadActions,
            ("logDataWriteActions" Core..=)
              Core.<$> logDataWriteActions,
            ("project" Core..=) Core.<$> project
          ]
      )

--
-- /See:/ 'newAvatarInfo' smart constructor.
newtype AvatarInfo = AvatarInfo
  { -- |
    emoji :: (Core.Maybe Emoji)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AvatarInfo' with the minimum fields required to make a request.
newAvatarInfo ::
  AvatarInfo
newAvatarInfo = AvatarInfo {emoji = Core.Nothing}

instance Core.FromJSON AvatarInfo where
  parseJSON =
    Core.withObject
      "AvatarInfo"
      (\o -> AvatarInfo Core.<$> (o Core..:? "emoji"))

instance Core.ToJSON AvatarInfo where
  toJSON AvatarInfo {..} =
    Core.object
      (Core.catMaybes [("emoji" Core..=) Core.<$> emoji])

-- | Used to provide a search operator for boolean properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.
--
-- /See:/ 'newBooleanOperatorOptions' smart constructor.
newtype BooleanOperatorOptions = BooleanOperatorOptions
  { -- | Indicates the operator name required in the query in order to isolate the boolean property. For example, if operatorName is /closed/ and the property\'s name is /isClosed/, then queries like /closed:\<value>/ show results only where the value of the property named /isClosed/ matches /\<value>/. By contrast, a search that uses the same /\<value>/ without an operator returns all items where /\<value>/ matches the value of any String properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooleanOperatorOptions' with the minimum fields required to make a request.
newBooleanOperatorOptions ::
  BooleanOperatorOptions
newBooleanOperatorOptions = BooleanOperatorOptions {operatorName = Core.Nothing}

instance Core.FromJSON BooleanOperatorOptions where
  parseJSON =
    Core.withObject
      "BooleanOperatorOptions"
      ( \o ->
          BooleanOperatorOptions
            Core.<$> (o Core..:? "operatorName")
      )

instance Core.ToJSON BooleanOperatorOptions where
  toJSON BooleanOperatorOptions {..} =
    Core.object
      ( Core.catMaybes
          [("operatorName" Core..=) Core.<$> operatorName]
      )

-- | Options for boolean properties.
--
-- /See:/ 'newBooleanPropertyOptions' smart constructor.
newtype BooleanPropertyOptions = BooleanPropertyOptions
  { -- | If set, describes how the boolean should be used as a search operator.
    operatorOptions :: (Core.Maybe BooleanOperatorOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooleanPropertyOptions' with the minimum fields required to make a request.
newBooleanPropertyOptions ::
  BooleanPropertyOptions
newBooleanPropertyOptions =
  BooleanPropertyOptions {operatorOptions = Core.Nothing}

instance Core.FromJSON BooleanPropertyOptions where
  parseJSON =
    Core.withObject
      "BooleanPropertyOptions"
      ( \o ->
          BooleanPropertyOptions
            Core.<$> (o Core..:? "operatorOptions")
      )

instance Core.ToJSON BooleanPropertyOptions where
  toJSON BooleanPropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorOptions" Core..=)
              Core.<$> operatorOptions
          ]
      )

--
-- /See:/ 'newCheckAccessResponse' smart constructor.
newtype CheckAccessResponse = CheckAccessResponse
  { -- | Returns true if principal has access. Returns false otherwise.
    hasAccess :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckAccessResponse' with the minimum fields required to make a request.
newCheckAccessResponse ::
  CheckAccessResponse
newCheckAccessResponse = CheckAccessResponse {hasAccess = Core.Nothing}

instance Core.FromJSON CheckAccessResponse where
  parseJSON =
    Core.withObject
      "CheckAccessResponse"
      ( \o ->
          CheckAccessResponse
            Core.<$> (o Core..:? "hasAccess")
      )

instance Core.ToJSON CheckAccessResponse where
  toJSON CheckAccessResponse {..} =
    Core.object
      ( Core.catMaybes
          [("hasAccess" Core..=) Core.<$> hasAccess]
      )

--
-- /See:/ 'newCompositeFilter' smart constructor.
data CompositeFilter = CompositeFilter
  { -- | The logic operator of the sub filter.
    logicOperator :: (Core.Maybe CompositeFilter_LogicOperator),
    -- | Sub filters.
    subFilters :: (Core.Maybe [Filter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompositeFilter' with the minimum fields required to make a request.
newCompositeFilter ::
  CompositeFilter
newCompositeFilter =
  CompositeFilter {logicOperator = Core.Nothing, subFilters = Core.Nothing}

instance Core.FromJSON CompositeFilter where
  parseJSON =
    Core.withObject
      "CompositeFilter"
      ( \o ->
          CompositeFilter
            Core.<$> (o Core..:? "logicOperator")
            Core.<*> (o Core..:? "subFilters" Core..!= Core.mempty)
      )

instance Core.ToJSON CompositeFilter where
  toJSON CompositeFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("logicOperator" Core..=) Core.<$> logicOperator,
            ("subFilters" Core..=) Core.<$> subFilters
          ]
      )

-- | A named attribute associated with an item which can be used for influencing the ranking of the item based on the context in the request.
--
-- /See:/ 'newContextAttribute' smart constructor.
data ContextAttribute = ContextAttribute
  { -- | The name of the attribute. It should not be empty. The maximum length is 32 characters. The name must start with a letter and can only contain letters (A-Z, a-z) or numbers (0-9). The name will be normalized (lower-cased) before being matched.
    name :: (Core.Maybe Core.Text),
    -- | Text values of the attribute. The maximum number of elements is 10. The maximum length of an element in the array is 32 characters. The value will be normalized (lower-cased) before being matched.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContextAttribute' with the minimum fields required to make a request.
newContextAttribute ::
  ContextAttribute
newContextAttribute =
  ContextAttribute {name = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON ContextAttribute where
  parseJSON =
    Core.withObject
      "ContextAttribute"
      ( \o ->
          ContextAttribute
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON ContextAttribute where
  toJSON ContextAttribute {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Proto representation of a custom emoji. May be used in both APIs and in Spanner, but certain fields should be restricted to one or the other. See the per-field documentation for details. NEXT_TAG: 11
--
-- /See:/ 'newCustomEmoji' smart constructor.
data CustomEmoji = CustomEmoji
  { -- | ID for the underlying image data in Blobstore. This field should /only/ be present in Spanner or within the server, but should not be exposed in public APIs.
    blobId :: (Core.Maybe Core.Text),
    -- | Time when the Emoji was created, in microseconds. This field may be present in Spanner, within the server, or in public APIs.
    createTimeMicros :: (Core.Maybe Core.Int64),
    -- | This field should /never/ be persisted to Spanner.
    creatorUserId :: (Core.Maybe UserId),
    -- | This field should /never/ be persisted to Spanner.
    ownerCustomerId :: (Core.Maybe CustomerId),
    -- | Opaque token that clients use to construct the URL for accessing the custom emoji’s image data. This field is intended for API consumption, and should /never/ be persisted to Spanner.
    readToken :: (Core.Maybe Core.Text),
    -- | User-provided, human-readable ID for the custom emoji. Users are expected to observe this field in the UI instead of the UUID. This shortcode should be unique within an organization, but has no global uniqueness guarantees, unlike the UUID. This field should /never/ be persisted to Spanner.
    shortcode :: (Core.Maybe Core.Text),
    -- | Snapshot of the current state of the emoji, which may differ from the source-of-truth in the CustomEmojis table. This field should /never/ be persisted to Spanner.
    state :: (Core.Maybe CustomEmoji_State),
    -- |
    updateTimeMicros :: (Core.Maybe Core.Int64),
    -- | Unique key for a custom emoji resource. Required. This field is /always/ populated.
    uuid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomEmoji' with the minimum fields required to make a request.
newCustomEmoji ::
  CustomEmoji
newCustomEmoji =
  CustomEmoji
    { blobId = Core.Nothing,
      createTimeMicros = Core.Nothing,
      creatorUserId = Core.Nothing,
      ownerCustomerId = Core.Nothing,
      readToken = Core.Nothing,
      shortcode = Core.Nothing,
      state = Core.Nothing,
      updateTimeMicros = Core.Nothing,
      uuid = Core.Nothing
    }

instance Core.FromJSON CustomEmoji where
  parseJSON =
    Core.withObject
      "CustomEmoji"
      ( \o ->
          CustomEmoji
            Core.<$> (o Core..:? "blobId")
            Core.<*> (o Core..:? "createTimeMicros")
            Core.<*> (o Core..:? "creatorUserId")
            Core.<*> (o Core..:? "ownerCustomerId")
            Core.<*> (o Core..:? "readToken")
            Core.<*> (o Core..:? "shortcode")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTimeMicros")
            Core.<*> (o Core..:? "uuid")
      )

instance Core.ToJSON CustomEmoji where
  toJSON CustomEmoji {..} =
    Core.object
      ( Core.catMaybes
          [ ("blobId" Core..=) Core.<$> blobId,
            ("createTimeMicros" Core..=) Core.. Core.AsText
              Core.<$> createTimeMicros,
            ("creatorUserId" Core..=) Core.<$> creatorUserId,
            ("ownerCustomerId" Core..=) Core.<$> ownerCustomerId,
            ("readToken" Core..=) Core.<$> readToken,
            ("shortcode" Core..=) Core.<$> shortcode,
            ("state" Core..=) Core.<$> state,
            ("updateTimeMicros" Core..=) Core.. Core.AsText
              Core.<$> updateTimeMicros,
            ("uuid" Core..=) Core.<$> uuid
          ]
      )

-- | Represents a GSuite customer ID. Obfuscated with CustomerIdObfuscator.
--
-- /See:/ 'newCustomerId' smart constructor.
newtype CustomerId = CustomerId
  { -- |
    customerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerId' with the minimum fields required to make a request.
newCustomerId ::
  CustomerId
newCustomerId = CustomerId {customerId = Core.Nothing}

instance Core.FromJSON CustomerId where
  parseJSON =
    Core.withObject
      "CustomerId"
      ( \o ->
          CustomerId Core.<$> (o Core..:? "customerId")
      )

instance Core.ToJSON CustomerId where
  toJSON CustomerId {..} =
    Core.object
      ( Core.catMaybes
          [("customerId" Core..=) Core.<$> customerId]
      )

-- | Aggregation of items by status code as of the specified date.
--
-- /See:/ 'newCustomerIndexStats' smart constructor.
data CustomerIndexStats = CustomerIndexStats
  { -- | Date for which statistics were calculated.
    date :: (Core.Maybe Date),
    -- | Number of items aggregrated by status code.
    itemCountByStatus :: (Core.Maybe [ItemCountByStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerIndexStats' with the minimum fields required to make a request.
newCustomerIndexStats ::
  CustomerIndexStats
newCustomerIndexStats =
  CustomerIndexStats {date = Core.Nothing, itemCountByStatus = Core.Nothing}

instance Core.FromJSON CustomerIndexStats where
  parseJSON =
    Core.withObject
      "CustomerIndexStats"
      ( \o ->
          CustomerIndexStats
            Core.<$> (o Core..:? "date")
            Core.<*> ( o Core..:? "itemCountByStatus"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON CustomerIndexStats where
  toJSON CustomerIndexStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("itemCountByStatus" Core..=)
              Core.<$> itemCountByStatus
          ]
      )

--
-- /See:/ 'newCustomerQueryStats' smart constructor.
data CustomerQueryStats = CustomerQueryStats
  { -- | Date for which query stats were calculated. Stats calculated on the next day close to midnight are returned.
    date :: (Core.Maybe Date),
    -- |
    queryCountByStatus :: (Core.Maybe [QueryCountByStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerQueryStats' with the minimum fields required to make a request.
newCustomerQueryStats ::
  CustomerQueryStats
newCustomerQueryStats =
  CustomerQueryStats {date = Core.Nothing, queryCountByStatus = Core.Nothing}

instance Core.FromJSON CustomerQueryStats where
  parseJSON =
    Core.withObject
      "CustomerQueryStats"
      ( \o ->
          CustomerQueryStats
            Core.<$> (o Core..:? "date")
            Core.<*> ( o Core..:? "queryCountByStatus"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON CustomerQueryStats where
  toJSON CustomerQueryStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("queryCountByStatus" Core..=)
              Core.<$> queryCountByStatus
          ]
      )

-- | Search application stats for a customer for the given date.
--
-- /See:/ 'newCustomerSearchApplicationStats' smart constructor.
data CustomerSearchApplicationStats = CustomerSearchApplicationStats
  { -- | The count of search applications for the date.
    count :: (Core.Maybe Core.Int64),
    -- | Date for which search application stats were calculated.
    date :: (Core.Maybe Date)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerSearchApplicationStats' with the minimum fields required to make a request.
newCustomerSearchApplicationStats ::
  CustomerSearchApplicationStats
newCustomerSearchApplicationStats =
  CustomerSearchApplicationStats {count = Core.Nothing, date = Core.Nothing}

instance Core.FromJSON CustomerSearchApplicationStats where
  parseJSON =
    Core.withObject
      "CustomerSearchApplicationStats"
      ( \o ->
          CustomerSearchApplicationStats
            Core.<$> (o Core..:? "count") Core.<*> (o Core..:? "date")
      )

instance Core.ToJSON CustomerSearchApplicationStats where
  toJSON CustomerSearchApplicationStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("date" Core..=) Core.<$> date
          ]
      )

--
-- /See:/ 'newCustomerSessionStats' smart constructor.
data CustomerSessionStats = CustomerSessionStats
  { -- | Date for which session stats were calculated. Stats are calculated on the following day, close to midnight PST, and then returned.
    date :: (Core.Maybe Date),
    -- | The count of search sessions on the day
    searchSessionsCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerSessionStats' with the minimum fields required to make a request.
newCustomerSessionStats ::
  CustomerSessionStats
newCustomerSessionStats =
  CustomerSessionStats {date = Core.Nothing, searchSessionsCount = Core.Nothing}

instance Core.FromJSON CustomerSessionStats where
  parseJSON =
    Core.withObject
      "CustomerSessionStats"
      ( \o ->
          CustomerSessionStats
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "searchSessionsCount")
      )

instance Core.ToJSON CustomerSessionStats where
  toJSON CustomerSessionStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("searchSessionsCount" Core..=) Core.. Core.AsText
              Core.<$> searchSessionsCount
          ]
      )

-- | Represents settings at a customer level.
--
-- /See:/ 'newCustomerSettings' smart constructor.
data CustomerSettings = CustomerSettings
  { -- | Audit Logging settings for the customer. If update_mask is empty then this field will be updated based on UpdateCustomerSettings request.
    auditLoggingSettings :: (Core.Maybe AuditLoggingSettings),
    -- | VPC SC settings for the customer. If update_mask is empty then this field will be updated based on UpdateCustomerSettings request.
    vpcSettings :: (Core.Maybe VPCSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerSettings' with the minimum fields required to make a request.
newCustomerSettings ::
  CustomerSettings
newCustomerSettings =
  CustomerSettings
    { auditLoggingSettings = Core.Nothing,
      vpcSettings = Core.Nothing
    }

instance Core.FromJSON CustomerSettings where
  parseJSON =
    Core.withObject
      "CustomerSettings"
      ( \o ->
          CustomerSettings
            Core.<$> (o Core..:? "auditLoggingSettings")
            Core.<*> (o Core..:? "vpcSettings")
      )

instance Core.ToJSON CustomerSettings where
  toJSON CustomerSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLoggingSettings" Core..=)
              Core.<$> auditLoggingSettings,
            ("vpcSettings" Core..=) Core.<$> vpcSettings
          ]
      )

--
-- /See:/ 'newCustomerUserStats' smart constructor.
data CustomerUserStats = CustomerUserStats
  { -- | Date for which session stats were calculated. Stats calculated on the next day close to midnight are returned.
    date :: (Core.Maybe Date),
    -- | The count of unique active users in the past one day
    oneDayActiveUsersCount :: (Core.Maybe Core.Int64),
    -- | The count of unique active users in the past seven days
    sevenDaysActiveUsersCount :: (Core.Maybe Core.Int64),
    -- | The count of unique active users in the past thirty days
    thirtyDaysActiveUsersCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerUserStats' with the minimum fields required to make a request.
newCustomerUserStats ::
  CustomerUserStats
newCustomerUserStats =
  CustomerUserStats
    { date = Core.Nothing,
      oneDayActiveUsersCount = Core.Nothing,
      sevenDaysActiveUsersCount = Core.Nothing,
      thirtyDaysActiveUsersCount = Core.Nothing
    }

instance Core.FromJSON CustomerUserStats where
  parseJSON =
    Core.withObject
      "CustomerUserStats"
      ( \o ->
          CustomerUserStats
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "oneDayActiveUsersCount")
            Core.<*> (o Core..:? "sevenDaysActiveUsersCount")
            Core.<*> (o Core..:? "thirtyDaysActiveUsersCount")
      )

instance Core.ToJSON CustomerUserStats where
  toJSON CustomerUserStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("oneDayActiveUsersCount" Core..=) Core.. Core.AsText
              Core.<$> oneDayActiveUsersCount,
            ("sevenDaysActiveUsersCount" Core..=)
              Core.. Core.AsText
              Core.<$> sevenDaysActiveUsersCount,
            ("thirtyDaysActiveUsersCount" Core..=)
              Core.. Core.AsText
              Core.<$> thirtyDaysActiveUsersCount
          ]
      )

-- | Datasource is a logical namespace for items to be indexed. All items must belong to a datasource. This is the prerequisite before items can be indexed into Cloud Search.
--
-- /See:/ 'newDataSource' smart constructor.
data DataSource = DataSource
  { -- | If true, sets the datasource to read-only mode. In read-only mode, the Indexing API rejects any requests to index or delete items in this source. Enabling read-only mode does not stop the processing of previously accepted data.
    disableModifications :: (Core.Maybe Core.Bool),
    -- | Disable serving any search or assist results.
    disableServing :: (Core.Maybe Core.Bool),
    -- | Required. Display name of the datasource The maximum length is 300 characters.
    displayName :: (Core.Maybe Core.Text),
    -- | List of service accounts that have indexing access.
    indexingServiceAccounts :: (Core.Maybe [Core.Text]),
    -- | This field restricts visibility to items at the datasource level. Items within the datasource are restricted to the union of users and groups included in this field. Note that, this does not ensure access to a specific item, as users need to have ACL permissions on the contained items. This ensures a high level access on the entire datasource, and that the individual items are not shared outside this visibility.
    itemsVisibility :: (Core.Maybe [GSuitePrincipal]),
    -- | Name of the datasource resource. Format: datasources\/{source_id}. The name is ignored when creating a datasource.
    name :: (Core.Maybe Core.Text),
    -- | IDs of the Long Running Operations (LROs) currently running for this schema.
    operationIds :: (Core.Maybe [Core.Text]),
    -- | Can a user request to get thumbnail URI for Items indexed in this data source.
    returnThumbnailUrls :: (Core.Maybe Core.Bool),
    -- | A short name or alias for the source. This value will be used to match the \'source\' operator. For example, if the short name is /\<value>/ then queries like /source:\<value>/ will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with \'google\' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.
    shortName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
newDataSource ::
  DataSource
newDataSource =
  DataSource
    { disableModifications = Core.Nothing,
      disableServing = Core.Nothing,
      displayName = Core.Nothing,
      indexingServiceAccounts = Core.Nothing,
      itemsVisibility = Core.Nothing,
      name = Core.Nothing,
      operationIds = Core.Nothing,
      returnThumbnailUrls = Core.Nothing,
      shortName = Core.Nothing
    }

instance Core.FromJSON DataSource where
  parseJSON =
    Core.withObject
      "DataSource"
      ( \o ->
          DataSource
            Core.<$> (o Core..:? "disableModifications")
            Core.<*> (o Core..:? "disableServing")
            Core.<*> (o Core..:? "displayName")
            Core.<*> ( o Core..:? "indexingServiceAccounts"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "itemsVisibility" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "operationIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "returnThumbnailUrls")
            Core.<*> (o Core..:? "shortName")
      )

instance Core.ToJSON DataSource where
  toJSON DataSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("disableModifications" Core..=)
              Core.<$> disableModifications,
            ("disableServing" Core..=) Core.<$> disableServing,
            ("displayName" Core..=) Core.<$> displayName,
            ("indexingServiceAccounts" Core..=)
              Core.<$> indexingServiceAccounts,
            ("itemsVisibility" Core..=) Core.<$> itemsVisibility,
            ("name" Core..=) Core.<$> name,
            ("operationIds" Core..=) Core.<$> operationIds,
            ("returnThumbnailUrls" Core..=)
              Core.<$> returnThumbnailUrls,
            ("shortName" Core..=) Core.<$> shortName
          ]
      )

-- | Aggregation of items by status code as of the specified date.
--
-- /See:/ 'newDataSourceIndexStats' smart constructor.
data DataSourceIndexStats = DataSourceIndexStats
  { -- | Date for which index stats were calculated. If the date of request is not the current date then stats calculated on the next day are returned. Stats are calculated close to mid night in this case. If date of request is current date, then real time stats are returned.
    date :: (Core.Maybe Date),
    -- | Number of items aggregrated by status code.
    itemCountByStatus :: (Core.Maybe [ItemCountByStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceIndexStats' with the minimum fields required to make a request.
newDataSourceIndexStats ::
  DataSourceIndexStats
newDataSourceIndexStats =
  DataSourceIndexStats {date = Core.Nothing, itemCountByStatus = Core.Nothing}

instance Core.FromJSON DataSourceIndexStats where
  parseJSON =
    Core.withObject
      "DataSourceIndexStats"
      ( \o ->
          DataSourceIndexStats
            Core.<$> (o Core..:? "date")
            Core.<*> ( o Core..:? "itemCountByStatus"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON DataSourceIndexStats where
  toJSON DataSourceIndexStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("itemCountByStatus" Core..=)
              Core.<$> itemCountByStatus
          ]
      )

-- | Restriction on Datasource.
--
-- /See:/ 'newDataSourceRestriction' smart constructor.
data DataSourceRestriction = DataSourceRestriction
  { -- | Filter options restricting the results. If multiple filters are present, they are grouped by object type before joining. Filters with the same object type are joined conjunctively, then the resulting expressions are joined disjunctively. The maximum number of elements is 20. NOTE: Suggest API supports only few filters at the moment: \"objecttype\", \"type\" and \"mimetype\". For now, schema specific filters cannot be used to filter suggestions.
    filterOptions :: (Core.Maybe [FilterOptions]),
    -- | The source of restriction.
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceRestriction' with the minimum fields required to make a request.
newDataSourceRestriction ::
  DataSourceRestriction
newDataSourceRestriction =
  DataSourceRestriction {filterOptions = Core.Nothing, source = Core.Nothing}

instance Core.FromJSON DataSourceRestriction where
  parseJSON =
    Core.withObject
      "DataSourceRestriction"
      ( \o ->
          DataSourceRestriction
            Core.<$> (o Core..:? "filterOptions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON DataSourceRestriction where
  toJSON DataSourceRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("filterOptions" Core..=) Core.<$> filterOptions,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | Represents a whole calendar date, for example a date of birth. The time of day and time zone are either specified elsewhere or are not significant. The date is relative to the <https://en.wikipedia.org/wiki/Proleptic_Gregorian_calendar Proleptic Gregorian Calendar>. The date must be a valid calendar date between the year 1 and 9999.
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of month. Must be from 1 to 31 and valid for the year and month.
    day :: (Core.Maybe Core.Int32),
    -- | Month of date. Must be from 1 to 12.
    month :: (Core.Maybe Core.Int32),
    -- | Year of date. Must be from 1 to 9999.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | Optional. Provides a search operator for date properties. Search operators let users restrict the query to specific fields relevant to the type of item being searched.
--
-- /See:/ 'newDateOperatorOptions' smart constructor.
data DateOperatorOptions = DateOperatorOptions
  { -- | Indicates the operator name required in the query in order to isolate the date property using the greater-than operator. For example, if greaterThanOperatorName is /closedafter/ and the property\'s name is /closeDate/, then queries like /closedafter:\<value>/ show results only where the value of the property named /closeDate/ is later than /\<value>/. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    greaterThanOperatorName :: (Core.Maybe Core.Text),
    -- | Indicates the operator name required in the query in order to isolate the date property using the less-than operator. For example, if lessThanOperatorName is /closedbefore/ and the property\'s name is /closeDate/, then queries like /closedbefore:\<value>/ show results only where the value of the property named /closeDate/ is earlier than /\<value>/. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    lessThanOperatorName :: (Core.Maybe Core.Text),
    -- | Indicates the actual string required in the query in order to isolate the date property. For example, suppose an issue tracking schema object has a property named /closeDate/ that specifies an operator with an operatorName of /closedon/. For searches on that data, queries like /closedon:\<value>/ show results only where the value of the /closeDate/ property matches /\<value>/. By contrast, a search that uses the same /\<value>/ without an operator returns all items where /\<value>/ matches the value of any String properties or text within the content field for the indexed datasource. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateOperatorOptions' with the minimum fields required to make a request.
newDateOperatorOptions ::
  DateOperatorOptions
newDateOperatorOptions =
  DateOperatorOptions
    { greaterThanOperatorName = Core.Nothing,
      lessThanOperatorName = Core.Nothing,
      operatorName = Core.Nothing
    }

instance Core.FromJSON DateOperatorOptions where
  parseJSON =
    Core.withObject
      "DateOperatorOptions"
      ( \o ->
          DateOperatorOptions
            Core.<$> (o Core..:? "greaterThanOperatorName")
            Core.<*> (o Core..:? "lessThanOperatorName")
            Core.<*> (o Core..:? "operatorName")
      )

instance Core.ToJSON DateOperatorOptions where
  toJSON DateOperatorOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("greaterThanOperatorName" Core..=)
              Core.<$> greaterThanOperatorName,
            ("lessThanOperatorName" Core..=)
              Core.<$> lessThanOperatorName,
            ("operatorName" Core..=) Core.<$> operatorName
          ]
      )

-- | Options for date properties.
--
-- /See:/ 'newDatePropertyOptions' smart constructor.
newtype DatePropertyOptions = DatePropertyOptions
  { -- | If set, describes how the date should be used as a search operator.
    operatorOptions :: (Core.Maybe DateOperatorOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatePropertyOptions' with the minimum fields required to make a request.
newDatePropertyOptions ::
  DatePropertyOptions
newDatePropertyOptions = DatePropertyOptions {operatorOptions = Core.Nothing}

instance Core.FromJSON DatePropertyOptions where
  parseJSON =
    Core.withObject
      "DatePropertyOptions"
      ( \o ->
          DatePropertyOptions
            Core.<$> (o Core..:? "operatorOptions")
      )

instance Core.ToJSON DatePropertyOptions where
  toJSON DatePropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorOptions" Core..=)
              Core.<$> operatorOptions
          ]
      )

-- | List of date values.
--
-- /See:/ 'newDateValues' smart constructor.
newtype DateValues = DateValues
  { -- |
    values :: (Core.Maybe [Date])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateValues' with the minimum fields required to make a request.
newDateValues ::
  DateValues
newDateValues = DateValues {values = Core.Nothing}

instance Core.FromJSON DateValues where
  parseJSON =
    Core.withObject
      "DateValues"
      ( \o ->
          DateValues
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON DateValues where
  toJSON DateValues {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Shared request debug options for all cloudsearch RPC methods.
--
-- /See:/ 'newDebugOptions' smart constructor.
newtype DebugOptions = DebugOptions
  { -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    enableDebugging :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DebugOptions' with the minimum fields required to make a request.
newDebugOptions ::
  DebugOptions
newDebugOptions = DebugOptions {enableDebugging = Core.Nothing}

instance Core.FromJSON DebugOptions where
  parseJSON =
    Core.withObject
      "DebugOptions"
      ( \o ->
          DebugOptions Core.<$> (o Core..:? "enableDebugging")
      )

instance Core.ToJSON DebugOptions where
  toJSON DebugOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableDebugging" Core..=)
              Core.<$> enableDebugging
          ]
      )

--
-- /See:/ 'newDeleteQueueItemsRequest' smart constructor.
data DeleteQueueItemsRequest = DeleteQueueItemsRequest
  { -- | Name of connector making this call. Format: datasources\/{source_id}\/connectors\/{ID}
    connectorName :: (Core.Maybe Core.Text),
    -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions),
    -- | Name of a queue to delete items from.
    queue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteQueueItemsRequest' with the minimum fields required to make a request.
newDeleteQueueItemsRequest ::
  DeleteQueueItemsRequest
newDeleteQueueItemsRequest =
  DeleteQueueItemsRequest
    { connectorName = Core.Nothing,
      debugOptions = Core.Nothing,
      queue = Core.Nothing
    }

instance Core.FromJSON DeleteQueueItemsRequest where
  parseJSON =
    Core.withObject
      "DeleteQueueItemsRequest"
      ( \o ->
          DeleteQueueItemsRequest
            Core.<$> (o Core..:? "connectorName")
            Core.<*> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "queue")
      )

instance Core.ToJSON DeleteQueueItemsRequest where
  toJSON DeleteQueueItemsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectorName" Core..=) Core.<$> connectorName,
            ("debugOptions" Core..=) Core.<$> debugOptions,
            ("queue" Core..=) Core.<$> queue
          ]
      )

-- | A reference to a top-level property within the object that should be displayed in search results. The values of the chosen properties is displayed in the search results along with the display label for that property if one is specified. If a display label is not specified, only the values is shown.
--
-- /See:/ 'newDisplayedProperty' smart constructor.
newtype DisplayedProperty = DisplayedProperty
  { -- | The name of the top-level property as defined in a property definition for the object. If the name is not a defined property in the schema, an error is given when attempting to update the schema.
    propertyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DisplayedProperty' with the minimum fields required to make a request.
newDisplayedProperty ::
  DisplayedProperty
newDisplayedProperty = DisplayedProperty {propertyName = Core.Nothing}

instance Core.FromJSON DisplayedProperty where
  parseJSON =
    Core.withObject
      "DisplayedProperty"
      ( \o ->
          DisplayedProperty
            Core.<$> (o Core..:? "propertyName")
      )

instance Core.ToJSON DisplayedProperty where
  toJSON DisplayedProperty {..} =
    Core.object
      ( Core.catMaybes
          [("propertyName" Core..=) Core.<$> propertyName]
      )

--
-- /See:/ 'newDmId' smart constructor.
newtype DmId = DmId
  { -- | Unique server assigned Id, per Direct Message Space.
    dmId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DmId' with the minimum fields required to make a request.
newDmId ::
  DmId
newDmId = DmId {dmId = Core.Nothing}

instance Core.FromJSON DmId where
  parseJSON =
    Core.withObject
      "DmId"
      (\o -> DmId Core.<$> (o Core..:? "dmId"))

instance Core.ToJSON DmId where
  toJSON DmId {..} =
    Core.object
      (Core.catMaybes [("dmId" Core..=) Core.<$> dmId])

-- | Used to provide a search operator for double properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.
--
-- /See:/ 'newDoubleOperatorOptions' smart constructor.
newtype DoubleOperatorOptions = DoubleOperatorOptions
  { -- | Indicates the operator name required in the query in order to use the double property in sorting or as a facet. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleOperatorOptions' with the minimum fields required to make a request.
newDoubleOperatorOptions ::
  DoubleOperatorOptions
newDoubleOperatorOptions = DoubleOperatorOptions {operatorName = Core.Nothing}

instance Core.FromJSON DoubleOperatorOptions where
  parseJSON =
    Core.withObject
      "DoubleOperatorOptions"
      ( \o ->
          DoubleOperatorOptions
            Core.<$> (o Core..:? "operatorName")
      )

instance Core.ToJSON DoubleOperatorOptions where
  toJSON DoubleOperatorOptions {..} =
    Core.object
      ( Core.catMaybes
          [("operatorName" Core..=) Core.<$> operatorName]
      )

-- | Options for double properties.
--
-- /See:/ 'newDoublePropertyOptions' smart constructor.
newtype DoublePropertyOptions = DoublePropertyOptions
  { -- | If set, describes how the double should be used as a search operator.
    operatorOptions :: (Core.Maybe DoubleOperatorOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoublePropertyOptions' with the minimum fields required to make a request.
newDoublePropertyOptions ::
  DoublePropertyOptions
newDoublePropertyOptions =
  DoublePropertyOptions {operatorOptions = Core.Nothing}

instance Core.FromJSON DoublePropertyOptions where
  parseJSON =
    Core.withObject
      "DoublePropertyOptions"
      ( \o ->
          DoublePropertyOptions
            Core.<$> (o Core..:? "operatorOptions")
      )

instance Core.ToJSON DoublePropertyOptions where
  toJSON DoublePropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorOptions" Core..=)
              Core.<$> operatorOptions
          ]
      )

-- | List of double values.
--
-- /See:/ 'newDoubleValues' smart constructor.
newtype DoubleValues = DoubleValues
  { -- |
    values :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleValues' with the minimum fields required to make a request.
newDoubleValues ::
  DoubleValues
newDoubleValues = DoubleValues {values = Core.Nothing}

instance Core.FromJSON DoubleValues where
  parseJSON =
    Core.withObject
      "DoubleValues"
      ( \o ->
          DoubleValues
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON DoubleValues where
  toJSON DoubleValues {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Drive follow-up search restricts (e.g. \"followup:suggestions\").
--
-- /See:/ 'newDriveFollowUpRestrict' smart constructor.
newtype DriveFollowUpRestrict = DriveFollowUpRestrict
  { -- |
    type' :: (Core.Maybe DriveFollowUpRestrict_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFollowUpRestrict' with the minimum fields required to make a request.
newDriveFollowUpRestrict ::
  DriveFollowUpRestrict
newDriveFollowUpRestrict = DriveFollowUpRestrict {type' = Core.Nothing}

instance Core.FromJSON DriveFollowUpRestrict where
  parseJSON =
    Core.withObject
      "DriveFollowUpRestrict"
      ( \o ->
          DriveFollowUpRestrict Core.<$> (o Core..:? "type")
      )

instance Core.ToJSON DriveFollowUpRestrict where
  toJSON DriveFollowUpRestrict {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | Drive location search restricts (e.g. \"is:starred\").
--
-- /See:/ 'newDriveLocationRestrict' smart constructor.
newtype DriveLocationRestrict = DriveLocationRestrict
  { -- |
    type' :: (Core.Maybe DriveLocationRestrict_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveLocationRestrict' with the minimum fields required to make a request.
newDriveLocationRestrict ::
  DriveLocationRestrict
newDriveLocationRestrict = DriveLocationRestrict {type' = Core.Nothing}

instance Core.FromJSON DriveLocationRestrict where
  parseJSON =
    Core.withObject
      "DriveLocationRestrict"
      ( \o ->
          DriveLocationRestrict Core.<$> (o Core..:? "type")
      )

instance Core.ToJSON DriveLocationRestrict where
  toJSON DriveLocationRestrict {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | Drive mime-type search restricts (e.g. \"type:pdf\").
--
-- /See:/ 'newDriveMimeTypeRestrict' smart constructor.
newtype DriveMimeTypeRestrict = DriveMimeTypeRestrict
  { -- |
    type' :: (Core.Maybe DriveMimeTypeRestrict_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveMimeTypeRestrict' with the minimum fields required to make a request.
newDriveMimeTypeRestrict ::
  DriveMimeTypeRestrict
newDriveMimeTypeRestrict = DriveMimeTypeRestrict {type' = Core.Nothing}

instance Core.FromJSON DriveMimeTypeRestrict where
  parseJSON =
    Core.withObject
      "DriveMimeTypeRestrict"
      ( \o ->
          DriveMimeTypeRestrict Core.<$> (o Core..:? "type")
      )

instance Core.ToJSON DriveMimeTypeRestrict where
  toJSON DriveMimeTypeRestrict {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | The time span search restrict (e.g. \"after:2017-09-11 before:2017-09-12\").
--
-- /See:/ 'newDriveTimeSpanRestrict' smart constructor.
newtype DriveTimeSpanRestrict = DriveTimeSpanRestrict
  { -- |
    type' :: (Core.Maybe DriveTimeSpanRestrict_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTimeSpanRestrict' with the minimum fields required to make a request.
newDriveTimeSpanRestrict ::
  DriveTimeSpanRestrict
newDriveTimeSpanRestrict = DriveTimeSpanRestrict {type' = Core.Nothing}

instance Core.FromJSON DriveTimeSpanRestrict where
  parseJSON =
    Core.withObject
      "DriveTimeSpanRestrict"
      ( \o ->
          DriveTimeSpanRestrict Core.<$> (o Core..:? "type")
      )

instance Core.ToJSON DriveTimeSpanRestrict where
  toJSON DriveTimeSpanRestrict {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | This is the proto for holding space level scoring information. This data is used for logging in query-api server and for testing purposes.
--
-- /See:/ 'newDynamiteSpacesScoringInfo' smart constructor.
data DynamiteSpacesScoringInfo = DynamiteSpacesScoringInfo
  { -- |
    affinityScore :: (Core.Maybe Core.Double),
    -- |
    commonContactCountAffinityScore :: (Core.Maybe Core.Double),
    -- |
    contactsIntersectionCount :: (Core.Maybe Core.Double),
    -- |
    finalScore :: (Core.Maybe Core.Double),
    -- |
    freshnessScore :: (Core.Maybe Core.Double),
    -- |
    joinedSpacesAffinityScore :: (Core.Maybe Core.Double),
    -- |
    messageScore :: (Core.Maybe Core.Double),
    -- |
    smallContactListAffinityScore :: (Core.Maybe Core.Double),
    -- |
    smallUnjoinedSpacesAffinityScore :: (Core.Maybe Core.Double),
    -- |
    spaceAgeInDays :: (Core.Maybe Core.Double),
    -- |
    topicalityScore :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamiteSpacesScoringInfo' with the minimum fields required to make a request.
newDynamiteSpacesScoringInfo ::
  DynamiteSpacesScoringInfo
newDynamiteSpacesScoringInfo =
  DynamiteSpacesScoringInfo
    { affinityScore = Core.Nothing,
      commonContactCountAffinityScore = Core.Nothing,
      contactsIntersectionCount = Core.Nothing,
      finalScore = Core.Nothing,
      freshnessScore = Core.Nothing,
      joinedSpacesAffinityScore = Core.Nothing,
      messageScore = Core.Nothing,
      smallContactListAffinityScore = Core.Nothing,
      smallUnjoinedSpacesAffinityScore = Core.Nothing,
      spaceAgeInDays = Core.Nothing,
      topicalityScore = Core.Nothing
    }

instance Core.FromJSON DynamiteSpacesScoringInfo where
  parseJSON =
    Core.withObject
      "DynamiteSpacesScoringInfo"
      ( \o ->
          DynamiteSpacesScoringInfo
            Core.<$> (o Core..:? "affinityScore")
            Core.<*> (o Core..:? "commonContactCountAffinityScore")
            Core.<*> (o Core..:? "contactsIntersectionCount")
            Core.<*> (o Core..:? "finalScore")
            Core.<*> (o Core..:? "freshnessScore")
            Core.<*> (o Core..:? "joinedSpacesAffinityScore")
            Core.<*> (o Core..:? "messageScore")
            Core.<*> (o Core..:? "smallContactListAffinityScore")
            Core.<*> (o Core..:? "smallUnjoinedSpacesAffinityScore")
            Core.<*> (o Core..:? "spaceAgeInDays")
            Core.<*> (o Core..:? "topicalityScore")
      )

instance Core.ToJSON DynamiteSpacesScoringInfo where
  toJSON DynamiteSpacesScoringInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("affinityScore" Core..=) Core.<$> affinityScore,
            ("commonContactCountAffinityScore" Core..=)
              Core.<$> commonContactCountAffinityScore,
            ("contactsIntersectionCount" Core..=)
              Core.<$> contactsIntersectionCount,
            ("finalScore" Core..=) Core.<$> finalScore,
            ("freshnessScore" Core..=) Core.<$> freshnessScore,
            ("joinedSpacesAffinityScore" Core..=)
              Core.<$> joinedSpacesAffinityScore,
            ("messageScore" Core..=) Core.<$> messageScore,
            ("smallContactListAffinityScore" Core..=)
              Core.<$> smallContactListAffinityScore,
            ("smallUnjoinedSpacesAffinityScore" Core..=)
              Core.<$> smallUnjoinedSpacesAffinityScore,
            ("spaceAgeInDays" Core..=) Core.<$> spaceAgeInDays,
            ("topicalityScore" Core..=)
              Core.<$> topicalityScore
          ]
      )

-- | A person\'s email address.
--
-- /See:/ 'newEmailAddress' smart constructor.
newtype EmailAddress = EmailAddress
  { -- | The email address.
    emailAddress :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmailAddress' with the minimum fields required to make a request.
newEmailAddress ::
  EmailAddress
newEmailAddress = EmailAddress {emailAddress = Core.Nothing}

instance Core.FromJSON EmailAddress where
  parseJSON =
    Core.withObject
      "EmailAddress"
      ( \o ->
          EmailAddress Core.<$> (o Core..:? "emailAddress")
      )

instance Core.ToJSON EmailAddress where
  toJSON EmailAddress {..} =
    Core.object
      ( Core.catMaybes
          [("emailAddress" Core..=) Core.<$> emailAddress]
      )

--
-- /See:/ 'newEmoji' smart constructor.
data Emoji = Emoji
  { -- | A custom emoji.
    customEmoji :: (Core.Maybe CustomEmoji),
    -- | A basic emoji represented by a unicode string.
    unicode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Emoji' with the minimum fields required to make a request.
newEmoji ::
  Emoji
newEmoji = Emoji {customEmoji = Core.Nothing, unicode = Core.Nothing}

instance Core.FromJSON Emoji where
  parseJSON =
    Core.withObject
      "Emoji"
      ( \o ->
          Emoji
            Core.<$> (o Core..:? "customEmoji")
            Core.<*> (o Core..:? "unicode")
      )

instance Core.ToJSON Emoji where
  toJSON Emoji {..} =
    Core.object
      ( Core.catMaybes
          [ ("customEmoji" Core..=) Core.<$> customEmoji,
            ("unicode" Core..=) Core.<$> unicode
          ]
      )

-- | Used to provide a search operator for enum properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched. For example, if you provide no operator for a /priority/ enum property with possible values /p0/ and /p1/, a query that contains the term /p0/ returns items that have /p0/ as the value of the /priority/ property, as well as any items that contain the string /p0/ in other fields. If you provide an operator name for the enum, such as /priority/, then search users can use that operator to refine results to only items that have /p0/ as this property\'s value, with the query /priority:p0/.
--
-- /See:/ 'newEnumOperatorOptions' smart constructor.
newtype EnumOperatorOptions = EnumOperatorOptions
  { -- | Indicates the operator name required in the query in order to isolate the enum property. For example, if operatorName is /priority/ and the property\'s name is /priorityVal/, then queries like /priority:\<value>/ show results only where the value of the property named /priorityVal/ matches /\<value>/. By contrast, a search that uses the same /\<value>/ without an operator returns all items where /\<value>/ matches the value of any String properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnumOperatorOptions' with the minimum fields required to make a request.
newEnumOperatorOptions ::
  EnumOperatorOptions
newEnumOperatorOptions = EnumOperatorOptions {operatorName = Core.Nothing}

instance Core.FromJSON EnumOperatorOptions where
  parseJSON =
    Core.withObject
      "EnumOperatorOptions"
      ( \o ->
          EnumOperatorOptions
            Core.<$> (o Core..:? "operatorName")
      )

instance Core.ToJSON EnumOperatorOptions where
  toJSON EnumOperatorOptions {..} =
    Core.object
      ( Core.catMaybes
          [("operatorName" Core..=) Core.<$> operatorName]
      )

-- | Options for enum properties, which allow you to define a restricted set of strings to match user queries, set rankings for those string values, and define an operator name to be paired with those strings so that users can narrow results to only items with a specific value. For example, for items in a request tracking system with priority information, you could define /p0/ as an allowable enum value and tie this enum to the operator name /priority/ so that search users could add /priority:p0/ to their query to restrict the set of results to only those items indexed with the value /p0/.
--
-- /See:/ 'newEnumPropertyOptions' smart constructor.
data EnumPropertyOptions = EnumPropertyOptions
  { -- | If set, describes how the enum should be used as a search operator.
    operatorOptions :: (Core.Maybe EnumOperatorOptions),
    -- | Used to specify the ordered ranking for the enumeration that determines how the integer values provided in the possible EnumValuePairs are used to rank results. If specified, integer values must be provided for all possible EnumValuePair values given for this property. Can only be used if isRepeatable is false.
    orderedRanking :: (Core.Maybe EnumPropertyOptions_OrderedRanking),
    -- | The list of possible values for the enumeration property. All EnumValuePairs must provide a string value. If you specify an integer value for one EnumValuePair, then all possible EnumValuePairs must provide an integer value. Both the string value and integer value must be unique over all possible values. Once set, possible values cannot be removed or modified. If you supply an ordered ranking and think you might insert additional enum values in the future, leave gaps in the initial integer values to allow adding a value in between previously registered values. The maximum number of elements is 100.
    possibleValues :: (Core.Maybe [EnumValuePair])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnumPropertyOptions' with the minimum fields required to make a request.
newEnumPropertyOptions ::
  EnumPropertyOptions
newEnumPropertyOptions =
  EnumPropertyOptions
    { operatorOptions = Core.Nothing,
      orderedRanking = Core.Nothing,
      possibleValues = Core.Nothing
    }

instance Core.FromJSON EnumPropertyOptions where
  parseJSON =
    Core.withObject
      "EnumPropertyOptions"
      ( \o ->
          EnumPropertyOptions
            Core.<$> (o Core..:? "operatorOptions")
            Core.<*> (o Core..:? "orderedRanking")
            Core.<*> (o Core..:? "possibleValues" Core..!= Core.mempty)
      )

instance Core.ToJSON EnumPropertyOptions where
  toJSON EnumPropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorOptions" Core..=)
              Core.<$> operatorOptions,
            ("orderedRanking" Core..=) Core.<$> orderedRanking,
            ("possibleValues" Core..=) Core.<$> possibleValues
          ]
      )

-- | The enumeration value pair defines two things: a required string value and an optional integer value. The string value defines the necessary query term required to retrieve that item, such as /p0/ for a priority item. The integer value determines the ranking of that string value relative to other enumerated values for the same property. For example, you might associate /p0/ with /0/ and define another enum pair such as /p1/ and /1/. You must use the integer value in combination with ordered ranking to set the ranking of a given value relative to other enumerated values for the same property name. Here, a ranking order of DESCENDING for /priority/ properties results in a ranking boost for items indexed with a value of /p0/ compared to items indexed with a value of /p1/. Without a specified ranking order, the integer value has no effect on item ranking.
--
-- /See:/ 'newEnumValuePair' smart constructor.
data EnumValuePair = EnumValuePair
  { -- | The integer value of the EnumValuePair which must be non-negative. Optional.
    integerValue :: (Core.Maybe Core.Int32),
    -- | The string value of the EnumValuePair. The maximum length is 32 characters.
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnumValuePair' with the minimum fields required to make a request.
newEnumValuePair ::
  EnumValuePair
newEnumValuePair =
  EnumValuePair {integerValue = Core.Nothing, stringValue = Core.Nothing}

instance Core.FromJSON EnumValuePair where
  parseJSON =
    Core.withObject
      "EnumValuePair"
      ( \o ->
          EnumValuePair
            Core.<$> (o Core..:? "integerValue")
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON EnumValuePair where
  toJSON EnumValuePair {..} =
    Core.object
      ( Core.catMaybes
          [ ("integerValue" Core..=) Core.<$> integerValue,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

-- | List of enum values.
--
-- /See:/ 'newEnumValues' smart constructor.
newtype EnumValues = EnumValues
  { -- | The maximum allowable length for string values is 32 characters.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnumValues' with the minimum fields required to make a request.
newEnumValues ::
  EnumValues
newEnumValues = EnumValues {values = Core.Nothing}

instance Core.FromJSON EnumValues where
  parseJSON =
    Core.withObject
      "EnumValues"
      ( \o ->
          EnumValues
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON EnumValues where
  toJSON EnumValues {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Error information about the response.
--
-- /See:/ 'newErrorInfo' smart constructor.
newtype ErrorInfo = ErrorInfo
  { -- |
    errorMessages :: (Core.Maybe [ErrorMessage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorInfo' with the minimum fields required to make a request.
newErrorInfo ::
  ErrorInfo
newErrorInfo = ErrorInfo {errorMessages = Core.Nothing}

instance Core.FromJSON ErrorInfo where
  parseJSON =
    Core.withObject
      "ErrorInfo"
      ( \o ->
          ErrorInfo
            Core.<$> (o Core..:? "errorMessages" Core..!= Core.mempty)
      )

instance Core.ToJSON ErrorInfo where
  toJSON ErrorInfo {..} =
    Core.object
      ( Core.catMaybes
          [("errorMessages" Core..=) Core.<$> errorMessages]
      )

-- | Error message per source response.
--
-- /See:/ 'newErrorMessage' smart constructor.
data ErrorMessage = ErrorMessage
  { -- |
    errorMessage :: (Core.Maybe Core.Text),
    -- |
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorMessage' with the minimum fields required to make a request.
newErrorMessage ::
  ErrorMessage
newErrorMessage =
  ErrorMessage {errorMessage = Core.Nothing, source = Core.Nothing}

instance Core.FromJSON ErrorMessage where
  parseJSON =
    Core.withObject
      "ErrorMessage"
      ( \o ->
          ErrorMessage
            Core.<$> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON ErrorMessage where
  toJSON ErrorMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorMessage" Core..=) Core.<$> errorMessage,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | A bucket in a facet is the basic unit of operation. A bucket can comprise either a single value OR a contiguous range of values, depending on the type of the field bucketed. FacetBucket is currently used only for returning the response object.
--
-- /See:/ 'newFacetBucket' smart constructor.
data FacetBucket = FacetBucket
  { -- | Number of results that match the bucket value. Counts are only returned for searches when count accuracy is ensured. Cloud Search does not guarantee facet counts for any query and facet counts might be present only intermittently, even for identical queries. Do not build dependencies on facet count existence; instead use facet ount percentages which are always returned.
    count :: (Core.Maybe Core.Int32),
    -- | Percent of results that match the bucket value. The returned value is between (0-100], and is rounded down to an integer if fractional. If the value is not explicitly returned, it represents a percentage value that rounds to 0. Percentages are returned for all searches, but are an estimate. Because percentages are always returned, you should render percentages instead of counts.
    percentage :: (Core.Maybe Core.Int32),
    -- |
    value :: (Core.Maybe Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FacetBucket' with the minimum fields required to make a request.
newFacetBucket ::
  FacetBucket
newFacetBucket =
  FacetBucket
    { count = Core.Nothing,
      percentage = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON FacetBucket where
  parseJSON =
    Core.withObject
      "FacetBucket"
      ( \o ->
          FacetBucket
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "percentage")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON FacetBucket where
  toJSON FacetBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("percentage" Core..=) Core.<$> percentage,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Specifies operators to return facet results for. There will be one FacetResult for every source/name\/object/type\/operator_name combination.
--
-- /See:/ 'newFacetOptions' smart constructor.
data FacetOptions = FacetOptions
  { -- | Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
    numFacetBuckets :: (Core.Maybe Core.Int32),
    -- | If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
    objectType :: (Core.Maybe Core.Text),
    -- | Name of the operator chosen for faceting. \@see cloudsearch.SchemaPropertyOptions
    operatorName :: (Core.Maybe Core.Text),
    -- | Source name to facet on. Format: datasources\/{source_id} If empty, all data sources will be used.
    sourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FacetOptions' with the minimum fields required to make a request.
newFacetOptions ::
  FacetOptions
newFacetOptions =
  FacetOptions
    { numFacetBuckets = Core.Nothing,
      objectType = Core.Nothing,
      operatorName = Core.Nothing,
      sourceName = Core.Nothing
    }

instance Core.FromJSON FacetOptions where
  parseJSON =
    Core.withObject
      "FacetOptions"
      ( \o ->
          FacetOptions
            Core.<$> (o Core..:? "numFacetBuckets")
            Core.<*> (o Core..:? "objectType")
            Core.<*> (o Core..:? "operatorName")
            Core.<*> (o Core..:? "sourceName")
      )

instance Core.ToJSON FacetOptions where
  toJSON FacetOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("numFacetBuckets" Core..=)
              Core.<$> numFacetBuckets,
            ("objectType" Core..=) Core.<$> objectType,
            ("operatorName" Core..=) Core.<$> operatorName,
            ("sourceName" Core..=) Core.<$> sourceName
          ]
      )

-- | Source specific facet response
--
-- /See:/ 'newFacetResult' smart constructor.
data FacetResult = FacetResult
  { -- | FacetBuckets for values in response containing at least a single result.
    buckets :: (Core.Maybe [FacetBucket]),
    -- | Object type for which facet results are returned. Can be empty.
    objectType :: (Core.Maybe Core.Text),
    -- | Name of the operator chosen for faceting. \@see cloudsearch.SchemaPropertyOptions
    operatorName :: (Core.Maybe Core.Text),
    -- | Source name for which facet results are returned. Will not be empty.
    sourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FacetResult' with the minimum fields required to make a request.
newFacetResult ::
  FacetResult
newFacetResult =
  FacetResult
    { buckets = Core.Nothing,
      objectType = Core.Nothing,
      operatorName = Core.Nothing,
      sourceName = Core.Nothing
    }

instance Core.FromJSON FacetResult where
  parseJSON =
    Core.withObject
      "FacetResult"
      ( \o ->
          FacetResult
            Core.<$> (o Core..:? "buckets" Core..!= Core.mempty)
            Core.<*> (o Core..:? "objectType")
            Core.<*> (o Core..:? "operatorName")
            Core.<*> (o Core..:? "sourceName")
      )

instance Core.ToJSON FacetResult where
  toJSON FacetResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("buckets" Core..=) Core.<$> buckets,
            ("objectType" Core..=) Core.<$> objectType,
            ("operatorName" Core..=) Core.<$> operatorName,
            ("sourceName" Core..=) Core.<$> sourceName
          ]
      )

--
-- /See:/ 'newFieldViolation' smart constructor.
data FieldViolation = FieldViolation
  { -- | Description of the error.
    description :: (Core.Maybe Core.Text),
    -- | Path of field with violation.
    field :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldViolation' with the minimum fields required to make a request.
newFieldViolation ::
  FieldViolation
newFieldViolation =
  FieldViolation {description = Core.Nothing, field = Core.Nothing}

instance Core.FromJSON FieldViolation where
  parseJSON =
    Core.withObject
      "FieldViolation"
      ( \o ->
          FieldViolation
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "field")
      )

instance Core.ToJSON FieldViolation where
  toJSON FieldViolation {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("field" Core..=) Core.<$> field
          ]
      )

-- | A generic way of expressing filters in a query, which supports two approaches: __1. Setting a ValueFilter.__ The name must match an operator_name defined in the schema for your data source. __2. Setting a CompositeFilter.__ The filters are evaluated using the logical operator. The top-level operators can only be either an AND or a NOT. AND can appear only at the top-most level. OR can appear only under a top-level AND.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter
  { -- |
    compositeFilter :: (Core.Maybe CompositeFilter),
    -- |
    valueFilter :: (Core.Maybe ValueFilter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
newFilter ::
  Filter
newFilter = Filter {compositeFilter = Core.Nothing, valueFilter = Core.Nothing}

instance Core.FromJSON Filter where
  parseJSON =
    Core.withObject
      "Filter"
      ( \o ->
          Filter
            Core.<$> (o Core..:? "compositeFilter")
            Core.<*> (o Core..:? "valueFilter")
      )

instance Core.ToJSON Filter where
  toJSON Filter {..} =
    Core.object
      ( Core.catMaybes
          [ ("compositeFilter" Core..=)
              Core.<$> compositeFilter,
            ("valueFilter" Core..=) Core.<$> valueFilter
          ]
      )

-- | Filter options to be applied on query.
--
-- /See:/ 'newFilterOptions' smart constructor.
data FilterOptions = FilterOptions
  { -- | Generic filter to restrict the search, such as @lang:en@, @site:xyz@.
    filter :: (Core.Maybe Filter),
    -- | If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.
    objectType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterOptions' with the minimum fields required to make a request.
newFilterOptions ::
  FilterOptions
newFilterOptions =
  FilterOptions {filter = Core.Nothing, objectType = Core.Nothing}

instance Core.FromJSON FilterOptions where
  parseJSON =
    Core.withObject
      "FilterOptions"
      ( \o ->
          FilterOptions
            Core.<$> (o Core..:? "filter")
            Core.<*> (o Core..:? "objectType")
      )

instance Core.ToJSON FilterOptions where
  toJSON FilterOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("filter" Core..=) Core.<$> filter,
            ("objectType" Core..=) Core.<$> objectType
          ]
      )

-- | Indicates which freshness property to use when adjusting search ranking for an item. Fresher, more recent dates indicate higher quality. Use the freshness option property that best works with your data. For fileshare documents, last modified time is most relevant. For calendar event data, the time when the event occurs is a more relevant freshness indicator. In this way, calendar events that occur closer to the time of the search query are considered higher quality and ranked accordingly.
--
-- /See:/ 'newFreshnessOptions' smart constructor.
data FreshnessOptions = FreshnessOptions
  { -- | The duration after which an object should be considered stale. The default value is 180 days (in seconds).
    freshnessDuration :: (Core.Maybe Core.GDuration),
    -- | This property indicates the freshness level of the object in the index. If set, this property must be a top-level property within the property definitions and it must be a timestamp type or date type. Otherwise, the Indexing API uses updateTime as the freshness indicator. The maximum length is 256 characters. When a property is used to calculate freshness, the value defaults to 2 years from the current time.
    freshnessProperty :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreshnessOptions' with the minimum fields required to make a request.
newFreshnessOptions ::
  FreshnessOptions
newFreshnessOptions =
  FreshnessOptions
    { freshnessDuration = Core.Nothing,
      freshnessProperty = Core.Nothing
    }

instance Core.FromJSON FreshnessOptions where
  parseJSON =
    Core.withObject
      "FreshnessOptions"
      ( \o ->
          FreshnessOptions
            Core.<$> (o Core..:? "freshnessDuration")
            Core.<*> (o Core..:? "freshnessProperty")
      )

instance Core.ToJSON FreshnessOptions where
  toJSON FreshnessOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("freshnessDuration" Core..=)
              Core.<$> freshnessDuration,
            ("freshnessProperty" Core..=)
              Core.<$> freshnessProperty
          ]
      )

--
-- /See:/ 'newGSuitePrincipal' smart constructor.
data GSuitePrincipal = GSuitePrincipal
  { -- | This principal represents all users of the G Suite domain of the customer.
    gsuiteDomain :: (Core.Maybe Core.Bool),
    -- | This principal references a G Suite group account
    gsuiteGroupEmail :: (Core.Maybe Core.Text),
    -- | This principal references a G Suite user account
    gsuiteUserEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GSuitePrincipal' with the minimum fields required to make a request.
newGSuitePrincipal ::
  GSuitePrincipal
newGSuitePrincipal =
  GSuitePrincipal
    { gsuiteDomain = Core.Nothing,
      gsuiteGroupEmail = Core.Nothing,
      gsuiteUserEmail = Core.Nothing
    }

instance Core.FromJSON GSuitePrincipal where
  parseJSON =
    Core.withObject
      "GSuitePrincipal"
      ( \o ->
          GSuitePrincipal
            Core.<$> (o Core..:? "gsuiteDomain")
            Core.<*> (o Core..:? "gsuiteGroupEmail")
            Core.<*> (o Core..:? "gsuiteUserEmail")
      )

instance Core.ToJSON GSuitePrincipal where
  toJSON GSuitePrincipal {..} =
    Core.object
      ( Core.catMaybes
          [ ("gsuiteDomain" Core..=) Core.<$> gsuiteDomain,
            ("gsuiteGroupEmail" Core..=)
              Core.<$> gsuiteGroupEmail,
            ("gsuiteUserEmail" Core..=)
              Core.<$> gsuiteUserEmail
          ]
      )

--
-- /See:/ 'newGetCustomerIndexStatsResponse' smart constructor.
data GetCustomerIndexStatsResponse = GetCustomerIndexStatsResponse
  { -- | Average item count for the given date range for which billing is done.
    averageIndexedItemCount :: (Core.Maybe Core.Int64),
    -- | Summary of indexed item counts, one for each day in the requested range.
    stats :: (Core.Maybe [CustomerIndexStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetCustomerIndexStatsResponse' with the minimum fields required to make a request.
newGetCustomerIndexStatsResponse ::
  GetCustomerIndexStatsResponse
newGetCustomerIndexStatsResponse =
  GetCustomerIndexStatsResponse
    { averageIndexedItemCount = Core.Nothing,
      stats = Core.Nothing
    }

instance Core.FromJSON GetCustomerIndexStatsResponse where
  parseJSON =
    Core.withObject
      "GetCustomerIndexStatsResponse"
      ( \o ->
          GetCustomerIndexStatsResponse
            Core.<$> (o Core..:? "averageIndexedItemCount")
            Core.<*> (o Core..:? "stats" Core..!= Core.mempty)
      )

instance Core.ToJSON GetCustomerIndexStatsResponse where
  toJSON GetCustomerIndexStatsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("averageIndexedItemCount" Core..=)
              Core.. Core.AsText
              Core.<$> averageIndexedItemCount,
            ("stats" Core..=) Core.<$> stats
          ]
      )

--
-- /See:/ 'newGetCustomerQueryStatsResponse' smart constructor.
data GetCustomerQueryStatsResponse = GetCustomerQueryStatsResponse
  { -- |
    stats :: (Core.Maybe [CustomerQueryStats]),
    -- | Total successful query count (status code 200) for the given date range.
    totalQueryCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetCustomerQueryStatsResponse' with the minimum fields required to make a request.
newGetCustomerQueryStatsResponse ::
  GetCustomerQueryStatsResponse
newGetCustomerQueryStatsResponse =
  GetCustomerQueryStatsResponse
    { stats = Core.Nothing,
      totalQueryCount = Core.Nothing
    }

instance Core.FromJSON GetCustomerQueryStatsResponse where
  parseJSON =
    Core.withObject
      "GetCustomerQueryStatsResponse"
      ( \o ->
          GetCustomerQueryStatsResponse
            Core.<$> (o Core..:? "stats" Core..!= Core.mempty)
            Core.<*> (o Core..:? "totalQueryCount")
      )

instance Core.ToJSON GetCustomerQueryStatsResponse where
  toJSON GetCustomerQueryStatsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("stats" Core..=) Core.<$> stats,
            ("totalQueryCount" Core..=) Core.. Core.AsText
              Core.<$> totalQueryCount
          ]
      )

-- | Response format for search application stats for a customer.
--
-- /See:/ 'newGetCustomerSearchApplicationStatsResponse' smart constructor.
data GetCustomerSearchApplicationStatsResponse = GetCustomerSearchApplicationStatsResponse
  { -- | Average search application count for the given date range.
    averageSearchApplicationCount :: (Core.Maybe Core.Int64),
    -- | Search application stats by date.
    stats :: (Core.Maybe [CustomerSearchApplicationStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetCustomerSearchApplicationStatsResponse' with the minimum fields required to make a request.
newGetCustomerSearchApplicationStatsResponse ::
  GetCustomerSearchApplicationStatsResponse
newGetCustomerSearchApplicationStatsResponse =
  GetCustomerSearchApplicationStatsResponse
    { averageSearchApplicationCount = Core.Nothing,
      stats = Core.Nothing
    }

instance
  Core.FromJSON
    GetCustomerSearchApplicationStatsResponse
  where
  parseJSON =
    Core.withObject
      "GetCustomerSearchApplicationStatsResponse"
      ( \o ->
          GetCustomerSearchApplicationStatsResponse
            Core.<$> (o Core..:? "averageSearchApplicationCount")
            Core.<*> (o Core..:? "stats" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GetCustomerSearchApplicationStatsResponse
  where
  toJSON GetCustomerSearchApplicationStatsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("averageSearchApplicationCount" Core..=)
              Core.. Core.AsText
              Core.<$> averageSearchApplicationCount,
            ("stats" Core..=) Core.<$> stats
          ]
      )

--
-- /See:/ 'newGetCustomerSessionStatsResponse' smart constructor.
newtype GetCustomerSessionStatsResponse = GetCustomerSessionStatsResponse
  { -- |
    stats :: (Core.Maybe [CustomerSessionStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetCustomerSessionStatsResponse' with the minimum fields required to make a request.
newGetCustomerSessionStatsResponse ::
  GetCustomerSessionStatsResponse
newGetCustomerSessionStatsResponse =
  GetCustomerSessionStatsResponse {stats = Core.Nothing}

instance
  Core.FromJSON
    GetCustomerSessionStatsResponse
  where
  parseJSON =
    Core.withObject
      "GetCustomerSessionStatsResponse"
      ( \o ->
          GetCustomerSessionStatsResponse
            Core.<$> (o Core..:? "stats" Core..!= Core.mempty)
      )

instance Core.ToJSON GetCustomerSessionStatsResponse where
  toJSON GetCustomerSessionStatsResponse {..} =
    Core.object
      (Core.catMaybes [("stats" Core..=) Core.<$> stats])

--
-- /See:/ 'newGetCustomerUserStatsResponse' smart constructor.
newtype GetCustomerUserStatsResponse = GetCustomerUserStatsResponse
  { -- |
    stats :: (Core.Maybe [CustomerUserStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetCustomerUserStatsResponse' with the minimum fields required to make a request.
newGetCustomerUserStatsResponse ::
  GetCustomerUserStatsResponse
newGetCustomerUserStatsResponse =
  GetCustomerUserStatsResponse {stats = Core.Nothing}

instance Core.FromJSON GetCustomerUserStatsResponse where
  parseJSON =
    Core.withObject
      "GetCustomerUserStatsResponse"
      ( \o ->
          GetCustomerUserStatsResponse
            Core.<$> (o Core..:? "stats" Core..!= Core.mempty)
      )

instance Core.ToJSON GetCustomerUserStatsResponse where
  toJSON GetCustomerUserStatsResponse {..} =
    Core.object
      (Core.catMaybes [("stats" Core..=) Core.<$> stats])

--
-- /See:/ 'newGetDataSourceIndexStatsResponse' smart constructor.
data GetDataSourceIndexStatsResponse = GetDataSourceIndexStatsResponse
  { -- | Average item count for the given date range for which billing is done.
    averageIndexedItemCount :: (Core.Maybe Core.Int64),
    -- | Summary of indexed item counts, one for each day in the requested range.
    stats :: (Core.Maybe [DataSourceIndexStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetDataSourceIndexStatsResponse' with the minimum fields required to make a request.
newGetDataSourceIndexStatsResponse ::
  GetDataSourceIndexStatsResponse
newGetDataSourceIndexStatsResponse =
  GetDataSourceIndexStatsResponse
    { averageIndexedItemCount = Core.Nothing,
      stats = Core.Nothing
    }

instance
  Core.FromJSON
    GetDataSourceIndexStatsResponse
  where
  parseJSON =
    Core.withObject
      "GetDataSourceIndexStatsResponse"
      ( \o ->
          GetDataSourceIndexStatsResponse
            Core.<$> (o Core..:? "averageIndexedItemCount")
            Core.<*> (o Core..:? "stats" Core..!= Core.mempty)
      )

instance Core.ToJSON GetDataSourceIndexStatsResponse where
  toJSON GetDataSourceIndexStatsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("averageIndexedItemCount" Core..=)
              Core.. Core.AsText
              Core.<$> averageIndexedItemCount,
            ("stats" Core..=) Core.<$> stats
          ]
      )

-- | Response format for getting query stats for a search application between given dates.
--
-- /See:/ 'newGetSearchApplicationQueryStatsResponse' smart constructor.
data GetSearchApplicationQueryStatsResponse = GetSearchApplicationQueryStatsResponse
  { -- | Query stats per date for a search application.
    stats :: (Core.Maybe [SearchApplicationQueryStats]),
    -- | Total successful query count (status code 200) for the given date range.
    totalQueryCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetSearchApplicationQueryStatsResponse' with the minimum fields required to make a request.
newGetSearchApplicationQueryStatsResponse ::
  GetSearchApplicationQueryStatsResponse
newGetSearchApplicationQueryStatsResponse =
  GetSearchApplicationQueryStatsResponse
    { stats = Core.Nothing,
      totalQueryCount = Core.Nothing
    }

instance
  Core.FromJSON
    GetSearchApplicationQueryStatsResponse
  where
  parseJSON =
    Core.withObject
      "GetSearchApplicationQueryStatsResponse"
      ( \o ->
          GetSearchApplicationQueryStatsResponse
            Core.<$> (o Core..:? "stats" Core..!= Core.mempty)
            Core.<*> (o Core..:? "totalQueryCount")
      )

instance
  Core.ToJSON
    GetSearchApplicationQueryStatsResponse
  where
  toJSON GetSearchApplicationQueryStatsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("stats" Core..=) Core.<$> stats,
            ("totalQueryCount" Core..=) Core.. Core.AsText
              Core.<$> totalQueryCount
          ]
      )

--
-- /See:/ 'newGetSearchApplicationSessionStatsResponse' smart constructor.
newtype GetSearchApplicationSessionStatsResponse = GetSearchApplicationSessionStatsResponse
  { -- |
    stats :: (Core.Maybe [SearchApplicationSessionStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetSearchApplicationSessionStatsResponse' with the minimum fields required to make a request.
newGetSearchApplicationSessionStatsResponse ::
  GetSearchApplicationSessionStatsResponse
newGetSearchApplicationSessionStatsResponse =
  GetSearchApplicationSessionStatsResponse {stats = Core.Nothing}

instance
  Core.FromJSON
    GetSearchApplicationSessionStatsResponse
  where
  parseJSON =
    Core.withObject
      "GetSearchApplicationSessionStatsResponse"
      ( \o ->
          GetSearchApplicationSessionStatsResponse
            Core.<$> (o Core..:? "stats" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GetSearchApplicationSessionStatsResponse
  where
  toJSON GetSearchApplicationSessionStatsResponse {..} =
    Core.object
      (Core.catMaybes [("stats" Core..=) Core.<$> stats])

--
-- /See:/ 'newGetSearchApplicationUserStatsResponse' smart constructor.
newtype GetSearchApplicationUserStatsResponse = GetSearchApplicationUserStatsResponse
  { -- |
    stats :: (Core.Maybe [SearchApplicationUserStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetSearchApplicationUserStatsResponse' with the minimum fields required to make a request.
newGetSearchApplicationUserStatsResponse ::
  GetSearchApplicationUserStatsResponse
newGetSearchApplicationUserStatsResponse =
  GetSearchApplicationUserStatsResponse {stats = Core.Nothing}

instance
  Core.FromJSON
    GetSearchApplicationUserStatsResponse
  where
  parseJSON =
    Core.withObject
      "GetSearchApplicationUserStatsResponse"
      ( \o ->
          GetSearchApplicationUserStatsResponse
            Core.<$> (o Core..:? "stats" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GetSearchApplicationUserStatsResponse
  where
  toJSON GetSearchApplicationUserStatsResponse {..} =
    Core.object
      (Core.catMaybes [("stats" Core..=) Core.<$> stats])

-- | The corpus specific metadata for office-type documents, from Google Docs and other sources. This message is passed to the scorer and beyond. Next tag: 7
--
-- /See:/ 'newGoogleDocsMetadata' smart constructor.
data GoogleDocsMetadata = GoogleDocsMetadata
  { -- | Contains number of users and groups which can access the document.
    aclInfo :: (Core.Maybe AclInfo),
    -- | The conceptual type (presentation, document, etc.) of this document.
    documentType :: (Core.Maybe GoogleDocsMetadata_DocumentType),
    -- | The file extension of the document. NOTE: As of October 2018 this field is not backfilled for old documents.
    fileExtension :: (Core.Maybe Core.Text),
    -- | The last time this document was modified, in seconds since epoch. Only counts content modifications.
    lastContentModifiedTimestamp :: (Core.Maybe Core.Int64),
    -- | Additional per-result information, akin to Gmail\'s SingleThreadResponse. Note: GWS no longer seems to use this field, but there\'s still one reference to it for Scribe, so we can\'t remove it.
    resultInfo :: (Core.Maybe GoogleDocsResultInfo),
    -- | Contains additional information about the document depending on its type.
    typeInfo :: (Core.Maybe TypeInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDocsMetadata' with the minimum fields required to make a request.
newGoogleDocsMetadata ::
  GoogleDocsMetadata
newGoogleDocsMetadata =
  GoogleDocsMetadata
    { aclInfo = Core.Nothing,
      documentType = Core.Nothing,
      fileExtension = Core.Nothing,
      lastContentModifiedTimestamp = Core.Nothing,
      resultInfo = Core.Nothing,
      typeInfo = Core.Nothing
    }

instance Core.FromJSON GoogleDocsMetadata where
  parseJSON =
    Core.withObject
      "GoogleDocsMetadata"
      ( \o ->
          GoogleDocsMetadata
            Core.<$> (o Core..:? "aclInfo")
            Core.<*> (o Core..:? "documentType")
            Core.<*> (o Core..:? "fileExtension")
            Core.<*> (o Core..:? "lastContentModifiedTimestamp")
            Core.<*> (o Core..:? "resultInfo")
            Core.<*> (o Core..:? "typeInfo")
      )

instance Core.ToJSON GoogleDocsMetadata where
  toJSON GoogleDocsMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("aclInfo" Core..=) Core.<$> aclInfo,
            ("documentType" Core..=) Core.<$> documentType,
            ("fileExtension" Core..=) Core.<$> fileExtension,
            ("lastContentModifiedTimestamp" Core..=)
              Core.. Core.AsText
              Core.<$> lastContentModifiedTimestamp,
            ("resultInfo" Core..=) Core.<$> resultInfo,
            ("typeInfo" Core..=) Core.<$> typeInfo
          ]
      )

-- | A message containing information about a specific result. This information is passed to the scorer and beyond; in particular, GWS relies on it to format the result in the UI. Split from GoogleDocsMetadata in case we later want to reuse the message.
--
-- /See:/ 'newGoogleDocsResultInfo' smart constructor.
data GoogleDocsResultInfo = GoogleDocsResultInfo
  { -- | The SHA1 hash of the object in Drive, if any.
    attachmentSha1 :: (Core.Maybe Core.Text),
    -- | The storage identifier for the object in Cosmo. This field is intended to used by Stratus\/Moonshine integration only. It should not be exposed externally (please refer to encrypted_id for that purpose).
    cosmoId :: (Core.Maybe Id),
    -- | For Cosmo objects, the Cosmo namespace the object was in. This allows downstream clients to identify whether a document was created in Writely or Kix, Presently or Punch, or whether it was uploaded from GDrive. See storage/cosmo.Id.NAME/SPACE for a list of all Cosmo name spaces.
    cosmoNameSpace :: (Core.Maybe Core.Int32),
    -- | The encrypted (user-visible) id of this object. Knowing the id is sufficient to create a canonical URL for this document.
    encryptedId :: (Core.Maybe Core.Text),
    -- | The mimetype of the document.
    mimeType :: (Core.Maybe Core.Text),
    -- | The visibility indicator in the UI will be based upon this.
    shareScope :: (Core.Maybe ShareScope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDocsResultInfo' with the minimum fields required to make a request.
newGoogleDocsResultInfo ::
  GoogleDocsResultInfo
newGoogleDocsResultInfo =
  GoogleDocsResultInfo
    { attachmentSha1 = Core.Nothing,
      cosmoId = Core.Nothing,
      cosmoNameSpace = Core.Nothing,
      encryptedId = Core.Nothing,
      mimeType = Core.Nothing,
      shareScope = Core.Nothing
    }

instance Core.FromJSON GoogleDocsResultInfo where
  parseJSON =
    Core.withObject
      "GoogleDocsResultInfo"
      ( \o ->
          GoogleDocsResultInfo
            Core.<$> (o Core..:? "attachmentSha1")
            Core.<*> (o Core..:? "cosmoId")
            Core.<*> (o Core..:? "cosmoNameSpace")
            Core.<*> (o Core..:? "encryptedId")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "shareScope")
      )

instance Core.ToJSON GoogleDocsResultInfo where
  toJSON GoogleDocsResultInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachmentSha1" Core..=) Core.<$> attachmentSha1,
            ("cosmoId" Core..=) Core.<$> cosmoId,
            ("cosmoNameSpace" Core..=) Core.<$> cosmoNameSpace,
            ("encryptedId" Core..=) Core.<$> encryptedId,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("shareScope" Core..=) Core.<$> shareScope
          ]
      )

-- | Id representing a group that could be a space, a chat, or a direct message space. Which ID is set here will determine which group
--
-- /See:/ 'newGroupId' smart constructor.
data GroupId = GroupId
  { -- | Unique, immutable ID of the Direct Message Space
    dmId :: (Core.Maybe DmId),
    -- | Unique, immutable ID of the Space
    spaceId :: (Core.Maybe SpaceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupId' with the minimum fields required to make a request.
newGroupId ::
  GroupId
newGroupId = GroupId {dmId = Core.Nothing, spaceId = Core.Nothing}

instance Core.FromJSON GroupId where
  parseJSON =
    Core.withObject
      "GroupId"
      ( \o ->
          GroupId
            Core.<$> (o Core..:? "dmId") Core.<*> (o Core..:? "spaceId")
      )

instance Core.ToJSON GroupId where
  toJSON GroupId {..} =
    Core.object
      ( Core.catMaybes
          [ ("dmId" Core..=) Core.<$> dmId,
            ("spaceId" Core..=) Core.<$> spaceId
          ]
      )

-- | Used to provide a search operator for html properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.
--
-- /See:/ 'newHtmlOperatorOptions' smart constructor.
newtype HtmlOperatorOptions = HtmlOperatorOptions
  { -- | Indicates the operator name required in the query in order to isolate the html property. For example, if operatorName is /subject/ and the property\'s name is /subjectLine/, then queries like /subject:\<value>/ show results only where the value of the property named /subjectLine/ matches /\<value>/. By contrast, a search that uses the same /\<value>/ without an operator return all items where /\<value>/ matches the value of any html properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HtmlOperatorOptions' with the minimum fields required to make a request.
newHtmlOperatorOptions ::
  HtmlOperatorOptions
newHtmlOperatorOptions = HtmlOperatorOptions {operatorName = Core.Nothing}

instance Core.FromJSON HtmlOperatorOptions where
  parseJSON =
    Core.withObject
      "HtmlOperatorOptions"
      ( \o ->
          HtmlOperatorOptions
            Core.<$> (o Core..:? "operatorName")
      )

instance Core.ToJSON HtmlOperatorOptions where
  toJSON HtmlOperatorOptions {..} =
    Core.object
      ( Core.catMaybes
          [("operatorName" Core..=) Core.<$> operatorName]
      )

-- | Options for html properties.
--
-- /See:/ 'newHtmlPropertyOptions' smart constructor.
data HtmlPropertyOptions = HtmlPropertyOptions
  { -- | If set, describes how the property should be used as a search operator.
    operatorOptions :: (Core.Maybe HtmlOperatorOptions),
    -- | Indicates the search quality importance of the tokens within the field when used for retrieval. Can only be set to DEFAULT or NONE.
    retrievalImportance :: (Core.Maybe RetrievalImportance)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HtmlPropertyOptions' with the minimum fields required to make a request.
newHtmlPropertyOptions ::
  HtmlPropertyOptions
newHtmlPropertyOptions =
  HtmlPropertyOptions
    { operatorOptions = Core.Nothing,
      retrievalImportance = Core.Nothing
    }

instance Core.FromJSON HtmlPropertyOptions where
  parseJSON =
    Core.withObject
      "HtmlPropertyOptions"
      ( \o ->
          HtmlPropertyOptions
            Core.<$> (o Core..:? "operatorOptions")
            Core.<*> (o Core..:? "retrievalImportance")
      )

instance Core.ToJSON HtmlPropertyOptions where
  toJSON HtmlPropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorOptions" Core..=)
              Core.<$> operatorOptions,
            ("retrievalImportance" Core..=)
              Core.<$> retrievalImportance
          ]
      )

-- | List of html values.
--
-- /See:/ 'newHtmlValues' smart constructor.
newtype HtmlValues = HtmlValues
  { -- | The maximum allowable length for html values is 2048 characters.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HtmlValues' with the minimum fields required to make a request.
newHtmlValues ::
  HtmlValues
newHtmlValues = HtmlValues {values = Core.Nothing}

instance Core.FromJSON HtmlValues where
  parseJSON =
    Core.withObject
      "HtmlValues"
      ( \o ->
          HtmlValues
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON HtmlValues where
  toJSON HtmlValues {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Identifies a particular object, including both Users and DirEntries. This Id is unique across the entire server instance, such as the production or qa instance.
--
-- /See:/ 'newId' smart constructor.
data Id = Id
  { -- | The User account in which the DirEntry was originally created. If name/space==GAIA, then it\'s the gaia/id of the user this id is referring to.
    creatorUserId :: (Core.Maybe Core.Word64),
    -- | The local identifier for the DirEntry (local to the creator\'s account). local/id + app/name is guaranteed to be unique within the creator account, but not across all User accounts. The string is case sensitive. Ignore if name/space==GAIA. NB For name/space==COSMO, all local_id\'s should be defined in google3\/java\/com\/google\/storage\/cosmo\/server\/api\/SpecialObjectIds.java as they have a special predefined meaning. See cosmo.client.CosmoIdFactory.createObjectId(long,String) for IMPORTANT recommendations when generating IDs.
    localId :: (Core.Maybe Core.Text),
    -- | The name space in which this id is unique (typically the application that created it). Values should be drawn from the above enum, but for experimentation, use values greater than 1000.
    nameSpace :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Id' with the minimum fields required to make a request.
newId ::
  Id
newId =
  Id
    { creatorUserId = Core.Nothing,
      localId = Core.Nothing,
      nameSpace = Core.Nothing
    }

instance Core.FromJSON Id where
  parseJSON =
    Core.withObject
      "Id"
      ( \o ->
          Id
            Core.<$> (o Core..:? "creatorUserId")
            Core.<*> (o Core..:? "localId")
            Core.<*> (o Core..:? "nameSpace")
      )

instance Core.ToJSON Id where
  toJSON Id {..} =
    Core.object
      ( Core.catMaybes
          [ ("creatorUserId" Core..=) Core.. Core.AsText
              Core.<$> creatorUserId,
            ("localId" Core..=) Core.<$> localId,
            ("nameSpace" Core..=) Core.<$> nameSpace
          ]
      )

--
-- /See:/ 'newIndexItemOptions' smart constructor.
newtype IndexItemOptions = IndexItemOptions
  { -- | Specifies if the index request should allow gsuite principals that do not exist or are deleted in the index request.
    allowUnknownGsuitePrincipals :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexItemOptions' with the minimum fields required to make a request.
newIndexItemOptions ::
  IndexItemOptions
newIndexItemOptions =
  IndexItemOptions {allowUnknownGsuitePrincipals = Core.Nothing}

instance Core.FromJSON IndexItemOptions where
  parseJSON =
    Core.withObject
      "IndexItemOptions"
      ( \o ->
          IndexItemOptions
            Core.<$> (o Core..:? "allowUnknownGsuitePrincipals")
      )

instance Core.ToJSON IndexItemOptions where
  toJSON IndexItemOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowUnknownGsuitePrincipals" Core..=)
              Core.<$> allowUnknownGsuitePrincipals
          ]
      )

--
-- /See:/ 'newIndexItemRequest' smart constructor.
data IndexItemRequest = IndexItemRequest
  { -- | Name of connector making this call. Format: datasources\/{source_id}\/connectors\/{ID}
    connectorName :: (Core.Maybe Core.Text),
    -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions),
    -- |
    indexItemOptions :: (Core.Maybe IndexItemOptions),
    -- | Name of the item. Format: datasources\/{source/id}\/items\/{item/id}
    item :: (Core.Maybe Item),
    -- | Required. The RequestMode for this request.
    mode :: (Core.Maybe IndexItemRequest_Mode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexItemRequest' with the minimum fields required to make a request.
newIndexItemRequest ::
  IndexItemRequest
newIndexItemRequest =
  IndexItemRequest
    { connectorName = Core.Nothing,
      debugOptions = Core.Nothing,
      indexItemOptions = Core.Nothing,
      item = Core.Nothing,
      mode = Core.Nothing
    }

instance Core.FromJSON IndexItemRequest where
  parseJSON =
    Core.withObject
      "IndexItemRequest"
      ( \o ->
          IndexItemRequest
            Core.<$> (o Core..:? "connectorName")
            Core.<*> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "indexItemOptions")
            Core.<*> (o Core..:? "item")
            Core.<*> (o Core..:? "mode")
      )

instance Core.ToJSON IndexItemRequest where
  toJSON IndexItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectorName" Core..=) Core.<$> connectorName,
            ("debugOptions" Core..=) Core.<$> debugOptions,
            ("indexItemOptions" Core..=)
              Core.<$> indexItemOptions,
            ("item" Core..=) Core.<$> item,
            ("mode" Core..=) Core.<$> mode
          ]
      )

-- | Request message for @InitializeCustomer@ method.
--
-- /See:/ 'newInitializeCustomerRequest' smart constructor.
data InitializeCustomerRequest = InitializeCustomerRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InitializeCustomerRequest' with the minimum fields required to make a request.
newInitializeCustomerRequest ::
  InitializeCustomerRequest
newInitializeCustomerRequest = InitializeCustomerRequest

instance Core.FromJSON InitializeCustomerRequest where
  parseJSON =
    Core.withObject
      "InitializeCustomerRequest"
      (\o -> Core.pure InitializeCustomerRequest)

instance Core.ToJSON InitializeCustomerRequest where
  toJSON = Core.const Core.emptyObject

-- | Used to provide a search operator for integer properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.
--
-- /See:/ 'newIntegerOperatorOptions' smart constructor.
data IntegerOperatorOptions = IntegerOperatorOptions
  { -- | Indicates the operator name required in the query in order to isolate the integer property using the greater-than operator. For example, if greaterThanOperatorName is /priorityabove/ and the property\'s name is /priorityVal/, then queries like /priorityabove:\<value>/ show results only where the value of the property named /priorityVal/ is greater than /\<value>/. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    greaterThanOperatorName :: (Core.Maybe Core.Text),
    -- | Indicates the operator name required in the query in order to isolate the integer property using the less-than operator. For example, if lessThanOperatorName is /prioritybelow/ and the property\'s name is /priorityVal/, then queries like /prioritybelow:\<value>/ show results only where the value of the property named /priorityVal/ is less than /\<value>/. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    lessThanOperatorName :: (Core.Maybe Core.Text),
    -- | Indicates the operator name required in the query in order to isolate the integer property. For example, if operatorName is /priority/ and the property\'s name is /priorityVal/, then queries like /priority:\<value>/ show results only where the value of the property named /priorityVal/ matches /\<value>/. By contrast, a search that uses the same /\<value>/ without an operator returns all items where /\<value>/ matches the value of any String properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntegerOperatorOptions' with the minimum fields required to make a request.
newIntegerOperatorOptions ::
  IntegerOperatorOptions
newIntegerOperatorOptions =
  IntegerOperatorOptions
    { greaterThanOperatorName = Core.Nothing,
      lessThanOperatorName = Core.Nothing,
      operatorName = Core.Nothing
    }

instance Core.FromJSON IntegerOperatorOptions where
  parseJSON =
    Core.withObject
      "IntegerOperatorOptions"
      ( \o ->
          IntegerOperatorOptions
            Core.<$> (o Core..:? "greaterThanOperatorName")
            Core.<*> (o Core..:? "lessThanOperatorName")
            Core.<*> (o Core..:? "operatorName")
      )

instance Core.ToJSON IntegerOperatorOptions where
  toJSON IntegerOperatorOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("greaterThanOperatorName" Core..=)
              Core.<$> greaterThanOperatorName,
            ("lessThanOperatorName" Core..=)
              Core.<$> lessThanOperatorName,
            ("operatorName" Core..=) Core.<$> operatorName
          ]
      )

-- | Options for integer properties.
--
-- /See:/ 'newIntegerPropertyOptions' smart constructor.
data IntegerPropertyOptions = IntegerPropertyOptions
  { -- | The maximum value of the property. The minimum and maximum values for the property are used to rank results according to the ordered ranking. Indexing requests with values greater than the maximum are accepted and ranked with the same weight as items indexed with the maximum value.
    maximumValue :: (Core.Maybe Core.Int64),
    -- | The minimum value of the property. The minimum and maximum values for the property are used to rank results according to the ordered ranking. Indexing requests with values less than the minimum are accepted and ranked with the same weight as items indexed with the minimum value.
    minimumValue :: (Core.Maybe Core.Int64),
    -- | If set, describes how the integer should be used as a search operator.
    operatorOptions :: (Core.Maybe IntegerOperatorOptions),
    -- | Used to specify the ordered ranking for the integer. Can only be used if isRepeatable is false.
    orderedRanking :: (Core.Maybe IntegerPropertyOptions_OrderedRanking)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntegerPropertyOptions' with the minimum fields required to make a request.
newIntegerPropertyOptions ::
  IntegerPropertyOptions
newIntegerPropertyOptions =
  IntegerPropertyOptions
    { maximumValue = Core.Nothing,
      minimumValue = Core.Nothing,
      operatorOptions = Core.Nothing,
      orderedRanking = Core.Nothing
    }

instance Core.FromJSON IntegerPropertyOptions where
  parseJSON =
    Core.withObject
      "IntegerPropertyOptions"
      ( \o ->
          IntegerPropertyOptions
            Core.<$> (o Core..:? "maximumValue")
            Core.<*> (o Core..:? "minimumValue")
            Core.<*> (o Core..:? "operatorOptions")
            Core.<*> (o Core..:? "orderedRanking")
      )

instance Core.ToJSON IntegerPropertyOptions where
  toJSON IntegerPropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("maximumValue" Core..=) Core.. Core.AsText
              Core.<$> maximumValue,
            ("minimumValue" Core..=) Core.. Core.AsText
              Core.<$> minimumValue,
            ("operatorOptions" Core..=) Core.<$> operatorOptions,
            ("orderedRanking" Core..=) Core.<$> orderedRanking
          ]
      )

-- | List of integer values.
--
-- /See:/ 'newIntegerValues' smart constructor.
newtype IntegerValues = IntegerValues
  { -- |
    values :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntegerValues' with the minimum fields required to make a request.
newIntegerValues ::
  IntegerValues
newIntegerValues = IntegerValues {values = Core.Nothing}

instance Core.FromJSON IntegerValues where
  parseJSON =
    Core.withObject
      "IntegerValues"
      ( \o ->
          IntegerValues
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON IntegerValues where
  toJSON IntegerValues {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Represents an interaction between a user and an item.
--
-- /See:/ 'newInteraction' smart constructor.
data Interaction = Interaction
  { -- | The time when the user acted on the item. If multiple actions of the same type exist for a single user, only the most recent action is recorded.
    interactionTime :: (Core.Maybe Core.DateTime'),
    -- | The user that acted on the item.
    principal :: (Core.Maybe Principal),
    -- |
    type' :: (Core.Maybe Interaction_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Interaction' with the minimum fields required to make a request.
newInteraction ::
  Interaction
newInteraction =
  Interaction
    { interactionTime = Core.Nothing,
      principal = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Interaction where
  parseJSON =
    Core.withObject
      "Interaction"
      ( \o ->
          Interaction
            Core.<$> (o Core..:? "interactionTime")
            Core.<*> (o Core..:? "principal")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Interaction where
  toJSON Interaction {..} =
    Core.object
      ( Core.catMaybes
          [ ("interactionTime" Core..=)
              Core.<$> interactionTime,
            ("principal" Core..=) Core.<$> principal,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Represents a single object that is an item in the search index, such as a file, folder, or a database record.
--
-- /See:/ 'newItem' smart constructor.
data Item = Item
  { -- | Access control list for this item.
    acl :: (Core.Maybe ItemAcl),
    -- | Item content to be indexed and made text searchable.
    content :: (Core.Maybe ItemContent),
    -- | Type for this item.
    itemType :: (Core.Maybe Item_ItemType),
    -- | Metadata information.
    metadata :: (Core.Maybe ItemMetadata),
    -- | Name of the Item. Format: datasources\/{source/id}\/items\/{item/id} This is a required field. The maximum length is 1536 characters.
    name :: (Core.Maybe Core.Text),
    -- | Additional state connector can store for this item. The maximum length is 10000 bytes.
    payload :: (Core.Maybe Core.Base64),
    -- | Queue this item belongs to. The maximum length is 100 characters.
    queue :: (Core.Maybe Core.Text),
    -- | Status of the item. Output only field.
    status :: (Core.Maybe ItemStatus),
    -- | The structured data for the item that should conform to a registered object definition in the schema for the data source.
    structuredData :: (Core.Maybe ItemStructuredData),
    -- | Required. The indexing system stores the version from the datasource as a byte string and compares the Item version in the index to the version of the queued Item using lexical ordering. Cloud Search Indexing won\'t index or delete any queued item with a version value that is less than or equal to the version of the currently indexed item. The maximum length for this field is 1024 bytes. For information on how item version affects the deletion process, refer to <https://developers.google.com/cloud-search/docs/guides/operations Handle revisions after manual deletes>.
    version :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Item' with the minimum fields required to make a request.
newItem ::
  Item
newItem =
  Item
    { acl = Core.Nothing,
      content = Core.Nothing,
      itemType = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      payload = Core.Nothing,
      queue = Core.Nothing,
      status = Core.Nothing,
      structuredData = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Item where
  parseJSON =
    Core.withObject
      "Item"
      ( \o ->
          Item
            Core.<$> (o Core..:? "acl")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "itemType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "queue")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "structuredData")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Item where
  toJSON Item {..} =
    Core.object
      ( Core.catMaybes
          [ ("acl" Core..=) Core.<$> acl,
            ("content" Core..=) Core.<$> content,
            ("itemType" Core..=) Core.<$> itemType,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("payload" Core..=) Core.<$> payload,
            ("queue" Core..=) Core.<$> queue,
            ("status" Core..=) Core.<$> status,
            ("structuredData" Core..=) Core.<$> structuredData,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Access control list information for the item. For more information see </cloud-search/docs/guides/acls Map ACLs>.
--
-- /See:/ 'newItemAcl' smart constructor.
data ItemAcl = ItemAcl
  { -- | Sets the type of access rules to apply when an item inherits its ACL from a parent. This should always be set in tandem with the inheritAclFrom field. Also, when the inheritAclFrom field is set, this field should be set to a valid AclInheritanceType.
    aclInheritanceType :: (Core.Maybe ItemAcl_AclInheritanceType),
    -- | List of principals who are explicitly denied access to the item in search results. While principals are denied access by default, use denied readers to handle exceptions and override the list allowed readers. The maximum number of elements is 100.
    deniedReaders :: (Core.Maybe [Principal]),
    -- | Name of the item to inherit the Access Permission List (ACL) from. Note: ACL inheritance /only/ provides access permissions to child items and does not define structural relationships, nor does it provide convenient ways to delete large groups of items. Deleting an ACL parent from the index only alters the access permissions of child items that reference the parent in the inheritAclFrom field. The item is still in the index, but may not visible in search results. By contrast, deletion of a container item also deletes all items that reference the container via the containerName field. The maximum length for this field is 1536 characters.
    inheritAclFrom :: (Core.Maybe Core.Text),
    -- | Optional. List of owners for the item. This field has no bearing on document access permissions. It does, however, offer a slight ranking boosts items where the querying user is an owner. The maximum number of elements is 5.
    owners :: (Core.Maybe [Principal]),
    -- | List of principals who are allowed to see the item in search results. Optional if inheriting permissions from another item or if the item is not intended to be visible, such as virtual containers. The maximum number of elements is 1000.
    readers :: (Core.Maybe [Principal])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ItemAcl' with the minimum fields required to make a request.
newItemAcl ::
  ItemAcl
newItemAcl =
  ItemAcl
    { aclInheritanceType = Core.Nothing,
      deniedReaders = Core.Nothing,
      inheritAclFrom = Core.Nothing,
      owners = Core.Nothing,
      readers = Core.Nothing
    }

instance Core.FromJSON ItemAcl where
  parseJSON =
    Core.withObject
      "ItemAcl"
      ( \o ->
          ItemAcl
            Core.<$> (o Core..:? "aclInheritanceType")
            Core.<*> (o Core..:? "deniedReaders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "inheritAclFrom")
            Core.<*> (o Core..:? "owners" Core..!= Core.mempty)
            Core.<*> (o Core..:? "readers" Core..!= Core.mempty)
      )

instance Core.ToJSON ItemAcl where
  toJSON ItemAcl {..} =
    Core.object
      ( Core.catMaybes
          [ ("aclInheritanceType" Core..=)
              Core.<$> aclInheritanceType,
            ("deniedReaders" Core..=) Core.<$> deniedReaders,
            ("inheritAclFrom" Core..=) Core.<$> inheritAclFrom,
            ("owners" Core..=) Core.<$> owners,
            ("readers" Core..=) Core.<$> readers
          ]
      )

-- | Content of an item to be indexed and surfaced by Cloud Search. Only UTF-8 encoded strings are allowed as inlineContent. If the content is uploaded and not binary, it must be UTF-8 encoded.
--
-- /See:/ 'newItemContent' smart constructor.
data ItemContent = ItemContent
  { -- | Upload reference ID of a previously uploaded content via write method.
    contentDataRef :: (Core.Maybe UploadItemRef),
    -- |
    contentFormat :: (Core.Maybe ItemContent_ContentFormat),
    -- | Hashing info calculated and provided by the API client for content. Can be used with the items.push method to calculate modified state. The maximum length is 2048 characters.
    hash :: (Core.Maybe Core.Text),
    -- | Content that is supplied inlined within the update method. The maximum length is 102400 bytes (100 KiB).
    inlineContent :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ItemContent' with the minimum fields required to make a request.
newItemContent ::
  ItemContent
newItemContent =
  ItemContent
    { contentDataRef = Core.Nothing,
      contentFormat = Core.Nothing,
      hash = Core.Nothing,
      inlineContent = Core.Nothing
    }

instance Core.FromJSON ItemContent where
  parseJSON =
    Core.withObject
      "ItemContent"
      ( \o ->
          ItemContent
            Core.<$> (o Core..:? "contentDataRef")
            Core.<*> (o Core..:? "contentFormat")
            Core.<*> (o Core..:? "hash")
            Core.<*> (o Core..:? "inlineContent")
      )

instance Core.ToJSON ItemContent where
  toJSON ItemContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentDataRef" Core..=) Core.<$> contentDataRef,
            ("contentFormat" Core..=) Core.<$> contentFormat,
            ("hash" Core..=) Core.<$> hash,
            ("inlineContent" Core..=) Core.<$> inlineContent
          ]
      )

--
-- /See:/ 'newItemCountByStatus' smart constructor.
data ItemCountByStatus = ItemCountByStatus
  { -- | Number of items matching the status code.
    count :: (Core.Maybe Core.Int64),
    -- | Number of items matching the status code for which billing is done. This excludes virtual container items from the total count. This count would not be applicable for items with ERROR or NEW_ITEM status code.
    indexedItemsCount :: (Core.Maybe Core.Int64),
    -- | Status of the items.
    statusCode :: (Core.Maybe ItemCountByStatus_StatusCode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ItemCountByStatus' with the minimum fields required to make a request.
newItemCountByStatus ::
  ItemCountByStatus
newItemCountByStatus =
  ItemCountByStatus
    { count = Core.Nothing,
      indexedItemsCount = Core.Nothing,
      statusCode = Core.Nothing
    }

instance Core.FromJSON ItemCountByStatus where
  parseJSON =
    Core.withObject
      "ItemCountByStatus"
      ( \o ->
          ItemCountByStatus
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "indexedItemsCount")
            Core.<*> (o Core..:? "statusCode")
      )

instance Core.ToJSON ItemCountByStatus where
  toJSON ItemCountByStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("indexedItemsCount" Core..=) Core.. Core.AsText
              Core.<$> indexedItemsCount,
            ("statusCode" Core..=) Core.<$> statusCode
          ]
      )

-- | Available metadata fields for the item.
--
-- /See:/ 'newItemMetadata' smart constructor.
data ItemMetadata = ItemMetadata
  { -- | The name of the container for this item. Deletion of the container item leads to automatic deletion of this item. Note: ACLs are not inherited from a container item. To provide ACL inheritance for an item, use the inheritAclFrom field. The maximum length is 1536 characters.
    containerName :: (Core.Maybe Core.Text),
    -- | The BCP-47 language code for the item, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier. The maximum length is 32 characters.
    contentLanguage :: (Core.Maybe Core.Text),
    -- | A set of named attributes associated with the item. This can be used for influencing the ranking of the item based on the context in the request. The maximum number of elements is 10.
    contextAttributes :: (Core.Maybe [ContextAttribute]),
    -- | The time when the item was created in the source repository.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Hashing value provided by the API caller. This can be used with the items.push method to calculate modified state. The maximum length is 2048 characters.
    hash :: (Core.Maybe Core.Text),
    -- | A list of interactions for the item. Interactions are used to improve Search quality, but are not exposed to end users. The maximum number of elements is 1000.
    interactions :: (Core.Maybe [Interaction]),
    -- | Additional keywords or phrases that should match the item. Used internally for user generated content. The maximum number of elements is 100. The maximum length is 8192 characters.
    keywords :: (Core.Maybe [Core.Text]),
    -- | The original mime-type of ItemContent.content in the source repository. The maximum length is 256 characters.
    mimeType :: (Core.Maybe Core.Text),
    -- | The type of the item. This should correspond to the name of an object definition in the schema registered for the data source. For example, if the schema for the data source contains an object definition with name \'document\', then item indexing requests for objects of that type should set objectType to \'document\'. The maximum length is 256 characters.
    objectType :: (Core.Maybe Core.Text),
    -- | Additional search quality metadata of the item
    searchQualityMetadata :: (Core.Maybe SearchQualityMetadata),
    -- | Link to the source repository serving the data. Seach results apply this link to the title. Whitespace or special characters may cause Cloud Seach result links to trigger a redirect notice; to avoid this, encode the URL. The maximum length is 2048 characters.
    sourceRepositoryUrl :: (Core.Maybe Core.Text),
    -- | The title of the item. If given, this will be the displayed title of the Search result. The maximum length is 2048 characters.
    title :: (Core.Maybe Core.Text),
    -- | The time when the item was last modified in the source repository.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ItemMetadata' with the minimum fields required to make a request.
newItemMetadata ::
  ItemMetadata
newItemMetadata =
  ItemMetadata
    { containerName = Core.Nothing,
      contentLanguage = Core.Nothing,
      contextAttributes = Core.Nothing,
      createTime = Core.Nothing,
      hash = Core.Nothing,
      interactions = Core.Nothing,
      keywords = Core.Nothing,
      mimeType = Core.Nothing,
      objectType = Core.Nothing,
      searchQualityMetadata = Core.Nothing,
      sourceRepositoryUrl = Core.Nothing,
      title = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON ItemMetadata where
  parseJSON =
    Core.withObject
      "ItemMetadata"
      ( \o ->
          ItemMetadata
            Core.<$> (o Core..:? "containerName")
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "contextAttributes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "hash")
            Core.<*> (o Core..:? "interactions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "keywords" Core..!= Core.mempty)
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "objectType")
            Core.<*> (o Core..:? "searchQualityMetadata")
            Core.<*> (o Core..:? "sourceRepositoryUrl")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON ItemMetadata where
  toJSON ItemMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerName" Core..=) Core.<$> containerName,
            ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("contextAttributes" Core..=)
              Core.<$> contextAttributes,
            ("createTime" Core..=) Core.<$> createTime,
            ("hash" Core..=) Core.<$> hash,
            ("interactions" Core..=) Core.<$> interactions,
            ("keywords" Core..=) Core.<$> keywords,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("objectType" Core..=) Core.<$> objectType,
            ("searchQualityMetadata" Core..=)
              Core.<$> searchQualityMetadata,
            ("sourceRepositoryUrl" Core..=)
              Core.<$> sourceRepositoryUrl,
            ("title" Core..=) Core.<$> title,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | This contains item\'s status and any errors.
--
-- /See:/ 'newItemStatus' smart constructor.
data ItemStatus = ItemStatus
  { -- | Status code.
    code :: (Core.Maybe ItemStatus_Code),
    -- | Error details in case the item is in ERROR state.
    processingErrors :: (Core.Maybe [ProcessingError]),
    -- | Repository error reported by connector.
    repositoryErrors :: (Core.Maybe [RepositoryError])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ItemStatus' with the minimum fields required to make a request.
newItemStatus ::
  ItemStatus
newItemStatus =
  ItemStatus
    { code = Core.Nothing,
      processingErrors = Core.Nothing,
      repositoryErrors = Core.Nothing
    }

instance Core.FromJSON ItemStatus where
  parseJSON =
    Core.withObject
      "ItemStatus"
      ( \o ->
          ItemStatus
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "processingErrors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "repositoryErrors" Core..!= Core.mempty)
      )

instance Core.ToJSON ItemStatus where
  toJSON ItemStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("processingErrors" Core..=)
              Core.<$> processingErrors,
            ("repositoryErrors" Core..=)
              Core.<$> repositoryErrors
          ]
      )

-- | Available structured data fields for the item.
--
-- /See:/ 'newItemStructuredData' smart constructor.
data ItemStructuredData = ItemStructuredData
  { -- | Hashing value provided by the API caller. This can be used with the items.push method to calculate modified state. The maximum length is 2048 characters.
    hash :: (Core.Maybe Core.Text),
    -- | The structured data object that should conform to a registered object definition in the schema for the data source.
    object :: (Core.Maybe StructuredDataObject)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ItemStructuredData' with the minimum fields required to make a request.
newItemStructuredData ::
  ItemStructuredData
newItemStructuredData =
  ItemStructuredData {hash = Core.Nothing, object = Core.Nothing}

instance Core.FromJSON ItemStructuredData where
  parseJSON =
    Core.withObject
      "ItemStructuredData"
      ( \o ->
          ItemStructuredData
            Core.<$> (o Core..:? "hash") Core.<*> (o Core..:? "object")
      )

instance Core.ToJSON ItemStructuredData where
  toJSON ItemStructuredData {..} =
    Core.object
      ( Core.catMaybes
          [ ("hash" Core..=) Core.<$> hash,
            ("object" Core..=) Core.<$> object
          ]
      )

--
-- /See:/ 'newListDataSourceResponse' smart constructor.
data ListDataSourceResponse = ListDataSourceResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    sources :: (Core.Maybe [DataSource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDataSourceResponse' with the minimum fields required to make a request.
newListDataSourceResponse ::
  ListDataSourceResponse
newListDataSourceResponse =
  ListDataSourceResponse {nextPageToken = Core.Nothing, sources = Core.Nothing}

instance Core.FromJSON ListDataSourceResponse where
  parseJSON =
    Core.withObject
      "ListDataSourceResponse"
      ( \o ->
          ListDataSourceResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sources" Core..!= Core.mempty)
      )

instance Core.ToJSON ListDataSourceResponse where
  toJSON ListDataSourceResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sources" Core..=) Core.<$> sources
          ]
      )

--
-- /See:/ 'newListItemNamesForUnmappedIdentityResponse' smart constructor.
data ListItemNamesForUnmappedIdentityResponse = ListItemNamesForUnmappedIdentityResponse
  { -- |
    itemNames :: (Core.Maybe [Core.Text]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListItemNamesForUnmappedIdentityResponse' with the minimum fields required to make a request.
newListItemNamesForUnmappedIdentityResponse ::
  ListItemNamesForUnmappedIdentityResponse
newListItemNamesForUnmappedIdentityResponse =
  ListItemNamesForUnmappedIdentityResponse
    { itemNames = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListItemNamesForUnmappedIdentityResponse
  where
  parseJSON =
    Core.withObject
      "ListItemNamesForUnmappedIdentityResponse"
      ( \o ->
          ListItemNamesForUnmappedIdentityResponse
            Core.<$> (o Core..:? "itemNames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListItemNamesForUnmappedIdentityResponse
  where
  toJSON ListItemNamesForUnmappedIdentityResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("itemNames" Core..=) Core.<$> itemNames,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListItemsResponse' smart constructor.
data ListItemsResponse = ListItemsResponse
  { -- |
    items :: (Core.Maybe [Item]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListItemsResponse' with the minimum fields required to make a request.
newListItemsResponse ::
  ListItemsResponse
newListItemsResponse =
  ListItemsResponse {items = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListItemsResponse where
  parseJSON =
    Core.withObject
      "ListItemsResponse"
      ( \o ->
          ListItemsResponse
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListItemsResponse where
  toJSON ListItemsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | List sources response.
--
-- /See:/ 'newListQuerySourcesResponse' smart constructor.
data ListQuerySourcesResponse = ListQuerySourcesResponse
  { -- |
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    sources :: (Core.Maybe [QuerySource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListQuerySourcesResponse' with the minimum fields required to make a request.
newListQuerySourcesResponse ::
  ListQuerySourcesResponse
newListQuerySourcesResponse =
  ListQuerySourcesResponse
    { nextPageToken = Core.Nothing,
      sources = Core.Nothing
    }

instance Core.FromJSON ListQuerySourcesResponse where
  parseJSON =
    Core.withObject
      "ListQuerySourcesResponse"
      ( \o ->
          ListQuerySourcesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sources" Core..!= Core.mempty)
      )

instance Core.ToJSON ListQuerySourcesResponse where
  toJSON ListQuerySourcesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sources" Core..=) Core.<$> sources
          ]
      )

--
-- /See:/ 'newListSearchApplicationsResponse' smart constructor.
data ListSearchApplicationsResponse = ListSearchApplicationsResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    searchApplications :: (Core.Maybe [SearchApplication])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSearchApplicationsResponse' with the minimum fields required to make a request.
newListSearchApplicationsResponse ::
  ListSearchApplicationsResponse
newListSearchApplicationsResponse =
  ListSearchApplicationsResponse
    { nextPageToken = Core.Nothing,
      searchApplications = Core.Nothing
    }

instance Core.FromJSON ListSearchApplicationsResponse where
  parseJSON =
    Core.withObject
      "ListSearchApplicationsResponse"
      ( \o ->
          ListSearchApplicationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "searchApplications"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ListSearchApplicationsResponse where
  toJSON ListSearchApplicationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("searchApplications" Core..=)
              Core.<$> searchApplications
          ]
      )

--
-- /See:/ 'newListUnmappedIdentitiesResponse' smart constructor.
data ListUnmappedIdentitiesResponse = ListUnmappedIdentitiesResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    unmappedIdentities :: (Core.Maybe [UnmappedIdentity])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUnmappedIdentitiesResponse' with the minimum fields required to make a request.
newListUnmappedIdentitiesResponse ::
  ListUnmappedIdentitiesResponse
newListUnmappedIdentitiesResponse =
  ListUnmappedIdentitiesResponse
    { nextPageToken = Core.Nothing,
      unmappedIdentities = Core.Nothing
    }

instance Core.FromJSON ListUnmappedIdentitiesResponse where
  parseJSON =
    Core.withObject
      "ListUnmappedIdentitiesResponse"
      ( \o ->
          ListUnmappedIdentitiesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "unmappedIdentities"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ListUnmappedIdentitiesResponse where
  toJSON ListUnmappedIdentitiesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unmappedIdentities" Core..=)
              Core.<$> unmappedIdentities
          ]
      )

-- | Matched range of a snippet [start, end).
--
-- /See:/ 'newMatchRange' smart constructor.
data MatchRange = MatchRange
  { -- | End of the match in the snippet.
    end :: (Core.Maybe Core.Int32),
    -- | Starting position of the match in the snippet.
    start :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MatchRange' with the minimum fields required to make a request.
newMatchRange ::
  MatchRange
newMatchRange = MatchRange {end = Core.Nothing, start = Core.Nothing}

instance Core.FromJSON MatchRange where
  parseJSON =
    Core.withObject
      "MatchRange"
      ( \o ->
          MatchRange
            Core.<$> (o Core..:? "end") Core.<*> (o Core..:? "start")
      )

instance Core.ToJSON MatchRange where
  toJSON MatchRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("end" Core..=) Core.<$> end,
            ("start" Core..=) Core.<$> start
          ]
      )

-- | Media resource.
--
-- /See:/ 'newMedia' smart constructor.
newtype Media = Media
  { -- | Name of the media resource.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Media' with the minimum fields required to make a request.
newMedia ::
  Media
newMedia = Media {resourceName = Core.Nothing}

instance Core.FromJSON Media where
  parseJSON =
    Core.withObject
      "Media"
      (\o -> Media Core.<$> (o Core..:? "resourceName"))

instance Core.ToJSON Media where
  toJSON Media {..} =
    Core.object
      ( Core.catMaybes
          [("resourceName" Core..=) Core.<$> resourceName]
      )

-- | Metadata of a matched search result.
--
-- /See:/ 'newMetadata' smart constructor.
data Metadata = Metadata
  { -- | The creation time for this document or object in the search result.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Options that specify how to display a structured data search result.
    displayOptions :: (Core.Maybe ResultDisplayMetadata),
    -- | Indexed fields in structured data, returned as a generic named property.
    fields :: (Core.Maybe [NamedProperty]),
    -- | Mime type of the search result.
    mimeType :: (Core.Maybe Core.Text),
    -- | Object type of the search result.
    objectType :: (Core.Maybe Core.Text),
    -- | Owner (usually creator) of the document or object of the search result.
    owner :: (Core.Maybe Person),
    -- | The named source for the result, such as Gmail.
    source :: (Core.Maybe Source),
    -- | The thumbnail URL of the result.
    thumbnailUrl :: (Core.Maybe Core.Text),
    -- | The last modified date for the object in the search result. If not set in the item, the value returned here is empty. When @updateTime@ is used for calculating freshness and is not set, this value defaults to 2 years from the current time.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata ::
  Metadata
newMetadata =
  Metadata
    { createTime = Core.Nothing,
      displayOptions = Core.Nothing,
      fields = Core.Nothing,
      mimeType = Core.Nothing,
      objectType = Core.Nothing,
      owner = Core.Nothing,
      source = Core.Nothing,
      thumbnailUrl = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Metadata where
  parseJSON =
    Core.withObject
      "Metadata"
      ( \o ->
          Metadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "displayOptions")
            Core.<*> (o Core..:? "fields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "objectType")
            Core.<*> (o Core..:? "owner")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "thumbnailUrl")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Metadata where
  toJSON Metadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("displayOptions" Core..=) Core.<$> displayOptions,
            ("fields" Core..=) Core.<$> fields,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("objectType" Core..=) Core.<$> objectType,
            ("owner" Core..=) Core.<$> owner,
            ("source" Core..=) Core.<$> source,
            ("thumbnailUrl" Core..=) Core.<$> thumbnailUrl,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | A metaline is a list of properties that are displayed along with the search result to provide context.
--
-- /See:/ 'newMetaline' smart constructor.
newtype Metaline = Metaline
  { -- | The list of displayed properties for the metaline. The maximum number of properties is 5.
    properties :: (Core.Maybe [DisplayedProperty])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metaline' with the minimum fields required to make a request.
newMetaline ::
  Metaline
newMetaline = Metaline {properties = Core.Nothing}

instance Core.FromJSON Metaline where
  parseJSON =
    Core.withObject
      "Metaline"
      ( \o ->
          Metaline
            Core.<$> (o Core..:? "properties" Core..!= Core.mempty)
      )

instance Core.ToJSON Metaline where
  toJSON Metaline {..} =
    Core.object
      ( Core.catMaybes
          [("properties" Core..=) Core.<$> properties]
      )

-- | A person\'s name.
--
-- /See:/ 'newName' smart constructor.
newtype Name = Name
  { -- | The read-only display name formatted according to the locale specified by the viewer\'s account or the Accept-Language HTTP header.
    displayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Name' with the minimum fields required to make a request.
newName ::
  Name
newName = Name {displayName = Core.Nothing}

instance Core.FromJSON Name where
  parseJSON =
    Core.withObject
      "Name"
      (\o -> Name Core.<$> (o Core..:? "displayName"))

instance Core.ToJSON Name where
  toJSON Name {..} =
    Core.object
      ( Core.catMaybes
          [("displayName" Core..=) Core.<$> displayName]
      )

-- | A typed name-value pair for structured data. The type of the value should be the same as the registered type for the @name@ property in the object definition of @objectType@.
--
-- /See:/ 'newNamedProperty' smart constructor.
data NamedProperty = NamedProperty
  { -- |
    booleanValue :: (Core.Maybe Core.Bool),
    -- |
    dateValues :: (Core.Maybe DateValues),
    -- |
    doubleValues :: (Core.Maybe DoubleValues),
    -- |
    enumValues :: (Core.Maybe EnumValues),
    -- |
    htmlValues :: (Core.Maybe HtmlValues),
    -- |
    integerValues :: (Core.Maybe IntegerValues),
    -- | The name of the property. This name should correspond to the name of the property that was registered for object definition in the schema. The maximum allowable length for this property is 256 characters.
    name :: (Core.Maybe Core.Text),
    -- |
    objectValues :: (Core.Maybe ObjectValues),
    -- |
    textValues :: (Core.Maybe TextValues),
    -- |
    timestampValues :: (Core.Maybe TimestampValues)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamedProperty' with the minimum fields required to make a request.
newNamedProperty ::
  NamedProperty
newNamedProperty =
  NamedProperty
    { booleanValue = Core.Nothing,
      dateValues = Core.Nothing,
      doubleValues = Core.Nothing,
      enumValues = Core.Nothing,
      htmlValues = Core.Nothing,
      integerValues = Core.Nothing,
      name = Core.Nothing,
      objectValues = Core.Nothing,
      textValues = Core.Nothing,
      timestampValues = Core.Nothing
    }

instance Core.FromJSON NamedProperty where
  parseJSON =
    Core.withObject
      "NamedProperty"
      ( \o ->
          NamedProperty
            Core.<$> (o Core..:? "booleanValue")
            Core.<*> (o Core..:? "dateValues")
            Core.<*> (o Core..:? "doubleValues")
            Core.<*> (o Core..:? "enumValues")
            Core.<*> (o Core..:? "htmlValues")
            Core.<*> (o Core..:? "integerValues")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "objectValues")
            Core.<*> (o Core..:? "textValues")
            Core.<*> (o Core..:? "timestampValues")
      )

instance Core.ToJSON NamedProperty where
  toJSON NamedProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("booleanValue" Core..=) Core.<$> booleanValue,
            ("dateValues" Core..=) Core.<$> dateValues,
            ("doubleValues" Core..=) Core.<$> doubleValues,
            ("enumValues" Core..=) Core.<$> enumValues,
            ("htmlValues" Core..=) Core.<$> htmlValues,
            ("integerValues" Core..=) Core.<$> integerValues,
            ("name" Core..=) Core.<$> name,
            ("objectValues" Core..=) Core.<$> objectValues,
            ("textValues" Core..=) Core.<$> textValues,
            ("timestampValues" Core..=)
              Core.<$> timestampValues
          ]
      )

-- | The definition for an object within a data source.
--
-- /See:/ 'newObjectDefinition' smart constructor.
data ObjectDefinition = ObjectDefinition
  { -- | Name for the object, which then defines its type. Item indexing requests should set the objectType field equal to this value. For example, if /name/ is /Document/, then indexing requests for items of type Document should set objectType equal to /Document/. Each object definition must be uniquely named within a schema. The name must start with a letter and can only contain letters (A-Z, a-z) or numbers (0-9). The maximum length is 256 characters.
    name :: (Core.Maybe Core.Text),
    -- | The optional object-specific options.
    options :: (Core.Maybe ObjectOptions),
    -- | The property definitions for the object. The maximum number of elements is 1000.
    propertyDefinitions :: (Core.Maybe [PropertyDefinition])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectDefinition' with the minimum fields required to make a request.
newObjectDefinition ::
  ObjectDefinition
newObjectDefinition =
  ObjectDefinition
    { name = Core.Nothing,
      options = Core.Nothing,
      propertyDefinitions = Core.Nothing
    }

instance Core.FromJSON ObjectDefinition where
  parseJSON =
    Core.withObject
      "ObjectDefinition"
      ( \o ->
          ObjectDefinition
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "options")
            Core.<*> ( o Core..:? "propertyDefinitions"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ObjectDefinition where
  toJSON ObjectDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("options" Core..=) Core.<$> options,
            ("propertyDefinitions" Core..=)
              Core.<$> propertyDefinitions
          ]
      )

-- | The display options for an object.
--
-- /See:/ 'newObjectDisplayOptions' smart constructor.
data ObjectDisplayOptions = ObjectDisplayOptions
  { -- | Defines the properties that are displayed in the metalines of the search results. The property values are displayed in the order given here. If a property holds multiple values, all of the values are displayed before the next properties. For this reason, it is a good practice to specify singular properties before repeated properties in this list. All of the properties must set is_returnable to true. The maximum number of metalines is 3.
    metalines :: (Core.Maybe [Metaline]),
    -- | The user friendly label to display in the search result to indicate the type of the item. This is OPTIONAL; if not provided, an object label isn\'t displayed on the context line of the search results. The maximum length is 64 characters.
    objectDisplayLabel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectDisplayOptions' with the minimum fields required to make a request.
newObjectDisplayOptions ::
  ObjectDisplayOptions
newObjectDisplayOptions =
  ObjectDisplayOptions
    { metalines = Core.Nothing,
      objectDisplayLabel = Core.Nothing
    }

instance Core.FromJSON ObjectDisplayOptions where
  parseJSON =
    Core.withObject
      "ObjectDisplayOptions"
      ( \o ->
          ObjectDisplayOptions
            Core.<$> (o Core..:? "metalines" Core..!= Core.mempty)
            Core.<*> (o Core..:? "objectDisplayLabel")
      )

instance Core.ToJSON ObjectDisplayOptions where
  toJSON ObjectDisplayOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("metalines" Core..=) Core.<$> metalines,
            ("objectDisplayLabel" Core..=)
              Core.<$> objectDisplayLabel
          ]
      )

-- | The options for an object.
--
-- /See:/ 'newObjectOptions' smart constructor.
data ObjectOptions = ObjectOptions
  { -- | Options that determine how the object is displayed in the Cloud Search results page.
    displayOptions :: (Core.Maybe ObjectDisplayOptions),
    -- | The freshness options for an object.
    freshnessOptions :: (Core.Maybe FreshnessOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectOptions' with the minimum fields required to make a request.
newObjectOptions ::
  ObjectOptions
newObjectOptions =
  ObjectOptions {displayOptions = Core.Nothing, freshnessOptions = Core.Nothing}

instance Core.FromJSON ObjectOptions where
  parseJSON =
    Core.withObject
      "ObjectOptions"
      ( \o ->
          ObjectOptions
            Core.<$> (o Core..:? "displayOptions")
            Core.<*> (o Core..:? "freshnessOptions")
      )

instance Core.ToJSON ObjectOptions where
  toJSON ObjectOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayOptions" Core..=) Core.<$> displayOptions,
            ("freshnessOptions" Core..=)
              Core.<$> freshnessOptions
          ]
      )

-- | Options for object properties.
--
-- /See:/ 'newObjectPropertyOptions' smart constructor.
newtype ObjectPropertyOptions = ObjectPropertyOptions
  { -- | The properties of the sub-object. These properties represent a nested object. For example, if this property represents a postal address, the subobjectProperties might be named /street/, /city/, and /state/. The maximum number of elements is 1000.
    subobjectProperties :: (Core.Maybe [PropertyDefinition])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectPropertyOptions' with the minimum fields required to make a request.
newObjectPropertyOptions ::
  ObjectPropertyOptions
newObjectPropertyOptions =
  ObjectPropertyOptions {subobjectProperties = Core.Nothing}

instance Core.FromJSON ObjectPropertyOptions where
  parseJSON =
    Core.withObject
      "ObjectPropertyOptions"
      ( \o ->
          ObjectPropertyOptions
            Core.<$> ( o Core..:? "subobjectProperties"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ObjectPropertyOptions where
  toJSON ObjectPropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("subobjectProperties" Core..=)
              Core.<$> subobjectProperties
          ]
      )

-- | List of object values.
--
-- /See:/ 'newObjectValues' smart constructor.
newtype ObjectValues = ObjectValues
  { -- |
    values :: (Core.Maybe [StructuredDataObject])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectValues' with the minimum fields required to make a request.
newObjectValues ::
  ObjectValues
newObjectValues = ObjectValues {values = Core.Nothing}

instance Core.FromJSON ObjectValues where
  parseJSON =
    Core.withObject
      "ObjectValues"
      ( \o ->
          ObjectValues
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON ObjectValues where
  toJSON ObjectValues {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | This field contains information about the person being suggested.
--
-- /See:/ 'newPeopleSuggestion' smart constructor.
newtype PeopleSuggestion = PeopleSuggestion
  { -- | Suggested person. All fields of the person object might not be populated.
    person :: (Core.Maybe Person)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleSuggestion' with the minimum fields required to make a request.
newPeopleSuggestion ::
  PeopleSuggestion
newPeopleSuggestion = PeopleSuggestion {person = Core.Nothing}

instance Core.FromJSON PeopleSuggestion where
  parseJSON =
    Core.withObject
      "PeopleSuggestion"
      ( \o ->
          PeopleSuggestion Core.<$> (o Core..:? "person")
      )

instance Core.ToJSON PeopleSuggestion where
  toJSON PeopleSuggestion {..} =
    Core.object
      (Core.catMaybes [("person" Core..=) Core.<$> person])

-- | Object to represent a person.
--
-- /See:/ 'newPerson' smart constructor.
data Person = Person
  { -- | The person\'s email addresses
    emailAddresses :: (Core.Maybe [EmailAddress]),
    -- | The resource name of the person to provide information about. See People.get from Google People API.
    name :: (Core.Maybe Core.Text),
    -- | Obfuscated ID of a person.
    obfuscatedId :: (Core.Maybe Core.Text),
    -- | The person\'s name
    personNames :: (Core.Maybe [Name]),
    -- | A person\'s read-only photo. A picture shown next to the person\'s name to help others recognize the person in search results.
    photos :: (Core.Maybe [Photo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
newPerson ::
  Person
newPerson =
  Person
    { emailAddresses = Core.Nothing,
      name = Core.Nothing,
      obfuscatedId = Core.Nothing,
      personNames = Core.Nothing,
      photos = Core.Nothing
    }

instance Core.FromJSON Person where
  parseJSON =
    Core.withObject
      "Person"
      ( \o ->
          Person
            Core.<$> (o Core..:? "emailAddresses" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "obfuscatedId")
            Core.<*> (o Core..:? "personNames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "photos" Core..!= Core.mempty)
      )

instance Core.ToJSON Person where
  toJSON Person {..} =
    Core.object
      ( Core.catMaybes
          [ ("emailAddresses" Core..=) Core.<$> emailAddresses,
            ("name" Core..=) Core.<$> name,
            ("obfuscatedId" Core..=) Core.<$> obfuscatedId,
            ("personNames" Core..=) Core.<$> personNames,
            ("photos" Core..=) Core.<$> photos
          ]
      )

-- | A person\'s photo.
--
-- /See:/ 'newPhoto' smart constructor.
newtype Photo = Photo
  { -- | The URL of the photo.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
newPhoto ::
  Photo
newPhoto = Photo {url = Core.Nothing}

instance Core.FromJSON Photo where
  parseJSON =
    Core.withObject
      "Photo"
      (\o -> Photo Core.<$> (o Core..:? "url"))

instance Core.ToJSON Photo where
  toJSON Photo {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

--
-- /See:/ 'newPollItemsRequest' smart constructor.
data PollItemsRequest = PollItemsRequest
  { -- | Name of connector making this call. Format: datasources\/{source_id}\/connectors\/{ID}
    connectorName :: (Core.Maybe Core.Text),
    -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions),
    -- | Maximum number of items to return. The maximum value is 100 and the default value is 20.
    limit :: (Core.Maybe Core.Int32),
    -- | Queue name to fetch items from. If unspecified, PollItems will fetch from \'default\' queue. The maximum length is 100 characters.
    queue :: (Core.Maybe Core.Text),
    -- | Limit the items polled to the ones with these statuses.
    statusCodes :: (Core.Maybe [PollItemsRequest_StatusCodesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PollItemsRequest' with the minimum fields required to make a request.
newPollItemsRequest ::
  PollItemsRequest
newPollItemsRequest =
  PollItemsRequest
    { connectorName = Core.Nothing,
      debugOptions = Core.Nothing,
      limit = Core.Nothing,
      queue = Core.Nothing,
      statusCodes = Core.Nothing
    }

instance Core.FromJSON PollItemsRequest where
  parseJSON =
    Core.withObject
      "PollItemsRequest"
      ( \o ->
          PollItemsRequest
            Core.<$> (o Core..:? "connectorName")
            Core.<*> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "limit")
            Core.<*> (o Core..:? "queue")
            Core.<*> (o Core..:? "statusCodes" Core..!= Core.mempty)
      )

instance Core.ToJSON PollItemsRequest where
  toJSON PollItemsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectorName" Core..=) Core.<$> connectorName,
            ("debugOptions" Core..=) Core.<$> debugOptions,
            ("limit" Core..=) Core.<$> limit,
            ("queue" Core..=) Core.<$> queue,
            ("statusCodes" Core..=) Core.<$> statusCodes
          ]
      )

--
-- /See:/ 'newPollItemsResponse' smart constructor.
newtype PollItemsResponse = PollItemsResponse
  { -- | Set of items from the queue available for connector to process. These items have the following subset of fields populated: version metadata.hash structured_data.hash content.hash payload status queue
    items :: (Core.Maybe [Item])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PollItemsResponse' with the minimum fields required to make a request.
newPollItemsResponse ::
  PollItemsResponse
newPollItemsResponse = PollItemsResponse {items = Core.Nothing}

instance Core.FromJSON PollItemsResponse where
  parseJSON =
    Core.withObject
      "PollItemsResponse"
      ( \o ->
          PollItemsResponse
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
      )

instance Core.ToJSON PollItemsResponse where
  toJSON PollItemsResponse {..} =
    Core.object
      (Core.catMaybes [("items" Core..=) Core.<$> items])

-- | Reference to a user, group, or domain.
--
-- /See:/ 'newPrincipal' smart constructor.
data Principal = Principal
  { -- | This principal is a group identified using an external identity. The name field must specify the group resource name with this format: identitysources\/{source_id}\/groups\/{ID}
    groupResourceName :: (Core.Maybe Core.Text),
    -- | This principal is a GSuite user, group or domain.
    gsuitePrincipal :: (Core.Maybe GSuitePrincipal),
    -- | This principal is a user identified using an external identity. The name field must specify the user resource name with this format: identitysources\/{source_id}\/users\/{ID}
    userResourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Principal' with the minimum fields required to make a request.
newPrincipal ::
  Principal
newPrincipal =
  Principal
    { groupResourceName = Core.Nothing,
      gsuitePrincipal = Core.Nothing,
      userResourceName = Core.Nothing
    }

instance Core.FromJSON Principal where
  parseJSON =
    Core.withObject
      "Principal"
      ( \o ->
          Principal
            Core.<$> (o Core..:? "groupResourceName")
            Core.<*> (o Core..:? "gsuitePrincipal")
            Core.<*> (o Core..:? "userResourceName")
      )

instance Core.ToJSON Principal where
  toJSON Principal {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupResourceName" Core..=)
              Core.<$> groupResourceName,
            ("gsuitePrincipal" Core..=) Core.<$> gsuitePrincipal,
            ("userResourceName" Core..=)
              Core.<$> userResourceName
          ]
      )

--
-- /See:/ 'newProcessingError' smart constructor.
data ProcessingError = ProcessingError
  { -- | Error code indicating the nature of the error.
    code :: (Core.Maybe ProcessingError_Code),
    -- | Description of the error.
    errorMessage :: (Core.Maybe Core.Text),
    -- | In case the item fields are invalid, this field contains the details about the validation errors.
    fieldViolations :: (Core.Maybe [FieldViolation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProcessingError' with the minimum fields required to make a request.
newProcessingError ::
  ProcessingError
newProcessingError =
  ProcessingError
    { code = Core.Nothing,
      errorMessage = Core.Nothing,
      fieldViolations = Core.Nothing
    }

instance Core.FromJSON ProcessingError where
  parseJSON =
    Core.withObject
      "ProcessingError"
      ( \o ->
          ProcessingError
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "fieldViolations" Core..!= Core.mempty)
      )

instance Core.ToJSON ProcessingError where
  toJSON ProcessingError {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("fieldViolations" Core..=)
              Core.<$> fieldViolations
          ]
      )

-- | The definition of a property within an object.
--
-- /See:/ 'newPropertyDefinition' smart constructor.
data PropertyDefinition = PropertyDefinition
  { -- |
    booleanPropertyOptions :: (Core.Maybe BooleanPropertyOptions),
    -- |
    datePropertyOptions :: (Core.Maybe DatePropertyOptions),
    -- | Options that determine how the property is displayed in the Cloud Search results page if it is specified to be displayed in the object\'s display options .
    displayOptions :: (Core.Maybe PropertyDisplayOptions),
    -- |
    doublePropertyOptions :: (Core.Maybe DoublePropertyOptions),
    -- |
    enumPropertyOptions :: (Core.Maybe EnumPropertyOptions),
    -- |
    htmlPropertyOptions :: (Core.Maybe HtmlPropertyOptions),
    -- |
    integerPropertyOptions :: (Core.Maybe IntegerPropertyOptions),
    -- | Indicates that the property can be used for generating facets. Cannot be true for properties whose type is object. IsReturnable must be true to set this option. Only supported for Boolean, Enum, and Text properties.
    isFacetable :: (Core.Maybe Core.Bool),
    -- | Indicates that multiple values are allowed for the property. For example, a document only has one description but can have multiple comments. Cannot be true for properties whose type is a boolean. If set to false, properties that contain more than one value cause the indexing request for that item to be rejected.
    isRepeatable :: (Core.Maybe Core.Bool),
    -- | Indicates that the property identifies data that should be returned in search results via the Query API. If set to /true/, indicates that Query API users can use matching property fields in results. However, storing fields requires more space allocation and uses more bandwidth for search queries, which impacts performance over large datasets. Set to /true/ here only if the field is needed for search results. Cannot be true for properties whose type is an object.
    isReturnable :: (Core.Maybe Core.Bool),
    -- | Indicates that the property can be used for sorting. Cannot be true for properties that are repeatable. Cannot be true for properties whose type is object. IsReturnable must be true to set this option. Only supported for Boolean, Date, Double, Integer, and Timestamp properties.
    isSortable :: (Core.Maybe Core.Bool),
    -- | Indicates that the property can be used for generating query suggestions.
    isSuggestable :: (Core.Maybe Core.Bool),
    -- | Indicates that users can perform wildcard search for this property. Only supported for Text properties. IsReturnable must be true to set this option. In a given datasource maximum of 5 properties can be marked as is/wildcard/searchable.
    isWildcardSearchable :: (Core.Maybe Core.Bool),
    -- | The name of the property. Item indexing requests sent to the Indexing API should set the property name equal to this value. For example, if name is /subject/line/, then indexing requests for document items with subject fields should set the name for that field equal to /subject/line/. Use the name as the identifier for the object property. Once registered as a property for an object, you cannot re-use this name for another property within that object. The name must start with a letter and can only contain letters (A-Z, a-z) or numbers (0-9). The maximum length is 256 characters.
    name :: (Core.Maybe Core.Text),
    -- |
    objectPropertyOptions :: (Core.Maybe ObjectPropertyOptions),
    -- |
    textPropertyOptions :: (Core.Maybe TextPropertyOptions),
    -- |
    timestampPropertyOptions :: (Core.Maybe TimestampPropertyOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PropertyDefinition' with the minimum fields required to make a request.
newPropertyDefinition ::
  PropertyDefinition
newPropertyDefinition =
  PropertyDefinition
    { booleanPropertyOptions = Core.Nothing,
      datePropertyOptions = Core.Nothing,
      displayOptions = Core.Nothing,
      doublePropertyOptions = Core.Nothing,
      enumPropertyOptions = Core.Nothing,
      htmlPropertyOptions = Core.Nothing,
      integerPropertyOptions = Core.Nothing,
      isFacetable = Core.Nothing,
      isRepeatable = Core.Nothing,
      isReturnable = Core.Nothing,
      isSortable = Core.Nothing,
      isSuggestable = Core.Nothing,
      isWildcardSearchable = Core.Nothing,
      name = Core.Nothing,
      objectPropertyOptions = Core.Nothing,
      textPropertyOptions = Core.Nothing,
      timestampPropertyOptions = Core.Nothing
    }

instance Core.FromJSON PropertyDefinition where
  parseJSON =
    Core.withObject
      "PropertyDefinition"
      ( \o ->
          PropertyDefinition
            Core.<$> (o Core..:? "booleanPropertyOptions")
            Core.<*> (o Core..:? "datePropertyOptions")
            Core.<*> (o Core..:? "displayOptions")
            Core.<*> (o Core..:? "doublePropertyOptions")
            Core.<*> (o Core..:? "enumPropertyOptions")
            Core.<*> (o Core..:? "htmlPropertyOptions")
            Core.<*> (o Core..:? "integerPropertyOptions")
            Core.<*> (o Core..:? "isFacetable")
            Core.<*> (o Core..:? "isRepeatable")
            Core.<*> (o Core..:? "isReturnable")
            Core.<*> (o Core..:? "isSortable")
            Core.<*> (o Core..:? "isSuggestable")
            Core.<*> (o Core..:? "isWildcardSearchable")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "objectPropertyOptions")
            Core.<*> (o Core..:? "textPropertyOptions")
            Core.<*> (o Core..:? "timestampPropertyOptions")
      )

instance Core.ToJSON PropertyDefinition where
  toJSON PropertyDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("booleanPropertyOptions" Core..=)
              Core.<$> booleanPropertyOptions,
            ("datePropertyOptions" Core..=)
              Core.<$> datePropertyOptions,
            ("displayOptions" Core..=) Core.<$> displayOptions,
            ("doublePropertyOptions" Core..=)
              Core.<$> doublePropertyOptions,
            ("enumPropertyOptions" Core..=)
              Core.<$> enumPropertyOptions,
            ("htmlPropertyOptions" Core..=)
              Core.<$> htmlPropertyOptions,
            ("integerPropertyOptions" Core..=)
              Core.<$> integerPropertyOptions,
            ("isFacetable" Core..=) Core.<$> isFacetable,
            ("isRepeatable" Core..=) Core.<$> isRepeatable,
            ("isReturnable" Core..=) Core.<$> isReturnable,
            ("isSortable" Core..=) Core.<$> isSortable,
            ("isSuggestable" Core..=) Core.<$> isSuggestable,
            ("isWildcardSearchable" Core..=)
              Core.<$> isWildcardSearchable,
            ("name" Core..=) Core.<$> name,
            ("objectPropertyOptions" Core..=)
              Core.<$> objectPropertyOptions,
            ("textPropertyOptions" Core..=)
              Core.<$> textPropertyOptions,
            ("timestampPropertyOptions" Core..=)
              Core.<$> timestampPropertyOptions
          ]
      )

-- | The display options for a property.
--
-- /See:/ 'newPropertyDisplayOptions' smart constructor.
newtype PropertyDisplayOptions = PropertyDisplayOptions
  { -- | The user friendly label for the property that is used if the property is specified to be displayed in ObjectDisplayOptions. If provided, the display label is shown in front of the property values when the property is part of the object display options. For example, if the property value is \'1\', the value by itself may not be useful context for the user. If the display name given was \'priority\', then the user sees \'priority : 1\' in the search results which provides clear context to search users. This is OPTIONAL; if not given, only the property values are displayed. The maximum length is 64 characters.
    displayLabel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PropertyDisplayOptions' with the minimum fields required to make a request.
newPropertyDisplayOptions ::
  PropertyDisplayOptions
newPropertyDisplayOptions = PropertyDisplayOptions {displayLabel = Core.Nothing}

instance Core.FromJSON PropertyDisplayOptions where
  parseJSON =
    Core.withObject
      "PropertyDisplayOptions"
      ( \o ->
          PropertyDisplayOptions
            Core.<$> (o Core..:? "displayLabel")
      )

instance Core.ToJSON PropertyDisplayOptions where
  toJSON PropertyDisplayOptions {..} =
    Core.object
      ( Core.catMaybes
          [("displayLabel" Core..=) Core.<$> displayLabel]
      )

-- | Represents an item to be pushed to the indexing queue.
--
-- /See:/ 'newPushItem' smart constructor.
data PushItem = PushItem
  { -- | Content hash of the item according to the repository. If specified, this is used to determine how to modify this item\'s status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.
    contentHash :: (Core.Maybe Core.Text),
    -- | Metadata hash of the item according to the repository. If specified, this is used to determine how to modify this item\'s status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.
    metadataHash :: (Core.Maybe Core.Text),
    -- | Provides additional document state information for the connector, such as an alternate repository ID and other metadata. The maximum length is 8192 bytes.
    payload :: (Core.Maybe Core.Base64),
    -- | Queue to which this item belongs to. The default queue is chosen if this field is not specified. The maximum length is 512 characters.
    queue :: (Core.Maybe Core.Text),
    -- | Populate this field to store Connector or repository error details. This information is displayed in the Admin Console. This field may only be populated when the Type is REPOSITORY_ERROR.
    repositoryError :: (Core.Maybe RepositoryError),
    -- | Structured data hash of the item according to the repository. If specified, this is used to determine how to modify this item\'s status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.
    structuredDataHash :: (Core.Maybe Core.Text),
    -- | The type of the push operation that defines the push behavior.
    type' :: (Core.Maybe PushItem_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PushItem' with the minimum fields required to make a request.
newPushItem ::
  PushItem
newPushItem =
  PushItem
    { contentHash = Core.Nothing,
      metadataHash = Core.Nothing,
      payload = Core.Nothing,
      queue = Core.Nothing,
      repositoryError = Core.Nothing,
      structuredDataHash = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON PushItem where
  parseJSON =
    Core.withObject
      "PushItem"
      ( \o ->
          PushItem
            Core.<$> (o Core..:? "contentHash")
            Core.<*> (o Core..:? "metadataHash")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "queue")
            Core.<*> (o Core..:? "repositoryError")
            Core.<*> (o Core..:? "structuredDataHash")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON PushItem where
  toJSON PushItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentHash" Core..=) Core.<$> contentHash,
            ("metadataHash" Core..=) Core.<$> metadataHash,
            ("payload" Core..=) Core.<$> payload,
            ("queue" Core..=) Core.<$> queue,
            ("repositoryError" Core..=) Core.<$> repositoryError,
            ("structuredDataHash" Core..=)
              Core.<$> structuredDataHash,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newPushItemRequest' smart constructor.
data PushItemRequest = PushItemRequest
  { -- | Name of connector making this call. Format: datasources\/{source_id}\/connectors\/{ID}
    connectorName :: (Core.Maybe Core.Text),
    -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions),
    -- | Item to push onto the queue.
    item :: (Core.Maybe PushItem)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PushItemRequest' with the minimum fields required to make a request.
newPushItemRequest ::
  PushItemRequest
newPushItemRequest =
  PushItemRequest
    { connectorName = Core.Nothing,
      debugOptions = Core.Nothing,
      item = Core.Nothing
    }

instance Core.FromJSON PushItemRequest where
  parseJSON =
    Core.withObject
      "PushItemRequest"
      ( \o ->
          PushItemRequest
            Core.<$> (o Core..:? "connectorName")
            Core.<*> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "item")
      )

instance Core.ToJSON PushItemRequest where
  toJSON PushItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectorName" Core..=) Core.<$> connectorName,
            ("debugOptions" Core..=) Core.<$> debugOptions,
            ("item" Core..=) Core.<$> item
          ]
      )

--
-- /See:/ 'newQueryCountByStatus' smart constructor.
data QueryCountByStatus = QueryCountByStatus
  { -- |
    count :: (Core.Maybe Core.Int64),
    -- | This represents the http status code.
    statusCode :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryCountByStatus' with the minimum fields required to make a request.
newQueryCountByStatus ::
  QueryCountByStatus
newQueryCountByStatus =
  QueryCountByStatus {count = Core.Nothing, statusCode = Core.Nothing}

instance Core.FromJSON QueryCountByStatus where
  parseJSON =
    Core.withObject
      "QueryCountByStatus"
      ( \o ->
          QueryCountByStatus
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "statusCode")
      )

instance Core.ToJSON QueryCountByStatus where
  toJSON QueryCountByStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("statusCode" Core..=) Core.<$> statusCode
          ]
      )

--
-- /See:/ 'newQueryInterpretation' smart constructor.
data QueryInterpretation = QueryInterpretation
  { -- |
    interpretationType :: (Core.Maybe QueryInterpretation_InterpretationType),
    -- | The interpretation of the query used in search. For example, queries with natural language intent like \"email from john\" will be interpreted as \"from:john source:mail\". This field will not be filled when the reason is NOT/ENOUGH/RESULTS/FOUND/FOR/USER/QUERY.
    interpretedQuery :: (Core.Maybe Core.Text),
    -- | The reason for interpretation of the query. This field will not be UNSPECIFIED if the interpretation type is not NONE.
    reason :: (Core.Maybe QueryInterpretation_Reason)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryInterpretation' with the minimum fields required to make a request.
newQueryInterpretation ::
  QueryInterpretation
newQueryInterpretation =
  QueryInterpretation
    { interpretationType = Core.Nothing,
      interpretedQuery = Core.Nothing,
      reason = Core.Nothing
    }

instance Core.FromJSON QueryInterpretation where
  parseJSON =
    Core.withObject
      "QueryInterpretation"
      ( \o ->
          QueryInterpretation
            Core.<$> (o Core..:? "interpretationType")
            Core.<*> (o Core..:? "interpretedQuery")
            Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON QueryInterpretation where
  toJSON QueryInterpretation {..} =
    Core.object
      ( Core.catMaybes
          [ ("interpretationType" Core..=)
              Core.<$> interpretationType,
            ("interpretedQuery" Core..=)
              Core.<$> interpretedQuery,
            ("reason" Core..=) Core.<$> reason
          ]
      )

-- | Default options to interpret user query.
--
-- /See:/ 'newQueryInterpretationConfig' smart constructor.
data QueryInterpretationConfig = QueryInterpretationConfig
  { -- | Set this flag to disable supplemental results retrieval, setting a flag here will not retrieve supplemental results for queries associated with a given search application. If this flag is set to True, it will take precedence over the option set at Query level. For the default value of False, query level flag will set the correct interpretation for supplemental results.
    forceDisableSupplementalResults :: (Core.Maybe Core.Bool),
    -- | Enable this flag to turn off all internal optimizations like natural language (NL) interpretation of queries, supplemental results retrieval, and usage of synonyms including custom ones. If this flag is set to True, it will take precedence over the option set at Query level. For the default value of False, query level flag will set the correct interpretation for verbatim mode.
    forceVerbatimMode :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryInterpretationConfig' with the minimum fields required to make a request.
newQueryInterpretationConfig ::
  QueryInterpretationConfig
newQueryInterpretationConfig =
  QueryInterpretationConfig
    { forceDisableSupplementalResults = Core.Nothing,
      forceVerbatimMode = Core.Nothing
    }

instance Core.FromJSON QueryInterpretationConfig where
  parseJSON =
    Core.withObject
      "QueryInterpretationConfig"
      ( \o ->
          QueryInterpretationConfig
            Core.<$> (o Core..:? "forceDisableSupplementalResults")
            Core.<*> (o Core..:? "forceVerbatimMode")
      )

instance Core.ToJSON QueryInterpretationConfig where
  toJSON QueryInterpretationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("forceDisableSupplementalResults" Core..=)
              Core.<$> forceDisableSupplementalResults,
            ("forceVerbatimMode" Core..=)
              Core.<$> forceVerbatimMode
          ]
      )

-- | Options to interpret user query.
--
-- /See:/ 'newQueryInterpretationOptions' smart constructor.
data QueryInterpretationOptions = QueryInterpretationOptions
  { -- | Flag to disable natural language (NL) interpretation of queries. Default is false, Set to true to disable natural language interpretation. NL interpretation only applies to predefined datasources.
    disableNlInterpretation :: (Core.Maybe Core.Bool),
    -- | Use this flag to disable supplemental results for a query. Supplemental results setting chosen at SearchApplication level will take precedence if set to True.
    disableSupplementalResults :: (Core.Maybe Core.Bool),
    -- | Enable this flag to turn off all internal optimizations like natural language (NL) interpretation of queries, supplemental result retrieval, and usage of synonyms including custom ones. Nl interpretation will be disabled if either one of the two flags is true.
    enableVerbatimMode :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryInterpretationOptions' with the minimum fields required to make a request.
newQueryInterpretationOptions ::
  QueryInterpretationOptions
newQueryInterpretationOptions =
  QueryInterpretationOptions
    { disableNlInterpretation = Core.Nothing,
      disableSupplementalResults = Core.Nothing,
      enableVerbatimMode = Core.Nothing
    }

instance Core.FromJSON QueryInterpretationOptions where
  parseJSON =
    Core.withObject
      "QueryInterpretationOptions"
      ( \o ->
          QueryInterpretationOptions
            Core.<$> (o Core..:? "disableNlInterpretation")
            Core.<*> (o Core..:? "disableSupplementalResults")
            Core.<*> (o Core..:? "enableVerbatimMode")
      )

instance Core.ToJSON QueryInterpretationOptions where
  toJSON QueryInterpretationOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("disableNlInterpretation" Core..=)
              Core.<$> disableNlInterpretation,
            ("disableSupplementalResults" Core..=)
              Core.<$> disableSupplementalResults,
            ("enableVerbatimMode" Core..=)
              Core.<$> enableVerbatimMode
          ]
      )

-- | Information relevant only to a query entry.
--
-- /See:/ 'newQueryItem' smart constructor.
newtype QueryItem = QueryItem
  { -- | True if the text was generated by means other than a previous user search.
    isSynthetic :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryItem' with the minimum fields required to make a request.
newQueryItem ::
  QueryItem
newQueryItem = QueryItem {isSynthetic = Core.Nothing}

instance Core.FromJSON QueryItem where
  parseJSON =
    Core.withObject
      "QueryItem"
      ( \o ->
          QueryItem Core.<$> (o Core..:? "isSynthetic")
      )

instance Core.ToJSON QueryItem where
  toJSON QueryItem {..} =
    Core.object
      ( Core.catMaybes
          [("isSynthetic" Core..=) Core.<$> isSynthetic]
      )

-- | The definition of a operator that can be used in a Search\/Suggest request.
--
-- /See:/ 'newQueryOperator' smart constructor.
data QueryOperator = QueryOperator
  { -- | Display name of the operator
    displayName :: (Core.Maybe Core.Text),
    -- | Potential list of values for the opeatror field. This field is only filled when we can safely enumerate all the possible values of this operator.
    enumValues :: (Core.Maybe [Core.Text]),
    -- | Indicates the operator name that can be used to isolate the property using the greater-than operator.
    greaterThanOperatorName :: (Core.Maybe Core.Text),
    -- | Can this operator be used to get facets.
    isFacetable :: (Core.Maybe Core.Bool),
    -- | Indicates if multiple values can be set for this property.
    isRepeatable :: (Core.Maybe Core.Bool),
    -- | Will the property associated with this facet be returned as part of search results.
    isReturnable :: (Core.Maybe Core.Bool),
    -- | Can this operator be used to sort results.
    isSortable :: (Core.Maybe Core.Bool),
    -- | Can get suggestions for this field.
    isSuggestable :: (Core.Maybe Core.Bool),
    -- | Indicates the operator name that can be used to isolate the property using the less-than operator.
    lessThanOperatorName :: (Core.Maybe Core.Text),
    -- | Name of the object corresponding to the operator. This field is only filled for schema-specific operators, and is unset for common operators.
    objectType :: (Core.Maybe Core.Text),
    -- | The name of the operator.
    operatorName :: (Core.Maybe Core.Text),
    -- | Type of the operator.
    type' :: (Core.Maybe QueryOperator_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryOperator' with the minimum fields required to make a request.
newQueryOperator ::
  QueryOperator
newQueryOperator =
  QueryOperator
    { displayName = Core.Nothing,
      enumValues = Core.Nothing,
      greaterThanOperatorName = Core.Nothing,
      isFacetable = Core.Nothing,
      isRepeatable = Core.Nothing,
      isReturnable = Core.Nothing,
      isSortable = Core.Nothing,
      isSuggestable = Core.Nothing,
      lessThanOperatorName = Core.Nothing,
      objectType = Core.Nothing,
      operatorName = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON QueryOperator where
  parseJSON =
    Core.withObject
      "QueryOperator"
      ( \o ->
          QueryOperator
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "enumValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "greaterThanOperatorName")
            Core.<*> (o Core..:? "isFacetable")
            Core.<*> (o Core..:? "isRepeatable")
            Core.<*> (o Core..:? "isReturnable")
            Core.<*> (o Core..:? "isSortable")
            Core.<*> (o Core..:? "isSuggestable")
            Core.<*> (o Core..:? "lessThanOperatorName")
            Core.<*> (o Core..:? "objectType")
            Core.<*> (o Core..:? "operatorName")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON QueryOperator where
  toJSON QueryOperator {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("enumValues" Core..=) Core.<$> enumValues,
            ("greaterThanOperatorName" Core..=)
              Core.<$> greaterThanOperatorName,
            ("isFacetable" Core..=) Core.<$> isFacetable,
            ("isRepeatable" Core..=) Core.<$> isRepeatable,
            ("isReturnable" Core..=) Core.<$> isReturnable,
            ("isSortable" Core..=) Core.<$> isSortable,
            ("isSuggestable" Core..=) Core.<$> isSuggestable,
            ("lessThanOperatorName" Core..=)
              Core.<$> lessThanOperatorName,
            ("objectType" Core..=) Core.<$> objectType,
            ("operatorName" Core..=) Core.<$> operatorName,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | List of sources that the user can search using the query API.
--
-- /See:/ 'newQuerySource' smart constructor.
data QuerySource = QuerySource
  { -- | Display name of the data source.
    displayName :: (Core.Maybe Core.Text),
    -- | List of all operators applicable for this source.
    operators :: (Core.Maybe [QueryOperator]),
    -- | A short name or alias for the source. This value can be used with the \'source\' operator.
    shortName :: (Core.Maybe Core.Text),
    -- | Name of the source
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QuerySource' with the minimum fields required to make a request.
newQuerySource ::
  QuerySource
newQuerySource =
  QuerySource
    { displayName = Core.Nothing,
      operators = Core.Nothing,
      shortName = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON QuerySource where
  parseJSON =
    Core.withObject
      "QuerySource"
      ( \o ->
          QuerySource
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "operators" Core..!= Core.mempty)
            Core.<*> (o Core..:? "shortName")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON QuerySource where
  toJSON QuerySource {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("operators" Core..=) Core.<$> operators,
            ("shortName" Core..=) Core.<$> shortName,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | This field does not contain anything as of now and is just used as an indicator that the suggest result was a phrase completion.
--
-- /See:/ 'newQuerySuggestion' smart constructor.
data QuerySuggestion = QuerySuggestion
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QuerySuggestion' with the minimum fields required to make a request.
newQuerySuggestion ::
  QuerySuggestion
newQuerySuggestion = QuerySuggestion

instance Core.FromJSON QuerySuggestion where
  parseJSON =
    Core.withObject
      "QuerySuggestion"
      (\o -> Core.pure QuerySuggestion)

instance Core.ToJSON QuerySuggestion where
  toJSON = Core.const Core.emptyObject

-- | Errors when the connector is communicating to the source repository.
--
-- /See:/ 'newRepositoryError' smart constructor.
data RepositoryError = RepositoryError
  { -- | Message that describes the error. The maximum allowable length of the message is 8192 characters.
    errorMessage :: (Core.Maybe Core.Text),
    -- | Error codes. Matches the definition of HTTP status codes.
    httpStatusCode :: (Core.Maybe Core.Int32),
    -- | Type of error.
    type' :: (Core.Maybe RepositoryError_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepositoryError' with the minimum fields required to make a request.
newRepositoryError ::
  RepositoryError
newRepositoryError =
  RepositoryError
    { errorMessage = Core.Nothing,
      httpStatusCode = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON RepositoryError where
  parseJSON =
    Core.withObject
      "RepositoryError"
      ( \o ->
          RepositoryError
            Core.<$> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "httpStatusCode")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON RepositoryError where
  toJSON RepositoryError {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorMessage" Core..=) Core.<$> errorMessage,
            ("httpStatusCode" Core..=) Core.<$> httpStatusCode,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Shared request options for all RPC methods.
--
-- /See:/ 'newRequestOptions' smart constructor.
data RequestOptions = RequestOptions
  { -- | Debug options of the request
    debugOptions :: (Core.Maybe DebugOptions),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier. For translations. Set this field using the language set in browser or for the page. In the event that the user\'s language preference is known, set this field to the known user language. When specified, the documents in search results are biased towards the specified language. The suggest API does not use this parameter. Instead, suggest autocompletes only based on characters in the query.
    languageCode :: (Core.Maybe Core.Text),
    -- | The ID generated when you create a search application using the <https://support.google.com/a/answer/9043922 admin console>.
    searchApplicationId :: (Core.Maybe Core.Text),
    -- | Current user\'s time zone id, such as \"America\/Los_Angeles\" or \"Australia\/Sydney\". These IDs are defined by <http://cldr.unicode.org/ Unicode Common Locale Data Repository (CLDR)> project, and currently available in the file <http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml timezone.xml>. This field is used to correctly interpret date and time queries. If this field is not specified, the default time zone (UTC) is used.
    timeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestOptions' with the minimum fields required to make a request.
newRequestOptions ::
  RequestOptions
newRequestOptions =
  RequestOptions
    { debugOptions = Core.Nothing,
      languageCode = Core.Nothing,
      searchApplicationId = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.FromJSON RequestOptions where
  parseJSON =
    Core.withObject
      "RequestOptions"
      ( \o ->
          RequestOptions
            Core.<$> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "searchApplicationId")
            Core.<*> (o Core..:? "timeZone")
      )

instance Core.ToJSON RequestOptions where
  toJSON RequestOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("debugOptions" Core..=) Core.<$> debugOptions,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("searchApplicationId" Core..=)
              Core.<$> searchApplicationId,
            ("timeZone" Core..=) Core.<$> timeZone
          ]
      )

--
-- /See:/ 'newResetSearchApplicationRequest' smart constructor.
newtype ResetSearchApplicationRequest = ResetSearchApplicationRequest
  { -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResetSearchApplicationRequest' with the minimum fields required to make a request.
newResetSearchApplicationRequest ::
  ResetSearchApplicationRequest
newResetSearchApplicationRequest =
  ResetSearchApplicationRequest {debugOptions = Core.Nothing}

instance Core.FromJSON ResetSearchApplicationRequest where
  parseJSON =
    Core.withObject
      "ResetSearchApplicationRequest"
      ( \o ->
          ResetSearchApplicationRequest
            Core.<$> (o Core..:? "debugOptions")
      )

instance Core.ToJSON ResetSearchApplicationRequest where
  toJSON ResetSearchApplicationRequest {..} =
    Core.object
      ( Core.catMaybes
          [("debugOptions" Core..=) Core.<$> debugOptions]
      )

-- | Debugging information about the response.
--
-- /See:/ 'newResponseDebugInfo' smart constructor.
newtype ResponseDebugInfo = ResponseDebugInfo
  { -- | General debug info formatted for display.
    formattedDebugInfo :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponseDebugInfo' with the minimum fields required to make a request.
newResponseDebugInfo ::
  ResponseDebugInfo
newResponseDebugInfo = ResponseDebugInfo {formattedDebugInfo = Core.Nothing}

instance Core.FromJSON ResponseDebugInfo where
  parseJSON =
    Core.withObject
      "ResponseDebugInfo"
      ( \o ->
          ResponseDebugInfo
            Core.<$> (o Core..:? "formattedDebugInfo")
      )

instance Core.ToJSON ResponseDebugInfo where
  toJSON ResponseDebugInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedDebugInfo" Core..=)
              Core.<$> formattedDebugInfo
          ]
      )

-- | Information relevant only to a restrict entry. NextId: 12
--
-- /See:/ 'newRestrictItem' smart constructor.
data RestrictItem = RestrictItem
  { -- | LINT.ThenChange(\/\/depot\/google3\/java\/com\/google\/apps\/search\/quality\/itemsuggest\/utils\/SubtypeRerankingUtils.java)
    driveFollowUpRestrict :: (Core.Maybe DriveFollowUpRestrict),
    -- |
    driveLocationRestrict :: (Core.Maybe DriveLocationRestrict),
    -- | LINT.IfChange Drive Types.
    driveMimeTypeRestrict :: (Core.Maybe DriveMimeTypeRestrict),
    -- |
    driveTimeSpanRestrict :: (Core.Maybe DriveTimeSpanRestrict),
    -- | The search restrict (e.g. \"after:2017-09-11 before:2017-09-12\").
    searchOperator :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestrictItem' with the minimum fields required to make a request.
newRestrictItem ::
  RestrictItem
newRestrictItem =
  RestrictItem
    { driveFollowUpRestrict = Core.Nothing,
      driveLocationRestrict = Core.Nothing,
      driveMimeTypeRestrict = Core.Nothing,
      driveTimeSpanRestrict = Core.Nothing,
      searchOperator = Core.Nothing
    }

instance Core.FromJSON RestrictItem where
  parseJSON =
    Core.withObject
      "RestrictItem"
      ( \o ->
          RestrictItem
            Core.<$> (o Core..:? "driveFollowUpRestrict")
            Core.<*> (o Core..:? "driveLocationRestrict")
            Core.<*> (o Core..:? "driveMimeTypeRestrict")
            Core.<*> (o Core..:? "driveTimeSpanRestrict")
            Core.<*> (o Core..:? "searchOperator")
      )

instance Core.ToJSON RestrictItem where
  toJSON RestrictItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("driveFollowUpRestrict" Core..=)
              Core.<$> driveFollowUpRestrict,
            ("driveLocationRestrict" Core..=)
              Core.<$> driveLocationRestrict,
            ("driveMimeTypeRestrict" Core..=)
              Core.<$> driveMimeTypeRestrict,
            ("driveTimeSpanRestrict" Core..=)
              Core.<$> driveTimeSpanRestrict,
            ("searchOperator" Core..=) Core.<$> searchOperator
          ]
      )

-- | Result count information
--
-- /See:/ 'newResultCounts' smart constructor.
newtype ResultCounts = ResultCounts
  { -- | Result count information for each source with results.
    sourceResultCounts :: (Core.Maybe [SourceResultCount])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultCounts' with the minimum fields required to make a request.
newResultCounts ::
  ResultCounts
newResultCounts = ResultCounts {sourceResultCounts = Core.Nothing}

instance Core.FromJSON ResultCounts where
  parseJSON =
    Core.withObject
      "ResultCounts"
      ( \o ->
          ResultCounts
            Core.<$> ( o Core..:? "sourceResultCounts"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ResultCounts where
  toJSON ResultCounts {..} =
    Core.object
      ( Core.catMaybes
          [ ("sourceResultCounts" Core..=)
              Core.<$> sourceResultCounts
          ]
      )

-- | Debugging information about the result.
--
-- /See:/ 'newResultDebugInfo' smart constructor.
newtype ResultDebugInfo = ResultDebugInfo
  { -- | General debug info formatted for display.
    formattedDebugInfo :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultDebugInfo' with the minimum fields required to make a request.
newResultDebugInfo ::
  ResultDebugInfo
newResultDebugInfo = ResultDebugInfo {formattedDebugInfo = Core.Nothing}

instance Core.FromJSON ResultDebugInfo where
  parseJSON =
    Core.withObject
      "ResultDebugInfo"
      ( \o ->
          ResultDebugInfo
            Core.<$> (o Core..:? "formattedDebugInfo")
      )

instance Core.ToJSON ResultDebugInfo where
  toJSON ResultDebugInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedDebugInfo" Core..=)
              Core.<$> formattedDebugInfo
          ]
      )

-- | Display Fields for Search Results
--
-- /See:/ 'newResultDisplayField' smart constructor.
data ResultDisplayField = ResultDisplayField
  { -- | The display label for the property.
    label :: (Core.Maybe Core.Text),
    -- | The operator name of the property.
    operatorName :: (Core.Maybe Core.Text),
    -- | The name value pair for the property.
    property :: (Core.Maybe NamedProperty)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultDisplayField' with the minimum fields required to make a request.
newResultDisplayField ::
  ResultDisplayField
newResultDisplayField =
  ResultDisplayField
    { label = Core.Nothing,
      operatorName = Core.Nothing,
      property = Core.Nothing
    }

instance Core.FromJSON ResultDisplayField where
  parseJSON =
    Core.withObject
      "ResultDisplayField"
      ( \o ->
          ResultDisplayField
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "operatorName")
            Core.<*> (o Core..:? "property")
      )

instance Core.ToJSON ResultDisplayField where
  toJSON ResultDisplayField {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("operatorName" Core..=) Core.<$> operatorName,
            ("property" Core..=) Core.<$> property
          ]
      )

-- | The collection of fields that make up a displayed line
--
-- /See:/ 'newResultDisplayLine' smart constructor.
newtype ResultDisplayLine = ResultDisplayLine
  { -- |
    fields :: (Core.Maybe [ResultDisplayField])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultDisplayLine' with the minimum fields required to make a request.
newResultDisplayLine ::
  ResultDisplayLine
newResultDisplayLine = ResultDisplayLine {fields = Core.Nothing}

instance Core.FromJSON ResultDisplayLine where
  parseJSON =
    Core.withObject
      "ResultDisplayLine"
      ( \o ->
          ResultDisplayLine
            Core.<$> (o Core..:? "fields" Core..!= Core.mempty)
      )

instance Core.ToJSON ResultDisplayLine where
  toJSON ResultDisplayLine {..} =
    Core.object
      (Core.catMaybes [("fields" Core..=) Core.<$> fields])

--
-- /See:/ 'newResultDisplayMetadata' smart constructor.
data ResultDisplayMetadata = ResultDisplayMetadata
  { -- | The metalines content to be displayed with the result.
    metalines :: (Core.Maybe [ResultDisplayLine]),
    -- | The display label for the object.
    objectTypeLabel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultDisplayMetadata' with the minimum fields required to make a request.
newResultDisplayMetadata ::
  ResultDisplayMetadata
newResultDisplayMetadata =
  ResultDisplayMetadata
    { metalines = Core.Nothing,
      objectTypeLabel = Core.Nothing
    }

instance Core.FromJSON ResultDisplayMetadata where
  parseJSON =
    Core.withObject
      "ResultDisplayMetadata"
      ( \o ->
          ResultDisplayMetadata
            Core.<$> (o Core..:? "metalines" Core..!= Core.mempty)
            Core.<*> (o Core..:? "objectTypeLabel")
      )

instance Core.ToJSON ResultDisplayMetadata where
  toJSON ResultDisplayMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("metalines" Core..=) Core.<$> metalines,
            ("objectTypeLabel" Core..=)
              Core.<$> objectTypeLabel
          ]
      )

--
-- /See:/ 'newRetrievalImportance' smart constructor.
newtype RetrievalImportance = RetrievalImportance
  { -- | Indicates the ranking importance given to property when it is matched during retrieval. Once set, the token importance of a property cannot be changed.
    importance :: (Core.Maybe RetrievalImportance_Importance)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RetrievalImportance' with the minimum fields required to make a request.
newRetrievalImportance ::
  RetrievalImportance
newRetrievalImportance = RetrievalImportance {importance = Core.Nothing}

instance Core.FromJSON RetrievalImportance where
  parseJSON =
    Core.withObject
      "RetrievalImportance"
      ( \o ->
          RetrievalImportance
            Core.<$> (o Core..:? "importance")
      )

instance Core.ToJSON RetrievalImportance where
  toJSON RetrievalImportance {..} =
    Core.object
      ( Core.catMaybes
          [("importance" Core..=) Core.<$> importance]
      )

-- | The schema definition for a data source.
--
-- /See:/ 'newSchema' smart constructor.
data Schema = Schema
  { -- | The list of top-level objects for the data source. The maximum number of elements is 10.
    objectDefinitions :: (Core.Maybe [ObjectDefinition]),
    -- | IDs of the Long Running Operations (LROs) currently running for this schema. After modifying the schema, wait for operations to complete before indexing additional content.
    operationIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Schema' with the minimum fields required to make a request.
newSchema ::
  Schema
newSchema =
  Schema {objectDefinitions = Core.Nothing, operationIds = Core.Nothing}

instance Core.FromJSON Schema where
  parseJSON =
    Core.withObject
      "Schema"
      ( \o ->
          Schema
            Core.<$> (o Core..:? "objectDefinitions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "operationIds" Core..!= Core.mempty)
      )

instance Core.ToJSON Schema where
  toJSON Schema {..} =
    Core.object
      ( Core.catMaybes
          [ ("objectDefinitions" Core..=)
              Core.<$> objectDefinitions,
            ("operationIds" Core..=) Core.<$> operationIds
          ]
      )

-- | Scoring configurations for a source while processing a Search or Suggest request.
--
-- /See:/ 'newScoringConfig' smart constructor.
data ScoringConfig = ScoringConfig
  { -- | Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. Note that this setting is not available in the Admin UI.
    disableFreshness :: (Core.Maybe Core.Bool),
    -- | Whether to personalize the results. By default, personal signals will be used to boost results.
    disablePersonalization :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScoringConfig' with the minimum fields required to make a request.
newScoringConfig ::
  ScoringConfig
newScoringConfig =
  ScoringConfig
    { disableFreshness = Core.Nothing,
      disablePersonalization = Core.Nothing
    }

instance Core.FromJSON ScoringConfig where
  parseJSON =
    Core.withObject
      "ScoringConfig"
      ( \o ->
          ScoringConfig
            Core.<$> (o Core..:? "disableFreshness")
            Core.<*> (o Core..:? "disablePersonalization")
      )

instance Core.ToJSON ScoringConfig where
  toJSON ScoringConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("disableFreshness" Core..=)
              Core.<$> disableFreshness,
            ("disablePersonalization" Core..=)
              Core.<$> disablePersonalization
          ]
      )

-- | SearchApplication
--
-- /See:/ 'newSearchApplication' smart constructor.
data SearchApplication = SearchApplication
  { -- | Retrictions applied to the configurations. The maximum number of elements is 10.
    dataSourceRestrictions :: (Core.Maybe [DataSourceRestriction]),
    -- | The default fields for returning facet results. The sources specified here also have been included in data/source/restrictions above.
    defaultFacetOptions :: (Core.Maybe [FacetOptions]),
    -- | The default options for sorting the search results
    defaultSortOptions :: (Core.Maybe SortOptions),
    -- | Display name of the Search Application. The maximum length is 300 characters.
    displayName :: (Core.Maybe Core.Text),
    -- | Indicates whether audit logging is on\/off for requests made for the search application in query APIs.
    enableAuditLog :: (Core.Maybe Core.Bool),
    -- | Name of the Search Application. Format: searchapplications\/{application_id}.
    name :: (Core.Maybe Core.Text),
    -- | Output only. IDs of the Long Running Operations (LROs) currently running for this schema. Output only field.
    operationIds :: (Core.Maybe [Core.Text]),
    -- | The default options for query interpretation
    queryInterpretationConfig :: (Core.Maybe QueryInterpretationConfig),
    -- | With each result we should return the URI for its thumbnail (when applicable)
    returnResultThumbnailUrls :: (Core.Maybe Core.Bool),
    -- | Configuration for ranking results.
    scoringConfig :: (Core.Maybe ScoringConfig),
    -- | Configuration for a sources specified in data/source/restrictions.
    sourceConfig :: (Core.Maybe [SourceConfig])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchApplication' with the minimum fields required to make a request.
newSearchApplication ::
  SearchApplication
newSearchApplication =
  SearchApplication
    { dataSourceRestrictions = Core.Nothing,
      defaultFacetOptions = Core.Nothing,
      defaultSortOptions = Core.Nothing,
      displayName = Core.Nothing,
      enableAuditLog = Core.Nothing,
      name = Core.Nothing,
      operationIds = Core.Nothing,
      queryInterpretationConfig = Core.Nothing,
      returnResultThumbnailUrls = Core.Nothing,
      scoringConfig = Core.Nothing,
      sourceConfig = Core.Nothing
    }

instance Core.FromJSON SearchApplication where
  parseJSON =
    Core.withObject
      "SearchApplication"
      ( \o ->
          SearchApplication
            Core.<$> ( o Core..:? "dataSourceRestrictions"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "defaultFacetOptions"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "defaultSortOptions")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "enableAuditLog")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "operationIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "queryInterpretationConfig")
            Core.<*> (o Core..:? "returnResultThumbnailUrls")
            Core.<*> (o Core..:? "scoringConfig")
            Core.<*> (o Core..:? "sourceConfig" Core..!= Core.mempty)
      )

instance Core.ToJSON SearchApplication where
  toJSON SearchApplication {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceRestrictions" Core..=)
              Core.<$> dataSourceRestrictions,
            ("defaultFacetOptions" Core..=)
              Core.<$> defaultFacetOptions,
            ("defaultSortOptions" Core..=)
              Core.<$> defaultSortOptions,
            ("displayName" Core..=) Core.<$> displayName,
            ("enableAuditLog" Core..=) Core.<$> enableAuditLog,
            ("name" Core..=) Core.<$> name,
            ("operationIds" Core..=) Core.<$> operationIds,
            ("queryInterpretationConfig" Core..=)
              Core.<$> queryInterpretationConfig,
            ("returnResultThumbnailUrls" Core..=)
              Core.<$> returnResultThumbnailUrls,
            ("scoringConfig" Core..=) Core.<$> scoringConfig,
            ("sourceConfig" Core..=) Core.<$> sourceConfig
          ]
      )

-- | Search application level query stats per date
--
-- /See:/ 'newSearchApplicationQueryStats' smart constructor.
data SearchApplicationQueryStats = SearchApplicationQueryStats
  { -- | Date for which query stats were calculated. Stats calculated on the next day close to midnight are returned.
    date :: (Core.Maybe Date),
    -- |
    queryCountByStatus :: (Core.Maybe [QueryCountByStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchApplicationQueryStats' with the minimum fields required to make a request.
newSearchApplicationQueryStats ::
  SearchApplicationQueryStats
newSearchApplicationQueryStats =
  SearchApplicationQueryStats
    { date = Core.Nothing,
      queryCountByStatus = Core.Nothing
    }

instance Core.FromJSON SearchApplicationQueryStats where
  parseJSON =
    Core.withObject
      "SearchApplicationQueryStats"
      ( \o ->
          SearchApplicationQueryStats
            Core.<$> (o Core..:? "date")
            Core.<*> ( o Core..:? "queryCountByStatus"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON SearchApplicationQueryStats where
  toJSON SearchApplicationQueryStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("queryCountByStatus" Core..=)
              Core.<$> queryCountByStatus
          ]
      )

--
-- /See:/ 'newSearchApplicationSessionStats' smart constructor.
data SearchApplicationSessionStats = SearchApplicationSessionStats
  { -- | Date for which session stats were calculated. Stats are calculated on the following day, close to midnight PST, and then returned.
    date :: (Core.Maybe Date),
    -- | The count of search sessions on the day
    searchSessionsCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchApplicationSessionStats' with the minimum fields required to make a request.
newSearchApplicationSessionStats ::
  SearchApplicationSessionStats
newSearchApplicationSessionStats =
  SearchApplicationSessionStats
    { date = Core.Nothing,
      searchSessionsCount = Core.Nothing
    }

instance Core.FromJSON SearchApplicationSessionStats where
  parseJSON =
    Core.withObject
      "SearchApplicationSessionStats"
      ( \o ->
          SearchApplicationSessionStats
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "searchSessionsCount")
      )

instance Core.ToJSON SearchApplicationSessionStats where
  toJSON SearchApplicationSessionStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("searchSessionsCount" Core..=) Core.. Core.AsText
              Core.<$> searchSessionsCount
          ]
      )

--
-- /See:/ 'newSearchApplicationUserStats' smart constructor.
data SearchApplicationUserStats = SearchApplicationUserStats
  { -- | Date for which session stats were calculated. Stats calculated on the next day close to midnight are returned.
    date :: (Core.Maybe Date),
    -- | The count of unique active users in the past one day
    oneDayActiveUsersCount :: (Core.Maybe Core.Int64),
    -- | The count of unique active users in the past seven days
    sevenDaysActiveUsersCount :: (Core.Maybe Core.Int64),
    -- | The count of unique active users in the past thirty days
    thirtyDaysActiveUsersCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchApplicationUserStats' with the minimum fields required to make a request.
newSearchApplicationUserStats ::
  SearchApplicationUserStats
newSearchApplicationUserStats =
  SearchApplicationUserStats
    { date = Core.Nothing,
      oneDayActiveUsersCount = Core.Nothing,
      sevenDaysActiveUsersCount = Core.Nothing,
      thirtyDaysActiveUsersCount = Core.Nothing
    }

instance Core.FromJSON SearchApplicationUserStats where
  parseJSON =
    Core.withObject
      "SearchApplicationUserStats"
      ( \o ->
          SearchApplicationUserStats
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "oneDayActiveUsersCount")
            Core.<*> (o Core..:? "sevenDaysActiveUsersCount")
            Core.<*> (o Core..:? "thirtyDaysActiveUsersCount")
      )

instance Core.ToJSON SearchApplicationUserStats where
  toJSON SearchApplicationUserStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("oneDayActiveUsersCount" Core..=) Core.. Core.AsText
              Core.<$> oneDayActiveUsersCount,
            ("sevenDaysActiveUsersCount" Core..=)
              Core.. Core.AsText
              Core.<$> sevenDaysActiveUsersCount,
            ("thirtyDaysActiveUsersCount" Core..=)
              Core.. Core.AsText
              Core.<$> thirtyDaysActiveUsersCount
          ]
      )

--
-- /See:/ 'newSearchItemsByViewUrlRequest' smart constructor.
data SearchItemsByViewUrlRequest = SearchItemsByViewUrlRequest
  { -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions),
    -- | The next/page/token value returned from a previous request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Specify the full view URL to find the corresponding item. The maximum length is 2048 characters.
    viewUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchItemsByViewUrlRequest' with the minimum fields required to make a request.
newSearchItemsByViewUrlRequest ::
  SearchItemsByViewUrlRequest
newSearchItemsByViewUrlRequest =
  SearchItemsByViewUrlRequest
    { debugOptions = Core.Nothing,
      pageToken = Core.Nothing,
      viewUrl = Core.Nothing
    }

instance Core.FromJSON SearchItemsByViewUrlRequest where
  parseJSON =
    Core.withObject
      "SearchItemsByViewUrlRequest"
      ( \o ->
          SearchItemsByViewUrlRequest
            Core.<$> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "viewUrl")
      )

instance Core.ToJSON SearchItemsByViewUrlRequest where
  toJSON SearchItemsByViewUrlRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("debugOptions" Core..=) Core.<$> debugOptions,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("viewUrl" Core..=) Core.<$> viewUrl
          ]
      )

--
-- /See:/ 'newSearchItemsByViewUrlResponse' smart constructor.
data SearchItemsByViewUrlResponse = SearchItemsByViewUrlResponse
  { -- |
    items :: (Core.Maybe [Item]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchItemsByViewUrlResponse' with the minimum fields required to make a request.
newSearchItemsByViewUrlResponse ::
  SearchItemsByViewUrlResponse
newSearchItemsByViewUrlResponse =
  SearchItemsByViewUrlResponse
    { items = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON SearchItemsByViewUrlResponse where
  parseJSON =
    Core.withObject
      "SearchItemsByViewUrlResponse"
      ( \o ->
          SearchItemsByViewUrlResponse
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON SearchItemsByViewUrlResponse where
  toJSON SearchItemsByViewUrlResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Additional search quality metadata of the item.
--
-- /See:/ 'newSearchQualityMetadata' smart constructor.
newtype SearchQualityMetadata = SearchQualityMetadata
  { -- | An indication of the quality of the item, used to influence search quality. Value should be between 0.0 (lowest quality) and 1.0 (highest quality). The default value is 0.0.
    quality :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchQualityMetadata' with the minimum fields required to make a request.
newSearchQualityMetadata ::
  SearchQualityMetadata
newSearchQualityMetadata = SearchQualityMetadata {quality = Core.Nothing}

instance Core.FromJSON SearchQualityMetadata where
  parseJSON =
    Core.withObject
      "SearchQualityMetadata"
      ( \o ->
          SearchQualityMetadata
            Core.<$> (o Core..:? "quality")
      )

instance Core.ToJSON SearchQualityMetadata where
  toJSON SearchQualityMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("quality" Core..=) Core.<$> quality]
      )

-- | The search API request.
--
-- /See:/ 'newSearchRequest' smart constructor.
data SearchRequest = SearchRequest
  { -- | Context attributes for the request which will be used to adjust ranking of search results. The maximum number of elements is 10.
    contextAttributes :: (Core.Maybe [ContextAttribute]),
    -- | The sources to use for querying. If not specified, all data sources from the current search application are used.
    dataSourceRestrictions :: (Core.Maybe [DataSourceRestriction]),
    -- |
    facetOptions :: (Core.Maybe [FacetOptions]),
    -- | Maximum number of search results to return in one page. Valid values are between 1 and 100, inclusive. Default value is 10. Minimum value is 50 when results beyond 2000 are requested.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The raw query string. See supported search operators in the <https://support.google.com/cloudsearch/answer/6172299 Narrow your search with operators>
    query :: (Core.Maybe Core.Text),
    -- | Options to interpret the user query.
    queryInterpretationOptions :: (Core.Maybe QueryInterpretationOptions),
    -- | Request options, such as the search application and user timezone.
    requestOptions :: (Core.Maybe RequestOptions),
    -- | The options for sorting the search results
    sortOptions :: (Core.Maybe SortOptions),
    -- | Starting index of the results.
    start :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchRequest' with the minimum fields required to make a request.
newSearchRequest ::
  SearchRequest
newSearchRequest =
  SearchRequest
    { contextAttributes = Core.Nothing,
      dataSourceRestrictions = Core.Nothing,
      facetOptions = Core.Nothing,
      pageSize = Core.Nothing,
      query = Core.Nothing,
      queryInterpretationOptions = Core.Nothing,
      requestOptions = Core.Nothing,
      sortOptions = Core.Nothing,
      start = Core.Nothing
    }

instance Core.FromJSON SearchRequest where
  parseJSON =
    Core.withObject
      "SearchRequest"
      ( \o ->
          SearchRequest
            Core.<$> (o Core..:? "contextAttributes" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "dataSourceRestrictions"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "facetOptions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "queryInterpretationOptions")
            Core.<*> (o Core..:? "requestOptions")
            Core.<*> (o Core..:? "sortOptions")
            Core.<*> (o Core..:? "start")
      )

instance Core.ToJSON SearchRequest where
  toJSON SearchRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contextAttributes" Core..=)
              Core.<$> contextAttributes,
            ("dataSourceRestrictions" Core..=)
              Core.<$> dataSourceRestrictions,
            ("facetOptions" Core..=) Core.<$> facetOptions,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("query" Core..=) Core.<$> query,
            ("queryInterpretationOptions" Core..=)
              Core.<$> queryInterpretationOptions,
            ("requestOptions" Core..=) Core.<$> requestOptions,
            ("sortOptions" Core..=) Core.<$> sortOptions,
            ("start" Core..=) Core.<$> start
          ]
      )

-- | The search API response.
--
-- /See:/ 'newSearchResponse' smart constructor.
data SearchResponse = SearchResponse
  { -- | Debugging information about the response.
    debugInfo :: (Core.Maybe ResponseDebugInfo),
    -- | Error information about the response.
    errorInfo :: (Core.Maybe ErrorInfo),
    -- | Repeated facet results.
    facetResults :: (Core.Maybe [FacetResult]),
    -- | Whether there are more search results matching the query.
    hasMoreResults :: (Core.Maybe Core.Bool),
    -- | Query interpretation result for user query. Empty if query interpretation is disabled.
    queryInterpretation :: (Core.Maybe QueryInterpretation),
    -- | The estimated result count for this query.
    resultCountEstimate :: (Core.Maybe Core.Int64),
    -- | The exact result count for this query.
    resultCountExact :: (Core.Maybe Core.Int64),
    -- | Expanded result count information.
    resultCounts :: (Core.Maybe ResultCounts),
    -- | Results from a search query.
    results :: (Core.Maybe [SearchResult]),
    -- | Suggested spelling for the query.
    spellResults :: (Core.Maybe [SpellResult]),
    -- | Structured results for the user query. These results are not counted against the page_size.
    structuredResults :: (Core.Maybe [StructuredResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
newSearchResponse ::
  SearchResponse
newSearchResponse =
  SearchResponse
    { debugInfo = Core.Nothing,
      errorInfo = Core.Nothing,
      facetResults = Core.Nothing,
      hasMoreResults = Core.Nothing,
      queryInterpretation = Core.Nothing,
      resultCountEstimate = Core.Nothing,
      resultCountExact = Core.Nothing,
      resultCounts = Core.Nothing,
      results = Core.Nothing,
      spellResults = Core.Nothing,
      structuredResults = Core.Nothing
    }

instance Core.FromJSON SearchResponse where
  parseJSON =
    Core.withObject
      "SearchResponse"
      ( \o ->
          SearchResponse
            Core.<$> (o Core..:? "debugInfo")
            Core.<*> (o Core..:? "errorInfo")
            Core.<*> (o Core..:? "facetResults" Core..!= Core.mempty)
            Core.<*> (o Core..:? "hasMoreResults")
            Core.<*> (o Core..:? "queryInterpretation")
            Core.<*> (o Core..:? "resultCountEstimate")
            Core.<*> (o Core..:? "resultCountExact")
            Core.<*> (o Core..:? "resultCounts")
            Core.<*> (o Core..:? "results" Core..!= Core.mempty)
            Core.<*> (o Core..:? "spellResults" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "structuredResults"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON SearchResponse where
  toJSON SearchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("debugInfo" Core..=) Core.<$> debugInfo,
            ("errorInfo" Core..=) Core.<$> errorInfo,
            ("facetResults" Core..=) Core.<$> facetResults,
            ("hasMoreResults" Core..=) Core.<$> hasMoreResults,
            ("queryInterpretation" Core..=)
              Core.<$> queryInterpretation,
            ("resultCountEstimate" Core..=) Core.. Core.AsText
              Core.<$> resultCountEstimate,
            ("resultCountExact" Core..=) Core.. Core.AsText
              Core.<$> resultCountExact,
            ("resultCounts" Core..=) Core.<$> resultCounts,
            ("results" Core..=) Core.<$> results,
            ("spellResults" Core..=) Core.<$> spellResults,
            ("structuredResults" Core..=)
              Core.<$> structuredResults
          ]
      )

-- | Results containing indexed information for a document.
--
-- /See:/ 'newSearchResult' smart constructor.
data SearchResult = SearchResult
  { -- | If source is clustered, provide list of clustered results. There will only be one level of clustered results. If current source is not enabled for clustering, this field will be empty.
    clusteredResults :: (Core.Maybe [SearchResult]),
    -- | Debugging information about this search result.
    debugInfo :: (Core.Maybe ResultDebugInfo),
    -- | Metadata of the search result.
    metadata :: (Core.Maybe Metadata),
    -- | The concatenation of all snippets (summaries) available for this result.
    snippet :: (Core.Maybe Snippet),
    -- | Title of the search result.
    title :: (Core.Maybe Core.Text),
    -- | The URL of the search result. The URL contains a Google redirect to the actual item. This URL is signed and shouldn\'t be changed.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResult' with the minimum fields required to make a request.
newSearchResult ::
  SearchResult
newSearchResult =
  SearchResult
    { clusteredResults = Core.Nothing,
      debugInfo = Core.Nothing,
      metadata = Core.Nothing,
      snippet = Core.Nothing,
      title = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON SearchResult where
  parseJSON =
    Core.withObject
      "SearchResult"
      ( \o ->
          SearchResult
            Core.<$> (o Core..:? "clusteredResults" Core..!= Core.mempty)
            Core.<*> (o Core..:? "debugInfo")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON SearchResult where
  toJSON SearchResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusteredResults" Core..=)
              Core.<$> clusteredResults,
            ("debugInfo" Core..=) Core.<$> debugInfo,
            ("metadata" Core..=) Core.<$> metadata,
            ("snippet" Core..=) Core.<$> snippet,
            ("title" Core..=) Core.<$> title,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newShareScope' smart constructor.
data ShareScope = ShareScope
  { -- | If scope is DOMAIN, this field contains the dasher domain, for example \"google.com\".
    domain :: (Core.Maybe Core.Text),
    -- | The scope to which the content was shared.
    scope :: (Core.Maybe ShareScope_Scope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShareScope' with the minimum fields required to make a request.
newShareScope ::
  ShareScope
newShareScope = ShareScope {domain = Core.Nothing, scope = Core.Nothing}

instance Core.FromJSON ShareScope where
  parseJSON =
    Core.withObject
      "ShareScope"
      ( \o ->
          ShareScope
            Core.<$> (o Core..:? "domain") Core.<*> (o Core..:? "scope")
      )

instance Core.ToJSON ShareScope where
  toJSON ShareScope {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("scope" Core..=) Core.<$> scope
          ]
      )

-- | Snippet of the search result, which summarizes the content of the resulting page.
--
-- /See:/ 'newSnippet' smart constructor.
data Snippet = Snippet
  { -- | The matched ranges in the snippet.
    matchRanges :: (Core.Maybe [MatchRange]),
    -- | The snippet of the document. The snippet of the document. May contain escaped HTML character that should be unescaped prior to rendering.
    snippet :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Snippet' with the minimum fields required to make a request.
newSnippet ::
  Snippet
newSnippet = Snippet {matchRanges = Core.Nothing, snippet = Core.Nothing}

instance Core.FromJSON Snippet where
  parseJSON =
    Core.withObject
      "Snippet"
      ( \o ->
          Snippet
            Core.<$> (o Core..:? "matchRanges" Core..!= Core.mempty)
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON Snippet where
  toJSON Snippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("matchRanges" Core..=) Core.<$> matchRanges,
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newSortOptions' smart constructor.
data SortOptions = SortOptions
  { -- | Name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
    operatorName :: (Core.Maybe Core.Text),
    -- | Ascending is the default sort order
    sortOrder :: (Core.Maybe SortOptions_SortOrder)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SortOptions' with the minimum fields required to make a request.
newSortOptions ::
  SortOptions
newSortOptions =
  SortOptions {operatorName = Core.Nothing, sortOrder = Core.Nothing}

instance Core.FromJSON SortOptions where
  parseJSON =
    Core.withObject
      "SortOptions"
      ( \o ->
          SortOptions
            Core.<$> (o Core..:? "operatorName")
            Core.<*> (o Core..:? "sortOrder")
      )

instance Core.ToJSON SortOptions where
  toJSON SortOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorName" Core..=) Core.<$> operatorName,
            ("sortOrder" Core..=) Core.<$> sortOrder
          ]
      )

-- | Defines sources for the suggest\/search APIs.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source
  { -- | Source name for content indexed by the Indexing API.
    name :: (Core.Maybe Core.Text),
    -- | Predefined content source for Google Apps.
    predefinedSource :: (Core.Maybe Source_PredefinedSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource ::
  Source
newSource = Source {name = Core.Nothing, predefinedSource = Core.Nothing}

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \o ->
          Source
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "predefinedSource")
      )

instance Core.ToJSON Source where
  toJSON Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("predefinedSource" Core..=)
              Core.<$> predefinedSource
          ]
      )

-- | Configurations for a source while processing a Search or Suggest request.
--
-- /See:/ 'newSourceConfig' smart constructor.
data SourceConfig = SourceConfig
  { -- | The crowding configuration for the source.
    crowdingConfig :: (Core.Maybe SourceCrowdingConfig),
    -- | The scoring configuration for the source.
    scoringConfig :: (Core.Maybe SourceScoringConfig),
    -- | The source for which this configuration is to be used.
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceConfig' with the minimum fields required to make a request.
newSourceConfig ::
  SourceConfig
newSourceConfig =
  SourceConfig
    { crowdingConfig = Core.Nothing,
      scoringConfig = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON SourceConfig where
  parseJSON =
    Core.withObject
      "SourceConfig"
      ( \o ->
          SourceConfig
            Core.<$> (o Core..:? "crowdingConfig")
            Core.<*> (o Core..:? "scoringConfig")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON SourceConfig where
  toJSON SourceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("crowdingConfig" Core..=) Core.<$> crowdingConfig,
            ("scoringConfig" Core..=) Core.<$> scoringConfig,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | Set search results crowding limits. Crowding is a situation in which multiple results from the same source or host \"crowd out\" other results, diminishing the quality of search for users. To foster better search quality and source diversity in search results, you can set a condition to reduce repetitive results by source.
--
-- /See:/ 'newSourceCrowdingConfig' smart constructor.
data SourceCrowdingConfig = SourceCrowdingConfig
  { -- | Maximum number of results allowed from a datasource in a result page as long as results from other sources are not exhausted. Value specified must not be negative. A default value is used if this value is equal to 0. To disable crowding, set the value greater than 100.
    numResults :: (Core.Maybe Core.Int32),
    -- | Maximum number of suggestions allowed from a source. No limits will be set on results if this value is less than or equal to 0.
    numSuggestions :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceCrowdingConfig' with the minimum fields required to make a request.
newSourceCrowdingConfig ::
  SourceCrowdingConfig
newSourceCrowdingConfig =
  SourceCrowdingConfig
    { numResults = Core.Nothing,
      numSuggestions = Core.Nothing
    }

instance Core.FromJSON SourceCrowdingConfig where
  parseJSON =
    Core.withObject
      "SourceCrowdingConfig"
      ( \o ->
          SourceCrowdingConfig
            Core.<$> (o Core..:? "numResults")
            Core.<*> (o Core..:? "numSuggestions")
      )

instance Core.ToJSON SourceCrowdingConfig where
  toJSON SourceCrowdingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("numResults" Core..=) Core.<$> numResults,
            ("numSuggestions" Core..=) Core.<$> numSuggestions
          ]
      )

-- | Per source result count information.
--
-- /See:/ 'newSourceResultCount' smart constructor.
data SourceResultCount = SourceResultCount
  { -- | Whether there are more search results for this source.
    hasMoreResults :: (Core.Maybe Core.Bool),
    -- | The estimated result count for this source.
    resultCountEstimate :: (Core.Maybe Core.Int64),
    -- | The exact result count for this source.
    resultCountExact :: (Core.Maybe Core.Int64),
    -- | The source the result count information is associated with.
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceResultCount' with the minimum fields required to make a request.
newSourceResultCount ::
  SourceResultCount
newSourceResultCount =
  SourceResultCount
    { hasMoreResults = Core.Nothing,
      resultCountEstimate = Core.Nothing,
      resultCountExact = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON SourceResultCount where
  parseJSON =
    Core.withObject
      "SourceResultCount"
      ( \o ->
          SourceResultCount
            Core.<$> (o Core..:? "hasMoreResults")
            Core.<*> (o Core..:? "resultCountEstimate")
            Core.<*> (o Core..:? "resultCountExact")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON SourceResultCount where
  toJSON SourceResultCount {..} =
    Core.object
      ( Core.catMaybes
          [ ("hasMoreResults" Core..=) Core.<$> hasMoreResults,
            ("resultCountEstimate" Core..=) Core.. Core.AsText
              Core.<$> resultCountEstimate,
            ("resultCountExact" Core..=) Core.. Core.AsText
              Core.<$> resultCountExact,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | Set the scoring configuration. This allows modifying the ranking of results for a source.
--
-- /See:/ 'newSourceScoringConfig' smart constructor.
newtype SourceScoringConfig = SourceScoringConfig
  { -- | Importance of the source.
    sourceImportance :: (Core.Maybe SourceScoringConfig_SourceImportance)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceScoringConfig' with the minimum fields required to make a request.
newSourceScoringConfig ::
  SourceScoringConfig
newSourceScoringConfig = SourceScoringConfig {sourceImportance = Core.Nothing}

instance Core.FromJSON SourceScoringConfig where
  parseJSON =
    Core.withObject
      "SourceScoringConfig"
      ( \o ->
          SourceScoringConfig
            Core.<$> (o Core..:? "sourceImportance")
      )

instance Core.ToJSON SourceScoringConfig where
  toJSON SourceScoringConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("sourceImportance" Core..=)
              Core.<$> sourceImportance
          ]
      )

-- | Primary key for Space resource.
--
-- /See:/ 'newSpaceId' smart constructor.
newtype SpaceId = SpaceId
  { -- | Unique, immutable ID of the Space
    spaceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceId' with the minimum fields required to make a request.
newSpaceId ::
  SpaceId
newSpaceId = SpaceId {spaceId = Core.Nothing}

instance Core.FromJSON SpaceId where
  parseJSON =
    Core.withObject
      "SpaceId"
      (\o -> SpaceId Core.<$> (o Core..:? "spaceId"))

instance Core.ToJSON SpaceId where
  toJSON SpaceId {..} =
    Core.object
      ( Core.catMaybes
          [("spaceId" Core..=) Core.<$> spaceId]
      )

-- | Defines the representation of a single matching space.
--
-- /See:/ 'newSpaceInfo' smart constructor.
data SpaceInfo = SpaceInfo
  { -- |
    avatarInfo :: (Core.Maybe AvatarInfo),
    -- |
    avatarUrl :: (Core.Maybe Core.Text),
    -- |
    description :: (Core.Maybe Core.Text),
    -- |
    groupId :: (Core.Maybe GroupId),
    -- | Whether this is a space that enables guest access
    isExternal :: (Core.Maybe Core.Bool),
    -- |
    name :: (Core.Maybe Core.Text),
    -- |
    numMembers :: (Core.Maybe Core.Int32),
    -- | searching user\'s membership state in this space
    userMembershipState :: (Core.Maybe SpaceInfo_UserMembershipState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpaceInfo' with the minimum fields required to make a request.
newSpaceInfo ::
  SpaceInfo
newSpaceInfo =
  SpaceInfo
    { avatarInfo = Core.Nothing,
      avatarUrl = Core.Nothing,
      description = Core.Nothing,
      groupId = Core.Nothing,
      isExternal = Core.Nothing,
      name = Core.Nothing,
      numMembers = Core.Nothing,
      userMembershipState = Core.Nothing
    }

instance Core.FromJSON SpaceInfo where
  parseJSON =
    Core.withObject
      "SpaceInfo"
      ( \o ->
          SpaceInfo
            Core.<$> (o Core..:? "avatarInfo")
            Core.<*> (o Core..:? "avatarUrl")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "groupId")
            Core.<*> (o Core..:? "isExternal")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "numMembers")
            Core.<*> (o Core..:? "userMembershipState")
      )

instance Core.ToJSON SpaceInfo where
  toJSON SpaceInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("avatarInfo" Core..=) Core.<$> avatarInfo,
            ("avatarUrl" Core..=) Core.<$> avatarUrl,
            ("description" Core..=) Core.<$> description,
            ("groupId" Core..=) Core.<$> groupId,
            ("isExternal" Core..=) Core.<$> isExternal,
            ("name" Core..=) Core.<$> name,
            ("numMembers" Core..=) Core.<$> numMembers,
            ("userMembershipState" Core..=)
              Core.<$> userMembershipState
          ]
      )

--
-- /See:/ 'newSpellResult' smart constructor.
newtype SpellResult = SpellResult
  { -- | The suggested spelling of the query.
    suggestedQuery :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpellResult' with the minimum fields required to make a request.
newSpellResult ::
  SpellResult
newSpellResult = SpellResult {suggestedQuery = Core.Nothing}

instance Core.FromJSON SpellResult where
  parseJSON =
    Core.withObject
      "SpellResult"
      ( \o ->
          SpellResult Core.<$> (o Core..:? "suggestedQuery")
      )

instance Core.ToJSON SpellResult where
  toJSON SpellResult {..} =
    Core.object
      ( Core.catMaybes
          [("suggestedQuery" Core..=) Core.<$> suggestedQuery]
      )

-- | Start upload file request.
--
-- /See:/ 'newStartUploadItemRequest' smart constructor.
data StartUploadItemRequest = StartUploadItemRequest
  { -- | Name of connector making this call. Format: datasources\/{source_id}\/connectors\/{ID}
    connectorName :: (Core.Maybe Core.Text),
    -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartUploadItemRequest' with the minimum fields required to make a request.
newStartUploadItemRequest ::
  StartUploadItemRequest
newStartUploadItemRequest =
  StartUploadItemRequest
    { connectorName = Core.Nothing,
      debugOptions = Core.Nothing
    }

instance Core.FromJSON StartUploadItemRequest where
  parseJSON =
    Core.withObject
      "StartUploadItemRequest"
      ( \o ->
          StartUploadItemRequest
            Core.<$> (o Core..:? "connectorName")
            Core.<*> (o Core..:? "debugOptions")
      )

instance Core.ToJSON StartUploadItemRequest where
  toJSON StartUploadItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectorName" Core..=) Core.<$> connectorName,
            ("debugOptions" Core..=) Core.<$> debugOptions
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | A structured data object consisting of named properties.
--
-- /See:/ 'newStructuredDataObject' smart constructor.
newtype StructuredDataObject = StructuredDataObject
  { -- | The properties for the object. The maximum number of elements is 1000.
    properties :: (Core.Maybe [NamedProperty])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StructuredDataObject' with the minimum fields required to make a request.
newStructuredDataObject ::
  StructuredDataObject
newStructuredDataObject = StructuredDataObject {properties = Core.Nothing}

instance Core.FromJSON StructuredDataObject where
  parseJSON =
    Core.withObject
      "StructuredDataObject"
      ( \o ->
          StructuredDataObject
            Core.<$> (o Core..:? "properties" Core..!= Core.mempty)
      )

instance Core.ToJSON StructuredDataObject where
  toJSON StructuredDataObject {..} =
    Core.object
      ( Core.catMaybes
          [("properties" Core..=) Core.<$> properties]
      )

-- | Structured results that are returned as part of search request.
--
-- /See:/ 'newStructuredResult' smart constructor.
newtype StructuredResult = StructuredResult
  { -- | Representation of a person
    person :: (Core.Maybe Person)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StructuredResult' with the minimum fields required to make a request.
newStructuredResult ::
  StructuredResult
newStructuredResult = StructuredResult {person = Core.Nothing}

instance Core.FromJSON StructuredResult where
  parseJSON =
    Core.withObject
      "StructuredResult"
      ( \o ->
          StructuredResult Core.<$> (o Core..:? "person")
      )

instance Core.ToJSON StructuredResult where
  toJSON StructuredResult {..} =
    Core.object
      (Core.catMaybes [("person" Core..=) Core.<$> person])

-- | Request of suggest API.
--
-- /See:/ 'newSuggestRequest' smart constructor.
data SuggestRequest = SuggestRequest
  { -- | The sources to use for suggestions. If not specified, the data sources are taken from the current search application. NOTE: Suggestions are only supported for the following sources: * Third-party data sources * PredefinedSource.PERSON * PredefinedSource.GOOGLE_DRIVE
    dataSourceRestrictions :: (Core.Maybe [DataSourceRestriction]),
    -- | Partial query for which autocomplete suggestions will be shown. For example, if the query is \"sea\", then the server might return \"season\", \"search\", \"seagull\" and so on.
    query :: (Core.Maybe Core.Text),
    -- | Request options, such as the search application and user timezone.
    requestOptions :: (Core.Maybe RequestOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestRequest' with the minimum fields required to make a request.
newSuggestRequest ::
  SuggestRequest
newSuggestRequest =
  SuggestRequest
    { dataSourceRestrictions = Core.Nothing,
      query = Core.Nothing,
      requestOptions = Core.Nothing
    }

instance Core.FromJSON SuggestRequest where
  parseJSON =
    Core.withObject
      "SuggestRequest"
      ( \o ->
          SuggestRequest
            Core.<$> ( o Core..:? "dataSourceRestrictions"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "requestOptions")
      )

instance Core.ToJSON SuggestRequest where
  toJSON SuggestRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceRestrictions" Core..=)
              Core.<$> dataSourceRestrictions,
            ("query" Core..=) Core.<$> query,
            ("requestOptions" Core..=) Core.<$> requestOptions
          ]
      )

-- | Response of the suggest API.
--
-- /See:/ 'newSuggestResponse' smart constructor.
newtype SuggestResponse = SuggestResponse
  { -- | List of suggestions.
    suggestResults :: (Core.Maybe [SuggestResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestResponse' with the minimum fields required to make a request.
newSuggestResponse ::
  SuggestResponse
newSuggestResponse = SuggestResponse {suggestResults = Core.Nothing}

instance Core.FromJSON SuggestResponse where
  parseJSON =
    Core.withObject
      "SuggestResponse"
      ( \o ->
          SuggestResponse
            Core.<$> (o Core..:? "suggestResults" Core..!= Core.mempty)
      )

instance Core.ToJSON SuggestResponse where
  toJSON SuggestResponse {..} =
    Core.object
      ( Core.catMaybes
          [("suggestResults" Core..=) Core.<$> suggestResults]
      )

-- | One suggestion result.
--
-- /See:/ 'newSuggestResult' smart constructor.
data SuggestResult = SuggestResult
  { -- | This is present when the suggestion indicates a person. It contains more information about the person - like their email ID, name etc.
    peopleSuggestion :: (Core.Maybe PeopleSuggestion),
    -- | This field will be present if the suggested query is a word\/phrase completion.
    querySuggestion :: (Core.Maybe QuerySuggestion),
    -- | The source of the suggestion.
    source :: (Core.Maybe Source),
    -- | The suggested query that will be used for search, when the user clicks on the suggestion
    suggestedQuery :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestResult' with the minimum fields required to make a request.
newSuggestResult ::
  SuggestResult
newSuggestResult =
  SuggestResult
    { peopleSuggestion = Core.Nothing,
      querySuggestion = Core.Nothing,
      source = Core.Nothing,
      suggestedQuery = Core.Nothing
    }

instance Core.FromJSON SuggestResult where
  parseJSON =
    Core.withObject
      "SuggestResult"
      ( \o ->
          SuggestResult
            Core.<$> (o Core..:? "peopleSuggestion")
            Core.<*> (o Core..:? "querySuggestion")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "suggestedQuery")
      )

instance Core.ToJSON SuggestResult where
  toJSON SuggestResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("peopleSuggestion" Core..=)
              Core.<$> peopleSuggestion,
            ("querySuggestion" Core..=) Core.<$> querySuggestion,
            ("source" Core..=) Core.<$> source,
            ("suggestedQuery" Core..=) Core.<$> suggestedQuery
          ]
      )

-- | Used to provide a search operator for text properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.
--
-- /See:/ 'newTextOperatorOptions' smart constructor.
data TextOperatorOptions = TextOperatorOptions
  { -- | If true, the text value is tokenized as one atomic value in operator searches and facet matches. For example, if the operator name is \"genre\" and the value is \"science-fiction\" the query restrictions \"genre:science\" and \"genre:fiction\" doesn\'t match the item; \"genre:science-fiction\" does. Value matching is case-sensitive and does not remove special characters. If false, the text is tokenized. For example, if the value is \"science-fiction\" the queries \"genre:science\" and \"genre:fiction\" matches the item.
    exactMatchWithOperator :: (Core.Maybe Core.Bool),
    -- | Indicates the operator name required in the query in order to isolate the text property. For example, if operatorName is /subject/ and the property\'s name is /subjectLine/, then queries like /subject:\<value>/ show results only where the value of the property named /subjectLine/ matches /\<value>/. By contrast, a search that uses the same /\<value>/ without an operator returns all items where /\<value>/ matches the value of any text properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextOperatorOptions' with the minimum fields required to make a request.
newTextOperatorOptions ::
  TextOperatorOptions
newTextOperatorOptions =
  TextOperatorOptions
    { exactMatchWithOperator = Core.Nothing,
      operatorName = Core.Nothing
    }

instance Core.FromJSON TextOperatorOptions where
  parseJSON =
    Core.withObject
      "TextOperatorOptions"
      ( \o ->
          TextOperatorOptions
            Core.<$> (o Core..:? "exactMatchWithOperator")
            Core.<*> (o Core..:? "operatorName")
      )

instance Core.ToJSON TextOperatorOptions where
  toJSON TextOperatorOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("exactMatchWithOperator" Core..=)
              Core.<$> exactMatchWithOperator,
            ("operatorName" Core..=) Core.<$> operatorName
          ]
      )

-- | Options for text properties.
--
-- /See:/ 'newTextPropertyOptions' smart constructor.
data TextPropertyOptions = TextPropertyOptions
  { -- | If set, describes how the property should be used as a search operator.
    operatorOptions :: (Core.Maybe TextOperatorOptions),
    -- | Indicates the search quality importance of the tokens within the field when used for retrieval.
    retrievalImportance :: (Core.Maybe RetrievalImportance)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextPropertyOptions' with the minimum fields required to make a request.
newTextPropertyOptions ::
  TextPropertyOptions
newTextPropertyOptions =
  TextPropertyOptions
    { operatorOptions = Core.Nothing,
      retrievalImportance = Core.Nothing
    }

instance Core.FromJSON TextPropertyOptions where
  parseJSON =
    Core.withObject
      "TextPropertyOptions"
      ( \o ->
          TextPropertyOptions
            Core.<$> (o Core..:? "operatorOptions")
            Core.<*> (o Core..:? "retrievalImportance")
      )

instance Core.ToJSON TextPropertyOptions where
  toJSON TextPropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorOptions" Core..=)
              Core.<$> operatorOptions,
            ("retrievalImportance" Core..=)
              Core.<$> retrievalImportance
          ]
      )

-- | List of text values.
--
-- /See:/ 'newTextValues' smart constructor.
newtype TextValues = TextValues
  { -- | The maximum allowable length for text values is 2048 characters.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextValues' with the minimum fields required to make a request.
newTextValues ::
  TextValues
newTextValues = TextValues {values = Core.Nothing}

instance Core.FromJSON TextValues where
  parseJSON =
    Core.withObject
      "TextValues"
      ( \o ->
          TextValues
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON TextValues where
  toJSON TextValues {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Used to provide a search operator for timestamp properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.
--
-- /See:/ 'newTimestampOperatorOptions' smart constructor.
data TimestampOperatorOptions = TimestampOperatorOptions
  { -- | Indicates the operator name required in the query in order to isolate the timestamp property using the greater-than operator. For example, if greaterThanOperatorName is /closedafter/ and the property\'s name is /closeDate/, then queries like /closedafter:\<value>/ show results only where the value of the property named /closeDate/ is later than /\<value>/. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    greaterThanOperatorName :: (Core.Maybe Core.Text),
    -- | Indicates the operator name required in the query in order to isolate the timestamp property using the less-than operator. For example, if lessThanOperatorName is /closedbefore/ and the property\'s name is /closeDate/, then queries like /closedbefore:\<value>/ show results only where the value of the property named /closeDate/ is earlier than /\<value>/. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    lessThanOperatorName :: (Core.Maybe Core.Text),
    -- | Indicates the operator name required in the query in order to isolate the timestamp property. For example, if operatorName is /closedon/ and the property\'s name is /closeDate/, then queries like /closedon:\<value>/ show results only where the value of the property named /closeDate/ matches /\<value>/. By contrast, a search that uses the same /\<value>/ without an operator returns all items where /\<value>/ matches the value of any String properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimestampOperatorOptions' with the minimum fields required to make a request.
newTimestampOperatorOptions ::
  TimestampOperatorOptions
newTimestampOperatorOptions =
  TimestampOperatorOptions
    { greaterThanOperatorName = Core.Nothing,
      lessThanOperatorName = Core.Nothing,
      operatorName = Core.Nothing
    }

instance Core.FromJSON TimestampOperatorOptions where
  parseJSON =
    Core.withObject
      "TimestampOperatorOptions"
      ( \o ->
          TimestampOperatorOptions
            Core.<$> (o Core..:? "greaterThanOperatorName")
            Core.<*> (o Core..:? "lessThanOperatorName")
            Core.<*> (o Core..:? "operatorName")
      )

instance Core.ToJSON TimestampOperatorOptions where
  toJSON TimestampOperatorOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("greaterThanOperatorName" Core..=)
              Core.<$> greaterThanOperatorName,
            ("lessThanOperatorName" Core..=)
              Core.<$> lessThanOperatorName,
            ("operatorName" Core..=) Core.<$> operatorName
          ]
      )

-- | Options for timestamp properties.
--
-- /See:/ 'newTimestampPropertyOptions' smart constructor.
newtype TimestampPropertyOptions = TimestampPropertyOptions
  { -- | If set, describes how the timestamp should be used as a search operator.
    operatorOptions :: (Core.Maybe TimestampOperatorOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimestampPropertyOptions' with the minimum fields required to make a request.
newTimestampPropertyOptions ::
  TimestampPropertyOptions
newTimestampPropertyOptions =
  TimestampPropertyOptions {operatorOptions = Core.Nothing}

instance Core.FromJSON TimestampPropertyOptions where
  parseJSON =
    Core.withObject
      "TimestampPropertyOptions"
      ( \o ->
          TimestampPropertyOptions
            Core.<$> (o Core..:? "operatorOptions")
      )

instance Core.ToJSON TimestampPropertyOptions where
  toJSON TimestampPropertyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorOptions" Core..=)
              Core.<$> operatorOptions
          ]
      )

-- | List of timestamp values.
--
-- /See:/ 'newTimestampValues' smart constructor.
newtype TimestampValues = TimestampValues
  { -- |
    values :: (Core.Maybe [Core.DateTime'])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimestampValues' with the minimum fields required to make a request.
newTimestampValues ::
  TimestampValues
newTimestampValues = TimestampValues {values = Core.Nothing}

instance Core.FromJSON TimestampValues where
  parseJSON =
    Core.withObject
      "TimestampValues"
      ( \o ->
          TimestampValues
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON TimestampValues where
  toJSON TimestampValues {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Next tag: 2
--
-- /See:/ 'newTypeInfo' smart constructor.
newtype TypeInfo = TypeInfo
  { -- | Contains additional video information only if document_type is VIDEO.
    videoInfo :: (Core.Maybe VideoInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TypeInfo' with the minimum fields required to make a request.
newTypeInfo ::
  TypeInfo
newTypeInfo = TypeInfo {videoInfo = Core.Nothing}

instance Core.FromJSON TypeInfo where
  parseJSON =
    Core.withObject
      "TypeInfo"
      (\o -> TypeInfo Core.<$> (o Core..:? "videoInfo"))

instance Core.ToJSON TypeInfo where
  toJSON TypeInfo {..} =
    Core.object
      ( Core.catMaybes
          [("videoInfo" Core..=) Core.<$> videoInfo]
      )

--
-- /See:/ 'newUnmappedIdentity' smart constructor.
data UnmappedIdentity = UnmappedIdentity
  { -- | The resource name for an external user.
    externalIdentity :: (Core.Maybe Principal),
    -- | The resolution status for the external identity.
    resolutionStatusCode :: (Core.Maybe UnmappedIdentity_ResolutionStatusCode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnmappedIdentity' with the minimum fields required to make a request.
newUnmappedIdentity ::
  UnmappedIdentity
newUnmappedIdentity =
  UnmappedIdentity
    { externalIdentity = Core.Nothing,
      resolutionStatusCode = Core.Nothing
    }

instance Core.FromJSON UnmappedIdentity where
  parseJSON =
    Core.withObject
      "UnmappedIdentity"
      ( \o ->
          UnmappedIdentity
            Core.<$> (o Core..:? "externalIdentity")
            Core.<*> (o Core..:? "resolutionStatusCode")
      )

instance Core.ToJSON UnmappedIdentity where
  toJSON UnmappedIdentity {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalIdentity" Core..=)
              Core.<$> externalIdentity,
            ("resolutionStatusCode" Core..=)
              Core.<$> resolutionStatusCode
          ]
      )

--
-- /See:/ 'newUnreserveItemsRequest' smart constructor.
data UnreserveItemsRequest = UnreserveItemsRequest
  { -- | Name of connector making this call. Format: datasources\/{source_id}\/connectors\/{ID}
    connectorName :: (Core.Maybe Core.Text),
    -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions),
    -- | Name of a queue to unreserve items from.
    queue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnreserveItemsRequest' with the minimum fields required to make a request.
newUnreserveItemsRequest ::
  UnreserveItemsRequest
newUnreserveItemsRequest =
  UnreserveItemsRequest
    { connectorName = Core.Nothing,
      debugOptions = Core.Nothing,
      queue = Core.Nothing
    }

instance Core.FromJSON UnreserveItemsRequest where
  parseJSON =
    Core.withObject
      "UnreserveItemsRequest"
      ( \o ->
          UnreserveItemsRequest
            Core.<$> (o Core..:? "connectorName")
            Core.<*> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "queue")
      )

instance Core.ToJSON UnreserveItemsRequest where
  toJSON UnreserveItemsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectorName" Core..=) Core.<$> connectorName,
            ("debugOptions" Core..=) Core.<$> debugOptions,
            ("queue" Core..=) Core.<$> queue
          ]
      )

--
-- /See:/ 'newUpdateDataSourceRequest' smart constructor.
data UpdateDataSourceRequest = UpdateDataSourceRequest
  { -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions),
    -- |
    source :: (Core.Maybe DataSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDataSourceRequest' with the minimum fields required to make a request.
newUpdateDataSourceRequest ::
  UpdateDataSourceRequest
newUpdateDataSourceRequest =
  UpdateDataSourceRequest {debugOptions = Core.Nothing, source = Core.Nothing}

instance Core.FromJSON UpdateDataSourceRequest where
  parseJSON =
    Core.withObject
      "UpdateDataSourceRequest"
      ( \o ->
          UpdateDataSourceRequest
            Core.<$> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON UpdateDataSourceRequest where
  toJSON UpdateDataSourceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("debugOptions" Core..=) Core.<$> debugOptions,
            ("source" Core..=) Core.<$> source
          ]
      )

--
-- /See:/ 'newUpdateSchemaRequest' smart constructor.
data UpdateSchemaRequest = UpdateSchemaRequest
  { -- | Common debug options.
    debugOptions :: (Core.Maybe DebugOptions),
    -- | The new schema for the source.
    schema :: (Core.Maybe Schema),
    -- | If true, the schema will be checked for validity, but will not be registered with the data source, even if valid.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSchemaRequest' with the minimum fields required to make a request.
newUpdateSchemaRequest ::
  UpdateSchemaRequest
newUpdateSchemaRequest =
  UpdateSchemaRequest
    { debugOptions = Core.Nothing,
      schema = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.FromJSON UpdateSchemaRequest where
  parseJSON =
    Core.withObject
      "UpdateSchemaRequest"
      ( \o ->
          UpdateSchemaRequest
            Core.<$> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "schema")
            Core.<*> (o Core..:? "validateOnly")
      )

instance Core.ToJSON UpdateSchemaRequest where
  toJSON UpdateSchemaRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("debugOptions" Core..=) Core.<$> debugOptions,
            ("schema" Core..=) Core.<$> schema,
            ("validateOnly" Core..=) Core.<$> validateOnly
          ]
      )

-- | Represents an upload session reference. This reference is created via upload method. This reference is valid for 30 days after its creation. Updating of item content may refer to this uploaded content via contentDataRef.
--
-- /See:/ 'newUploadItemRef' smart constructor.
newtype UploadItemRef = UploadItemRef
  { -- | Name of the content reference. The maximum length is 2048 characters.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UploadItemRef' with the minimum fields required to make a request.
newUploadItemRef ::
  UploadItemRef
newUploadItemRef = UploadItemRef {name = Core.Nothing}

instance Core.FromJSON UploadItemRef where
  parseJSON =
    Core.withObject
      "UploadItemRef"
      (\o -> UploadItemRef Core.<$> (o Core..:? "name"))

instance Core.ToJSON UploadItemRef where
  toJSON UploadItemRef {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Primary key for User resource.
--
-- /See:/ 'newUserId' smart constructor.
data UserId = UserId
  { -- | Opaque, server-assigned ID of the User.
    id :: (Core.Maybe Core.Text),
    -- | Optional. Identifier of the App involved (directly or on behalf of a human creator) in creating this message. This is not set if the user posted a message directly, but is used in the case of, for example, a message being generated by a 1P integration based on a user action (creating an event, creating a task etc). This should only be used on the BE. For clients, please use the field in the FE message proto instead (google3\/apps\/dynamite\/v1\/frontend\/api\/message.proto?q=origin/app/id).
    originAppId :: (Core.Maybe AppId),
    -- | Clients do not need to send UserType to Backend, but Backend will always send this field to clients per the following rule: 1. For HUMAN Ids, the field is empty but by default .getType() will return HUMAN. 2. For BOT Ids, the field is ALWAYS set to BOT.
    type' :: (Core.Maybe UserId_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserId' with the minimum fields required to make a request.
newUserId ::
  UserId
newUserId =
  UserId {id = Core.Nothing, originAppId = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON UserId where
  parseJSON =
    Core.withObject
      "UserId"
      ( \o ->
          UserId
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "originAppId")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UserId where
  toJSON UserId {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("originAppId" Core..=) Core.<$> originAppId,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newVPCSettings' smart constructor.
newtype VPCSettings = VPCSettings
  { -- | The resource name of the GCP Project to be used for VPC SC policy check. VPC security settings on this project will be honored for Cloud Search APIs after project/name has been updated through CustomerService. Format: projects\/{project/id}
    project :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VPCSettings' with the minimum fields required to make a request.
newVPCSettings ::
  VPCSettings
newVPCSettings = VPCSettings {project = Core.Nothing}

instance Core.FromJSON VPCSettings where
  parseJSON =
    Core.withObject
      "VPCSettings"
      (\o -> VPCSettings Core.<$> (o Core..:? "project"))

instance Core.ToJSON VPCSettings where
  toJSON VPCSettings {..} =
    Core.object
      ( Core.catMaybes
          [("project" Core..=) Core.<$> project]
      )

-- | Definition of a single value with generic type.
--
-- /See:/ 'newValue' smart constructor.
data Value = Value
  { -- |
    booleanValue :: (Core.Maybe Core.Bool),
    -- |
    dateValue :: (Core.Maybe Date),
    -- |
    doubleValue :: (Core.Maybe Core.Double),
    -- |
    integerValue :: (Core.Maybe Core.Int64),
    -- |
    stringValue :: (Core.Maybe Core.Text),
    -- |
    timestampValue :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
newValue ::
  Value
newValue =
  Value
    { booleanValue = Core.Nothing,
      dateValue = Core.Nothing,
      doubleValue = Core.Nothing,
      integerValue = Core.Nothing,
      stringValue = Core.Nothing,
      timestampValue = Core.Nothing
    }

instance Core.FromJSON Value where
  parseJSON =
    Core.withObject
      "Value"
      ( \o ->
          Value
            Core.<$> (o Core..:? "booleanValue")
            Core.<*> (o Core..:? "dateValue")
            Core.<*> (o Core..:? "doubleValue")
            Core.<*> (o Core..:? "integerValue")
            Core.<*> (o Core..:? "stringValue")
            Core.<*> (o Core..:? "timestampValue")
      )

instance Core.ToJSON Value where
  toJSON Value {..} =
    Core.object
      ( Core.catMaybes
          [ ("booleanValue" Core..=) Core.<$> booleanValue,
            ("dateValue" Core..=) Core.<$> dateValue,
            ("doubleValue" Core..=) Core.<$> doubleValue,
            ("integerValue" Core..=) Core.. Core.AsText
              Core.<$> integerValue,
            ("stringValue" Core..=) Core.<$> stringValue,
            ("timestampValue" Core..=) Core.<$> timestampValue
          ]
      )

--
-- /See:/ 'newValueFilter' smart constructor.
data ValueFilter = ValueFilter
  { -- | The @operator_name@ applied to the query, such as /price/greater/than/. The filter can work against both types of filters defined in the schema for your data source: 1. @operator_name@, where the query filters results by the property that matches the value. 2. @greater_than_operator_name@ or @less_than_operator_name@ in your schema. The query filters the results for the property values that are greater than or less than the supplied value in the query.
    operatorName :: (Core.Maybe Core.Text),
    -- | The value to be compared with.
    value :: (Core.Maybe Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValueFilter' with the minimum fields required to make a request.
newValueFilter ::
  ValueFilter
newValueFilter = ValueFilter {operatorName = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ValueFilter where
  parseJSON =
    Core.withObject
      "ValueFilter"
      ( \o ->
          ValueFilter
            Core.<$> (o Core..:? "operatorName")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ValueFilter where
  toJSON ValueFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("operatorName" Core..=) Core.<$> operatorName,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Next tag: 2
--
-- /See:/ 'newVideoInfo' smart constructor.
newtype VideoInfo = VideoInfo
  { -- | Duration of the video in milliseconds. This field can be absent for recently uploaded video or inaccurate sometimes.
    duration :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoInfo' with the minimum fields required to make a request.
newVideoInfo ::
  VideoInfo
newVideoInfo = VideoInfo {duration = Core.Nothing}

instance Core.FromJSON VideoInfo where
  parseJSON =
    Core.withObject
      "VideoInfo"
      (\o -> VideoInfo Core.<$> (o Core..:? "duration"))

instance Core.ToJSON VideoInfo where
  toJSON VideoInfo {..} =
    Core.object
      ( Core.catMaybes
          [("duration" Core..=) Core.<$> duration]
      )
