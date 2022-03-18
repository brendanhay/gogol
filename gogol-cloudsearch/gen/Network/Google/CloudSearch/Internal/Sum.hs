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
-- Module      : Network.Google.CloudSearch.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.CloudSearch.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AclInfo_Scope
    AclInfo_Scope
      ( AclInfo_Scope_Limited,
        AclInfo_Scope_DASHERDOMAINWITHLINK,
        AclInfo_Scope_DASHERDOMAIN,
        AclInfo_Scope_PUBLICWITHLINK,
        AclInfo_Scope_Public,
        AclInfo_Scope_TEAMDRIVE,
        ..
      ),

    -- * AppId_AppType
    AppId_AppType
      ( AppId_AppType_APPTYPEUNSPECIFIED,
        AppId_AppType_App,
        AppId_AppType_GSUITEAPP,
        AppId_AppType_INCOMINGWEBHOOK,
        ..
      ),

    -- * AppId_GsuiteAppType
    AppId_GsuiteAppType
      ( AppId_GsuiteAppType_GSUITEAPPTYPEUNSPECIFIED,
        AppId_GsuiteAppType_TASKSAPP,
        AppId_GsuiteAppType_CALENDARAPP,
        AppId_GsuiteAppType_DOCSAPP,
        AppId_GsuiteAppType_SHEETSAPP,
        AppId_GsuiteAppType_SLIDESAPP,
        AppId_GsuiteAppType_MEETAPP,
        AppId_GsuiteAppType_FILESUGGESTIONAPP,
        AppId_GsuiteAppType_CONTACTSAPP,
        AppId_GsuiteAppType_ACTIVITYFEEDAPP,
        AppId_GsuiteAppType_DRIVEAPP,
        AppId_GsuiteAppType_ASSISTIVESUGGESTIONAPP,
        ..
      ),

    -- * CompositeFilter_LogicOperator
    CompositeFilter_LogicOperator
      ( CompositeFilter_LogicOperator_And,
        CompositeFilter_LogicOperator_OR,
        CompositeFilter_LogicOperator_Not,
        ..
      ),

    -- * CustomEmoji_State
    CustomEmoji_State
      ( CustomEmoji_State_EMOJISTATEUNSPECIFIED,
        CustomEmoji_State_EMOJIENABLED,
        CustomEmoji_State_EMOJISYSTEMDISABLED,
        CustomEmoji_State_EMOJIHIDDEN,
        CustomEmoji_State_EMOJIDELETED,
        ..
      ),

    -- * DriveFollowUpRestrict_Type
    DriveFollowUpRestrict_Type
      ( DriveFollowUpRestrict_Type_Unspecified,
        DriveFollowUpRestrict_Type_FOLLOWUPSUGGESTIONS,
        DriveFollowUpRestrict_Type_FOLLOWUPACTIONITEMS,
        ..
      ),

    -- * DriveLocationRestrict_Type
    DriveLocationRestrict_Type
      ( DriveLocationRestrict_Type_Unspecified,
        DriveLocationRestrict_Type_Trashed,
        DriveLocationRestrict_Type_Starred,
        ..
      ),

    -- * DriveMimeTypeRestrict_Type
    DriveMimeTypeRestrict_Type
      ( DriveMimeTypeRestrict_Type_Unspecified,
        DriveMimeTypeRestrict_Type_Pdf,
        DriveMimeTypeRestrict_Type_Document,
        DriveMimeTypeRestrict_Type_Presentation,
        DriveMimeTypeRestrict_Type_Spreadsheet,
        DriveMimeTypeRestrict_Type_Form,
        DriveMimeTypeRestrict_Type_Drawing,
        DriveMimeTypeRestrict_Type_Script,
        DriveMimeTypeRestrict_Type_Map,
        DriveMimeTypeRestrict_Type_Image,
        DriveMimeTypeRestrict_Type_Audio,
        DriveMimeTypeRestrict_Type_Video,
        DriveMimeTypeRestrict_Type_Folder,
        DriveMimeTypeRestrict_Type_Archive,
        DriveMimeTypeRestrict_Type_Site,
        ..
      ),

    -- * DriveTimeSpanRestrict_Type
    DriveTimeSpanRestrict_Type
      ( DriveTimeSpanRestrict_Type_Unspecified,
        DriveTimeSpanRestrict_Type_Today,
        DriveTimeSpanRestrict_Type_Yesterday,
        DriveTimeSpanRestrict_Type_LAST7DAYS,
        DriveTimeSpanRestrict_Type_LAST30DAYS,
        DriveTimeSpanRestrict_Type_LAST90DAYS,
        ..
      ),

    -- * EnumPropertyOptions_OrderedRanking
    EnumPropertyOptions_OrderedRanking
      ( EnumPropertyOptions_OrderedRanking_NOORDER,
        EnumPropertyOptions_OrderedRanking_Ascending,
        EnumPropertyOptions_OrderedRanking_Descending,
        ..
      ),

    -- * GoogleDocsMetadata_DocumentType
    GoogleDocsMetadata_DocumentType
      ( GoogleDocsMetadata_DocumentType_Unknown,
        GoogleDocsMetadata_DocumentType_Document,
        GoogleDocsMetadata_DocumentType_Presentation,
        GoogleDocsMetadata_DocumentType_Spreadsheet,
        GoogleDocsMetadata_DocumentType_Pdf,
        GoogleDocsMetadata_DocumentType_Image,
        GoogleDocsMetadata_DocumentType_BINARYBLOB,
        GoogleDocsMetadata_DocumentType_FUSIONTABLE,
        GoogleDocsMetadata_DocumentType_Folder,
        GoogleDocsMetadata_DocumentType_Drawing,
        GoogleDocsMetadata_DocumentType_Video,
        GoogleDocsMetadata_DocumentType_Form,
        GoogleDocsMetadata_DocumentType_DRAFTSITE,
        GoogleDocsMetadata_DocumentType_DRAFTSITEPAGE,
        GoogleDocsMetadata_DocumentType_Jam,
        GoogleDocsMetadata_DocumentType_Shortcut,
        GoogleDocsMetadata_DocumentType_Script,
        ..
      ),

    -- * IndexItemRequest_Mode
    IndexItemRequest_Mode
      ( IndexItemRequest_Mode_Unspecified,
        IndexItemRequest_Mode_Synchronous,
        IndexItemRequest_Mode_Asynchronous,
        ..
      ),

    -- * IntegerPropertyOptions_OrderedRanking
    IntegerPropertyOptions_OrderedRanking
      ( IntegerPropertyOptions_OrderedRanking_NOORDER,
        IntegerPropertyOptions_OrderedRanking_Ascending,
        IntegerPropertyOptions_OrderedRanking_Descending,
        ..
      ),

    -- * Interaction_Type
    Interaction_Type
      ( Interaction_Type_Unspecified,
        Interaction_Type_View,
        Interaction_Type_Edit,
        ..
      ),

    -- * Item_ItemType
    Item_ItemType
      ( Item_ItemType_Unspecified,
        Item_ItemType_CONTENTITEM,
        Item_ItemType_CONTAINERITEM,
        Item_ItemType_VIRTUALCONTAINERITEM,
        ..
      ),

    -- * ItemAcl_AclInheritanceType
    ItemAcl_AclInheritanceType
      ( ItemAcl_AclInheritanceType_NOTAPPLICABLE,
        ItemAcl_AclInheritanceType_CHILDOVERRIDE,
        ItemAcl_AclInheritanceType_PARENTOVERRIDE,
        ItemAcl_AclInheritanceType_BOTHPERMIT,
        ..
      ),

    -- * ItemContent_ContentFormat
    ItemContent_ContentFormat
      ( ItemContent_ContentFormat_Unspecified,
        ItemContent_ContentFormat_Html,
        ItemContent_ContentFormat_Text,
        ItemContent_ContentFormat_Raw,
        ..
      ),

    -- * ItemCountByStatus_StatusCode
    ItemCountByStatus_StatusCode
      ( ItemCountByStatus_StatusCode_CODEUNSPECIFIED,
        ItemCountByStatus_StatusCode_Error',
        ItemCountByStatus_StatusCode_Modified,
        ItemCountByStatus_StatusCode_NEWITEM,
        ItemCountByStatus_StatusCode_Accepted,
        ..
      ),

    -- * ItemStatus_Code
    ItemStatus_Code
      ( ItemStatus_Code_CODEUNSPECIFIED,
        ItemStatus_Code_Error',
        ItemStatus_Code_Modified,
        ItemStatus_Code_NEWITEM,
        ItemStatus_Code_Accepted,
        ..
      ),

    -- * PollItemsRequest_StatusCodesItem
    PollItemsRequest_StatusCodesItem
      ( PollItemsRequest_StatusCodesItem_CODEUNSPECIFIED,
        PollItemsRequest_StatusCodesItem_Error',
        PollItemsRequest_StatusCodesItem_Modified,
        PollItemsRequest_StatusCodesItem_NEWITEM,
        PollItemsRequest_StatusCodesItem_Accepted,
        ..
      ),

    -- * ProcessingError_Code
    ProcessingError_Code
      ( ProcessingError_Code_PROCESSINGERRORCODEUNSPECIFIED,
        ProcessingError_Code_MALFORMEDREQUEST,
        ProcessingError_Code_UNSUPPORTEDCONTENTFORMAT,
        ProcessingError_Code_INDIRECTBROKENACL,
        ProcessingError_Code_ACLCYCLE,
        ..
      ),

    -- * PushItem_Type
    PushItem_Type
      ( PushItem_Type_Unspecified,
        PushItem_Type_Modified,
        PushItem_Type_NOTMODIFIED,
        PushItem_Type_REPOSITORYERROR,
        PushItem_Type_Requeue,
        ..
      ),

    -- * QueryInterpretation_InterpretationType
    QueryInterpretation_InterpretationType
      ( QueryInterpretation_InterpretationType_None,
        QueryInterpretation_InterpretationType_Blend,
        QueryInterpretation_InterpretationType_Replace,
        ..
      ),

    -- * QueryInterpretation_Reason
    QueryInterpretation_Reason
      ( QueryInterpretation_Reason_Unspecified,
        QueryInterpretation_Reason_QUERYHASNATURALLANGUAGEINTENT,
        QueryInterpretation_Reason_NOTENOUGHRESULTSFOUNDFORUSERQUERY,
        ..
      ),

    -- * QueryOperator_Type
    QueryOperator_Type
      ( QueryOperator_Type_Unknown,
        QueryOperator_Type_Integer,
        QueryOperator_Type_Double,
        QueryOperator_Type_Timestamp,
        QueryOperator_Type_Boolean,
        QueryOperator_Type_Enum',
        QueryOperator_Type_Date,
        QueryOperator_Type_Text,
        QueryOperator_Type_Html,
        ..
      ),

    -- * RepositoryError_Type
    RepositoryError_Type
      ( RepositoryError_Type_Unknown,
        RepositoryError_Type_NETWORKERROR,
        RepositoryError_Type_DNSERROR,
        RepositoryError_Type_CONNECTIONERROR,
        RepositoryError_Type_AUTHENTICATIONERROR,
        RepositoryError_Type_AUTHORIZATIONERROR,
        RepositoryError_Type_SERVERERROR,
        RepositoryError_Type_QUOTAEXCEEDED,
        RepositoryError_Type_SERVICEUNAVAILABLE,
        RepositoryError_Type_CLIENTERROR,
        ..
      ),

    -- * RetrievalImportance_Importance
    RetrievalImportance_Importance
      ( RetrievalImportance_Importance_Default,
        RetrievalImportance_Importance_Highest,
        RetrievalImportance_Importance_High,
        RetrievalImportance_Importance_Low,
        RetrievalImportance_Importance_None,
        ..
      ),

    -- * ShareScope_Scope
    ShareScope_Scope
      ( ShareScope_Scope_Unknown,
        ShareScope_Scope_Private,
        ShareScope_Scope_Limited,
        ShareScope_Scope_Extended,
        ShareScope_Scope_DASHERDOMAIN,
        ShareScope_Scope_Public,
        ..
      ),

    -- * SortOptions_SortOrder
    SortOptions_SortOrder
      ( SortOptions_SortOrder_Ascending,
        SortOptions_SortOrder_Descending,
        ..
      ),

    -- * Source_PredefinedSource
    Source_PredefinedSource
      ( Source_PredefinedSource_None,
        Source_PredefinedSource_QUERYHISTORY,
        Source_PredefinedSource_Person,
        Source_PredefinedSource_GOOGLEDRIVE,
        Source_PredefinedSource_GOOGLEGMAIL,
        Source_PredefinedSource_GOOGLESITES,
        Source_PredefinedSource_GOOGLEGROUPS,
        Source_PredefinedSource_GOOGLECALENDAR,
        Source_PredefinedSource_GOOGLEKEEP,
        ..
      ),

    -- * SourceScoringConfig_SourceImportance
    SourceScoringConfig_SourceImportance
      ( SourceScoringConfig_SourceImportance_Default,
        SourceScoringConfig_SourceImportance_Low,
        SourceScoringConfig_SourceImportance_High,
        ..
      ),

    -- * SpaceInfo_UserMembershipState
    SpaceInfo_UserMembershipState
      ( SpaceInfo_UserMembershipState_MEMBERUNKNOWN,
        SpaceInfo_UserMembershipState_MEMBERINVITED,
        SpaceInfo_UserMembershipState_MEMBERJOINED,
        SpaceInfo_UserMembershipState_MEMBERNOTAMEMBER,
        SpaceInfo_UserMembershipState_MEMBERFAILED,
        ..
      ),

    -- * UnmappedIdentity_ResolutionStatusCode
    UnmappedIdentity_ResolutionStatusCode
      ( UnmappedIdentity_ResolutionStatusCode_CODEUNSPECIFIED,
        UnmappedIdentity_ResolutionStatusCode_NOTFOUND,
        UnmappedIdentity_ResolutionStatusCode_IDENTITYSOURCENOTFOUND,
        UnmappedIdentity_ResolutionStatusCode_IDENTITYSOURCEMISCONFIGURED,
        UnmappedIdentity_ResolutionStatusCode_TOOMANYMAPPINGSFOUND,
        UnmappedIdentity_ResolutionStatusCode_INTERNALERROR,
        ..
      ),

    -- * UserId_Type
    UserId_Type
      ( UserId_Type_Human,
        UserId_Type_Bot,
        ..
      ),

    -- * DebugIdentitysourcesUnmappedidsListResolutionStatusCode
    DebugIdentitysourcesUnmappedidsListResolutionStatusCode
      ( DebugIdentitysourcesUnmappedidsListResolutionStatusCode_CODEUNSPECIFIED,
        DebugIdentitysourcesUnmappedidsListResolutionStatusCode_NOTFOUND,
        DebugIdentitysourcesUnmappedidsListResolutionStatusCode_IDENTITYSOURCENOTFOUND,
        DebugIdentitysourcesUnmappedidsListResolutionStatusCode_IDENTITYSOURCEMISCONFIGURED,
        DebugIdentitysourcesUnmappedidsListResolutionStatusCode_TOOMANYMAPPINGSFOUND,
        DebugIdentitysourcesUnmappedidsListResolutionStatusCode_INTERNALERROR,
        ..
      ),

    -- * IndexingDatasourcesItemsDeleteMode
    IndexingDatasourcesItemsDeleteMode
      ( IndexingDatasourcesItemsDeleteMode_Unspecified,
        IndexingDatasourcesItemsDeleteMode_Synchronous,
        IndexingDatasourcesItemsDeleteMode_Asynchronous,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The scope to which the content was shared.
newtype AclInfo_Scope = AclInfo_Scope {fromAclInfo_Scope :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Explicit set of people and groups.
pattern AclInfo_Scope_Limited :: AclInfo_Scope
pattern AclInfo_Scope_Limited = AclInfo_Scope "LIMITED"

-- | Anybody at the same domain with the link.
pattern AclInfo_Scope_DASHERDOMAINWITHLINK :: AclInfo_Scope
pattern AclInfo_Scope_DASHERDOMAINWITHLINK = AclInfo_Scope "DASHER_DOMAIN_WITH_LINK"

-- | Now it works only for google.com. Anybody at the same domain. Now it works only
pattern AclInfo_Scope_DASHERDOMAIN :: AclInfo_Scope
pattern AclInfo_Scope_DASHERDOMAIN = AclInfo_Scope "DASHER_DOMAIN"

-- | for google.com. Anybody with the link.
pattern AclInfo_Scope_PUBLICWITHLINK :: AclInfo_Scope
pattern AclInfo_Scope_PUBLICWITHLINK = AclInfo_Scope "PUBLIC_WITH_LINK"

-- | Anybody.
pattern AclInfo_Scope_Public :: AclInfo_Scope
pattern AclInfo_Scope_Public = AclInfo_Scope "PUBLIC"

-- | Special tag to indicate TeamDrive scope.
pattern AclInfo_Scope_TEAMDRIVE :: AclInfo_Scope
pattern AclInfo_Scope_TEAMDRIVE = AclInfo_Scope "TEAM_DRIVE"

{-# COMPLETE
  AclInfo_Scope_Limited,
  AclInfo_Scope_DASHERDOMAINWITHLINK,
  AclInfo_Scope_DASHERDOMAIN,
  AclInfo_Scope_PUBLICWITHLINK,
  AclInfo_Scope_Public,
  AclInfo_Scope_TEAMDRIVE,
  AclInfo_Scope
  #-}

-- | Enum indicating the type of App this is.
newtype AppId_AppType = AppId_AppType {fromAppId_AppType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern AppId_AppType_APPTYPEUNSPECIFIED :: AppId_AppType
pattern AppId_AppType_APPTYPEUNSPECIFIED = AppId_AppType "APP_TYPE_UNSPECIFIED"

-- | 3P APP eg. external Bots(Asana Bot), 1P Bots(Drive Bot).
pattern AppId_AppType_App :: AppId_AppType
pattern AppId_AppType_App = AppId_AppType "APP"

-- | 1P APP eg. Tasks, Meet, Docs, Calendar..
pattern AppId_AppType_GSUITEAPP :: AppId_AppType
pattern AppId_AppType_GSUITEAPP = AppId_AppType "GSUITE_APP"

-- | Asynchronous messages via an incoming webhook.
pattern AppId_AppType_INCOMINGWEBHOOK :: AppId_AppType
pattern AppId_AppType_INCOMINGWEBHOOK = AppId_AppType "INCOMING_WEBHOOK"

{-# COMPLETE
  AppId_AppType_APPTYPEUNSPECIFIED,
  AppId_AppType_App,
  AppId_AppType_GSUITEAPP,
  AppId_AppType_INCOMINGWEBHOOK,
  AppId_AppType
  #-}

-- | Enum indicating which 1P App this is when app/type is GSUITE/APP. Determined & set by the 1P API as a convenience for all users of this identifier(Eg. clients, chime, backend etc.) to map to 1P properties.
newtype AppId_GsuiteAppType = AppId_GsuiteAppType {fromAppId_GsuiteAppType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern AppId_GsuiteAppType_GSUITEAPPTYPEUNSPECIFIED :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_GSUITEAPPTYPEUNSPECIFIED = AppId_GsuiteAppType "GSUITE_APP_TYPE_UNSPECIFIED"

-- |
pattern AppId_GsuiteAppType_TASKSAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_TASKSAPP = AppId_GsuiteAppType "TASKS_APP"

-- |
pattern AppId_GsuiteAppType_CALENDARAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_CALENDARAPP = AppId_GsuiteAppType "CALENDAR_APP"

-- |
pattern AppId_GsuiteAppType_DOCSAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_DOCSAPP = AppId_GsuiteAppType "DOCS_APP"

-- |
pattern AppId_GsuiteAppType_SHEETSAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_SHEETSAPP = AppId_GsuiteAppType "SHEETS_APP"

-- |
pattern AppId_GsuiteAppType_SLIDESAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_SLIDESAPP = AppId_GsuiteAppType "SLIDES_APP"

-- |
pattern AppId_GsuiteAppType_MEETAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_MEETAPP = AppId_GsuiteAppType "MEET_APP"

-- | Powered by Bullseye
pattern AppId_GsuiteAppType_FILESUGGESTIONAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_FILESUGGESTIONAPP = AppId_GsuiteAppType "FILE_SUGGESTION_APP"

-- |
pattern AppId_GsuiteAppType_CONTACTSAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_CONTACTSAPP = AppId_GsuiteAppType "CONTACTS_APP"

-- |
pattern AppId_GsuiteAppType_ACTIVITYFEEDAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_ACTIVITYFEEDAPP = AppId_GsuiteAppType "ACTIVITY_FEED_APP"

-- |
pattern AppId_GsuiteAppType_DRIVEAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_DRIVEAPP = AppId_GsuiteAppType "DRIVE_APP"

-- | TODO (b\/220205747): replace the above FILE/SUGGESTION/APP in the future.
pattern AppId_GsuiteAppType_ASSISTIVESUGGESTIONAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_ASSISTIVESUGGESTIONAPP = AppId_GsuiteAppType "ASSISTIVE_SUGGESTION_APP"

{-# COMPLETE
  AppId_GsuiteAppType_GSUITEAPPTYPEUNSPECIFIED,
  AppId_GsuiteAppType_TASKSAPP,
  AppId_GsuiteAppType_CALENDARAPP,
  AppId_GsuiteAppType_DOCSAPP,
  AppId_GsuiteAppType_SHEETSAPP,
  AppId_GsuiteAppType_SLIDESAPP,
  AppId_GsuiteAppType_MEETAPP,
  AppId_GsuiteAppType_FILESUGGESTIONAPP,
  AppId_GsuiteAppType_CONTACTSAPP,
  AppId_GsuiteAppType_ACTIVITYFEEDAPP,
  AppId_GsuiteAppType_DRIVEAPP,
  AppId_GsuiteAppType_ASSISTIVESUGGESTIONAPP,
  AppId_GsuiteAppType
  #-}

-- | The logic operator of the sub filter.
newtype CompositeFilter_LogicOperator = CompositeFilter_LogicOperator {fromCompositeFilter_LogicOperator :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Logical operators, which can only be applied to sub filters.
pattern CompositeFilter_LogicOperator_And :: CompositeFilter_LogicOperator
pattern CompositeFilter_LogicOperator_And = CompositeFilter_LogicOperator "AND"

-- |
pattern CompositeFilter_LogicOperator_OR :: CompositeFilter_LogicOperator
pattern CompositeFilter_LogicOperator_OR = CompositeFilter_LogicOperator "OR"

-- | NOT can only be applied on a single sub filter.
pattern CompositeFilter_LogicOperator_Not :: CompositeFilter_LogicOperator
pattern CompositeFilter_LogicOperator_Not = CompositeFilter_LogicOperator "NOT"

{-# COMPLETE
  CompositeFilter_LogicOperator_And,
  CompositeFilter_LogicOperator_OR,
  CompositeFilter_LogicOperator_Not,
  CompositeFilter_LogicOperator
  #-}

-- | Snapshot of the current state of the emoji, which may differ from the source-of-truth in the CustomEmojis table. This field should /never/ be persisted to Spanner.
newtype CustomEmoji_State = CustomEmoji_State {fromCustomEmoji_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern CustomEmoji_State_EMOJISTATEUNSPECIFIED :: CustomEmoji_State
pattern CustomEmoji_State_EMOJISTATEUNSPECIFIED = CustomEmoji_State "EMOJI_STATE_UNSPECIFIED"

-- | Emoji is visible and available to be used, subject to access control requirements.
pattern CustomEmoji_State_EMOJIENABLED :: CustomEmoji_State
pattern CustomEmoji_State_EMOJIENABLED = CustomEmoji_State "EMOJI_ENABLED"

-- | Emoji can no longer be used (e.g. due to a shortcode conflict), but is not removed from existing embeddings.
pattern CustomEmoji_State_EMOJISYSTEMDISABLED :: CustomEmoji_State
pattern CustomEmoji_State_EMOJISYSTEMDISABLED = CustomEmoji_State "EMOJI_SYSTEM_DISABLED"

-- | Emoji is hidden from pickers, so new usages are not allowed, but is not removed from existing embeddings.
pattern CustomEmoji_State_EMOJIHIDDEN :: CustomEmoji_State
pattern CustomEmoji_State_EMOJIHIDDEN = CustomEmoji_State "EMOJI_HIDDEN"

-- | Emoji is removed everywhere and is not available to end-users.
pattern CustomEmoji_State_EMOJIDELETED :: CustomEmoji_State
pattern CustomEmoji_State_EMOJIDELETED = CustomEmoji_State "EMOJI_DELETED"

{-# COMPLETE
  CustomEmoji_State_EMOJISTATEUNSPECIFIED,
  CustomEmoji_State_EMOJIENABLED,
  CustomEmoji_State_EMOJISYSTEMDISABLED,
  CustomEmoji_State_EMOJIHIDDEN,
  CustomEmoji_State_EMOJIDELETED,
  CustomEmoji_State
  #-}

newtype DriveFollowUpRestrict_Type = DriveFollowUpRestrict_Type {fromDriveFollowUpRestrict_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DriveFollowUpRestrict_Type_Unspecified :: DriveFollowUpRestrict_Type
pattern DriveFollowUpRestrict_Type_Unspecified = DriveFollowUpRestrict_Type "UNSPECIFIED"

-- |
pattern DriveFollowUpRestrict_Type_FOLLOWUPSUGGESTIONS :: DriveFollowUpRestrict_Type
pattern DriveFollowUpRestrict_Type_FOLLOWUPSUGGESTIONS = DriveFollowUpRestrict_Type "FOLLOWUP_SUGGESTIONS"

-- |
pattern DriveFollowUpRestrict_Type_FOLLOWUPACTIONITEMS :: DriveFollowUpRestrict_Type
pattern DriveFollowUpRestrict_Type_FOLLOWUPACTIONITEMS = DriveFollowUpRestrict_Type "FOLLOWUP_ACTION_ITEMS"

{-# COMPLETE
  DriveFollowUpRestrict_Type_Unspecified,
  DriveFollowUpRestrict_Type_FOLLOWUPSUGGESTIONS,
  DriveFollowUpRestrict_Type_FOLLOWUPACTIONITEMS,
  DriveFollowUpRestrict_Type
  #-}

newtype DriveLocationRestrict_Type = DriveLocationRestrict_Type {fromDriveLocationRestrict_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DriveLocationRestrict_Type_Unspecified :: DriveLocationRestrict_Type
pattern DriveLocationRestrict_Type_Unspecified = DriveLocationRestrict_Type "UNSPECIFIED"

-- |
pattern DriveLocationRestrict_Type_Trashed :: DriveLocationRestrict_Type
pattern DriveLocationRestrict_Type_Trashed = DriveLocationRestrict_Type "TRASHED"

-- |
pattern DriveLocationRestrict_Type_Starred :: DriveLocationRestrict_Type
pattern DriveLocationRestrict_Type_Starred = DriveLocationRestrict_Type "STARRED"

{-# COMPLETE
  DriveLocationRestrict_Type_Unspecified,
  DriveLocationRestrict_Type_Trashed,
  DriveLocationRestrict_Type_Starred,
  DriveLocationRestrict_Type
  #-}

newtype DriveMimeTypeRestrict_Type = DriveMimeTypeRestrict_Type {fromDriveMimeTypeRestrict_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DriveMimeTypeRestrict_Type_Unspecified :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Unspecified = DriveMimeTypeRestrict_Type "UNSPECIFIED"

-- |
pattern DriveMimeTypeRestrict_Type_Pdf :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Pdf = DriveMimeTypeRestrict_Type "PDF"

-- |
pattern DriveMimeTypeRestrict_Type_Document :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Document = DriveMimeTypeRestrict_Type "DOCUMENT"

-- |
pattern DriveMimeTypeRestrict_Type_Presentation :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Presentation = DriveMimeTypeRestrict_Type "PRESENTATION"

-- |
pattern DriveMimeTypeRestrict_Type_Spreadsheet :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Spreadsheet = DriveMimeTypeRestrict_Type "SPREADSHEET"

-- |
pattern DriveMimeTypeRestrict_Type_Form :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Form = DriveMimeTypeRestrict_Type "FORM"

-- |
pattern DriveMimeTypeRestrict_Type_Drawing :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Drawing = DriveMimeTypeRestrict_Type "DRAWING"

-- |
pattern DriveMimeTypeRestrict_Type_Script :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Script = DriveMimeTypeRestrict_Type "SCRIPT"

-- |
pattern DriveMimeTypeRestrict_Type_Map :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Map = DriveMimeTypeRestrict_Type "MAP"

-- |
pattern DriveMimeTypeRestrict_Type_Image :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Image = DriveMimeTypeRestrict_Type "IMAGE"

-- |
pattern DriveMimeTypeRestrict_Type_Audio :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Audio = DriveMimeTypeRestrict_Type "AUDIO"

-- |
pattern DriveMimeTypeRestrict_Type_Video :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Video = DriveMimeTypeRestrict_Type "VIDEO"

-- |
pattern DriveMimeTypeRestrict_Type_Folder :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Folder = DriveMimeTypeRestrict_Type "FOLDER"

-- |
pattern DriveMimeTypeRestrict_Type_Archive :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Archive = DriveMimeTypeRestrict_Type "ARCHIVE"

-- |
pattern DriveMimeTypeRestrict_Type_Site :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Site = DriveMimeTypeRestrict_Type "SITE"

{-# COMPLETE
  DriveMimeTypeRestrict_Type_Unspecified,
  DriveMimeTypeRestrict_Type_Pdf,
  DriveMimeTypeRestrict_Type_Document,
  DriveMimeTypeRestrict_Type_Presentation,
  DriveMimeTypeRestrict_Type_Spreadsheet,
  DriveMimeTypeRestrict_Type_Form,
  DriveMimeTypeRestrict_Type_Drawing,
  DriveMimeTypeRestrict_Type_Script,
  DriveMimeTypeRestrict_Type_Map,
  DriveMimeTypeRestrict_Type_Image,
  DriveMimeTypeRestrict_Type_Audio,
  DriveMimeTypeRestrict_Type_Video,
  DriveMimeTypeRestrict_Type_Folder,
  DriveMimeTypeRestrict_Type_Archive,
  DriveMimeTypeRestrict_Type_Site,
  DriveMimeTypeRestrict_Type
  #-}

newtype DriveTimeSpanRestrict_Type = DriveTimeSpanRestrict_Type {fromDriveTimeSpanRestrict_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DriveTimeSpanRestrict_Type_Unspecified :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_Unspecified = DriveTimeSpanRestrict_Type "UNSPECIFIED"

-- |
pattern DriveTimeSpanRestrict_Type_Today :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_Today = DriveTimeSpanRestrict_Type "TODAY"

-- |
pattern DriveTimeSpanRestrict_Type_Yesterday :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_Yesterday = DriveTimeSpanRestrict_Type "YESTERDAY"

-- |
pattern DriveTimeSpanRestrict_Type_LAST7DAYS :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_LAST7DAYS = DriveTimeSpanRestrict_Type "LAST_7_DAYS"

-- | Not Enabled
pattern DriveTimeSpanRestrict_Type_LAST30DAYS :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_LAST30DAYS = DriveTimeSpanRestrict_Type "LAST_30_DAYS"

-- | Not Enabled
pattern DriveTimeSpanRestrict_Type_LAST90DAYS :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_LAST90DAYS = DriveTimeSpanRestrict_Type "LAST_90_DAYS"

{-# COMPLETE
  DriveTimeSpanRestrict_Type_Unspecified,
  DriveTimeSpanRestrict_Type_Today,
  DriveTimeSpanRestrict_Type_Yesterday,
  DriveTimeSpanRestrict_Type_LAST7DAYS,
  DriveTimeSpanRestrict_Type_LAST30DAYS,
  DriveTimeSpanRestrict_Type_LAST90DAYS,
  DriveTimeSpanRestrict_Type
  #-}

-- | Used to specify the ordered ranking for the enumeration that determines how the integer values provided in the possible EnumValuePairs are used to rank results. If specified, integer values must be provided for all possible EnumValuePair values given for this property. Can only be used if isRepeatable is false.
newtype EnumPropertyOptions_OrderedRanking = EnumPropertyOptions_OrderedRanking {fromEnumPropertyOptions_OrderedRanking :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | There is no ranking order for the property. Results aren\'t adjusted by this property\'s value.
pattern EnumPropertyOptions_OrderedRanking_NOORDER :: EnumPropertyOptions_OrderedRanking
pattern EnumPropertyOptions_OrderedRanking_NOORDER = EnumPropertyOptions_OrderedRanking "NO_ORDER"

-- | This property is ranked in ascending order. Lower values indicate lower ranking.
pattern EnumPropertyOptions_OrderedRanking_Ascending :: EnumPropertyOptions_OrderedRanking
pattern EnumPropertyOptions_OrderedRanking_Ascending = EnumPropertyOptions_OrderedRanking "ASCENDING"

-- | This property is ranked in descending order. Lower values indicate higher ranking.
pattern EnumPropertyOptions_OrderedRanking_Descending :: EnumPropertyOptions_OrderedRanking
pattern EnumPropertyOptions_OrderedRanking_Descending = EnumPropertyOptions_OrderedRanking "DESCENDING"

{-# COMPLETE
  EnumPropertyOptions_OrderedRanking_NOORDER,
  EnumPropertyOptions_OrderedRanking_Ascending,
  EnumPropertyOptions_OrderedRanking_Descending,
  EnumPropertyOptions_OrderedRanking
  #-}

-- | The conceptual type (presentation, document, etc.) of this document.
newtype GoogleDocsMetadata_DocumentType = GoogleDocsMetadata_DocumentType {fromGoogleDocsMetadata_DocumentType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If the type is unknown or not represented in this enum.
pattern GoogleDocsMetadata_DocumentType_Unknown :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Unknown = GoogleDocsMetadata_DocumentType "UNKNOWN"

-- | Writely, Word, etc.
pattern GoogleDocsMetadata_DocumentType_Document :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Document = GoogleDocsMetadata_DocumentType "DOCUMENT"

-- | Presently, PowerPoint, etc.
pattern GoogleDocsMetadata_DocumentType_Presentation :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Presentation = GoogleDocsMetadata_DocumentType "PRESENTATION"

-- | Trix, Excel, etc.
pattern GoogleDocsMetadata_DocumentType_Spreadsheet :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Spreadsheet = GoogleDocsMetadata_DocumentType "SPREADSHEET"

-- | File types for Gdrive objects are below.
pattern GoogleDocsMetadata_DocumentType_Pdf :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Pdf = GoogleDocsMetadata_DocumentType "PDF"

-- |
pattern GoogleDocsMetadata_DocumentType_Image :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Image = GoogleDocsMetadata_DocumentType "IMAGE"

-- | Fall-back for unknown Gdrive types.
pattern GoogleDocsMetadata_DocumentType_BINARYBLOB :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_BINARYBLOB = GoogleDocsMetadata_DocumentType "BINARY_BLOB"

-- |
pattern GoogleDocsMetadata_DocumentType_FUSIONTABLE :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_FUSIONTABLE = GoogleDocsMetadata_DocumentType "FUSION_TABLE"

-- |
pattern GoogleDocsMetadata_DocumentType_Folder :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Folder = GoogleDocsMetadata_DocumentType "FOLDER"

-- |
pattern GoogleDocsMetadata_DocumentType_Drawing :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Drawing = GoogleDocsMetadata_DocumentType "DRAWING"

-- |
pattern GoogleDocsMetadata_DocumentType_Video :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Video = GoogleDocsMetadata_DocumentType "VIDEO"

-- |
pattern GoogleDocsMetadata_DocumentType_Form :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Form = GoogleDocsMetadata_DocumentType "FORM"

-- | For Atari page and site drafts
pattern GoogleDocsMetadata_DocumentType_DRAFTSITE :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_DRAFTSITE = GoogleDocsMetadata_DocumentType "DRAFT_SITE"

-- |
pattern GoogleDocsMetadata_DocumentType_DRAFTSITEPAGE :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_DRAFTSITEPAGE = GoogleDocsMetadata_DocumentType "DRAFT_SITE_PAGE"

-- | Jamboard Jams (go\/jam)
pattern GoogleDocsMetadata_DocumentType_Jam :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Jam = GoogleDocsMetadata_DocumentType "JAM"

-- | Drive Shortcuts (go\/shortcuts)
pattern GoogleDocsMetadata_DocumentType_Shortcut :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Shortcut = GoogleDocsMetadata_DocumentType "SHORTCUT"

-- |
pattern GoogleDocsMetadata_DocumentType_Script :: GoogleDocsMetadata_DocumentType
pattern GoogleDocsMetadata_DocumentType_Script = GoogleDocsMetadata_DocumentType "SCRIPT"

{-# COMPLETE
  GoogleDocsMetadata_DocumentType_Unknown,
  GoogleDocsMetadata_DocumentType_Document,
  GoogleDocsMetadata_DocumentType_Presentation,
  GoogleDocsMetadata_DocumentType_Spreadsheet,
  GoogleDocsMetadata_DocumentType_Pdf,
  GoogleDocsMetadata_DocumentType_Image,
  GoogleDocsMetadata_DocumentType_BINARYBLOB,
  GoogleDocsMetadata_DocumentType_FUSIONTABLE,
  GoogleDocsMetadata_DocumentType_Folder,
  GoogleDocsMetadata_DocumentType_Drawing,
  GoogleDocsMetadata_DocumentType_Video,
  GoogleDocsMetadata_DocumentType_Form,
  GoogleDocsMetadata_DocumentType_DRAFTSITE,
  GoogleDocsMetadata_DocumentType_DRAFTSITEPAGE,
  GoogleDocsMetadata_DocumentType_Jam,
  GoogleDocsMetadata_DocumentType_Shortcut,
  GoogleDocsMetadata_DocumentType_Script,
  GoogleDocsMetadata_DocumentType
  #-}

-- | Required. The RequestMode for this request.
newtype IndexItemRequest_Mode = IndexItemRequest_Mode {fromIndexItemRequest_Mode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Priority is not specified in the update request. Leaving priority unspecified results in an update failure.
pattern IndexItemRequest_Mode_Unspecified :: IndexItemRequest_Mode
pattern IndexItemRequest_Mode_Unspecified = IndexItemRequest_Mode "UNSPECIFIED"

-- | For real-time updates.
pattern IndexItemRequest_Mode_Synchronous :: IndexItemRequest_Mode
pattern IndexItemRequest_Mode_Synchronous = IndexItemRequest_Mode "SYNCHRONOUS"

-- | For changes that are executed after the response is sent back to the caller.
pattern IndexItemRequest_Mode_Asynchronous :: IndexItemRequest_Mode
pattern IndexItemRequest_Mode_Asynchronous = IndexItemRequest_Mode "ASYNCHRONOUS"

{-# COMPLETE
  IndexItemRequest_Mode_Unspecified,
  IndexItemRequest_Mode_Synchronous,
  IndexItemRequest_Mode_Asynchronous,
  IndexItemRequest_Mode
  #-}

-- | Used to specify the ordered ranking for the integer. Can only be used if isRepeatable is false.
newtype IntegerPropertyOptions_OrderedRanking = IntegerPropertyOptions_OrderedRanking {fromIntegerPropertyOptions_OrderedRanking :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | There is no ranking order for the property. Results are not adjusted by this property\'s value.
pattern IntegerPropertyOptions_OrderedRanking_NOORDER :: IntegerPropertyOptions_OrderedRanking
pattern IntegerPropertyOptions_OrderedRanking_NOORDER = IntegerPropertyOptions_OrderedRanking "NO_ORDER"

-- | This property is ranked in ascending order. Lower values indicate lower ranking.
pattern IntegerPropertyOptions_OrderedRanking_Ascending :: IntegerPropertyOptions_OrderedRanking
pattern IntegerPropertyOptions_OrderedRanking_Ascending = IntegerPropertyOptions_OrderedRanking "ASCENDING"

-- | This property is ranked in descending order. Lower values indicate higher ranking.
pattern IntegerPropertyOptions_OrderedRanking_Descending :: IntegerPropertyOptions_OrderedRanking
pattern IntegerPropertyOptions_OrderedRanking_Descending = IntegerPropertyOptions_OrderedRanking "DESCENDING"

{-# COMPLETE
  IntegerPropertyOptions_OrderedRanking_NOORDER,
  IntegerPropertyOptions_OrderedRanking_Ascending,
  IntegerPropertyOptions_OrderedRanking_Descending,
  IntegerPropertyOptions_OrderedRanking
  #-}

newtype Interaction_Type = Interaction_Type {fromInteraction_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid value.
pattern Interaction_Type_Unspecified :: Interaction_Type
pattern Interaction_Type_Unspecified = Interaction_Type "UNSPECIFIED"

-- | This interaction indicates the user viewed the item.
pattern Interaction_Type_View :: Interaction_Type
pattern Interaction_Type_View = Interaction_Type "VIEW"

-- | This interaction indicates the user edited the item.
pattern Interaction_Type_Edit :: Interaction_Type
pattern Interaction_Type_Edit = Interaction_Type "EDIT"

{-# COMPLETE
  Interaction_Type_Unspecified,
  Interaction_Type_View,
  Interaction_Type_Edit,
  Interaction_Type
  #-}

-- | Type for this item.
newtype Item_ItemType = Item_ItemType {fromItem_ItemType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Item_ItemType_Unspecified :: Item_ItemType
pattern Item_ItemType_Unspecified = Item_ItemType "UNSPECIFIED"

-- | An item that is indexed for the only purpose of serving information. These items cannot be referred in containerName or inheritAclFrom fields.
pattern Item_ItemType_CONTENTITEM :: Item_ItemType
pattern Item_ItemType_CONTENTITEM = Item_ItemType "CONTENT_ITEM"

-- | An item that gets indexed and whose purpose is to supply other items with ACLs and\/or contain other items.
pattern Item_ItemType_CONTAINERITEM :: Item_ItemType
pattern Item_ItemType_CONTAINERITEM = Item_ItemType "CONTAINER_ITEM"

-- | An item that does not get indexed, but otherwise has the same purpose as CONTAINER_ITEM.
pattern Item_ItemType_VIRTUALCONTAINERITEM :: Item_ItemType
pattern Item_ItemType_VIRTUALCONTAINERITEM = Item_ItemType "VIRTUAL_CONTAINER_ITEM"

{-# COMPLETE
  Item_ItemType_Unspecified,
  Item_ItemType_CONTENTITEM,
  Item_ItemType_CONTAINERITEM,
  Item_ItemType_VIRTUALCONTAINERITEM,
  Item_ItemType
  #-}

-- | Sets the type of access rules to apply when an item inherits its ACL from a parent. This should always be set in tandem with the inheritAclFrom field. Also, when the inheritAclFrom field is set, this field should be set to a valid AclInheritanceType.
newtype ItemAcl_AclInheritanceType = ItemAcl_AclInheritanceType {fromItemAcl_AclInheritanceType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value when this item does not inherit an ACL. Use NOT_APPLICABLE when inheritAclFrom is empty. An item without ACL inheritance can still have ACLs supplied by its own readers and deniedReaders fields.
pattern ItemAcl_AclInheritanceType_NOTAPPLICABLE :: ItemAcl_AclInheritanceType
pattern ItemAcl_AclInheritanceType_NOTAPPLICABLE = ItemAcl_AclInheritanceType "NOT_APPLICABLE"

-- | During an authorization conflict, the ACL of the child item determines its read access.
pattern ItemAcl_AclInheritanceType_CHILDOVERRIDE :: ItemAcl_AclInheritanceType
pattern ItemAcl_AclInheritanceType_CHILDOVERRIDE = ItemAcl_AclInheritanceType "CHILD_OVERRIDE"

-- | During an authorization conflict, the ACL of the parent item specified in the inheritAclFrom field determines read access.
pattern ItemAcl_AclInheritanceType_PARENTOVERRIDE :: ItemAcl_AclInheritanceType
pattern ItemAcl_AclInheritanceType_PARENTOVERRIDE = ItemAcl_AclInheritanceType "PARENT_OVERRIDE"

-- | Access is granted only if this item and the parent item specified in the inheritAclFrom field both permit read access.
pattern ItemAcl_AclInheritanceType_BOTHPERMIT :: ItemAcl_AclInheritanceType
pattern ItemAcl_AclInheritanceType_BOTHPERMIT = ItemAcl_AclInheritanceType "BOTH_PERMIT"

{-# COMPLETE
  ItemAcl_AclInheritanceType_NOTAPPLICABLE,
  ItemAcl_AclInheritanceType_CHILDOVERRIDE,
  ItemAcl_AclInheritanceType_PARENTOVERRIDE,
  ItemAcl_AclInheritanceType_BOTHPERMIT,
  ItemAcl_AclInheritanceType
  #-}

newtype ItemContent_ContentFormat = ItemContent_ContentFormat {fromItemContent_ContentFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid value.
pattern ItemContent_ContentFormat_Unspecified :: ItemContent_ContentFormat
pattern ItemContent_ContentFormat_Unspecified = ItemContent_ContentFormat "UNSPECIFIED"

-- | contentFormat is HTML.
pattern ItemContent_ContentFormat_Html :: ItemContent_ContentFormat
pattern ItemContent_ContentFormat_Html = ItemContent_ContentFormat "HTML"

-- | contentFormat is free text.
pattern ItemContent_ContentFormat_Text :: ItemContent_ContentFormat
pattern ItemContent_ContentFormat_Text = ItemContent_ContentFormat "TEXT"

-- | contentFormat is raw bytes.
pattern ItemContent_ContentFormat_Raw :: ItemContent_ContentFormat
pattern ItemContent_ContentFormat_Raw = ItemContent_ContentFormat "RAW"

{-# COMPLETE
  ItemContent_ContentFormat_Unspecified,
  ItemContent_ContentFormat_Html,
  ItemContent_ContentFormat_Text,
  ItemContent_ContentFormat_Raw,
  ItemContent_ContentFormat
  #-}

-- | Status of the items.
newtype ItemCountByStatus_StatusCode = ItemCountByStatus_StatusCode {fromItemCountByStatus_StatusCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Input-only value. Used with Items.list to list all items in the queue, regardless of status.
pattern ItemCountByStatus_StatusCode_CODEUNSPECIFIED :: ItemCountByStatus_StatusCode
pattern ItemCountByStatus_StatusCode_CODEUNSPECIFIED = ItemCountByStatus_StatusCode "CODE_UNSPECIFIED"

-- | Error encountered by Cloud Search while processing this item. Details of the error are in repositoryError.
pattern ItemCountByStatus_StatusCode_Error' :: ItemCountByStatus_StatusCode
pattern ItemCountByStatus_StatusCode_Error' = ItemCountByStatus_StatusCode "ERROR"

-- | Item has been modified in the repository, and is out of date with the version previously accepted into Cloud Search.
pattern ItemCountByStatus_StatusCode_Modified :: ItemCountByStatus_StatusCode
pattern ItemCountByStatus_StatusCode_Modified = ItemCountByStatus_StatusCode "MODIFIED"

-- | Item is known to exist in the repository, but is not yet accepted by Cloud Search. An item can be in this state when Items.push has been called for an item of this name that did not exist previously.
pattern ItemCountByStatus_StatusCode_NEWITEM :: ItemCountByStatus_StatusCode
pattern ItemCountByStatus_StatusCode_NEWITEM = ItemCountByStatus_StatusCode "NEW_ITEM"

-- | API has accepted the up-to-date data of this item.
pattern ItemCountByStatus_StatusCode_Accepted :: ItemCountByStatus_StatusCode
pattern ItemCountByStatus_StatusCode_Accepted = ItemCountByStatus_StatusCode "ACCEPTED"

{-# COMPLETE
  ItemCountByStatus_StatusCode_CODEUNSPECIFIED,
  ItemCountByStatus_StatusCode_Error',
  ItemCountByStatus_StatusCode_Modified,
  ItemCountByStatus_StatusCode_NEWITEM,
  ItemCountByStatus_StatusCode_Accepted,
  ItemCountByStatus_StatusCode
  #-}

-- | Status code.
newtype ItemStatus_Code = ItemStatus_Code {fromItemStatus_Code :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Input-only value. Used with Items.list to list all items in the queue, regardless of status.
pattern ItemStatus_Code_CODEUNSPECIFIED :: ItemStatus_Code
pattern ItemStatus_Code_CODEUNSPECIFIED = ItemStatus_Code "CODE_UNSPECIFIED"

-- | Error encountered by Cloud Search while processing this item. Details of the error are in repositoryError.
pattern ItemStatus_Code_Error' :: ItemStatus_Code
pattern ItemStatus_Code_Error' = ItemStatus_Code "ERROR"

-- | Item has been modified in the repository, and is out of date with the version previously accepted into Cloud Search.
pattern ItemStatus_Code_Modified :: ItemStatus_Code
pattern ItemStatus_Code_Modified = ItemStatus_Code "MODIFIED"

-- | Item is known to exist in the repository, but is not yet accepted by Cloud Search. An item can be in this state when Items.push has been called for an item of this name that did not exist previously.
pattern ItemStatus_Code_NEWITEM :: ItemStatus_Code
pattern ItemStatus_Code_NEWITEM = ItemStatus_Code "NEW_ITEM"

-- | API has accepted the up-to-date data of this item.
pattern ItemStatus_Code_Accepted :: ItemStatus_Code
pattern ItemStatus_Code_Accepted = ItemStatus_Code "ACCEPTED"

{-# COMPLETE
  ItemStatus_Code_CODEUNSPECIFIED,
  ItemStatus_Code_Error',
  ItemStatus_Code_Modified,
  ItemStatus_Code_NEWITEM,
  ItemStatus_Code_Accepted,
  ItemStatus_Code
  #-}

newtype PollItemsRequest_StatusCodesItem = PollItemsRequest_StatusCodesItem {fromPollItemsRequest_StatusCodesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Input-only value. Used with Items.list to list all items in the queue, regardless of status.
pattern PollItemsRequest_StatusCodesItem_CODEUNSPECIFIED :: PollItemsRequest_StatusCodesItem
pattern PollItemsRequest_StatusCodesItem_CODEUNSPECIFIED = PollItemsRequest_StatusCodesItem "CODE_UNSPECIFIED"

-- | Error encountered by Cloud Search while processing this item. Details of the error are in repositoryError.
pattern PollItemsRequest_StatusCodesItem_Error' :: PollItemsRequest_StatusCodesItem
pattern PollItemsRequest_StatusCodesItem_Error' = PollItemsRequest_StatusCodesItem "ERROR"

-- | Item has been modified in the repository, and is out of date with the version previously accepted into Cloud Search.
pattern PollItemsRequest_StatusCodesItem_Modified :: PollItemsRequest_StatusCodesItem
pattern PollItemsRequest_StatusCodesItem_Modified = PollItemsRequest_StatusCodesItem "MODIFIED"

-- | Item is known to exist in the repository, but is not yet accepted by Cloud Search. An item can be in this state when Items.push has been called for an item of this name that did not exist previously.
pattern PollItemsRequest_StatusCodesItem_NEWITEM :: PollItemsRequest_StatusCodesItem
pattern PollItemsRequest_StatusCodesItem_NEWITEM = PollItemsRequest_StatusCodesItem "NEW_ITEM"

-- | API has accepted the up-to-date data of this item.
pattern PollItemsRequest_StatusCodesItem_Accepted :: PollItemsRequest_StatusCodesItem
pattern PollItemsRequest_StatusCodesItem_Accepted = PollItemsRequest_StatusCodesItem "ACCEPTED"

{-# COMPLETE
  PollItemsRequest_StatusCodesItem_CODEUNSPECIFIED,
  PollItemsRequest_StatusCodesItem_Error',
  PollItemsRequest_StatusCodesItem_Modified,
  PollItemsRequest_StatusCodesItem_NEWITEM,
  PollItemsRequest_StatusCodesItem_Accepted,
  PollItemsRequest_StatusCodesItem
  #-}

-- | Error code indicating the nature of the error.
newtype ProcessingError_Code = ProcessingError_Code {fromProcessingError_Code :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Input only value. Use this value in Items.
pattern ProcessingError_Code_PROCESSINGERRORCODEUNSPECIFIED :: ProcessingError_Code
pattern ProcessingError_Code_PROCESSINGERRORCODEUNSPECIFIED = ProcessingError_Code "PROCESSING_ERROR_CODE_UNSPECIFIED"

-- | Item\'s ACL, metadata, or content is malformed or in invalid state. FieldViolations contains more details on where the problem is.
pattern ProcessingError_Code_MALFORMEDREQUEST :: ProcessingError_Code
pattern ProcessingError_Code_MALFORMEDREQUEST = ProcessingError_Code "MALFORMED_REQUEST"

-- | Countent format is unsupported.
pattern ProcessingError_Code_UNSUPPORTEDCONTENTFORMAT :: ProcessingError_Code
pattern ProcessingError_Code_UNSUPPORTEDCONTENTFORMAT = ProcessingError_Code "UNSUPPORTED_CONTENT_FORMAT"

-- | Items with incomplete ACL information due to inheriting other items with broken ACL or having groups with unmapped descendants.
pattern ProcessingError_Code_INDIRECTBROKENACL :: ProcessingError_Code
pattern ProcessingError_Code_INDIRECTBROKENACL = ProcessingError_Code "INDIRECT_BROKEN_ACL"

-- | ACL inheritance graph formed a cycle.
pattern ProcessingError_Code_ACLCYCLE :: ProcessingError_Code
pattern ProcessingError_Code_ACLCYCLE = ProcessingError_Code "ACL_CYCLE"

{-# COMPLETE
  ProcessingError_Code_PROCESSINGERRORCODEUNSPECIFIED,
  ProcessingError_Code_MALFORMEDREQUEST,
  ProcessingError_Code_UNSUPPORTEDCONTENTFORMAT,
  ProcessingError_Code_INDIRECTBROKENACL,
  ProcessingError_Code_ACLCYCLE,
  ProcessingError_Code
  #-}

-- | The type of the push operation that defines the push behavior.
newtype PushItem_Type = PushItem_Type {fromPushItem_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default UNSPECIFIED. Specifies that the push operation should not modify ItemStatus
pattern PushItem_Type_Unspecified :: PushItem_Type
pattern PushItem_Type_Unspecified = PushItem_Type "UNSPECIFIED"

-- | Indicates that the repository document has been modified or updated since the previous update call. This changes status to MODIFIED state for an existing item. If this is called on a non existing item, the status is changed to NEW_ITEM.
pattern PushItem_Type_Modified :: PushItem_Type
pattern PushItem_Type_Modified = PushItem_Type "MODIFIED"

-- | Item in the repository has not been modified since the last update call. This push operation will set status to ACCEPTED state.
pattern PushItem_Type_NOTMODIFIED :: PushItem_Type
pattern PushItem_Type_NOTMODIFIED = PushItem_Type "NOT_MODIFIED"

-- | Connector is facing a repository error regarding this item. Change status to REPOSITORY_ERROR state. Item is unreserved and rescheduled at a future time determined by exponential backoff.
pattern PushItem_Type_REPOSITORYERROR :: PushItem_Type
pattern PushItem_Type_REPOSITORYERROR = PushItem_Type "REPOSITORY_ERROR"

-- | Call push with REQUEUE only for items that have been reserved. This action unreserves the item and resets its available time to the wall clock time.
pattern PushItem_Type_Requeue :: PushItem_Type
pattern PushItem_Type_Requeue = PushItem_Type "REQUEUE"

{-# COMPLETE
  PushItem_Type_Unspecified,
  PushItem_Type_Modified,
  PushItem_Type_NOTMODIFIED,
  PushItem_Type_REPOSITORYERROR,
  PushItem_Type_Requeue,
  PushItem_Type
  #-}

newtype QueryInterpretation_InterpretationType = QueryInterpretation_InterpretationType {fromQueryInterpretation_InterpretationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Neither the natural language interpretation, nor a broader version of the query is used to fetch the search results.
pattern QueryInterpretation_InterpretationType_None :: QueryInterpretation_InterpretationType
pattern QueryInterpretation_InterpretationType_None = QueryInterpretation_InterpretationType "NONE"

-- | The results from original query are blended with other results. The reason for blending these other results with the results from original query is populated in the \'Reason\' field below.
pattern QueryInterpretation_InterpretationType_Blend :: QueryInterpretation_InterpretationType
pattern QueryInterpretation_InterpretationType_Blend = QueryInterpretation_InterpretationType "BLEND"

-- | The results from original query are replaced. The reason for replacing the results from original query is populated in the \'Reason\' field below.
pattern QueryInterpretation_InterpretationType_Replace :: QueryInterpretation_InterpretationType
pattern QueryInterpretation_InterpretationType_Replace = QueryInterpretation_InterpretationType "REPLACE"

{-# COMPLETE
  QueryInterpretation_InterpretationType_None,
  QueryInterpretation_InterpretationType_Blend,
  QueryInterpretation_InterpretationType_Replace,
  QueryInterpretation_InterpretationType
  #-}

-- | The reason for interpretation of the query. This field will not be UNSPECIFIED if the interpretation type is not NONE.
newtype QueryInterpretation_Reason = QueryInterpretation_Reason {fromQueryInterpretation_Reason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern QueryInterpretation_Reason_Unspecified :: QueryInterpretation_Reason
pattern QueryInterpretation_Reason_Unspecified = QueryInterpretation_Reason "UNSPECIFIED"

-- | Natural language interpretation of the query is used to fetch the search results.
pattern QueryInterpretation_Reason_QUERYHASNATURALLANGUAGEINTENT :: QueryInterpretation_Reason
pattern QueryInterpretation_Reason_QUERYHASNATURALLANGUAGEINTENT = QueryInterpretation_Reason "QUERY_HAS_NATURAL_LANGUAGE_INTENT"

-- | Query and document terms similarity is used to selectively broaden the query to retrieve additional search results since enough results were not found for the user query. Interpreted query will be empty for this case.
pattern QueryInterpretation_Reason_NOTENOUGHRESULTSFOUNDFORUSERQUERY :: QueryInterpretation_Reason
pattern QueryInterpretation_Reason_NOTENOUGHRESULTSFOUNDFORUSERQUERY = QueryInterpretation_Reason "NOT_ENOUGH_RESULTS_FOUND_FOR_USER_QUERY"

{-# COMPLETE
  QueryInterpretation_Reason_Unspecified,
  QueryInterpretation_Reason_QUERYHASNATURALLANGUAGEINTENT,
  QueryInterpretation_Reason_NOTENOUGHRESULTSFOUNDFORUSERQUERY,
  QueryInterpretation_Reason
  #-}

-- | Type of the operator.
newtype QueryOperator_Type = QueryOperator_Type {fromQueryOperator_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid value.
pattern QueryOperator_Type_Unknown :: QueryOperator_Type
pattern QueryOperator_Type_Unknown = QueryOperator_Type "UNKNOWN"

-- |
pattern QueryOperator_Type_Integer :: QueryOperator_Type
pattern QueryOperator_Type_Integer = QueryOperator_Type "INTEGER"

-- |
pattern QueryOperator_Type_Double :: QueryOperator_Type
pattern QueryOperator_Type_Double = QueryOperator_Type "DOUBLE"

-- |
pattern QueryOperator_Type_Timestamp :: QueryOperator_Type
pattern QueryOperator_Type_Timestamp = QueryOperator_Type "TIMESTAMP"

-- |
pattern QueryOperator_Type_Boolean :: QueryOperator_Type
pattern QueryOperator_Type_Boolean = QueryOperator_Type "BOOLEAN"

-- |
pattern QueryOperator_Type_Enum' :: QueryOperator_Type
pattern QueryOperator_Type_Enum' = QueryOperator_Type "ENUM"

-- |
pattern QueryOperator_Type_Date :: QueryOperator_Type
pattern QueryOperator_Type_Date = QueryOperator_Type "DATE"

-- |
pattern QueryOperator_Type_Text :: QueryOperator_Type
pattern QueryOperator_Type_Text = QueryOperator_Type "TEXT"

-- |
pattern QueryOperator_Type_Html :: QueryOperator_Type
pattern QueryOperator_Type_Html = QueryOperator_Type "HTML"

{-# COMPLETE
  QueryOperator_Type_Unknown,
  QueryOperator_Type_Integer,
  QueryOperator_Type_Double,
  QueryOperator_Type_Timestamp,
  QueryOperator_Type_Boolean,
  QueryOperator_Type_Enum',
  QueryOperator_Type_Date,
  QueryOperator_Type_Text,
  QueryOperator_Type_Html,
  QueryOperator_Type
  #-}

-- | Type of error.
newtype RepositoryError_Type = RepositoryError_Type {fromRepositoryError_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown error.
pattern RepositoryError_Type_Unknown :: RepositoryError_Type
pattern RepositoryError_Type_Unknown = RepositoryError_Type "UNKNOWN"

-- | Unknown or unreachable host.
pattern RepositoryError_Type_NETWORKERROR :: RepositoryError_Type
pattern RepositoryError_Type_NETWORKERROR = RepositoryError_Type "NETWORK_ERROR"

-- | DNS problem, such as the DNS server is not responding.
pattern RepositoryError_Type_DNSERROR :: RepositoryError_Type
pattern RepositoryError_Type_DNSERROR = RepositoryError_Type "DNS_ERROR"

-- | Cannot connect to the repository server.
pattern RepositoryError_Type_CONNECTIONERROR :: RepositoryError_Type
pattern RepositoryError_Type_CONNECTIONERROR = RepositoryError_Type "CONNECTION_ERROR"

-- | Failed authentication due to incorrect credentials.
pattern RepositoryError_Type_AUTHENTICATIONERROR :: RepositoryError_Type
pattern RepositoryError_Type_AUTHENTICATIONERROR = RepositoryError_Type "AUTHENTICATION_ERROR"

-- | Service account is not authorized for the repository.
pattern RepositoryError_Type_AUTHORIZATIONERROR :: RepositoryError_Type
pattern RepositoryError_Type_AUTHORIZATIONERROR = RepositoryError_Type "AUTHORIZATION_ERROR"

-- | Repository server error.
pattern RepositoryError_Type_SERVERERROR :: RepositoryError_Type
pattern RepositoryError_Type_SERVERERROR = RepositoryError_Type "SERVER_ERROR"

-- | Quota exceeded.
pattern RepositoryError_Type_QUOTAEXCEEDED :: RepositoryError_Type
pattern RepositoryError_Type_QUOTAEXCEEDED = RepositoryError_Type "QUOTA_EXCEEDED"

-- | Server temporarily unavailable.
pattern RepositoryError_Type_SERVICEUNAVAILABLE :: RepositoryError_Type
pattern RepositoryError_Type_SERVICEUNAVAILABLE = RepositoryError_Type "SERVICE_UNAVAILABLE"

-- | Client-related error, such as an invalid request from the connector to the repository server.
pattern RepositoryError_Type_CLIENTERROR :: RepositoryError_Type
pattern RepositoryError_Type_CLIENTERROR = RepositoryError_Type "CLIENT_ERROR"

{-# COMPLETE
  RepositoryError_Type_Unknown,
  RepositoryError_Type_NETWORKERROR,
  RepositoryError_Type_DNSERROR,
  RepositoryError_Type_CONNECTIONERROR,
  RepositoryError_Type_AUTHENTICATIONERROR,
  RepositoryError_Type_AUTHORIZATIONERROR,
  RepositoryError_Type_SERVERERROR,
  RepositoryError_Type_QUOTAEXCEEDED,
  RepositoryError_Type_SERVICEUNAVAILABLE,
  RepositoryError_Type_CLIENTERROR,
  RepositoryError_Type
  #-}

-- | Indicates the ranking importance given to property when it is matched during retrieval. Once set, the token importance of a property cannot be changed.
newtype RetrievalImportance_Importance = RetrievalImportance_Importance {fromRetrievalImportance_Importance :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Treat the match like a body text match.
pattern RetrievalImportance_Importance_Default :: RetrievalImportance_Importance
pattern RetrievalImportance_Importance_Default = RetrievalImportance_Importance "DEFAULT"

-- | Treat the match like a match against title of the item.
pattern RetrievalImportance_Importance_Highest :: RetrievalImportance_Importance
pattern RetrievalImportance_Importance_Highest = RetrievalImportance_Importance "HIGHEST"

-- | Treat the match with higher importance than body text.
pattern RetrievalImportance_Importance_High :: RetrievalImportance_Importance
pattern RetrievalImportance_Importance_High = RetrievalImportance_Importance "HIGH"

-- | Treat the match with lower importance than body text.
pattern RetrievalImportance_Importance_Low :: RetrievalImportance_Importance
pattern RetrievalImportance_Importance_Low = RetrievalImportance_Importance "LOW"

-- | Do not match against this field during retrieval. The property can still be used for operator matching, faceting, and suggest if desired.
pattern RetrievalImportance_Importance_None :: RetrievalImportance_Importance
pattern RetrievalImportance_Importance_None = RetrievalImportance_Importance "NONE"

{-# COMPLETE
  RetrievalImportance_Importance_Default,
  RetrievalImportance_Importance_Highest,
  RetrievalImportance_Importance_High,
  RetrievalImportance_Importance_Low,
  RetrievalImportance_Importance_None,
  RetrievalImportance_Importance
  #-}

-- | The scope to which the content was shared.
newtype ShareScope_Scope = ShareScope_Scope {fromShareScope_Scope :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern ShareScope_Scope_Unknown :: ShareScope_Scope
pattern ShareScope_Scope_Unknown = ShareScope_Scope "UNKNOWN"

-- | Only the author can view the post.
pattern ShareScope_Scope_Private :: ShareScope_Scope
pattern ShareScope_Scope_Private = ShareScope_Scope "PRIVATE"

-- | Viewable only by a set of people.
pattern ShareScope_Scope_Limited :: ShareScope_Scope
pattern ShareScope_Scope_Limited = ShareScope_Scope "LIMITED"

-- | Viewable by extended circles.
pattern ShareScope_Scope_Extended :: ShareScope_Scope
pattern ShareScope_Scope_Extended = ShareScope_Scope "EXTENDED"

-- |
pattern ShareScope_Scope_DASHERDOMAIN :: ShareScope_Scope
pattern ShareScope_Scope_DASHERDOMAIN = ShareScope_Scope "DASHER_DOMAIN"

-- |
pattern ShareScope_Scope_Public :: ShareScope_Scope
pattern ShareScope_Scope_Public = ShareScope_Scope "PUBLIC"

{-# COMPLETE
  ShareScope_Scope_Unknown,
  ShareScope_Scope_Private,
  ShareScope_Scope_Limited,
  ShareScope_Scope_Extended,
  ShareScope_Scope_DASHERDOMAIN,
  ShareScope_Scope_Public,
  ShareScope_Scope
  #-}

-- | Ascending is the default sort order
newtype SortOptions_SortOrder = SortOptions_SortOrder {fromSortOptions_SortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern SortOptions_SortOrder_Ascending :: SortOptions_SortOrder
pattern SortOptions_SortOrder_Ascending = SortOptions_SortOrder "ASCENDING"

-- |
pattern SortOptions_SortOrder_Descending :: SortOptions_SortOrder
pattern SortOptions_SortOrder_Descending = SortOptions_SortOrder "DESCENDING"

{-# COMPLETE
  SortOptions_SortOrder_Ascending,
  SortOptions_SortOrder_Descending,
  SortOptions_SortOrder
  #-}

-- | Predefined content source for Google Apps.
newtype Source_PredefinedSource = Source_PredefinedSource {fromSource_PredefinedSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Source_PredefinedSource_None :: Source_PredefinedSource
pattern Source_PredefinedSource_None = Source_PredefinedSource "NONE"

-- | Suggests queries issued by the user in the past. Only valid when used with the suggest API. Ignored when used in the query API.
pattern Source_PredefinedSource_QUERYHISTORY :: Source_PredefinedSource
pattern Source_PredefinedSource_QUERYHISTORY = Source_PredefinedSource "QUERY_HISTORY"

-- | Suggests people in the organization. Only valid when used with the suggest API. Results in an error when used in the query API.
pattern Source_PredefinedSource_Person :: Source_PredefinedSource
pattern Source_PredefinedSource_Person = Source_PredefinedSource "PERSON"

-- |
pattern Source_PredefinedSource_GOOGLEDRIVE :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLEDRIVE = Source_PredefinedSource "GOOGLE_DRIVE"

-- |
pattern Source_PredefinedSource_GOOGLEGMAIL :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLEGMAIL = Source_PredefinedSource "GOOGLE_GMAIL"

-- |
pattern Source_PredefinedSource_GOOGLESITES :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLESITES = Source_PredefinedSource "GOOGLE_SITES"

-- |
pattern Source_PredefinedSource_GOOGLEGROUPS :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLEGROUPS = Source_PredefinedSource "GOOGLE_GROUPS"

-- |
pattern Source_PredefinedSource_GOOGLECALENDAR :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLECALENDAR = Source_PredefinedSource "GOOGLE_CALENDAR"

-- |
pattern Source_PredefinedSource_GOOGLEKEEP :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLEKEEP = Source_PredefinedSource "GOOGLE_KEEP"

{-# COMPLETE
  Source_PredefinedSource_None,
  Source_PredefinedSource_QUERYHISTORY,
  Source_PredefinedSource_Person,
  Source_PredefinedSource_GOOGLEDRIVE,
  Source_PredefinedSource_GOOGLEGMAIL,
  Source_PredefinedSource_GOOGLESITES,
  Source_PredefinedSource_GOOGLEGROUPS,
  Source_PredefinedSource_GOOGLECALENDAR,
  Source_PredefinedSource_GOOGLEKEEP,
  Source_PredefinedSource
  #-}

-- | Importance of the source.
newtype SourceScoringConfig_SourceImportance = SourceScoringConfig_SourceImportance {fromSourceScoringConfig_SourceImportance :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern SourceScoringConfig_SourceImportance_Default :: SourceScoringConfig_SourceImportance
pattern SourceScoringConfig_SourceImportance_Default = SourceScoringConfig_SourceImportance "DEFAULT"

-- |
pattern SourceScoringConfig_SourceImportance_Low :: SourceScoringConfig_SourceImportance
pattern SourceScoringConfig_SourceImportance_Low = SourceScoringConfig_SourceImportance "LOW"

-- |
pattern SourceScoringConfig_SourceImportance_High :: SourceScoringConfig_SourceImportance
pattern SourceScoringConfig_SourceImportance_High = SourceScoringConfig_SourceImportance "HIGH"

{-# COMPLETE
  SourceScoringConfig_SourceImportance_Default,
  SourceScoringConfig_SourceImportance_Low,
  SourceScoringConfig_SourceImportance_High,
  SourceScoringConfig_SourceImportance
  #-}

-- | searching user\'s membership state in this space
newtype SpaceInfo_UserMembershipState = SpaceInfo_UserMembershipState {fromSpaceInfo_UserMembershipState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default state, do not use
pattern SpaceInfo_UserMembershipState_MEMBERUNKNOWN :: SpaceInfo_UserMembershipState
pattern SpaceInfo_UserMembershipState_MEMBERUNKNOWN = SpaceInfo_UserMembershipState "MEMBER_UNKNOWN"

-- | An invitation to the space has been sent
pattern SpaceInfo_UserMembershipState_MEMBERINVITED :: SpaceInfo_UserMembershipState
pattern SpaceInfo_UserMembershipState_MEMBERINVITED = SpaceInfo_UserMembershipState "MEMBER_INVITED"

-- | User has joined the space
pattern SpaceInfo_UserMembershipState_MEMBERJOINED :: SpaceInfo_UserMembershipState
pattern SpaceInfo_UserMembershipState_MEMBERJOINED = SpaceInfo_UserMembershipState "MEMBER_JOINED"

-- | User is not a member
pattern SpaceInfo_UserMembershipState_MEMBERNOTAMEMBER :: SpaceInfo_UserMembershipState
pattern SpaceInfo_UserMembershipState_MEMBERNOTAMEMBER = SpaceInfo_UserMembershipState "MEMBER_NOT_A_MEMBER"

-- | This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.
pattern SpaceInfo_UserMembershipState_MEMBERFAILED :: SpaceInfo_UserMembershipState
pattern SpaceInfo_UserMembershipState_MEMBERFAILED = SpaceInfo_UserMembershipState "MEMBER_FAILED"

{-# COMPLETE
  SpaceInfo_UserMembershipState_MEMBERUNKNOWN,
  SpaceInfo_UserMembershipState_MEMBERINVITED,
  SpaceInfo_UserMembershipState_MEMBERJOINED,
  SpaceInfo_UserMembershipState_MEMBERNOTAMEMBER,
  SpaceInfo_UserMembershipState_MEMBERFAILED,
  SpaceInfo_UserMembershipState
  #-}

-- | The resolution status for the external identity.
newtype UnmappedIdentity_ResolutionStatusCode = UnmappedIdentity_ResolutionStatusCode {fromUnmappedIdentity_ResolutionStatusCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Input-only value. Used to list all unmapped identities regardless of status.
pattern UnmappedIdentity_ResolutionStatusCode_CODEUNSPECIFIED :: UnmappedIdentity_ResolutionStatusCode
pattern UnmappedIdentity_ResolutionStatusCode_CODEUNSPECIFIED = UnmappedIdentity_ResolutionStatusCode "CODE_UNSPECIFIED"

-- | The unmapped identity was not found in IDaaS, and needs to be provided by the user.
pattern UnmappedIdentity_ResolutionStatusCode_NOTFOUND :: UnmappedIdentity_ResolutionStatusCode
pattern UnmappedIdentity_ResolutionStatusCode_NOTFOUND = UnmappedIdentity_ResolutionStatusCode "NOT_FOUND"

-- | The identity source associated with the identity was either not found or deleted.
pattern UnmappedIdentity_ResolutionStatusCode_IDENTITYSOURCENOTFOUND :: UnmappedIdentity_ResolutionStatusCode
pattern UnmappedIdentity_ResolutionStatusCode_IDENTITYSOURCENOTFOUND = UnmappedIdentity_ResolutionStatusCode "IDENTITY_SOURCE_NOT_FOUND"

-- | IDaaS does not understand the identity source, probably because the schema was modified in a non compatible way.
pattern UnmappedIdentity_ResolutionStatusCode_IDENTITYSOURCEMISCONFIGURED :: UnmappedIdentity_ResolutionStatusCode
pattern UnmappedIdentity_ResolutionStatusCode_IDENTITYSOURCEMISCONFIGURED = UnmappedIdentity_ResolutionStatusCode "IDENTITY_SOURCE_MISCONFIGURED"

-- | The number of users associated with the external identity is too large.
pattern UnmappedIdentity_ResolutionStatusCode_TOOMANYMAPPINGSFOUND :: UnmappedIdentity_ResolutionStatusCode
pattern UnmappedIdentity_ResolutionStatusCode_TOOMANYMAPPINGSFOUND = UnmappedIdentity_ResolutionStatusCode "TOO_MANY_MAPPINGS_FOUND"

-- | Internal error.
pattern UnmappedIdentity_ResolutionStatusCode_INTERNALERROR :: UnmappedIdentity_ResolutionStatusCode
pattern UnmappedIdentity_ResolutionStatusCode_INTERNALERROR = UnmappedIdentity_ResolutionStatusCode "INTERNAL_ERROR"

{-# COMPLETE
  UnmappedIdentity_ResolutionStatusCode_CODEUNSPECIFIED,
  UnmappedIdentity_ResolutionStatusCode_NOTFOUND,
  UnmappedIdentity_ResolutionStatusCode_IDENTITYSOURCENOTFOUND,
  UnmappedIdentity_ResolutionStatusCode_IDENTITYSOURCEMISCONFIGURED,
  UnmappedIdentity_ResolutionStatusCode_TOOMANYMAPPINGSFOUND,
  UnmappedIdentity_ResolutionStatusCode_INTERNALERROR,
  UnmappedIdentity_ResolutionStatusCode
  #-}

-- | Clients do not need to send UserType to Backend, but Backend will always send this field to clients per the following rule: 1. For HUMAN Ids, the field is empty but by default .getType() will return HUMAN. 2. For BOT Ids, the field is ALWAYS set to BOT.
newtype UserId_Type = UserId_Type {fromUserId_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Notes on HUMAN type: 1) Leaving UserId.UserType field empty will return HUMAN as default value. This is expected because all the existing UserIds are without explicitly setting UserType, most of which are HUMAN Ids. For Bot Ids we will always set BOT in UserType field. 2) DO NOT explicitly set HUMAN as type. This is a proto2 issue, that a UserId with explicitly set default value HUMAN as type is NOT equal to an id without setting the field. aka. UserId id1 = UserId.newBuilder() .setId(\"dummy\").setType(UserType.HUMAN).build(); UserId id2 = UserId.newBuilder().setId(\"dummy\").build(); AssertThat(id1).isNotEqual(id2); AssertThat(id2.getType()).isEqualTo(UserType.HUMAN);
pattern UserId_Type_Human :: UserId_Type
pattern UserId_Type_Human = UserId_Type "HUMAN"

-- |
pattern UserId_Type_Bot :: UserId_Type
pattern UserId_Type_Bot = UserId_Type "BOT"

{-# COMPLETE
  UserId_Type_Human,
  UserId_Type_Bot,
  UserId_Type
  #-}

-- | Limit users selection to this status.
newtype DebugIdentitysourcesUnmappedidsListResolutionStatusCode = DebugIdentitysourcesUnmappedidsListResolutionStatusCode {fromDebugIdentitysourcesUnmappedidsListResolutionStatusCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Input-only value. Used to list all unmapped identities regardless of status.
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_CODEUNSPECIFIED :: DebugIdentitysourcesUnmappedidsListResolutionStatusCode
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_CODEUNSPECIFIED = DebugIdentitysourcesUnmappedidsListResolutionStatusCode "CODE_UNSPECIFIED"

-- | The unmapped identity was not found in IDaaS, and needs to be provided by the user.
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_NOTFOUND :: DebugIdentitysourcesUnmappedidsListResolutionStatusCode
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_NOTFOUND = DebugIdentitysourcesUnmappedidsListResolutionStatusCode "NOT_FOUND"

-- | The identity source associated with the identity was either not found or deleted.
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_IDENTITYSOURCENOTFOUND :: DebugIdentitysourcesUnmappedidsListResolutionStatusCode
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_IDENTITYSOURCENOTFOUND = DebugIdentitysourcesUnmappedidsListResolutionStatusCode "IDENTITY_SOURCE_NOT_FOUND"

-- | IDaaS does not understand the identity source, probably because the schema was modified in a non compatible way.
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_IDENTITYSOURCEMISCONFIGURED :: DebugIdentitysourcesUnmappedidsListResolutionStatusCode
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_IDENTITYSOURCEMISCONFIGURED = DebugIdentitysourcesUnmappedidsListResolutionStatusCode "IDENTITY_SOURCE_MISCONFIGURED"

-- | The number of users associated with the external identity is too large.
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_TOOMANYMAPPINGSFOUND :: DebugIdentitysourcesUnmappedidsListResolutionStatusCode
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_TOOMANYMAPPINGSFOUND = DebugIdentitysourcesUnmappedidsListResolutionStatusCode "TOO_MANY_MAPPINGS_FOUND"

-- | Internal error.
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_INTERNALERROR :: DebugIdentitysourcesUnmappedidsListResolutionStatusCode
pattern DebugIdentitysourcesUnmappedidsListResolutionStatusCode_INTERNALERROR = DebugIdentitysourcesUnmappedidsListResolutionStatusCode "INTERNAL_ERROR"

{-# COMPLETE
  DebugIdentitysourcesUnmappedidsListResolutionStatusCode_CODEUNSPECIFIED,
  DebugIdentitysourcesUnmappedidsListResolutionStatusCode_NOTFOUND,
  DebugIdentitysourcesUnmappedidsListResolutionStatusCode_IDENTITYSOURCENOTFOUND,
  DebugIdentitysourcesUnmappedidsListResolutionStatusCode_IDENTITYSOURCEMISCONFIGURED,
  DebugIdentitysourcesUnmappedidsListResolutionStatusCode_TOOMANYMAPPINGSFOUND,
  DebugIdentitysourcesUnmappedidsListResolutionStatusCode_INTERNALERROR,
  DebugIdentitysourcesUnmappedidsListResolutionStatusCode
  #-}

-- | Required. The RequestMode for this request.
newtype IndexingDatasourcesItemsDeleteMode = IndexingDatasourcesItemsDeleteMode {fromIndexingDatasourcesItemsDeleteMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Priority is not specified in the update request. Leaving priority unspecified results in an update failure.
pattern IndexingDatasourcesItemsDeleteMode_Unspecified :: IndexingDatasourcesItemsDeleteMode
pattern IndexingDatasourcesItemsDeleteMode_Unspecified = IndexingDatasourcesItemsDeleteMode "UNSPECIFIED"

-- | For real-time updates.
pattern IndexingDatasourcesItemsDeleteMode_Synchronous :: IndexingDatasourcesItemsDeleteMode
pattern IndexingDatasourcesItemsDeleteMode_Synchronous = IndexingDatasourcesItemsDeleteMode "SYNCHRONOUS"

-- | For changes that are executed after the response is sent back to the caller.
pattern IndexingDatasourcesItemsDeleteMode_Asynchronous :: IndexingDatasourcesItemsDeleteMode
pattern IndexingDatasourcesItemsDeleteMode_Asynchronous = IndexingDatasourcesItemsDeleteMode "ASYNCHRONOUS"

{-# COMPLETE
  IndexingDatasourcesItemsDeleteMode_Unspecified,
  IndexingDatasourcesItemsDeleteMode_Synchronous,
  IndexingDatasourcesItemsDeleteMode_Asynchronous,
  IndexingDatasourcesItemsDeleteMode
  #-}
