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
-- Module      : Network.Google.CloudSearch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Search provides cloud-based search capabilities over Google Workspace data. The Cloud Search API allows indexing of non-Google Workspace data into Cloud Search.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference>
module Network.Google.CloudSearch
  ( -- * Configuration
    cloudSearchService,

    -- * OAuth Scopes
    cloud_searchScope,
    cloud_searchDebugScope,
    cloud_searchIndexingScope,
    cloud_searchQueryScope,
    cloud_searchSettingsScope,
    cloud_searchSettingsIndexingScope,
    cloud_searchSettingsQueryScope,
    cloud_searchStatsScope,
    cloud_searchStatsIndexingScope,

    -- * Resources

    -- ** cloudsearch.debug.datasources.items.checkAccess
    CloudSearchDebugDatasourcesItemsCheckAccessResource,
    newCloudSearchDebugDatasourcesItemsCheckAccess,
    CloudSearchDebugDatasourcesItemsCheckAccess,

    -- ** cloudsearch.debug.datasources.items.searchByViewUrl
    CloudSearchDebugDatasourcesItemsSearchByViewUrlResource,
    newCloudSearchDebugDatasourcesItemsSearchByViewUrl,
    CloudSearchDebugDatasourcesItemsSearchByViewUrl,

    -- ** cloudsearch.debug.datasources.items.unmappedids.list
    CloudSearchDebugDatasourcesItemsUnmappedidsListResource,
    newCloudSearchDebugDatasourcesItemsUnmappedidsList,
    CloudSearchDebugDatasourcesItemsUnmappedidsList,

    -- ** cloudsearch.debug.identitysources.items.listForunmappedidentity
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentityResource,
    newCloudSearchDebugIdentitysourcesItemsListForunmappedidentity,
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentity,

    -- ** cloudsearch.debug.identitysources.unmappedids.list
    CloudSearchDebugIdentitysourcesUnmappedidsListResource,
    newCloudSearchDebugIdentitysourcesUnmappedidsList,
    CloudSearchDebugIdentitysourcesUnmappedidsList,

    -- ** cloudsearch.indexing.datasources.deleteSchema
    CloudSearchIndexingDatasourcesDeleteSchemaResource,
    newCloudSearchIndexingDatasourcesDeleteSchema,
    CloudSearchIndexingDatasourcesDeleteSchema,

    -- ** cloudsearch.indexing.datasources.getSchema
    CloudSearchIndexingDatasourcesGetSchemaResource,
    newCloudSearchIndexingDatasourcesGetSchema,
    CloudSearchIndexingDatasourcesGetSchema,

    -- ** cloudsearch.indexing.datasources.items.delete
    CloudSearchIndexingDatasourcesItemsDeleteResource,
    newCloudSearchIndexingDatasourcesItemsDelete,
    CloudSearchIndexingDatasourcesItemsDelete,

    -- ** cloudsearch.indexing.datasources.items.deleteQueueItems
    CloudSearchIndexingDatasourcesItemsDeleteQueueItemsResource,
    newCloudSearchIndexingDatasourcesItemsDeleteQueueItems,
    CloudSearchIndexingDatasourcesItemsDeleteQueueItems,

    -- ** cloudsearch.indexing.datasources.items.get
    CloudSearchIndexingDatasourcesItemsGetResource,
    newCloudSearchIndexingDatasourcesItemsGet,
    CloudSearchIndexingDatasourcesItemsGet,

    -- ** cloudsearch.indexing.datasources.items.index
    CloudSearchIndexingDatasourcesItemsIndexResource,
    newCloudSearchIndexingDatasourcesItemsIndex,
    CloudSearchIndexingDatasourcesItemsIndex,

    -- ** cloudsearch.indexing.datasources.items.list
    CloudSearchIndexingDatasourcesItemsListResource,
    newCloudSearchIndexingDatasourcesItemsList,
    CloudSearchIndexingDatasourcesItemsList,

    -- ** cloudsearch.indexing.datasources.items.poll
    CloudSearchIndexingDatasourcesItemsPollResource,
    newCloudSearchIndexingDatasourcesItemsPoll,
    CloudSearchIndexingDatasourcesItemsPoll,

    -- ** cloudsearch.indexing.datasources.items.push
    CloudSearchIndexingDatasourcesItemsPushResource,
    newCloudSearchIndexingDatasourcesItemsPush,
    CloudSearchIndexingDatasourcesItemsPush,

    -- ** cloudsearch.indexing.datasources.items.unreserve
    CloudSearchIndexingDatasourcesItemsUnreserveResource,
    newCloudSearchIndexingDatasourcesItemsUnreserve,
    CloudSearchIndexingDatasourcesItemsUnreserve,

    -- ** cloudsearch.indexing.datasources.items.upload
    CloudSearchIndexingDatasourcesItemsUploadResource,
    newCloudSearchIndexingDatasourcesItemsUpload,
    CloudSearchIndexingDatasourcesItemsUpload,

    -- ** cloudsearch.indexing.datasources.updateSchema
    CloudSearchIndexingDatasourcesUpdateSchemaResource,
    newCloudSearchIndexingDatasourcesUpdateSchema,
    CloudSearchIndexingDatasourcesUpdateSchema,

    -- ** cloudsearch.initializeCustomer
    CloudSearchInitializeCustomerResource,
    newCloudSearchInitializeCustomer,
    CloudSearchInitializeCustomer,

    -- ** cloudsearch.media.upload
    CloudSearchMediaUploadResource,
    newCloudSearchMediaUpload,
    CloudSearchMediaUpload,

    -- ** cloudsearch.operations.get
    CloudSearchOperationsGetResource,
    newCloudSearchOperationsGet,
    CloudSearchOperationsGet,

    -- ** cloudsearch.operations.lro.list
    CloudSearchOperationsLroListResource,
    newCloudSearchOperationsLroList,
    CloudSearchOperationsLroList,

    -- ** cloudsearch.query.search
    CloudSearchQuerySearchResource,
    newCloudSearchQuerySearch,
    CloudSearchQuerySearch,

    -- ** cloudsearch.query.sources.list
    CloudSearchQuerySourcesListResource,
    newCloudSearchQuerySourcesList,
    CloudSearchQuerySourcesList,

    -- ** cloudsearch.query.suggest
    CloudSearchQuerySuggestResource,
    newCloudSearchQuerySuggest,
    CloudSearchQuerySuggest,

    -- ** cloudsearch.settings.datasources.create
    CloudSearchSettingsDatasourcesCreateResource,
    newCloudSearchSettingsDatasourcesCreate,
    CloudSearchSettingsDatasourcesCreate,

    -- ** cloudsearch.settings.datasources.delete
    CloudSearchSettingsDatasourcesDeleteResource,
    newCloudSearchSettingsDatasourcesDelete,
    CloudSearchSettingsDatasourcesDelete,

    -- ** cloudsearch.settings.datasources.get
    CloudSearchSettingsDatasourcesGetResource,
    newCloudSearchSettingsDatasourcesGet,
    CloudSearchSettingsDatasourcesGet,

    -- ** cloudsearch.settings.datasources.list
    CloudSearchSettingsDatasourcesListResource,
    newCloudSearchSettingsDatasourcesList,
    CloudSearchSettingsDatasourcesList,

    -- ** cloudsearch.settings.datasources.update
    CloudSearchSettingsDatasourcesUpdateResource,
    newCloudSearchSettingsDatasourcesUpdate,
    CloudSearchSettingsDatasourcesUpdate,

    -- ** cloudsearch.settings.getCustomer
    CloudSearchSettingsGetCustomerResource,
    newCloudSearchSettingsGetCustomer,
    CloudSearchSettingsGetCustomer,

    -- ** cloudsearch.settings.searchapplications.create
    CloudSearchSettingsSearchapplicationsCreateResource,
    newCloudSearchSettingsSearchapplicationsCreate,
    CloudSearchSettingsSearchapplicationsCreate,

    -- ** cloudsearch.settings.searchapplications.delete
    CloudSearchSettingsSearchapplicationsDeleteResource,
    newCloudSearchSettingsSearchapplicationsDelete,
    CloudSearchSettingsSearchapplicationsDelete,

    -- ** cloudsearch.settings.searchapplications.get
    CloudSearchSettingsSearchapplicationsGetResource,
    newCloudSearchSettingsSearchapplicationsGet,
    CloudSearchSettingsSearchapplicationsGet,

    -- ** cloudsearch.settings.searchapplications.list
    CloudSearchSettingsSearchapplicationsListResource,
    newCloudSearchSettingsSearchapplicationsList,
    CloudSearchSettingsSearchapplicationsList,

    -- ** cloudsearch.settings.searchapplications.reset
    CloudSearchSettingsSearchapplicationsResetResource,
    newCloudSearchSettingsSearchapplicationsReset,
    CloudSearchSettingsSearchapplicationsReset,

    -- ** cloudsearch.settings.searchapplications.update
    CloudSearchSettingsSearchapplicationsUpdateResource,
    newCloudSearchSettingsSearchapplicationsUpdate,
    CloudSearchSettingsSearchapplicationsUpdate,

    -- ** cloudsearch.settings.updateCustomer
    CloudSearchSettingsUpdateCustomerResource,
    newCloudSearchSettingsUpdateCustomer,
    CloudSearchSettingsUpdateCustomer,

    -- ** cloudsearch.stats.getIndex
    CloudSearchStatsGetIndexResource,
    newCloudSearchStatsGetIndex,
    CloudSearchStatsGetIndex,

    -- ** cloudsearch.stats.getQuery
    CloudSearchStatsGetQueryResource,
    newCloudSearchStatsGetQuery,
    CloudSearchStatsGetQuery,

    -- ** cloudsearch.stats.getSearchapplication
    CloudSearchStatsGetSearchapplicationResource,
    newCloudSearchStatsGetSearchapplication,
    CloudSearchStatsGetSearchapplication,

    -- ** cloudsearch.stats.getSession
    CloudSearchStatsGetSessionResource,
    newCloudSearchStatsGetSession,
    CloudSearchStatsGetSession,

    -- ** cloudsearch.stats.getUser
    CloudSearchStatsGetUserResource,
    newCloudSearchStatsGetUser,
    CloudSearchStatsGetUser,

    -- ** cloudsearch.stats.index.datasources.get
    CloudSearchStatsIndexDatasourcesGetResource,
    newCloudSearchStatsIndexDatasourcesGet,
    CloudSearchStatsIndexDatasourcesGet,

    -- ** cloudsearch.stats.query.searchapplications.get
    CloudSearchStatsQuerySearchapplicationsGetResource,
    newCloudSearchStatsQuerySearchapplicationsGet,
    CloudSearchStatsQuerySearchapplicationsGet,

    -- ** cloudsearch.stats.session.searchapplications.get
    CloudSearchStatsSessionSearchapplicationsGetResource,
    newCloudSearchStatsSessionSearchapplicationsGet,
    CloudSearchStatsSessionSearchapplicationsGet,

    -- ** cloudsearch.stats.user.searchapplications.get
    CloudSearchStatsUserSearchapplicationsGetResource,
    newCloudSearchStatsUserSearchapplicationsGet,
    CloudSearchStatsUserSearchapplicationsGet,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AclInfo
    AclInfo (..),
    newAclInfo,

    -- ** AclInfo_Scope
    AclInfo_Scope (..),

    -- ** AppId
    AppId (..),
    newAppId,

    -- ** AppId_AppType
    AppId_AppType (..),

    -- ** AppId_GsuiteAppType
    AppId_GsuiteAppType (..),

    -- ** AuditLoggingSettings
    AuditLoggingSettings (..),
    newAuditLoggingSettings,

    -- ** AvatarInfo
    AvatarInfo (..),
    newAvatarInfo,

    -- ** BooleanOperatorOptions
    BooleanOperatorOptions (..),
    newBooleanOperatorOptions,

    -- ** BooleanPropertyOptions
    BooleanPropertyOptions (..),
    newBooleanPropertyOptions,

    -- ** CheckAccessResponse
    CheckAccessResponse (..),
    newCheckAccessResponse,

    -- ** CompositeFilter
    CompositeFilter (..),
    newCompositeFilter,

    -- ** CompositeFilter_LogicOperator
    CompositeFilter_LogicOperator (..),

    -- ** ContextAttribute
    ContextAttribute (..),
    newContextAttribute,

    -- ** CustomEmoji
    CustomEmoji (..),
    newCustomEmoji,

    -- ** CustomEmoji_State
    CustomEmoji_State (..),

    -- ** CustomerId
    CustomerId (..),
    newCustomerId,

    -- ** CustomerIndexStats
    CustomerIndexStats (..),
    newCustomerIndexStats,

    -- ** CustomerQueryStats
    CustomerQueryStats (..),
    newCustomerQueryStats,

    -- ** CustomerSearchApplicationStats
    CustomerSearchApplicationStats (..),
    newCustomerSearchApplicationStats,

    -- ** CustomerSessionStats
    CustomerSessionStats (..),
    newCustomerSessionStats,

    -- ** CustomerSettings
    CustomerSettings (..),
    newCustomerSettings,

    -- ** CustomerUserStats
    CustomerUserStats (..),
    newCustomerUserStats,

    -- ** DataSource
    DataSource (..),
    newDataSource,

    -- ** DataSourceIndexStats
    DataSourceIndexStats (..),
    newDataSourceIndexStats,

    -- ** DataSourceRestriction
    DataSourceRestriction (..),
    newDataSourceRestriction,

    -- ** Date
    Date (..),
    newDate,

    -- ** DateOperatorOptions
    DateOperatorOptions (..),
    newDateOperatorOptions,

    -- ** DatePropertyOptions
    DatePropertyOptions (..),
    newDatePropertyOptions,

    -- ** DateValues
    DateValues (..),
    newDateValues,

    -- ** DebugOptions
    DebugOptions (..),
    newDebugOptions,

    -- ** DeleteQueueItemsRequest
    DeleteQueueItemsRequest (..),
    newDeleteQueueItemsRequest,

    -- ** DisplayedProperty
    DisplayedProperty (..),
    newDisplayedProperty,

    -- ** DmId
    DmId (..),
    newDmId,

    -- ** DoubleOperatorOptions
    DoubleOperatorOptions (..),
    newDoubleOperatorOptions,

    -- ** DoublePropertyOptions
    DoublePropertyOptions (..),
    newDoublePropertyOptions,

    -- ** DoubleValues
    DoubleValues (..),
    newDoubleValues,

    -- ** DriveFollowUpRestrict
    DriveFollowUpRestrict (..),
    newDriveFollowUpRestrict,

    -- ** DriveFollowUpRestrict_Type
    DriveFollowUpRestrict_Type (..),

    -- ** DriveLocationRestrict
    DriveLocationRestrict (..),
    newDriveLocationRestrict,

    -- ** DriveLocationRestrict_Type
    DriveLocationRestrict_Type (..),

    -- ** DriveMimeTypeRestrict
    DriveMimeTypeRestrict (..),
    newDriveMimeTypeRestrict,

    -- ** DriveMimeTypeRestrict_Type
    DriveMimeTypeRestrict_Type (..),

    -- ** DriveTimeSpanRestrict
    DriveTimeSpanRestrict (..),
    newDriveTimeSpanRestrict,

    -- ** DriveTimeSpanRestrict_Type
    DriveTimeSpanRestrict_Type (..),

    -- ** DynamiteSpacesScoringInfo
    DynamiteSpacesScoringInfo (..),
    newDynamiteSpacesScoringInfo,

    -- ** EmailAddress
    EmailAddress (..),
    newEmailAddress,

    -- ** Emoji
    Emoji (..),
    newEmoji,

    -- ** EnumOperatorOptions
    EnumOperatorOptions (..),
    newEnumOperatorOptions,

    -- ** EnumPropertyOptions
    EnumPropertyOptions (..),
    newEnumPropertyOptions,

    -- ** EnumPropertyOptions_OrderedRanking
    EnumPropertyOptions_OrderedRanking (..),

    -- ** EnumValuePair
    EnumValuePair (..),
    newEnumValuePair,

    -- ** EnumValues
    EnumValues (..),
    newEnumValues,

    -- ** ErrorInfo
    ErrorInfo (..),
    newErrorInfo,

    -- ** ErrorMessage
    ErrorMessage (..),
    newErrorMessage,

    -- ** FacetBucket
    FacetBucket (..),
    newFacetBucket,

    -- ** FacetOptions
    FacetOptions (..),
    newFacetOptions,

    -- ** FacetResult
    FacetResult (..),
    newFacetResult,

    -- ** FieldViolation
    FieldViolation (..),
    newFieldViolation,

    -- ** Filter
    Filter (..),
    newFilter,

    -- ** FilterOptions
    FilterOptions (..),
    newFilterOptions,

    -- ** FreshnessOptions
    FreshnessOptions (..),
    newFreshnessOptions,

    -- ** GSuitePrincipal
    GSuitePrincipal (..),
    newGSuitePrincipal,

    -- ** GetCustomerIndexStatsResponse
    GetCustomerIndexStatsResponse (..),
    newGetCustomerIndexStatsResponse,

    -- ** GetCustomerQueryStatsResponse
    GetCustomerQueryStatsResponse (..),
    newGetCustomerQueryStatsResponse,

    -- ** GetCustomerSearchApplicationStatsResponse
    GetCustomerSearchApplicationStatsResponse (..),
    newGetCustomerSearchApplicationStatsResponse,

    -- ** GetCustomerSessionStatsResponse
    GetCustomerSessionStatsResponse (..),
    newGetCustomerSessionStatsResponse,

    -- ** GetCustomerUserStatsResponse
    GetCustomerUserStatsResponse (..),
    newGetCustomerUserStatsResponse,

    -- ** GetDataSourceIndexStatsResponse
    GetDataSourceIndexStatsResponse (..),
    newGetDataSourceIndexStatsResponse,

    -- ** GetSearchApplicationQueryStatsResponse
    GetSearchApplicationQueryStatsResponse (..),
    newGetSearchApplicationQueryStatsResponse,

    -- ** GetSearchApplicationSessionStatsResponse
    GetSearchApplicationSessionStatsResponse (..),
    newGetSearchApplicationSessionStatsResponse,

    -- ** GetSearchApplicationUserStatsResponse
    GetSearchApplicationUserStatsResponse (..),
    newGetSearchApplicationUserStatsResponse,

    -- ** GoogleDocsMetadata
    GoogleDocsMetadata (..),
    newGoogleDocsMetadata,

    -- ** GoogleDocsMetadata_DocumentType
    GoogleDocsMetadata_DocumentType (..),

    -- ** GoogleDocsResultInfo
    GoogleDocsResultInfo (..),
    newGoogleDocsResultInfo,

    -- ** GroupId
    GroupId (..),
    newGroupId,

    -- ** HtmlOperatorOptions
    HtmlOperatorOptions (..),
    newHtmlOperatorOptions,

    -- ** HtmlPropertyOptions
    HtmlPropertyOptions (..),
    newHtmlPropertyOptions,

    -- ** HtmlValues
    HtmlValues (..),
    newHtmlValues,

    -- ** Id
    Id (..),
    newId,

    -- ** IndexItemOptions
    IndexItemOptions (..),
    newIndexItemOptions,

    -- ** IndexItemRequest
    IndexItemRequest (..),
    newIndexItemRequest,

    -- ** IndexItemRequest_Mode
    IndexItemRequest_Mode (..),

    -- ** InitializeCustomerRequest
    InitializeCustomerRequest (..),
    newInitializeCustomerRequest,

    -- ** IntegerOperatorOptions
    IntegerOperatorOptions (..),
    newIntegerOperatorOptions,

    -- ** IntegerPropertyOptions
    IntegerPropertyOptions (..),
    newIntegerPropertyOptions,

    -- ** IntegerPropertyOptions_OrderedRanking
    IntegerPropertyOptions_OrderedRanking (..),

    -- ** IntegerValues
    IntegerValues (..),
    newIntegerValues,

    -- ** Interaction
    Interaction (..),
    newInteraction,

    -- ** Interaction_Type
    Interaction_Type (..),

    -- ** Item
    Item (..),
    newItem,

    -- ** Item_ItemType
    Item_ItemType (..),

    -- ** ItemAcl
    ItemAcl (..),
    newItemAcl,

    -- ** ItemAcl_AclInheritanceType
    ItemAcl_AclInheritanceType (..),

    -- ** ItemContent
    ItemContent (..),
    newItemContent,

    -- ** ItemContent_ContentFormat
    ItemContent_ContentFormat (..),

    -- ** ItemCountByStatus
    ItemCountByStatus (..),
    newItemCountByStatus,

    -- ** ItemCountByStatus_StatusCode
    ItemCountByStatus_StatusCode (..),

    -- ** ItemMetadata
    ItemMetadata (..),
    newItemMetadata,

    -- ** ItemStatus
    ItemStatus (..),
    newItemStatus,

    -- ** ItemStatus_Code
    ItemStatus_Code (..),

    -- ** ItemStructuredData
    ItemStructuredData (..),
    newItemStructuredData,

    -- ** ListDataSourceResponse
    ListDataSourceResponse (..),
    newListDataSourceResponse,

    -- ** ListItemNamesForUnmappedIdentityResponse
    ListItemNamesForUnmappedIdentityResponse (..),
    newListItemNamesForUnmappedIdentityResponse,

    -- ** ListItemsResponse
    ListItemsResponse (..),
    newListItemsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListQuerySourcesResponse
    ListQuerySourcesResponse (..),
    newListQuerySourcesResponse,

    -- ** ListSearchApplicationsResponse
    ListSearchApplicationsResponse (..),
    newListSearchApplicationsResponse,

    -- ** ListUnmappedIdentitiesResponse
    ListUnmappedIdentitiesResponse (..),
    newListUnmappedIdentitiesResponse,

    -- ** MatchRange
    MatchRange (..),
    newMatchRange,

    -- ** Media
    Media (..),
    newMedia,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** Metaline
    Metaline (..),
    newMetaline,

    -- ** Name
    Name (..),
    newName,

    -- ** NamedProperty
    NamedProperty (..),
    newNamedProperty,

    -- ** ObjectDefinition
    ObjectDefinition (..),
    newObjectDefinition,

    -- ** ObjectDisplayOptions
    ObjectDisplayOptions (..),
    newObjectDisplayOptions,

    -- ** ObjectOptions
    ObjectOptions (..),
    newObjectOptions,

    -- ** ObjectPropertyOptions
    ObjectPropertyOptions (..),
    newObjectPropertyOptions,

    -- ** ObjectValues
    ObjectValues (..),
    newObjectValues,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** PeopleSuggestion
    PeopleSuggestion (..),
    newPeopleSuggestion,

    -- ** Person
    Person (..),
    newPerson,

    -- ** Photo
    Photo (..),
    newPhoto,

    -- ** PollItemsRequest
    PollItemsRequest (..),
    newPollItemsRequest,

    -- ** PollItemsRequest_StatusCodesItem
    PollItemsRequest_StatusCodesItem (..),

    -- ** PollItemsResponse
    PollItemsResponse (..),
    newPollItemsResponse,

    -- ** Principal
    Principal (..),
    newPrincipal,

    -- ** ProcessingError
    ProcessingError (..),
    newProcessingError,

    -- ** ProcessingError_Code
    ProcessingError_Code (..),

    -- ** PropertyDefinition
    PropertyDefinition (..),
    newPropertyDefinition,

    -- ** PropertyDisplayOptions
    PropertyDisplayOptions (..),
    newPropertyDisplayOptions,

    -- ** PushItem
    PushItem (..),
    newPushItem,

    -- ** PushItem_Type
    PushItem_Type (..),

    -- ** PushItemRequest
    PushItemRequest (..),
    newPushItemRequest,

    -- ** QueryCountByStatus
    QueryCountByStatus (..),
    newQueryCountByStatus,

    -- ** QueryInterpretation
    QueryInterpretation (..),
    newQueryInterpretation,

    -- ** QueryInterpretation_InterpretationType
    QueryInterpretation_InterpretationType (..),

    -- ** QueryInterpretation_Reason
    QueryInterpretation_Reason (..),

    -- ** QueryInterpretationConfig
    QueryInterpretationConfig (..),
    newQueryInterpretationConfig,

    -- ** QueryInterpretationOptions
    QueryInterpretationOptions (..),
    newQueryInterpretationOptions,

    -- ** QueryItem
    QueryItem (..),
    newQueryItem,

    -- ** QueryOperator
    QueryOperator (..),
    newQueryOperator,

    -- ** QueryOperator_Type
    QueryOperator_Type (..),

    -- ** QuerySource
    QuerySource (..),
    newQuerySource,

    -- ** QuerySuggestion
    QuerySuggestion (..),
    newQuerySuggestion,

    -- ** RepositoryError
    RepositoryError (..),
    newRepositoryError,

    -- ** RepositoryError_Type
    RepositoryError_Type (..),

    -- ** RequestOptions
    RequestOptions (..),
    newRequestOptions,

    -- ** ResetSearchApplicationRequest
    ResetSearchApplicationRequest (..),
    newResetSearchApplicationRequest,

    -- ** ResponseDebugInfo
    ResponseDebugInfo (..),
    newResponseDebugInfo,

    -- ** RestrictItem
    RestrictItem (..),
    newRestrictItem,

    -- ** ResultCounts
    ResultCounts (..),
    newResultCounts,

    -- ** ResultDebugInfo
    ResultDebugInfo (..),
    newResultDebugInfo,

    -- ** ResultDisplayField
    ResultDisplayField (..),
    newResultDisplayField,

    -- ** ResultDisplayLine
    ResultDisplayLine (..),
    newResultDisplayLine,

    -- ** ResultDisplayMetadata
    ResultDisplayMetadata (..),
    newResultDisplayMetadata,

    -- ** RetrievalImportance
    RetrievalImportance (..),
    newRetrievalImportance,

    -- ** RetrievalImportance_Importance
    RetrievalImportance_Importance (..),

    -- ** Schema
    Schema (..),
    newSchema,

    -- ** ScoringConfig
    ScoringConfig (..),
    newScoringConfig,

    -- ** SearchApplication
    SearchApplication (..),
    newSearchApplication,

    -- ** SearchApplicationQueryStats
    SearchApplicationQueryStats (..),
    newSearchApplicationQueryStats,

    -- ** SearchApplicationSessionStats
    SearchApplicationSessionStats (..),
    newSearchApplicationSessionStats,

    -- ** SearchApplicationUserStats
    SearchApplicationUserStats (..),
    newSearchApplicationUserStats,

    -- ** SearchItemsByViewUrlRequest
    SearchItemsByViewUrlRequest (..),
    newSearchItemsByViewUrlRequest,

    -- ** SearchItemsByViewUrlResponse
    SearchItemsByViewUrlResponse (..),
    newSearchItemsByViewUrlResponse,

    -- ** SearchQualityMetadata
    SearchQualityMetadata (..),
    newSearchQualityMetadata,

    -- ** SearchRequest
    SearchRequest (..),
    newSearchRequest,

    -- ** SearchResponse
    SearchResponse (..),
    newSearchResponse,

    -- ** SearchResult
    SearchResult (..),
    newSearchResult,

    -- ** ShareScope
    ShareScope (..),
    newShareScope,

    -- ** ShareScope_Scope
    ShareScope_Scope (..),

    -- ** Snippet
    Snippet (..),
    newSnippet,

    -- ** SortOptions
    SortOptions (..),
    newSortOptions,

    -- ** SortOptions_SortOrder
    SortOptions_SortOrder (..),

    -- ** Source
    Source (..),
    newSource,

    -- ** Source_PredefinedSource
    Source_PredefinedSource (..),

    -- ** SourceConfig
    SourceConfig (..),
    newSourceConfig,

    -- ** SourceCrowdingConfig
    SourceCrowdingConfig (..),
    newSourceCrowdingConfig,

    -- ** SourceResultCount
    SourceResultCount (..),
    newSourceResultCount,

    -- ** SourceScoringConfig
    SourceScoringConfig (..),
    newSourceScoringConfig,

    -- ** SourceScoringConfig_SourceImportance
    SourceScoringConfig_SourceImportance (..),

    -- ** SpaceId
    SpaceId (..),
    newSpaceId,

    -- ** SpaceInfo
    SpaceInfo (..),
    newSpaceInfo,

    -- ** SpaceInfo_UserMembershipState
    SpaceInfo_UserMembershipState (..),

    -- ** SpellResult
    SpellResult (..),
    newSpellResult,

    -- ** StartUploadItemRequest
    StartUploadItemRequest (..),
    newStartUploadItemRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StructuredDataObject
    StructuredDataObject (..),
    newStructuredDataObject,

    -- ** StructuredResult
    StructuredResult (..),
    newStructuredResult,

    -- ** SuggestRequest
    SuggestRequest (..),
    newSuggestRequest,

    -- ** SuggestResponse
    SuggestResponse (..),
    newSuggestResponse,

    -- ** SuggestResult
    SuggestResult (..),
    newSuggestResult,

    -- ** TextOperatorOptions
    TextOperatorOptions (..),
    newTextOperatorOptions,

    -- ** TextPropertyOptions
    TextPropertyOptions (..),
    newTextPropertyOptions,

    -- ** TextValues
    TextValues (..),
    newTextValues,

    -- ** TimestampOperatorOptions
    TimestampOperatorOptions (..),
    newTimestampOperatorOptions,

    -- ** TimestampPropertyOptions
    TimestampPropertyOptions (..),
    newTimestampPropertyOptions,

    -- ** TimestampValues
    TimestampValues (..),
    newTimestampValues,

    -- ** TypeInfo
    TypeInfo (..),
    newTypeInfo,

    -- ** UnmappedIdentity
    UnmappedIdentity (..),
    newUnmappedIdentity,

    -- ** UnmappedIdentity_ResolutionStatusCode
    UnmappedIdentity_ResolutionStatusCode (..),

    -- ** UnreserveItemsRequest
    UnreserveItemsRequest (..),
    newUnreserveItemsRequest,

    -- ** UpdateDataSourceRequest
    UpdateDataSourceRequest (..),
    newUpdateDataSourceRequest,

    -- ** UpdateSchemaRequest
    UpdateSchemaRequest (..),
    newUpdateSchemaRequest,

    -- ** UploadItemRef
    UploadItemRef (..),
    newUploadItemRef,

    -- ** UserId
    UserId (..),
    newUserId,

    -- ** UserId_Type
    UserId_Type (..),

    -- ** VPCSettings
    VPCSettings (..),
    newVPCSettings,

    -- ** Value
    Value (..),
    newValue,

    -- ** ValueFilter
    ValueFilter (..),
    newValueFilter,

    -- ** VideoInfo
    VideoInfo (..),
    newVideoInfo,

    -- ** DebugIdentitysourcesUnmappedidsListResolutionStatusCode
    DebugIdentitysourcesUnmappedidsListResolutionStatusCode (..),

    -- ** IndexingDatasourcesItemsDeleteMode
    IndexingDatasourcesItemsDeleteMode (..),
  )
