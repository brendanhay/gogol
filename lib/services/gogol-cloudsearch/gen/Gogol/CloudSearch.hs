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
-- Module      : Gogol.CloudSearch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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

    -- ** AbuseReportingConfig
    AbuseReportingConfig (..),
    newAbuseReportingConfig,

    -- ** AckInfo
    AckInfo (..),
    newAckInfo,

    -- ** AclFixRequest
    AclFixRequest (..),
    newAclFixRequest,

    -- ** AclFixRequest_Role
    AclFixRequest_Role (..),

    -- ** AclFixStatus
    AclFixStatus (..),
    newAclFixStatus,

    -- ** AclFixStatus_Fixability
    AclFixStatus_Fixability (..),

    -- ** AclInfo
    AclInfo (..),
    newAclInfo,

    -- ** AclInfo_Scope
    AclInfo_Scope (..),

    -- ** ActionParameter
    ActionParameter (..),
    newActionParameter,

    -- ** AddonComposeUiActionMarkup
    AddonComposeUiActionMarkup (..),
    newAddonComposeUiActionMarkup,

    -- ** AddonComposeUiActionMarkup_Type
    AddonComposeUiActionMarkup_Type (..),

    -- ** AffectedMembership
    AffectedMembership (..),
    newAffectedMembership,

    -- ** AffectedMembership_PriorMembershipRole
    AffectedMembership_PriorMembershipRole (..),

    -- ** AffectedMembership_PriorMembershipState
    AffectedMembership_PriorMembershipState (..),

    -- ** AffectedMembership_TargetMembershipRole
    AffectedMembership_TargetMembershipRole (..),

    -- ** AllAuthenticatedUsersProto
    AllAuthenticatedUsersProto (..),
    newAllAuthenticatedUsersProto,

    -- ** Annotation
    Annotation (..),
    newAnnotation,

    -- ** Annotation_ChipRenderType
    Annotation_ChipRenderType (..),

    -- ** Annotation_InlineRenderFormat
    Annotation_InlineRenderFormat (..),

    -- ** Annotation_Type
    Annotation_Type (..),

    -- ** AppId
    AppId (..),
    newAppId,

    -- ** AppId_AppType
    AppId_AppType (..),

    -- ** AppId_GsuiteAppType
    AppId_GsuiteAppType (..),

    -- ** AppsDynamiteSharedActivityFeedAnnotationData
    AppsDynamiteSharedActivityFeedAnnotationData (..),
    newAppsDynamiteSharedActivityFeedAnnotationData,

    -- ** AppsDynamiteSharedActivityFeedAnnotationDataUserInfo
    AppsDynamiteSharedActivityFeedAnnotationDataUserInfo (..),
    newAppsDynamiteSharedActivityFeedAnnotationDataUserInfo,

    -- ** AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType
    AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType (..),

    -- ** AppsDynamiteSharedAppProfile
    AppsDynamiteSharedAppProfile (..),
    newAppsDynamiteSharedAppProfile,

    -- ** AppsDynamiteSharedAssistantAnnotationData
    AppsDynamiteSharedAssistantAnnotationData (..),
    newAppsDynamiteSharedAssistantAnnotationData,

    -- ** AppsDynamiteSharedAssistantDebugContext
    AppsDynamiteSharedAssistantDebugContext (..),
    newAppsDynamiteSharedAssistantDebugContext,

    -- ** AppsDynamiteSharedAssistantFeedbackContext
    AppsDynamiteSharedAssistantFeedbackContext (..),
    newAppsDynamiteSharedAssistantFeedbackContext,

    -- ** AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback
    AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback (..),

    -- ** AppsDynamiteSharedAssistantFeedbackContextFeedbackChip
    AppsDynamiteSharedAssistantFeedbackContextFeedbackChip (..),
    newAppsDynamiteSharedAssistantFeedbackContextFeedbackChip,

    -- ** AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
    AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType (..),

    -- ** AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State
    AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State (..),

    -- ** AppsDynamiteSharedAssistantSessionContext
    AppsDynamiteSharedAssistantSessionContext (..),
    newAppsDynamiteSharedAssistantSessionContext,

    -- ** AppsDynamiteSharedAssistantSuggestion
    AppsDynamiteSharedAssistantSuggestion (..),
    newAppsDynamiteSharedAssistantSuggestion,

    -- ** AppsDynamiteSharedAssistantUnfulfillableRequest
    AppsDynamiteSharedAssistantUnfulfillableRequest (..),
    newAppsDynamiteSharedAssistantUnfulfillableRequest,

    -- ** AppsDynamiteSharedAvatarInfo
    AppsDynamiteSharedAvatarInfo (..),
    newAppsDynamiteSharedAvatarInfo,

    -- ** AppsDynamiteSharedBackendUploadMetadata
    AppsDynamiteSharedBackendUploadMetadata (..),
    newAppsDynamiteSharedBackendUploadMetadata,

    -- ** AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
    AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome (..),

    -- ** AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
    AppsDynamiteSharedBackendUploadMetadata_VirusScanResult (..),

    -- ** AppsDynamiteSharedCalendarEventAnnotationData
    AppsDynamiteSharedCalendarEventAnnotationData (..),
    newAppsDynamiteSharedCalendarEventAnnotationData,

    -- ** AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent
    AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent (..),
    newAppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent,

    -- ** AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime
    AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime (..),
    newAppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime,

    -- ** AppsDynamiteSharedCalendarEventAnnotationDataEventCreation
    AppsDynamiteSharedCalendarEventAnnotationDataEventCreation (..),
    newAppsDynamiteSharedCalendarEventAnnotationDataEventCreation,

    -- ** AppsDynamiteSharedCallAnnotationData
    AppsDynamiteSharedCallAnnotationData (..),
    newAppsDynamiteSharedCallAnnotationData,

    -- ** AppsDynamiteSharedCallAnnotationData_CallStatus
    AppsDynamiteSharedCallAnnotationData_CallStatus (..),

    -- ** AppsDynamiteSharedCallMetadata
    AppsDynamiteSharedCallMetadata (..),
    newAppsDynamiteSharedCallMetadata,

    -- ** AppsDynamiteSharedCardClickSuggestion
    AppsDynamiteSharedCardClickSuggestion (..),
    newAppsDynamiteSharedCardClickSuggestion,

    -- ** AppsDynamiteSharedChatItem
    AppsDynamiteSharedChatItem (..),
    newAppsDynamiteSharedChatItem,

    -- ** AppsDynamiteSharedChatItemActivityInfo
    AppsDynamiteSharedChatItemActivityInfo (..),
    newAppsDynamiteSharedChatItemActivityInfo,

    -- ** AppsDynamiteSharedChatItemActivityInfoFeedItemNudge
    AppsDynamiteSharedChatItemActivityInfoFeedItemNudge (..),
    newAppsDynamiteSharedChatItemActivityInfoFeedItemNudge,

    -- ** AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType
    AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType (..),

    -- ** AppsDynamiteSharedChatItemActivityInfoFeedItemReactions
    AppsDynamiteSharedChatItemActivityInfoFeedItemReactions (..),
    newAppsDynamiteSharedChatItemActivityInfoFeedItemReactions,

    -- ** AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply
    AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply (..),
    newAppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply,

    -- ** AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType
    AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType (..),

    -- ** AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention
    AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention (..),
    newAppsDynamiteSharedChatItemActivityInfoFeedItemUserMention,

    -- ** AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type
    AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type (..),

    -- ** AppsDynamiteSharedChatItemGroupInfo
    AppsDynamiteSharedChatItemGroupInfo (..),
    newAppsDynamiteSharedChatItemGroupInfo,

    -- ** AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
    AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType (..),

    -- ** AppsDynamiteSharedContentReportType
    AppsDynamiteSharedContentReportType (..),
    newAppsDynamiteSharedContentReportType,

    -- ** AppsDynamiteSharedContentReportType_SystemViolation
    AppsDynamiteSharedContentReportType_SystemViolation (..),

    -- ** AppsDynamiteSharedCustomEmoji
    AppsDynamiteSharedCustomEmoji (..),
    newAppsDynamiteSharedCustomEmoji,

    -- ** AppsDynamiteSharedCustomEmoji_State
    AppsDynamiteSharedCustomEmoji_State (..),

    -- ** AppsDynamiteSharedDimension
    AppsDynamiteSharedDimension (..),
    newAppsDynamiteSharedDimension,

    -- ** AppsDynamiteSharedDlpMetricsMetadata
    AppsDynamiteSharedDlpMetricsMetadata (..),
    newAppsDynamiteSharedDlpMetricsMetadata,

    -- ** AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
    AppsDynamiteSharedDlpMetricsMetadata_DlpStatus (..),

    -- ** AppsDynamiteSharedDocument
    AppsDynamiteSharedDocument (..),
    newAppsDynamiteSharedDocument,

    -- ** AppsDynamiteSharedEmoji
    AppsDynamiteSharedEmoji (..),
    newAppsDynamiteSharedEmoji,

    -- ** AppsDynamiteSharedFindDocumentSuggestion
    AppsDynamiteSharedFindDocumentSuggestion (..),
    newAppsDynamiteSharedFindDocumentSuggestion,

    -- ** AppsDynamiteSharedGroupDetails
    AppsDynamiteSharedGroupDetails (..),
    newAppsDynamiteSharedGroupDetails,

    -- ** AppsDynamiteSharedGroupVisibility
    AppsDynamiteSharedGroupVisibility (..),
    newAppsDynamiteSharedGroupVisibility,

    -- ** AppsDynamiteSharedGroupVisibility_State
    AppsDynamiteSharedGroupVisibility_State (..),

    -- ** AppsDynamiteSharedJustification
    AppsDynamiteSharedJustification (..),
    newAppsDynamiteSharedJustification,

    -- ** AppsDynamiteSharedJustification_ActionType
    AppsDynamiteSharedJustification_ActionType (..),

    -- ** AppsDynamiteSharedJustificationPerson
    AppsDynamiteSharedJustificationPerson (..),
    newAppsDynamiteSharedJustificationPerson,

    -- ** AppsDynamiteSharedMeetMetadata
    AppsDynamiteSharedMeetMetadata (..),
    newAppsDynamiteSharedMeetMetadata,

    -- ** AppsDynamiteSharedMessageComponentSearchInfo
    AppsDynamiteSharedMessageComponentSearchInfo (..),
    newAppsDynamiteSharedMessageComponentSearchInfo,

    -- ** AppsDynamiteSharedMessageInfo
    AppsDynamiteSharedMessageInfo (..),
    newAppsDynamiteSharedMessageInfo,

    -- ** AppsDynamiteSharedMessageInfo_MessageType
    AppsDynamiteSharedMessageInfo_MessageType (..),

    -- ** AppsDynamiteSharedMessageIntegrationPayload
    AppsDynamiteSharedMessageIntegrationPayload (..),
    newAppsDynamiteSharedMessageIntegrationPayload,

    -- ** AppsDynamiteSharedMessageIntegrationPayload_Type
    AppsDynamiteSharedMessageIntegrationPayload_Type (..),

    -- ** AppsDynamiteSharedOrganizationInfo
    AppsDynamiteSharedOrganizationInfo (..),
    newAppsDynamiteSharedOrganizationInfo,

    -- ** AppsDynamiteSharedOrganizationInfoConsumerInfo
    AppsDynamiteSharedOrganizationInfoConsumerInfo (..),
    newAppsDynamiteSharedOrganizationInfoConsumerInfo,

    -- ** AppsDynamiteSharedOrganizationInfoCustomerInfo
    AppsDynamiteSharedOrganizationInfoCustomerInfo (..),
    newAppsDynamiteSharedOrganizationInfoCustomerInfo,

    -- ** AppsDynamiteSharedOriginAppSuggestion
    AppsDynamiteSharedOriginAppSuggestion (..),
    newAppsDynamiteSharedOriginAppSuggestion,

    -- ** AppsDynamiteSharedPhoneNumber
    AppsDynamiteSharedPhoneNumber (..),
    newAppsDynamiteSharedPhoneNumber,

    -- ** AppsDynamiteSharedReaction
    AppsDynamiteSharedReaction (..),
    newAppsDynamiteSharedReaction,

    -- ** AppsDynamiteSharedRetentionSettings
    AppsDynamiteSharedRetentionSettings (..),
    newAppsDynamiteSharedRetentionSettings,

    -- ** AppsDynamiteSharedRetentionSettings_State
    AppsDynamiteSharedRetentionSettings_State (..),

    -- ** AppsDynamiteSharedSegmentedMembershipCount
    AppsDynamiteSharedSegmentedMembershipCount (..),
    newAppsDynamiteSharedSegmentedMembershipCount,

    -- ** AppsDynamiteSharedSegmentedMembershipCount_MemberType
    AppsDynamiteSharedSegmentedMembershipCount_MemberType (..),

    -- ** AppsDynamiteSharedSegmentedMembershipCount_MembershipState
    AppsDynamiteSharedSegmentedMembershipCount_MembershipState (..),

    -- ** AppsDynamiteSharedSegmentedMembershipCounts
    AppsDynamiteSharedSegmentedMembershipCounts (..),
    newAppsDynamiteSharedSegmentedMembershipCounts,

    -- ** AppsDynamiteSharedSpaceInfo
    AppsDynamiteSharedSpaceInfo (..),
    newAppsDynamiteSharedSpaceInfo,

    -- ** AppsDynamiteSharedSpaceInfo_UserMembershipState
    AppsDynamiteSharedSpaceInfo_UserMembershipState (..),

    -- ** AppsDynamiteSharedTasksAnnotationData
    AppsDynamiteSharedTasksAnnotationData (..),
    newAppsDynamiteSharedTasksAnnotationData,

    -- ** AppsDynamiteSharedTasksAnnotationDataAssigneeChange
    AppsDynamiteSharedTasksAnnotationDataAssigneeChange (..),
    newAppsDynamiteSharedTasksAnnotationDataAssigneeChange,

    -- ** AppsDynamiteSharedTasksAnnotationDataCompletionChange
    AppsDynamiteSharedTasksAnnotationDataCompletionChange (..),
    newAppsDynamiteSharedTasksAnnotationDataCompletionChange,

    -- ** AppsDynamiteSharedTasksAnnotationDataCreation
    AppsDynamiteSharedTasksAnnotationDataCreation (..),
    newAppsDynamiteSharedTasksAnnotationDataCreation,

    -- ** AppsDynamiteSharedTasksAnnotationDataDeletionChange
    AppsDynamiteSharedTasksAnnotationDataDeletionChange (..),
    newAppsDynamiteSharedTasksAnnotationDataDeletionChange,

    -- ** AppsDynamiteSharedTasksAnnotationDataTaskProperties
    AppsDynamiteSharedTasksAnnotationDataTaskProperties (..),
    newAppsDynamiteSharedTasksAnnotationDataTaskProperties,

    -- ** AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage
    AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage (..),
    newAppsDynamiteSharedTasksAnnotationDataUserDefinedMessage,

    -- ** AppsDynamiteSharedTasksMessageIntegrationPayload
    AppsDynamiteSharedTasksMessageIntegrationPayload (..),
    newAppsDynamiteSharedTasksMessageIntegrationPayload,

    -- ** AppsDynamiteSharedTextSegment
    AppsDynamiteSharedTextSegment (..),
    newAppsDynamiteSharedTextSegment,

    -- ** AppsDynamiteSharedTextSegmentsWithDescription
    AppsDynamiteSharedTextSegmentsWithDescription (..),
    newAppsDynamiteSharedTextSegmentsWithDescription,

    -- ** AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType
    AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType (..),

    -- ** AppsDynamiteSharedTextWithDescription
    AppsDynamiteSharedTextWithDescription (..),
    newAppsDynamiteSharedTextWithDescription,

    -- ** AppsDynamiteSharedUserBlockRelationship
    AppsDynamiteSharedUserBlockRelationship (..),
    newAppsDynamiteSharedUserBlockRelationship,

    -- ** AppsDynamiteSharedVideoReference
    AppsDynamiteSharedVideoReference (..),
    newAppsDynamiteSharedVideoReference,

    -- ** AppsDynamiteSharedVideoReference_Status
    AppsDynamiteSharedVideoReference_Status (..),

    -- ** AppsDynamiteStorageAction
    AppsDynamiteStorageAction (..),
    newAppsDynamiteStorageAction,

    -- ** AppsDynamiteStorageAction_Interaction
    AppsDynamiteStorageAction_Interaction (..),

    -- ** AppsDynamiteStorageAction_LoadIndicator
    AppsDynamiteStorageAction_LoadIndicator (..),

    -- ** AppsDynamiteStorageActionActionParameter
    AppsDynamiteStorageActionActionParameter (..),
    newAppsDynamiteStorageActionActionParameter,

    -- ** AppsDynamiteStorageBorderStyle
    AppsDynamiteStorageBorderStyle (..),
    newAppsDynamiteStorageBorderStyle,

    -- ** AppsDynamiteStorageBorderStyle_Type
    AppsDynamiteStorageBorderStyle_Type (..),

    -- ** AppsDynamiteStorageButton
    AppsDynamiteStorageButton (..),
    newAppsDynamiteStorageButton,

    -- ** AppsDynamiteStorageButtonList
    AppsDynamiteStorageButtonList (..),
    newAppsDynamiteStorageButtonList,

    -- ** AppsDynamiteStorageCard
    AppsDynamiteStorageCard (..),
    newAppsDynamiteStorageCard,

    -- ** AppsDynamiteStorageCardCardAction
    AppsDynamiteStorageCardCardAction (..),
    newAppsDynamiteStorageCardCardAction,

    -- ** AppsDynamiteStorageCardCardHeader
    AppsDynamiteStorageCardCardHeader (..),
    newAppsDynamiteStorageCardCardHeader,

    -- ** AppsDynamiteStorageCardCardHeader_ImageType
    AppsDynamiteStorageCardCardHeader_ImageType (..),

    -- ** AppsDynamiteStorageCardSection
    AppsDynamiteStorageCardSection (..),
    newAppsDynamiteStorageCardSection,

    -- ** AppsDynamiteStorageColumns
    AppsDynamiteStorageColumns (..),
    newAppsDynamiteStorageColumns,

    -- ** AppsDynamiteStorageColumns_WrapStyle
    AppsDynamiteStorageColumns_WrapStyle (..),

    -- ** AppsDynamiteStorageColumnsColumn
    AppsDynamiteStorageColumnsColumn (..),
    newAppsDynamiteStorageColumnsColumn,

    -- ** AppsDynamiteStorageColumnsColumn_HorizontalAlignment
    AppsDynamiteStorageColumnsColumn_HorizontalAlignment (..),

    -- ** AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle
    AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle (..),

    -- ** AppsDynamiteStorageColumnsColumn_VerticalAlignment
    AppsDynamiteStorageColumnsColumn_VerticalAlignment (..),

    -- ** AppsDynamiteStorageColumnsColumnWidgets
    AppsDynamiteStorageColumnsColumnWidgets (..),
    newAppsDynamiteStorageColumnsColumnWidgets,

    -- ** AppsDynamiteStorageDateTimePicker
    AppsDynamiteStorageDateTimePicker (..),
    newAppsDynamiteStorageDateTimePicker,

    -- ** AppsDynamiteStorageDateTimePicker_Type
    AppsDynamiteStorageDateTimePicker_Type (..),

    -- ** AppsDynamiteStorageDecoratedText
    AppsDynamiteStorageDecoratedText (..),
    newAppsDynamiteStorageDecoratedText,

    -- ** AppsDynamiteStorageDecoratedTextSwitchControl
    AppsDynamiteStorageDecoratedTextSwitchControl (..),
    newAppsDynamiteStorageDecoratedTextSwitchControl,

    -- ** AppsDynamiteStorageDecoratedTextSwitchControl_ControlType
    AppsDynamiteStorageDecoratedTextSwitchControl_ControlType (..),

    -- ** AppsDynamiteStorageDivider
    AppsDynamiteStorageDivider (..),
    newAppsDynamiteStorageDivider,

    -- ** AppsDynamiteStorageGrid
    AppsDynamiteStorageGrid (..),
    newAppsDynamiteStorageGrid,

    -- ** AppsDynamiteStorageGridGridItem
    AppsDynamiteStorageGridGridItem (..),
    newAppsDynamiteStorageGridGridItem,

    -- ** AppsDynamiteStorageGridGridItem_Layout
    AppsDynamiteStorageGridGridItem_Layout (..),

    -- ** AppsDynamiteStorageGridGridItem_TextAlignment
    AppsDynamiteStorageGridGridItem_TextAlignment (..),

    -- ** AppsDynamiteStorageIcon
    AppsDynamiteStorageIcon (..),
    newAppsDynamiteStorageIcon,

    -- ** AppsDynamiteStorageIcon_ImageType
    AppsDynamiteStorageIcon_ImageType (..),

    -- ** AppsDynamiteStorageImage
    AppsDynamiteStorageImage (..),
    newAppsDynamiteStorageImage,

    -- ** AppsDynamiteStorageImageComponent
    AppsDynamiteStorageImageComponent (..),
    newAppsDynamiteStorageImageComponent,

    -- ** AppsDynamiteStorageImageCropStyle
    AppsDynamiteStorageImageCropStyle (..),
    newAppsDynamiteStorageImageCropStyle,

    -- ** AppsDynamiteStorageImageCropStyle_Type
    AppsDynamiteStorageImageCropStyle_Type (..),

    -- ** AppsDynamiteStorageMaterialIcon
    AppsDynamiteStorageMaterialIcon (..),
    newAppsDynamiteStorageMaterialIcon,

    -- ** AppsDynamiteStorageOnClick
    AppsDynamiteStorageOnClick (..),
    newAppsDynamiteStorageOnClick,

    -- ** AppsDynamiteStorageOpenLink
    AppsDynamiteStorageOpenLink (..),
    newAppsDynamiteStorageOpenLink,

    -- ** AppsDynamiteStorageOpenLink_OnClose
    AppsDynamiteStorageOpenLink_OnClose (..),

    -- ** AppsDynamiteStorageOpenLink_OpenAs
    AppsDynamiteStorageOpenLink_OpenAs (..),

    -- ** AppsDynamiteStorageOpenLinkAppUri
    AppsDynamiteStorageOpenLinkAppUri (..),
    newAppsDynamiteStorageOpenLinkAppUri,

    -- ** AppsDynamiteStorageOpenLinkAppUriIntent
    AppsDynamiteStorageOpenLinkAppUriIntent (..),
    newAppsDynamiteStorageOpenLinkAppUriIntent,

    -- ** AppsDynamiteStorageOpenLinkAppUriIntentExtraData
    AppsDynamiteStorageOpenLinkAppUriIntentExtraData (..),
    newAppsDynamiteStorageOpenLinkAppUriIntentExtraData,

    -- ** AppsDynamiteStorageSelectionInput
    AppsDynamiteStorageSelectionInput (..),
    newAppsDynamiteStorageSelectionInput,

    -- ** AppsDynamiteStorageSelectionInput_Type
    AppsDynamiteStorageSelectionInput_Type (..),

    -- ** AppsDynamiteStorageSelectionInputSelectionItem
    AppsDynamiteStorageSelectionInputSelectionItem (..),
    newAppsDynamiteStorageSelectionInputSelectionItem,

    -- ** AppsDynamiteStorageSuggestions
    AppsDynamiteStorageSuggestions (..),
    newAppsDynamiteStorageSuggestions,

    -- ** AppsDynamiteStorageSuggestionsSuggestionItem
    AppsDynamiteStorageSuggestionsSuggestionItem (..),
    newAppsDynamiteStorageSuggestionsSuggestionItem,

    -- ** AppsDynamiteStorageTextInput
    AppsDynamiteStorageTextInput (..),
    newAppsDynamiteStorageTextInput,

    -- ** AppsDynamiteStorageTextInput_Type
    AppsDynamiteStorageTextInput_Type (..),

    -- ** AppsDynamiteStorageTextParagraph
    AppsDynamiteStorageTextParagraph (..),
    newAppsDynamiteStorageTextParagraph,

    -- ** AppsDynamiteStorageWidget
    AppsDynamiteStorageWidget (..),
    newAppsDynamiteStorageWidget,

    -- ** AppsDynamiteStorageWidget_HorizontalAlignment
    AppsDynamiteStorageWidget_HorizontalAlignment (..),

    -- ** AppsDynamiteV1ApiCompatV1Action
    AppsDynamiteV1ApiCompatV1Action (..),
    newAppsDynamiteV1ApiCompatV1Action,

    -- ** AppsDynamiteV1ApiCompatV1ActionConfirm
    AppsDynamiteV1ApiCompatV1ActionConfirm (..),
    newAppsDynamiteV1ApiCompatV1ActionConfirm,

    -- ** AppsDynamiteV1ApiCompatV1Attachment
    AppsDynamiteV1ApiCompatV1Attachment (..),
    newAppsDynamiteV1ApiCompatV1Attachment,

    -- ** AppsDynamiteV1ApiCompatV1Field
    AppsDynamiteV1ApiCompatV1Field (..),
    newAppsDynamiteV1ApiCompatV1Field,

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup
    AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup (..),
    newAppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup,

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment
    AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment (..),
    newAppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment,

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup (..),
    newAppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup,

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup (..),
    newAppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup,

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem (..),

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type (..),

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError (..),
    newAppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError,

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type (..),

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter (..),
    newAppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter,

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup
    AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup (..),
    newAppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup,

    -- ** AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup
    AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup (..),
    newAppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup,

    -- ** Attachment
    Attachment (..),
    newAttachment,

    -- ** Attribute
    Attribute (..),
    newAttribute,

    -- ** AttributeRemoved
    AttributeRemoved (..),
    newAttributeRemoved,

    -- ** AttributeSet
    AttributeSet (..),
    newAttributeSet,

    -- ** Attributes
    Attributes (..),
    newAttributes,

    -- ** AuditLoggingSettings
    AuditLoggingSettings (..),
    newAuditLoggingSettings,

    -- ** AuthorizedItemId
    AuthorizedItemId (..),
    newAuthorizedItemId,

    -- ** AutoComplete
    AutoComplete (..),
    newAutoComplete,

    -- ** AutoCompleteItem
    AutoCompleteItem (..),
    newAutoCompleteItem,

    -- ** BabelMessageProps
    BabelMessageProps (..),
    newBabelMessageProps,

    -- ** BabelPlaceholderMetadata
    BabelPlaceholderMetadata (..),
    newBabelPlaceholderMetadata,

    -- ** BooleanOperatorOptions
    BooleanOperatorOptions (..),
    newBooleanOperatorOptions,

    -- ** BooleanPropertyOptions
    BooleanPropertyOptions (..),
    newBooleanPropertyOptions,

    -- ** BorderStyle
    BorderStyle (..),
    newBorderStyle,

    -- ** BorderStyle_Type
    BorderStyle_Type (..),

    -- ** BotInfo
    BotInfo (..),
    newBotInfo,

    -- ** BotInfo_AppAllowlistStatus
    BotInfo_AppAllowlistStatus (..),

    -- ** BotInfo_Status
    BotInfo_Status (..),

    -- ** BotInfo_SupportedUsesItem
    BotInfo_SupportedUsesItem (..),

    -- ** BotResponse
    BotResponse (..),
    newBotResponse,

    -- ** BotResponse_RequiredAction
    BotResponse_RequiredAction (..),

    -- ** BotResponse_ResponseType
    BotResponse_ResponseType (..),

    -- ** BroadcastAccess
    BroadcastAccess (..),
    newBroadcastAccess,

    -- ** BroadcastAccess_AccessPolicy
    BroadcastAccess_AccessPolicy (..),

    -- ** BroadcastSessionInfo
    BroadcastSessionInfo (..),
    newBroadcastSessionInfo,

    -- ** BroadcastStats
    BroadcastStats (..),
    newBroadcastStats,

    -- ** Button
    Button (..),
    newButton,

    -- ** CalendarClientActionMarkup
    CalendarClientActionMarkup (..),
    newCalendarClientActionMarkup,

    -- ** CallInfo
    CallInfo (..),
    newCallInfo,

    -- ** CallInfo_AvailableAccessTypesItem
    CallInfo_AvailableAccessTypesItem (..),

    -- ** CallSettings
    CallSettings (..),
    newCallSettings,

    -- ** CallSettings_AccessType
    CallSettings_AccessType (..),

    -- ** CapTokenHolderProto
    CapTokenHolderProto (..),
    newCapTokenHolderProto,

    -- ** Card
    Card (..),
    newCard,

    -- ** Card_DisplayStyle
    Card_DisplayStyle (..),

    -- ** CardAction
    CardAction (..),
    newCardAction,

    -- ** CardCapabilityMetadata
    CardCapabilityMetadata (..),
    newCardCapabilityMetadata,

    -- ** CardCapabilityMetadata_RequiredCapabilitiesItem
    CardCapabilityMetadata_RequiredCapabilitiesItem (..),

    -- ** CardHeader
    CardHeader (..),
    newCardHeader,

    -- ** CardHeader_ImageStyle
    CardHeader_ImageStyle (..),

    -- ** CaribouAttributeValue
    CaribouAttributeValue (..),
    newCaribouAttributeValue,

    -- ** ChatClientActionMarkup
    ChatClientActionMarkup (..),
    newChatClientActionMarkup,

    -- ** ChatConserverDynamitePlaceholderMetadata
    ChatConserverDynamitePlaceholderMetadata (..),
    newChatConserverDynamitePlaceholderMetadata,

    -- ** ChatConserverDynamitePlaceholderMetadataAttachmentMetadata
    ChatConserverDynamitePlaceholderMetadataAttachmentMetadata (..),
    newChatConserverDynamitePlaceholderMetadataAttachmentMetadata,

    -- ** ChatConserverDynamitePlaceholderMetadataBotMessageMetadata
    ChatConserverDynamitePlaceholderMetadataBotMessageMetadata (..),
    newChatConserverDynamitePlaceholderMetadataBotMessageMetadata,

    -- ** ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata
    ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata (..),
    newChatConserverDynamitePlaceholderMetadataCalendarEventMetadata,

    -- ** ChatConserverDynamitePlaceholderMetadataDeleteMetadata
    ChatConserverDynamitePlaceholderMetadataDeleteMetadata (..),
    newChatConserverDynamitePlaceholderMetadataDeleteMetadata,

    -- ** ChatConserverDynamitePlaceholderMetadataEditMetadata
    ChatConserverDynamitePlaceholderMetadataEditMetadata (..),
    newChatConserverDynamitePlaceholderMetadataEditMetadata,

    -- ** ChatConserverDynamitePlaceholderMetadataTasksMetadata
    ChatConserverDynamitePlaceholderMetadataTasksMetadata (..),
    newChatConserverDynamitePlaceholderMetadataTasksMetadata,

    -- ** ChatConserverDynamitePlaceholderMetadataVideoCallMetadata
    ChatConserverDynamitePlaceholderMetadataVideoCallMetadata (..),
    newChatConserverDynamitePlaceholderMetadataVideoCallMetadata,

    -- ** ChatConserverMessageContent
    ChatConserverMessageContent (..),
    newChatConserverMessageContent,

    -- ** ChatContentExtension
    ChatContentExtension (..),
    newChatContentExtension,

    -- ** ChatContentExtension_EventOtrStatus
    ChatContentExtension_EventOtrStatus (..),

    -- ** ChatProto
    ChatProto (..),
    newChatProto,

    -- ** CheckAccessResponse
    CheckAccessResponse (..),
    newCheckAccessResponse,

    -- ** CircleProto
    CircleProto (..),
    newCircleProto,

    -- ** ClientContext
    ClientContext (..),
    newClientContext,

    -- ** CloudPrincipalProto
    CloudPrincipalProto (..),
    newCloudPrincipalProto,

    -- ** ClusterInfo
    ClusterInfo (..),
    newClusterInfo,

    -- ** CoActivity
    CoActivity (..),
    newCoActivity,

    -- ** CoActivity_CoActivityApp
    CoActivity_CoActivityApp (..),

    -- ** Collaboration
    Collaboration (..),
    newCollaboration,

    -- ** Color
    Color (..),
    newColor,

    -- ** CommunalLabelTag
    CommunalLabelTag (..),
    newCommunalLabelTag,

    -- ** CompositeFilter
    CompositeFilter (..),
    newCompositeFilter,

    -- ** CompositeFilter_LogicOperator
    CompositeFilter_LogicOperator (..),

    -- ** ConsentedAppUnfurlMetadata
    ConsentedAppUnfurlMetadata (..),
    newConsentedAppUnfurlMetadata,

    -- ** ContactGroupProto
    ContactGroupProto (..),
    newContactGroupProto,

    -- ** ContentReport
    ContentReport (..),
    newContentReport,

    -- ** ContentReportJustification
    ContentReportJustification (..),
    newContentReportJustification,

    -- ** ContentReportSummary
    ContentReportSummary (..),
    newContentReportSummary,

    -- ** ContextAttribute
    ContextAttribute (..),
    newContextAttribute,

    -- ** ContextualAddOnMarkup
    ContextualAddOnMarkup (..),
    newContextualAddOnMarkup,

    -- ** CseInfo
    CseInfo (..),
    newCseInfo,

    -- ** CustomEmojiMetadata
    CustomEmojiMetadata (..),
    newCustomEmojiMetadata,

    -- ** CustomFunctionReturnValueMarkup
    CustomFunctionReturnValueMarkup (..),
    newCustomFunctionReturnValueMarkup,

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

    -- ** DataLossPreventionMetadata
    DataLossPreventionMetadata (..),
    newDataLossPreventionMetadata,

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

    -- ** DateTimePicker
    DateTimePicker (..),
    newDateTimePicker,

    -- ** DateTimePicker_Type
    DateTimePicker_Type (..),

    -- ** DateValues
    DateValues (..),
    newDateValues,

    -- ** DebugOptions
    DebugOptions (..),
    newDebugOptions,

    -- ** DeepLinkData
    DeepLinkData (..),
    newDeepLinkData,

    -- ** DeleteMetadata
    DeleteMetadata (..),
    newDeleteMetadata,

    -- ** DeleteQueueItemsRequest
    DeleteQueueItemsRequest (..),
    newDeleteQueueItemsRequest,

    -- ** DeliveryMedium
    DeliveryMedium (..),
    newDeliveryMedium,

    -- ** DeliveryMedium_MediumType
    DeliveryMedium_MediumType (..),

    -- ** DisplayedProperty
    DisplayedProperty (..),
    newDisplayedProperty,

    -- ** Divider
    Divider (..),
    newDivider,

    -- ** DlpAction
    DlpAction (..),
    newDlpAction,

    -- ** DlpAction_ActionType
    DlpAction_ActionType (..),

    -- ** DlpScanSummary
    DlpScanSummary (..),
    newDlpScanSummary,

    -- ** DlpScanSummary_ScanOutcome
    DlpScanSummary_ScanOutcome (..),

    -- ** DmId
    DmId (..),
    newDmId,

    -- ** DocumentInfo
    DocumentInfo (..),
    newDocumentInfo,

    -- ** DoubleOperatorOptions
    DoubleOperatorOptions (..),
    newDoubleOperatorOptions,

    -- ** DoublePropertyOptions
    DoublePropertyOptions (..),
    newDoublePropertyOptions,

    -- ** DoubleValues
    DoubleValues (..),
    newDoubleValues,

    -- ** DriveClientActionMarkup
    DriveClientActionMarkup (..),
    newDriveClientActionMarkup,

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

    -- ** DriveMetadata
    DriveMetadata (..),
    newDriveMetadata,

    -- ** DriveMetadata_DriveAction
    DriveMetadata_DriveAction (..),

    -- ** DriveMetadata_DriveState
    DriveMetadata_DriveState (..),

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

    -- ** DynamiteMessagesScoringInfo
    DynamiteMessagesScoringInfo (..),
    newDynamiteMessagesScoringInfo,

    -- ** DynamiteSpacesScoringInfo
    DynamiteSpacesScoringInfo (..),
    newDynamiteSpacesScoringInfo,

    -- ** EditMetadata
    EditMetadata (..),
    newEditMetadata,

    -- ** EditorClientActionMarkup
    EditorClientActionMarkup (..),
    newEditorClientActionMarkup,

    -- ** EmailAddress
    EmailAddress (..),
    newEmailAddress,

    -- ** EmailOwnerProto
    EmailOwnerProto (..),
    newEmailOwnerProto,

    -- ** EmbedClientItem
    EmbedClientItem (..),
    newEmbedClientItem,

    -- ** EmbedClientItem_TypeItem
    EmbedClientItem_TypeItem (..),

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

    -- ** EventAnnotation
    EventAnnotation (..),
    newEventAnnotation,

    -- ** EventProto
    EventProto (..),
    newEventProto,

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

    -- ** FilterCreated
    FilterCreated (..),
    newFilterCreated,

    -- ** FilterDeleted
    FilterDeleted (..),
    newFilterDeleted,

    -- ** FilterOptions
    FilterOptions (..),
    newFilterOptions,

    -- ** FilterUpdate
    FilterUpdate (..),
    newFilterUpdate,

    -- ** FixedFooter
    FixedFooter (..),
    newFixedFooter,

    -- ** Folder
    Folder (..),
    newFolder,

    -- ** FolderAttribute
    FolderAttribute (..),
    newFolderAttribute,

    -- ** FormAction
    FormAction (..),
    newFormAction,

    -- ** FormAction_LoadIndicator
    FormAction_LoadIndicator (..),

    -- ** FormatMetadata
    FormatMetadata (..),
    newFormatMetadata,

    -- ** FormatMetadata_FormatType
    FormatMetadata_FormatType (..),

    -- ** Formatting
    Formatting (..),
    newFormatting,

    -- ** Formatting_Style
    Formatting_Style (..),

    -- ** FreshnessOptions
    FreshnessOptions (..),
    newFreshnessOptions,

    -- ** FuseboxItem
    FuseboxItem (..),
    newFuseboxItem,

    -- ** FuseboxItemThreadMatchInfo
    FuseboxItemThreadMatchInfo (..),
    newFuseboxItemThreadMatchInfo,

    -- ** FuseboxPrefUpdatePreState
    FuseboxPrefUpdatePreState (..),
    newFuseboxPrefUpdatePreState,

    -- ** GSuitePrincipal
    GSuitePrincipal (..),
    newGSuitePrincipal,

    -- ** GaiaGroupProto
    GaiaGroupProto (..),
    newGaiaGroupProto,

    -- ** GaiaUserProto
    GaiaUserProto (..),
    newGaiaUserProto,

    -- ** GatewayAccess
    GatewayAccess (..),
    newGatewayAccess,

    -- ** GatewaySipAccess
    GatewaySipAccess (..),
    newGatewaySipAccess,

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

    -- ** GmailClientActionMarkup
    GmailClientActionMarkup (..),
    newGmailClientActionMarkup,

    -- ** GoogleChatV1ContextualAddOnMarkup
    GoogleChatV1ContextualAddOnMarkup (..),
    newGoogleChatV1ContextualAddOnMarkup,

    -- ** GoogleChatV1ContextualAddOnMarkupCard
    GoogleChatV1ContextualAddOnMarkupCard (..),
    newGoogleChatV1ContextualAddOnMarkupCard,

    -- ** GoogleChatV1ContextualAddOnMarkupCardCardAction
    GoogleChatV1ContextualAddOnMarkupCardCardAction (..),
    newGoogleChatV1ContextualAddOnMarkupCardCardAction,

    -- ** GoogleChatV1ContextualAddOnMarkupCardCardHeader
    GoogleChatV1ContextualAddOnMarkupCardCardHeader (..),
    newGoogleChatV1ContextualAddOnMarkupCardCardHeader,

    -- ** GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle
    GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle (..),

    -- ** GoogleChatV1ContextualAddOnMarkupCardSection
    GoogleChatV1ContextualAddOnMarkupCardSection (..),
    newGoogleChatV1ContextualAddOnMarkupCardSection,

    -- ** GoogleChatV1WidgetMarkup
    GoogleChatV1WidgetMarkup (..),
    newGoogleChatV1WidgetMarkup,

    -- ** GoogleChatV1WidgetMarkupButton
    GoogleChatV1WidgetMarkupButton (..),
    newGoogleChatV1WidgetMarkupButton,

    -- ** GoogleChatV1WidgetMarkupFormAction
    GoogleChatV1WidgetMarkupFormAction (..),
    newGoogleChatV1WidgetMarkupFormAction,

    -- ** GoogleChatV1WidgetMarkupFormActionActionParameter
    GoogleChatV1WidgetMarkupFormActionActionParameter (..),
    newGoogleChatV1WidgetMarkupFormActionActionParameter,

    -- ** GoogleChatV1WidgetMarkupImage
    GoogleChatV1WidgetMarkupImage (..),
    newGoogleChatV1WidgetMarkupImage,

    -- ** GoogleChatV1WidgetMarkupImageButton
    GoogleChatV1WidgetMarkupImageButton (..),
    newGoogleChatV1WidgetMarkupImageButton,

    -- ** GoogleChatV1WidgetMarkupImageButton_Icon
    GoogleChatV1WidgetMarkupImageButton_Icon (..),

    -- ** GoogleChatV1WidgetMarkupKeyValue
    GoogleChatV1WidgetMarkupKeyValue (..),
    newGoogleChatV1WidgetMarkupKeyValue,

    -- ** GoogleChatV1WidgetMarkupKeyValue_Icon
    GoogleChatV1WidgetMarkupKeyValue_Icon (..),

    -- ** GoogleChatV1WidgetMarkupOnClick
    GoogleChatV1WidgetMarkupOnClick (..),
    newGoogleChatV1WidgetMarkupOnClick,

    -- ** GoogleChatV1WidgetMarkupOpenLink
    GoogleChatV1WidgetMarkupOpenLink (..),
    newGoogleChatV1WidgetMarkupOpenLink,

    -- ** GoogleChatV1WidgetMarkupTextButton
    GoogleChatV1WidgetMarkupTextButton (..),
    newGoogleChatV1WidgetMarkupTextButton,

    -- ** GoogleChatV1WidgetMarkupTextParagraph
    GoogleChatV1WidgetMarkupTextParagraph (..),
    newGoogleChatV1WidgetMarkupTextParagraph,

    -- ** GoogleDocsMetadata
    GoogleDocsMetadata (..),
    newGoogleDocsMetadata,

    -- ** GoogleDocsMetadata_DocumentType
    GoogleDocsMetadata_DocumentType (..),

    -- ** GoogleDocsResultInfo
    GoogleDocsResultInfo (..),
    newGoogleDocsResultInfo,

    -- ** Grid
    Grid (..),
    newGrid,

    -- ** GridItem
    GridItem (..),
    newGridItem,

    -- ** GridItem_Layout
    GridItem_Layout (..),

    -- ** GridItem_TextAlignment
    GridItem_TextAlignment (..),

    -- ** GroupDetailsUpdatedMetadata
    GroupDetailsUpdatedMetadata (..),
    newGroupDetailsUpdatedMetadata,

    -- ** GroupId
    GroupId (..),
    newGroupId,

    -- ** GroupLinkSharingModificationEvent
    GroupLinkSharingModificationEvent (..),
    newGroupLinkSharingModificationEvent,

    -- ** GroupLinkSharingModificationEvent_NewStatus
    GroupLinkSharingModificationEvent_NewStatus (..),

    -- ** GroupRetentionSettingsUpdatedMetaData
    GroupRetentionSettingsUpdatedMetaData (..),
    newGroupRetentionSettingsUpdatedMetaData,

    -- ** GsuiteIntegrationMetadata
    GsuiteIntegrationMetadata (..),
    newGsuiteIntegrationMetadata,

    -- ** GsuiteIntegrationMetadata_ClientType
    GsuiteIntegrationMetadata_ClientType (..),

    -- ** HangoutEvent
    HangoutEvent (..),
    newHangoutEvent,

    -- ** HangoutEvent_MediaType
    HangoutEvent_MediaType (..),

    -- ** HangoutEvent_Type
    HangoutEvent_Type (..),

    -- ** HangoutVideoEventMetadata
    HangoutVideoEventMetadata (..),
    newHangoutVideoEventMetadata,

    -- ** HangoutVideoEventMetadata_HangoutVideoType
    HangoutVideoEventMetadata_HangoutVideoType (..),

    -- ** HashtagData
    HashtagData (..),
    newHashtagData,

    -- ** History
    History (..),
    newHistory,

    -- ** HistoryRecord
    HistoryRecord (..),
    newHistoryRecord,

    -- ** HistoryRecord_Type
    HistoryRecord_Type (..),

    -- ** HostAppActionMarkup
    HostAppActionMarkup (..),
    newHostAppActionMarkup,

    -- ** HostProto
    HostProto (..),
    newHostProto,

    -- ** HtmlOperatorOptions
    HtmlOperatorOptions (..),
    newHtmlOperatorOptions,

    -- ** HtmlPropertyOptions
    HtmlPropertyOptions (..),
    newHtmlPropertyOptions,

    -- ** HtmlValues
    HtmlValues (..),
    newHtmlValues,

    -- ** IconImage
    IconImage (..),
    newIconImage,

    -- ** IconImage_Icon
    IconImage_Icon (..),

    -- ** IconImage_ImageStyle
    IconImage_ImageStyle (..),

    -- ** Id
    Id (..),
    newId,

    -- ** Image
    Image (..),
    newImage,

    -- ** ImageButton
    ImageButton (..),
    newImageButton,

    -- ** ImageButton_Icon
    ImageButton_Icon (..),

    -- ** ImageComponent
    ImageComponent (..),
    newImageComponent,

    -- ** ImageCropStyle
    ImageCropStyle (..),
    newImageCropStyle,

    -- ** ImageCropStyle_Type
    ImageCropStyle_Type (..),

    -- ** ImageKeyValue
    ImageKeyValue (..),
    newImageKeyValue,

    -- ** ImageKeyValue_Icon
    ImageKeyValue_Icon (..),

    -- ** ImapSessionContext
    ImapSessionContext (..),
    newImapSessionContext,

    -- ** ImapSessionContext_App
    ImapSessionContext_App (..),

    -- ** ImapSessionContext_DeviceType
    ImapSessionContext_DeviceType (..),

    -- ** ImapSessionContext_Os
    ImapSessionContext_Os (..),

    -- ** ImapSyncDelete
    ImapSyncDelete (..),
    newImapSyncDelete,

    -- ** ImapUidsReassign
    ImapUidsReassign (..),
    newImapUidsReassign,

    -- ** ImapUpdate
    ImapUpdate (..),
    newImapUpdate,

    -- ** ImapsyncFolderAttributeFolderMessage
    ImapsyncFolderAttributeFolderMessage (..),
    newImapsyncFolderAttributeFolderMessage,

    -- ** ImapsyncFolderAttributeFolderMessageFlags
    ImapsyncFolderAttributeFolderMessageFlags (..),
    newImapsyncFolderAttributeFolderMessageFlags,

    -- ** IncomingWebhookChangedMetadata
    IncomingWebhookChangedMetadata (..),
    newIncomingWebhookChangedMetadata,

    -- ** IncomingWebhookChangedMetadata_Type
    IncomingWebhookChangedMetadata_Type (..),

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

    -- ** InsertContent
    InsertContent (..),
    newInsertContent,

    -- ** InsertContent_ContentType
    InsertContent_ContentType (..),

    -- ** InsertContent_MimeType
    InsertContent_MimeType (..),

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

    -- ** IntegrationConfigMutation
    IntegrationConfigMutation (..),
    newIntegrationConfigMutation,

    -- ** IntegrationConfigUpdatedMetadata
    IntegrationConfigUpdatedMetadata (..),
    newIntegrationConfigUpdatedMetadata,

    -- ** Interaction
    Interaction (..),
    newInteraction,

    -- ** Interaction_Type
    Interaction_Type (..),

    -- ** InteractionData
    InteractionData (..),
    newInteractionData,

    -- ** InviteAcceptedEvent
    InviteAcceptedEvent (..),
    newInviteAcceptedEvent,

    -- ** InviteeInfo
    InviteeInfo (..),
    newInviteeInfo,

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

    -- ** ItemParts
    ItemParts (..),
    newItemParts,

    -- ** ItemStatus
    ItemStatus (..),
    newItemStatus,

    -- ** ItemStatus_Code
    ItemStatus_Code (..),

    -- ** ItemStructuredData
    ItemStructuredData (..),
    newItemStructuredData,

    -- ** ItemThread
    ItemThread (..),
    newItemThread,

    -- ** JobsettedServerSpec
    JobsettedServerSpec (..),
    newJobsettedServerSpec,

    -- ** KeyValue
    KeyValue (..),
    newKeyValue,

    -- ** KeyValue_Icon
    KeyValue_Icon (..),

    -- ** KeyValue_ImageStyle
    KeyValue_ImageStyle (..),

    -- ** LabelAdded
    LabelAdded (..),
    newLabelAdded,

    -- ** LabelCreated
    LabelCreated (..),
    newLabelCreated,

    -- ** LabelDeleted
    LabelDeleted (..),
    newLabelDeleted,

    -- ** LabelRemoved
    LabelRemoved (..),
    newLabelRemoved,

    -- ** LabelRenamed
    LabelRenamed (..),
    newLabelRenamed,

    -- ** LabelUpdate
    LabelUpdate (..),
    newLabelUpdate,

    -- ** LabelUpdated
    LabelUpdated (..),
    newLabelUpdated,

    -- ** Labels
    Labels (..),
    newLabels,

    -- ** LanguageConfig
    LanguageConfig (..),
    newLanguageConfig,

    -- ** LdapGroupProto
    LdapGroupProto (..),
    newLdapGroupProto,

    -- ** LdapUserProto
    LdapUserProto (..),
    newLdapUserProto,

    -- ** LegacyUploadMetadata
    LegacyUploadMetadata (..),
    newLegacyUploadMetadata,

    -- ** LinkData
    LinkData (..),
    newLinkData,

    -- ** LinkData_AttachmentRenderHint
    LinkData_AttachmentRenderHint (..),

    -- ** LinkData_LinkType
    LinkData_LinkType (..),

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

    -- ** MatchInfo
    MatchInfo (..),
    newMatchInfo,

    -- ** MatchRange
    MatchRange (..),
    newMatchRange,

    -- ** MdbGroupProto
    MdbGroupProto (..),
    newMdbGroupProto,

    -- ** MdbUserProto
    MdbUserProto (..),
    newMdbUserProto,

    -- ** Media
    Media (..),
    newMedia,

    -- ** MeetingSpace
    MeetingSpace (..),
    newMeetingSpace,

    -- ** MeetingSpace_AcceptedNumberClassItem
    MeetingSpace_AcceptedNumberClassItem (..),

    -- ** Member
    Member (..),
    newMember,

    -- ** MemberId
    MemberId (..),
    newMemberId,

    -- ** MembershipChangeEvent
    MembershipChangeEvent (..),
    newMembershipChangeEvent,

    -- ** MembershipChangeEvent_LeaveReason
    MembershipChangeEvent_LeaveReason (..),

    -- ** MembershipChangeEvent_Type
    MembershipChangeEvent_Type (..),

    -- ** MembershipChangedMetadata
    MembershipChangedMetadata (..),
    newMembershipChangedMetadata,

    -- ** MembershipChangedMetadata_InitiatorType
    MembershipChangedMetadata_InitiatorType (..),

    -- ** MembershipChangedMetadata_Type
    MembershipChangedMetadata_Type (..),

    -- ** Menu
    Menu (..),
    newMenu,

    -- ** MenuItem
    MenuItem (..),
    newMenuItem,

    -- ** Message
    Message (..),
    newMessage,

    -- ** Message_DeletableBy
    Message_DeletableBy (..),

    -- ** Message_EditableBy
    Message_EditableBy (..),

    -- ** Message_MessageOrigin
    Message_MessageOrigin (..),

    -- ** Message_MessageState
    Message_MessageState (..),

    -- ** Message_QuotedByState
    Message_QuotedByState (..),

    -- ** Message_RichTextFormattingType
    Message_RichTextFormattingType (..),

    -- ** MessageAdded
    MessageAdded (..),
    newMessageAdded,

    -- ** MessageAttributes
    MessageAttributes (..),
    newMessageAttributes,

    -- ** MessageDeleted
    MessageDeleted (..),
    newMessageDeleted,

    -- ** MessageId
    MessageId (..),
    newMessageId,

    -- ** MessageInfo
    MessageInfo (..),
    newMessageInfo,

    -- ** MessageInfo_AuthorUserType
    MessageInfo_AuthorUserType (..),

    -- ** MessageInfo_SearcherMembershipState
    MessageInfo_SearcherMembershipState (..),

    -- ** MessageParentId
    MessageParentId (..),
    newMessageParentId,

    -- ** MessageProps
    MessageProps (..),
    newMessageProps,

    -- ** MessageSet
    MessageSet (..),
    newMessageSet,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** Metaline
    Metaline (..),
    newMetaline,

    -- ** MultiKey
    MultiKey (..),
    newMultiKey,

    -- ** Name
    Name (..),
    newName,

    -- ** NamedProperty
    NamedProperty (..),
    newNamedProperty,

    -- ** OAuthConsumerProto
    OAuthConsumerProto (..),
    newOAuthConsumerProto,

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

    -- ** OnClick
    OnClick (..),
    newOnClick,

    -- ** OpenCreatedDraftActionMarkup
    OpenCreatedDraftActionMarkup (..),
    newOpenCreatedDraftActionMarkup,

    -- ** OpenLink
    OpenLink (..),
    newOpenLink,

    -- ** OpenLink_LoadIndicator
    OpenLink_LoadIndicator (..),

    -- ** OpenLink_OnClose
    OpenLink_OnClose (..),

    -- ** OpenLink_OpenAs
    OpenLink_OpenAs (..),

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OsVersion
    OsVersion (..),
    newOsVersion,

    -- ** OtrChatMessageEvent
    OtrChatMessageEvent (..),
    newOtrChatMessageEvent,

    -- ** OtrChatMessageEvent_MessageOtrStatus
    OtrChatMessageEvent_MessageOtrStatus (..),

    -- ** OtrModificationEvent
    OtrModificationEvent (..),
    newOtrModificationEvent,

    -- ** OtrModificationEvent_NewOtrStatus
    OtrModificationEvent_NewOtrStatus (..),

    -- ** OtrModificationEvent_NewOtrToggle
    OtrModificationEvent_NewOtrToggle (..),

    -- ** OtrModificationEvent_OldOtrStatus
    OtrModificationEvent_OldOtrStatus (..),

    -- ** OtrModificationEvent_OldOtrToggle
    OtrModificationEvent_OldOtrToggle (..),

    -- ** PackagingServiceClient
    PackagingServiceClient (..),
    newPackagingServiceClient,

    -- ** PackagingServiceClient_Type
    PackagingServiceClient_Type (..),

    -- ** PaygateInfo
    PaygateInfo (..),
    newPaygateInfo,

    -- ** PeopleSuggestion
    PeopleSuggestion (..),
    newPeopleSuggestion,

    -- ** Person
    Person (..),
    newPerson,

    -- ** PersonalLabelTag
    PersonalLabelTag (..),
    newPersonalLabelTag,

    -- ** PhoneAccess
    PhoneAccess (..),
    newPhoneAccess,

    -- ** PhoneNumber
    PhoneNumber (..),
    newPhoneNumber,

    -- ** PhoneNumber_Type
    PhoneNumber_Type (..),

    -- ** Photo
    Photo (..),
    newPhoto,

    -- ** PinnedItemId
    PinnedItemId (..),
    newPinnedItemId,

    -- ** PollItemsRequest
    PollItemsRequest (..),
    newPollItemsRequest,

    -- ** PollItemsRequest_StatusCodesItem
    PollItemsRequest_StatusCodesItem (..),

    -- ** PollItemsResponse
    PollItemsResponse (..),
    newPollItemsResponse,

    -- ** PossiblyTrimmedModel
    PossiblyTrimmedModel (..),
    newPossiblyTrimmedModel,

    -- ** PostiniUserProto
    PostiniUserProto (..),
    newPostiniUserProto,

    -- ** PreState
    PreState (..),
    newPreState,

    -- ** PrefDeleted
    PrefDeleted (..),
    newPrefDeleted,

    -- ** PrefUpdate
    PrefUpdate (..),
    newPrefUpdate,

    -- ** PrefWritten
    PrefWritten (..),
    newPrefWritten,

    -- ** Presenter
    Presenter (..),
    newPresenter,

    -- ** Principal
    Principal (..),
    newPrincipal,

    -- ** PrincipalProto
    PrincipalProto (..),
    newPrincipalProto,

    -- ** PrincipalProto_Scope
    PrincipalProto_Scope (..),

    -- ** PrivateMessageInfo
    PrivateMessageInfo (..),
    newPrivateMessageInfo,

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

    -- ** Provenance
    Provenance (..),
    newProvenance,

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

    -- ** QuotedMessageMetadata
    QuotedMessageMetadata (..),
    newQuotedMessageMetadata,

    -- ** QuotedMessageMetadata_BotAttachmentState
    QuotedMessageMetadata_BotAttachmentState (..),

    -- ** QuotedMessageMetadata_MessageState
    QuotedMessageMetadata_MessageState (..),

    -- ** Rank
    Rank (..),
    newRank,

    -- ** RbacRoleProto
    RbacRoleProto (..),
    newRbacRoleProto,

    -- ** RbacSubjectProto
    RbacSubjectProto (..),
    newRbacSubjectProto,

    -- ** ReactionInfo
    ReactionInfo (..),
    newReactionInfo,

    -- ** ReadReceiptsSettingsUpdatedMetadata
    ReadReceiptsSettingsUpdatedMetadata (..),
    newReadReceiptsSettingsUpdatedMetadata,

    -- ** Recipient
    Recipient (..),
    newRecipient,

    -- ** RecordingEvent
    RecordingEvent (..),
    newRecordingEvent,

    -- ** RecordingEvent_Type
    RecordingEvent_Type (..),

    -- ** RecordingInfo
    RecordingInfo (..),
    newRecordingInfo,

    -- ** RecordingInfo_RecordingApplicationType
    RecordingInfo_RecordingApplicationType (..),

    -- ** RecordingInfo_RecordingStatus
    RecordingInfo_RecordingStatus (..),

    -- ** RecordingSessionInfo
    RecordingSessionInfo (..),
    newRecordingSessionInfo,

    -- ** Reference
    Reference (..),
    newReference,

    -- ** References
    References (..),
    newReferences,

    -- ** RenameEvent
    RenameEvent (..),
    newRenameEvent,

    -- ** RepositoryError
    RepositoryError (..),
    newRepositoryError,

    -- ** RepositoryError_Type
    RepositoryError_Type (..),

    -- ** RequestFileScope
    RequestFileScope (..),
    newRequestFileScope,

    -- ** RequestFileScopeForActiveDocument
    RequestFileScopeForActiveDocument (..),
    newRequestFileScopeForActiveDocument,

    -- ** RequestOptions
    RequestOptions (..),
    newRequestOptions,

    -- ** RequiredMessageFeaturesMetadata
    RequiredMessageFeaturesMetadata (..),
    newRequiredMessageFeaturesMetadata,

    -- ** RequiredMessageFeaturesMetadata_RequiredFeaturesItem
    RequiredMessageFeaturesMetadata_RequiredFeaturesItem (..),

    -- ** ResetSearchApplicationRequest
    ResetSearchApplicationRequest (..),
    newResetSearchApplicationRequest,

    -- ** ResourceRoleProto
    ResourceRoleProto (..),
    newResourceRoleProto,

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

    -- ** RoomRenameMetadata
    RoomRenameMetadata (..),
    newRoomRenameMetadata,

    -- ** RoomUpdatedMetadata
    RoomUpdatedMetadata (..),
    newRoomUpdatedMetadata,

    -- ** RoomUpdatedMetadata_InitiatorType
    RoomUpdatedMetadata_InitiatorType (..),

    -- ** Roster
    Roster (..),
    newRoster,

    -- ** Roster_RosterState
    Roster_RosterState (..),

    -- ** RosterId
    RosterId (..),
    newRosterId,

    -- ** RpcOptions
    RpcOptions (..),
    newRpcOptions,

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

    -- ** Section
    Section (..),
    newSection,

    -- ** Segment
    Segment (..),
    newSegment,

    -- ** Segment_Type
    Segment_Type (..),

    -- ** SelectionControl
    SelectionControl (..),
    newSelectionControl,

    -- ** SelectionControl_Type
    SelectionControl_Type (..),

    -- ** SelectionItem
    SelectionItem (..),
    newSelectionItem,

    -- ** SessionContext
    SessionContext (..),
    newSessionContext,

    -- ** SessionEvent
    SessionEvent (..),
    newSessionEvent,

    -- ** SessionEvent_Type
    SessionEvent_Type (..),

    -- ** SessionStateInfo
    SessionStateInfo (..),
    newSessionStateInfo,

    -- ** SessionStateInfo_SessionState
    SessionStateInfo_SessionState (..),

    -- ** SessionStateInfo_SessionStopReason
    SessionStateInfo_SessionStopReason (..),

    -- ** Settings
    Settings (..),
    newSettings,

    -- ** Settings_AccessType
    Settings_AccessType (..),

    -- ** ShareScope
    ShareScope (..),
    newShareScope,

    -- ** ShareScope_Scope
    ShareScope_Scope (..),

    -- ** SheetsClientActionMarkup
    SheetsClientActionMarkup (..),
    newSheetsClientActionMarkup,

    -- ** SigningKeyPossessorProto
    SigningKeyPossessorProto (..),
    newSigningKeyPossessorProto,

    -- ** SimpleSecretHolderProto
    SimpleSecretHolderProto (..),
    newSimpleSecretHolderProto,

    -- ** SimpleSecretLabelProto
    SimpleSecretLabelProto (..),
    newSimpleSecretLabelProto,

    -- ** SimpleSecretLabelProto_Type
    SimpleSecretLabelProto_Type (..),

    -- ** SlashCommandMetadata
    SlashCommandMetadata (..),
    newSlashCommandMetadata,

    -- ** SlashCommandMetadata_Type
    SlashCommandMetadata_Type (..),

    -- ** Snippet
    Snippet (..),
    newSnippet,

    -- ** SocialCommonAttachmentAttachment
    SocialCommonAttachmentAttachment (..),
    newSocialCommonAttachmentAttachment,

    -- ** SocialGraphNodeProto
    SocialGraphNodeProto (..),
    newSocialGraphNodeProto,

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

    -- ** SpellResult
    SpellResult (..),
    newSpellResult,

    -- ** SquareProto
    SquareProto (..),
    newSquareProto,

    -- ** StartUploadItemRequest
    StartUploadItemRequest (..),
    newStartUploadItemRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StoredParticipantId
    StoredParticipantId (..),
    newStoredParticipantId,

    -- ** StreamViewerStats
    StreamViewerStats (..),
    newStreamViewerStats,

    -- ** StreamingSessionInfo
    StreamingSessionInfo (..),
    newStreamingSessionInfo,

    -- ** StreamingSessionInfo_ApplicationType
    StreamingSessionInfo_ApplicationType (..),

    -- ** StreamingSessionInfo_Status
    StreamingSessionInfo_Status (..),

    -- ** StreamingSessionInfo_ViewerAccessPolicy
    StreamingSessionInfo_ViewerAccessPolicy (..),

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

    -- ** SupportUrls
    SupportUrls (..),
    newSupportUrls,

    -- ** SwitchWidget
    SwitchWidget (..),
    newSwitchWidget,

    -- ** SwitchWidget_ControlType
    SwitchWidget_ControlType (..),

    -- ** TaskActionMarkup
    TaskActionMarkup (..),
    newTaskActionMarkup,

    -- ** TextButton
    TextButton (..),
    newTextButton,

    -- ** TextButton_Style
    TextButton_Style (..),

    -- ** TextField
    TextField (..),
    newTextField,

    -- ** TextField_Type
    TextField_Type (..),

    -- ** TextKeyValue
    TextKeyValue (..),
    newTextKeyValue,

    -- ** TextOperatorOptions
    TextOperatorOptions (..),
    newTextOperatorOptions,

    -- ** TextParagraph
    TextParagraph (..),
    newTextParagraph,

    -- ** TextPropertyOptions
    TextPropertyOptions (..),
    newTextPropertyOptions,

    -- ** TextValues
    TextValues (..),
    newTextValues,

    -- ** ThreadKeySet
    ThreadKeySet (..),
    newThreadKeySet,

    -- ** ThreadUpdate
    ThreadUpdate (..),
    newThreadUpdate,

    -- ** TimestampOperatorOptions
    TimestampOperatorOptions (..),
    newTimestampOperatorOptions,

    -- ** TimestampPropertyOptions
    TimestampPropertyOptions (..),
    newTimestampPropertyOptions,

    -- ** TimestampValues
    TimestampValues (..),
    newTimestampValues,

    -- ** TombstoneMetadata
    TombstoneMetadata (..),
    newTombstoneMetadata,

    -- ** TombstoneMetadata_TombstoneType
    TombstoneMetadata_TombstoneType (..),

    -- ** Toolbar
    Toolbar (..),
    newToolbar,

    -- ** TopicId
    TopicId (..),
    newTopicId,

    -- ** TopicState
    TopicState (..),
    newTopicState,

    -- ** TopicState_LabelIdMessageCount
    TopicState_LabelIdMessageCount (..),
    newTopicState_LabelIdMessageCount,

    -- ** TopicStateUpdate
    TopicStateUpdate (..),
    newTopicStateUpdate,

    -- ** TransactionContext
    TransactionContext (..),
    newTransactionContext,

    -- ** TransactionDebugInfo
    TransactionDebugInfo (..),
    newTransactionDebugInfo,

    -- ** TranscriptionSessionInfo
    TranscriptionSessionInfo (..),
    newTranscriptionSessionInfo,

    -- ** TransientData
    TransientData (..),
    newTransientData,

    -- ** Trigger
    Trigger (..),
    newTrigger,

    -- ** Trigger_Dispatcher
    Trigger_Dispatcher (..),

    -- ** TriggerAction
    TriggerAction (..),
    newTriggerAction,

    -- ** TriggerAction_Action
    TriggerAction_Action (..),

    -- ** TriggerKey
    TriggerKey (..),
    newTriggerKey,

    -- ** Triggers
    Triggers (..),
    newTriggers,

    -- ** TrustedResourceUrlProto
    TrustedResourceUrlProto (..),
    newTrustedResourceUrlProto,

    -- ** TypeInfo
    TypeInfo (..),
    newTypeInfo,

    -- ** UniversalPhoneAccess
    UniversalPhoneAccess (..),
    newUniversalPhoneAccess,

    -- ** UnmappedIdentity
    UnmappedIdentity (..),
    newUnmappedIdentity,

    -- ** UnmappedIdentity_ResolutionStatusCode
    UnmappedIdentity_ResolutionStatusCode (..),

    -- ** UnreserveItemsRequest
    UnreserveItemsRequest (..),
    newUnreserveItemsRequest,

    -- ** UpdateBccRecipients
    UpdateBccRecipients (..),
    newUpdateBccRecipients,

    -- ** UpdateBody
    UpdateBody (..),
    newUpdateBody,

    -- ** UpdateBody_Type
    UpdateBody_Type (..),

    -- ** UpdateCcRecipients
    UpdateCcRecipients (..),
    newUpdateCcRecipients,

    -- ** UpdateDataSourceRequest
    UpdateDataSourceRequest (..),
    newUpdateDataSourceRequest,

    -- ** UpdateDraftActionMarkup
    UpdateDraftActionMarkup (..),
    newUpdateDraftActionMarkup,

    -- ** UpdateSchemaRequest
    UpdateSchemaRequest (..),
    newUpdateSchemaRequest,

    -- ** UpdateSubject
    UpdateSubject (..),
    newUpdateSubject,

    -- ** UpdateToRecipients
    UpdateToRecipients (..),
    newUpdateToRecipients,

    -- ** UploadItemRef
    UploadItemRef (..),
    newUploadItemRef,

    -- ** UploadMetadata
    UploadMetadata (..),
    newUploadMetadata,

    -- ** UploadMetadata_ClonedDriveAction
    UploadMetadata_ClonedDriveAction (..),

    -- ** UploadMetadata_VirusScanResult
    UploadMetadata_VirusScanResult (..),

    -- ** UrlMetadata
    UrlMetadata (..),
    newUrlMetadata,

    -- ** UrlMetadata_UrlSource
    UrlMetadata_UrlSource (..),

    -- ** User
    User (..),
    newUser,

    -- ** User_UserAccountState
    User_UserAccountState (..),

    -- ** User_UserProfileVisibility
    User_UserProfileVisibility (..),

    -- ** UserDisplayInfo
    UserDisplayInfo (..),
    newUserDisplayInfo,

    -- ** UserId
    UserId (..),
    newUserId,

    -- ** UserId_Type
    UserId_Type (..),

    -- ** UserInfo
    UserInfo (..),
    newUserInfo,

    -- ** UserInfo_UpdaterCountDisplayType
    UserInfo_UpdaterCountDisplayType (..),

    -- ** UserMentionData
    UserMentionData (..),
    newUserMentionData,

    -- ** UserMentionMetadata
    UserMentionMetadata (..),
    newUserMentionMetadata,

    -- ** UserMentionMetadata_Type
    UserMentionMetadata_Type (..),

    -- ** UserMentionMetadata_UserMentionError
    UserMentionMetadata_UserMentionError (..),

    -- ** VPCSettings
    VPCSettings (..),
    newVPCSettings,

    -- ** Value
    Value (..),
    newValue,

    -- ** ValueFilter
    ValueFilter (..),
    newValueFilter,

    -- ** VideoCallMetadata
    VideoCallMetadata (..),
    newVideoCallMetadata,

    -- ** VideoInfo
    VideoInfo (..),
    newVideoInfo,

    -- ** VoicePhoneNumber
    VoicePhoneNumber (..),
    newVoicePhoneNumber,

    -- ** VoicePhoneNumberI18nData
    VoicePhoneNumberI18nData (..),
    newVoicePhoneNumberI18nData,

    -- ** VoicePhoneNumberI18nData_ValidationResult
    VoicePhoneNumberI18nData_ValidationResult (..),

    -- ** WhiteboardInfo
    WhiteboardInfo (..),
    newWhiteboardInfo,

    -- ** WidgetMarkup
    WidgetMarkup (..),
    newWidgetMarkup,

    -- ** WidgetMarkup_HorizontalAlignment
    WidgetMarkup_HorizontalAlignment (..),

    -- ** WonderCardDelete
    WonderCardDelete (..),
    newWonderCardDelete,

    -- ** WonderCardDelete_MessageMappings
    WonderCardDelete_MessageMappings (..),
    newWonderCardDelete_MessageMappings,

    -- ** WonderMessageMapping
    WonderMessageMapping (..),
    newWonderMessageMapping,

    -- ** WrappedResourceKey
    WrappedResourceKey (..),
    newWrappedResourceKey,

    -- ** YouTubeBroadcastSessionInfo
    YouTubeBroadcastSessionInfo (..),
    newYouTubeBroadcastSessionInfo,

    -- ** YouTubeBroadcastStats
    YouTubeBroadcastStats (..),
    newYouTubeBroadcastStats,

    -- ** YouTubeLiveBroadcastEvent
    YouTubeLiveBroadcastEvent (..),
    newYouTubeLiveBroadcastEvent,

    -- ** YoutubeMetadata
    YoutubeMetadata (..),
    newYoutubeMetadata,

    -- ** YoutubeUserProto
    YoutubeUserProto (..),
    newYoutubeUserProto,

    -- ** ZwiebackSessionProto
    ZwiebackSessionProto (..),
    newZwiebackSessionProto,

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
