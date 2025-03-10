{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudSearch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Search provides cloud-based search capabilities over Google Workspace data. The Cloud Search API allows indexing of non-Google Workspace data into Cloud Search.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference>
module Gogol.CloudSearch
  ( -- * Configuration
    cloudSearchService,

    -- * OAuth Scopes
    CloudSearch'FullControl,
    CloudSearch'Debug,
    CloudSearch'Indexing,
    CloudSearch'Query,
    CloudSearch'Settings,
    CloudSearch'Settings'Indexing,
    CloudSearch'Settings'Query,
    CloudSearch'Stats,
    CloudSearch'Stats'Indexing,

    -- * Resources

    -- ** cloudsearch.debug.datasources.items.checkAccess
    CloudSearchDebugDatasourcesItemsCheckAccessResource,
    CloudSearchDebugDatasourcesItemsCheckAccess (..),
    newCloudSearchDebugDatasourcesItemsCheckAccess,

    -- ** cloudsearch.debug.datasources.items.searchByViewUrl
    CloudSearchDebugDatasourcesItemsSearchByViewUrlResource,
    CloudSearchDebugDatasourcesItemsSearchByViewUrl (..),
    newCloudSearchDebugDatasourcesItemsSearchByViewUrl,

    -- ** cloudsearch.debug.datasources.items.unmappedids.list
    CloudSearchDebugDatasourcesItemsUnmappedidsListResource,
    CloudSearchDebugDatasourcesItemsUnmappedidsList (..),
    newCloudSearchDebugDatasourcesItemsUnmappedidsList,

    -- ** cloudsearch.debug.identitysources.items.listForunmappedidentity
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentityResource,
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentity (..),
    newCloudSearchDebugIdentitysourcesItemsListForunmappedidentity,

    -- ** cloudsearch.debug.identitysources.unmappedids.list
    CloudSearchDebugIdentitysourcesUnmappedidsListResource,
    CloudSearchDebugIdentitysourcesUnmappedidsList (..),
    newCloudSearchDebugIdentitysourcesUnmappedidsList,

    -- ** cloudsearch.indexing.datasources.deleteSchema
    CloudSearchIndexingDatasourcesDeleteSchemaResource,
    CloudSearchIndexingDatasourcesDeleteSchema (..),
    newCloudSearchIndexingDatasourcesDeleteSchema,

    -- ** cloudsearch.indexing.datasources.getSchema
    CloudSearchIndexingDatasourcesGetSchemaResource,
    CloudSearchIndexingDatasourcesGetSchema (..),
    newCloudSearchIndexingDatasourcesGetSchema,

    -- ** cloudsearch.indexing.datasources.items.delete
    CloudSearchIndexingDatasourcesItemsDeleteResource,
    CloudSearchIndexingDatasourcesItemsDelete (..),
    newCloudSearchIndexingDatasourcesItemsDelete,

    -- ** cloudsearch.indexing.datasources.items.deleteQueueItems
    CloudSearchIndexingDatasourcesItemsDeleteQueueItemsResource,
    CloudSearchIndexingDatasourcesItemsDeleteQueueItems (..),
    newCloudSearchIndexingDatasourcesItemsDeleteQueueItems,

    -- ** cloudsearch.indexing.datasources.items.get
    CloudSearchIndexingDatasourcesItemsGetResource,
    CloudSearchIndexingDatasourcesItemsGet (..),
    newCloudSearchIndexingDatasourcesItemsGet,

    -- ** cloudsearch.indexing.datasources.items.index
    CloudSearchIndexingDatasourcesItemsIndexResource,
    CloudSearchIndexingDatasourcesItemsIndex (..),
    newCloudSearchIndexingDatasourcesItemsIndex,

    -- ** cloudsearch.indexing.datasources.items.list
    CloudSearchIndexingDatasourcesItemsListResource,
    CloudSearchIndexingDatasourcesItemsList (..),
    newCloudSearchIndexingDatasourcesItemsList,

    -- ** cloudsearch.indexing.datasources.items.poll
    CloudSearchIndexingDatasourcesItemsPollResource,
    CloudSearchIndexingDatasourcesItemsPoll (..),
    newCloudSearchIndexingDatasourcesItemsPoll,

    -- ** cloudsearch.indexing.datasources.items.push
    CloudSearchIndexingDatasourcesItemsPushResource,
    CloudSearchIndexingDatasourcesItemsPush (..),
    newCloudSearchIndexingDatasourcesItemsPush,

    -- ** cloudsearch.indexing.datasources.items.unreserve
    CloudSearchIndexingDatasourcesItemsUnreserveResource,
    CloudSearchIndexingDatasourcesItemsUnreserve (..),
    newCloudSearchIndexingDatasourcesItemsUnreserve,

    -- ** cloudsearch.indexing.datasources.items.upload
    CloudSearchIndexingDatasourcesItemsUploadResource,
    CloudSearchIndexingDatasourcesItemsUpload (..),
    newCloudSearchIndexingDatasourcesItemsUpload,

    -- ** cloudsearch.indexing.datasources.updateSchema
    CloudSearchIndexingDatasourcesUpdateSchemaResource,
    CloudSearchIndexingDatasourcesUpdateSchema (..),
    newCloudSearchIndexingDatasourcesUpdateSchema,

    -- ** cloudsearch.initializeCustomer
    CloudSearchInitializeCustomerResource,
    CloudSearchInitializeCustomer (..),
    newCloudSearchInitializeCustomer,

    -- ** cloudsearch.media.upload
    CloudSearchMediaUploadResource,
    CloudSearchMediaUpload (..),
    newCloudSearchMediaUpload,

    -- ** cloudsearch.operations.get
    CloudSearchOperationsGetResource,
    CloudSearchOperationsGet (..),
    newCloudSearchOperationsGet,

    -- ** cloudsearch.operations.lro.list
    CloudSearchOperationsLroListResource,
    CloudSearchOperationsLroList (..),
    newCloudSearchOperationsLroList,

    -- ** cloudsearch.query.debugSearch
    CloudSearchQueryDebugSearchResource,
    CloudSearchQueryDebugSearch (..),
    newCloudSearchQueryDebugSearch,

    -- ** cloudsearch.query.removeActivity
    CloudSearchQueryRemoveActivityResource,
    CloudSearchQueryRemoveActivity (..),
    newCloudSearchQueryRemoveActivity,

    -- ** cloudsearch.query.search
    CloudSearchQuerySearchResource,
    CloudSearchQuerySearch (..),
    newCloudSearchQuerySearch,

    -- ** cloudsearch.query.sources.list
    CloudSearchQuerySourcesListResource,
    CloudSearchQuerySourcesList (..),
    newCloudSearchQuerySourcesList,

    -- ** cloudsearch.query.suggest
    CloudSearchQuerySuggestResource,
    CloudSearchQuerySuggest (..),
    newCloudSearchQuerySuggest,

    -- ** cloudsearch.settings.datasources.create
    CloudSearchSettingsDatasourcesCreateResource,
    CloudSearchSettingsDatasourcesCreate (..),
    newCloudSearchSettingsDatasourcesCreate,

    -- ** cloudsearch.settings.datasources.delete
    CloudSearchSettingsDatasourcesDeleteResource,
    CloudSearchSettingsDatasourcesDelete (..),
    newCloudSearchSettingsDatasourcesDelete,

    -- ** cloudsearch.settings.datasources.get
    CloudSearchSettingsDatasourcesGetResource,
    CloudSearchSettingsDatasourcesGet (..),
    newCloudSearchSettingsDatasourcesGet,

    -- ** cloudsearch.settings.datasources.list
    CloudSearchSettingsDatasourcesListResource,
    CloudSearchSettingsDatasourcesList (..),
    newCloudSearchSettingsDatasourcesList,

    -- ** cloudsearch.settings.datasources.patch
    CloudSearchSettingsDatasourcesPatchResource,
    CloudSearchSettingsDatasourcesPatch (..),
    newCloudSearchSettingsDatasourcesPatch,

    -- ** cloudsearch.settings.datasources.update
    CloudSearchSettingsDatasourcesUpdateResource,
    CloudSearchSettingsDatasourcesUpdate (..),
    newCloudSearchSettingsDatasourcesUpdate,

    -- ** cloudsearch.settings.getCustomer
    CloudSearchSettingsGetCustomerResource,
    CloudSearchSettingsGetCustomer (..),
    newCloudSearchSettingsGetCustomer,

    -- ** cloudsearch.settings.searchapplications.create
    CloudSearchSettingsSearchapplicationsCreateResource,
    CloudSearchSettingsSearchapplicationsCreate (..),
    newCloudSearchSettingsSearchapplicationsCreate,

    -- ** cloudsearch.settings.searchapplications.delete
    CloudSearchSettingsSearchapplicationsDeleteResource,
    CloudSearchSettingsSearchapplicationsDelete (..),
    newCloudSearchSettingsSearchapplicationsDelete,

    -- ** cloudsearch.settings.searchapplications.get
    CloudSearchSettingsSearchapplicationsGetResource,
    CloudSearchSettingsSearchapplicationsGet (..),
    newCloudSearchSettingsSearchapplicationsGet,

    -- ** cloudsearch.settings.searchapplications.list
    CloudSearchSettingsSearchapplicationsListResource,
    CloudSearchSettingsSearchapplicationsList (..),
    newCloudSearchSettingsSearchapplicationsList,

    -- ** cloudsearch.settings.searchapplications.patch
    CloudSearchSettingsSearchapplicationsPatchResource,
    CloudSearchSettingsSearchapplicationsPatch (..),
    newCloudSearchSettingsSearchapplicationsPatch,

    -- ** cloudsearch.settings.searchapplications.reset
    CloudSearchSettingsSearchapplicationsResetResource,
    CloudSearchSettingsSearchapplicationsReset (..),
    newCloudSearchSettingsSearchapplicationsReset,

    -- ** cloudsearch.settings.searchapplications.update
    CloudSearchSettingsSearchapplicationsUpdateResource,
    CloudSearchSettingsSearchapplicationsUpdate (..),
    newCloudSearchSettingsSearchapplicationsUpdate,

    -- ** cloudsearch.settings.updateCustomer
    CloudSearchSettingsUpdateCustomerResource,
    CloudSearchSettingsUpdateCustomer (..),
    newCloudSearchSettingsUpdateCustomer,

    -- ** cloudsearch.stats.getIndex
    CloudSearchStatsGetIndexResource,
    CloudSearchStatsGetIndex (..),
    newCloudSearchStatsGetIndex,

    -- ** cloudsearch.stats.getQuery
    CloudSearchStatsGetQueryResource,
    CloudSearchStatsGetQuery (..),
    newCloudSearchStatsGetQuery,

    -- ** cloudsearch.stats.getSearchapplication
    CloudSearchStatsGetSearchapplicationResource,
    CloudSearchStatsGetSearchapplication (..),
    newCloudSearchStatsGetSearchapplication,

    -- ** cloudsearch.stats.getSession
    CloudSearchStatsGetSessionResource,
    CloudSearchStatsGetSession (..),
    newCloudSearchStatsGetSession,

    -- ** cloudsearch.stats.getUser
    CloudSearchStatsGetUserResource,
    CloudSearchStatsGetUser (..),
    newCloudSearchStatsGetUser,

    -- ** cloudsearch.stats.index.datasources.get
    CloudSearchStatsIndexDatasourcesGetResource,
    CloudSearchStatsIndexDatasourcesGet (..),
    newCloudSearchStatsIndexDatasourcesGet,

    -- ** cloudsearch.stats.query.searchapplications.get
    CloudSearchStatsQuerySearchapplicationsGetResource,
    CloudSearchStatsQuerySearchapplicationsGet (..),
    newCloudSearchStatsQuerySearchapplicationsGet,

    -- ** cloudsearch.stats.session.searchapplications.get
    CloudSearchStatsSessionSearchapplicationsGetResource,
    CloudSearchStatsSessionSearchapplicationsGet (..),
    newCloudSearchStatsSessionSearchapplicationsGet,

    -- ** cloudsearch.stats.user.searchapplications.get
    CloudSearchStatsUserSearchapplicationsGetResource,
    CloudSearchStatsUserSearchapplicationsGet (..),
    newCloudSearchStatsUserSearchapplicationsGet,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Action
    Action (..),
    newAction,

    -- ** AuditLoggingSettings
    AuditLoggingSettings (..),
    newAuditLoggingSettings,

    -- ** BackgroundColoredText
    BackgroundColoredText (..),
    newBackgroundColoredText,

    -- ** BackgroundColoredText_BackgroundColor
    BackgroundColoredText_BackgroundColor (..),

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

    -- ** Content
    Content (..),
    newContent,

    -- ** Context
    Context (..),
    newContext,

    -- ** Context_AppItem
    Context_AppItem (..),

    -- ** Context_SurfaceItem
    Context_SurfaceItem (..),

    -- ** Context_TypeItem
    Context_TypeItem (..),

    -- ** ContextAttribute
    ContextAttribute (..),
    newContextAttribute,

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

    -- ** DebugResponse
    DebugResponse (..),
    newDebugResponse,

    -- ** DeleteQueueItemsRequest
    DeleteQueueItemsRequest (..),
    newDeleteQueueItemsRequest,

    -- ** DisplayedProperty
    DisplayedProperty (..),
    newDisplayedProperty,

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

    -- ** EmailAddress
    EmailAddress (..),
    newEmailAddress,

    -- ** EnterpriseTopazFrontendTeamsLink
    EnterpriseTopazFrontendTeamsLink (..),
    newEnterpriseTopazFrontendTeamsLink,

    -- ** EnterpriseTopazFrontendTeamsPersonCorePhoneNumber
    EnterpriseTopazFrontendTeamsPersonCorePhoneNumber (..),
    newEnterpriseTopazFrontendTeamsPersonCorePhoneNumber,

    -- ** EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type
    EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type (..),

    -- ** EnterpriseTopazSidekickAgendaEntry
    EnterpriseTopazSidekickAgendaEntry (..),
    newEnterpriseTopazSidekickAgendaEntry,

    -- ** EnterpriseTopazSidekickAgendaEntry_Chronology
    EnterpriseTopazSidekickAgendaEntry_Chronology (..),

    -- ** EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus
    EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus (..),

    -- ** EnterpriseTopazSidekickAgendaGroupCardProto
    EnterpriseTopazSidekickAgendaGroupCardProto (..),
    newEnterpriseTopazSidekickAgendaGroupCardProto,

    -- ** EnterpriseTopazSidekickAgendaGroupCardProtoContext
    EnterpriseTopazSidekickAgendaGroupCardProtoContext (..),
    newEnterpriseTopazSidekickAgendaGroupCardProtoContext,

    -- ** EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict
    EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict (..),

    -- ** EnterpriseTopazSidekickAgendaItem
    EnterpriseTopazSidekickAgendaItem (..),
    newEnterpriseTopazSidekickAgendaItem,

    -- ** EnterpriseTopazSidekickAnswerAnswerList
    EnterpriseTopazSidekickAnswerAnswerList (..),
    newEnterpriseTopazSidekickAnswerAnswerList,

    -- ** EnterpriseTopazSidekickAnswerAnswerList_Type
    EnterpriseTopazSidekickAnswerAnswerList_Type (..),

    -- ** EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer
    EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer (..),
    newEnterpriseTopazSidekickAnswerAnswerListLabeledAnswer,

    -- ** EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard
    EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard (..),
    newEnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard,

    -- ** EnterpriseTopazSidekickAnswerSuggestedQueryCategory
    EnterpriseTopazSidekickAnswerSuggestedQueryCategory (..),
    newEnterpriseTopazSidekickAnswerSuggestedQueryCategory,

    -- ** EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category
    EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category (..),

    -- ** EnterpriseTopazSidekickAssistCardProto
    EnterpriseTopazSidekickAssistCardProto (..),
    newEnterpriseTopazSidekickAssistCardProto,

    -- ** EnterpriseTopazSidekickAssistCardProto_CardType
    EnterpriseTopazSidekickAssistCardProto_CardType (..),

    -- ** EnterpriseTopazSidekickCardMetadata
    EnterpriseTopazSidekickCardMetadata (..),
    newEnterpriseTopazSidekickCardMetadata,

    -- ** EnterpriseTopazSidekickCardMetadata_CardCategory
    EnterpriseTopazSidekickCardMetadata_CardCategory (..),

    -- ** EnterpriseTopazSidekickCardMetadata_Chronology
    EnterpriseTopazSidekickCardMetadata_Chronology (..),

    -- ** EnterpriseTopazSidekickCardMetadata_RenderMode
    EnterpriseTopazSidekickCardMetadata_RenderMode (..),

    -- ** EnterpriseTopazSidekickCommonDebugInfo
    EnterpriseTopazSidekickCommonDebugInfo (..),
    newEnterpriseTopazSidekickCommonDebugInfo,

    -- ** EnterpriseTopazSidekickCommonDocument
    EnterpriseTopazSidekickCommonDocument (..),
    newEnterpriseTopazSidekickCommonDocument,

    -- ** EnterpriseTopazSidekickCommonDocument_AccessType
    EnterpriseTopazSidekickCommonDocument_AccessType (..),

    -- ** EnterpriseTopazSidekickCommonDocument_Provenance
    EnterpriseTopazSidekickCommonDocument_Provenance (..),

    -- ** EnterpriseTopazSidekickCommonDocument_Reason
    EnterpriseTopazSidekickCommonDocument_Reason (..),

    -- ** EnterpriseTopazSidekickCommonDocument_Type
    EnterpriseTopazSidekickCommonDocument_Type (..),

    -- ** EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata
    EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata (..),
    newEnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata,

    -- ** EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
    EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope (..),

    -- ** EnterpriseTopazSidekickCommonDocumentJustification
    EnterpriseTopazSidekickCommonDocumentJustification (..),
    newEnterpriseTopazSidekickCommonDocumentJustification,

    -- ** EnterpriseTopazSidekickCommonDocumentJustification_Reason
    EnterpriseTopazSidekickCommonDocumentJustification_Reason (..),

    -- ** EnterpriseTopazSidekickCommonPerson
    EnterpriseTopazSidekickCommonPerson (..),
    newEnterpriseTopazSidekickCommonPerson,

    -- ** EnterpriseTopazSidekickCommonPersonBirthday
    EnterpriseTopazSidekickCommonPersonBirthday (..),
    newEnterpriseTopazSidekickCommonPersonBirthday,

    -- ** EnterpriseTopazSidekickConflictingEventsCardProto
    EnterpriseTopazSidekickConflictingEventsCardProto (..),
    newEnterpriseTopazSidekickConflictingEventsCardProto,

    -- ** EnterpriseTopazSidekickDocumentGroup
    EnterpriseTopazSidekickDocumentGroup (..),
    newEnterpriseTopazSidekickDocumentGroup,

    -- ** EnterpriseTopazSidekickDocumentGroup_GroupType
    EnterpriseTopazSidekickDocumentGroup_GroupType (..),

    -- ** EnterpriseTopazSidekickDocumentPerCategoryList
    EnterpriseTopazSidekickDocumentPerCategoryList (..),
    newEnterpriseTopazSidekickDocumentPerCategoryList,

    -- ** EnterpriseTopazSidekickDocumentPerCategoryList_ListType
    EnterpriseTopazSidekickDocumentPerCategoryList_ListType (..),

    -- ** EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry
    EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry (..),
    newEnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry,

    -- ** EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
    EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category (..),

    -- ** EnterpriseTopazSidekickFindMeetingTimeCardProto
    EnterpriseTopazSidekickFindMeetingTimeCardProto (..),
    newEnterpriseTopazSidekickFindMeetingTimeCardProto,

    -- ** EnterpriseTopazSidekickGap
    EnterpriseTopazSidekickGap (..),
    newEnterpriseTopazSidekickGap,

    -- ** EnterpriseTopazSidekickGenericAnswerCard
    EnterpriseTopazSidekickGenericAnswerCard (..),
    newEnterpriseTopazSidekickGenericAnswerCard,

    -- ** EnterpriseTopazSidekickGetAndKeepAheadCardProto
    EnterpriseTopazSidekickGetAndKeepAheadCardProto (..),
    newEnterpriseTopazSidekickGetAndKeepAheadCardProto,

    -- ** EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents
    EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents (..),
    newEnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents,

    -- ** EnterpriseTopazSidekickMeetingNotesCardError
    EnterpriseTopazSidekickMeetingNotesCardError (..),
    newEnterpriseTopazSidekickMeetingNotesCardError,

    -- ** EnterpriseTopazSidekickMeetingNotesCardError_Reason
    EnterpriseTopazSidekickMeetingNotesCardError_Reason (..),

    -- ** EnterpriseTopazSidekickMeetingNotesCardProto
    EnterpriseTopazSidekickMeetingNotesCardProto (..),
    newEnterpriseTopazSidekickMeetingNotesCardProto,

    -- ** EnterpriseTopazSidekickMeetingNotesCardRequest
    EnterpriseTopazSidekickMeetingNotesCardRequest (..),
    newEnterpriseTopazSidekickMeetingNotesCardRequest,

    -- ** EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem
    EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem (..),

    -- ** EnterpriseTopazSidekickNlpMetadata
    EnterpriseTopazSidekickNlpMetadata (..),
    newEnterpriseTopazSidekickNlpMetadata,

    -- ** EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo
    EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo (..),
    newEnterpriseTopazSidekickPeopleAnswerDisambiguationInfo,

    -- ** EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson
    EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson (..),
    newEnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson,

    -- ** EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader
    EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader (..),
    newEnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader,

    -- ** EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard
    EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard (..),
    newEnterpriseTopazSidekickPeopleAnswerPersonAnswerCard,

    -- ** EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus
    EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus (..),

    -- ** EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard
    EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard (..),
    newEnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard,

    -- ** EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType
    EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType (..),

    -- ** EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus
    EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus (..),

    -- ** EnterpriseTopazSidekickPeopleDisambiguationCard
    EnterpriseTopazSidekickPeopleDisambiguationCard (..),
    newEnterpriseTopazSidekickPeopleDisambiguationCard,

    -- ** EnterpriseTopazSidekickPerson
    EnterpriseTopazSidekickPerson (..),
    newEnterpriseTopazSidekickPerson,

    -- ** EnterpriseTopazSidekickPerson_AffinityLevel
    EnterpriseTopazSidekickPerson_AffinityLevel (..),

    -- ** EnterpriseTopazSidekickPerson_AttendingStatus
    EnterpriseTopazSidekickPerson_AttendingStatus (..),

    -- ** EnterpriseTopazSidekickPersonProfileCard
    EnterpriseTopazSidekickPersonProfileCard (..),
    newEnterpriseTopazSidekickPersonProfileCard,

    -- ** EnterpriseTopazSidekickPersonProfileCardRelatedPeople
    EnterpriseTopazSidekickPersonProfileCardRelatedPeople (..),
    newEnterpriseTopazSidekickPersonProfileCardRelatedPeople,

    -- ** EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation
    EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation (..),

    -- ** EnterpriseTopazSidekickPersonalizedDocsCardProto
    EnterpriseTopazSidekickPersonalizedDocsCardProto (..),
    newEnterpriseTopazSidekickPersonalizedDocsCardProto,

    -- ** EnterpriseTopazSidekickRankingParams
    EnterpriseTopazSidekickRankingParams (..),
    newEnterpriseTopazSidekickRankingParams,

    -- ** EnterpriseTopazSidekickRankingParams_Priority
    EnterpriseTopazSidekickRankingParams_Priority (..),

    -- ** EnterpriseTopazSidekickRankingParams_Type
    EnterpriseTopazSidekickRankingParams_Type (..),

    -- ** EnterpriseTopazSidekickRecentDocumentsCardProto
    EnterpriseTopazSidekickRecentDocumentsCardProto (..),
    newEnterpriseTopazSidekickRecentDocumentsCardProto,

    -- ** EnterpriseTopazSidekickScheduledMeeting
    EnterpriseTopazSidekickScheduledMeeting (..),
    newEnterpriseTopazSidekickScheduledMeeting,

    -- ** EnterpriseTopazSidekickShareMeetingDocsCardProto
    EnterpriseTopazSidekickShareMeetingDocsCardProto (..),
    newEnterpriseTopazSidekickShareMeetingDocsCardProto,

    -- ** EnterpriseTopazSidekickTimeSlot
    EnterpriseTopazSidekickTimeSlot (..),
    newEnterpriseTopazSidekickTimeSlot,

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

    -- ** HtmlOperatorOptions
    HtmlOperatorOptions (..),
    newHtmlOperatorOptions,

    -- ** HtmlPropertyOptions
    HtmlPropertyOptions (..),
    newHtmlPropertyOptions,

    -- ** HtmlValues
    HtmlValues (..),
    newHtmlValues,

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

    -- ** IntegerFacetingOptions
    IntegerFacetingOptions (..),
    newIntegerFacetingOptions,

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

    -- ** MapInfo
    MapInfo (..),
    newMapInfo,

    -- ** MapTile
    MapTile (..),
    newMapTile,

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

    -- ** PeoplePromotionCard
    PeoplePromotionCard (..),
    newPeoplePromotionCard,

    -- ** PeopleSuggestion
    PeopleSuggestion (..),
    newPeopleSuggestion,

    -- ** Person
    Person (..),
    newPerson,

    -- ** PersonCore
    PersonCore (..),
    newPersonCore,

    -- ** PersonCore_AvailabilityStatus
    PersonCore_AvailabilityStatus (..),

    -- ** PersonCore_Keywords
    PersonCore_Keywords (..),
    newPersonCore_Keywords,

    -- ** PhoneNumber
    PhoneNumber (..),
    newPhoneNumber,

    -- ** PhoneNumber_Type
    PhoneNumber_Type (..),

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

    -- ** QueryActivity
    QueryActivity (..),
    newQueryActivity,

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

    -- ** RemoveActivityRequest
    RemoveActivityRequest (..),
    newRemoveActivityRequest,

    -- ** RemoveActivityResponse
    RemoveActivityResponse (..),
    newRemoveActivityResponse,

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

    -- ** SafeHtmlProto
    SafeHtmlProto (..),
    newSafeHtmlProto,

    -- ** SafeUrlProto
    SafeUrlProto (..),
    newSafeUrlProto,

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

    -- ** SpellResult
    SpellResult (..),
    newSpellResult,

    -- ** SpellResult_SuggestionType
    SpellResult_SuggestionType (..),

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

    -- ** ThirdPartyGenericCard
    ThirdPartyGenericCard (..),
    newThirdPartyGenericCard,

    -- ** TimestampOperatorOptions
    TimestampOperatorOptions (..),
    newTimestampOperatorOptions,

    -- ** TimestampPropertyOptions
    TimestampPropertyOptions (..),
    newTimestampPropertyOptions,

    -- ** TimestampValues
    TimestampValues (..),
    newTimestampValues,

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

    -- ** UserActivity
    UserActivity (..),
    newUserActivity,

    -- ** VPCSettings
    VPCSettings (..),
    newVPCSettings,

    -- ** Value
    Value (..),
    newValue,

    -- ** ValueFilter
    ValueFilter (..),
    newValueFilter,

    -- ** DebugIdentitysourcesUnmappedidsListResolutionStatusCode
    DebugIdentitysourcesUnmappedidsListResolutionStatusCode (..),

    -- ** IndexingDatasourcesItemsDeleteMode
    IndexingDatasourcesItemsDeleteMode (..),
  )
where

import Gogol.CloudSearch.Debug.Datasources.Items.CheckAccess
import Gogol.CloudSearch.Debug.Datasources.Items.SearchByViewUrl
import Gogol.CloudSearch.Debug.Datasources.Items.Unmappedids.List
import Gogol.CloudSearch.Debug.Identitysources.Items.ListForunmappedidentity
import Gogol.CloudSearch.Debug.Identitysources.Unmappedids.List
import Gogol.CloudSearch.Indexing.Datasources.DeleteSchema
import Gogol.CloudSearch.Indexing.Datasources.GetSchema
import Gogol.CloudSearch.Indexing.Datasources.Items.Delete
import Gogol.CloudSearch.Indexing.Datasources.Items.DeleteQueueItems
import Gogol.CloudSearch.Indexing.Datasources.Items.Get
import Gogol.CloudSearch.Indexing.Datasources.Items.Index
import Gogol.CloudSearch.Indexing.Datasources.Items.List
import Gogol.CloudSearch.Indexing.Datasources.Items.Poll
import Gogol.CloudSearch.Indexing.Datasources.Items.Push
import Gogol.CloudSearch.Indexing.Datasources.Items.Unreserve
import Gogol.CloudSearch.Indexing.Datasources.Items.Upload
import Gogol.CloudSearch.Indexing.Datasources.UpdateSchema
import Gogol.CloudSearch.InitializeCustomer
import Gogol.CloudSearch.Media.Upload
import Gogol.CloudSearch.Operations.Get
import Gogol.CloudSearch.Operations.Lro.List
import Gogol.CloudSearch.Query.DebugSearch
import Gogol.CloudSearch.Query.RemoveActivity
import Gogol.CloudSearch.Query.Search
import Gogol.CloudSearch.Query.Sources.List
import Gogol.CloudSearch.Query.Suggest
import Gogol.CloudSearch.Settings.Datasources.Create
import Gogol.CloudSearch.Settings.Datasources.Delete
import Gogol.CloudSearch.Settings.Datasources.Get
import Gogol.CloudSearch.Settings.Datasources.List
import Gogol.CloudSearch.Settings.Datasources.Patch
import Gogol.CloudSearch.Settings.Datasources.Update
import Gogol.CloudSearch.Settings.GetCustomer
import Gogol.CloudSearch.Settings.Searchapplications.Create
import Gogol.CloudSearch.Settings.Searchapplications.Delete
import Gogol.CloudSearch.Settings.Searchapplications.Get
import Gogol.CloudSearch.Settings.Searchapplications.List
import Gogol.CloudSearch.Settings.Searchapplications.Patch
import Gogol.CloudSearch.Settings.Searchapplications.Reset
import Gogol.CloudSearch.Settings.Searchapplications.Update
import Gogol.CloudSearch.Settings.UpdateCustomer
import Gogol.CloudSearch.Stats.GetIndex
import Gogol.CloudSearch.Stats.GetQuery
import Gogol.CloudSearch.Stats.GetSearchapplication
import Gogol.CloudSearch.Stats.GetSession
import Gogol.CloudSearch.Stats.GetUser
import Gogol.CloudSearch.Stats.Index.Datasources.Get
import Gogol.CloudSearch.Stats.Query.Searchapplications.Get
import Gogol.CloudSearch.Stats.Session.Searchapplications.Get
import Gogol.CloudSearch.Stats.User.Searchapplications.Get
import Gogol.CloudSearch.Types