where

import Network.Google.CloudSearch.Debug.Datasources.Items.CheckAccess
import Network.Google.CloudSearch.Debug.Datasources.Items.SearchByViewUrl
import Network.Google.CloudSearch.Debug.Datasources.Items.Unmappedids.List
import Network.Google.CloudSearch.Debug.Identitysources.Items.ListForunmappedidentity
import Network.Google.CloudSearch.Debug.Identitysources.Unmappedids.List
import Network.Google.CloudSearch.Indexing.Datasources.DeleteSchema
import Network.Google.CloudSearch.Indexing.Datasources.GetSchema
import Network.Google.CloudSearch.Indexing.Datasources.Items.Delete
import Network.Google.CloudSearch.Indexing.Datasources.Items.DeleteQueueItems
import Network.Google.CloudSearch.Indexing.Datasources.Items.Get
import Network.Google.CloudSearch.Indexing.Datasources.Items.Index
import Network.Google.CloudSearch.Indexing.Datasources.Items.List
import Network.Google.CloudSearch.Indexing.Datasources.Items.Poll
import Network.Google.CloudSearch.Indexing.Datasources.Items.Push
import Network.Google.CloudSearch.Indexing.Datasources.Items.Unreserve
import Network.Google.CloudSearch.Indexing.Datasources.Items.Upload
import Network.Google.CloudSearch.Indexing.Datasources.UpdateSchema
import Network.Google.CloudSearch.InitializeCustomer
import Network.Google.CloudSearch.Media.Upload
import Network.Google.CloudSearch.Operations.Get
import Network.Google.CloudSearch.Operations.Lro.List
import Network.Google.CloudSearch.Query.Search
import Network.Google.CloudSearch.Query.Sources.List
import Network.Google.CloudSearch.Query.Suggest
import Network.Google.CloudSearch.Settings.Datasources.Create
import Network.Google.CloudSearch.Settings.Datasources.Delete
import Network.Google.CloudSearch.Settings.Datasources.Get
import Network.Google.CloudSearch.Settings.Datasources.List
import Network.Google.CloudSearch.Settings.Datasources.Update
import Network.Google.CloudSearch.Settings.GetCustomer
import Network.Google.CloudSearch.Settings.Searchapplications.Create
import Network.Google.CloudSearch.Settings.Searchapplications.Delete
import Network.Google.CloudSearch.Settings.Searchapplications.Get
import Network.Google.CloudSearch.Settings.Searchapplications.List
import Network.Google.CloudSearch.Settings.Searchapplications.Reset
import Network.Google.CloudSearch.Settings.Searchapplications.Update
import Network.Google.CloudSearch.Settings.UpdateCustomer
import Network.Google.CloudSearch.Stats.GetIndex
import Network.Google.CloudSearch.Stats.GetQuery
import Network.Google.CloudSearch.Stats.GetSearchapplication
import Network.Google.CloudSearch.Stats.GetSession
import Network.Google.CloudSearch.Stats.GetUser
import Network.Google.CloudSearch.Stats.Index.Datasources.Get
import Network.Google.CloudSearch.Stats.Query.Searchapplications.Get
import Network.Google.CloudSearch.Stats.Session.Searchapplications.Get
import Network.Google.CloudSearch.Stats.User.Searchapplications.Get
import Network.Google.CloudSearch.Types
