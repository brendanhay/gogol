{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.CloudSearch.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudSearch.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * BackgroundColoredText_BackgroundColor
    BackgroundColoredText_BackgroundColor
      ( BackgroundColoredText_BackgroundColor_UNKNOWNCOLOR,
        BackgroundColoredText_BackgroundColor_White,
        BackgroundColoredText_BackgroundColor_Yellow,
        BackgroundColoredText_BackgroundColor_Orange,
        BackgroundColoredText_BackgroundColor_Green,
        BackgroundColoredText_BackgroundColor_Blue,
        BackgroundColoredText_BackgroundColor_Grey,
        ..
      ),

    -- * CompositeFilter_LogicOperator
    CompositeFilter_LogicOperator
      ( CompositeFilter_LogicOperator_And,
        CompositeFilter_LogicOperator_OR,
        CompositeFilter_LogicOperator_Not,
        ..
      ),

    -- * Context_AppItem
    Context_AppItem
      ( Context_AppItem_UNKNOWNAPP,
        Context_AppItem_Topaz,
        Context_AppItem_Moma,
        ..
      ),

    -- * Context_SurfaceItem
    Context_SurfaceItem
      ( Context_SurfaceItem_UNKNOWNSURFACE,
        Context_SurfaceItem_Desktop,
        Context_SurfaceItem_Android,
        Context_SurfaceItem_Ios,
        Context_SurfaceItem_Mobile,
        Context_SurfaceItem_Any,
        ..
      ),

    -- * Context_TypeItem
    Context_TypeItem
      ( Context_TypeItem_UNKNOWNCARDTYPE,
        Context_TypeItem_HOMEPAGECARD,
        Context_TypeItem_ANSWERCARD,
        Context_TypeItem_RHSCARD,
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

    -- * EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type
    EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type
      ( EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Unknown,
        EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Mobile,
        EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Office,
        EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Other,
        ..
      ),

    -- * EnterpriseTopazSidekickAgendaEntry_Chronology
    EnterpriseTopazSidekickAgendaEntry_Chronology
      ( EnterpriseTopazSidekickAgendaEntry_Chronology_Stale,
        EnterpriseTopazSidekickAgendaEntry_Chronology_ALLDAY,
        EnterpriseTopazSidekickAgendaEntry_Chronology_Past,
        EnterpriseTopazSidekickAgendaEntry_Chronology_RECENTLYPAST,
        EnterpriseTopazSidekickAgendaEntry_Chronology_Present,
        EnterpriseTopazSidekickAgendaEntry_Chronology_NEARFUTURE,
        EnterpriseTopazSidekickAgendaEntry_Chronology_Future,
        ..
      ),

    -- * EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus
    EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus
      ( EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Awaiting,
        EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Yes,
        EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_NO,
        EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Maybe,
        ..
      ),

    -- * EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict
    EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict
      ( EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict_None,
        EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict_NEXTMEETING,
        ..
      ),

    -- * EnterpriseTopazSidekickAnswerAnswerList_Type
    EnterpriseTopazSidekickAnswerAnswerList_Type
      ( EnterpriseTopazSidekickAnswerAnswerList_Type_Unknown,
        EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONADDRESS,
        EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONBIRTHDAY,
        EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONDEPARTMENT,
        EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONDESKLOCATION,
        EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONEMAIL,
        EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONJOBTITLE,
        EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONPHONE,
        ..
      ),

    -- * EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category
    EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category
      ( EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Unknown,
        EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Calendar,
        EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Document,
        EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_People,
        ..
      ),

    -- * EnterpriseTopazSidekickAssistCardProto_CardType
    EnterpriseTopazSidekickAssistCardProto_CardType
      ( EnterpriseTopazSidekickAssistCardProto_CardType_UNKNOWNTYPE,
        EnterpriseTopazSidekickAssistCardProto_CardType_Agenda,
        EnterpriseTopazSidekickAssistCardProto_CardType_Changelists,
        EnterpriseTopazSidekickAssistCardProto_CardType_CONFLICTINGMEETINGS,
        EnterpriseTopazSidekickAssistCardProto_CardType_CREATENOTESFORMEETING,
        EnterpriseTopazSidekickAssistCardProto_CardType_CREATENOTESFORMEETINGREQUEST,
        EnterpriseTopazSidekickAssistCardProto_CardType_CUSTOMERNEWS,
        EnterpriseTopazSidekickAssistCardProto_CardType_FINDMEETINGTIME,
        EnterpriseTopazSidekickAssistCardProto_CardType_NEXTMEETING,
        EnterpriseTopazSidekickAssistCardProto_CardType_PERSONALIZEDDOCS,
        EnterpriseTopazSidekickAssistCardProto_CardType_TRENDINGDOCS,
        EnterpriseTopazSidekickAssistCardProto_CardType_UPCOMINGTRIP,
        EnterpriseTopazSidekickAssistCardProto_CardType_Summary,
        EnterpriseTopazSidekickAssistCardProto_CardType_Meetings,
        EnterpriseTopazSidekickAssistCardProto_CardType_Homepage,
        EnterpriseTopazSidekickAssistCardProto_CardType_SHAREMEETINGDOCS,
        EnterpriseTopazSidekickAssistCardProto_CardType_DISCOVERPEOPLE,
        EnterpriseTopazSidekickAssistCardProto_CardType_HOMEPAGE_V3,
        EnterpriseTopazSidekickAssistCardProto_CardType_AGENDAGROUP,
        EnterpriseTopazSidekickAssistCardProto_CardType_WORKINPROGRESS,
        EnterpriseTopazSidekickAssistCardProto_CardType_GETANDKEEPAHEAD,
        EnterpriseTopazSidekickAssistCardProto_CardType_GENERICANSWERCARD,
        EnterpriseTopazSidekickAssistCardProto_CardType_THIRDPARTYANSWERCARD,
        EnterpriseTopazSidekickAssistCardProto_CardType_DOMAINTRENDINGDOCS,
        EnterpriseTopazSidekickAssistCardProto_CardType_TEAMTRENDINGDOCS,
        EnterpriseTopazSidekickAssistCardProto_CardType_DOCUMENTLISTANSWERCARD,
        EnterpriseTopazSidekickAssistCardProto_CardType_SUGGESTEDQUERYANSWERCARD,
        EnterpriseTopazSidekickAssistCardProto_CardType_PERSONANSWERCARD,
        EnterpriseTopazSidekickAssistCardProto_CardType_RELATEDPEOPLEANSWERCARD,
        EnterpriseTopazSidekickAssistCardProto_CardType_PERSONKNOWLEDGECARD,
        EnterpriseTopazSidekickAssistCardProto_CardType_PEOPLESEARCHPROMOTIONCARD,
        ..
      ),

    -- * EnterpriseTopazSidekickCardMetadata_CardCategory
    EnterpriseTopazSidekickCardMetadata_CardCategory
      ( EnterpriseTopazSidekickCardMetadata_CardCategory_Default,
        EnterpriseTopazSidekickCardMetadata_CardCategory_Answer,
        EnterpriseTopazSidekickCardMetadata_CardCategory_Knowledge,
        EnterpriseTopazSidekickCardMetadata_CardCategory_Homepage,
        ..
      ),

    -- * EnterpriseTopazSidekickCardMetadata_Chronology
    EnterpriseTopazSidekickCardMetadata_Chronology
      ( EnterpriseTopazSidekickCardMetadata_Chronology_Unknown,
        EnterpriseTopazSidekickCardMetadata_Chronology_Past,
        EnterpriseTopazSidekickCardMetadata_Chronology_RECENTLYPAST,
        EnterpriseTopazSidekickCardMetadata_Chronology_Present,
        EnterpriseTopazSidekickCardMetadata_Chronology_NEARFUTURE,
        EnterpriseTopazSidekickCardMetadata_Chronology_Future,
        ..
      ),

    -- * EnterpriseTopazSidekickCardMetadata_RenderMode
    EnterpriseTopazSidekickCardMetadata_RenderMode
      ( EnterpriseTopazSidekickCardMetadata_RenderMode_UNKNOWNRENDER,
        EnterpriseTopazSidekickCardMetadata_RenderMode_Collapsed,
        EnterpriseTopazSidekickCardMetadata_RenderMode_Expanded,
        ..
      ),

    -- * EnterpriseTopazSidekickCommonDocument_AccessType
    EnterpriseTopazSidekickCommonDocument_AccessType
      ( EnterpriseTopazSidekickCommonDocument_AccessType_UNKNOWNACCESS,
        EnterpriseTopazSidekickCommonDocument_AccessType_Allowed,
        EnterpriseTopazSidekickCommonDocument_AccessType_NOTALLOWED,
        ..
      ),

    -- * EnterpriseTopazSidekickCommonDocument_Provenance
    EnterpriseTopazSidekickCommonDocument_Provenance
      ( EnterpriseTopazSidekickCommonDocument_Provenance_UNKNOWNPROVENANCE,
        EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARDESCRIPTION,
        EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARATTACHMENT,
        EnterpriseTopazSidekickCommonDocument_Provenance_Mined,
        EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARASSISTATTACHMENT,
        ..
      ),

    -- * EnterpriseTopazSidekickCommonDocument_Reason
    EnterpriseTopazSidekickCommonDocument_Reason
      ( EnterpriseTopazSidekickCommonDocument_Reason_Unknown,
        EnterpriseTopazSidekickCommonDocument_Reason_TRENDINGINCOLLABORATORS,
        EnterpriseTopazSidekickCommonDocument_Reason_TRENDINGINDOMAIN,
        EnterpriseTopazSidekickCommonDocument_Reason_FREQUENTLYVIEWED,
        EnterpriseTopazSidekickCommonDocument_Reason_FREQUENTLYEDITED,
        EnterpriseTopazSidekickCommonDocument_Reason_NEWUPDATES,
        EnterpriseTopazSidekickCommonDocument_Reason_NEWCOMMENTS,
        EnterpriseTopazSidekickCommonDocument_Reason_EVENTDESCRIPTION,
        EnterpriseTopazSidekickCommonDocument_Reason_EVENTATTACHMENT,
        EnterpriseTopazSidekickCommonDocument_Reason_EVENTMETADATAATTACHMENT,
        EnterpriseTopazSidekickCommonDocument_Reason_MINEDDOCUMENT,
        EnterpriseTopazSidekickCommonDocument_Reason_NEWMENTIONS,
        EnterpriseTopazSidekickCommonDocument_Reason_NEWSHARES,
        ..
      ),

    -- * EnterpriseTopazSidekickCommonDocument_Type
    EnterpriseTopazSidekickCommonDocument_Type
      ( EnterpriseTopazSidekickCommonDocument_Type_Unknown,
        EnterpriseTopazSidekickCommonDocument_Type_Document,
        EnterpriseTopazSidekickCommonDocument_Type_Presentation,
        EnterpriseTopazSidekickCommonDocument_Type_Spreadsheet,
        EnterpriseTopazSidekickCommonDocument_Type_Pdf,
        EnterpriseTopazSidekickCommonDocument_Type_Image,
        EnterpriseTopazSidekickCommonDocument_Type_BINARYBLOB,
        EnterpriseTopazSidekickCommonDocument_Type_FUSIONTABLE,
        EnterpriseTopazSidekickCommonDocument_Type_Folder,
        EnterpriseTopazSidekickCommonDocument_Type_Drawing,
        EnterpriseTopazSidekickCommonDocument_Type_Video,
        EnterpriseTopazSidekickCommonDocument_Type_Form,
        EnterpriseTopazSidekickCommonDocument_Type_LINKURL,
        EnterpriseTopazSidekickCommonDocument_Type_LINKGO,
        EnterpriseTopazSidekickCommonDocument_Type_LINKGOOGL,
        EnterpriseTopazSidekickCommonDocument_Type_LINKBITLY,
        EnterpriseTopazSidekickCommonDocument_Type_LINKGMAIL,
        EnterpriseTopazSidekickCommonDocument_Type_LINKMAILTO,
        EnterpriseTopazSidekickCommonDocument_Type_VIDEOYOUTUBE,
        EnterpriseTopazSidekickCommonDocument_Type_VIDEOLIVE,
        EnterpriseTopazSidekickCommonDocument_Type_Groups,
        EnterpriseTopazSidekickCommonDocument_Type_News,
        EnterpriseTopazSidekickCommonDocument_Type_Sites,
        EnterpriseTopazSidekickCommonDocument_Type_Hangout,
        EnterpriseTopazSidekickCommonDocument_Type_Audio,
        EnterpriseTopazSidekickCommonDocument_Type_MSWORD,
        EnterpriseTopazSidekickCommonDocument_Type_MSPOWERPOINT,
        EnterpriseTopazSidekickCommonDocument_Type_MSEXCEL,
        EnterpriseTopazSidekickCommonDocument_Type_MSOUTLOOK,
        ..
      ),

    -- * EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
    EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
      ( EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_UNKNOWNDOCUMENTSCOPE,
        EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_Limited,
        EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_DASHERDOMAINWITHLINK,
        EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_DASHERDOMAIN,
        EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_PUBLICWITHLINK,
        EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_Public,
        EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_TEAMDRIVE,
        ..
      ),

    -- * EnterpriseTopazSidekickCommonDocumentJustification_Reason
    EnterpriseTopazSidekickCommonDocumentJustification_Reason
      ( EnterpriseTopazSidekickCommonDocumentJustification_Reason_Unknown,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_TRENDINGINCOLLABORATORS,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_TRENDINGINDOMAIN,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_FREQUENTLYVIEWED,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_FREQUENTLYEDITED,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWUPDATES,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWCOMMENTS,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTDESCRIPTION,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTATTACHMENT,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTMETADATAATTACHMENT,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_MINEDDOCUMENT,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWMENTIONS,
        EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWSHARES,
        ..
      ),

    -- * EnterpriseTopazSidekickDocumentGroup_GroupType
    EnterpriseTopazSidekickDocumentGroup_GroupType
      ( EnterpriseTopazSidekickDocumentGroup_GroupType_UNKNOWNTYPE,
        EnterpriseTopazSidekickDocumentGroup_GroupType_All,
        ..
      ),

    -- * EnterpriseTopazSidekickDocumentPerCategoryList_ListType
    EnterpriseTopazSidekickDocumentPerCategoryList_ListType
      ( EnterpriseTopazSidekickDocumentPerCategoryList_ListType_UNKNOWNLISTTYPE,
        EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Mentions,
        EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Shares,
        EnterpriseTopazSidekickDocumentPerCategoryList_ListType_NEEDSATTENTION,
        EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Views,
        EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Edits,
        ..
      ),

    -- * EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
    EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
      ( EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_UNKNOWNDOCUMENT,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Actionable,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Viewed,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Replied,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONVIEWED,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONREPLIED,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONNOTVIEWED,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_SHAREDANDVIEWED,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_SHAREDNOTVIEWED,
        EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Edited,
        ..
      ),

    -- * EnterpriseTopazSidekickMeetingNotesCardError_Reason
    EnterpriseTopazSidekickMeetingNotesCardError_Reason
      ( EnterpriseTopazSidekickMeetingNotesCardError_Reason_None,
        EnterpriseTopazSidekickMeetingNotesCardError_Reason_NOTOWNER,
        EnterpriseTopazSidekickMeetingNotesCardError_Reason_Unknown,
        ..
      ),

    -- * EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem
    EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem
      ( EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_Unknown,
        EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_Myself,
        EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_ALLATTENDEES,
        ..
      ),

    -- * EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus
    EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus
      ( EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_Unknown,
        EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_Success,
        EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_MISSINGPERSON,
        EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_MISSINGDATA,
        ..
      ),

    -- * EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType
    EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType
      ( EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Unknown,
        EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_DIRECTREPORTS,
        EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Manager,
        EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Peers,
        ..
      ),

    -- * EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus
    EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus
      ( EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_Unknown,
        EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_Success,
        EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_MISSINGPERSON,
        EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_MISSINGDATA,
        ..
      ),

    -- * EnterpriseTopazSidekickPerson_AffinityLevel
    EnterpriseTopazSidekickPerson_AffinityLevel
      ( EnterpriseTopazSidekickPerson_AffinityLevel_Unknown,
        EnterpriseTopazSidekickPerson_AffinityLevel_Low,
        EnterpriseTopazSidekickPerson_AffinityLevel_Medium,
        EnterpriseTopazSidekickPerson_AffinityLevel_High,
        ..
      ),

    -- * EnterpriseTopazSidekickPerson_AttendingStatus
    EnterpriseTopazSidekickPerson_AttendingStatus
      ( EnterpriseTopazSidekickPerson_AttendingStatus_Awaiting,
        EnterpriseTopazSidekickPerson_AttendingStatus_Yes,
        EnterpriseTopazSidekickPerson_AttendingStatus_NO,
        EnterpriseTopazSidekickPerson_AttendingStatus_Maybe,
        ..
      ),

    -- * EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation
    EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation
      ( EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_Unknown,
        EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_Manager,
        EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_DIRECTREPORT,
        ..
      ),

    -- * EnterpriseTopazSidekickRankingParams_Priority
    EnterpriseTopazSidekickRankingParams_Priority
      ( EnterpriseTopazSidekickRankingParams_Priority_Unknown,
        EnterpriseTopazSidekickRankingParams_Priority_Critical,
        EnterpriseTopazSidekickRankingParams_Priority_Important,
        EnterpriseTopazSidekickRankingParams_Priority_High,
        EnterpriseTopazSidekickRankingParams_Priority_Normal,
        EnterpriseTopazSidekickRankingParams_Priority_BESTEFFORT,
        ..
      ),

    -- * EnterpriseTopazSidekickRankingParams_Type
    EnterpriseTopazSidekickRankingParams_Type
      ( EnterpriseTopazSidekickRankingParams_Type_Fixed,
        EnterpriseTopazSidekickRankingParams_Type_Flexible,
        ..
      ),

    -- * EnumPropertyOptions_OrderedRanking
    EnumPropertyOptions_OrderedRanking
      ( EnumPropertyOptions_OrderedRanking_NOORDER,
        EnumPropertyOptions_OrderedRanking_Ascending,
        EnumPropertyOptions_OrderedRanking_Descending,
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

    -- * PersonCore_AvailabilityStatus
    PersonCore_AvailabilityStatus
      ( PersonCore_AvailabilityStatus_Unknown,
        PersonCore_AvailabilityStatus_OUTOFOFFICE,
        PersonCore_AvailabilityStatus_OUTSIDEWORKINGHOURS,
        PersonCore_AvailabilityStatus_Available,
        ..
      ),

    -- * PhoneNumber_Type
    PhoneNumber_Type
      ( PhoneNumber_Type_Other,
        PhoneNumber_Type_Mobile,
        PhoneNumber_Type_Office,
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

    -- * SpellResult_SuggestionType
    SpellResult_SuggestionType
      ( SpellResult_SuggestionType_SUGGESTIONTYPEUNSPECIFIED,
        SpellResult_SuggestionType_NONEMPTYRESULTSSPELLSUGGESTION,
        SpellResult_SuggestionType_ZERORESULTSFULLPAGEREPLACEMENT,
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

import Gogol.Prelude qualified as Core

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

-- | [Optional] Color of the background. The text color can change depending on the selected background color, and the client does not have control over this. If missing, the background will be WHITE.
newtype BackgroundColoredText_BackgroundColor = BackgroundColoredText_BackgroundColor {fromBackgroundColoredText_BackgroundColor :: Core.Text}
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

pattern BackgroundColoredText_BackgroundColor_UNKNOWNCOLOR :: BackgroundColoredText_BackgroundColor
pattern BackgroundColoredText_BackgroundColor_UNKNOWNCOLOR = BackgroundColoredText_BackgroundColor "UNKNOWN_COLOR"

pattern BackgroundColoredText_BackgroundColor_White :: BackgroundColoredText_BackgroundColor
pattern BackgroundColoredText_BackgroundColor_White = BackgroundColoredText_BackgroundColor "WHITE"

pattern BackgroundColoredText_BackgroundColor_Yellow :: BackgroundColoredText_BackgroundColor
pattern BackgroundColoredText_BackgroundColor_Yellow = BackgroundColoredText_BackgroundColor "YELLOW"

pattern BackgroundColoredText_BackgroundColor_Orange :: BackgroundColoredText_BackgroundColor
pattern BackgroundColoredText_BackgroundColor_Orange = BackgroundColoredText_BackgroundColor "ORANGE"

pattern BackgroundColoredText_BackgroundColor_Green :: BackgroundColoredText_BackgroundColor
pattern BackgroundColoredText_BackgroundColor_Green = BackgroundColoredText_BackgroundColor "GREEN"

pattern BackgroundColoredText_BackgroundColor_Blue :: BackgroundColoredText_BackgroundColor
pattern BackgroundColoredText_BackgroundColor_Blue = BackgroundColoredText_BackgroundColor "BLUE"

pattern BackgroundColoredText_BackgroundColor_Grey :: BackgroundColoredText_BackgroundColor
pattern BackgroundColoredText_BackgroundColor_Grey = BackgroundColoredText_BackgroundColor "GREY"

{-# COMPLETE
  BackgroundColoredText_BackgroundColor_UNKNOWNCOLOR,
  BackgroundColoredText_BackgroundColor_White,
  BackgroundColoredText_BackgroundColor_Yellow,
  BackgroundColoredText_BackgroundColor_Orange,
  BackgroundColoredText_BackgroundColor_Green,
  BackgroundColoredText_BackgroundColor_Blue,
  BackgroundColoredText_BackgroundColor_Grey,
  BackgroundColoredText_BackgroundColor
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

newtype Context_AppItem = Context_AppItem {fromContext_AppItem :: Core.Text}
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

pattern Context_AppItem_UNKNOWNAPP :: Context_AppItem
pattern Context_AppItem_UNKNOWNAPP = Context_AppItem "UNKNOWN_APP"

pattern Context_AppItem_Topaz :: Context_AppItem
pattern Context_AppItem_Topaz = Context_AppItem "TOPAZ"

pattern Context_AppItem_Moma :: Context_AppItem
pattern Context_AppItem_Moma = Context_AppItem "MOMA"

{-# COMPLETE
  Context_AppItem_UNKNOWNAPP,
  Context_AppItem_Topaz,
  Context_AppItem_Moma,
  Context_AppItem
  #-}

newtype Context_SurfaceItem = Context_SurfaceItem {fromContext_SurfaceItem :: Core.Text}
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

pattern Context_SurfaceItem_UNKNOWNSURFACE :: Context_SurfaceItem
pattern Context_SurfaceItem_UNKNOWNSURFACE = Context_SurfaceItem "UNKNOWN_SURFACE"

pattern Context_SurfaceItem_Desktop :: Context_SurfaceItem
pattern Context_SurfaceItem_Desktop = Context_SurfaceItem "DESKTOP"

pattern Context_SurfaceItem_Android :: Context_SurfaceItem
pattern Context_SurfaceItem_Android = Context_SurfaceItem "ANDROID"

pattern Context_SurfaceItem_Ios :: Context_SurfaceItem
pattern Context_SurfaceItem_Ios = Context_SurfaceItem "IOS"

-- | Any mobile device.
pattern Context_SurfaceItem_Mobile :: Context_SurfaceItem
pattern Context_SurfaceItem_Mobile = Context_SurfaceItem "MOBILE"

pattern Context_SurfaceItem_Any :: Context_SurfaceItem
pattern Context_SurfaceItem_Any = Context_SurfaceItem "ANY"

{-# COMPLETE
  Context_SurfaceItem_UNKNOWNSURFACE,
  Context_SurfaceItem_Desktop,
  Context_SurfaceItem_Android,
  Context_SurfaceItem_Ios,
  Context_SurfaceItem_Mobile,
  Context_SurfaceItem_Any,
  Context_SurfaceItem
  #-}

newtype Context_TypeItem = Context_TypeItem {fromContext_TypeItem :: Core.Text}
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

pattern Context_TypeItem_UNKNOWNCARDTYPE :: Context_TypeItem
pattern Context_TypeItem_UNKNOWNCARDTYPE = Context_TypeItem "UNKNOWN_CARD_TYPE"

pattern Context_TypeItem_HOMEPAGECARD :: Context_TypeItem
pattern Context_TypeItem_HOMEPAGECARD = Context_TypeItem "HOMEPAGE_CARD"

pattern Context_TypeItem_ANSWERCARD :: Context_TypeItem
pattern Context_TypeItem_ANSWERCARD = Context_TypeItem "ANSWER_CARD"

pattern Context_TypeItem_RHSCARD :: Context_TypeItem
pattern Context_TypeItem_RHSCARD = Context_TypeItem "RHS_CARD"

{-# COMPLETE
  Context_TypeItem_UNKNOWNCARDTYPE,
  Context_TypeItem_HOMEPAGECARD,
  Context_TypeItem_ANSWERCARD,
  Context_TypeItem_RHSCARD,
  Context_TypeItem
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

pattern DriveFollowUpRestrict_Type_Unspecified :: DriveFollowUpRestrict_Type
pattern DriveFollowUpRestrict_Type_Unspecified = DriveFollowUpRestrict_Type "UNSPECIFIED"

pattern DriveFollowUpRestrict_Type_FOLLOWUPSUGGESTIONS :: DriveFollowUpRestrict_Type
pattern DriveFollowUpRestrict_Type_FOLLOWUPSUGGESTIONS = DriveFollowUpRestrict_Type "FOLLOWUP_SUGGESTIONS"

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

pattern DriveLocationRestrict_Type_Unspecified :: DriveLocationRestrict_Type
pattern DriveLocationRestrict_Type_Unspecified = DriveLocationRestrict_Type "UNSPECIFIED"

pattern DriveLocationRestrict_Type_Trashed :: DriveLocationRestrict_Type
pattern DriveLocationRestrict_Type_Trashed = DriveLocationRestrict_Type "TRASHED"

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

pattern DriveMimeTypeRestrict_Type_Unspecified :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Unspecified = DriveMimeTypeRestrict_Type "UNSPECIFIED"

pattern DriveMimeTypeRestrict_Type_Pdf :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Pdf = DriveMimeTypeRestrict_Type "PDF"

pattern DriveMimeTypeRestrict_Type_Document :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Document = DriveMimeTypeRestrict_Type "DOCUMENT"

pattern DriveMimeTypeRestrict_Type_Presentation :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Presentation = DriveMimeTypeRestrict_Type "PRESENTATION"

pattern DriveMimeTypeRestrict_Type_Spreadsheet :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Spreadsheet = DriveMimeTypeRestrict_Type "SPREADSHEET"

pattern DriveMimeTypeRestrict_Type_Form :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Form = DriveMimeTypeRestrict_Type "FORM"

pattern DriveMimeTypeRestrict_Type_Drawing :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Drawing = DriveMimeTypeRestrict_Type "DRAWING"

pattern DriveMimeTypeRestrict_Type_Script :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Script = DriveMimeTypeRestrict_Type "SCRIPT"

pattern DriveMimeTypeRestrict_Type_Map :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Map = DriveMimeTypeRestrict_Type "MAP"

pattern DriveMimeTypeRestrict_Type_Image :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Image = DriveMimeTypeRestrict_Type "IMAGE"

pattern DriveMimeTypeRestrict_Type_Audio :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Audio = DriveMimeTypeRestrict_Type "AUDIO"

pattern DriveMimeTypeRestrict_Type_Video :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Video = DriveMimeTypeRestrict_Type "VIDEO"

pattern DriveMimeTypeRestrict_Type_Folder :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Folder = DriveMimeTypeRestrict_Type "FOLDER"

pattern DriveMimeTypeRestrict_Type_Archive :: DriveMimeTypeRestrict_Type
pattern DriveMimeTypeRestrict_Type_Archive = DriveMimeTypeRestrict_Type "ARCHIVE"

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

pattern DriveTimeSpanRestrict_Type_Unspecified :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_Unspecified = DriveTimeSpanRestrict_Type "UNSPECIFIED"

pattern DriveTimeSpanRestrict_Type_Today :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_Today = DriveTimeSpanRestrict_Type "TODAY"

pattern DriveTimeSpanRestrict_Type_Yesterday :: DriveTimeSpanRestrict_Type
pattern DriveTimeSpanRestrict_Type_Yesterday = DriveTimeSpanRestrict_Type "YESTERDAY"

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

newtype EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type = EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type {fromEnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type :: Core.Text}
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

pattern EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Unknown :: EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type
pattern EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Unknown = EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type "UNKNOWN"

pattern EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Mobile :: EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type
pattern EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Mobile = EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type "MOBILE"

pattern EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Office :: EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type
pattern EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Office = EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type "OFFICE"

pattern EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Other :: EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type
pattern EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Other = EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type "OTHER"

{-# COMPLETE
  EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Unknown,
  EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Mobile,
  EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Office,
  EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type_Other,
  EnterpriseTopazFrontendTeamsPersonCorePhoneNumber_Type
  #-}

-- | The chronology from the present.
newtype EnterpriseTopazSidekickAgendaEntry_Chronology = EnterpriseTopazSidekickAgendaEntry_Chronology {fromEnterpriseTopazSidekickAgendaEntry_Chronology :: Core.Text}
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

-- | Stale.
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_Stale :: EnterpriseTopazSidekickAgendaEntry_Chronology
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_Stale = EnterpriseTopazSidekickAgendaEntry_Chronology "STALE"

-- | All day.
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_ALLDAY :: EnterpriseTopazSidekickAgendaEntry_Chronology
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_ALLDAY = EnterpriseTopazSidekickAgendaEntry_Chronology "ALL_DAY"

-- | Past.
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_Past :: EnterpriseTopazSidekickAgendaEntry_Chronology
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_Past = EnterpriseTopazSidekickAgendaEntry_Chronology "PAST"

-- | Recently past.
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_RECENTLYPAST :: EnterpriseTopazSidekickAgendaEntry_Chronology
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_RECENTLYPAST = EnterpriseTopazSidekickAgendaEntry_Chronology "RECENTLY_PAST"

-- | Present.
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_Present :: EnterpriseTopazSidekickAgendaEntry_Chronology
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_Present = EnterpriseTopazSidekickAgendaEntry_Chronology "PRESENT"

-- | Near future.
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_NEARFUTURE :: EnterpriseTopazSidekickAgendaEntry_Chronology
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_NEARFUTURE = EnterpriseTopazSidekickAgendaEntry_Chronology "NEAR_FUTURE"

-- | Future.
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_Future :: EnterpriseTopazSidekickAgendaEntry_Chronology
pattern EnterpriseTopazSidekickAgendaEntry_Chronology_Future = EnterpriseTopazSidekickAgendaEntry_Chronology "FUTURE"

{-# COMPLETE
  EnterpriseTopazSidekickAgendaEntry_Chronology_Stale,
  EnterpriseTopazSidekickAgendaEntry_Chronology_ALLDAY,
  EnterpriseTopazSidekickAgendaEntry_Chronology_Past,
  EnterpriseTopazSidekickAgendaEntry_Chronology_RECENTLYPAST,
  EnterpriseTopazSidekickAgendaEntry_Chronology_Present,
  EnterpriseTopazSidekickAgendaEntry_Chronology_NEARFUTURE,
  EnterpriseTopazSidekickAgendaEntry_Chronology_Future,
  EnterpriseTopazSidekickAgendaEntry_Chronology
  #-}

-- | Attendance status for the current user making the request. This is a convenience data member in order to avoid figuring out the same by iterating the invitee list above on the caller side.
newtype EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus = EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus {fromEnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus :: Core.Text}
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

-- | Awaiting for the user to set the status.
pattern EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Awaiting :: EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus
pattern EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Awaiting = EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus "AWAITING"

-- | Attending.
pattern EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Yes :: EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus
pattern EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Yes = EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus "YES"

-- | Not attending.
pattern EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_NO :: EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus
pattern EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_NO = EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus "NO"

-- | Tentatively attending.
pattern EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Maybe :: EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus
pattern EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Maybe = EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus "MAYBE"

{-# COMPLETE
  EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Awaiting,
  EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Yes,
  EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_NO,
  EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus_Maybe,
  EnterpriseTopazSidekickAgendaEntry_CurrentUserAttendingStatus
  #-}

-- | Represents restrictions applied to the events requested in the user\'s query.
newtype EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict = EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict {fromEnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict :: Core.Text}
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

-- | No specific event was requested.
pattern EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict_None :: EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict
pattern EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict_None = EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict "NONE"

-- | The next meeting was requested.
pattern EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict_NEXTMEETING :: EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict
pattern EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict_NEXTMEETING = EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict "NEXT_MEETING"

{-# COMPLETE
  EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict_None,
  EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict_NEXTMEETING,
  EnterpriseTopazSidekickAgendaGroupCardProtoContext_EventsRestrict
  #-}

-- | Answer type.
newtype EnterpriseTopazSidekickAnswerAnswerList_Type = EnterpriseTopazSidekickAnswerAnswerList_Type {fromEnterpriseTopazSidekickAnswerAnswerList_Type :: Core.Text}
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

pattern EnterpriseTopazSidekickAnswerAnswerList_Type_Unknown :: EnterpriseTopazSidekickAnswerAnswerList_Type
pattern EnterpriseTopazSidekickAnswerAnswerList_Type_Unknown = EnterpriseTopazSidekickAnswerAnswerList_Type "UNKNOWN"

pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONADDRESS :: EnterpriseTopazSidekickAnswerAnswerList_Type
pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONADDRESS = EnterpriseTopazSidekickAnswerAnswerList_Type "PERSON_ADDRESS"

pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONBIRTHDAY :: EnterpriseTopazSidekickAnswerAnswerList_Type
pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONBIRTHDAY = EnterpriseTopazSidekickAnswerAnswerList_Type "PERSON_BIRTHDAY"

pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONDEPARTMENT :: EnterpriseTopazSidekickAnswerAnswerList_Type
pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONDEPARTMENT = EnterpriseTopazSidekickAnswerAnswerList_Type "PERSON_DEPARTMENT"

pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONDESKLOCATION :: EnterpriseTopazSidekickAnswerAnswerList_Type
pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONDESKLOCATION = EnterpriseTopazSidekickAnswerAnswerList_Type "PERSON_DESK_LOCATION"

pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONEMAIL :: EnterpriseTopazSidekickAnswerAnswerList_Type
pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONEMAIL = EnterpriseTopazSidekickAnswerAnswerList_Type "PERSON_EMAIL"

pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONJOBTITLE :: EnterpriseTopazSidekickAnswerAnswerList_Type
pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONJOBTITLE = EnterpriseTopazSidekickAnswerAnswerList_Type "PERSON_JOB_TITLE"

pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONPHONE :: EnterpriseTopazSidekickAnswerAnswerList_Type
pattern EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONPHONE = EnterpriseTopazSidekickAnswerAnswerList_Type "PERSON_PHONE"

{-# COMPLETE
  EnterpriseTopazSidekickAnswerAnswerList_Type_Unknown,
  EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONADDRESS,
  EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONBIRTHDAY,
  EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONDEPARTMENT,
  EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONDESKLOCATION,
  EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONEMAIL,
  EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONJOBTITLE,
  EnterpriseTopazSidekickAnswerAnswerList_Type_PERSONPHONE,
  EnterpriseTopazSidekickAnswerAnswerList_Type
  #-}

-- | The query list category.
newtype EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category = EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category {fromEnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category :: Core.Text}
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

-- | Unknown.
pattern EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Unknown :: EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category
pattern EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Unknown = EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category "UNKNOWN"

-- | Calendar based queries (e.g. \"my agenda for tomorrow\").
pattern EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Calendar :: EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category
pattern EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Calendar = EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category "CALENDAR"

-- | Document based queries (e.g. \"files shared with me\").
pattern EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Document :: EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category
pattern EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Document = EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category "DOCUMENT"

-- | People based queries (e.g. \"what is x\'s email address?\").
pattern EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_People :: EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category
pattern EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_People = EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category "PEOPLE"

{-# COMPLETE
  EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Unknown,
  EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Calendar,
  EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_Document,
  EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category_People,
  EnterpriseTopazSidekickAnswerSuggestedQueryCategory_Category
  #-}

-- | Card type.
newtype EnterpriseTopazSidekickAssistCardProto_CardType = EnterpriseTopazSidekickAssistCardProto_CardType {fromEnterpriseTopazSidekickAssistCardProto_CardType :: Core.Text}
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

-- | The default type, an unknown card type.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_UNKNOWNTYPE :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_UNKNOWNTYPE = EnterpriseTopazSidekickAssistCardProto_CardType "UNKNOWN_TYPE"

-- | The user\'s agenda for the day.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Agenda :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Agenda = EnterpriseTopazSidekickAssistCardProto_CardType "AGENDA"

-- | Changelists.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Changelists :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Changelists = EnterpriseTopazSidekickAssistCardProto_CardType "CHANGELISTS"

-- | Any group of meetings for the day that are overlapping.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_CONFLICTINGMEETINGS :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_CONFLICTINGMEETINGS = EnterpriseTopazSidekickAssistCardProto_CardType "CONFLICTING_MEETINGS"

-- | Create notes for a meeting specified in the request.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_CREATENOTESFORMEETING :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_CREATENOTESFORMEETING = EnterpriseTopazSidekickAssistCardProto_CardType "CREATE_NOTES_FOR_MEETING"

-- | Create notes for meeting query.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_CREATENOTESFORMEETINGREQUEST :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_CREATENOTESFORMEETINGREQUEST = EnterpriseTopazSidekickAssistCardProto_CardType "CREATE_NOTES_FOR_MEETING_REQUEST"

-- | News about your SFDC customers.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_CUSTOMERNEWS :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_CUSTOMERNEWS = EnterpriseTopazSidekickAssistCardProto_CardType "CUSTOMER_NEWS"

-- | Find a time for two people to meet.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_FINDMEETINGTIME :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_FINDMEETINGTIME = EnterpriseTopazSidekickAssistCardProto_CardType "FIND_MEETING_TIME"

-- | The user\'s next non-declined meeting.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_NEXTMEETING :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_NEXTMEETING = EnterpriseTopazSidekickAssistCardProto_CardType "NEXT_MEETING"

-- | Important documents for you since you have viewed them in the last month and there\'s some action going on.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_PERSONALIZEDDOCS :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_PERSONALIZEDDOCS = EnterpriseTopazSidekickAssistCardProto_CardType "PERSONALIZED_DOCS"

-- | Documents that are trending in your company. A TRENDING/DOCS card can be of two types: TRENDING/IN/COLLABORATORS (i.e., Stay in the Loop) and TRENDING/IN/DOMAIN (i.e., Popular Content). Use DOMAIN/TRENDING/DOCS\/TEAM/TRENDING_DOCS instead.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_TRENDINGDOCS :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_TRENDINGDOCS = EnterpriseTopazSidekickAssistCardProto_CardType "TRENDING_DOCS"

-- | An upcoming trip with all trip information along with calendar events in the destination timezone.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_UPCOMINGTRIP :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_UPCOMINGTRIP = EnterpriseTopazSidekickAssistCardProto_CardType "UPCOMING_TRIP"

-- | The Morning\/Evening Summary Card for the next working day.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Summary :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Summary = EnterpriseTopazSidekickAssistCardProto_CardType "SUMMARY"

-- | A meeting. When requesting meetings, the service will return a MEETING card for each meeting the user has in his agenda.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Meetings :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Meetings = EnterpriseTopazSidekickAssistCardProto_CardType "MEETINGS"

-- | All cards related to the homepage (agenda, conflicting-meetings, summary, etc...). This type should no longer be used. Use HOMEPAGE_V3 instead.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Homepage :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_Homepage = EnterpriseTopazSidekickAssistCardProto_CardType "HOMEPAGE"

-- | A card to with specifics to share meeting documents with all attendees.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_SHAREMEETINGDOCS :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_SHAREMEETINGDOCS = EnterpriseTopazSidekickAssistCardProto_CardType "SHARE_MEETING_DOCS"

-- | Represents a set of users that the requesting user has low affinity with.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_DISCOVERPEOPLE :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_DISCOVERPEOPLE = EnterpriseTopazSidekickAssistCardProto_CardType "DISCOVER_PEOPLE"

-- | All cards related to the homepage-v3 (agenda-group, WIP, etc...)
pattern EnterpriseTopazSidekickAssistCardProto_CardType_HOMEPAGE_V3 :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_HOMEPAGE_V3 = EnterpriseTopazSidekickAssistCardProto_CardType "HOMEPAGE_V3"

-- | A group of agenda-events (meeting, conflicts)
pattern EnterpriseTopazSidekickAssistCardProto_CardType_AGENDAGROUP :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_AGENDAGROUP = EnterpriseTopazSidekickAssistCardProto_CardType "AGENDA_GROUP"

-- | The documents that you were recently working on.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_WORKINPROGRESS :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_WORKINPROGRESS = EnterpriseTopazSidekickAssistCardProto_CardType "WORK_IN_PROGRESS"

-- | (v3) The \"get and keep ahead\" card for today and tomorrow
pattern EnterpriseTopazSidekickAssistCardProto_CardType_GETANDKEEPAHEAD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_GETANDKEEPAHEAD = EnterpriseTopazSidekickAssistCardProto_CardType "GET_AND_KEEP_AHEAD"

-- | Generic answer card.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_GENERICANSWERCARD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_GENERICANSWERCARD = EnterpriseTopazSidekickAssistCardProto_CardType "GENERIC_ANSWER_CARD"

-- | Third party answer card.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_THIRDPARTYANSWERCARD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_THIRDPARTYANSWERCARD = EnterpriseTopazSidekickAssistCardProto_CardType "THIRD_PARTY_ANSWER_CARD"

-- | Documents that are trending in your company\/domain (i.e., Popular Content).
pattern EnterpriseTopazSidekickAssistCardProto_CardType_DOMAINTRENDINGDOCS :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_DOMAINTRENDINGDOCS = EnterpriseTopazSidekickAssistCardProto_CardType "DOMAIN_TRENDING_DOCS"

-- | Documents that are trending in your team (i.e., Stay in the Loop).
pattern EnterpriseTopazSidekickAssistCardProto_CardType_TEAMTRENDINGDOCS :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_TEAMTRENDINGDOCS = EnterpriseTopazSidekickAssistCardProto_CardType "TEAM_TRENDING_DOCS"

-- | Documents that match the user\'s query (e.g. sheets shared with me).
pattern EnterpriseTopazSidekickAssistCardProto_CardType_DOCUMENTLISTANSWERCARD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_DOCUMENTLISTANSWERCARD = EnterpriseTopazSidekickAssistCardProto_CardType "DOCUMENT_LIST_ANSWER_CARD"

-- | A help card that provides examples of queries the user can ask.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_SUGGESTEDQUERYANSWERCARD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_SUGGESTEDQUERYANSWERCARD = EnterpriseTopazSidekickAssistCardProto_CardType "SUGGESTED_QUERY_ANSWER_CARD"

-- | Answer card for a single person (e.g. what is x\'s phone number).
pattern EnterpriseTopazSidekickAssistCardProto_CardType_PERSONANSWERCARD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_PERSONANSWERCARD = EnterpriseTopazSidekickAssistCardProto_CardType "PERSON_ANSWER_CARD"

-- | Answer card for a list of people related to the person that is the subject of the query (e.g. who reports to x).
pattern EnterpriseTopazSidekickAssistCardProto_CardType_RELATEDPEOPLEANSWERCARD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_RELATEDPEOPLEANSWERCARD = EnterpriseTopazSidekickAssistCardProto_CardType "RELATED_PEOPLE_ANSWER_CARD"

-- | Knowledge card for a single person and their related people.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_PERSONKNOWLEDGECARD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_PERSONKNOWLEDGECARD = EnterpriseTopazSidekickAssistCardProto_CardType "PERSON_KNOWLEDGE_CARD"

-- | People Search promotion card.
pattern EnterpriseTopazSidekickAssistCardProto_CardType_PEOPLESEARCHPROMOTIONCARD :: EnterpriseTopazSidekickAssistCardProto_CardType
pattern EnterpriseTopazSidekickAssistCardProto_CardType_PEOPLESEARCHPROMOTIONCARD = EnterpriseTopazSidekickAssistCardProto_CardType "PEOPLE_SEARCH_PROMOTION_CARD"

{-# COMPLETE
  EnterpriseTopazSidekickAssistCardProto_CardType_UNKNOWNTYPE,
  EnterpriseTopazSidekickAssistCardProto_CardType_Agenda,
  EnterpriseTopazSidekickAssistCardProto_CardType_Changelists,
  EnterpriseTopazSidekickAssistCardProto_CardType_CONFLICTINGMEETINGS,
  EnterpriseTopazSidekickAssistCardProto_CardType_CREATENOTESFORMEETING,
  EnterpriseTopazSidekickAssistCardProto_CardType_CREATENOTESFORMEETINGREQUEST,
  EnterpriseTopazSidekickAssistCardProto_CardType_CUSTOMERNEWS,
  EnterpriseTopazSidekickAssistCardProto_CardType_FINDMEETINGTIME,
  EnterpriseTopazSidekickAssistCardProto_CardType_NEXTMEETING,
  EnterpriseTopazSidekickAssistCardProto_CardType_PERSONALIZEDDOCS,
  EnterpriseTopazSidekickAssistCardProto_CardType_TRENDINGDOCS,
  EnterpriseTopazSidekickAssistCardProto_CardType_UPCOMINGTRIP,
  EnterpriseTopazSidekickAssistCardProto_CardType_Summary,
  EnterpriseTopazSidekickAssistCardProto_CardType_Meetings,
  EnterpriseTopazSidekickAssistCardProto_CardType_Homepage,
  EnterpriseTopazSidekickAssistCardProto_CardType_SHAREMEETINGDOCS,
  EnterpriseTopazSidekickAssistCardProto_CardType_DISCOVERPEOPLE,
  EnterpriseTopazSidekickAssistCardProto_CardType_HOMEPAGE_V3,
  EnterpriseTopazSidekickAssistCardProto_CardType_AGENDAGROUP,
  EnterpriseTopazSidekickAssistCardProto_CardType_WORKINPROGRESS,
  EnterpriseTopazSidekickAssistCardProto_CardType_GETANDKEEPAHEAD,
  EnterpriseTopazSidekickAssistCardProto_CardType_GENERICANSWERCARD,
  EnterpriseTopazSidekickAssistCardProto_CardType_THIRDPARTYANSWERCARD,
  EnterpriseTopazSidekickAssistCardProto_CardType_DOMAINTRENDINGDOCS,
  EnterpriseTopazSidekickAssistCardProto_CardType_TEAMTRENDINGDOCS,
  EnterpriseTopazSidekickAssistCardProto_CardType_DOCUMENTLISTANSWERCARD,
  EnterpriseTopazSidekickAssistCardProto_CardType_SUGGESTEDQUERYANSWERCARD,
  EnterpriseTopazSidekickAssistCardProto_CardType_PERSONANSWERCARD,
  EnterpriseTopazSidekickAssistCardProto_CardType_RELATEDPEOPLEANSWERCARD,
  EnterpriseTopazSidekickAssistCardProto_CardType_PERSONKNOWLEDGECARD,
  EnterpriseTopazSidekickAssistCardProto_CardType_PEOPLESEARCHPROMOTIONCARD,
  EnterpriseTopazSidekickAssistCardProto_CardType
  #-}

-- | Declares a preference for how this card should be packed in MSCR. All cards in a response must correspond to a single category. As a result, cards may be dropped from the response if this field is set. Any card that does not match the category of the card with the highest priority in the response will be dropped.
newtype EnterpriseTopazSidekickCardMetadata_CardCategory = EnterpriseTopazSidekickCardMetadata_CardCategory {fromEnterpriseTopazSidekickCardMetadata_CardCategory :: Core.Text}
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

-- | Let MSCR decide how this card should be packed. Most cards should choose this type. This type should largely be considered equivalent to ANSWER. However, this is not guaranteed to be the case as the request to MSCR may override the static configuration.
pattern EnterpriseTopazSidekickCardMetadata_CardCategory_Default :: EnterpriseTopazSidekickCardMetadata_CardCategory
pattern EnterpriseTopazSidekickCardMetadata_CardCategory_Default = EnterpriseTopazSidekickCardMetadata_CardCategory "DEFAULT"

-- | This card should be rendered as an answer card.
pattern EnterpriseTopazSidekickCardMetadata_CardCategory_Answer :: EnterpriseTopazSidekickCardMetadata_CardCategory
pattern EnterpriseTopazSidekickCardMetadata_CardCategory_Answer = EnterpriseTopazSidekickCardMetadata_CardCategory "ANSWER"

-- | This card should be rendered as a knowledge card (a non-organic result).
pattern EnterpriseTopazSidekickCardMetadata_CardCategory_Knowledge :: EnterpriseTopazSidekickCardMetadata_CardCategory
pattern EnterpriseTopazSidekickCardMetadata_CardCategory_Knowledge = EnterpriseTopazSidekickCardMetadata_CardCategory "KNOWLEDGE"

-- | This card should be rendered in the Homepage.
pattern EnterpriseTopazSidekickCardMetadata_CardCategory_Homepage :: EnterpriseTopazSidekickCardMetadata_CardCategory
pattern EnterpriseTopazSidekickCardMetadata_CardCategory_Homepage = EnterpriseTopazSidekickCardMetadata_CardCategory "HOMEPAGE"

{-# COMPLETE
  EnterpriseTopazSidekickCardMetadata_CardCategory_Default,
  EnterpriseTopazSidekickCardMetadata_CardCategory_Answer,
  EnterpriseTopazSidekickCardMetadata_CardCategory_Knowledge,
  EnterpriseTopazSidekickCardMetadata_CardCategory_Homepage,
  EnterpriseTopazSidekickCardMetadata_CardCategory
  #-}

-- | Chronology.
newtype EnterpriseTopazSidekickCardMetadata_Chronology = EnterpriseTopazSidekickCardMetadata_Chronology {fromEnterpriseTopazSidekickCardMetadata_Chronology :: Core.Text}
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

-- | Unknown chronology (default).
pattern EnterpriseTopazSidekickCardMetadata_Chronology_Unknown :: EnterpriseTopazSidekickCardMetadata_Chronology
pattern EnterpriseTopazSidekickCardMetadata_Chronology_Unknown = EnterpriseTopazSidekickCardMetadata_Chronology "UNKNOWN"

-- | Past.
pattern EnterpriseTopazSidekickCardMetadata_Chronology_Past :: EnterpriseTopazSidekickCardMetadata_Chronology
pattern EnterpriseTopazSidekickCardMetadata_Chronology_Past = EnterpriseTopazSidekickCardMetadata_Chronology "PAST"

-- | Recently past.
pattern EnterpriseTopazSidekickCardMetadata_Chronology_RECENTLYPAST :: EnterpriseTopazSidekickCardMetadata_Chronology
pattern EnterpriseTopazSidekickCardMetadata_Chronology_RECENTLYPAST = EnterpriseTopazSidekickCardMetadata_Chronology "RECENTLY_PAST"

-- | Present.
pattern EnterpriseTopazSidekickCardMetadata_Chronology_Present :: EnterpriseTopazSidekickCardMetadata_Chronology
pattern EnterpriseTopazSidekickCardMetadata_Chronology_Present = EnterpriseTopazSidekickCardMetadata_Chronology "PRESENT"

-- | Near future.
pattern EnterpriseTopazSidekickCardMetadata_Chronology_NEARFUTURE :: EnterpriseTopazSidekickCardMetadata_Chronology
pattern EnterpriseTopazSidekickCardMetadata_Chronology_NEARFUTURE = EnterpriseTopazSidekickCardMetadata_Chronology "NEAR_FUTURE"

-- | Future.
pattern EnterpriseTopazSidekickCardMetadata_Chronology_Future :: EnterpriseTopazSidekickCardMetadata_Chronology
pattern EnterpriseTopazSidekickCardMetadata_Chronology_Future = EnterpriseTopazSidekickCardMetadata_Chronology "FUTURE"

{-# COMPLETE
  EnterpriseTopazSidekickCardMetadata_Chronology_Unknown,
  EnterpriseTopazSidekickCardMetadata_Chronology_Past,
  EnterpriseTopazSidekickCardMetadata_Chronology_RECENTLYPAST,
  EnterpriseTopazSidekickCardMetadata_Chronology_Present,
  EnterpriseTopazSidekickCardMetadata_Chronology_NEARFUTURE,
  EnterpriseTopazSidekickCardMetadata_Chronology_Future,
  EnterpriseTopazSidekickCardMetadata_Chronology
  #-}

-- | Render mode.
newtype EnterpriseTopazSidekickCardMetadata_RenderMode = EnterpriseTopazSidekickCardMetadata_RenderMode {fromEnterpriseTopazSidekickCardMetadata_RenderMode :: Core.Text}
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

-- | Unknown mode (default).
pattern EnterpriseTopazSidekickCardMetadata_RenderMode_UNKNOWNRENDER :: EnterpriseTopazSidekickCardMetadata_RenderMode
pattern EnterpriseTopazSidekickCardMetadata_RenderMode_UNKNOWNRENDER = EnterpriseTopazSidekickCardMetadata_RenderMode "UNKNOWN_RENDER"

-- | Collapsed.
pattern EnterpriseTopazSidekickCardMetadata_RenderMode_Collapsed :: EnterpriseTopazSidekickCardMetadata_RenderMode
pattern EnterpriseTopazSidekickCardMetadata_RenderMode_Collapsed = EnterpriseTopazSidekickCardMetadata_RenderMode "COLLAPSED"

-- | Expanded.
pattern EnterpriseTopazSidekickCardMetadata_RenderMode_Expanded :: EnterpriseTopazSidekickCardMetadata_RenderMode
pattern EnterpriseTopazSidekickCardMetadata_RenderMode_Expanded = EnterpriseTopazSidekickCardMetadata_RenderMode "EXPANDED"

{-# COMPLETE
  EnterpriseTopazSidekickCardMetadata_RenderMode_UNKNOWNRENDER,
  EnterpriseTopazSidekickCardMetadata_RenderMode_Collapsed,
  EnterpriseTopazSidekickCardMetadata_RenderMode_Expanded,
  EnterpriseTopazSidekickCardMetadata_RenderMode
  #-}

-- | Access type, i.e., whether the user has access to the document or not.
newtype EnterpriseTopazSidekickCommonDocument_AccessType = EnterpriseTopazSidekickCommonDocument_AccessType {fromEnterpriseTopazSidekickCommonDocument_AccessType :: Core.Text}
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

-- | Unknown access type.
pattern EnterpriseTopazSidekickCommonDocument_AccessType_UNKNOWNACCESS :: EnterpriseTopazSidekickCommonDocument_AccessType
pattern EnterpriseTopazSidekickCommonDocument_AccessType_UNKNOWNACCESS = EnterpriseTopazSidekickCommonDocument_AccessType "UNKNOWN_ACCESS"

-- | Access allowed.
pattern EnterpriseTopazSidekickCommonDocument_AccessType_Allowed :: EnterpriseTopazSidekickCommonDocument_AccessType
pattern EnterpriseTopazSidekickCommonDocument_AccessType_Allowed = EnterpriseTopazSidekickCommonDocument_AccessType "ALLOWED"

-- | Access not allowed.
pattern EnterpriseTopazSidekickCommonDocument_AccessType_NOTALLOWED :: EnterpriseTopazSidekickCommonDocument_AccessType
pattern EnterpriseTopazSidekickCommonDocument_AccessType_NOTALLOWED = EnterpriseTopazSidekickCommonDocument_AccessType "NOT_ALLOWED"

{-# COMPLETE
  EnterpriseTopazSidekickCommonDocument_AccessType_UNKNOWNACCESS,
  EnterpriseTopazSidekickCommonDocument_AccessType_Allowed,
  EnterpriseTopazSidekickCommonDocument_AccessType_NOTALLOWED,
  EnterpriseTopazSidekickCommonDocument_AccessType
  #-}

-- | Document provenance.
newtype EnterpriseTopazSidekickCommonDocument_Provenance = EnterpriseTopazSidekickCommonDocument_Provenance {fromEnterpriseTopazSidekickCommonDocument_Provenance :: Core.Text}
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

-- | Unknown provenance.
pattern EnterpriseTopazSidekickCommonDocument_Provenance_UNKNOWNPROVENANCE :: EnterpriseTopazSidekickCommonDocument_Provenance
pattern EnterpriseTopazSidekickCommonDocument_Provenance_UNKNOWNPROVENANCE = EnterpriseTopazSidekickCommonDocument_Provenance "UNKNOWN_PROVENANCE"

-- | Calendar event description.
pattern EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARDESCRIPTION :: EnterpriseTopazSidekickCommonDocument_Provenance
pattern EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARDESCRIPTION = EnterpriseTopazSidekickCommonDocument_Provenance "CALENDAR_DESCRIPTION"

-- | Calendar event attachment.
pattern EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARATTACHMENT :: EnterpriseTopazSidekickCommonDocument_Provenance
pattern EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARATTACHMENT = EnterpriseTopazSidekickCommonDocument_Provenance "CALENDAR_ATTACHMENT"

-- | Mined (extracted by some offline\/online analysis).
pattern EnterpriseTopazSidekickCommonDocument_Provenance_Mined :: EnterpriseTopazSidekickCommonDocument_Provenance
pattern EnterpriseTopazSidekickCommonDocument_Provenance_Mined = EnterpriseTopazSidekickCommonDocument_Provenance "MINED"

-- | Attachment created by enterprise assist.
pattern EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARASSISTATTACHMENT :: EnterpriseTopazSidekickCommonDocument_Provenance
pattern EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARASSISTATTACHMENT = EnterpriseTopazSidekickCommonDocument_Provenance "CALENDAR_ASSIST_ATTACHMENT"

{-# COMPLETE
  EnterpriseTopazSidekickCommonDocument_Provenance_UNKNOWNPROVENANCE,
  EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARDESCRIPTION,
  EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARATTACHMENT,
  EnterpriseTopazSidekickCommonDocument_Provenance_Mined,
  EnterpriseTopazSidekickCommonDocument_Provenance_CALENDARASSISTATTACHMENT,
  EnterpriseTopazSidekickCommonDocument_Provenance
  #-}

-- | Justification of why this document is being returned.
newtype EnterpriseTopazSidekickCommonDocument_Reason = EnterpriseTopazSidekickCommonDocument_Reason {fromEnterpriseTopazSidekickCommonDocument_Reason :: Core.Text}
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

-- | Unknown justification.
pattern EnterpriseTopazSidekickCommonDocument_Reason_Unknown :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_Unknown = EnterpriseTopazSidekickCommonDocument_Reason "UNKNOWN"

-- | Popular documents within collaborators.
pattern EnterpriseTopazSidekickCommonDocument_Reason_TRENDINGINCOLLABORATORS :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_TRENDINGINCOLLABORATORS = EnterpriseTopazSidekickCommonDocument_Reason "TRENDING_IN_COLLABORATORS"

-- | Popular documents within the domain.
pattern EnterpriseTopazSidekickCommonDocument_Reason_TRENDINGINDOMAIN :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_TRENDINGINDOMAIN = EnterpriseTopazSidekickCommonDocument_Reason "TRENDING_IN_DOMAIN"

-- | Documents being reviewed frequently by the current user .
pattern EnterpriseTopazSidekickCommonDocument_Reason_FREQUENTLYVIEWED :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_FREQUENTLYVIEWED = EnterpriseTopazSidekickCommonDocument_Reason "FREQUENTLY_VIEWED"

-- | Documents being edited frequently by the current user .
pattern EnterpriseTopazSidekickCommonDocument_Reason_FREQUENTLYEDITED :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_FREQUENTLYEDITED = EnterpriseTopazSidekickCommonDocument_Reason "FREQUENTLY_EDITED"

-- | Documents updated since user\'s last visit.
pattern EnterpriseTopazSidekickCommonDocument_Reason_NEWUPDATES :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_NEWUPDATES = EnterpriseTopazSidekickCommonDocument_Reason "NEW_UPDATES"

-- | Documents that receive comments since user\'s last visit.
pattern EnterpriseTopazSidekickCommonDocument_Reason_NEWCOMMENTS :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_NEWCOMMENTS = EnterpriseTopazSidekickCommonDocument_Reason "NEW_COMMENTS"

-- | Documents in the calendar event description.
pattern EnterpriseTopazSidekickCommonDocument_Reason_EVENTDESCRIPTION :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_EVENTDESCRIPTION = EnterpriseTopazSidekickCommonDocument_Reason "EVENT_DESCRIPTION"

-- | Documents in the calendar event attachments section.
pattern EnterpriseTopazSidekickCommonDocument_Reason_EVENTATTACHMENT :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_EVENTATTACHMENT = EnterpriseTopazSidekickCommonDocument_Reason "EVENT_ATTACHMENT"

-- | Documents attached in calendar event metadata instead of the attachment section. Event metadata is not visible to the final user. Enterprise assist uses this metadata to store auto-generated documents such as meeting notes.
pattern EnterpriseTopazSidekickCommonDocument_Reason_EVENTMETADATAATTACHMENT :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_EVENTMETADATAATTACHMENT = EnterpriseTopazSidekickCommonDocument_Reason "EVENT_METADATA_ATTACHMENT"

-- | Documents mined, and so, probably related to the request context. For example, this category includes documents related to a meeting.
pattern EnterpriseTopazSidekickCommonDocument_Reason_MINEDDOCUMENT :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_MINEDDOCUMENT = EnterpriseTopazSidekickCommonDocument_Reason "MINED_DOCUMENT"

-- | Documents that contains mentions of the user.
pattern EnterpriseTopazSidekickCommonDocument_Reason_NEWMENTIONS :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_NEWMENTIONS = EnterpriseTopazSidekickCommonDocument_Reason "NEW_MENTIONS"

-- | Documents that are shared with the user.
pattern EnterpriseTopazSidekickCommonDocument_Reason_NEWSHARES :: EnterpriseTopazSidekickCommonDocument_Reason
pattern EnterpriseTopazSidekickCommonDocument_Reason_NEWSHARES = EnterpriseTopazSidekickCommonDocument_Reason "NEW_SHARES"

{-# COMPLETE
  EnterpriseTopazSidekickCommonDocument_Reason_Unknown,
  EnterpriseTopazSidekickCommonDocument_Reason_TRENDINGINCOLLABORATORS,
  EnterpriseTopazSidekickCommonDocument_Reason_TRENDINGINDOMAIN,
  EnterpriseTopazSidekickCommonDocument_Reason_FREQUENTLYVIEWED,
  EnterpriseTopazSidekickCommonDocument_Reason_FREQUENTLYEDITED,
  EnterpriseTopazSidekickCommonDocument_Reason_NEWUPDATES,
  EnterpriseTopazSidekickCommonDocument_Reason_NEWCOMMENTS,
  EnterpriseTopazSidekickCommonDocument_Reason_EVENTDESCRIPTION,
  EnterpriseTopazSidekickCommonDocument_Reason_EVENTATTACHMENT,
  EnterpriseTopazSidekickCommonDocument_Reason_EVENTMETADATAATTACHMENT,
  EnterpriseTopazSidekickCommonDocument_Reason_MINEDDOCUMENT,
  EnterpriseTopazSidekickCommonDocument_Reason_NEWMENTIONS,
  EnterpriseTopazSidekickCommonDocument_Reason_NEWSHARES,
  EnterpriseTopazSidekickCommonDocument_Reason
  #-}

-- | Type of the document.
newtype EnterpriseTopazSidekickCommonDocument_Type = EnterpriseTopazSidekickCommonDocument_Type {fromEnterpriseTopazSidekickCommonDocument_Type :: Core.Text}
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
pattern EnterpriseTopazSidekickCommonDocument_Type_Unknown :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Unknown = EnterpriseTopazSidekickCommonDocument_Type "UNKNOWN"

-- | Drive document types Writely, Word, etc.
pattern EnterpriseTopazSidekickCommonDocument_Type_Document :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Document = EnterpriseTopazSidekickCommonDocument_Type "DOCUMENT"

-- | Presently, PowerPoint, etc.
pattern EnterpriseTopazSidekickCommonDocument_Type_Presentation :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Presentation = EnterpriseTopazSidekickCommonDocument_Type "PRESENTATION"

-- | Trix, Excel, etc.
pattern EnterpriseTopazSidekickCommonDocument_Type_Spreadsheet :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Spreadsheet = EnterpriseTopazSidekickCommonDocument_Type "SPREADSHEET"

-- | File types for Gdrive objects are below. PDF.
pattern EnterpriseTopazSidekickCommonDocument_Type_Pdf :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Pdf = EnterpriseTopazSidekickCommonDocument_Type "PDF"

-- | Image.
pattern EnterpriseTopazSidekickCommonDocument_Type_Image :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Image = EnterpriseTopazSidekickCommonDocument_Type "IMAGE"

-- | Fall-back for unknown Gdrive types.
pattern EnterpriseTopazSidekickCommonDocument_Type_BINARYBLOB :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_BINARYBLOB = EnterpriseTopazSidekickCommonDocument_Type "BINARY_BLOB"

-- | Fusion table.
pattern EnterpriseTopazSidekickCommonDocument_Type_FUSIONTABLE :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_FUSIONTABLE = EnterpriseTopazSidekickCommonDocument_Type "FUSION_TABLE"

-- | Folder.
pattern EnterpriseTopazSidekickCommonDocument_Type_Folder :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Folder = EnterpriseTopazSidekickCommonDocument_Type "FOLDER"

-- | Drawing.
pattern EnterpriseTopazSidekickCommonDocument_Type_Drawing :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Drawing = EnterpriseTopazSidekickCommonDocument_Type "DRAWING"

-- | Video.
pattern EnterpriseTopazSidekickCommonDocument_Type_Video :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Video = EnterpriseTopazSidekickCommonDocument_Type "VIDEO"

-- | Form.
pattern EnterpriseTopazSidekickCommonDocument_Type_Form :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Form = EnterpriseTopazSidekickCommonDocument_Type "FORM"

-- | Link formats uncategorized URL links
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKURL :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKURL = EnterpriseTopazSidekickCommonDocument_Type "LINK_URL"

-- | meaningful links that should be renderred specifically
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKGO :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKGO = EnterpriseTopazSidekickCommonDocument_Type "LINK_GO"

-- | Link to goo.gl.
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKGOOGL :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKGOOGL = EnterpriseTopazSidekickCommonDocument_Type "LINK_GOO_GL"

-- | Link to bit_ly.
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKBITLY :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKBITLY = EnterpriseTopazSidekickCommonDocument_Type "LINK_BIT_LY"

-- | Link to Gmail.
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKGMAIL :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKGMAIL = EnterpriseTopazSidekickCommonDocument_Type "LINK_GMAIL"

-- | Mailto link.
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKMAILTO :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_LINKMAILTO = EnterpriseTopazSidekickCommonDocument_Type "LINK_MAILTO"

-- | Videos Youtube videos.
pattern EnterpriseTopazSidekickCommonDocument_Type_VIDEOYOUTUBE :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_VIDEOYOUTUBE = EnterpriseTopazSidekickCommonDocument_Type "VIDEO_YOUTUBE"

-- | Live streams (e.g., liveplayer.googleplex.com)
pattern EnterpriseTopazSidekickCommonDocument_Type_VIDEOLIVE :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_VIDEOLIVE = EnterpriseTopazSidekickCommonDocument_Type "VIDEO_LIVE"

-- | Other types. Google Groups.
pattern EnterpriseTopazSidekickCommonDocument_Type_Groups :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Groups = EnterpriseTopazSidekickCommonDocument_Type "GROUPS"

-- | Google News.
pattern EnterpriseTopazSidekickCommonDocument_Type_News :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_News = EnterpriseTopazSidekickCommonDocument_Type "NEWS"

-- | Google Sites.
pattern EnterpriseTopazSidekickCommonDocument_Type_Sites :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Sites = EnterpriseTopazSidekickCommonDocument_Type "SITES"

-- | Google Hangout.
pattern EnterpriseTopazSidekickCommonDocument_Type_Hangout :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Hangout = EnterpriseTopazSidekickCommonDocument_Type "HANGOUT"

-- | Audio files.
pattern EnterpriseTopazSidekickCommonDocument_Type_Audio :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_Audio = EnterpriseTopazSidekickCommonDocument_Type "AUDIO"

-- | Microsoft-specific file types.
pattern EnterpriseTopazSidekickCommonDocument_Type_MSWORD :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_MSWORD = EnterpriseTopazSidekickCommonDocument_Type "MS_WORD"

pattern EnterpriseTopazSidekickCommonDocument_Type_MSPOWERPOINT :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_MSPOWERPOINT = EnterpriseTopazSidekickCommonDocument_Type "MS_POWERPOINT"

pattern EnterpriseTopazSidekickCommonDocument_Type_MSEXCEL :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_MSEXCEL = EnterpriseTopazSidekickCommonDocument_Type "MS_EXCEL"

pattern EnterpriseTopazSidekickCommonDocument_Type_MSOUTLOOK :: EnterpriseTopazSidekickCommonDocument_Type
pattern EnterpriseTopazSidekickCommonDocument_Type_MSOUTLOOK = EnterpriseTopazSidekickCommonDocument_Type "MS_OUTLOOK"

{-# COMPLETE
  EnterpriseTopazSidekickCommonDocument_Type_Unknown,
  EnterpriseTopazSidekickCommonDocument_Type_Document,
  EnterpriseTopazSidekickCommonDocument_Type_Presentation,
  EnterpriseTopazSidekickCommonDocument_Type_Spreadsheet,
  EnterpriseTopazSidekickCommonDocument_Type_Pdf,
  EnterpriseTopazSidekickCommonDocument_Type_Image,
  EnterpriseTopazSidekickCommonDocument_Type_BINARYBLOB,
  EnterpriseTopazSidekickCommonDocument_Type_FUSIONTABLE,
  EnterpriseTopazSidekickCommonDocument_Type_Folder,
  EnterpriseTopazSidekickCommonDocument_Type_Drawing,
  EnterpriseTopazSidekickCommonDocument_Type_Video,
  EnterpriseTopazSidekickCommonDocument_Type_Form,
  EnterpriseTopazSidekickCommonDocument_Type_LINKURL,
  EnterpriseTopazSidekickCommonDocument_Type_LINKGO,
  EnterpriseTopazSidekickCommonDocument_Type_LINKGOOGL,
  EnterpriseTopazSidekickCommonDocument_Type_LINKBITLY,
  EnterpriseTopazSidekickCommonDocument_Type_LINKGMAIL,
  EnterpriseTopazSidekickCommonDocument_Type_LINKMAILTO,
  EnterpriseTopazSidekickCommonDocument_Type_VIDEOYOUTUBE,
  EnterpriseTopazSidekickCommonDocument_Type_VIDEOLIVE,
  EnterpriseTopazSidekickCommonDocument_Type_Groups,
  EnterpriseTopazSidekickCommonDocument_Type_News,
  EnterpriseTopazSidekickCommonDocument_Type_Sites,
  EnterpriseTopazSidekickCommonDocument_Type_Hangout,
  EnterpriseTopazSidekickCommonDocument_Type_Audio,
  EnterpriseTopazSidekickCommonDocument_Type_MSWORD,
  EnterpriseTopazSidekickCommonDocument_Type_MSPOWERPOINT,
  EnterpriseTopazSidekickCommonDocument_Type_MSEXCEL,
  EnterpriseTopazSidekickCommonDocument_Type_MSOUTLOOK,
  EnterpriseTopazSidekickCommonDocument_Type
  #-}

-- | ACL scope of the document which identifies the sharing status of the doc (e.g., limited, shared with link, team drive, ...).
newtype EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope = EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope {fromEnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope :: Core.Text}
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

pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_UNKNOWNDOCUMENTSCOPE :: EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_UNKNOWNDOCUMENTSCOPE = EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope "UNKNOWN_DOCUMENT_SCOPE"

pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_Limited :: EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_Limited = EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope "LIMITED"

pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_DASHERDOMAINWITHLINK :: EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_DASHERDOMAINWITHLINK = EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope "DASHER_DOMAIN_WITH_LINK"

pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_DASHERDOMAIN :: EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_DASHERDOMAIN = EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope "DASHER_DOMAIN"

pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_PUBLICWITHLINK :: EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_PUBLICWITHLINK = EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope "PUBLIC_WITH_LINK"

pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_Public :: EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_Public = EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope "PUBLIC"

pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_TEAMDRIVE :: EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
pattern EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_TEAMDRIVE = EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope "TEAM_DRIVE"

{-# COMPLETE
  EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_UNKNOWNDOCUMENTSCOPE,
  EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_Limited,
  EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_DASHERDOMAINWITHLINK,
  EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_DASHERDOMAIN,
  EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_PUBLICWITHLINK,
  EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_Public,
  EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope_TEAMDRIVE,
  EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata_Scope
  #-}

-- | Reason on why the document is selected. Populate for trending documents.
newtype EnterpriseTopazSidekickCommonDocumentJustification_Reason = EnterpriseTopazSidekickCommonDocumentJustification_Reason {fromEnterpriseTopazSidekickCommonDocumentJustification_Reason :: Core.Text}
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

-- | Unknown justification.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_Unknown :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_Unknown = EnterpriseTopazSidekickCommonDocumentJustification_Reason "UNKNOWN"

-- | Popular documents within collaborators.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_TRENDINGINCOLLABORATORS :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_TRENDINGINCOLLABORATORS = EnterpriseTopazSidekickCommonDocumentJustification_Reason "TRENDING_IN_COLLABORATORS"

-- | Popular documents within the domain.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_TRENDINGINDOMAIN :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_TRENDINGINDOMAIN = EnterpriseTopazSidekickCommonDocumentJustification_Reason "TRENDING_IN_DOMAIN"

-- | Documents being reviewed frequently by the current user .
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_FREQUENTLYVIEWED :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_FREQUENTLYVIEWED = EnterpriseTopazSidekickCommonDocumentJustification_Reason "FREQUENTLY_VIEWED"

-- | Documents being edited frequently by the current user .
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_FREQUENTLYEDITED :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_FREQUENTLYEDITED = EnterpriseTopazSidekickCommonDocumentJustification_Reason "FREQUENTLY_EDITED"

-- | Documents updated since user\'s last visit.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWUPDATES :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWUPDATES = EnterpriseTopazSidekickCommonDocumentJustification_Reason "NEW_UPDATES"

-- | Documents that receive comments since user\'s last visit.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWCOMMENTS :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWCOMMENTS = EnterpriseTopazSidekickCommonDocumentJustification_Reason "NEW_COMMENTS"

-- | Documents in the calendar event description.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTDESCRIPTION :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTDESCRIPTION = EnterpriseTopazSidekickCommonDocumentJustification_Reason "EVENT_DESCRIPTION"

-- | Documents in the calendar event attachments section.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTATTACHMENT :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTATTACHMENT = EnterpriseTopazSidekickCommonDocumentJustification_Reason "EVENT_ATTACHMENT"

-- | Documents attached in calendar event metadata instead of the attachment section. Event metadata is not visible to the final user. Enterprise assist uses this metadata to store auto-generated documents such as meeting notes.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTMETADATAATTACHMENT :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTMETADATAATTACHMENT = EnterpriseTopazSidekickCommonDocumentJustification_Reason "EVENT_METADATA_ATTACHMENT"

-- | Documents mined, and so, probably related to the request context. For example, this category includes documents related to a meeting.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_MINEDDOCUMENT :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_MINEDDOCUMENT = EnterpriseTopazSidekickCommonDocumentJustification_Reason "MINED_DOCUMENT"

-- | Documents that contains mentions of the user.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWMENTIONS :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWMENTIONS = EnterpriseTopazSidekickCommonDocumentJustification_Reason "NEW_MENTIONS"

-- | Documents that are shared with the user.
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWSHARES :: EnterpriseTopazSidekickCommonDocumentJustification_Reason
pattern EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWSHARES = EnterpriseTopazSidekickCommonDocumentJustification_Reason "NEW_SHARES"

{-# COMPLETE
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_Unknown,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_TRENDINGINCOLLABORATORS,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_TRENDINGINDOMAIN,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_FREQUENTLYVIEWED,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_FREQUENTLYEDITED,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWUPDATES,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWCOMMENTS,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTDESCRIPTION,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTATTACHMENT,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_EVENTMETADATAATTACHMENT,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_MINEDDOCUMENT,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWMENTIONS,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason_NEWSHARES,
  EnterpriseTopazSidekickCommonDocumentJustification_Reason
  #-}

-- | Document group type
newtype EnterpriseTopazSidekickDocumentGroup_GroupType = EnterpriseTopazSidekickDocumentGroup_GroupType {fromEnterpriseTopazSidekickDocumentGroup_GroupType :: Core.Text}
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

-- | Unknown type.
pattern EnterpriseTopazSidekickDocumentGroup_GroupType_UNKNOWNTYPE :: EnterpriseTopazSidekickDocumentGroup_GroupType
pattern EnterpriseTopazSidekickDocumentGroup_GroupType_UNKNOWNTYPE = EnterpriseTopazSidekickDocumentGroup_GroupType "UNKNOWN_TYPE"

-- | A mix of all the document types.
pattern EnterpriseTopazSidekickDocumentGroup_GroupType_All :: EnterpriseTopazSidekickDocumentGroup_GroupType
pattern EnterpriseTopazSidekickDocumentGroup_GroupType_All = EnterpriseTopazSidekickDocumentGroup_GroupType "ALL"

{-# COMPLETE
  EnterpriseTopazSidekickDocumentGroup_GroupType_UNKNOWNTYPE,
  EnterpriseTopazSidekickDocumentGroup_GroupType_All,
  EnterpriseTopazSidekickDocumentGroup_GroupType
  #-}

newtype EnterpriseTopazSidekickDocumentPerCategoryList_ListType = EnterpriseTopazSidekickDocumentPerCategoryList_ListType {fromEnterpriseTopazSidekickDocumentPerCategoryList_ListType :: Core.Text}
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

pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_UNKNOWNLISTTYPE :: EnterpriseTopazSidekickDocumentPerCategoryList_ListType
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_UNKNOWNLISTTYPE = EnterpriseTopazSidekickDocumentPerCategoryList_ListType "UNKNOWN_LIST_TYPE"

-- | All documents in the list correspond to one of the mention categories.
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Mentions :: EnterpriseTopazSidekickDocumentPerCategoryList_ListType
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Mentions = EnterpriseTopazSidekickDocumentPerCategoryList_ListType "MENTIONS"

-- | All documents in the list correspond to one of the share categories.
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Shares :: EnterpriseTopazSidekickDocumentPerCategoryList_ListType
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Shares = EnterpriseTopazSidekickDocumentPerCategoryList_ListType "SHARES"

-- | A mixture of document categories that correspond to documents that need the users attention (e.g. documents that have been explicitly shared with the user but have not been viewed and documents where the user was mentioned but has not replied).
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_NEEDSATTENTION :: EnterpriseTopazSidekickDocumentPerCategoryList_ListType
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_NEEDSATTENTION = EnterpriseTopazSidekickDocumentPerCategoryList_ListType "NEEDS_ATTENTION"

-- | All documents in the list correspond to one of the view categories.
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Views :: EnterpriseTopazSidekickDocumentPerCategoryList_ListType
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Views = EnterpriseTopazSidekickDocumentPerCategoryList_ListType "VIEWS"

-- | All documents in the list correspond to one of the edit categories.
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Edits :: EnterpriseTopazSidekickDocumentPerCategoryList_ListType
pattern EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Edits = EnterpriseTopazSidekickDocumentPerCategoryList_ListType "EDITS"

{-# COMPLETE
  EnterpriseTopazSidekickDocumentPerCategoryList_ListType_UNKNOWNLISTTYPE,
  EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Mentions,
  EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Shares,
  EnterpriseTopazSidekickDocumentPerCategoryList_ListType_NEEDSATTENTION,
  EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Views,
  EnterpriseTopazSidekickDocumentPerCategoryList_ListType_Edits,
  EnterpriseTopazSidekickDocumentPerCategoryList_ListType
  #-}

newtype EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category {fromEnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category :: Core.Text}
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

pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_UNKNOWNDOCUMENT :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_UNKNOWNDOCUMENT = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "UNKNOWN_DOCUMENT"

pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Actionable :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Actionable = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "ACTIONABLE"

pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Viewed :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Viewed = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "VIEWED"

pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Replied :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Replied = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "REPLIED"

-- | Mention categories. The mention has been viewed by the user, but the user has not replied.
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONVIEWED :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONVIEWED = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "MENTION_VIEWED"

-- | The user has replied to the mention.
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONREPLIED :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONREPLIED = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "MENTION_REPLIED"

-- | The mention has not been viewed by the user.
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONNOTVIEWED :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONNOTVIEWED = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "MENTION_NOT_VIEWED"

-- | Share categories. Consists of documents that have been explicitly shared with the user. Document has been viewed.
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_SHAREDANDVIEWED :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_SHAREDANDVIEWED = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "SHARED_AND_VIEWED"

-- | Document has not been viewed.
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_SHAREDNOTVIEWED :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_SHAREDNOTVIEWED = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "SHARED_NOT_VIEWED"

-- | Document has been edited.
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Edited :: EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
pattern EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Edited = EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category "EDITED"

{-# COMPLETE
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_UNKNOWNDOCUMENT,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Actionable,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Viewed,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Replied,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONVIEWED,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONREPLIED,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_MENTIONNOTVIEWED,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_SHAREDANDVIEWED,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_SHAREDNOTVIEWED,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category_Edited,
  EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry_Category
  #-}

-- | The reason why create-meeting-notes failed.
newtype EnterpriseTopazSidekickMeetingNotesCardError_Reason = EnterpriseTopazSidekickMeetingNotesCardError_Reason {fromEnterpriseTopazSidekickMeetingNotesCardError_Reason :: Core.Text}
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

-- | No reason (default value).
pattern EnterpriseTopazSidekickMeetingNotesCardError_Reason_None :: EnterpriseTopazSidekickMeetingNotesCardError_Reason
pattern EnterpriseTopazSidekickMeetingNotesCardError_Reason_None = EnterpriseTopazSidekickMeetingNotesCardError_Reason "NONE"

-- | The user is not an owner.
pattern EnterpriseTopazSidekickMeetingNotesCardError_Reason_NOTOWNER :: EnterpriseTopazSidekickMeetingNotesCardError_Reason
pattern EnterpriseTopazSidekickMeetingNotesCardError_Reason_NOTOWNER = EnterpriseTopazSidekickMeetingNotesCardError_Reason "NOT_OWNER"

-- | Unknown reason.
pattern EnterpriseTopazSidekickMeetingNotesCardError_Reason_Unknown :: EnterpriseTopazSidekickMeetingNotesCardError_Reason
pattern EnterpriseTopazSidekickMeetingNotesCardError_Reason_Unknown = EnterpriseTopazSidekickMeetingNotesCardError_Reason "UNKNOWN"

{-# COMPLETE
  EnterpriseTopazSidekickMeetingNotesCardError_Reason_None,
  EnterpriseTopazSidekickMeetingNotesCardError_Reason_NOTOWNER,
  EnterpriseTopazSidekickMeetingNotesCardError_Reason_Unknown,
  EnterpriseTopazSidekickMeetingNotesCardError_Reason
  #-}

newtype EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem = EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem {fromEnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem :: Core.Text}
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

-- | Unknown (default).
pattern EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_Unknown :: EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem
pattern EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_Unknown = EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem "UNKNOWN"

-- | For the requester.
pattern EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_Myself :: EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem
pattern EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_Myself = EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem "MYSELF"

-- | For all the meeting attendees.
pattern EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_ALLATTENDEES :: EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem
pattern EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_ALLATTENDEES = EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem "ALL_ATTENDEES"

{-# COMPLETE
  EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_Unknown,
  EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_Myself,
  EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem_ALLATTENDEES,
  EnterpriseTopazSidekickMeetingNotesCardRequest_CanCreateForItem
  #-}

-- | The response status.
newtype EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus = EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus {fromEnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus :: Core.Text}
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

-- | Unknown.
pattern EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_Unknown :: EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus
pattern EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_Unknown = EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus "UNKNOWN"

-- | Success.
pattern EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_Success :: EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus
pattern EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_Success = EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus "SUCCESS"

-- | No such person was found in the user\'s domain.
pattern EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_MISSINGPERSON :: EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus
pattern EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_MISSINGPERSON = EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus "MISSING_PERSON"

-- | A person was found to match the query, but an answer could not be obtained.
pattern EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_MISSINGDATA :: EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus
pattern EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_MISSINGDATA = EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus "MISSING_DATA"

{-# COMPLETE
  EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_Unknown,
  EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_Success,
  EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_MISSINGPERSON,
  EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus_MISSINGDATA,
  EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard_ResponseStatus
  #-}

-- | Defines the type of relation the list of people have with the subject of the card.
newtype EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType {fromEnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType :: Core.Text}
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

-- | Unknown.
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Unknown :: EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Unknown = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType "UNKNOWN"

-- | Direct reports.
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_DIRECTREPORTS :: EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_DIRECTREPORTS = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType "DIRECT_REPORTS"

-- | The manager.
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Manager :: EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Manager = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType "MANAGER"

-- | The teammates\/peers of the subject.
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Peers :: EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Peers = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType "PEERS"

{-# COMPLETE
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Unknown,
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_DIRECTREPORTS,
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Manager,
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType_Peers,
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_RelationType
  #-}

-- | The response status.
newtype EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus {fromEnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus :: Core.Text}
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

-- | Unknown.
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_Unknown :: EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_Unknown = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus "UNKNOWN"

-- | Success.
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_Success :: EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_Success = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus "SUCCESS"

-- | No such person was found in the user\'s domain.
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_MISSINGPERSON :: EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_MISSINGPERSON = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus "MISSING_PERSON"

-- | A person was found to match the query, but an answer could not be obtained.
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_MISSINGDATA :: EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus
pattern EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_MISSINGDATA = EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus "MISSING_DATA"

{-# COMPLETE
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_Unknown,
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_Success,
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_MISSINGPERSON,
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus_MISSINGDATA,
  EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard_ResponseStatus
  #-}

-- | The level of affinity this person has with the requesting user.
newtype EnterpriseTopazSidekickPerson_AffinityLevel = EnterpriseTopazSidekickPerson_AffinityLevel {fromEnterpriseTopazSidekickPerson_AffinityLevel :: Core.Text}
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

pattern EnterpriseTopazSidekickPerson_AffinityLevel_Unknown :: EnterpriseTopazSidekickPerson_AffinityLevel
pattern EnterpriseTopazSidekickPerson_AffinityLevel_Unknown = EnterpriseTopazSidekickPerson_AffinityLevel "UNKNOWN"

pattern EnterpriseTopazSidekickPerson_AffinityLevel_Low :: EnterpriseTopazSidekickPerson_AffinityLevel
pattern EnterpriseTopazSidekickPerson_AffinityLevel_Low = EnterpriseTopazSidekickPerson_AffinityLevel "LOW"

pattern EnterpriseTopazSidekickPerson_AffinityLevel_Medium :: EnterpriseTopazSidekickPerson_AffinityLevel
pattern EnterpriseTopazSidekickPerson_AffinityLevel_Medium = EnterpriseTopazSidekickPerson_AffinityLevel "MEDIUM"

pattern EnterpriseTopazSidekickPerson_AffinityLevel_High :: EnterpriseTopazSidekickPerson_AffinityLevel
pattern EnterpriseTopazSidekickPerson_AffinityLevel_High = EnterpriseTopazSidekickPerson_AffinityLevel "HIGH"

{-# COMPLETE
  EnterpriseTopazSidekickPerson_AffinityLevel_Unknown,
  EnterpriseTopazSidekickPerson_AffinityLevel_Low,
  EnterpriseTopazSidekickPerson_AffinityLevel_Medium,
  EnterpriseTopazSidekickPerson_AffinityLevel_High,
  EnterpriseTopazSidekickPerson_AffinityLevel
  #-}

-- | Attendance status of the person when included in a meeting event.
newtype EnterpriseTopazSidekickPerson_AttendingStatus = EnterpriseTopazSidekickPerson_AttendingStatus {fromEnterpriseTopazSidekickPerson_AttendingStatus :: Core.Text}
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

-- | Awaiting for the user to set the status.
pattern EnterpriseTopazSidekickPerson_AttendingStatus_Awaiting :: EnterpriseTopazSidekickPerson_AttendingStatus
pattern EnterpriseTopazSidekickPerson_AttendingStatus_Awaiting = EnterpriseTopazSidekickPerson_AttendingStatus "AWAITING"

-- | Attending.
pattern EnterpriseTopazSidekickPerson_AttendingStatus_Yes :: EnterpriseTopazSidekickPerson_AttendingStatus
pattern EnterpriseTopazSidekickPerson_AttendingStatus_Yes = EnterpriseTopazSidekickPerson_AttendingStatus "YES"

-- | Not attending.
pattern EnterpriseTopazSidekickPerson_AttendingStatus_NO :: EnterpriseTopazSidekickPerson_AttendingStatus
pattern EnterpriseTopazSidekickPerson_AttendingStatus_NO = EnterpriseTopazSidekickPerson_AttendingStatus "NO"

-- | Tentatively attending.
pattern EnterpriseTopazSidekickPerson_AttendingStatus_Maybe :: EnterpriseTopazSidekickPerson_AttendingStatus
pattern EnterpriseTopazSidekickPerson_AttendingStatus_Maybe = EnterpriseTopazSidekickPerson_AttendingStatus "MAYBE"

{-# COMPLETE
  EnterpriseTopazSidekickPerson_AttendingStatus_Awaiting,
  EnterpriseTopazSidekickPerson_AttendingStatus_Yes,
  EnterpriseTopazSidekickPerson_AttendingStatus_NO,
  EnterpriseTopazSidekickPerson_AttendingStatus_Maybe,
  EnterpriseTopazSidekickPerson_AttendingStatus
  #-}

-- | Relation type.
newtype EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation = EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation {fromEnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation :: Core.Text}
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

pattern EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_Unknown :: EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation
pattern EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_Unknown = EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation "UNKNOWN"

pattern EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_Manager :: EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation
pattern EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_Manager = EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation "MANAGER"

pattern EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_DIRECTREPORT :: EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation
pattern EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_DIRECTREPORT = EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation "DIRECT_REPORT"

{-# COMPLETE
  EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_Unknown,
  EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_Manager,
  EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation_DIRECTREPORT,
  EnterpriseTopazSidekickPersonProfileCardRelatedPeople_Relation
  #-}

-- | The priority to determine between objects that have the same start/time/ms The lower-value of priority == ranked higher. Max-priority = 0. Expected to be set for all types.
newtype EnterpriseTopazSidekickRankingParams_Priority = EnterpriseTopazSidekickRankingParams_Priority {fromEnterpriseTopazSidekickRankingParams_Priority :: Core.Text}
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

-- | Unknown (default).
pattern EnterpriseTopazSidekickRankingParams_Priority_Unknown :: EnterpriseTopazSidekickRankingParams_Priority
pattern EnterpriseTopazSidekickRankingParams_Priority_Unknown = EnterpriseTopazSidekickRankingParams_Priority "UNKNOWN"

-- | Critical.
pattern EnterpriseTopazSidekickRankingParams_Priority_Critical :: EnterpriseTopazSidekickRankingParams_Priority
pattern EnterpriseTopazSidekickRankingParams_Priority_Critical = EnterpriseTopazSidekickRankingParams_Priority "CRITICAL"

-- | Important.
pattern EnterpriseTopazSidekickRankingParams_Priority_Important :: EnterpriseTopazSidekickRankingParams_Priority
pattern EnterpriseTopazSidekickRankingParams_Priority_Important = EnterpriseTopazSidekickRankingParams_Priority "IMPORTANT"

-- | High.
pattern EnterpriseTopazSidekickRankingParams_Priority_High :: EnterpriseTopazSidekickRankingParams_Priority
pattern EnterpriseTopazSidekickRankingParams_Priority_High = EnterpriseTopazSidekickRankingParams_Priority "HIGH"

-- | Normal.
pattern EnterpriseTopazSidekickRankingParams_Priority_Normal :: EnterpriseTopazSidekickRankingParams_Priority
pattern EnterpriseTopazSidekickRankingParams_Priority_Normal = EnterpriseTopazSidekickRankingParams_Priority "NORMAL"

-- | Best effort.
pattern EnterpriseTopazSidekickRankingParams_Priority_BESTEFFORT :: EnterpriseTopazSidekickRankingParams_Priority
pattern EnterpriseTopazSidekickRankingParams_Priority_BESTEFFORT = EnterpriseTopazSidekickRankingParams_Priority "BEST_EFFORT"

{-# COMPLETE
  EnterpriseTopazSidekickRankingParams_Priority_Unknown,
  EnterpriseTopazSidekickRankingParams_Priority_Critical,
  EnterpriseTopazSidekickRankingParams_Priority_Important,
  EnterpriseTopazSidekickRankingParams_Priority_High,
  EnterpriseTopazSidekickRankingParams_Priority_Normal,
  EnterpriseTopazSidekickRankingParams_Priority_BESTEFFORT,
  EnterpriseTopazSidekickRankingParams_Priority
  #-}

-- | The packing type of this object.
newtype EnterpriseTopazSidekickRankingParams_Type = EnterpriseTopazSidekickRankingParams_Type {fromEnterpriseTopazSidekickRankingParams_Type :: Core.Text}
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

-- | Fixed, i.e., the card is time sensitive.
pattern EnterpriseTopazSidekickRankingParams_Type_Fixed :: EnterpriseTopazSidekickRankingParams_Type
pattern EnterpriseTopazSidekickRankingParams_Type_Fixed = EnterpriseTopazSidekickRankingParams_Type "FIXED"

-- | Flexible, i.e., the card is not time sensitive.
pattern EnterpriseTopazSidekickRankingParams_Type_Flexible :: EnterpriseTopazSidekickRankingParams_Type
pattern EnterpriseTopazSidekickRankingParams_Type_Flexible = EnterpriseTopazSidekickRankingParams_Type "FLEXIBLE"

{-# COMPLETE
  EnterpriseTopazSidekickRankingParams_Type_Fixed,
  EnterpriseTopazSidekickRankingParams_Type_Flexible,
  EnterpriseTopazSidekickRankingParams_Type
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

-- | The priority is not specified in the update request. Leaving priority unspecified results in an update failure.
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

-- | The type for this item.
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

newtype PersonCore_AvailabilityStatus = PersonCore_AvailabilityStatus {fromPersonCore_AvailabilityStatus :: Core.Text}
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

pattern PersonCore_AvailabilityStatus_Unknown :: PersonCore_AvailabilityStatus
pattern PersonCore_AvailabilityStatus_Unknown = PersonCore_AvailabilityStatus "UNKNOWN"

pattern PersonCore_AvailabilityStatus_OUTOFOFFICE :: PersonCore_AvailabilityStatus
pattern PersonCore_AvailabilityStatus_OUTOFOFFICE = PersonCore_AvailabilityStatus "OUT_OF_OFFICE"

pattern PersonCore_AvailabilityStatus_OUTSIDEWORKINGHOURS :: PersonCore_AvailabilityStatus
pattern PersonCore_AvailabilityStatus_OUTSIDEWORKINGHOURS = PersonCore_AvailabilityStatus "OUTSIDE_WORKING_HOURS"

pattern PersonCore_AvailabilityStatus_Available :: PersonCore_AvailabilityStatus
pattern PersonCore_AvailabilityStatus_Available = PersonCore_AvailabilityStatus "AVAILABLE"

{-# COMPLETE
  PersonCore_AvailabilityStatus_Unknown,
  PersonCore_AvailabilityStatus_OUTOFOFFICE,
  PersonCore_AvailabilityStatus_OUTSIDEWORKINGHOURS,
  PersonCore_AvailabilityStatus_Available,
  PersonCore_AvailabilityStatus
  #-}

newtype PhoneNumber_Type = PhoneNumber_Type {fromPhoneNumber_Type :: Core.Text}
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

pattern PhoneNumber_Type_Other :: PhoneNumber_Type
pattern PhoneNumber_Type_Other = PhoneNumber_Type "OTHER"

pattern PhoneNumber_Type_Mobile :: PhoneNumber_Type
pattern PhoneNumber_Type_Mobile = PhoneNumber_Type "MOBILE"

pattern PhoneNumber_Type_Office :: PhoneNumber_Type
pattern PhoneNumber_Type_Office = PhoneNumber_Type "OFFICE"

{-# COMPLETE
  PhoneNumber_Type_Other,
  PhoneNumber_Type_Mobile,
  PhoneNumber_Type_Office,
  PhoneNumber_Type
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

-- | The type of the operator.
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

pattern QueryOperator_Type_Integer :: QueryOperator_Type
pattern QueryOperator_Type_Integer = QueryOperator_Type "INTEGER"

pattern QueryOperator_Type_Double :: QueryOperator_Type
pattern QueryOperator_Type_Double = QueryOperator_Type "DOUBLE"

pattern QueryOperator_Type_Timestamp :: QueryOperator_Type
pattern QueryOperator_Type_Timestamp = QueryOperator_Type "TIMESTAMP"

pattern QueryOperator_Type_Boolean :: QueryOperator_Type
pattern QueryOperator_Type_Boolean = QueryOperator_Type "BOOLEAN"

pattern QueryOperator_Type_Enum' :: QueryOperator_Type
pattern QueryOperator_Type_Enum' = QueryOperator_Type "ENUM"

pattern QueryOperator_Type_Date :: QueryOperator_Type
pattern QueryOperator_Type_Date = QueryOperator_Type "DATE"

pattern QueryOperator_Type_Text :: QueryOperator_Type
pattern QueryOperator_Type_Text = QueryOperator_Type "TEXT"

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

-- | The type of error.
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

pattern SortOptions_SortOrder_Ascending :: SortOptions_SortOrder
pattern SortOptions_SortOrder_Ascending = SortOptions_SortOrder "ASCENDING"

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

pattern Source_PredefinedSource_None :: Source_PredefinedSource
pattern Source_PredefinedSource_None = Source_PredefinedSource "NONE"

-- | Suggests queries issued by the user in the past. Only valid when used with the suggest API. Ignored when used in the query API.
pattern Source_PredefinedSource_QUERYHISTORY :: Source_PredefinedSource
pattern Source_PredefinedSource_QUERYHISTORY = Source_PredefinedSource "QUERY_HISTORY"

-- | Suggests people in the organization. Only valid when used with the suggest API. Results in an error when used in the query API.
pattern Source_PredefinedSource_Person :: Source_PredefinedSource
pattern Source_PredefinedSource_Person = Source_PredefinedSource "PERSON"

pattern Source_PredefinedSource_GOOGLEDRIVE :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLEDRIVE = Source_PredefinedSource "GOOGLE_DRIVE"

pattern Source_PredefinedSource_GOOGLEGMAIL :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLEGMAIL = Source_PredefinedSource "GOOGLE_GMAIL"

pattern Source_PredefinedSource_GOOGLESITES :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLESITES = Source_PredefinedSource "GOOGLE_SITES"

pattern Source_PredefinedSource_GOOGLEGROUPS :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLEGROUPS = Source_PredefinedSource "GOOGLE_GROUPS"

pattern Source_PredefinedSource_GOOGLECALENDAR :: Source_PredefinedSource
pattern Source_PredefinedSource_GOOGLECALENDAR = Source_PredefinedSource "GOOGLE_CALENDAR"

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

pattern SourceScoringConfig_SourceImportance_Default :: SourceScoringConfig_SourceImportance
pattern SourceScoringConfig_SourceImportance_Default = SourceScoringConfig_SourceImportance "DEFAULT"

pattern SourceScoringConfig_SourceImportance_Low :: SourceScoringConfig_SourceImportance
pattern SourceScoringConfig_SourceImportance_Low = SourceScoringConfig_SourceImportance "LOW"

pattern SourceScoringConfig_SourceImportance_High :: SourceScoringConfig_SourceImportance
pattern SourceScoringConfig_SourceImportance_High = SourceScoringConfig_SourceImportance "HIGH"

{-# COMPLETE
  SourceScoringConfig_SourceImportance_Default,
  SourceScoringConfig_SourceImportance_Low,
  SourceScoringConfig_SourceImportance_High,
  SourceScoringConfig_SourceImportance
  #-}

-- | Suggestion triggered for the current query.
newtype SpellResult_SuggestionType = SpellResult_SuggestionType {fromSpellResult_SuggestionType :: Core.Text}
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

-- | Default spell check type
pattern SpellResult_SuggestionType_SUGGESTIONTYPEUNSPECIFIED :: SpellResult_SuggestionType
pattern SpellResult_SuggestionType_SUGGESTIONTYPEUNSPECIFIED = SpellResult_SuggestionType "SUGGESTION_TYPE_UNSPECIFIED"

-- | Spell suggestion without any results changed. The results are still shown for the original query (which has non zero \/ results) with a suggestion for spelling that would have results.
pattern SpellResult_SuggestionType_NONEMPTYRESULTSSPELLSUGGESTION :: SpellResult_SuggestionType
pattern SpellResult_SuggestionType_NONEMPTYRESULTSSPELLSUGGESTION = SpellResult_SuggestionType "NON_EMPTY_RESULTS_SPELL_SUGGESTION"

-- | Spell suggestion triggered when original query has no results. When the original query has no results, and spell suggestion has results we trigger results for the spell corrected query.
pattern SpellResult_SuggestionType_ZERORESULTSFULLPAGEREPLACEMENT :: SpellResult_SuggestionType
pattern SpellResult_SuggestionType_ZERORESULTSFULLPAGEREPLACEMENT = SpellResult_SuggestionType "ZERO_RESULTS_FULL_PAGE_REPLACEMENT"

{-# COMPLETE
  SpellResult_SuggestionType_SUGGESTIONTYPEUNSPECIFIED,
  SpellResult_SuggestionType_NONEMPTYRESULTSSPELLSUGGESTION,
  SpellResult_SuggestionType_ZERORESULTSFULLPAGEREPLACEMENT,
  SpellResult_SuggestionType
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

-- | The priority is not specified in the update request. Leaving priority unspecified results in an update failure.
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
