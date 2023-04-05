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
-- Module      : Gogol.CloudSearch.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudSearch.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AclFixRequest_Role
    AclFixRequest_Role
      ( AclFixRequest_Role_Unknown,
        AclFixRequest_Role_Reader,
        AclFixRequest_Role_Commenter,
        AclFixRequest_Role_Writer,
        ..
      ),

    -- * AclFixStatus_Fixability
    AclFixStatus_Fixability
      ( AclFixStatus_Fixability_Unknown,
        AclFixStatus_Fixability_ALREADYACCESSIBLE,
        AclFixStatus_Fixability_CANFIX,
        AclFixStatus_Fixability_CANNOTFIX,
        AclFixStatus_Fixability_ACLFIXERERROR,
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

    -- * AddonComposeUiActionMarkup_Type
    AddonComposeUiActionMarkup_Type
      ( AddonComposeUiActionMarkup_Type_Unspecified,
        AddonComposeUiActionMarkup_Type_Dismiss,
        ..
      ),

    -- * AffectedMembership_PriorMembershipRole
    AffectedMembership_PriorMembershipRole
      ( AffectedMembership_PriorMembershipRole_ROLEUNKNOWN,
        AffectedMembership_PriorMembershipRole_ROLENONE,
        AffectedMembership_PriorMembershipRole_ROLEINVITEE,
        AffectedMembership_PriorMembershipRole_ROLEMEMBER,
        AffectedMembership_PriorMembershipRole_ROLEOWNER,
        ..
      ),

    -- * AffectedMembership_PriorMembershipState
    AffectedMembership_PriorMembershipState
      ( AffectedMembership_PriorMembershipState_MEMBERUNKNOWN,
        AffectedMembership_PriorMembershipState_MEMBERINVITED,
        AffectedMembership_PriorMembershipState_MEMBERJOINED,
        AffectedMembership_PriorMembershipState_MEMBERNOTAMEMBER,
        AffectedMembership_PriorMembershipState_MEMBERFAILED,
        ..
      ),

    -- * AffectedMembership_TargetMembershipRole
    AffectedMembership_TargetMembershipRole
      ( AffectedMembership_TargetMembershipRole_ROLEUNKNOWN,
        AffectedMembership_TargetMembershipRole_ROLENONE,
        AffectedMembership_TargetMembershipRole_ROLEINVITEE,
        AffectedMembership_TargetMembershipRole_ROLEMEMBER,
        AffectedMembership_TargetMembershipRole_ROLEOWNER,
        ..
      ),

    -- * Annotation_ChipRenderType
    Annotation_ChipRenderType
      ( Annotation_ChipRenderType_CHIPRENDERTYPEUNSPECIFIED,
        Annotation_ChipRenderType_Render,
        Annotation_ChipRenderType_RENDERIFPOSSIBLE,
        Annotation_ChipRenderType_DONOTRENDER,
        ..
      ),

    -- * Annotation_InlineRenderFormat
    Annotation_InlineRenderFormat
      ( Annotation_InlineRenderFormat_INLINERENDERFORMATUNSPECIFIED,
        Annotation_InlineRenderFormat_SMARTCHIP,
        ..
      ),

    -- * Annotation_Type
    Annotation_Type
      ( Annotation_Type_TYPEUNSPECIFIED,
        Annotation_Type_Url,
        Annotation_Type_DRIVEFILE,
        Annotation_Type_DRIVEDOC,
        Annotation_Type_DRIVESHEET,
        Annotation_Type_DRIVESLIDE,
        Annotation_Type_DRIVEFORM,
        Annotation_Type_USERMENTION,
        Annotation_Type_SLASHCOMMAND,
        Annotation_Type_CONSENTEDAPPUNFURL,
        Annotation_Type_Video,
        Annotation_Type_FORMATDATA,
        Annotation_Type_Image,
        Annotation_Type_Pdf,
        Annotation_Type_VIDEOCALL,
        Annotation_Type_UPLOADMETADATA,
        Annotation_Type_GSUITEINTEGRATION,
        Annotation_Type_CUSTOMEMOJI,
        Annotation_Type_CARDCAPABILITY,
        Annotation_Type_DATALOSSPREVENTION,
        Annotation_Type_REQUIREDMESSAGEFEATURESMETADATA,
        Annotation_Type_MEMBERSHIPCHANGED,
        Annotation_Type_ROOMUPDATED,
        Annotation_Type_GROUPRETENTIONSETTINGSUPDATED,
        Annotation_Type_BABELPLACEHOLDER,
        Annotation_Type_READRECEIPTSSETTINGSUPDATED,
        Annotation_Type_INCOMINGWEBHOOKCHANGED,
        Annotation_Type_INTEGRATIONCONFIGUPDATED,
        Annotation_Type_Invitation,
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
        AppId_GsuiteAppType_ASSISTIVESUGGESTIONAPP,
        AppId_GsuiteAppType_CONTACTSAPP,
        AppId_GsuiteAppType_ACTIVITYFEEDAPP,
        AppId_GsuiteAppType_DRIVEAPP,
        AppId_GsuiteAppType_CHATINMEETAPP,
        ..
      ),

    -- * AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType
    AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType
      ( AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_UPDATERCOUNTDISPLAYTYPEUNSPECIFIED,
        AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_EXACTCOUNT,
        AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_NONZEROCOUNT,
        ..
      ),

    -- * AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback
    AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback
      ( AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_THUMBSFEEDBACKUNSPECIFIED,
        AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_NONESELECTED,
        AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_UP,
        AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_Down,
        ..
      ),

    -- * AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
    AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
      ( AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_FEEDBACKCHIPTYPEUNSPECIFIED,
        AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_WRONGTRIGGER,
        AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_WRONGFILE,
        AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_CORRECTTRIGGER,
        AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_CORRECTFILE,
        AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_Disruptive,
        AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_Other,
        ..
      ),

    -- * AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State
    AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State
      ( AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_FEEDBACKCHIPSTATEUNSPECIFIED,
        AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_Selected,
        AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_Unselected,
        ..
      ),

    -- * AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
    AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
      ( AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANUNKNOWNOUTCOME,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDNOVIOLATION,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDBLOCK,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWARN,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDAUDITONLY,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREEXCEPTION,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILURERULEFETCHFAILED,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILURETIMEOUT,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREALLRULESFAILED,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREILLEGALSTATEFORATTACHMENTS,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDEXPERIMENTDISABLED,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDCONSUMER,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDNONHUMANUSER,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDNOMESSAGE,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDUSERACKNOWLEDGEDWARNING,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDMESSAGEFROMUNSUPPORTEDORIGIN,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDMESSAGESENTDURINGSPACEMIGRATION,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNORULESFOUND,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORACTIONPARAMS,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORTRIGGER,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGPERMANENTERROR,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGEMPTYRESPONSE,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDUNSUPPORTEDFILETYPE,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESNOVIOLATION,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESBLOCK,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESWARN,
        AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESAUDITONLY,
        ..
      ),

    -- * AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
    AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
      ( AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_UNKNOWNVIRUSSCANRESULT,
        AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Clean,
        AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Infected,
        AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Error',
        AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_POLICYVIOLATION,
        ..
      ),

    -- * AppsDynamiteSharedCallAnnotationData_CallStatus
    AppsDynamiteSharedCallAnnotationData_CallStatus
      ( AppsDynamiteSharedCallAnnotationData_CallStatus_CALLSTATUSUNSPECIFIED,
        AppsDynamiteSharedCallAnnotationData_CallStatus_CALLSTARTED,
        AppsDynamiteSharedCallAnnotationData_CallStatus_CALLMISSED,
        AppsDynamiteSharedCallAnnotationData_CallStatus_CALLENDED,
        ..
      ),

    -- * AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType
    AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType
      ( AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_Undefined,
        AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_Reply,
        AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_FOLLOWUP,
        ..
      ),

    -- * AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType
    AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType
      ( AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Unspecified,
        AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Root,
        AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Follower,
        ..
      ),

    -- * AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type
    AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type
      ( AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_TYPEUNSPECIFIED,
        AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_Direct,
        AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_All,
        ..
      ),

    -- * AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
    AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
      ( AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ATTRIBUTECHECKERGROUPTYPEUNSPECIFIED,
        AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ONETOONEHUMANDM,
        AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ONETOONEBOTDM,
        AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_IMMUTABLEMEMBERSHIPGROUPDM,
        AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_FLATROOM,
        AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_THREADEDROOM,
        AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_IMMUTABLEMEMBERSHIPHUMANDM,
        AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_POSTROOM,
        AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ACTIVITYFEED,
        ..
      ),

    -- * AppsDynamiteSharedContentReportType_SystemViolation
    AppsDynamiteSharedContentReportType_SystemViolation
      ( AppsDynamiteSharedContentReportType_SystemViolation_VIOLATIONUNSPECIFIED,
        AppsDynamiteSharedContentReportType_SystemViolation_Harassment,
        AppsDynamiteSharedContentReportType_SystemViolation_Discrimination,
        AppsDynamiteSharedContentReportType_SystemViolation_EXPLICITCONTENT,
        AppsDynamiteSharedContentReportType_SystemViolation_Spam,
        AppsDynamiteSharedContentReportType_SystemViolation_CONFIDENTIALINFORMATION,
        AppsDynamiteSharedContentReportType_SystemViolation_SENSITIVEINFORMATION,
        AppsDynamiteSharedContentReportType_SystemViolation_Fraud,
        AppsDynamiteSharedContentReportType_SystemViolation_Malware,
        AppsDynamiteSharedContentReportType_SystemViolation_ILLEGALACTIVITIES,
        AppsDynamiteSharedContentReportType_SystemViolation_Other,
        ..
      ),

    -- * AppsDynamiteSharedCustomEmoji_State
    AppsDynamiteSharedCustomEmoji_State
      ( AppsDynamiteSharedCustomEmoji_State_EMOJISTATEUNSPECIFIED,
        AppsDynamiteSharedCustomEmoji_State_EMOJIENABLED,
        AppsDynamiteSharedCustomEmoji_State_EMOJISYSTEMDISABLED,
        AppsDynamiteSharedCustomEmoji_State_EMOJIHIDDEN,
        AppsDynamiteSharedCustomEmoji_State_EMOJIDELETED,
        ..
      ),

    -- * AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
    AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
      ( AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPSTATUSUNKNOWN,
        AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPDISABLED,
        AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDNORULEFETCH,
        AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDNORULES,
        AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDNOAPPLICABLERULES,
        AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDANDEVALUATED,
        AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDSCANTIMEOUT,
        AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDSCANFAILED,
        ..
      ),

    -- * AppsDynamiteSharedGroupVisibility_State
    AppsDynamiteSharedGroupVisibility_State
      ( AppsDynamiteSharedGroupVisibility_State_Unknown,
        AppsDynamiteSharedGroupVisibility_State_Private,
        AppsDynamiteSharedGroupVisibility_State_Public,
        ..
      ),

    -- * AppsDynamiteSharedJustification_ActionType
    AppsDynamiteSharedJustification_ActionType
      ( AppsDynamiteSharedJustification_ActionType_ACTIONTYPEUNSPECIFIED,
        AppsDynamiteSharedJustification_ActionType_Commented,
        AppsDynamiteSharedJustification_ActionType_Created,
        AppsDynamiteSharedJustification_ActionType_Edited,
        AppsDynamiteSharedJustification_ActionType_Presented,
        AppsDynamiteSharedJustification_ActionType_Shared,
        AppsDynamiteSharedJustification_ActionType_Viewed,
        AppsDynamiteSharedJustification_ActionType_COMMENTRESOLVED,
        AppsDynamiteSharedJustification_ActionType_Sent,
        ..
      ),

    -- * AppsDynamiteSharedMessageInfo_MessageType
    AppsDynamiteSharedMessageInfo_MessageType
      ( AppsDynamiteSharedMessageInfo_MessageType_MESSAGETYPEUNSPECIFIED,
        AppsDynamiteSharedMessageInfo_MessageType_INLINEREPLY,
        ..
      ),

    -- * AppsDynamiteSharedMessageIntegrationPayload_Type
    AppsDynamiteSharedMessageIntegrationPayload_Type
      ( AppsDynamiteSharedMessageIntegrationPayload_Type_PAYLOADTYPEUNSPECIFIED,
        AppsDynamiteSharedMessageIntegrationPayload_Type_Tasks,
        ..
      ),

    -- * AppsDynamiteSharedRetentionSettings_State
    AppsDynamiteSharedRetentionSettings_State
      ( AppsDynamiteSharedRetentionSettings_State_UNKNOWNRETENTIONSTATE,
        AppsDynamiteSharedRetentionSettings_State_Permanent,
        AppsDynamiteSharedRetentionSettings_State_EPHEMERALONEDAY,
        ..
      ),

    -- * AppsDynamiteSharedSegmentedMembershipCount_MemberType
    AppsDynamiteSharedSegmentedMembershipCount_MemberType
      ( AppsDynamiteSharedSegmentedMembershipCount_MemberType_MEMBERTYPEUNSPECIFIED,
        AppsDynamiteSharedSegmentedMembershipCount_MemberType_HUMANUSER,
        AppsDynamiteSharedSegmentedMembershipCount_MemberType_ROSTERMEMBER,
        ..
      ),

    -- * AppsDynamiteSharedSegmentedMembershipCount_MembershipState
    AppsDynamiteSharedSegmentedMembershipCount_MembershipState
      ( AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERUNKNOWN,
        AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERINVITED,
        AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERJOINED,
        AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERNOTAMEMBER,
        AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERFAILED,
        ..
      ),

    -- * AppsDynamiteSharedSpaceInfo_UserMembershipState
    AppsDynamiteSharedSpaceInfo_UserMembershipState
      ( AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERUNKNOWN,
        AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERINVITED,
        AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERJOINED,
        AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERNOTAMEMBER,
        AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERFAILED,
        ..
      ),

    -- * AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType
    AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType
      ( AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType_DESCRIPTIONTYPEUNSPECIFIED,
        AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType_KEYWORDMATCH,
        ..
      ),

    -- * AppsDynamiteSharedVideoReference_Status
    AppsDynamiteSharedVideoReference_Status
      ( AppsDynamiteSharedVideoReference_Status_UNKNOWNSTATUS,
        AppsDynamiteSharedVideoReference_Status_Success,
        AppsDynamiteSharedVideoReference_Status_Error',
        AppsDynamiteSharedVideoReference_Status_NOTAPPLICABLE,
        AppsDynamiteSharedVideoReference_Status_THUMBNAILSUCCESS,
        AppsDynamiteSharedVideoReference_Status_GOLIVESUCCESS,
        ..
      ),

    -- * AppsDynamiteStorageAction_Interaction
    AppsDynamiteStorageAction_Interaction
      ( AppsDynamiteStorageAction_Interaction_INTERACTIONUNSPECIFIED,
        AppsDynamiteStorageAction_Interaction_OPENDIALOG,
        ..
      ),

    -- * AppsDynamiteStorageAction_LoadIndicator
    AppsDynamiteStorageAction_LoadIndicator
      ( AppsDynamiteStorageAction_LoadIndicator_Spinner,
        AppsDynamiteStorageAction_LoadIndicator_None,
        ..
      ),

    -- * AppsDynamiteStorageBorderStyle_Type
    AppsDynamiteStorageBorderStyle_Type
      ( AppsDynamiteStorageBorderStyle_Type_BORDERTYPEUNSPECIFIED,
        AppsDynamiteStorageBorderStyle_Type_NOBORDER,
        AppsDynamiteStorageBorderStyle_Type_Stroke,
        ..
      ),

    -- * AppsDynamiteStorageCardCardHeader_ImageType
    AppsDynamiteStorageCardCardHeader_ImageType
      ( AppsDynamiteStorageCardCardHeader_ImageType_Square,
        AppsDynamiteStorageCardCardHeader_ImageType_Circle,
        ..
      ),

    -- * AppsDynamiteStorageColumns_WrapStyle
    AppsDynamiteStorageColumns_WrapStyle
      ( AppsDynamiteStorageColumns_WrapStyle_WRAPSTYLEUNSPECIFIED,
        AppsDynamiteStorageColumns_WrapStyle_Nowrap,
        AppsDynamiteStorageColumns_WrapStyle_Wrap,
        ..
      ),

    -- * AppsDynamiteStorageColumnsColumn_HorizontalAlignment
    AppsDynamiteStorageColumnsColumn_HorizontalAlignment
      ( AppsDynamiteStorageColumnsColumn_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        AppsDynamiteStorageColumnsColumn_HorizontalAlignment_Start,
        AppsDynamiteStorageColumnsColumn_HorizontalAlignment_Center,
        AppsDynamiteStorageColumnsColumn_HorizontalAlignment_End,
        ..
      ),

    -- * AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle
    AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle
      ( AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_HORIZONTALSIZESTYLEUNSPECIFIED,
        AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_FILLAVAILABLESPACE,
        AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_FILLMINIMUMSPACE,
        ..
      ),

    -- * AppsDynamiteStorageColumnsColumn_VerticalAlignment
    AppsDynamiteStorageColumnsColumn_VerticalAlignment
      ( AppsDynamiteStorageColumnsColumn_VerticalAlignment_VERTICALALIGNMENTUNSPECIFIED,
        AppsDynamiteStorageColumnsColumn_VerticalAlignment_Center,
        AppsDynamiteStorageColumnsColumn_VerticalAlignment_Top,
        AppsDynamiteStorageColumnsColumn_VerticalAlignment_Bottom,
        ..
      ),

    -- * AppsDynamiteStorageDateTimePicker_Type
    AppsDynamiteStorageDateTimePicker_Type
      ( AppsDynamiteStorageDateTimePicker_Type_DATEANDTIME,
        AppsDynamiteStorageDateTimePicker_Type_DATEONLY,
        AppsDynamiteStorageDateTimePicker_Type_TIMEONLY,
        ..
      ),

    -- * AppsDynamiteStorageDecoratedTextSwitchControl_ControlType
    AppsDynamiteStorageDecoratedTextSwitchControl_ControlType
      ( AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_Switch,
        AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_Checkbox,
        AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_CHECKBOX,
        ..
      ),

    -- * AppsDynamiteStorageGridGridItem_Layout
    AppsDynamiteStorageGridGridItem_Layout
      ( AppsDynamiteStorageGridGridItem_Layout_GRIDITEMLAYOUTUNSPECIFIED,
        AppsDynamiteStorageGridGridItem_Layout_TEXTBELOW,
        AppsDynamiteStorageGridGridItem_Layout_TEXTABOVE,
        ..
      ),

    -- * AppsDynamiteStorageGridGridItem_TextAlignment
    AppsDynamiteStorageGridGridItem_TextAlignment
      ( AppsDynamiteStorageGridGridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        AppsDynamiteStorageGridGridItem_TextAlignment_Start,
        AppsDynamiteStorageGridGridItem_TextAlignment_Center,
        AppsDynamiteStorageGridGridItem_TextAlignment_End,
        ..
      ),

    -- * AppsDynamiteStorageIcon_ImageType
    AppsDynamiteStorageIcon_ImageType
      ( AppsDynamiteStorageIcon_ImageType_Square,
        AppsDynamiteStorageIcon_ImageType_Circle,
        ..
      ),

    -- * AppsDynamiteStorageImageCropStyle_Type
    AppsDynamiteStorageImageCropStyle_Type
      ( AppsDynamiteStorageImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED,
        AppsDynamiteStorageImageCropStyle_Type_Square,
        AppsDynamiteStorageImageCropStyle_Type_Circle,
        AppsDynamiteStorageImageCropStyle_Type_RECTANGLECUSTOM,
        AppsDynamiteStorageImageCropStyle_Type_RECTANGLE_4_3,
        ..
      ),

    -- * AppsDynamiteStorageOpenLink_OnClose
    AppsDynamiteStorageOpenLink_OnClose
      ( AppsDynamiteStorageOpenLink_OnClose_Nothing',
        AppsDynamiteStorageOpenLink_OnClose_Reload,
        ..
      ),

    -- * AppsDynamiteStorageOpenLink_OpenAs
    AppsDynamiteStorageOpenLink_OpenAs
      ( AppsDynamiteStorageOpenLink_OpenAs_FULLSIZE,
        AppsDynamiteStorageOpenLink_OpenAs_Overlay,
        ..
      ),

    -- * AppsDynamiteStorageSelectionInput_Type
    AppsDynamiteStorageSelectionInput_Type
      ( AppsDynamiteStorageSelectionInput_Type_CHECKBOX,
        AppsDynamiteStorageSelectionInput_Type_RADIOBUTTON,
        AppsDynamiteStorageSelectionInput_Type_Switch,
        AppsDynamiteStorageSelectionInput_Type_Dropdown,
        AppsDynamiteStorageSelectionInput_Type_MULTISELECT,
        ..
      ),

    -- * AppsDynamiteStorageTextInput_Type
    AppsDynamiteStorageTextInput_Type
      ( AppsDynamiteStorageTextInput_Type_SINGLELINE,
        AppsDynamiteStorageTextInput_Type_MULTIPLELINE,
        ..
      ),

    -- * AppsDynamiteStorageWidget_HorizontalAlignment
    AppsDynamiteStorageWidget_HorizontalAlignment
      ( AppsDynamiteStorageWidget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        AppsDynamiteStorageWidget_HorizontalAlignment_Start,
        AppsDynamiteStorageWidget_HorizontalAlignment_Center,
        AppsDynamiteStorageWidget_HorizontalAlignment_End,
        ..
      ),

    -- * AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem
      ( AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_UNKNOWNFEATURE,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_Toll,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_TOLLFREE,
        ..
      ),

    -- * AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
      ( AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Unknown,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Video,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Phone,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_More,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Sip,
        ..
      ),

    -- * AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
      ( AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Unknown,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Authentication,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Temporary,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Permanent,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_PERMISSIONDENIED,
        AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_CONFERENCESOLUTIONFORBIDDEN,
        ..
      ),

    -- * BorderStyle_Type
    BorderStyle_Type
      ( BorderStyle_Type_BORDERTYPENOTSET,
        BorderStyle_Type_NOBORDER,
        BorderStyle_Type_Stroke,
        ..
      ),

    -- * BotInfo_AppAllowlistStatus
    BotInfo_AppAllowlistStatus
      ( BotInfo_AppAllowlistStatus_UNSPECIFIEDSTATUS,
        BotInfo_AppAllowlistStatus_Allowed,
        BotInfo_AppAllowlistStatus_ALLAPPSDISABLEDBYADMIN,
        BotInfo_AppAllowlistStatus_APPNOTALLOWLISTEDBYADMIN,
        ..
      ),

    -- * BotInfo_Status
    BotInfo_Status
      ( BotInfo_Status_UNKNOWNSTATUS,
        BotInfo_Status_Enabled,
        BotInfo_Status_DISABLEDBYDEVELOPER,
        ..
      ),

    -- * BotInfo_SupportedUsesItem
    BotInfo_SupportedUsesItem
      ( BotInfo_SupportedUsesItem_Unknown,
        BotInfo_SupportedUsesItem_CANADDTODM,
        BotInfo_SupportedUsesItem_CANADDTOROOM,
        BotInfo_SupportedUsesItem_CANADDTOHUMANDM,
        ..
      ),

    -- * BotResponse_RequiredAction
    BotResponse_RequiredAction
      ( BotResponse_RequiredAction_UNKNOWNSETUPTYPE,
        BotResponse_RequiredAction_Configuration,
        BotResponse_RequiredAction_Authentication,
        ..
      ),

    -- * BotResponse_ResponseType
    BotResponse_ResponseType
      ( BotResponse_ResponseType_UNKNOWNRESPONSETYPE,
        BotResponse_ResponseType_Error',
        BotResponse_ResponseType_SETUPREQUIRED,
        BotResponse_ResponseType_DISABLEDBYADMIN,
        BotResponse_ResponseType_DISABLEDBYDEVELOPER,
        BotResponse_ResponseType_Private,
        BotResponse_ResponseType_APPSUGGESTION,
        ..
      ),

    -- * BroadcastAccess_AccessPolicy
    BroadcastAccess_AccessPolicy
      ( BroadcastAccess_AccessPolicy_BROADCASTINGACCESSPOLICYUNSPECIFIED,
        BroadcastAccess_AccessPolicy_Organization,
        BroadcastAccess_AccessPolicy_Public,
        ..
      ),

    -- * CallInfo_AvailableAccessTypesItem
    CallInfo_AvailableAccessTypesItem
      ( CallInfo_AvailableAccessTypesItem_ACCESSTYPEUNSPECIFIED,
        CallInfo_AvailableAccessTypesItem_ACCESSTYPEOPEN,
        CallInfo_AvailableAccessTypesItem_ACCESSTYPETRUSTED,
        CallInfo_AvailableAccessTypesItem_ACCESSTYPERESTRICTED,
        CallInfo_AvailableAccessTypesItem_ACCESSTYPECLOSED,
        ..
      ),

    -- * CallSettings_AccessType
    CallSettings_AccessType
      ( CallSettings_AccessType_ACCESSTYPEUNSPECIFIED,
        CallSettings_AccessType_ACCESSTYPEOPEN,
        CallSettings_AccessType_ACCESSTYPETRUSTED,
        CallSettings_AccessType_ACCESSTYPERESTRICTED,
        CallSettings_AccessType_ACCESSTYPECLOSED,
        ..
      ),

    -- * Card_DisplayStyle
    Card_DisplayStyle
      ( Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED,
        Card_DisplayStyle_Peek,
        Card_DisplayStyle_Replace,
        ..
      ),

    -- * CardCapabilityMetadata_RequiredCapabilitiesItem
    CardCapabilityMetadata_RequiredCapabilitiesItem
      ( CardCapabilityMetadata_RequiredCapabilitiesItem_Unknown,
        CardCapabilityMetadata_RequiredCapabilitiesItem_SUPPORTSBASECARDS,
        ..
      ),

    -- * CardHeader_ImageStyle
    CardHeader_ImageStyle
      ( CardHeader_ImageStyle_CROPTYPENOTSET,
        CardHeader_ImageStyle_Square,
        CardHeader_ImageStyle_Circle,
        CardHeader_ImageStyle_RECTANGLECUSTOM,
        CardHeader_ImageStyle_RECTANGLE_4_3,
        ..
      ),

    -- * ChatContentExtension_EventOtrStatus
    ChatContentExtension_EventOtrStatus
      ( ChatContentExtension_EventOtrStatus_OFFTHERECORD,
        ChatContentExtension_EventOtrStatus_ONTHERECORD,
        ..
      ),

    -- * CoActivity_CoActivityApp
    CoActivity_CoActivityApp
      ( CoActivity_CoActivityApp_COACTIVITYAPPUNSPECIFIED,
        CoActivity_CoActivityApp_COACTIVITYAPPYOUTUBEMAIN,
        CoActivity_CoActivityApp_COACTIVITYAPPSPOTIFY,
        CoActivity_CoActivityApp_COACTIVITYAPPUNO,
        CoActivity_CoActivityApp_COACTIVITYAPPHEADSUP,
        CoActivity_CoActivityApp_COACTIVITYAPPKAHOOT,
        CoActivity_CoActivityApp_COACTIVITYAPPGQUEUES,
        CoActivity_CoActivityApp_COACTIVITYAPPYOUTUBEMUSIC,
        CoActivity_CoActivityApp_COACTIVITYAPPSAMSUNGNOTES,
        CoActivity_CoActivityApp_COACTIVITYAPPHAPPYAARDVARK,
        ..
      ),

    -- * CompositeFilter_LogicOperator
    CompositeFilter_LogicOperator
      ( CompositeFilter_LogicOperator_And,
        CompositeFilter_LogicOperator_OR,
        CompositeFilter_LogicOperator_Not,
        ..
      ),

    -- * DateTimePicker_Type
    DateTimePicker_Type
      ( DateTimePicker_Type_UNSPECIFIEDTYPE,
        DateTimePicker_Type_DATEANDTIME,
        DateTimePicker_Type_DATEONLY,
        DateTimePicker_Type_TIMEONLY,
        ..
      ),

    -- * DeliveryMedium_MediumType
    DeliveryMedium_MediumType
      ( DeliveryMedium_MediumType_UNKNOWNMEDIUM,
        DeliveryMedium_MediumType_BABELMEDIUM,
        DeliveryMedium_MediumType_GOOGLEVOICEMEDIUM,
        DeliveryMedium_MediumType_LOCALSMSMEDIUM,
        ..
      ),

    -- * DlpAction_ActionType
    DlpAction_ActionType
      ( DlpAction_ActionType_NOACTION,
        DlpAction_ActionType_Block,
        DlpAction_ActionType_AUDITONLY,
        DlpAction_ActionType_Warn,
        ..
      ),

    -- * DlpScanSummary_ScanOutcome
    DlpScanSummary_ScanOutcome
      ( DlpScanSummary_ScanOutcome_SCANUNKNOWNOUTCOME,
        DlpScanSummary_ScanOutcome_SCANSUCCEEDEDNOVIOLATION,
        DlpScanSummary_ScanOutcome_SCANSUCCEEDEDBLOCK,
        DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWARN,
        DlpScanSummary_ScanOutcome_SCANSUCCEEDEDAUDITONLY,
        DlpScanSummary_ScanOutcome_SCANFAILUREEXCEPTION,
        DlpScanSummary_ScanOutcome_SCANFAILURERULEFETCHFAILED,
        DlpScanSummary_ScanOutcome_SCANFAILURETIMEOUT,
        DlpScanSummary_ScanOutcome_SCANFAILUREALLRULESFAILED,
        DlpScanSummary_ScanOutcome_SCANFAILUREILLEGALSTATEFORATTACHMENTS,
        DlpScanSummary_ScanOutcome_SCANSKIPPEDEXPERIMENTDISABLED,
        DlpScanSummary_ScanOutcome_SCANSKIPPEDCONSUMER,
        DlpScanSummary_ScanOutcome_SCANSKIPPEDNONHUMANUSER,
        DlpScanSummary_ScanOutcome_SCANSKIPPEDNOMESSAGE,
        DlpScanSummary_ScanOutcome_SCANSKIPPEDUSERACKNOWLEDGEDWARNING,
        DlpScanSummary_ScanOutcome_SCANSKIPPEDMESSAGEFROMUNSUPPORTEDORIGIN,
        DlpScanSummary_ScanOutcome_SCANSKIPPEDMESSAGESENTDURINGSPACEMIGRATION,
        DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNORULESFOUND,
        DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORACTIONPARAMS,
        DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORTRIGGER,
        DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGPERMANENTERROR,
        DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGEMPTYRESPONSE,
        DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDUNSUPPORTEDFILETYPE,
        DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESNOVIOLATION,
        DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESBLOCK,
        DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESWARN,
        DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESAUDITONLY,
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

    -- * DriveMetadata_DriveAction
    DriveMetadata_DriveAction
      ( DriveMetadata_DriveAction_DRIVEACTIONUNSPECIFIED,
        DriveMetadata_DriveAction_ADDTODRIVE,
        DriveMetadata_DriveAction_Organize,
        DriveMetadata_DriveAction_ADDSHORTCUT,
        DriveMetadata_DriveAction_ADDANOTHERSHORTCUT,
        ..
      ),

    -- * DriveMetadata_DriveState
    DriveMetadata_DriveState
      ( DriveMetadata_DriveState_DRIVESTATEUNSPECIFIED,
        DriveMetadata_DriveState_INMYDRIVE,
        DriveMetadata_DriveState_INTEAMDRIVE,
        DriveMetadata_DriveState_SHAREDINDRIVE,
        DriveMetadata_DriveState_NOTINDRIVE,
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

    -- * EmbedClientItem_TypeItem
    EmbedClientItem_TypeItem
      ( EmbedClientItem_TypeItem_Unknown,
        EmbedClientItem_TypeItem_ACTION_V2,
        EmbedClientItem_TypeItem_ADD_ACTION_V2,
        EmbedClientItem_TypeItem_AGGREGATE_RATING_V2,
        EmbedClientItem_TypeItem_ARTICLE_V2,
        EmbedClientItem_TypeItem_ASSESS_ACTION_V2,
        EmbedClientItem_TypeItem_AUDIO_OBJECT_V2,
        EmbedClientItem_TypeItem_BASIC_INTERACTION_V2,
        EmbedClientItem_TypeItem_BLOG_POSTING_V2,
        EmbedClientItem_TypeItem_BLOG_V2,
        EmbedClientItem_TypeItem_BOOK_V2,
        EmbedClientItem_TypeItem_BUY_ACTION_V2,
        EmbedClientItem_TypeItem_CHECK_IN_ACTION_V2,
        EmbedClientItem_TypeItem_CHECKIN_V2,
        EmbedClientItem_TypeItem_COLLEXION_V2,
        EmbedClientItem_TypeItem_COMMENT_ACTION_V2,
        EmbedClientItem_TypeItem_COMMENT_V2,
        EmbedClientItem_TypeItem_COMMUNICATE_ACTION_V2,
        EmbedClientItem_TypeItem_CONSUME_ACTION_V2,
        EmbedClientItem_TypeItem_CREATE_ACTION_V2,
        EmbedClientItem_TypeItem_CREATIVE_WORK_V2,
        EmbedClientItem_TypeItem_DISCOVER_ACTION_V2,
        EmbedClientItem_TypeItem_DOCUMENT_OBJECT_V2,
        EmbedClientItem_TypeItem_DRAWING_OBJECT_V2,
        EmbedClientItem_TypeItem_DRIVE_OBJECT_V2,
        EmbedClientItem_TypeItem_EMOTISHARE_V2,
        EmbedClientItem_TypeItem_ENTRY_POINT_V2,
        EmbedClientItem_TypeItem_EVENT_TIME_V2,
        EmbedClientItem_TypeItem_EVENT_V2,
        EmbedClientItem_TypeItem_FILE_OBJECT_V2,
        EmbedClientItem_TypeItem_FIND_ACTION_V2,
        EmbedClientItem_TypeItem_FINANCIAL_QUOTE_V2,
        EmbedClientItem_TypeItem_FORM_OBJECT_V2,
        EmbedClientItem_TypeItem_GEO_COORDINATES_V2,
        EmbedClientItem_TypeItem_GOOGLE_OFFER_V2,
        EmbedClientItem_TypeItem_HANGOUTCHATMESSAGE,
        EmbedClientItem_TypeItem_HANGOUTQUOTE,
        EmbedClientItem_TypeItem_HANGOUT_V2,
        EmbedClientItem_TypeItem_HOA_PLUS_EVENT_V2,
        EmbedClientItem_TypeItem_IMAGE_OBJECT_V2,
        EmbedClientItem_TypeItem_INTERACT_ACTION_V2,
        EmbedClientItem_TypeItem_INTERACTION_V2,
        EmbedClientItem_TypeItem_LISTEN_ACTION_V2,
        EmbedClientItem_TypeItem_LOCAL_BUSINESS_V2,
        EmbedClientItem_TypeItem_LOCAL_PLUS_PHOTO_ALBUM_V2,
        EmbedClientItem_TypeItem_MAGAZINE_V2,
        EmbedClientItem_TypeItem_MEDIA_OBJECT_V2,
        EmbedClientItem_TypeItem_MOBILE_APPLICATION_V2,
        EmbedClientItem_TypeItem_MOVIE_V2,
        EmbedClientItem_TypeItem_MUSIC_ALBUM_V2,
        EmbedClientItem_TypeItem_MUSIC_GROUP_V2,
        EmbedClientItem_TypeItem_MUSIC_PLAYLIST_V2,
        EmbedClientItem_TypeItem_MUSIC_RECORDING_V2,
        EmbedClientItem_TypeItem_NEWS_ARTICLE_V2,
        EmbedClientItem_TypeItem_OFFER_V2,
        EmbedClientItem_TypeItem_ORGANIZATION_V2,
        EmbedClientItem_TypeItem_ORGANIZE_ACTION_V2,
        EmbedClientItem_TypeItem_PERSON_V2,
        EmbedClientItem_TypeItem_PLACE_REVIEW_V2,
        EmbedClientItem_TypeItem_PLACE_V2,
        EmbedClientItem_TypeItem_PLAN_ACTION_V2,
        EmbedClientItem_TypeItem_PLAY_MUSIC_ALBUM_V2,
        EmbedClientItem_TypeItem_PLAY_MUSIC_TRACK_V2,
        EmbedClientItem_TypeItem_PLAY_OBJECT_V2,
        EmbedClientItem_TypeItem_PLUS_AUDIO_V2,
        EmbedClientItem_TypeItem_PLUS_EVENT_V2,
        EmbedClientItem_TypeItem_PLUS_MEDIA_COLLECTION_V2,
        EmbedClientItem_TypeItem_PLUS_MEDIA_OBJECT_V2,
        EmbedClientItem_TypeItem_PLUS_PAGE_V2,
        EmbedClientItem_TypeItem_PLUS_PHOTOS_ADDED_TO_COLLECTION_V2,
        EmbedClientItem_TypeItem_PLUS_PHOTO_ALBUM_V2,
        EmbedClientItem_TypeItem_PLUS_PHOTO_COLLECTION_V2,
        EmbedClientItem_TypeItem_PLUS_PHOTO_V2,
        EmbedClientItem_TypeItem_PLUS_POST_V2,
        EmbedClientItem_TypeItem_PLUS_RESHARE_V2,
        EmbedClientItem_TypeItem_PLUS_SOFTWARE_APPLICATION_V2,
        EmbedClientItem_TypeItem_POLL_OPTION_V2,
        EmbedClientItem_TypeItem_POLL_V2,
        EmbedClientItem_TypeItem_POSTAL_ADDRESS_V2,
        EmbedClientItem_TypeItem_PRESENTATION_OBJECT_V2,
        EmbedClientItem_TypeItem_PRODUCT_REVIEW_V2,
        EmbedClientItem_TypeItem_RATING_V2,
        EmbedClientItem_TypeItem_REACT_ACTION_V2,
        EmbedClientItem_TypeItem_RESERVATION_V2,
        EmbedClientItem_TypeItem_RESERVE_ACTION_V2,
        EmbedClientItem_TypeItem_REVIEW_V2,
        EmbedClientItem_TypeItem_REVIEW_ACTION_V2,
        EmbedClientItem_TypeItem_SOFTWARE_APPLICATION_V2,
        EmbedClientItem_TypeItem_SPREADSHEET_OBJECT_V2,
        EmbedClientItem_TypeItem_SQUARE_INVITE_V2,
        EmbedClientItem_TypeItem_SQUARE_V2,
        EmbedClientItem_TypeItem_STICKER_V2,
        EmbedClientItem_TypeItem_STORY_V2,
        EmbedClientItem_TypeItem_THING_V2,
        EmbedClientItem_TypeItem_TRADE_ACTION_V2,
        EmbedClientItem_TypeItem_DEPRECATED_TOUR_OBJECT_V2,
        EmbedClientItem_TypeItem_TV_EPISODE_V2,
        EmbedClientItem_TypeItem_TV_SERIES_V2,
        EmbedClientItem_TypeItem_UPDATE_ACTION_V2,
        EmbedClientItem_TypeItem_VIEW_ACTION_V2,
        EmbedClientItem_TypeItem_VIDEO_OBJECT_V2,
        EmbedClientItem_TypeItem_VIDEO_GALLERY_V2,
        EmbedClientItem_TypeItem_WANT_ACTION_V2,
        EmbedClientItem_TypeItem_WEB_PAGE_V2,
        EmbedClientItem_TypeItem_WRITE_ACTION_V2,
        EmbedClientItem_TypeItem_YOUTUBE_CHANNEL_V2,
        EmbedClientItem_TypeItem_GOOGLE_USER_PHOTO_V2,
        EmbedClientItem_TypeItem_GOOGLEUSERPHOTOALBUM,
        EmbedClientItem_TypeItem_GOOGLEPHOTORECIPE,
        EmbedClientItem_TypeItem_Thing,
        EmbedClientItem_TypeItem_CREATIVEWORK,
        EmbedClientItem_TypeItem_Event,
        EmbedClientItem_TypeItem_Intangible,
        EmbedClientItem_TypeItem_Organization,
        EmbedClientItem_TypeItem_Person,
        EmbedClientItem_TypeItem_Place,
        EmbedClientItem_TypeItem_Product,
        EmbedClientItem_TypeItem_Article,
        EmbedClientItem_TypeItem_BLOGPOSTING,
        EmbedClientItem_TypeItem_NEWSARTICLE,
        EmbedClientItem_TypeItem_SCHOLARLYARTICLE,
        EmbedClientItem_TypeItem_Blog,
        EmbedClientItem_TypeItem_Book,
        EmbedClientItem_TypeItem_Comment,
        EmbedClientItem_TypeItem_ITEMLIST,
        EmbedClientItem_TypeItem_Map,
        EmbedClientItem_TypeItem_MEDIAOBJECT,
        EmbedClientItem_TypeItem_AUDIOOBJECT,
        EmbedClientItem_TypeItem_IMAGEOBJECT,
        EmbedClientItem_TypeItem_MUSICVIDEOOBJECT,
        EmbedClientItem_TypeItem_VIDEOOBJECT,
        EmbedClientItem_TypeItem_Movie,
        EmbedClientItem_TypeItem_MUSICPLAYLIST,
        EmbedClientItem_TypeItem_MUSICALBUM,
        EmbedClientItem_TypeItem_MUSICRECORDING,
        EmbedClientItem_TypeItem_Painting,
        EmbedClientItem_TypeItem_Photograph,
        EmbedClientItem_TypeItem_Recipe,
        EmbedClientItem_TypeItem_Review,
        EmbedClientItem_TypeItem_Sculpture,
        EmbedClientItem_TypeItem_SOFTWAREAPPLICATION,
        EmbedClientItem_TypeItem_MOBILEAPPLICATION,
        EmbedClientItem_TypeItem_WEBAPPLICATION,
        EmbedClientItem_TypeItem_TVEPISODE,
        EmbedClientItem_TypeItem_TVSEASON,
        EmbedClientItem_TypeItem_TVSERIES,
        EmbedClientItem_TypeItem_WEBPAGE,
        EmbedClientItem_TypeItem_ABOUTPAGE,
        EmbedClientItem_TypeItem_CHECKOUTPAGE,
        EmbedClientItem_TypeItem_COLLECTIONPAGE,
        EmbedClientItem_TypeItem_IMAGEGALLERY,
        EmbedClientItem_TypeItem_VIDEOGALLERY,
        EmbedClientItem_TypeItem_CONTACTPAGE,
        EmbedClientItem_TypeItem_ITEMPAGE,
        EmbedClientItem_TypeItem_PROFILEPAGE,
        EmbedClientItem_TypeItem_SEARCHRESULTSPAGE,
        EmbedClientItem_TypeItem_WEBPAGEELEMENT,
        EmbedClientItem_TypeItem_SITENAVIGATIONELEMENT,
        EmbedClientItem_TypeItem_Table,
        EmbedClientItem_TypeItem_WPADBLOCK,
        EmbedClientItem_TypeItem_WPFOOTER,
        EmbedClientItem_TypeItem_WPHEADER,
        EmbedClientItem_TypeItem_WPSIDEBAR,
        EmbedClientItem_TypeItem_APPINVITE,
        EmbedClientItem_TypeItem_Emotishare,
        EmbedClientItem_TypeItem_BUSINESSEVENT,
        EmbedClientItem_TypeItem_CHILDRENSEVENT,
        EmbedClientItem_TypeItem_COMEDYEVENT,
        EmbedClientItem_TypeItem_DANCEEVENT,
        EmbedClientItem_TypeItem_EDUCATIONEVENT,
        EmbedClientItem_TypeItem_Festival,
        EmbedClientItem_TypeItem_FOODEVENT,
        EmbedClientItem_TypeItem_LITERARYEVENT,
        EmbedClientItem_TypeItem_MUSICEVENT,
        EmbedClientItem_TypeItem_SALEEVENT,
        EmbedClientItem_TypeItem_SOCIALEVENT,
        EmbedClientItem_TypeItem_SPORTSEVENT,
        EmbedClientItem_TypeItem_THEATEREVENT,
        EmbedClientItem_TypeItem_VISUALARTSEVENT,
        EmbedClientItem_TypeItem_Reservation,
        EmbedClientItem_TypeItem_TRAVELEVENT,
        EmbedClientItem_TypeItem_Corporation,
        EmbedClientItem_TypeItem_EDUCATIONALORGANIZATION,
        EmbedClientItem_TypeItem_COLLEGEORUNIVERSITY,
        EmbedClientItem_TypeItem_ELEMENTARYSCHOOL,
        EmbedClientItem_TypeItem_HIGHSCHOOL,
        EmbedClientItem_TypeItem_MIDDLESCHOOL,
        EmbedClientItem_TypeItem_Preschool,
        EmbedClientItem_TypeItem_School,
        EmbedClientItem_TypeItem_GOVERNMENTORGANIZATION,
        EmbedClientItem_TypeItem_LOCALBUSINESS,
        EmbedClientItem_TypeItem_ANIMALSHELTER,
        EmbedClientItem_TypeItem_AUTOMOTIVEBUSINESS,
        EmbedClientItem_TypeItem_AUTOBODYSHOP,
        EmbedClientItem_TypeItem_AUTODEALER,
        EmbedClientItem_TypeItem_AUTOPARTSSTORE,
        EmbedClientItem_TypeItem_AUTORENTAL,
        EmbedClientItem_TypeItem_AUTOREPAIR,
        EmbedClientItem_TypeItem_AUTOWASH,
        EmbedClientItem_TypeItem_GASSTATION,
        EmbedClientItem_TypeItem_MOTORCYCLEDEALER,
        EmbedClientItem_TypeItem_MOTORCYCLEREPAIR,
        EmbedClientItem_TypeItem_CHILDCARE,
        EmbedClientItem_TypeItem_DRYCLEANINGORLAUNDRY,
        EmbedClientItem_TypeItem_EMERGENCYSERVICE,
        EmbedClientItem_TypeItem_FIRESTATION,
        EmbedClientItem_TypeItem_Hospital,
        EmbedClientItem_TypeItem_POLICESTATION,
        EmbedClientItem_TypeItem_EMPLOYMENTAGENGY,
        EmbedClientItem_TypeItem_ENTERTAINMENTBUSINESS,
        EmbedClientItem_TypeItem_ADULTENTERTAINMENT,
        EmbedClientItem_TypeItem_AMUSEMENTPARK,
        EmbedClientItem_TypeItem_ARTGALLERY,
        EmbedClientItem_TypeItem_Casino,
        EmbedClientItem_TypeItem_COMEDYCLUB,
        EmbedClientItem_TypeItem_MOVIETHEATER,
        EmbedClientItem_TypeItem_NIGHTCLUB,
        EmbedClientItem_TypeItem_FINANCIALSERVICE,
        EmbedClientItem_TypeItem_ACCOUNTINGSERVICE,
        EmbedClientItem_TypeItem_AUTOMATEDTELLER,
        EmbedClientItem_TypeItem_BANKORCREDITUNION,
        EmbedClientItem_TypeItem_INSURANCEAGENCY,
        EmbedClientItem_TypeItem_FOODESTABLISHMENT,
        EmbedClientItem_TypeItem_Bakery,
        EmbedClientItem_TypeItem_BARORPUB,
        EmbedClientItem_TypeItem_Brewery,
        EmbedClientItem_TypeItem_CAFEORCOFFEESHOP,
        EmbedClientItem_TypeItem_FASTFOODRESTAURANT,
        EmbedClientItem_TypeItem_ICECREAMSHOP,
        EmbedClientItem_TypeItem_Restaurant,
        EmbedClientItem_TypeItem_Winery,
        EmbedClientItem_TypeItem_GOVERNMENTOFFICE,
        EmbedClientItem_TypeItem_POSTOFFICE,
        EmbedClientItem_TypeItem_HEALTHANDBEAUTYBUSINESS,
        EmbedClientItem_TypeItem_BEAUTYSALON,
        EmbedClientItem_TypeItem_DAYSPA,
        EmbedClientItem_TypeItem_HAIRSALON,
        EmbedClientItem_TypeItem_HEALTHCLUB,
        EmbedClientItem_TypeItem_NAILSALON,
        EmbedClientItem_TypeItem_TATTOOPARLOR,
        EmbedClientItem_TypeItem_HOMEANDCONSTRUCTIONBUSINESS,
        EmbedClientItem_TypeItem_Electrician,
        EmbedClientItem_TypeItem_GENERALCONTRACTOR,
        EmbedClientItem_TypeItem_HVACBUSINESS,
        EmbedClientItem_TypeItem_HOUSEPAINTER,
        EmbedClientItem_TypeItem_Locksmith,
        EmbedClientItem_TypeItem_MOVINGCOMPANY,
        EmbedClientItem_TypeItem_Plumber,
        EmbedClientItem_TypeItem_ROOFINGCONTRACTOR,
        EmbedClientItem_TypeItem_INTERNETCAFE,
        EmbedClientItem_TypeItem_Library,
        EmbedClientItem_TypeItem_LODGINGBUSINESS,
        EmbedClientItem_TypeItem_BEDANDBREAKFAST,
        EmbedClientItem_TypeItem_Hostel,
        EmbedClientItem_TypeItem_Hotel,
        EmbedClientItem_TypeItem_Motel,
        EmbedClientItem_TypeItem_MEDICALORGANIZATION,
        EmbedClientItem_TypeItem_Dentist,
        EmbedClientItem_TypeItem_MEDICALCLINIC,
        EmbedClientItem_TypeItem_Optician,
        EmbedClientItem_TypeItem_Pharmacy,
        EmbedClientItem_TypeItem_Physician,
        EmbedClientItem_TypeItem_VETERINARYCARE,
        EmbedClientItem_TypeItem_PROFESSIONALSERVICE,
        EmbedClientItem_TypeItem_Attorney,
        EmbedClientItem_TypeItem_Notary,
        EmbedClientItem_TypeItem_RADIOSTATION,
        EmbedClientItem_TypeItem_REALESTATEAGENT,
        EmbedClientItem_TypeItem_RECYCLINGCENTER,
        EmbedClientItem_TypeItem_SELFSTORAGE,
        EmbedClientItem_TypeItem_SHOPPINGCENTER,
        EmbedClientItem_TypeItem_SPORTSACTIVITYLOCATION,
        EmbedClientItem_TypeItem_BOWLINGALLEY,
        EmbedClientItem_TypeItem_EXERCISEGYM,
        EmbedClientItem_TypeItem_GOLFCOURSE,
        EmbedClientItem_TypeItem_PUBLICSWIMMINGPOOL,
        EmbedClientItem_TypeItem_SKIRESORT,
        EmbedClientItem_TypeItem_SPORTSCLUB,
        EmbedClientItem_TypeItem_STADIUMORARENA,
        EmbedClientItem_TypeItem_TENNISCOMPLEX,
        EmbedClientItem_TypeItem_Store,
        EmbedClientItem_TypeItem_BIKESTORE,
        EmbedClientItem_TypeItem_BOOKSTORE,
        EmbedClientItem_TypeItem_CLOTHINGSTORE,
        EmbedClientItem_TypeItem_COMPUTERSTORE,
        EmbedClientItem_TypeItem_CONVENIENCESTORE,
        EmbedClientItem_TypeItem_DEPARTMENTSTORE,
        EmbedClientItem_TypeItem_ELECTRONICSSTORE,
        EmbedClientItem_TypeItem_Florist,
        EmbedClientItem_TypeItem_FURNITURESTORE,
        EmbedClientItem_TypeItem_GARDENSTORE,
        EmbedClientItem_TypeItem_GROCERYSTORE,
        EmbedClientItem_TypeItem_HARDWARESTORE,
        EmbedClientItem_TypeItem_HOBBYSHOP,
        EmbedClientItem_TypeItem_HOMEGOODSSTORE,
        EmbedClientItem_TypeItem_JEWELRYSTORE,
        EmbedClientItem_TypeItem_LIQUORSTORE,
        EmbedClientItem_TypeItem_MENSCLOTHINGSTORE,
        EmbedClientItem_TypeItem_MOBILEPHONESTORE,
        EmbedClientItem_TypeItem_MOVIERENTALSTORE,
        EmbedClientItem_TypeItem_MUSICSTORE,
        EmbedClientItem_TypeItem_OFFICEEQUIPMENTSTORE,
        EmbedClientItem_TypeItem_OUTLETSTORE,
        EmbedClientItem_TypeItem_PAWNSHOP,
        EmbedClientItem_TypeItem_PETSTORE,
        EmbedClientItem_TypeItem_SHOESTORE,
        EmbedClientItem_TypeItem_SPORTINGGOODSSTORE,
        EmbedClientItem_TypeItem_TIRESHOP,
        EmbedClientItem_TypeItem_TOYSTORE,
        EmbedClientItem_TypeItem_WHOLESALESTORE,
        EmbedClientItem_TypeItem_TELEVISIONSTATION,
        EmbedClientItem_TypeItem_TOURISTINFORMATIONCENTER,
        EmbedClientItem_TypeItem_TRAVELAGENCY,
        EmbedClientItem_TypeItem_PERFORMINGGROUP,
        EmbedClientItem_TypeItem_MUSICGROUP,
        EmbedClientItem_TypeItem_ADMINISTRATIVEAREA,
        EmbedClientItem_TypeItem_City,
        EmbedClientItem_TypeItem_Country,
        EmbedClientItem_TypeItem_State,
        EmbedClientItem_TypeItem_CIVICSTRUCTURE,
        EmbedClientItem_TypeItem_Airport,
        EmbedClientItem_TypeItem_Aquarium,
        EmbedClientItem_TypeItem_Beach,
        EmbedClientItem_TypeItem_BUSSTATION,
        EmbedClientItem_TypeItem_BUSSTOP,
        EmbedClientItem_TypeItem_Campground,
        EmbedClientItem_TypeItem_Cemetery,
        EmbedClientItem_TypeItem_Crematorium,
        EmbedClientItem_TypeItem_EVENTVENUE,
        EmbedClientItem_TypeItem_GOVERNMENTBUILDING,
        EmbedClientItem_TypeItem_CITYHALL,
        EmbedClientItem_TypeItem_Courthouse,
        EmbedClientItem_TypeItem_DEFENCEESTABLISHMENT,
        EmbedClientItem_TypeItem_Embassy,
        EmbedClientItem_TypeItem_LEGISLATIVEBUILDING,
        EmbedClientItem_TypeItem_Museum,
        EmbedClientItem_TypeItem_MUSICVENUE,
        EmbedClientItem_TypeItem_Park,
        EmbedClientItem_TypeItem_PARKINGFACILITY,
        EmbedClientItem_TypeItem_PERFORMINGARTSTHEATER,
        EmbedClientItem_TypeItem_PLACEOFWORSHIP,
        EmbedClientItem_TypeItem_BUDDHISTTEMPLE,
        EmbedClientItem_TypeItem_CATHOLICCHURCH,
        EmbedClientItem_TypeItem_Church,
        EmbedClientItem_TypeItem_HINDUTEMPLE,
        EmbedClientItem_TypeItem_Mosque,
        EmbedClientItem_TypeItem_Synagogue,
        EmbedClientItem_TypeItem_Playground,
        EmbedClientItem_TypeItem_RVPARK,
        EmbedClientItem_TypeItem_Residence,
        EmbedClientItem_TypeItem_APARTMENTCOMPLEX,
        EmbedClientItem_TypeItem_GATEDRESIDENCECOMMUNITY,
        EmbedClientItem_TypeItem_SINGLEFAMILYRESIDENCE,
        EmbedClientItem_TypeItem_TOURISTATTRACTION,
        EmbedClientItem_TypeItem_SUBWAYSTATION,
        EmbedClientItem_TypeItem_TAXISTAND,
        EmbedClientItem_TypeItem_TRAINSTATION,
        EmbedClientItem_TypeItem_Zoo,
        EmbedClientItem_TypeItem_Landform,
        EmbedClientItem_TypeItem_BODYOFWATER,
        EmbedClientItem_TypeItem_Canal,
        EmbedClientItem_TypeItem_LAKEBODYOFWATER,
        EmbedClientItem_TypeItem_OCEANBODYOFWATER,
        EmbedClientItem_TypeItem_Pond,
        EmbedClientItem_TypeItem_Reservoir,
        EmbedClientItem_TypeItem_RIVERBODYOFWATER,
        EmbedClientItem_TypeItem_SEABODYOFWATER,
        EmbedClientItem_TypeItem_Waterfall,
        EmbedClientItem_TypeItem_Continent,
        EmbedClientItem_TypeItem_Mountain,
        EmbedClientItem_TypeItem_Volcano,
        EmbedClientItem_TypeItem_LANDMARKSORHISTORICALBUILDINGS,
        EmbedClientItem_TypeItem_USERINTERACTION,
        EmbedClientItem_TypeItem_USERPLUSONES,
        EmbedClientItem_TypeItem_Enumeration,
        EmbedClientItem_TypeItem_BOOKFORMATTYPE,
        EmbedClientItem_TypeItem_ITEMAVAILABILITY,
        EmbedClientItem_TypeItem_OFFERITEMCONDITION,
        EmbedClientItem_TypeItem_JOBPOSTING,
        EmbedClientItem_TypeItem_Language,
        EmbedClientItem_TypeItem_Offer,
        EmbedClientItem_TypeItem_Quantity,
        EmbedClientItem_TypeItem_Distance,
        EmbedClientItem_TypeItem_Duration,
        EmbedClientItem_TypeItem_Energy,
        EmbedClientItem_TypeItem_Mass,
        EmbedClientItem_TypeItem_Rating,
        EmbedClientItem_TypeItem_AGGREGATERATING,
        EmbedClientItem_TypeItem_STRUCTUREDVALUE,
        EmbedClientItem_TypeItem_CONTACTPOINT,
        EmbedClientItem_TypeItem_POSTALADDRESS,
        EmbedClientItem_TypeItem_GEOCOORDINATES,
        EmbedClientItem_TypeItem_GEOSHAPE,
        EmbedClientItem_TypeItem_NUTRITIONINFORMATION,
        EmbedClientItem_TypeItem_PRESENTATIONOBJECT,
        EmbedClientItem_TypeItem_DOCUMENTOBJECT,
        EmbedClientItem_TypeItem_SPREADSHEETOBJECT,
        EmbedClientItem_TypeItem_FORMOBJECT,
        EmbedClientItem_TypeItem_DRAWINGOBJECT,
        EmbedClientItem_TypeItem_PLACEREVIEW,
        EmbedClientItem_TypeItem_FILEOBJECT,
        EmbedClientItem_TypeItem_PLAYMUSICTRACK,
        EmbedClientItem_TypeItem_PLAYMUSICALBUM,
        EmbedClientItem_TypeItem_Magazine,
        EmbedClientItem_TypeItem_CAROUSELFRAME,
        EmbedClientItem_TypeItem_PLUSEVENT,
        EmbedClientItem_TypeItem_Hangout,
        EmbedClientItem_TypeItem_HANGOUTBROADCAST,
        EmbedClientItem_TypeItem_HANGOUTCONSUMER,
        EmbedClientItem_TypeItem_Checkin,
        EmbedClientItem_TypeItem_EXAMPLEOBJECT,
        EmbedClientItem_TypeItem_Square,
        EmbedClientItem_TypeItem_SQUAREINVITE,
        EmbedClientItem_TypeItem_PLUSPHOTO,
        EmbedClientItem_TypeItem_PLUSPHOTOALBUM,
        EmbedClientItem_TypeItem_LOCALPLUSPHOTOALBUM,
        EmbedClientItem_TypeItem_PRODUCTREVIEW,
        EmbedClientItem_TypeItem_FINANCIALQUOTE,
        EmbedClientItem_TypeItem_DEPRECATEDTOUROBJECT,
        EmbedClientItem_TypeItem_PLUSPAGE,
        EmbedClientItem_TypeItem_GOOGLECHART,
        EmbedClientItem_TypeItem_PLUSPHOTOSADDEDTOCOLLECTION,
        EmbedClientItem_TypeItem_RECOMMENDEDPEOPLE,
        EmbedClientItem_TypeItem_PLUSPOST,
        EmbedClientItem_TypeItem_Date,
        EmbedClientItem_TypeItem_DRIVEOBJECTCOLLECTION,
        EmbedClientItem_TypeItem_NEWSMEDIAORGANIZATION,
        EmbedClientItem_TypeItem_DYNAMITEATTACHMENTMETADATA,
        EmbedClientItem_TypeItem_DYNAMITEMESSAGEMETADATA,
        ..
      ),

    -- * EnumPropertyOptions_OrderedRanking
    EnumPropertyOptions_OrderedRanking
      ( EnumPropertyOptions_OrderedRanking_NOORDER,
        EnumPropertyOptions_OrderedRanking_Ascending,
        EnumPropertyOptions_OrderedRanking_Descending,
        ..
      ),

    -- * FormAction_LoadIndicator
    FormAction_LoadIndicator
      ( FormAction_LoadIndicator_Spinner,
        FormAction_LoadIndicator_None,
        ..
      ),

    -- * FormatMetadata_FormatType
    FormatMetadata_FormatType
      ( FormatMetadata_FormatType_TYPEUNSPECIFIED,
        FormatMetadata_FormatType_Bold,
        FormatMetadata_FormatType_Italic,
        FormatMetadata_FormatType_Strike,
        FormatMetadata_FormatType_SOURCECODE,
        FormatMetadata_FormatType_Monospace,
        FormatMetadata_FormatType_Hidden,
        FormatMetadata_FormatType_MONOSPACEBLOCK,
        FormatMetadata_FormatType_Underline,
        FormatMetadata_FormatType_FONTCOLOR,
        FormatMetadata_FormatType_BULLETEDLIST,
        FormatMetadata_FormatType_BULLETEDLISTITEM,
        FormatMetadata_FormatType_CLIENTHIDDEN,
        ..
      ),

    -- * Formatting_Style
    Formatting_Style
      ( Formatting_Style_UNKNOWNSTYLE,
        Formatting_Style_HEADING_1,
        Formatting_Style_HEADING_2,
        Formatting_Style_HEADING_3,
        Formatting_Style_HEADING_4,
        ..
      ),

    -- * GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle
    GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle
      ( GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_IMAGESTYLEUNSPECIFIED,
        GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_Image,
        GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_Avatar,
        ..
      ),

    -- * GoogleChatV1WidgetMarkupImageButton_Icon
    GoogleChatV1WidgetMarkupImageButton_Icon
      ( GoogleChatV1WidgetMarkupImageButton_Icon_ICONUNSPECIFIED,
        GoogleChatV1WidgetMarkupImageButton_Icon_Airplane,
        GoogleChatV1WidgetMarkupImageButton_Icon_Bookmark,
        GoogleChatV1WidgetMarkupImageButton_Icon_Bus,
        GoogleChatV1WidgetMarkupImageButton_Icon_Car,
        GoogleChatV1WidgetMarkupImageButton_Icon_Clock,
        GoogleChatV1WidgetMarkupImageButton_Icon_CONFIRMATIONNUMBERICON,
        GoogleChatV1WidgetMarkupImageButton_Icon_Dollar,
        GoogleChatV1WidgetMarkupImageButton_Icon_Description,
        GoogleChatV1WidgetMarkupImageButton_Icon_Email,
        GoogleChatV1WidgetMarkupImageButton_Icon_EVENTPERFORMER,
        GoogleChatV1WidgetMarkupImageButton_Icon_EVENTSEAT,
        GoogleChatV1WidgetMarkupImageButton_Icon_FLIGHTARRIVAL,
        GoogleChatV1WidgetMarkupImageButton_Icon_FLIGHTDEPARTURE,
        GoogleChatV1WidgetMarkupImageButton_Icon_Hotel,
        GoogleChatV1WidgetMarkupImageButton_Icon_HOTELROOMTYPE,
        GoogleChatV1WidgetMarkupImageButton_Icon_Invite,
        GoogleChatV1WidgetMarkupImageButton_Icon_MAPPIN,
        GoogleChatV1WidgetMarkupImageButton_Icon_Membership,
        GoogleChatV1WidgetMarkupImageButton_Icon_MULTIPLEPEOPLE,
        GoogleChatV1WidgetMarkupImageButton_Icon_Offer,
        GoogleChatV1WidgetMarkupImageButton_Icon_Person,
        GoogleChatV1WidgetMarkupImageButton_Icon_Phone,
        GoogleChatV1WidgetMarkupImageButton_Icon_RESTAURANTICON,
        GoogleChatV1WidgetMarkupImageButton_Icon_SHOPPINGCART,
        GoogleChatV1WidgetMarkupImageButton_Icon_Star,
        GoogleChatV1WidgetMarkupImageButton_Icon_Store,
        GoogleChatV1WidgetMarkupImageButton_Icon_Ticket,
        GoogleChatV1WidgetMarkupImageButton_Icon_Train,
        GoogleChatV1WidgetMarkupImageButton_Icon_VIDEOCAMERA,
        GoogleChatV1WidgetMarkupImageButton_Icon_VIDEOPLAY,
        ..
      ),

    -- * GoogleChatV1WidgetMarkupKeyValue_Icon
    GoogleChatV1WidgetMarkupKeyValue_Icon
      ( GoogleChatV1WidgetMarkupKeyValue_Icon_ICONUNSPECIFIED,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Airplane,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Bookmark,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Bus,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Car,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Clock,
        GoogleChatV1WidgetMarkupKeyValue_Icon_CONFIRMATIONNUMBERICON,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Dollar,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Description,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Email,
        GoogleChatV1WidgetMarkupKeyValue_Icon_EVENTPERFORMER,
        GoogleChatV1WidgetMarkupKeyValue_Icon_EVENTSEAT,
        GoogleChatV1WidgetMarkupKeyValue_Icon_FLIGHTARRIVAL,
        GoogleChatV1WidgetMarkupKeyValue_Icon_FLIGHTDEPARTURE,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Hotel,
        GoogleChatV1WidgetMarkupKeyValue_Icon_HOTELROOMTYPE,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Invite,
        GoogleChatV1WidgetMarkupKeyValue_Icon_MAPPIN,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Membership,
        GoogleChatV1WidgetMarkupKeyValue_Icon_MULTIPLEPEOPLE,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Offer,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Person,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Phone,
        GoogleChatV1WidgetMarkupKeyValue_Icon_RESTAURANTICON,
        GoogleChatV1WidgetMarkupKeyValue_Icon_SHOPPINGCART,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Star,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Store,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Ticket,
        GoogleChatV1WidgetMarkupKeyValue_Icon_Train,
        GoogleChatV1WidgetMarkupKeyValue_Icon_VIDEOCAMERA,
        GoogleChatV1WidgetMarkupKeyValue_Icon_VIDEOPLAY,
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

    -- * GridItem_Layout
    GridItem_Layout
      ( GridItem_Layout_NOTSET,
        GridItem_Layout_TEXTBELOW,
        GridItem_Layout_TEXTABOVE,
        ..
      ),

    -- * GridItem_TextAlignment
    GridItem_TextAlignment
      ( GridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        GridItem_TextAlignment_Start,
        GridItem_TextAlignment_Center,
        GridItem_TextAlignment_End,
        ..
      ),

    -- * GroupLinkSharingModificationEvent_NewStatus
    GroupLinkSharingModificationEvent_NewStatus
      ( GroupLinkSharingModificationEvent_NewStatus_UNKNOWNLINKSHARINGSTATUS,
        GroupLinkSharingModificationEvent_NewStatus_LINKSHARINGON,
        GroupLinkSharingModificationEvent_NewStatus_LINKSHARINGOFF,
        GroupLinkSharingModificationEvent_NewStatus_NOTAVAILABLE,
        ..
      ),

    -- * GsuiteIntegrationMetadata_ClientType
    GsuiteIntegrationMetadata_ClientType
      ( GsuiteIntegrationMetadata_ClientType_UNKNOWNCLIENTTYPE,
        GsuiteIntegrationMetadata_ClientType_Meet,
        GsuiteIntegrationMetadata_ClientType_Tasks,
        GsuiteIntegrationMetadata_ClientType_CALENDAREVENT,
        GsuiteIntegrationMetadata_ClientType_Assistant,
        GsuiteIntegrationMetadata_ClientType_ACTIVITYFEEDSERVICE,
        ..
      ),

    -- * HangoutEvent_MediaType
    HangoutEvent_MediaType
      ( HangoutEvent_MediaType_AUDIOVIDEO,
        HangoutEvent_MediaType_AUDIOONLY,
        HangoutEvent_MediaType_PUSHTOTALK,
        ..
      ),

    -- * HangoutEvent_Type
    HangoutEvent_Type
      ( HangoutEvent_Type_STARTHANGOUT,
        HangoutEvent_Type_JOINHANGOUT,
        HangoutEvent_Type_LEAVEHANGOUT,
        HangoutEvent_Type_ENDHANGOUT,
        HangoutEvent_Type_HANGOUTCOMINGSOON,
        HangoutEvent_Type_ONGOINGHANGOUT,
        ..
      ),

    -- * HangoutVideoEventMetadata_HangoutVideoType
    HangoutVideoEventMetadata_HangoutVideoType
      ( HangoutVideoEventMetadata_HangoutVideoType_UNKNOWNHANGOUTVIDEOEVENTTYPE,
        HangoutVideoEventMetadata_HangoutVideoType_VIDEOSTART,
        HangoutVideoEventMetadata_HangoutVideoType_VIDEOEND,
        ..
      ),

    -- * HistoryRecord_Type
    HistoryRecord_Type
      ( HistoryRecord_Type_Unknown,
        HistoryRecord_Type_Internal,
        HistoryRecord_Type_MESSAGEADDED,
        HistoryRecord_Type_MESSAGEDELETED,
        HistoryRecord_Type_LABELADDED,
        HistoryRecord_Type_LABELREMOVED,
        HistoryRecord_Type_ATTRIBUTESET,
        HistoryRecord_Type_ATTRIBUTEREMOVED,
        HistoryRecord_Type_THREADKEYSET,
        HistoryRecord_Type_LABELCREATED,
        HistoryRecord_Type_LABELDELETED,
        HistoryRecord_Type_LABELRENAMED,
        HistoryRecord_Type_LABELUPDATED,
        HistoryRecord_Type_PREFWRITTEN,
        HistoryRecord_Type_PREFDELETED,
        HistoryRecord_Type_FILTERCREATED,
        HistoryRecord_Type_FILTERDELETED,
        HistoryRecord_Type_IMAPUIDSREASSIGN,
        HistoryRecord_Type_TOPICSTATEUPDATED,
        HistoryRecord_Type_TXNDEBUGINFO,
        ..
      ),

    -- * IconImage_Icon
    IconImage_Icon
      ( IconImage_Icon_None,
        IconImage_Icon_Airplane,
        IconImage_Icon_Bookmark,
        IconImage_Icon_Bus,
        IconImage_Icon_Car,
        IconImage_Icon_Clock,
        IconImage_Icon_CONFIRMATIONNUMBERICON,
        IconImage_Icon_Dollar,
        IconImage_Icon_Description,
        IconImage_Icon_Edit,
        IconImage_Icon_EDITNOTE,
        IconImage_Icon_Email,
        IconImage_Icon_EVENTPERFORMER,
        IconImage_Icon_EVENTSEAT,
        IconImage_Icon_FLIGHTARRIVAL,
        IconImage_Icon_FLIGHTDEPARTURE,
        IconImage_Icon_Hotel,
        IconImage_Icon_HOTELROOMTYPE,
        IconImage_Icon_Invite,
        IconImage_Icon_MAPPIN,
        IconImage_Icon_Membership,
        IconImage_Icon_MULTIPLEPEOPLE,
        IconImage_Icon_Offer,
        IconImage_Icon_OPENINNEW,
        IconImage_Icon_Person,
        IconImage_Icon_Phone,
        IconImage_Icon_RESTAURANTICON,
        IconImage_Icon_SHOPPINGCART,
        IconImage_Icon_Star,
        IconImage_Icon_Store,
        IconImage_Icon_Ticket,
        IconImage_Icon_Train,
        IconImage_Icon_VIDEOCAMERA,
        IconImage_Icon_VIDEOPLAY,
        ..
      ),

    -- * IconImage_ImageStyle
    IconImage_ImageStyle
      ( IconImage_ImageStyle_CROPTYPENOTSET,
        IconImage_ImageStyle_Square,
        IconImage_ImageStyle_Circle,
        IconImage_ImageStyle_RECTANGLECUSTOM,
        IconImage_ImageStyle_RECTANGLE_4_3,
        ..
      ),

    -- * ImageButton_Icon
    ImageButton_Icon
      ( ImageButton_Icon_None,
        ImageButton_Icon_Airplane,
        ImageButton_Icon_Bookmark,
        ImageButton_Icon_Bus,
        ImageButton_Icon_Car,
        ImageButton_Icon_Clock,
        ImageButton_Icon_CONFIRMATIONNUMBERICON,
        ImageButton_Icon_Dollar,
        ImageButton_Icon_Description,
        ImageButton_Icon_Edit,
        ImageButton_Icon_EDITNOTE,
        ImageButton_Icon_Email,
        ImageButton_Icon_EVENTPERFORMER,
        ImageButton_Icon_EVENTSEAT,
        ImageButton_Icon_FLIGHTARRIVAL,
        ImageButton_Icon_FLIGHTDEPARTURE,
        ImageButton_Icon_Hotel,
        ImageButton_Icon_HOTELROOMTYPE,
        ImageButton_Icon_Invite,
        ImageButton_Icon_MAPPIN,
        ImageButton_Icon_Membership,
        ImageButton_Icon_MULTIPLEPEOPLE,
        ImageButton_Icon_Offer,
        ImageButton_Icon_OPENINNEW,
        ImageButton_Icon_Person,
        ImageButton_Icon_Phone,
        ImageButton_Icon_RESTAURANTICON,
        ImageButton_Icon_SHOPPINGCART,
        ImageButton_Icon_Star,
        ImageButton_Icon_Store,
        ImageButton_Icon_Ticket,
        ImageButton_Icon_Train,
        ImageButton_Icon_VIDEOCAMERA,
        ImageButton_Icon_VIDEOPLAY,
        ..
      ),

    -- * ImageCropStyle_Type
    ImageCropStyle_Type
      ( ImageCropStyle_Type_CROPTYPENOTSET,
        ImageCropStyle_Type_Square,
        ImageCropStyle_Type_Circle,
        ImageCropStyle_Type_RECTANGLECUSTOM,
        ImageCropStyle_Type_RECTANGLE_4_3,
        ..
      ),

    -- * ImageKeyValue_Icon
    ImageKeyValue_Icon
      ( ImageKeyValue_Icon_None,
        ImageKeyValue_Icon_Airplane,
        ImageKeyValue_Icon_Bookmark,
        ImageKeyValue_Icon_Bus,
        ImageKeyValue_Icon_Car,
        ImageKeyValue_Icon_Clock,
        ImageKeyValue_Icon_CONFIRMATIONNUMBERICON,
        ImageKeyValue_Icon_Dollar,
        ImageKeyValue_Icon_Description,
        ImageKeyValue_Icon_Edit,
        ImageKeyValue_Icon_EDITNOTE,
        ImageKeyValue_Icon_Email,
        ImageKeyValue_Icon_EVENTPERFORMER,
        ImageKeyValue_Icon_EVENTSEAT,
        ImageKeyValue_Icon_FLIGHTARRIVAL,
        ImageKeyValue_Icon_FLIGHTDEPARTURE,
        ImageKeyValue_Icon_Hotel,
        ImageKeyValue_Icon_HOTELROOMTYPE,
        ImageKeyValue_Icon_Invite,
        ImageKeyValue_Icon_MAPPIN,
        ImageKeyValue_Icon_Membership,
        ImageKeyValue_Icon_MULTIPLEPEOPLE,
        ImageKeyValue_Icon_Offer,
        ImageKeyValue_Icon_OPENINNEW,
        ImageKeyValue_Icon_Person,
        ImageKeyValue_Icon_Phone,
        ImageKeyValue_Icon_RESTAURANTICON,
        ImageKeyValue_Icon_SHOPPINGCART,
        ImageKeyValue_Icon_Star,
        ImageKeyValue_Icon_Store,
        ImageKeyValue_Icon_Ticket,
        ImageKeyValue_Icon_Train,
        ImageKeyValue_Icon_VIDEOCAMERA,
        ImageKeyValue_Icon_VIDEOPLAY,
        ..
      ),

    -- * ImapSessionContext_App
    ImapSessionContext_App
      ( ImapSessionContext_App_OTHERAPP,
        ImapSessionContext_App_Chrome,
        ImapSessionContext_App_Firefox,
        ImapSessionContext_App_Msie,
        ImapSessionContext_App_Safari,
        ImapSessionContext_App_Opera,
        ImapSessionContext_App_Edge,
        ImapSessionContext_App_MSIECOMPATIBILITY,
        ImapSessionContext_App_OTHERBROWSER,
        ImapSessionContext_App_SAMSUNGBROWSER,
        ImapSessionContext_App_UCBROWSER,
        ImapSessionContext_App_ANDROIDBROWSER,
        ImapSessionContext_App_YANDEXBROWSER,
        ImapSessionContext_App_SILKBROWSER,
        ImapSessionContext_App_COCCOCBROWSER,
        ImapSessionContext_App_MAXBROWSERAPPVALUE,
        ImapSessionContext_App_GMAILAPP,
        ImapSessionContext_App_GMAILINBOXAPP,
        ImapSessionContext_App_ANDROIDEMAILAPP,
        ImapSessionContext_App_SAMSUNGMAILAPP,
        ImapSessionContext_App_MOTOEMAILAPP,
        ImapSessionContext_App_BOXERAPP,
        ImapSessionContext_App_LIMILABSMAILDLL,
        ImapSessionContext_App_BISAPP,
        ImapSessionContext_App_OUTLOOKMAILAPP,
        ImapSessionContext_App_APPLENATIVEAPP,
        ImapSessionContext_App_CHROMEWEBVIEWAPP,
        ImapSessionContext_App_SAFARIWEBVIEWAPP,
        ImapSessionContext_App_CHROMESYNCAPP,
        ImapSessionContext_App_GSAAPP,
        ImapSessionContext_App_GMMAPP,
        ImapSessionContext_App_CALENDARAPP,
        ImapSessionContext_App_PLUSAPP,
        ImapSessionContext_App_HANGOUTSAPP,
        ImapSessionContext_App_HANGOUTSMEETAPP,
        ImapSessionContext_App_JAMBOARDAPP,
        ImapSessionContext_App_VOICEAPP,
        ImapSessionContext_App_PHOTOSAPP,
        ImapSessionContext_App_DRIVESYNCAPP,
        ImapSessionContext_App_DRIVEAPP,
        ImapSessionContext_App_DOCSAPP,
        ImapSessionContext_App_SHEETSAPP,
        ImapSessionContext_App_SLIDESAPP,
        ImapSessionContext_App_KEEPAPP,
        ImapSessionContext_App_WHATSAPPINDRIVEAPP,
        ImapSessionContext_App_TRANSLATEAPP,
        ImapSessionContext_App_YOUTUBEAPP,
        ImapSessionContext_App_YOUTUBEMUSICAPP,
        ImapSessionContext_App_YOUTUBEGAMINGAPP,
        ImapSessionContext_App_YOUTUBEKIDSAPP,
        ImapSessionContext_App_YOUTUBECAPTUREAPP,
        ImapSessionContext_App_YOUTUBECREATORAPP,
        ImapSessionContext_App_YOUTUBEGOAPP,
        ImapSessionContext_App_YOUTUBETVAPP,
        ImapSessionContext_App_YOUTUBEVRAPP,
        ImapSessionContext_App_PLAYAPP,
        ImapSessionContext_App_PLAYMUSICAPP,
        ImapSessionContext_App_PLAYBOOKSAPP,
        ImapSessionContext_App_PLAYMOVIESAPP,
        ImapSessionContext_App_PLAYNEWSSTANDAPP,
        ImapSessionContext_App_PLAYGAMESAPP,
        ImapSessionContext_App_POKEMONGOAPP,
        ImapSessionContext_App_ALLOAPP,
        ImapSessionContext_App_DUOAPP,
        ImapSessionContext_App_CLASSROOMAPP,
        ImapSessionContext_App_TRIPSAPP,
        ImapSessionContext_App_GOOGLEPAYAPP,
        ImapSessionContext_App_WAZEAPP,
        ImapSessionContext_App_ASSISTANTAPP,
        ImapSessionContext_App_GBOARDAPP,
        ImapSessionContext_App_NEWSAPP,
        ImapSessionContext_App_HOMEAPP,
        ImapSessionContext_App_EARTHAPP,
        ImapSessionContext_App_STREETVIEWAPP,
        ImapSessionContext_App_TEZAPP,
        ImapSessionContext_App_GOOGLEANALYTICSAPP,
        ImapSessionContext_App_ADSENSEAPP,
        ImapSessionContext_App_ADWORDSAPP,
        ImapSessionContext_App_EXPRESSAPP,
        ImapSessionContext_App_WEARAPP,
        ImapSessionContext_App_GOOGLEMYBUSINESSAPP,
        ImapSessionContext_App_FAMILYLINKAPP,
        ImapSessionContext_App_OPINIONREWARDSAPP,
        ImapSessionContext_App_WALLETAPP,
        ImapSessionContext_App_ARTSANDCULTUREAPP,
        ImapSessionContext_App_ANDROIDDEVICEMANAGERAPP,
        ImapSessionContext_App_GOOGLEGOAPP,
        ImapSessionContext_App_FILESGOAPP,
        ImapSessionContext_App_DATALLYAPP,
        ImapSessionContext_App_WIFIAPP,
        ImapSessionContext_App_STADIAAPP,
        ImapSessionContext_App_BATTLESTARAPP,
        ImapSessionContext_App_SMARTLOCKAPP,
        ImapSessionContext_App_LOGDOGAPP,
        ImapSessionContext_App_DEPRECATEDMACOSXMAILAPP,
        ImapSessionContext_App_DEPRECATEDIOSMAILAPP,
        ..
      ),

    -- * ImapSessionContext_DeviceType
    ImapSessionContext_DeviceType
      ( ImapSessionContext_DeviceType_Unknown,
        ImapSessionContext_DeviceType_PC,
        ImapSessionContext_DeviceType_Mobile,
        ImapSessionContext_DeviceType_Tablet,
        ImapSessionContext_DeviceType_PORTABLEMEDIAPLAYER,
        ImapSessionContext_DeviceType_TV,
        ImapSessionContext_DeviceType_GAMECONSOLE,
        ImapSessionContext_DeviceType_MEDIAPLAYER,
        ImapSessionContext_DeviceType_SMARTSPEAKER,
        ImapSessionContext_DeviceType_SMARTDISPLAY,
        ImapSessionContext_DeviceType_CONNECTEDHOMEOTHER,
        ImapSessionContext_DeviceType_Wearable,
        ImapSessionContext_DeviceType_Glass,
        ImapSessionContext_DeviceType_Car,
        ImapSessionContext_DeviceType_VRHEADSET,
        ..
      ),

    -- * ImapSessionContext_Os
    ImapSessionContext_Os
      ( ImapSessionContext_Os_UNKNOWNOS,
        ImapSessionContext_Os_ANDROIDOS,
        ImapSessionContext_Os_IOSOS,
        ImapSessionContext_Os_BLACKBERRYOS,
        ImapSessionContext_Os_WINPHONEOS,
        ImapSessionContext_Os_FIREOS,
        ImapSessionContext_Os_MAXMOBILEOSVALUE,
        ImapSessionContext_Os_WINDOWSOS,
        ImapSessionContext_Os_LINUXOS,
        ImapSessionContext_Os_MACOS,
        ImapSessionContext_Os_CHROMEOS,
        ImapSessionContext_Os_PLAYSTATIONOS,
        ImapSessionContext_Os_XBOXOS,
        ImapSessionContext_Os_TIZENOS,
        ImapSessionContext_Os_APPLETVOS,
        ImapSessionContext_Os_KAIOS,
        ImapSessionContext_Os_ANDROIDTHINGSOS,
        ImapSessionContext_Os_CASTOS,
        ImapSessionContext_Os_STADIAOS,
        ..
      ),

    -- * IncomingWebhookChangedMetadata_Type
    IncomingWebhookChangedMetadata_Type
      ( IncomingWebhookChangedMetadata_Type_Unspecified,
        IncomingWebhookChangedMetadata_Type_Added,
        IncomingWebhookChangedMetadata_Type_Updated,
        IncomingWebhookChangedMetadata_Type_Removed,
        IncomingWebhookChangedMetadata_Type_UPDATEDNAME,
        IncomingWebhookChangedMetadata_Type_UPDATEDAVATAR,
        IncomingWebhookChangedMetadata_Type_UPDATEDNAMEANDAVATAR,
        ..
      ),

    -- * IndexItemRequest_Mode
    IndexItemRequest_Mode
      ( IndexItemRequest_Mode_Unspecified,
        IndexItemRequest_Mode_Synchronous,
        IndexItemRequest_Mode_Asynchronous,
        ..
      ),

    -- * InsertContent_ContentType
    InsertContent_ContentType
      ( InsertContent_ContentType_UNSPECIFIEDCONTENTTYPE,
        InsertContent_ContentType_Text,
        InsertContent_ContentType_MUTABLEHTML,
        InsertContent_ContentType_IMMUTABLEHTML,
        ..
      ),

    -- * InsertContent_MimeType
    InsertContent_MimeType
      ( InsertContent_MimeType_UNSPECIFIEDEMAILMIMETYPE,
        InsertContent_MimeType_PLAINTEXT,
        InsertContent_MimeType_Html,
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

    -- * KeyValue_Icon
    KeyValue_Icon
      ( KeyValue_Icon_None,
        KeyValue_Icon_Airplane,
        KeyValue_Icon_Bookmark,
        KeyValue_Icon_Bus,
        KeyValue_Icon_Car,
        KeyValue_Icon_Clock,
        KeyValue_Icon_CONFIRMATIONNUMBERICON,
        KeyValue_Icon_Dollar,
        KeyValue_Icon_Description,
        KeyValue_Icon_Edit,
        KeyValue_Icon_EDITNOTE,
        KeyValue_Icon_Email,
        KeyValue_Icon_EVENTPERFORMER,
        KeyValue_Icon_EVENTSEAT,
        KeyValue_Icon_FLIGHTARRIVAL,
        KeyValue_Icon_FLIGHTDEPARTURE,
        KeyValue_Icon_Hotel,
        KeyValue_Icon_HOTELROOMTYPE,
        KeyValue_Icon_Invite,
        KeyValue_Icon_MAPPIN,
        KeyValue_Icon_Membership,
        KeyValue_Icon_MULTIPLEPEOPLE,
        KeyValue_Icon_Offer,
        KeyValue_Icon_OPENINNEW,
        KeyValue_Icon_Person,
        KeyValue_Icon_Phone,
        KeyValue_Icon_RESTAURANTICON,
        KeyValue_Icon_SHOPPINGCART,
        KeyValue_Icon_Star,
        KeyValue_Icon_Store,
        KeyValue_Icon_Ticket,
        KeyValue_Icon_Train,
        KeyValue_Icon_VIDEOCAMERA,
        KeyValue_Icon_VIDEOPLAY,
        ..
      ),

    -- * KeyValue_ImageStyle
    KeyValue_ImageStyle
      ( KeyValue_ImageStyle_CROPTYPENOTSET,
        KeyValue_ImageStyle_Square,
        KeyValue_ImageStyle_Circle,
        KeyValue_ImageStyle_RECTANGLECUSTOM,
        KeyValue_ImageStyle_RECTANGLE_4_3,
        ..
      ),

    -- * LinkData_AttachmentRenderHint
    LinkData_AttachmentRenderHint
      ( LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTUNKNOWN,
        LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTAFTER,
        LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTINTERLEAVED,
        ..
      ),

    -- * LinkData_LinkType
    LinkData_LinkType
      ( LinkData_LinkType_UNKNOWNLINKTYPE,
        LinkData_LinkType_SELFLINK,
        ..
      ),

    -- * MeetingSpace_AcceptedNumberClassItem
    MeetingSpace_AcceptedNumberClassItem
      ( MeetingSpace_AcceptedNumberClassItem_NUMBERCLASSUNSPECIFIED,
        MeetingSpace_AcceptedNumberClassItem_LOWCOST,
        MeetingSpace_AcceptedNumberClassItem_HIGHCOST,
        MeetingSpace_AcceptedNumberClassItem_Legacy,
        ..
      ),

    -- * MembershipChangeEvent_LeaveReason
    MembershipChangeEvent_LeaveReason
      ( MembershipChangeEvent_LeaveReason_LEAVEREASONUNKNOWN,
        MembershipChangeEvent_LeaveReason_FORCEHISTORYPOLICYCHANGE,
        MembershipChangeEvent_LeaveReason_USERINITIATED,
        ..
      ),

    -- * MembershipChangeEvent_Type
    MembershipChangeEvent_Type
      ( MembershipChangeEvent_Type_Join,
        MembershipChangeEvent_Type_Leave,
        ..
      ),

    -- * MembershipChangedMetadata_InitiatorType
    MembershipChangedMetadata_InitiatorType
      ( MembershipChangedMetadata_InitiatorType_INITIATORTYPEUNSPECIFIED,
        MembershipChangedMetadata_InitiatorType_INITIATORTYPEENDUSER,
        MembershipChangedMetadata_InitiatorType_INITIATORTYPEADMIN,
        ..
      ),

    -- * MembershipChangedMetadata_Type
    MembershipChangedMetadata_Type
      ( MembershipChangedMetadata_Type_TYPEUNSPECIFIED,
        MembershipChangedMetadata_Type_Invited,
        MembershipChangedMetadata_Type_Joined,
        MembershipChangedMetadata_Type_Added,
        MembershipChangedMetadata_Type_Removed,
        MembershipChangedMetadata_Type_Left',
        MembershipChangedMetadata_Type_BOTADDED,
        MembershipChangedMetadata_Type_BOTREMOVED,
        MembershipChangedMetadata_Type_KICKEDDUETOOTRCONFLICT,
        MembershipChangedMetadata_Type_ROLEUPDATED,
        MembershipChangedMetadata_Type_ROLETARGETAUDIENCEUPDATED,
        ..
      ),

    -- * Message_DeletableBy
    Message_DeletableBy
      ( Message_DeletableBy_PERMISSIONUNSPECIFIED,
        Message_DeletableBy_PERMISSIONNOONE,
        Message_DeletableBy_PERMISSIONCREATOR,
        Message_DeletableBy_PERMISSIONMEMBER,
        ..
      ),

    -- * Message_EditableBy
    Message_EditableBy
      ( Message_EditableBy_PERMISSIONUNSPECIFIED,
        Message_EditableBy_PERMISSIONNOONE,
        Message_EditableBy_PERMISSIONCREATOR,
        Message_EditableBy_PERMISSIONMEMBER,
        ..
      ),

    -- * Message_MessageOrigin
    Message_MessageOrigin
      ( Message_MessageOrigin_ORIGINNOTSET,
        Message_MessageOrigin_ORIGINDYNAMITE,
        Message_MessageOrigin_ORIGINBABELINTEROPLIVE,
        Message_MessageOrigin_ORIGINBABELINTEROPRETRY,
        Message_MessageOrigin_ORIGINBABEL,
        Message_MessageOrigin_ORIGINBABELDUALWRITE,
        Message_MessageOrigin_ORIGINBABELDUALWRITERETRY,
        Message_MessageOrigin_ORIGINBACKFILLFROMPAPYRUS,
        Message_MessageOrigin_ORIGINBACKFILLFROMGMAILARCHIVE,
        ..
      ),

    -- * Message_MessageState
    Message_MessageState
      ( Message_MessageState_Public,
        Message_MessageState_Private,
        ..
      ),

    -- * Message_QuotedByState
    Message_QuotedByState
      ( Message_QuotedByState_QUOTEDBYSTATEUNSPECIFIED,
        Message_QuotedByState_QUOTEDBYSTATEHASBEENQUOTED,
        Message_QuotedByState_QUOTEDBYSTATEHASNOTBEENQUOTED,
        ..
      ),

    -- * Message_RichTextFormattingType
    Message_RichTextFormattingType
      ( Message_RichTextFormattingType_None,
        Message_RichTextFormattingType_Markdown,
        Message_RichTextFormattingType_FORMATANNOTATIONS,
        Message_RichTextFormattingType_FORMATANNOTATIONSIGNORED,
        Message_RichTextFormattingType_FORMATANNOTATIONSIGNOREDWITHMARKDOWN,
        ..
      ),

    -- * MessageInfo_AuthorUserType
    MessageInfo_AuthorUserType
      ( MessageInfo_AuthorUserType_Human,
        MessageInfo_AuthorUserType_Bot,
        ..
      ),

    -- * MessageInfo_SearcherMembershipState
    MessageInfo_SearcherMembershipState
      ( MessageInfo_SearcherMembershipState_MEMBERUNKNOWN,
        MessageInfo_SearcherMembershipState_MEMBERINVITED,
        MessageInfo_SearcherMembershipState_MEMBERJOINED,
        MessageInfo_SearcherMembershipState_MEMBERNOTAMEMBER,
        MessageInfo_SearcherMembershipState_MEMBERFAILED,
        ..
      ),

    -- * OpenLink_LoadIndicator
    OpenLink_LoadIndicator
      ( OpenLink_LoadIndicator_None,
        OpenLink_LoadIndicator_Spinner,
        ..
      ),

    -- * OpenLink_OnClose
    OpenLink_OnClose
      ( OpenLink_OnClose_Nothing',
        OpenLink_OnClose_RELOADADDON,
        ..
      ),

    -- * OpenLink_OpenAs
    OpenLink_OpenAs
      ( OpenLink_OpenAs_FULLSIZE,
        OpenLink_OpenAs_Overlay,
        ..
      ),

    -- * OtrChatMessageEvent_MessageOtrStatus
    OtrChatMessageEvent_MessageOtrStatus
      ( OtrChatMessageEvent_MessageOtrStatus_OFFTHERECORD,
        OtrChatMessageEvent_MessageOtrStatus_ONTHERECORD,
        ..
      ),

    -- * OtrModificationEvent_NewOtrStatus
    OtrModificationEvent_NewOtrStatus
      ( OtrModificationEvent_NewOtrStatus_OFFTHERECORD,
        OtrModificationEvent_NewOtrStatus_ONTHERECORD,
        ..
      ),

    -- * OtrModificationEvent_NewOtrToggle
    OtrModificationEvent_NewOtrToggle
      ( OtrModificationEvent_NewOtrToggle_Enabled,
        OtrModificationEvent_NewOtrToggle_Disabled,
        ..
      ),

    -- * OtrModificationEvent_OldOtrStatus
    OtrModificationEvent_OldOtrStatus
      ( OtrModificationEvent_OldOtrStatus_OFFTHERECORD,
        OtrModificationEvent_OldOtrStatus_ONTHERECORD,
        ..
      ),

    -- * OtrModificationEvent_OldOtrToggle
    OtrModificationEvent_OldOtrToggle
      ( OtrModificationEvent_OldOtrToggle_Enabled,
        OtrModificationEvent_OldOtrToggle_Disabled,
        ..
      ),

    -- * PackagingServiceClient_Type
    PackagingServiceClient_Type
      ( PackagingServiceClient_Type_Android,
        PackagingServiceClient_Type_Ios,
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

    -- * PrincipalProto_Scope
    PrincipalProto_Scope
      ( PrincipalProto_Scope_Invalid,
        PrincipalProto_Scope_GAIAUSER,
        PrincipalProto_Scope_GAIAGROUP,
        PrincipalProto_Scope_LDAPUSER,
        PrincipalProto_Scope_LDAPGROUP,
        PrincipalProto_Scope_MDBUSER,
        PrincipalProto_Scope_MDBGROUP,
        PrincipalProto_Scope_POSTINIUSER,
        PrincipalProto_Scope_CONTACTGROUP,
        PrincipalProto_Scope_SIMPLESECRETHOLDER,
        PrincipalProto_Scope_SIGNINGKEYPOSSESSOR,
        PrincipalProto_Scope_ALLAUTHENTICATEDUSERS,
        PrincipalProto_Scope_OAUTHCONSUMER,
        PrincipalProto_Scope_Host,
        PrincipalProto_Scope_SOCIALGRAPHNODE,
        PrincipalProto_Scope_EMAILOWNER,
        PrincipalProto_Scope_CAPTOKENHOLDER,
        PrincipalProto_Scope_Circle,
        PrincipalProto_Scope_Square,
        PrincipalProto_Scope_Event,
        PrincipalProto_Scope_RESOURCEROLE,
        PrincipalProto_Scope_Chat,
        PrincipalProto_Scope_YOUTUBEUSER,
        PrincipalProto_Scope_UNUSEDZWIEBACKSESSION,
        PrincipalProto_Scope_ZWIEBACKSESSION,
        PrincipalProto_Scope_RBACROLE,
        PrincipalProto_Scope_RBACSUBJECT,
        PrincipalProto_Scope_CLOUDPRINCIPAL,
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

    -- * QuotedMessageMetadata_BotAttachmentState
    QuotedMessageMetadata_BotAttachmentState
      ( QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATEUNSPECIFIED,
        QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATEHASBOTATTACHMENT,
        QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATENOBOTATTACHMENT,
        ..
      ),

    -- * QuotedMessageMetadata_MessageState
    QuotedMessageMetadata_MessageState
      ( QuotedMessageMetadata_MessageState_MESSAGESTATEUNSPECIFIED,
        QuotedMessageMetadata_MessageState_MESSAGESTATEACTIVE,
        QuotedMessageMetadata_MessageState_MESSAGESTATEDELETED,
        QuotedMessageMetadata_MessageState_MESSAGESTATEOTREDITED,
        ..
      ),

    -- * RecordingEvent_Type
    RecordingEvent_Type
      ( RecordingEvent_Type_RECORDINGEVENTUNSPECIFIED,
        RecordingEvent_Type_USERACTION,
        RecordingEvent_Type_STARTEDBYUSER,
        RecordingEvent_Type_STOPPEDBYUSER,
        RecordingEvent_Type_CANCELLEDBYUSER,
        RecordingEvent_Type_CANCELLEDINITIALIZATIONFAILED,
        RecordingEvent_Type_CANCELLEDINITIATORLEFT,
        RecordingEvent_Type_ACTIVEABOUTTOSTOPTOOLONG,
        RecordingEvent_Type_STOPPEDTOOLONG,
        RecordingEvent_Type_STOPPEDALLDEVICESLEFT,
        RecordingEvent_Type_STOPPEDINTERNALFAILURES,
        ..
      ),

    -- * RecordingInfo_RecordingApplicationType
    RecordingInfo_RecordingApplicationType
      ( RecordingInfo_RecordingApplicationType_RECORDINGAPPLICATIONTYPEUNSPECIFIED,
        RecordingInfo_RecordingApplicationType_Recording,
        RecordingInfo_RecordingApplicationType_GLIVESTREAM,
        RecordingInfo_RecordingApplicationType_Broadcast,
        ..
      ),

    -- * RecordingInfo_RecordingStatus
    RecordingInfo_RecordingStatus
      ( RecordingInfo_RecordingStatus_RECORDINGUNSPECIFIED,
        RecordingInfo_RecordingStatus_RECORDINGINACTIVE,
        RecordingInfo_RecordingStatus_RECORDINGSTARTING,
        RecordingInfo_RecordingStatus_RECORDINGSTARTED,
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

    -- * RequiredMessageFeaturesMetadata_RequiredFeaturesItem
    RequiredMessageFeaturesMetadata_RequiredFeaturesItem
      ( RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATUREUNSPECIFIED,
        RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATUREMESSAGEQUOTING,
        RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURETOMBSTONESINDMSANDUFRS,
        RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURECUSTOMHYPERLINK,
        RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURESMARTCHIP,
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

    -- * RoomUpdatedMetadata_InitiatorType
    RoomUpdatedMetadata_InitiatorType
      ( RoomUpdatedMetadata_InitiatorType_INITIATORTYPEUNSPECIFIED,
        RoomUpdatedMetadata_InitiatorType_INITIATORTYPEENDUSER,
        RoomUpdatedMetadata_InitiatorType_INITIATORTYPEADMIN,
        ..
      ),

    -- * Roster_RosterState
    Roster_RosterState
      ( Roster_RosterState_ROSTERSTATEUNKNOWN,
        Roster_RosterState_ROSTERACTIVE,
        Roster_RosterState_ROSTERDELETED,
        ..
      ),

    -- * Segment_Type
    Segment_Type
      ( Segment_Type_Text,
        Segment_Type_LINEBREAK,
        Segment_Type_Link,
        Segment_Type_USERMENTION,
        Segment_Type_ALLUSERMENTION,
        Segment_Type_Hashtag,
        ..
      ),

    -- * SelectionControl_Type
    SelectionControl_Type
      ( SelectionControl_Type_CHECKBOX,
        SelectionControl_Type_RADIOBUTTON,
        SelectionControl_Type_Switch,
        SelectionControl_Type_Dropdown,
        ..
      ),

    -- * SessionEvent_Type
    SessionEvent_Type
      ( SessionEvent_Type_EVENTUNSPECIFIED,
        SessionEvent_Type_STARTEDBYUSER,
        SessionEvent_Type_STOPPEDBYUSER,
        SessionEvent_Type_CANCELLEDBYUSER,
        SessionEvent_Type_CANCELLEDINITIALIZATIONFAILED,
        SessionEvent_Type_CANCELLEDINITIATORLEFT,
        SessionEvent_Type_ACTIVEABOUTTOSTOPTOOLONG,
        SessionEvent_Type_STOPPEDTOOLONG,
        SessionEvent_Type_STOPPEDALLDEVICESLEFT,
        SessionEvent_Type_STOPPEDINTERNALFAILURES,
        ..
      ),

    -- * SessionStateInfo_SessionState
    SessionStateInfo_SessionState
      ( SessionStateInfo_SessionState_SESSIONSTATEUNSPECIFIED,
        SessionStateInfo_SessionState_Starting,
        SessionStateInfo_SessionState_Active,
        SessionStateInfo_SessionState_Stopped,
        ..
      ),

    -- * SessionStateInfo_SessionStopReason
    SessionStateInfo_SessionStopReason
      ( SessionStateInfo_SessionStopReason_SESSIONSTOPREASONUNSPECIFIED,
        SessionStateInfo_SessionStopReason_USERACTION,
        SessionStateInfo_SessionStopReason_STOPPEDINITIALIZATIONFAILED,
        SessionStateInfo_SessionStopReason_STOPPEDTOOLONG,
        SessionStateInfo_SessionStopReason_STOPPEDALLDEVICESLEFT,
        SessionStateInfo_SessionStopReason_STOPPEDINTERNALFAILURES,
        SessionStateInfo_SessionStopReason_STOPPEDYOUTUBELIVEEVENTENDED,
        ..
      ),

    -- * Settings_AccessType
    Settings_AccessType
      ( Settings_AccessType_ACCESSTYPEUNSPECIFIED,
        Settings_AccessType_ACCESSTYPEOPEN,
        Settings_AccessType_ACCESSTYPETRUSTED,
        Settings_AccessType_ACCESSTYPERESTRICTED,
        Settings_AccessType_ACCESSTYPECLOSED,
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

    -- * SimpleSecretLabelProto_Type
    SimpleSecretLabelProto_Type
      ( SimpleSecretLabelProto_Type_Invalid,
        SimpleSecretLabelProto_Type_AUTHKEY,
        SimpleSecretLabelProto_Type_Invite,
        SimpleSecretLabelProto_Type_GENERICSECRET,
        SimpleSecretLabelProto_Type_CAPTOKEN,
        SimpleSecretLabelProto_Type_Reke,
        ..
      ),

    -- * SlashCommandMetadata_Type
    SlashCommandMetadata_Type
      ( SlashCommandMetadata_Type_TYPEUNSPECIFIED,
        SlashCommandMetadata_Type_Add,
        SlashCommandMetadata_Type_Invoke,
        SlashCommandMetadata_Type_FAILEDTOADD,
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

    -- * StreamingSessionInfo_ApplicationType
    StreamingSessionInfo_ApplicationType
      ( StreamingSessionInfo_ApplicationType_RECORDINGAPPLICATIONTYPEUNSPECIFIED,
        StreamingSessionInfo_ApplicationType_Recording,
        StreamingSessionInfo_ApplicationType_GLIVESTREAM,
        StreamingSessionInfo_ApplicationType_Broadcast,
        ..
      ),

    -- * StreamingSessionInfo_Status
    StreamingSessionInfo_Status
      ( StreamingSessionInfo_Status_STATUSUNSPECIFIED,
        StreamingSessionInfo_Status_Inactive,
        StreamingSessionInfo_Status_Starting,
        StreamingSessionInfo_Status_Live,
        ..
      ),

    -- * StreamingSessionInfo_ViewerAccessPolicy
    StreamingSessionInfo_ViewerAccessPolicy
      ( StreamingSessionInfo_ViewerAccessPolicy_BROADCASTINGACCESSPOLICYUNSPECIFIED,
        StreamingSessionInfo_ViewerAccessPolicy_Organization,
        StreamingSessionInfo_ViewerAccessPolicy_Public,
        ..
      ),

    -- * SwitchWidget_ControlType
    SwitchWidget_ControlType
      ( SwitchWidget_ControlType_Unspecified,
        SwitchWidget_ControlType_Switch,
        SwitchWidget_ControlType_Checkbox,
        ..
      ),

    -- * TextButton_Style
    TextButton_Style
      ( TextButton_Style_Unspecified,
        TextButton_Style_Text,
        TextButton_Style_Filled,
        ..
      ),

    -- * TextField_Type
    TextField_Type
      ( TextField_Type_SINGLELINE,
        TextField_Type_MULTIPLELINE,
        ..
      ),

    -- * TombstoneMetadata_TombstoneType
    TombstoneMetadata_TombstoneType
      ( TombstoneMetadata_TombstoneType_TOMBSTONEUNSPECIFIED,
        TombstoneMetadata_TombstoneType_Creator,
        TombstoneMetadata_TombstoneType_ROOMOWNER,
        TombstoneMetadata_TombstoneType_Admin,
        TombstoneMetadata_TombstoneType_APPMESSAGEEXPIRY,
        TombstoneMetadata_TombstoneType_CREATORVIAAPP,
        TombstoneMetadata_TombstoneType_ROOMOWNERVIAAPP,
        ..
      ),

    -- * Trigger_Dispatcher
    Trigger_Dispatcher
      ( Trigger_Dispatcher_DISPATCHERCOPROC,
        Trigger_Dispatcher_DISPATCHERJOBSETTEDPRIMARY,
        Trigger_Dispatcher_DISPATCHERSTRATUS,
        Trigger_Dispatcher_DISPATCHERTASKSSERVER,
        Trigger_Dispatcher_DISPATCHERSTUBBYDISPATCHER,
        Trigger_Dispatcher_DISPATCHERCS,
        ..
      ),

    -- * TriggerAction_Action
    TriggerAction_Action
      ( TriggerAction_Action_ACTIONNONE,
        TriggerAction_Action_ACTIONDELETE,
        TriggerAction_Action_ACTIONCREATENEWTRIGGER,
        TriggerAction_Action_ACTIONMESSAGEEXPUNGE,
        TriggerAction_Action_ACTIONRETENTIONPOLICYUPDATE,
        TriggerAction_Action_ACTIONUPDATEICEBOXMODEL,
        TriggerAction_Action_ACTIONINVOKECS,
        TriggerAction_Action_ACTIONINVOKESTRATUS,
        TriggerAction_Action_ACTIONPDHEXPUNGE,
        TriggerAction_Action_ACTIONQUERYRETENTION,
        TriggerAction_Action_ACTIONINVOKEJOBSETTEDPRIMARY,
        TriggerAction_Action_ACTIONINVOKETASKSSERVER,
        TriggerAction_Action_ACTIONINVOKEPUBLISHER,
        TriggerAction_Action_ACTIONINVOKEOBSERVER,
        TriggerAction_Action_ACTIONPUSHHISTORYTOPDH,
        TriggerAction_Action_ACTIONINVOKESTUBBYDISPATCHER,
        TriggerAction_Action_ACTIONPDHBACKFILL,
        TriggerAction_Action_ACTIONMESSAGEUNDELETE,
        TriggerAction_Action_ACTIONVAULTENDUSERACCESS,
        TriggerAction_Action_ACTIONINVOKEGROUPS,
        TriggerAction_Action_ACTIONACCOUNTINITIALIZATION,
        TriggerAction_Action_ACTIONINVOKEOBSERVERWIPEOUT,
        TriggerAction_Action_ACTIONSERVICEREMOVEDMESSAGEEXPUNGE,
        TriggerAction_Action_ACTIONEVERCLEAREXPUNGE,
        TriggerAction_Action_ACTIONINVOKESMIMECERTIFICATEISSUER,
        TriggerAction_Action_ACTIONGROUPSQUERYRETENTION,
        TriggerAction_Action_ACTIONINVOKESATELLITEBACKUP,
        TriggerAction_Action_ACTIONINVOKEDEBUGLOG,
        TriggerAction_Action_ACTIONPREFERENCECLEANUP,
        TriggerAction_Action_ACTIONCARIBOUDATARETENTION,
        TriggerAction_Action_ACTIONHISTORYCLEANUP,
        TriggerAction_Action_ACTIONITEMBULKRELABEL,
        TriggerAction_Action_ACTIONINVOKESATELLITEIMAGEPROCESSING,
        TriggerAction_Action_ACTIONCARIBOUDATARETENTIONDIFF,
        TriggerAction_Action_ACTIONRELEVANCYSCOREBACKFILL,
        TriggerAction_Action_ACTIONPDHPUSHNOTIFICATIONBACKFILL,
        TriggerAction_Action_ACTIONAUTOSAVEDRAFTEXPUNGE,
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

    -- * UpdateBody_Type
    UpdateBody_Type
      ( UpdateBody_Type_UNSPECIFIEDACTIONTYPE,
        UpdateBody_Type_INPLACEINSERT,
        UpdateBody_Type_INSERTATSTART,
        UpdateBody_Type_INSERTATEND,
        UpdateBody_Type_Replace,
        ..
      ),

    -- * UploadMetadata_ClonedDriveAction
    UploadMetadata_ClonedDriveAction
      ( UploadMetadata_ClonedDriveAction_DRIVEACTIONUNSPECIFIED,
        UploadMetadata_ClonedDriveAction_ADDTODRIVE,
        UploadMetadata_ClonedDriveAction_Organize,
        UploadMetadata_ClonedDriveAction_ADDSHORTCUT,
        UploadMetadata_ClonedDriveAction_ADDANOTHERSHORTCUT,
        ..
      ),

    -- * UploadMetadata_VirusScanResult
    UploadMetadata_VirusScanResult
      ( UploadMetadata_VirusScanResult_UNKNOWNVIRUSSCANRESULT,
        UploadMetadata_VirusScanResult_Clean,
        UploadMetadata_VirusScanResult_Infected,
        UploadMetadata_VirusScanResult_Error',
        UploadMetadata_VirusScanResult_POLICYVIOLATION,
        ..
      ),

    -- * UrlMetadata_UrlSource
    UrlMetadata_UrlSource
      ( UrlMetadata_UrlSource_URLSOURCEUNKNOWN,
        UrlMetadata_UrlSource_SERVERSUPPLIEDPOLICYVIOLATION,
        UrlMetadata_UrlSource_AUTODETECTEDPLAINTEXT,
        UrlMetadata_UrlSource_RICHTEXT,
        ..
      ),

    -- * User_UserAccountState
    User_UserAccountState
      ( User_UserAccountState_UNKNOWNUSERACCOUNTSTATE,
        User_UserAccountState_Enabled,
        User_UserAccountState_Disabled,
        User_UserAccountState_Deleted,
        User_UserAccountState_TEMPORARYUNAVAILABLE,
        ..
      ),

    -- * User_UserProfileVisibility
    User_UserProfileVisibility
      ( User_UserProfileVisibility_UNKNOWNUSERPROFILEVISIBILITY,
        User_UserProfileVisibility_FULLPROFILE,
        User_UserProfileVisibility_PRIMARYMAIL,
        User_UserProfileVisibility_INVITEEEMAIL,
        User_UserProfileVisibility_DELETEDUSER,
        User_UserProfileVisibility_UNKNOWNUSER,
        User_UserProfileVisibility_Failure,
        ..
      ),

    -- * UserId_Type
    UserId_Type
      ( UserId_Type_Human,
        UserId_Type_Bot,
        ..
      ),

    -- * UserInfo_UpdaterCountDisplayType
    UserInfo_UpdaterCountDisplayType
      ( UserInfo_UpdaterCountDisplayType_UPDATERCOUNTDISPLAYTYPEUNSPECIFIED,
        UserInfo_UpdaterCountDisplayType_NODISPLAYCOUNT,
        UserInfo_UpdaterCountDisplayType_EXACTCOUNT,
        UserInfo_UpdaterCountDisplayType_NONZEROCOUNT,
        ..
      ),

    -- * UserMentionMetadata_Type
    UserMentionMetadata_Type
      ( UserMentionMetadata_Type_TYPEUNSPECIFIED,
        UserMentionMetadata_Type_Invite,
        UserMentionMetadata_Type_Uninvite,
        UserMentionMetadata_Type_Mention,
        UserMentionMetadata_Type_MENTIONALL,
        UserMentionMetadata_Type_FAILEDTOADD,
        ..
      ),

    -- * UserMentionMetadata_UserMentionError
    UserMentionMetadata_UserMentionError
      ( UserMentionMetadata_UserMentionError_USERMENTIONERRORUNSPECIFIED,
        UserMentionMetadata_UserMentionError_MEMBERSHIPLIMITEXCEEDED,
        ..
      ),

    -- * VoicePhoneNumberI18nData_ValidationResult
    VoicePhoneNumberI18nData_ValidationResult
      ( VoicePhoneNumberI18nData_ValidationResult_Unknown,
        VoicePhoneNumberI18nData_ValidationResult_ISPOSSIBLE,
        VoicePhoneNumberI18nData_ValidationResult_INVALIDCOUNTRYCODE,
        VoicePhoneNumberI18nData_ValidationResult_TOOSHORT,
        VoicePhoneNumberI18nData_ValidationResult_TOOLONG,
        VoicePhoneNumberI18nData_ValidationResult_ISPOSSIBLELOCALONLY,
        VoicePhoneNumberI18nData_ValidationResult_INVALIDLENGTH,
        ..
      ),

    -- * WidgetMarkup_HorizontalAlignment
    WidgetMarkup_HorizontalAlignment
      ( WidgetMarkup_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        WidgetMarkup_HorizontalAlignment_Start,
        WidgetMarkup_HorizontalAlignment_Center,
        WidgetMarkup_HorizontalAlignment_End,
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

import qualified Gogol.Prelude as Core

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

newtype AclFixRequest_Role = AclFixRequest_Role {fromAclFixRequest_Role :: Core.Text}
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
pattern AclFixRequest_Role_Unknown :: AclFixRequest_Role
pattern AclFixRequest_Role_Unknown = AclFixRequest_Role "UNKNOWN"

-- |
pattern AclFixRequest_Role_Reader :: AclFixRequest_Role
pattern AclFixRequest_Role_Reader = AclFixRequest_Role "READER"

-- |
pattern AclFixRequest_Role_Commenter :: AclFixRequest_Role
pattern AclFixRequest_Role_Commenter = AclFixRequest_Role "COMMENTER"

-- |
pattern AclFixRequest_Role_Writer :: AclFixRequest_Role
pattern AclFixRequest_Role_Writer = AclFixRequest_Role "WRITER"

{-# COMPLETE
  AclFixRequest_Role_Unknown,
  AclFixRequest_Role_Reader,
  AclFixRequest_Role_Commenter,
  AclFixRequest_Role_Writer,
  AclFixRequest_Role
  #-}

newtype AclFixStatus_Fixability = AclFixStatus_Fixability {fromAclFixStatus_Fixability :: Core.Text}
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
pattern AclFixStatus_Fixability_Unknown :: AclFixStatus_Fixability
pattern AclFixStatus_Fixability_Unknown = AclFixStatus_Fixability "UNKNOWN"

-- |
pattern AclFixStatus_Fixability_ALREADYACCESSIBLE :: AclFixStatus_Fixability
pattern AclFixStatus_Fixability_ALREADYACCESSIBLE = AclFixStatus_Fixability "ALREADY_ACCESSIBLE"

-- |
pattern AclFixStatus_Fixability_CANFIX :: AclFixStatus_Fixability
pattern AclFixStatus_Fixability_CANFIX = AclFixStatus_Fixability "CAN_FIX"

-- |
pattern AclFixStatus_Fixability_CANNOTFIX :: AclFixStatus_Fixability
pattern AclFixStatus_Fixability_CANNOTFIX = AclFixStatus_Fixability "CANNOT_FIX"

-- |
pattern AclFixStatus_Fixability_ACLFIXERERROR :: AclFixStatus_Fixability
pattern AclFixStatus_Fixability_ACLFIXERERROR = AclFixStatus_Fixability "ACL_FIXER_ERROR"

{-# COMPLETE
  AclFixStatus_Fixability_Unknown,
  AclFixStatus_Fixability_ALREADYACCESSIBLE,
  AclFixStatus_Fixability_CANFIX,
  AclFixStatus_Fixability_CANNOTFIX,
  AclFixStatus_Fixability_ACLFIXERERROR,
  AclFixStatus_Fixability
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

newtype AddonComposeUiActionMarkup_Type = AddonComposeUiActionMarkup_Type {fromAddonComposeUiActionMarkup_Type :: Core.Text}
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

-- | Default. When unspecified, no action is taken.
pattern AddonComposeUiActionMarkup_Type_Unspecified :: AddonComposeUiActionMarkup_Type
pattern AddonComposeUiActionMarkup_Type_Unspecified = AddonComposeUiActionMarkup_Type "UNSPECIFIED"

-- | Dismisses the add-on compose UI.
pattern AddonComposeUiActionMarkup_Type_Dismiss :: AddonComposeUiActionMarkup_Type
pattern AddonComposeUiActionMarkup_Type_Dismiss = AddonComposeUiActionMarkup_Type "DISMISS"

{-# COMPLETE
  AddonComposeUiActionMarkup_Type_Unspecified,
  AddonComposeUiActionMarkup_Type_Dismiss,
  AddonComposeUiActionMarkup_Type
  #-}

newtype AffectedMembership_PriorMembershipRole = AffectedMembership_PriorMembershipRole {fromAffectedMembership_PriorMembershipRole :: Core.Text}
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
pattern AffectedMembership_PriorMembershipRole_ROLEUNKNOWN :: AffectedMembership_PriorMembershipRole
pattern AffectedMembership_PriorMembershipRole_ROLEUNKNOWN = AffectedMembership_PriorMembershipRole "ROLE_UNKNOWN"

-- | This role is used when a user is forcibly removed from a room by another user. They will no longer be able to search for the room, but their history will be retained.
pattern AffectedMembership_PriorMembershipRole_ROLENONE :: AffectedMembership_PriorMembershipRole
pattern AffectedMembership_PriorMembershipRole_ROLENONE = AffectedMembership_PriorMembershipRole "ROLE_NONE"

-- | This role is used for two purposes. 1. A group is invited to a room, making it discoverable for its members. 2. A user was part of a room, but willingly left the room.
pattern AffectedMembership_PriorMembershipRole_ROLEINVITEE :: AffectedMembership_PriorMembershipRole
pattern AffectedMembership_PriorMembershipRole_ROLEINVITEE = AffectedMembership_PriorMembershipRole "ROLE_INVITEE"

-- | --- Following roles are for joined members of a roster. --- Default role for any joined user. Has basic capabilities within a room.
pattern AffectedMembership_PriorMembershipRole_ROLEMEMBER :: AffectedMembership_PriorMembershipRole
pattern AffectedMembership_PriorMembershipRole_ROLEMEMBER = AffectedMembership_PriorMembershipRole "ROLE_MEMBER"

-- | Role assigned to room creators and explicitly promoted members. Has broad powers to manage the room.
pattern AffectedMembership_PriorMembershipRole_ROLEOWNER :: AffectedMembership_PriorMembershipRole
pattern AffectedMembership_PriorMembershipRole_ROLEOWNER = AffectedMembership_PriorMembershipRole "ROLE_OWNER"

{-# COMPLETE
  AffectedMembership_PriorMembershipRole_ROLEUNKNOWN,
  AffectedMembership_PriorMembershipRole_ROLENONE,
  AffectedMembership_PriorMembershipRole_ROLEINVITEE,
  AffectedMembership_PriorMembershipRole_ROLEMEMBER,
  AffectedMembership_PriorMembershipRole_ROLEOWNER,
  AffectedMembership_PriorMembershipRole
  #-}

newtype AffectedMembership_PriorMembershipState = AffectedMembership_PriorMembershipState {fromAffectedMembership_PriorMembershipState :: Core.Text}
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
pattern AffectedMembership_PriorMembershipState_MEMBERUNKNOWN :: AffectedMembership_PriorMembershipState
pattern AffectedMembership_PriorMembershipState_MEMBERUNKNOWN = AffectedMembership_PriorMembershipState "MEMBER_UNKNOWN"

-- | An invitation to the space has been sent
pattern AffectedMembership_PriorMembershipState_MEMBERINVITED :: AffectedMembership_PriorMembershipState
pattern AffectedMembership_PriorMembershipState_MEMBERINVITED = AffectedMembership_PriorMembershipState "MEMBER_INVITED"

-- | User has joined the space
pattern AffectedMembership_PriorMembershipState_MEMBERJOINED :: AffectedMembership_PriorMembershipState
pattern AffectedMembership_PriorMembershipState_MEMBERJOINED = AffectedMembership_PriorMembershipState "MEMBER_JOINED"

-- | User is not a member
pattern AffectedMembership_PriorMembershipState_MEMBERNOTAMEMBER :: AffectedMembership_PriorMembershipState
pattern AffectedMembership_PriorMembershipState_MEMBERNOTAMEMBER = AffectedMembership_PriorMembershipState "MEMBER_NOT_A_MEMBER"

-- | This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.
pattern AffectedMembership_PriorMembershipState_MEMBERFAILED :: AffectedMembership_PriorMembershipState
pattern AffectedMembership_PriorMembershipState_MEMBERFAILED = AffectedMembership_PriorMembershipState "MEMBER_FAILED"

{-# COMPLETE
  AffectedMembership_PriorMembershipState_MEMBERUNKNOWN,
  AffectedMembership_PriorMembershipState_MEMBERINVITED,
  AffectedMembership_PriorMembershipState_MEMBERJOINED,
  AffectedMembership_PriorMembershipState_MEMBERNOTAMEMBER,
  AffectedMembership_PriorMembershipState_MEMBERFAILED,
  AffectedMembership_PriorMembershipState
  #-}

newtype AffectedMembership_TargetMembershipRole = AffectedMembership_TargetMembershipRole {fromAffectedMembership_TargetMembershipRole :: Core.Text}
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
pattern AffectedMembership_TargetMembershipRole_ROLEUNKNOWN :: AffectedMembership_TargetMembershipRole
pattern AffectedMembership_TargetMembershipRole_ROLEUNKNOWN = AffectedMembership_TargetMembershipRole "ROLE_UNKNOWN"

-- | This role is used when a user is forcibly removed from a room by another user. They will no longer be able to search for the room, but their history will be retained.
pattern AffectedMembership_TargetMembershipRole_ROLENONE :: AffectedMembership_TargetMembershipRole
pattern AffectedMembership_TargetMembershipRole_ROLENONE = AffectedMembership_TargetMembershipRole "ROLE_NONE"

-- | This role is used for two purposes. 1. A group is invited to a room, making it discoverable for its members. 2. A user was part of a room, but willingly left the room.
pattern AffectedMembership_TargetMembershipRole_ROLEINVITEE :: AffectedMembership_TargetMembershipRole
pattern AffectedMembership_TargetMembershipRole_ROLEINVITEE = AffectedMembership_TargetMembershipRole "ROLE_INVITEE"

-- | --- Following roles are for joined members of a roster. --- Default role for any joined user. Has basic capabilities within a room.
pattern AffectedMembership_TargetMembershipRole_ROLEMEMBER :: AffectedMembership_TargetMembershipRole
pattern AffectedMembership_TargetMembershipRole_ROLEMEMBER = AffectedMembership_TargetMembershipRole "ROLE_MEMBER"

-- | Role assigned to room creators and explicitly promoted members. Has broad powers to manage the room.
pattern AffectedMembership_TargetMembershipRole_ROLEOWNER :: AffectedMembership_TargetMembershipRole
pattern AffectedMembership_TargetMembershipRole_ROLEOWNER = AffectedMembership_TargetMembershipRole "ROLE_OWNER"

{-# COMPLETE
  AffectedMembership_TargetMembershipRole_ROLEUNKNOWN,
  AffectedMembership_TargetMembershipRole_ROLENONE,
  AffectedMembership_TargetMembershipRole_ROLEINVITEE,
  AffectedMembership_TargetMembershipRole_ROLEMEMBER,
  AffectedMembership_TargetMembershipRole_ROLEOWNER,
  AffectedMembership_TargetMembershipRole
  #-}

-- | Whether the annotation should be rendered as a preview chip. If this is missing or unspecified, fallback to should/not/render on the metadata.
newtype Annotation_ChipRenderType = Annotation_ChipRenderType {fromAnnotation_ChipRenderType :: Core.Text}
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
pattern Annotation_ChipRenderType_CHIPRENDERTYPEUNSPECIFIED :: Annotation_ChipRenderType
pattern Annotation_ChipRenderType_CHIPRENDERTYPEUNSPECIFIED = Annotation_ChipRenderType "CHIP_RENDER_TYPE_UNSPECIFIED"

-- | Clients must render the annotation as a preview chip, and if they cannot render this many Annotations, show a fallback card.
pattern Annotation_ChipRenderType_Render :: Annotation_ChipRenderType
pattern Annotation_ChipRenderType_Render = Annotation_ChipRenderType "RENDER"

-- | Client can render the annotation if it has room to render it.
pattern Annotation_ChipRenderType_RENDERIFPOSSIBLE :: Annotation_ChipRenderType
pattern Annotation_ChipRenderType_RENDERIFPOSSIBLE = Annotation_ChipRenderType "RENDER_IF_POSSIBLE"

-- | Client should not render the annotation as a preview chip.
pattern Annotation_ChipRenderType_DONOTRENDER :: Annotation_ChipRenderType
pattern Annotation_ChipRenderType_DONOTRENDER = Annotation_ChipRenderType "DO_NOT_RENDER"

{-# COMPLETE
  Annotation_ChipRenderType_CHIPRENDERTYPEUNSPECIFIED,
  Annotation_ChipRenderType_Render,
  Annotation_ChipRenderType_RENDERIFPOSSIBLE,
  Annotation_ChipRenderType_DONOTRENDER,
  Annotation_ChipRenderType
  #-}

-- | The inline render format of this annotation. go\/drive-smart-chips-chat-v2.
newtype Annotation_InlineRenderFormat = Annotation_InlineRenderFormat {fromAnnotation_InlineRenderFormat :: Core.Text}
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
pattern Annotation_InlineRenderFormat_INLINERENDERFORMATUNSPECIFIED :: Annotation_InlineRenderFormat
pattern Annotation_InlineRenderFormat_INLINERENDERFORMATUNSPECIFIED = Annotation_InlineRenderFormat "INLINE_RENDER_FORMAT_UNSPECIFIED"

-- |
pattern Annotation_InlineRenderFormat_SMARTCHIP :: Annotation_InlineRenderFormat
pattern Annotation_InlineRenderFormat_SMARTCHIP = Annotation_InlineRenderFormat "SMART_CHIP"

{-# COMPLETE
  Annotation_InlineRenderFormat_INLINERENDERFORMATUNSPECIFIED,
  Annotation_InlineRenderFormat_SMARTCHIP,
  Annotation_InlineRenderFormat
  #-}

-- | Type of the Annotation.
newtype Annotation_Type = Annotation_Type {fromAnnotation_Type :: Core.Text}
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

-- | Default value for the enum. DO NOT USE.
pattern Annotation_Type_TYPEUNSPECIFIED :: Annotation_Type
pattern Annotation_Type_TYPEUNSPECIFIED = Annotation_Type "TYPE_UNSPECIFIED"

-- | These can have overlaps, i.e. same message can have multiple of these. For example a Drive link to a PDF can have URL, DRIVE_FILE and PDF all set Links
pattern Annotation_Type_Url :: Annotation_Type
pattern Annotation_Type_Url = Annotation_Type "URL"

-- | Any drive file
pattern Annotation_Type_DRIVEFILE :: Annotation_Type
pattern Annotation_Type_DRIVEFILE = Annotation_Type "DRIVE_FILE"

-- |
pattern Annotation_Type_DRIVEDOC :: Annotation_Type
pattern Annotation_Type_DRIVEDOC = Annotation_Type "DRIVE_DOC"

-- |
pattern Annotation_Type_DRIVESHEET :: Annotation_Type
pattern Annotation_Type_DRIVESHEET = Annotation_Type "DRIVE_SHEET"

-- |
pattern Annotation_Type_DRIVESLIDE :: Annotation_Type
pattern Annotation_Type_DRIVESLIDE = Annotation_Type "DRIVE_SLIDE"

-- |
pattern Annotation_Type_DRIVEFORM :: Annotation_Type
pattern Annotation_Type_DRIVEFORM = Annotation_Type "DRIVE_FORM"

-- |
pattern Annotation_Type_USERMENTION :: Annotation_Type
pattern Annotation_Type_USERMENTION = Annotation_Type "USER_MENTION"

-- |
pattern Annotation_Type_SLASHCOMMAND :: Annotation_Type
pattern Annotation_Type_SLASHCOMMAND = Annotation_Type "SLASH_COMMAND"

-- |
pattern Annotation_Type_CONSENTEDAPPUNFURL :: Annotation_Type
pattern Annotation_Type_CONSENTEDAPPUNFURL = Annotation_Type "CONSENTED_APP_UNFURL"

-- | Any video, not just youtube, the url decides how to play
pattern Annotation_Type_Video :: Annotation_Type
pattern Annotation_Type_Video = Annotation_Type "VIDEO"

-- | UI should not be concerned with FORMAT_DATA
pattern Annotation_Type_FORMATDATA :: Annotation_Type
pattern Annotation_Type_FORMATDATA = Annotation_Type "FORMAT_DATA"

-- |
pattern Annotation_Type_Image :: Annotation_Type
pattern Annotation_Type_Image = Annotation_Type "IMAGE"

-- |
pattern Annotation_Type_Pdf :: Annotation_Type
pattern Annotation_Type_Pdf = Annotation_Type "PDF"

-- | For Thor integration
pattern Annotation_Type_VIDEOCALL :: Annotation_Type
pattern Annotation_Type_VIDEOCALL = Annotation_Type "VIDEO_CALL"

-- | Blobstore uploads
pattern Annotation_Type_UPLOADMETADATA :: Annotation_Type
pattern Annotation_Type_UPLOADMETADATA = Annotation_Type "UPLOAD_METADATA"

-- | Generic annotation for gsuite integrations
pattern Annotation_Type_GSUITEINTEGRATION :: Annotation_Type
pattern Annotation_Type_GSUITEINTEGRATION = Annotation_Type "GSUITE_INTEGRATION"

-- |
pattern Annotation_Type_CUSTOMEMOJI :: Annotation_Type
pattern Annotation_Type_CUSTOMEMOJI = Annotation_Type "CUSTOM_EMOJI"

-- | Card capability for in-stream widgets.
pattern Annotation_Type_CARDCAPABILITY :: Annotation_Type
pattern Annotation_Type_CARDCAPABILITY = Annotation_Type "CARD_CAPABILITY"

-- |
pattern Annotation_Type_DATALOSSPREVENTION :: Annotation_Type
pattern Annotation_Type_DATALOSSPREVENTION = Annotation_Type "DATA_LOSS_PREVENTION"

-- | Clients can use this to see whether they support the entire message, or show a fallback chip otherwise.
pattern Annotation_Type_REQUIREDMESSAGEFEATURESMETADATA :: Annotation_Type
pattern Annotation_Type_REQUIREDMESSAGEFEATURESMETADATA = Annotation_Type "REQUIRED_MESSAGE_FEATURES_METADATA"

-- | Annotation types for system messages. Clients should never set this.
pattern Annotation_Type_MEMBERSHIPCHANGED :: Annotation_Type
pattern Annotation_Type_MEMBERSHIPCHANGED = Annotation_Type "MEMBERSHIP_CHANGED"

-- |
pattern Annotation_Type_ROOMUPDATED :: Annotation_Type
pattern Annotation_Type_ROOMUPDATED = Annotation_Type "ROOM_UPDATED"

-- |
pattern Annotation_Type_GROUPRETENTIONSETTINGSUPDATED :: Annotation_Type
pattern Annotation_Type_GROUPRETENTIONSETTINGSUPDATED = Annotation_Type "GROUP_RETENTION_SETTINGS_UPDATED"

-- |
pattern Annotation_Type_BABELPLACEHOLDER :: Annotation_Type
pattern Annotation_Type_BABELPLACEHOLDER = Annotation_Type "BABEL_PLACEHOLDER"

-- |
pattern Annotation_Type_READRECEIPTSSETTINGSUPDATED :: Annotation_Type
pattern Annotation_Type_READRECEIPTSSETTINGSUPDATED = Annotation_Type "READ_RECEIPTS_SETTINGS_UPDATED"

-- |
pattern Annotation_Type_INCOMINGWEBHOOKCHANGED :: Annotation_Type
pattern Annotation_Type_INCOMINGWEBHOOKCHANGED = Annotation_Type "INCOMING_WEBHOOK_CHANGED"

-- |
pattern Annotation_Type_INTEGRATIONCONFIGUPDATED :: Annotation_Type
pattern Annotation_Type_INTEGRATIONCONFIGUPDATED = Annotation_Type "INTEGRATION_CONFIG_UPDATED"

-- | Message-level annotations. First message of an invite. Should not be set by clients.
pattern Annotation_Type_Invitation :: Annotation_Type
pattern Annotation_Type_Invitation = Annotation_Type "INVITATION"

{-# COMPLETE
  Annotation_Type_TYPEUNSPECIFIED,
  Annotation_Type_Url,
  Annotation_Type_DRIVEFILE,
  Annotation_Type_DRIVEDOC,
  Annotation_Type_DRIVESHEET,
  Annotation_Type_DRIVESLIDE,
  Annotation_Type_DRIVEFORM,
  Annotation_Type_USERMENTION,
  Annotation_Type_SLASHCOMMAND,
  Annotation_Type_CONSENTEDAPPUNFURL,
  Annotation_Type_Video,
  Annotation_Type_FORMATDATA,
  Annotation_Type_Image,
  Annotation_Type_Pdf,
  Annotation_Type_VIDEOCALL,
  Annotation_Type_UPLOADMETADATA,
  Annotation_Type_GSUITEINTEGRATION,
  Annotation_Type_CUSTOMEMOJI,
  Annotation_Type_CARDCAPABILITY,
  Annotation_Type_DATALOSSPREVENTION,
  Annotation_Type_REQUIREDMESSAGEFEATURESMETADATA,
  Annotation_Type_MEMBERSHIPCHANGED,
  Annotation_Type_ROOMUPDATED,
  Annotation_Type_GROUPRETENTIONSETTINGSUPDATED,
  Annotation_Type_BABELPLACEHOLDER,
  Annotation_Type_READRECEIPTSSETTINGSUPDATED,
  Annotation_Type_INCOMINGWEBHOOKCHANGED,
  Annotation_Type_INTEGRATIONCONFIGUPDATED,
  Annotation_Type_Invitation,
  Annotation_Type
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
pattern AppId_GsuiteAppType_ASSISTIVESUGGESTIONAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_ASSISTIVESUGGESTIONAPP = AppId_GsuiteAppType "ASSISTIVE_SUGGESTION_APP"

-- |
pattern AppId_GsuiteAppType_CONTACTSAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_CONTACTSAPP = AppId_GsuiteAppType "CONTACTS_APP"

-- |
pattern AppId_GsuiteAppType_ACTIVITYFEEDAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_ACTIVITYFEEDAPP = AppId_GsuiteAppType "ACTIVITY_FEED_APP"

-- |
pattern AppId_GsuiteAppType_DRIVEAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_DRIVEAPP = AppId_GsuiteAppType "DRIVE_APP"

-- |
pattern AppId_GsuiteAppType_CHATINMEETAPP :: AppId_GsuiteAppType
pattern AppId_GsuiteAppType_CHATINMEETAPP = AppId_GsuiteAppType "CHAT_IN_MEET_APP"

{-# COMPLETE
  AppId_GsuiteAppType_GSUITEAPPTYPEUNSPECIFIED,
  AppId_GsuiteAppType_TASKSAPP,
  AppId_GsuiteAppType_CALENDARAPP,
  AppId_GsuiteAppType_DOCSAPP,
  AppId_GsuiteAppType_SHEETSAPP,
  AppId_GsuiteAppType_SLIDESAPP,
  AppId_GsuiteAppType_MEETAPP,
  AppId_GsuiteAppType_ASSISTIVESUGGESTIONAPP,
  AppId_GsuiteAppType_CONTACTSAPP,
  AppId_GsuiteAppType_ACTIVITYFEEDAPP,
  AppId_GsuiteAppType_DRIVEAPP,
  AppId_GsuiteAppType_CHATINMEETAPP,
  AppId_GsuiteAppType
  #-}

-- | Describes how updater/count/to_show should be used.
newtype AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType = AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType {fromAppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType :: Core.Text}
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
pattern AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_UPDATERCOUNTDISPLAYTYPEUNSPECIFIED :: AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType
pattern AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_UPDATERCOUNTDISPLAYTYPEUNSPECIFIED = AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType "UPDATER_COUNT_DISPLAY_TYPE_UNSPECIFIED"

-- | A precise updater count is known and the value set in updater/count/to_show should be used.
pattern AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_EXACTCOUNT :: AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType
pattern AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_EXACTCOUNT = AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType "EXACT_COUNT"

-- | A precise updater count could not be calculated, but there is at least one. Any value set in updater/count/to_show should NOT be used.
pattern AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_NONZEROCOUNT :: AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType
pattern AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_NONZEROCOUNT = AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType "NONZERO_COUNT"

{-# COMPLETE
  AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_UPDATERCOUNTDISPLAYTYPEUNSPECIFIED,
  AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_EXACTCOUNT,
  AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType_NONZEROCOUNT,
  AppsDynamiteSharedActivityFeedAnnotationDataUserInfo_UpdaterCountDisplayType
  #-}

-- | Whether the thumbs feedback is provided
newtype AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback = AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback {fromAppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback :: Core.Text}
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

-- | Unspecified thumbs state
pattern AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_THUMBSFEEDBACKUNSPECIFIED :: AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback
pattern AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_THUMBSFEEDBACKUNSPECIFIED = AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback "THUMBS_FEEDBACK_UNSPECIFIED"

-- | Thumbs are not selected
pattern AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_NONESELECTED :: AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback
pattern AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_NONESELECTED = AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback "NONE_SELECTED"

-- | Thumbs up selected
pattern AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_UP :: AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback
pattern AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_UP = AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback "UP"

-- | Thumbs down selected
pattern AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_Down :: AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback
pattern AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_Down = AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback "DOWN"

{-# COMPLETE
  AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_THUMBSFEEDBACKUNSPECIFIED,
  AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_NONESELECTED,
  AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_UP,
  AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback_Down,
  AppsDynamiteSharedAssistantFeedbackContext_ThumbsFeedback
  #-}

-- | What type of chip to display
newtype AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType {fromAppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType :: Core.Text}
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

-- | Unspecified type of feedback chip
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_FEEDBACKCHIPTYPEUNSPECIFIED :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_FEEDBACKCHIPTYPEUNSPECIFIED = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType "FEEDBACK_CHIP_TYPE_UNSPECIFIED"

-- | Bad\/noisy triggering
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_WRONGTRIGGER :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_WRONGTRIGGER = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType "WRONG_TRIGGER"

-- | Incorrect files were presented
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_WRONGFILE :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_WRONGFILE = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType "WRONG_FILE"

-- | The Assistant card triggered appropriately
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_CORRECTTRIGGER :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_CORRECTTRIGGER = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType "CORRECT_TRIGGER"

-- | The correct files were presented
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_CORRECTFILE :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_CORRECTFILE = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType "CORRECT_FILE"

-- | The feature is disruptive
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_Disruptive :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_Disruptive = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType "DISRUPTIVE"

-- | Other reason
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_Other :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_Other = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType "OTHER"

{-# COMPLETE
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_FEEDBACKCHIPTYPEUNSPECIFIED,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_WRONGTRIGGER,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_WRONGFILE,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_CORRECTTRIGGER,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_CORRECTFILE,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_Disruptive,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType_Other,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_FeedbackChipType
  #-}

-- | Whether the chip has been selected
newtype AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State {fromAppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State :: Core.Text}
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

-- | Unspecified selection state
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_FEEDBACKCHIPSTATEUNSPECIFIED :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_FEEDBACKCHIPSTATEUNSPECIFIED = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State "FEEDBACK_CHIP_STATE_UNSPECIFIED"

-- | Chip is selected
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_Selected :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_Selected = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State "SELECTED"

-- | Chip is not selected
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_Unselected :: AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State
pattern AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_Unselected = AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State "UNSELECTED"

{-# COMPLETE
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_FEEDBACKCHIPSTATEUNSPECIFIED,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_Selected,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State_Unselected,
  AppsDynamiteSharedAssistantFeedbackContextFeedbackChip_State
  #-}

-- | The results of the Data Loss Prevention (DLP) scan of the attachment. DEPRECATED: use dlp/scan/summary instead.
newtype AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome {fromAppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome :: Core.Text}
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
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANUNKNOWNOUTCOME :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANUNKNOWNOUTCOME = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_UNKNOWN_OUTCOME"

-- | This means no violation is detected on the given message\/attachment.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDNOVIOLATION :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDNOVIOLATION = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SUCCEEDED_NO_VIOLATION"

-- | Violation is detected. The message\/attachment will be blocked (or deleted if this happens in failure recovery), the user will be warned, and the violation will be logged to BIP.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDBLOCK :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDBLOCK = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SUCCEEDED_BLOCK"

-- | Violation is detected. The user will be warned, and the violation will be logged to BIP.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWARN :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWARN = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SUCCEEDED_WARN"

-- | Violation is detected and will be logged to BIP (no user-facing action performed).
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDAUDITONLY :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDAUDITONLY = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SUCCEEDED_AUDIT_ONLY"

-- | Rule fetch and evaluation were attempted but an exception occurred.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREEXCEPTION :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREEXCEPTION = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_FAILURE_EXCEPTION"

-- | Rule fetch was attempted but failed, so rule evaluation could not be performed.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILURERULEFETCHFAILED :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILURERULEFETCHFAILED = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_FAILURE_RULE_FETCH_FAILED"

-- | Rule fetch and evaluation were attempted but the scanning timed out.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILURETIMEOUT :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILURETIMEOUT = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_FAILURE_TIMEOUT"

-- | Rule fetch completed and evaluation were attempted, but all of the rules failed to be evaluated.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREALLRULESFAILED :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREALLRULESFAILED = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_FAILURE_ALL_RULES_FAILED"

-- | An IllegalStateException is thrown when executing DLP on attachments. This could happen if the space row is missing.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREILLEGALSTATEFORATTACHMENTS :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREILLEGALSTATEFORATTACHMENTS = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_FAILURE_ILLEGAL_STATE_FOR_ATTACHMENTS"

-- | Rule fetch and evaluation is skipped because DLP is not enabled for the user.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDEXPERIMENTDISABLED :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDEXPERIMENTDISABLED = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SKIPPED_EXPERIMENT_DISABLED"

-- | Rule fetch and evaluation are skipped because the user sending message is consumer.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDCONSUMER :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDCONSUMER = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SKIPPED_CONSUMER"

-- | Rule fetch and evaluation are skipped because the user sending message is a non-human user (i.e. a bot).
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDNONHUMANUSER :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDNONHUMANUSER = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SKIPPED_NON_HUMAN_USER"

-- | Rule fetch and evaluation are skipped because there is no message to scan. Deprecated: this should not happen since there must be message or attachment for DLP scan.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDNOMESSAGE :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDNOMESSAGE = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SKIPPED_NO_MESSAGE"

-- | Rule fetch and evaluation are skipped because the user has acknowledged the warning on the message that triggered the Warn violation and sent the message anyway.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDUSERACKNOWLEDGEDWARNING :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDUSERACKNOWLEDGEDWARNING = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SKIPPED_USER_ACKNOWLEDGED_WARNING"

-- | Scanning was skipped because the message originated from Interop or Babel.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDMESSAGEFROMUNSUPPORTEDORIGIN :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDMESSAGEFROMUNSUPPORTEDORIGIN = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SKIPPED_MESSAGE_FROM_UNSUPPORTED_ORIGIN"

-- | Scanning was skipped because the message was sent while the space is in migration mode. See go\/migration-mode for details.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDMESSAGESENTDURINGSPACEMIGRATION :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDMESSAGESENTDURINGSPACEMIGRATION = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SKIPPED_MESSAGE_SENT_DURING_SPACE_MIGRATION"

-- | Rule fetch happened, but rule evaluation is skipped because no rules were found.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNORULESFOUND :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNORULESFOUND = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_NO_RULES_FOUND"

-- | Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given action params.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORACTIONPARAMS :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORACTIONPARAMS = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_ACTION_PARAMS"

-- | Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given trigger.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORTRIGGER :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORTRIGGER = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_TRIGGER"

-- | Rule fetch happened, but rule evaluation is skipped because Changeling returned permanent failure while converting the attachment to text.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGPERMANENTERROR :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGPERMANENTERROR = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_PERMANENT_ERROR"

-- | Rule fetch happened, but rule evaluation is skipped because Changeling returned an empty response while converting the attachment to text.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGEMPTYRESPONSE :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGEMPTYRESPONSE = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_EMPTY_RESPONSE"

-- | Rule fetch happened, but rule evaluation is skipped because file type is unsupported.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDUNSUPPORTEDFILETYPE :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDUNSUPPORTEDFILETYPE = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_UNSUPPORTED_FILE_TYPE"

-- | Rules were fetched but some evaluations failed. No violation was found in the rules that were successfully evaluated.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESNOVIOLATION :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESNOVIOLATION = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SUCCEEDED_WITH_FAILURES_NO_VIOLATION"

-- | Rules were fetched but some evaluations failed. A blocking violation was found in the rules that were successfully evaluated. The message\/attachment will be blocked, the user will be notified, and the violation will be logged to BIP. A blocking violation takes precedence over all other violation types.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESBLOCK :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESBLOCK = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SUCCEEDED_WITH_FAILURES_BLOCK"

-- | Rules were fetched but some evaluations failed. A warn violation was found in the rules that were successfully evaluated. The user will be warned, and the violation will be logged to BIP.
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESWARN :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESWARN = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SUCCEEDED_WITH_FAILURES_WARN"

-- | Rules were fetched but some evaluations failed. An audit-only violation was found in the rules that were successfully evaluated. The violation will be logged to BIP (no user-facing action performed).
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESAUDITONLY :: AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
pattern AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESAUDITONLY = AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome "SCAN_SUCCEEDED_WITH_FAILURES_AUDIT_ONLY"

{-# COMPLETE
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANUNKNOWNOUTCOME,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDNOVIOLATION,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDBLOCK,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWARN,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDAUDITONLY,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREEXCEPTION,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILURERULEFETCHFAILED,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILURETIMEOUT,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREALLRULESFAILED,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANFAILUREILLEGALSTATEFORATTACHMENTS,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDEXPERIMENTDISABLED,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDCONSUMER,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDNONHUMANUSER,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDNOMESSAGE,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDUSERACKNOWLEDGEDWARNING,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDMESSAGEFROMUNSUPPORTEDORIGIN,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSKIPPEDMESSAGESENTDURINGSPACEMIGRATION,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNORULESFOUND,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORACTIONPARAMS,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORTRIGGER,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGPERMANENTERROR,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGEMPTYRESPONSE,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANRULEEVALUATIONSKIPPEDUNSUPPORTEDFILETYPE,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESNOVIOLATION,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESBLOCK,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESWARN,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome_SCANSUCCEEDEDWITHFAILURESAUDITONLY,
  AppsDynamiteSharedBackendUploadMetadata_DlpScanOutcome
  #-}

-- | Result for a virus scan.
newtype AppsDynamiteSharedBackendUploadMetadata_VirusScanResult = AppsDynamiteSharedBackendUploadMetadata_VirusScanResult {fromAppsDynamiteSharedBackendUploadMetadata_VirusScanResult :: Core.Text}
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
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_UNKNOWNVIRUSSCANRESULT :: AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_UNKNOWNVIRUSSCANRESULT = AppsDynamiteSharedBackendUploadMetadata_VirusScanResult "UNKNOWN_VIRUS_SCAN_RESULT"

-- |
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Clean :: AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Clean = AppsDynamiteSharedBackendUploadMetadata_VirusScanResult "CLEAN"

-- |
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Infected :: AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Infected = AppsDynamiteSharedBackendUploadMetadata_VirusScanResult "INFECTED"

-- |
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Error' :: AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Error' = AppsDynamiteSharedBackendUploadMetadata_VirusScanResult "ERROR"

-- | The document violates Google\'s policy for executables and archives.
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_POLICYVIOLATION :: AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
pattern AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_POLICYVIOLATION = AppsDynamiteSharedBackendUploadMetadata_VirusScanResult "POLICY_VIOLATION"

{-# COMPLETE
  AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_UNKNOWNVIRUSSCANRESULT,
  AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Clean,
  AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Infected,
  AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_Error',
  AppsDynamiteSharedBackendUploadMetadata_VirusScanResult_POLICYVIOLATION,
  AppsDynamiteSharedBackendUploadMetadata_VirusScanResult
  #-}

-- | Required. Indicates the call status for the space. Used to determine the chip\'s state.
newtype AppsDynamiteSharedCallAnnotationData_CallStatus = AppsDynamiteSharedCallAnnotationData_CallStatus {fromAppsDynamiteSharedCallAnnotationData_CallStatus :: Core.Text}
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

-- | Default value for the enum. DO NOT USE.
pattern AppsDynamiteSharedCallAnnotationData_CallStatus_CALLSTATUSUNSPECIFIED :: AppsDynamiteSharedCallAnnotationData_CallStatus
pattern AppsDynamiteSharedCallAnnotationData_CallStatus_CALLSTATUSUNSPECIFIED = AppsDynamiteSharedCallAnnotationData_CallStatus "CALL_STATUS_UNSPECIFIED"

-- | Indicates that the call has started.
pattern AppsDynamiteSharedCallAnnotationData_CallStatus_CALLSTARTED :: AppsDynamiteSharedCallAnnotationData_CallStatus
pattern AppsDynamiteSharedCallAnnotationData_CallStatus_CALLSTARTED = AppsDynamiteSharedCallAnnotationData_CallStatus "CALL_STARTED"

-- | Indicates that the call is missed.
pattern AppsDynamiteSharedCallAnnotationData_CallStatus_CALLMISSED :: AppsDynamiteSharedCallAnnotationData_CallStatus
pattern AppsDynamiteSharedCallAnnotationData_CallStatus_CALLMISSED = AppsDynamiteSharedCallAnnotationData_CallStatus "CALL_MISSED"

-- | Indicates that the call has ended.
pattern AppsDynamiteSharedCallAnnotationData_CallStatus_CALLENDED :: AppsDynamiteSharedCallAnnotationData_CallStatus
pattern AppsDynamiteSharedCallAnnotationData_CallStatus_CALLENDED = AppsDynamiteSharedCallAnnotationData_CallStatus "CALL_ENDED"

{-# COMPLETE
  AppsDynamiteSharedCallAnnotationData_CallStatus_CALLSTATUSUNSPECIFIED,
  AppsDynamiteSharedCallAnnotationData_CallStatus_CALLSTARTED,
  AppsDynamiteSharedCallAnnotationData_CallStatus_CALLMISSED,
  AppsDynamiteSharedCallAnnotationData_CallStatus_CALLENDED,
  AppsDynamiteSharedCallAnnotationData_CallStatus
  #-}

-- | Nudge type of the nudge feed item.
newtype AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType = AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType {fromAppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType :: Core.Text}
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
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_Undefined :: AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_Undefined = AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType "UNDEFINED"

-- | The message receiver is nudged since the message may require a reply.
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_Reply :: AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_Reply = AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType "REPLY"

-- | The message creator is nudged since the message may require a follow-up.
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_FOLLOWUP :: AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_FOLLOWUP = AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType "FOLLOW_UP"

{-# COMPLETE
  AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_Undefined,
  AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_Reply,
  AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType_FOLLOWUP,
  AppsDynamiteSharedChatItemActivityInfoFeedItemNudge_NudgeType
  #-}

-- | Reply type of the thread reply feed item. The field is not persisted in storage. It\'s populated when constructing Activity Feed payload.
newtype AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType = AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType {fromAppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType :: Core.Text}
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
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Unspecified :: AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Unspecified = AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType "UNSPECIFIED"

-- | The thread reply feed item is for the root message poster.
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Root :: AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Root = AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType "ROOT"

-- | The thread reply feed item is for a thread follower who\'s not the root message poster.
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Follower :: AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Follower = AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType "FOLLOWER"

{-# COMPLETE
  AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Unspecified,
  AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Root,
  AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType_Follower,
  AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply_ReplyType
  #-}

-- | User mention type
newtype AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type = AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type {fromAppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type :: Core.Text}
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

-- | Mention type not specified.
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_TYPEUNSPECIFIED :: AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_TYPEUNSPECIFIED = AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type "TYPE_UNSPECIFIED"

-- | Mentioned directly by name.
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_Direct :: AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_Direct = AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type "DIRECT"

-- | Mentioned by \@all.
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_All :: AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type
pattern AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_All = AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type "ALL"

{-# COMPLETE
  AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_TYPEUNSPECIFIED,
  AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_Direct,
  AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type_All,
  AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention_Type
  #-}

-- | This is needed to determine what type of group the source message came from to support click-to-source.
newtype AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType {fromAppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType :: Core.Text}
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

-- | LINT.IfChange
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ATTRIBUTECHECKERGROUPTYPEUNSPECIFIED :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ATTRIBUTECHECKERGROUPTYPEUNSPECIFIED = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "ATTRIBUTE_CHECKER_GROUP_TYPE_UNSPECIFIED"

-- | A 1:1 DM that has two human users. Deprecated. Use IMMUTABLE/MEMBERSHIP/HUMAN_DM instead.
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ONETOONEHUMANDM :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ONETOONEHUMANDM = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "ONE_TO_ONE_HUMAN_DM"

-- | A 1:1 DM between a human user and a bot.
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ONETOONEBOTDM :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ONETOONEBOTDM = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "ONE_TO_ONE_BOT_DM"

-- | A group DM that has multiple human users with immutable group membership. Deprecated. Use IMMUTABLE/MEMBERSHIP/HUMAN_DM instead.
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_IMMUTABLEMEMBERSHIPGROUPDM :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_IMMUTABLEMEMBERSHIPGROUPDM = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "IMMUTABLE_MEMBERSHIP_GROUP_DM"

-- | A flat room that contains a single thread.
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_FLATROOM :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_FLATROOM = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "FLAT_ROOM"

-- | A threaded room. Topics in this room are threaded, and users can reply to any topic.
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_THREADEDROOM :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_THREADEDROOM = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "THREADED_ROOM"

-- | A DM with immutable group membership. It can be a 1:1 DM or a group DM with multiple human users.
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_IMMUTABLEMEMBERSHIPHUMANDM :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_IMMUTABLEMEMBERSHIPHUMANDM = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "IMMUTABLE_MEMBERSHIP_HUMAN_DM"

-- | A post room. Topics in this room are organized in a post\/reply style. See the design doc for more details: go\/PostRoomsInDynamite. Deprecated. Post rooms are no longer supported.
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_POSTROOM :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_POSTROOM = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "POST_ROOM"

-- | Represents an Activity Feed space. These groups are modeled like flat rooms and contain items for users to catch up on important things. Each user should only have one group of this type. See go\/activity-feed. Deprecated: The go\/activity-feed project is cancelled and this should no longer be used. LINT.ThenChange(\/\/depot\/google3\/logs\/proto\/apps/dynamite\/dynamite/visual/element/entry.proto:LoggingGroupType,\/\/depot\/google3\/java\/com\/google\/apps\/dynamite\/v1\/web\/ui\/group\/groups.js:LoggingGroupType)
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ACTIVITYFEED :: AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
pattern AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ACTIVITYFEED = AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType "ACTIVITY_FEED"

{-# COMPLETE
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ATTRIBUTECHECKERGROUPTYPEUNSPECIFIED,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ONETOONEHUMANDM,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ONETOONEBOTDM,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_IMMUTABLEMEMBERSHIPGROUPDM,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_FLATROOM,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_THREADEDROOM,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_IMMUTABLEMEMBERSHIPHUMANDM,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_POSTROOM,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType_ACTIVITYFEED,
  AppsDynamiteSharedChatItemGroupInfo_AttributeCheckerGroupType
  #-}

-- | Required. Google-defined system violation, covering the most common violations.
newtype AppsDynamiteSharedContentReportType_SystemViolation = AppsDynamiteSharedContentReportType_SystemViolation {fromAppsDynamiteSharedContentReportType_SystemViolation :: Core.Text}
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

-- | Default value if unset. Do not use directly. This value should not appear as a selectable violation during content reporting.
pattern AppsDynamiteSharedContentReportType_SystemViolation_VIOLATIONUNSPECIFIED :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_VIOLATIONUNSPECIFIED = AppsDynamiteSharedContentReportType_SystemViolation "VIOLATION_UNSPECIFIED"

-- | \"Harassment, offensive, or rude behavior\"
pattern AppsDynamiteSharedContentReportType_SystemViolation_Harassment :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_Harassment = AppsDynamiteSharedContentReportType_SystemViolation "HARASSMENT"

-- | \"Discrimination or harmful stereotypes against anyone, including protected groups\"
pattern AppsDynamiteSharedContentReportType_SystemViolation_Discrimination :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_Discrimination = AppsDynamiteSharedContentReportType_SystemViolation "DISCRIMINATION"

-- | \"Explicit content that\'s graphic, violent, or otherwise inappropriate\"
pattern AppsDynamiteSharedContentReportType_SystemViolation_EXPLICITCONTENT :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_EXPLICITCONTENT = AppsDynamiteSharedContentReportType_SystemViolation "EXPLICIT_CONTENT"

-- | \"Spam\"
pattern AppsDynamiteSharedContentReportType_SystemViolation_Spam :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_Spam = AppsDynamiteSharedContentReportType_SystemViolation "SPAM"

-- | \"Confidential information\"
pattern AppsDynamiteSharedContentReportType_SystemViolation_CONFIDENTIALINFORMATION :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_CONFIDENTIALINFORMATION = AppsDynamiteSharedContentReportType_SystemViolation "CONFIDENTIAL_INFORMATION"

-- | \"Sensitive information\"
pattern AppsDynamiteSharedContentReportType_SystemViolation_SENSITIVEINFORMATION :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_SENSITIVEINFORMATION = AppsDynamiteSharedContentReportType_SystemViolation "SENSITIVE_INFORMATION"

-- | Phishing, impersonation\/misrepresentation, or deceiving other users into sharing information under false pretenses.
pattern AppsDynamiteSharedContentReportType_SystemViolation_Fraud :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_Fraud = AppsDynamiteSharedContentReportType_SystemViolation "FRAUD"

-- | Malware, viruses, Trojan horses, corrupted files, destructive code, etc.
pattern AppsDynamiteSharedContentReportType_SystemViolation_Malware :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_Malware = AppsDynamiteSharedContentReportType_SystemViolation "MALWARE"

-- | Promoting, organizing, or engaging in illegal activities.
pattern AppsDynamiteSharedContentReportType_SystemViolation_ILLEGALACTIVITIES :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_ILLEGALACTIVITIES = AppsDynamiteSharedContentReportType_SystemViolation "ILLEGAL_ACTIVITIES"

-- | \"Something else\"
pattern AppsDynamiteSharedContentReportType_SystemViolation_Other :: AppsDynamiteSharedContentReportType_SystemViolation
pattern AppsDynamiteSharedContentReportType_SystemViolation_Other = AppsDynamiteSharedContentReportType_SystemViolation "OTHER"

{-# COMPLETE
  AppsDynamiteSharedContentReportType_SystemViolation_VIOLATIONUNSPECIFIED,
  AppsDynamiteSharedContentReportType_SystemViolation_Harassment,
  AppsDynamiteSharedContentReportType_SystemViolation_Discrimination,
  AppsDynamiteSharedContentReportType_SystemViolation_EXPLICITCONTENT,
  AppsDynamiteSharedContentReportType_SystemViolation_Spam,
  AppsDynamiteSharedContentReportType_SystemViolation_CONFIDENTIALINFORMATION,
  AppsDynamiteSharedContentReportType_SystemViolation_SENSITIVEINFORMATION,
  AppsDynamiteSharedContentReportType_SystemViolation_Fraud,
  AppsDynamiteSharedContentReportType_SystemViolation_Malware,
  AppsDynamiteSharedContentReportType_SystemViolation_ILLEGALACTIVITIES,
  AppsDynamiteSharedContentReportType_SystemViolation_Other,
  AppsDynamiteSharedContentReportType_SystemViolation
  #-}

-- | Snapshot of the current state of the emoji, which may differ from the source-of-truth in the CustomEmojis table. This field should /never/ be persisted to Spanner.
newtype AppsDynamiteSharedCustomEmoji_State = AppsDynamiteSharedCustomEmoji_State {fromAppsDynamiteSharedCustomEmoji_State :: Core.Text}
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
pattern AppsDynamiteSharedCustomEmoji_State_EMOJISTATEUNSPECIFIED :: AppsDynamiteSharedCustomEmoji_State
pattern AppsDynamiteSharedCustomEmoji_State_EMOJISTATEUNSPECIFIED = AppsDynamiteSharedCustomEmoji_State "EMOJI_STATE_UNSPECIFIED"

-- | Emoji is visible and available to be used, subject to access control requirements.
pattern AppsDynamiteSharedCustomEmoji_State_EMOJIENABLED :: AppsDynamiteSharedCustomEmoji_State
pattern AppsDynamiteSharedCustomEmoji_State_EMOJIENABLED = AppsDynamiteSharedCustomEmoji_State "EMOJI_ENABLED"

-- | Emoji can no longer be used (e.g. due to a shortcode conflict), but is not removed from existing embeddings.
pattern AppsDynamiteSharedCustomEmoji_State_EMOJISYSTEMDISABLED :: AppsDynamiteSharedCustomEmoji_State
pattern AppsDynamiteSharedCustomEmoji_State_EMOJISYSTEMDISABLED = AppsDynamiteSharedCustomEmoji_State "EMOJI_SYSTEM_DISABLED"

-- | Emoji is hidden from pickers, so new usages are not allowed, but is not removed from existing embeddings.
pattern AppsDynamiteSharedCustomEmoji_State_EMOJIHIDDEN :: AppsDynamiteSharedCustomEmoji_State
pattern AppsDynamiteSharedCustomEmoji_State_EMOJIHIDDEN = AppsDynamiteSharedCustomEmoji_State "EMOJI_HIDDEN"

-- | Emoji is removed everywhere and is not available to end-users.
pattern AppsDynamiteSharedCustomEmoji_State_EMOJIDELETED :: AppsDynamiteSharedCustomEmoji_State
pattern AppsDynamiteSharedCustomEmoji_State_EMOJIDELETED = AppsDynamiteSharedCustomEmoji_State "EMOJI_DELETED"

{-# COMPLETE
  AppsDynamiteSharedCustomEmoji_State_EMOJISTATEUNSPECIFIED,
  AppsDynamiteSharedCustomEmoji_State_EMOJIENABLED,
  AppsDynamiteSharedCustomEmoji_State_EMOJISYSTEMDISABLED,
  AppsDynamiteSharedCustomEmoji_State_EMOJIHIDDEN,
  AppsDynamiteSharedCustomEmoji_State_EMOJIDELETED,
  AppsDynamiteSharedCustomEmoji_State
  #-}

-- | [required] Describes the DLP status of message send and attachment upload events.
newtype AppsDynamiteSharedDlpMetricsMetadata_DlpStatus = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus {fromAppsDynamiteSharedDlpMetricsMetadata_DlpStatus :: Core.Text}
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
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPSTATUSUNKNOWN :: AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPSTATUSUNKNOWN = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus "DLP_STATUS_UNKNOWN"

-- | Rule fetch and evaluation are skipped because DLP experiment is not enabled.
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPDISABLED :: AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPDISABLED = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus "DLP_DISABLED"

-- | Rule fetch and evaluation are skipped because there is no rule to be fetched (e.g. message is sent from a consumer, or there is no message.)
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDNORULEFETCH :: AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDNORULEFETCH = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus "DLP_ENABLED_NO_RULE_FETCH"

-- | Rule fetch happened, but rule evalution is skipped because the fetch returned no rules.
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDNORULES :: AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDNORULES = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus "DLP_ENABLED_RULES_FETCHED_NO_RULES"

-- | Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable.
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDNOAPPLICABLERULES :: AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDNOAPPLICABLERULES = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus "DLP_ENABLED_RULES_FETCHED_NO_APPLICABLE_RULES"

-- | Rule fetch and evaluation were performed and completed successfully.
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDANDEVALUATED :: AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDANDEVALUATED = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus "DLP_ENABLED_RULES_FETCHED_AND_EVALUATED"

-- | DLP scan was attempted but timed out.
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDSCANTIMEOUT :: AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDSCANTIMEOUT = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus "DLP_ENABLED_SCAN_TIMEOUT"

-- | Generic DLP failure. This case covers any other errors\/exceptions in the Chat backend that caused the DLP scan to fail.
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDSCANFAILED :: AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
pattern AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDSCANFAILED = AppsDynamiteSharedDlpMetricsMetadata_DlpStatus "DLP_ENABLED_SCAN_FAILED"

{-# COMPLETE
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPSTATUSUNKNOWN,
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPDISABLED,
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDNORULEFETCH,
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDNORULES,
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDNOAPPLICABLERULES,
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDRULESFETCHEDANDEVALUATED,
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDSCANTIMEOUT,
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus_DLPENABLEDSCANFAILED,
  AppsDynamiteSharedDlpMetricsMetadata_DlpStatus
  #-}

newtype AppsDynamiteSharedGroupVisibility_State = AppsDynamiteSharedGroupVisibility_State {fromAppsDynamiteSharedGroupVisibility_State :: Core.Text}
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

-- | Do not use.
pattern AppsDynamiteSharedGroupVisibility_State_Unknown :: AppsDynamiteSharedGroupVisibility_State
pattern AppsDynamiteSharedGroupVisibility_State_Unknown = AppsDynamiteSharedGroupVisibility_State "UNKNOWN"

-- | Explicitly invited users may join the room.
pattern AppsDynamiteSharedGroupVisibility_State_Private :: AppsDynamiteSharedGroupVisibility_State
pattern AppsDynamiteSharedGroupVisibility_State_Private = AppsDynamiteSharedGroupVisibility_State "PRIVATE"

-- | Anyone in the domain may join the room.
pattern AppsDynamiteSharedGroupVisibility_State_Public :: AppsDynamiteSharedGroupVisibility_State
pattern AppsDynamiteSharedGroupVisibility_State_Public = AppsDynamiteSharedGroupVisibility_State "PUBLIC"

{-# COMPLETE
  AppsDynamiteSharedGroupVisibility_State_Unknown,
  AppsDynamiteSharedGroupVisibility_State_Private,
  AppsDynamiteSharedGroupVisibility_State_Public,
  AppsDynamiteSharedGroupVisibility_State
  #-}

-- | Type of action performed on the document.
newtype AppsDynamiteSharedJustification_ActionType = AppsDynamiteSharedJustification_ActionType {fromAppsDynamiteSharedJustification_ActionType :: Core.Text}
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

-- | Unspecified action.
pattern AppsDynamiteSharedJustification_ActionType_ACTIONTYPEUNSPECIFIED :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_ACTIONTYPEUNSPECIFIED = AppsDynamiteSharedJustification_ActionType "ACTION_TYPE_UNSPECIFIED"

-- | Commented on document.
pattern AppsDynamiteSharedJustification_ActionType_Commented :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_Commented = AppsDynamiteSharedJustification_ActionType "COMMENTED"

-- | Created document.
pattern AppsDynamiteSharedJustification_ActionType_Created :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_Created = AppsDynamiteSharedJustification_ActionType "CREATED"

-- | Edited document.
pattern AppsDynamiteSharedJustification_ActionType_Edited :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_Edited = AppsDynamiteSharedJustification_ActionType "EDITED"

-- | Presented document.
pattern AppsDynamiteSharedJustification_ActionType_Presented :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_Presented = AppsDynamiteSharedJustification_ActionType "PRESENTED"

-- | Shared document.
pattern AppsDynamiteSharedJustification_ActionType_Shared :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_Shared = AppsDynamiteSharedJustification_ActionType "SHARED"

-- | Viewed document.
pattern AppsDynamiteSharedJustification_ActionType_Viewed :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_Viewed = AppsDynamiteSharedJustification_ActionType "VIEWED"

-- | Resolved comment on document.
pattern AppsDynamiteSharedJustification_ActionType_COMMENTRESOLVED :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_COMMENTRESOLVED = AppsDynamiteSharedJustification_ActionType "COMMENT_RESOLVED"

-- | Sent document over chat\/email.
pattern AppsDynamiteSharedJustification_ActionType_Sent :: AppsDynamiteSharedJustification_ActionType
pattern AppsDynamiteSharedJustification_ActionType_Sent = AppsDynamiteSharedJustification_ActionType "SENT"

{-# COMPLETE
  AppsDynamiteSharedJustification_ActionType_ACTIONTYPEUNSPECIFIED,
  AppsDynamiteSharedJustification_ActionType_Commented,
  AppsDynamiteSharedJustification_ActionType_Created,
  AppsDynamiteSharedJustification_ActionType_Edited,
  AppsDynamiteSharedJustification_ActionType_Presented,
  AppsDynamiteSharedJustification_ActionType_Shared,
  AppsDynamiteSharedJustification_ActionType_Viewed,
  AppsDynamiteSharedJustification_ActionType_COMMENTRESOLVED,
  AppsDynamiteSharedJustification_ActionType_Sent,
  AppsDynamiteSharedJustification_ActionType
  #-}

-- | The type of the source chat message.
newtype AppsDynamiteSharedMessageInfo_MessageType = AppsDynamiteSharedMessageInfo_MessageType {fromAppsDynamiteSharedMessageInfo_MessageType :: Core.Text}
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

-- | Default value where type is not specified.
pattern AppsDynamiteSharedMessageInfo_MessageType_MESSAGETYPEUNSPECIFIED :: AppsDynamiteSharedMessageInfo_MessageType
pattern AppsDynamiteSharedMessageInfo_MessageType_MESSAGETYPEUNSPECIFIED = AppsDynamiteSharedMessageInfo_MessageType "MESSAGE_TYPE_UNSPECIFIED"

-- | The source chat message is a threaded reply to another message.
pattern AppsDynamiteSharedMessageInfo_MessageType_INLINEREPLY :: AppsDynamiteSharedMessageInfo_MessageType
pattern AppsDynamiteSharedMessageInfo_MessageType_INLINEREPLY = AppsDynamiteSharedMessageInfo_MessageType "INLINE_REPLY"

{-# COMPLETE
  AppsDynamiteSharedMessageInfo_MessageType_MESSAGETYPEUNSPECIFIED,
  AppsDynamiteSharedMessageInfo_MessageType_INLINEREPLY,
  AppsDynamiteSharedMessageInfo_MessageType
  #-}

-- | An enum indicating which 1P application\'s payload this is. This field is required to add 1P payload.
newtype AppsDynamiteSharedMessageIntegrationPayload_Type = AppsDynamiteSharedMessageIntegrationPayload_Type {fromAppsDynamiteSharedMessageIntegrationPayload_Type :: Core.Text}
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
pattern AppsDynamiteSharedMessageIntegrationPayload_Type_PAYLOADTYPEUNSPECIFIED :: AppsDynamiteSharedMessageIntegrationPayload_Type
pattern AppsDynamiteSharedMessageIntegrationPayload_Type_PAYLOADTYPEUNSPECIFIED = AppsDynamiteSharedMessageIntegrationPayload_Type "PAYLOAD_TYPE_UNSPECIFIED"

-- |
pattern AppsDynamiteSharedMessageIntegrationPayload_Type_Tasks :: AppsDynamiteSharedMessageIntegrationPayload_Type
pattern AppsDynamiteSharedMessageIntegrationPayload_Type_Tasks = AppsDynamiteSharedMessageIntegrationPayload_Type "TASKS"

{-# COMPLETE
  AppsDynamiteSharedMessageIntegrationPayload_Type_PAYLOADTYPEUNSPECIFIED,
  AppsDynamiteSharedMessageIntegrationPayload_Type_Tasks,
  AppsDynamiteSharedMessageIntegrationPayload_Type
  #-}

-- | The retention state.
newtype AppsDynamiteSharedRetentionSettings_State = AppsDynamiteSharedRetentionSettings_State {fromAppsDynamiteSharedRetentionSettings_State :: Core.Text}
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
pattern AppsDynamiteSharedRetentionSettings_State_UNKNOWNRETENTIONSTATE :: AppsDynamiteSharedRetentionSettings_State
pattern AppsDynamiteSharedRetentionSettings_State_UNKNOWNRETENTIONSTATE = AppsDynamiteSharedRetentionSettings_State "UNKNOWN_RETENTION_STATE"

-- | The message\/topic should be kept permanently.
pattern AppsDynamiteSharedRetentionSettings_State_Permanent :: AppsDynamiteSharedRetentionSettings_State
pattern AppsDynamiteSharedRetentionSettings_State_Permanent = AppsDynamiteSharedRetentionSettings_State "PERMANENT"

-- | The message\/topic should be kept with a 24-hour TTL.
pattern AppsDynamiteSharedRetentionSettings_State_EPHEMERALONEDAY :: AppsDynamiteSharedRetentionSettings_State
pattern AppsDynamiteSharedRetentionSettings_State_EPHEMERALONEDAY = AppsDynamiteSharedRetentionSettings_State "EPHEMERAL_ONE_DAY"

{-# COMPLETE
  AppsDynamiteSharedRetentionSettings_State_UNKNOWNRETENTIONSTATE,
  AppsDynamiteSharedRetentionSettings_State_Permanent,
  AppsDynamiteSharedRetentionSettings_State_EPHEMERALONEDAY,
  AppsDynamiteSharedRetentionSettings_State
  #-}

newtype AppsDynamiteSharedSegmentedMembershipCount_MemberType = AppsDynamiteSharedSegmentedMembershipCount_MemberType {fromAppsDynamiteSharedSegmentedMembershipCount_MemberType :: Core.Text}
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

-- | default value
pattern AppsDynamiteSharedSegmentedMembershipCount_MemberType_MEMBERTYPEUNSPECIFIED :: AppsDynamiteSharedSegmentedMembershipCount_MemberType
pattern AppsDynamiteSharedSegmentedMembershipCount_MemberType_MEMBERTYPEUNSPECIFIED = AppsDynamiteSharedSegmentedMembershipCount_MemberType "MEMBER_TYPE_UNSPECIFIED"

-- | member is a human user
pattern AppsDynamiteSharedSegmentedMembershipCount_MemberType_HUMANUSER :: AppsDynamiteSharedSegmentedMembershipCount_MemberType
pattern AppsDynamiteSharedSegmentedMembershipCount_MemberType_HUMANUSER = AppsDynamiteSharedSegmentedMembershipCount_MemberType "HUMAN_USER"

-- | member is a roster
pattern AppsDynamiteSharedSegmentedMembershipCount_MemberType_ROSTERMEMBER :: AppsDynamiteSharedSegmentedMembershipCount_MemberType
pattern AppsDynamiteSharedSegmentedMembershipCount_MemberType_ROSTERMEMBER = AppsDynamiteSharedSegmentedMembershipCount_MemberType "ROSTER_MEMBER"

{-# COMPLETE
  AppsDynamiteSharedSegmentedMembershipCount_MemberType_MEMBERTYPEUNSPECIFIED,
  AppsDynamiteSharedSegmentedMembershipCount_MemberType_HUMANUSER,
  AppsDynamiteSharedSegmentedMembershipCount_MemberType_ROSTERMEMBER,
  AppsDynamiteSharedSegmentedMembershipCount_MemberType
  #-}

newtype AppsDynamiteSharedSegmentedMembershipCount_MembershipState = AppsDynamiteSharedSegmentedMembershipCount_MembershipState {fromAppsDynamiteSharedSegmentedMembershipCount_MembershipState :: Core.Text}
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
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERUNKNOWN :: AppsDynamiteSharedSegmentedMembershipCount_MembershipState
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERUNKNOWN = AppsDynamiteSharedSegmentedMembershipCount_MembershipState "MEMBER_UNKNOWN"

-- | An invitation to the space has been sent
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERINVITED :: AppsDynamiteSharedSegmentedMembershipCount_MembershipState
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERINVITED = AppsDynamiteSharedSegmentedMembershipCount_MembershipState "MEMBER_INVITED"

-- | User has joined the space
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERJOINED :: AppsDynamiteSharedSegmentedMembershipCount_MembershipState
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERJOINED = AppsDynamiteSharedSegmentedMembershipCount_MembershipState "MEMBER_JOINED"

-- | User is not a member
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERNOTAMEMBER :: AppsDynamiteSharedSegmentedMembershipCount_MembershipState
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERNOTAMEMBER = AppsDynamiteSharedSegmentedMembershipCount_MembershipState "MEMBER_NOT_A_MEMBER"

-- | This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERFAILED :: AppsDynamiteSharedSegmentedMembershipCount_MembershipState
pattern AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERFAILED = AppsDynamiteSharedSegmentedMembershipCount_MembershipState "MEMBER_FAILED"

{-# COMPLETE
  AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERUNKNOWN,
  AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERINVITED,
  AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERJOINED,
  AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERNOTAMEMBER,
  AppsDynamiteSharedSegmentedMembershipCount_MembershipState_MEMBERFAILED,
  AppsDynamiteSharedSegmentedMembershipCount_MembershipState
  #-}

-- | searching user\'s membership state in this space
newtype AppsDynamiteSharedSpaceInfo_UserMembershipState = AppsDynamiteSharedSpaceInfo_UserMembershipState {fromAppsDynamiteSharedSpaceInfo_UserMembershipState :: Core.Text}
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
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERUNKNOWN :: AppsDynamiteSharedSpaceInfo_UserMembershipState
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERUNKNOWN = AppsDynamiteSharedSpaceInfo_UserMembershipState "MEMBER_UNKNOWN"

-- | An invitation to the space has been sent
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERINVITED :: AppsDynamiteSharedSpaceInfo_UserMembershipState
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERINVITED = AppsDynamiteSharedSpaceInfo_UserMembershipState "MEMBER_INVITED"

-- | User has joined the space
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERJOINED :: AppsDynamiteSharedSpaceInfo_UserMembershipState
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERJOINED = AppsDynamiteSharedSpaceInfo_UserMembershipState "MEMBER_JOINED"

-- | User is not a member
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERNOTAMEMBER :: AppsDynamiteSharedSpaceInfo_UserMembershipState
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERNOTAMEMBER = AppsDynamiteSharedSpaceInfo_UserMembershipState "MEMBER_NOT_A_MEMBER"

-- | This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERFAILED :: AppsDynamiteSharedSpaceInfo_UserMembershipState
pattern AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERFAILED = AppsDynamiteSharedSpaceInfo_UserMembershipState "MEMBER_FAILED"

{-# COMPLETE
  AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERUNKNOWN,
  AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERINVITED,
  AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERJOINED,
  AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERNOTAMEMBER,
  AppsDynamiteSharedSpaceInfo_UserMembershipState_MEMBERFAILED,
  AppsDynamiteSharedSpaceInfo_UserMembershipState
  #-}

newtype AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType = AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType {fromAppsDynamiteSharedTextSegmentsWithDescription_DescriptionType :: Core.Text}
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
pattern AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType_DESCRIPTIONTYPEUNSPECIFIED :: AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType
pattern AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType_DESCRIPTIONTYPEUNSPECIFIED = AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType "DESCRIPTION_TYPE_UNSPECIFIED"

-- | Indicates the text segments contain matched keywords. Client can highlight them in search results page.
pattern AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType_KEYWORDMATCH :: AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType
pattern AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType_KEYWORDMATCH = AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType "KEYWORD_MATCH"

{-# COMPLETE
  AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType_DESCRIPTIONTYPEUNSPECIFIED,
  AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType_KEYWORDMATCH,
  AppsDynamiteSharedTextSegmentsWithDescription_DescriptionType
  #-}

-- | Transcode status
newtype AppsDynamiteSharedVideoReference_Status = AppsDynamiteSharedVideoReference_Status {fromAppsDynamiteSharedVideoReference_Status :: Core.Text}
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
pattern AppsDynamiteSharedVideoReference_Status_UNKNOWNSTATUS :: AppsDynamiteSharedVideoReference_Status
pattern AppsDynamiteSharedVideoReference_Status_UNKNOWNSTATUS = AppsDynamiteSharedVideoReference_Status "UNKNOWN_STATUS"

-- |
pattern AppsDynamiteSharedVideoReference_Status_Success :: AppsDynamiteSharedVideoReference_Status
pattern AppsDynamiteSharedVideoReference_Status_Success = AppsDynamiteSharedVideoReference_Status "SUCCESS"

-- |
pattern AppsDynamiteSharedVideoReference_Status_Error' :: AppsDynamiteSharedVideoReference_Status
pattern AppsDynamiteSharedVideoReference_Status_Error' = AppsDynamiteSharedVideoReference_Status "ERROR"

-- |
pattern AppsDynamiteSharedVideoReference_Status_NOTAPPLICABLE :: AppsDynamiteSharedVideoReference_Status
pattern AppsDynamiteSharedVideoReference_Status_NOTAPPLICABLE = AppsDynamiteSharedVideoReference_Status "NOT_APPLICABLE"

-- |
pattern AppsDynamiteSharedVideoReference_Status_THUMBNAILSUCCESS :: AppsDynamiteSharedVideoReference_Status
pattern AppsDynamiteSharedVideoReference_Status_THUMBNAILSUCCESS = AppsDynamiteSharedVideoReference_Status "THUMBNAIL_SUCCESS"

-- |
pattern AppsDynamiteSharedVideoReference_Status_GOLIVESUCCESS :: AppsDynamiteSharedVideoReference_Status
pattern AppsDynamiteSharedVideoReference_Status_GOLIVESUCCESS = AppsDynamiteSharedVideoReference_Status "GO_LIVE_SUCCESS"

{-# COMPLETE
  AppsDynamiteSharedVideoReference_Status_UNKNOWNSTATUS,
  AppsDynamiteSharedVideoReference_Status_Success,
  AppsDynamiteSharedVideoReference_Status_Error',
  AppsDynamiteSharedVideoReference_Status_NOTAPPLICABLE,
  AppsDynamiteSharedVideoReference_Status_THUMBNAILSUCCESS,
  AppsDynamiteSharedVideoReference_Status_GOLIVESUCCESS,
  AppsDynamiteSharedVideoReference_Status
  #-}

newtype AppsDynamiteStorageAction_Interaction = AppsDynamiteStorageAction_Interaction {fromAppsDynamiteStorageAction_Interaction :: Core.Text}
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

-- | Default value if interaction is not specified.
pattern AppsDynamiteStorageAction_Interaction_INTERACTIONUNSPECIFIED :: AppsDynamiteStorageAction_Interaction
pattern AppsDynamiteStorageAction_Interaction_INTERACTIONUNSPECIFIED = AppsDynamiteStorageAction_Interaction "INTERACTION_UNSPECIFIED"

-- | A dialog opens by clicking the button.
pattern AppsDynamiteStorageAction_Interaction_OPENDIALOG :: AppsDynamiteStorageAction_Interaction
pattern AppsDynamiteStorageAction_Interaction_OPENDIALOG = AppsDynamiteStorageAction_Interaction "OPEN_DIALOG"

{-# COMPLETE
  AppsDynamiteStorageAction_Interaction_INTERACTIONUNSPECIFIED,
  AppsDynamiteStorageAction_Interaction_OPENDIALOG,
  AppsDynamiteStorageAction_Interaction
  #-}

newtype AppsDynamiteStorageAction_LoadIndicator = AppsDynamiteStorageAction_LoadIndicator {fromAppsDynamiteStorageAction_LoadIndicator :: Core.Text}
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

-- | Displays a spinner to indicate that content is loading.
pattern AppsDynamiteStorageAction_LoadIndicator_Spinner :: AppsDynamiteStorageAction_LoadIndicator
pattern AppsDynamiteStorageAction_LoadIndicator_Spinner = AppsDynamiteStorageAction_LoadIndicator "SPINNER"

-- | Nothing is displayed.
pattern AppsDynamiteStorageAction_LoadIndicator_None :: AppsDynamiteStorageAction_LoadIndicator
pattern AppsDynamiteStorageAction_LoadIndicator_None = AppsDynamiteStorageAction_LoadIndicator "NONE"

{-# COMPLETE
  AppsDynamiteStorageAction_LoadIndicator_Spinner,
  AppsDynamiteStorageAction_LoadIndicator_None,
  AppsDynamiteStorageAction_LoadIndicator
  #-}

-- | The border type.
newtype AppsDynamiteStorageBorderStyle_Type = AppsDynamiteStorageBorderStyle_Type {fromAppsDynamiteStorageBorderStyle_Type :: Core.Text}
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

-- | No value specified.
pattern AppsDynamiteStorageBorderStyle_Type_BORDERTYPEUNSPECIFIED :: AppsDynamiteStorageBorderStyle_Type
pattern AppsDynamiteStorageBorderStyle_Type_BORDERTYPEUNSPECIFIED = AppsDynamiteStorageBorderStyle_Type "BORDER_TYPE_UNSPECIFIED"

-- | No border.
pattern AppsDynamiteStorageBorderStyle_Type_NOBORDER :: AppsDynamiteStorageBorderStyle_Type
pattern AppsDynamiteStorageBorderStyle_Type_NOBORDER = AppsDynamiteStorageBorderStyle_Type "NO_BORDER"

-- | Outline.
pattern AppsDynamiteStorageBorderStyle_Type_Stroke :: AppsDynamiteStorageBorderStyle_Type
pattern AppsDynamiteStorageBorderStyle_Type_Stroke = AppsDynamiteStorageBorderStyle_Type "STROKE"

{-# COMPLETE
  AppsDynamiteStorageBorderStyle_Type_BORDERTYPEUNSPECIFIED,
  AppsDynamiteStorageBorderStyle_Type_NOBORDER,
  AppsDynamiteStorageBorderStyle_Type_Stroke,
  AppsDynamiteStorageBorderStyle_Type
  #-}

-- | The image\'s type.
newtype AppsDynamiteStorageCardCardHeader_ImageType = AppsDynamiteStorageCardCardHeader_ImageType {fromAppsDynamiteStorageCardCardHeader_ImageType :: Core.Text}
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

-- | Applies no cropping to the image.
pattern AppsDynamiteStorageCardCardHeader_ImageType_Square :: AppsDynamiteStorageCardCardHeader_ImageType
pattern AppsDynamiteStorageCardCardHeader_ImageType_Square = AppsDynamiteStorageCardCardHeader_ImageType "SQUARE"

-- | Applies a circular mask to the image.
pattern AppsDynamiteStorageCardCardHeader_ImageType_Circle :: AppsDynamiteStorageCardCardHeader_ImageType
pattern AppsDynamiteStorageCardCardHeader_ImageType_Circle = AppsDynamiteStorageCardCardHeader_ImageType "CIRCLE"

{-# COMPLETE
  AppsDynamiteStorageCardCardHeader_ImageType_Square,
  AppsDynamiteStorageCardCardHeader_ImageType_Circle,
  AppsDynamiteStorageCardCardHeader_ImageType
  #-}

-- | Controls how the column resizes based on screen width.
newtype AppsDynamiteStorageColumns_WrapStyle = AppsDynamiteStorageColumns_WrapStyle {fromAppsDynamiteStorageColumns_WrapStyle :: Core.Text}
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

-- | Unspecified.
pattern AppsDynamiteStorageColumns_WrapStyle_WRAPSTYLEUNSPECIFIED :: AppsDynamiteStorageColumns_WrapStyle
pattern AppsDynamiteStorageColumns_WrapStyle_WRAPSTYLEUNSPECIFIED = AppsDynamiteStorageColumns_WrapStyle "WRAP_STYLE_UNSPECIFIED"

-- | Column widgets don\'t wrap.
pattern AppsDynamiteStorageColumns_WrapStyle_Nowrap :: AppsDynamiteStorageColumns_WrapStyle
pattern AppsDynamiteStorageColumns_WrapStyle_Nowrap = AppsDynamiteStorageColumns_WrapStyle "NOWRAP"

-- | Column Widgets wrap.
pattern AppsDynamiteStorageColumns_WrapStyle_Wrap :: AppsDynamiteStorageColumns_WrapStyle
pattern AppsDynamiteStorageColumns_WrapStyle_Wrap = AppsDynamiteStorageColumns_WrapStyle "WRAP"

{-# COMPLETE
  AppsDynamiteStorageColumns_WrapStyle_WRAPSTYLEUNSPECIFIED,
  AppsDynamiteStorageColumns_WrapStyle_Nowrap,
  AppsDynamiteStorageColumns_WrapStyle_Wrap,
  AppsDynamiteStorageColumns_WrapStyle
  #-}

-- | The horizontal alignment of the column.
newtype AppsDynamiteStorageColumnsColumn_HorizontalAlignment = AppsDynamiteStorageColumnsColumn_HorizontalAlignment {fromAppsDynamiteStorageColumnsColumn_HorizontalAlignment :: Core.Text}
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

-- | Unspecified alignment.
pattern AppsDynamiteStorageColumnsColumn_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: AppsDynamiteStorageColumnsColumn_HorizontalAlignment
pattern AppsDynamiteStorageColumnsColumn_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = AppsDynamiteStorageColumnsColumn_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Alignment to the start position.
pattern AppsDynamiteStorageColumnsColumn_HorizontalAlignment_Start :: AppsDynamiteStorageColumnsColumn_HorizontalAlignment
pattern AppsDynamiteStorageColumnsColumn_HorizontalAlignment_Start = AppsDynamiteStorageColumnsColumn_HorizontalAlignment "START"

-- | Alignment to the center position.
pattern AppsDynamiteStorageColumnsColumn_HorizontalAlignment_Center :: AppsDynamiteStorageColumnsColumn_HorizontalAlignment
pattern AppsDynamiteStorageColumnsColumn_HorizontalAlignment_Center = AppsDynamiteStorageColumnsColumn_HorizontalAlignment "CENTER"

-- | Alignment to the end position.
pattern AppsDynamiteStorageColumnsColumn_HorizontalAlignment_End :: AppsDynamiteStorageColumnsColumn_HorizontalAlignment
pattern AppsDynamiteStorageColumnsColumn_HorizontalAlignment_End = AppsDynamiteStorageColumnsColumn_HorizontalAlignment "END"

{-# COMPLETE
  AppsDynamiteStorageColumnsColumn_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  AppsDynamiteStorageColumnsColumn_HorizontalAlignment_Start,
  AppsDynamiteStorageColumnsColumn_HorizontalAlignment_Center,
  AppsDynamiteStorageColumnsColumn_HorizontalAlignment_End,
  AppsDynamiteStorageColumnsColumn_HorizontalAlignment
  #-}

-- | Specifies how the column content is sized horizontally.
newtype AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle = AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle {fromAppsDynamiteStorageColumnsColumn_HorizontalSizeStyle :: Core.Text}
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

-- | Unspecified.
pattern AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_HORIZONTALSIZESTYLEUNSPECIFIED :: AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle
pattern AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_HORIZONTALSIZESTYLEUNSPECIFIED = AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle "HORIZONTAL_SIZE_STYLE_UNSPECIFIED"

-- | Fills up the available horizontal width. Default value if unspecified.
pattern AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_FILLAVAILABLESPACE :: AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle
pattern AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_FILLAVAILABLESPACE = AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle "FILL_AVAILABLE_SPACE"

-- | Fills up the minimum horizontal width.
pattern AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_FILLMINIMUMSPACE :: AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle
pattern AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_FILLMINIMUMSPACE = AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle "FILL_MINIMUM_SPACE"

{-# COMPLETE
  AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_HORIZONTALSIZESTYLEUNSPECIFIED,
  AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_FILLAVAILABLESPACE,
  AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle_FILLMINIMUMSPACE,
  AppsDynamiteStorageColumnsColumn_HorizontalSizeStyle
  #-}

-- | The vertical alignment of the column.
newtype AppsDynamiteStorageColumnsColumn_VerticalAlignment = AppsDynamiteStorageColumnsColumn_VerticalAlignment {fromAppsDynamiteStorageColumnsColumn_VerticalAlignment :: Core.Text}
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

-- | Unspecified.
pattern AppsDynamiteStorageColumnsColumn_VerticalAlignment_VERTICALALIGNMENTUNSPECIFIED :: AppsDynamiteStorageColumnsColumn_VerticalAlignment
pattern AppsDynamiteStorageColumnsColumn_VerticalAlignment_VERTICALALIGNMENTUNSPECIFIED = AppsDynamiteStorageColumnsColumn_VerticalAlignment "VERTICAL_ALIGNMENT_UNSPECIFIED"

-- | Aligns the widget in the center of the column. Default value if unspecified.
pattern AppsDynamiteStorageColumnsColumn_VerticalAlignment_Center :: AppsDynamiteStorageColumnsColumn_VerticalAlignment
pattern AppsDynamiteStorageColumnsColumn_VerticalAlignment_Center = AppsDynamiteStorageColumnsColumn_VerticalAlignment "CENTER"

-- | Aligns the widget at the top of the column.
pattern AppsDynamiteStorageColumnsColumn_VerticalAlignment_Top :: AppsDynamiteStorageColumnsColumn_VerticalAlignment
pattern AppsDynamiteStorageColumnsColumn_VerticalAlignment_Top = AppsDynamiteStorageColumnsColumn_VerticalAlignment "TOP"

-- | Aligns the widget at the bottom of the column.
pattern AppsDynamiteStorageColumnsColumn_VerticalAlignment_Bottom :: AppsDynamiteStorageColumnsColumn_VerticalAlignment
pattern AppsDynamiteStorageColumnsColumn_VerticalAlignment_Bottom = AppsDynamiteStorageColumnsColumn_VerticalAlignment "BOTTOM"

{-# COMPLETE
  AppsDynamiteStorageColumnsColumn_VerticalAlignment_VERTICALALIGNMENTUNSPECIFIED,
  AppsDynamiteStorageColumnsColumn_VerticalAlignment_Center,
  AppsDynamiteStorageColumnsColumn_VerticalAlignment_Top,
  AppsDynamiteStorageColumnsColumn_VerticalAlignment_Bottom,
  AppsDynamiteStorageColumnsColumn_VerticalAlignment
  #-}

-- | The type of the date\/time picker.
newtype AppsDynamiteStorageDateTimePicker_Type = AppsDynamiteStorageDateTimePicker_Type {fromAppsDynamiteStorageDateTimePicker_Type :: Core.Text}
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

-- | The user can select a date and time.
pattern AppsDynamiteStorageDateTimePicker_Type_DATEANDTIME :: AppsDynamiteStorageDateTimePicker_Type
pattern AppsDynamiteStorageDateTimePicker_Type_DATEANDTIME = AppsDynamiteStorageDateTimePicker_Type "DATE_AND_TIME"

-- | The user can only select a date.
pattern AppsDynamiteStorageDateTimePicker_Type_DATEONLY :: AppsDynamiteStorageDateTimePicker_Type
pattern AppsDynamiteStorageDateTimePicker_Type_DATEONLY = AppsDynamiteStorageDateTimePicker_Type "DATE_ONLY"

-- | The user can only select a time.
pattern AppsDynamiteStorageDateTimePicker_Type_TIMEONLY :: AppsDynamiteStorageDateTimePicker_Type
pattern AppsDynamiteStorageDateTimePicker_Type_TIMEONLY = AppsDynamiteStorageDateTimePicker_Type "TIME_ONLY"

{-# COMPLETE
  AppsDynamiteStorageDateTimePicker_Type_DATEANDTIME,
  AppsDynamiteStorageDateTimePicker_Type_DATEONLY,
  AppsDynamiteStorageDateTimePicker_Type_TIMEONLY,
  AppsDynamiteStorageDateTimePicker_Type
  #-}

-- | The control type, either switch or checkbox.
newtype AppsDynamiteStorageDecoratedTextSwitchControl_ControlType = AppsDynamiteStorageDecoratedTextSwitchControl_ControlType {fromAppsDynamiteStorageDecoratedTextSwitchControl_ControlType :: Core.Text}
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
pattern AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_Switch :: AppsDynamiteStorageDecoratedTextSwitchControl_ControlType
pattern AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_Switch = AppsDynamiteStorageDecoratedTextSwitchControl_ControlType "SWITCH"

-- | Deprecated in favor of @CHECK_BOX@.
pattern AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_Checkbox :: AppsDynamiteStorageDecoratedTextSwitchControl_ControlType
pattern AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_Checkbox = AppsDynamiteStorageDecoratedTextSwitchControl_ControlType "CHECKBOX"

-- |
pattern AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_CHECKBOX :: AppsDynamiteStorageDecoratedTextSwitchControl_ControlType
pattern AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_CHECKBOX = AppsDynamiteStorageDecoratedTextSwitchControl_ControlType "CHECK_BOX"

{-# COMPLETE
  AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_Switch,
  AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_Checkbox,
  AppsDynamiteStorageDecoratedTextSwitchControl_ControlType_CHECKBOX,
  AppsDynamiteStorageDecoratedTextSwitchControl_ControlType
  #-}

-- | The layout to use for the grid item.
newtype AppsDynamiteStorageGridGridItem_Layout = AppsDynamiteStorageGridGridItem_Layout {fromAppsDynamiteStorageGridGridItem_Layout :: Core.Text}
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

-- | No layout specified.
pattern AppsDynamiteStorageGridGridItem_Layout_GRIDITEMLAYOUTUNSPECIFIED :: AppsDynamiteStorageGridGridItem_Layout
pattern AppsDynamiteStorageGridGridItem_Layout_GRIDITEMLAYOUTUNSPECIFIED = AppsDynamiteStorageGridGridItem_Layout "GRID_ITEM_LAYOUT_UNSPECIFIED"

-- | The title and subtitle are shown below the grid item\'s image.
pattern AppsDynamiteStorageGridGridItem_Layout_TEXTBELOW :: AppsDynamiteStorageGridGridItem_Layout
pattern AppsDynamiteStorageGridGridItem_Layout_TEXTBELOW = AppsDynamiteStorageGridGridItem_Layout "TEXT_BELOW"

-- | The title and subtitle are shown above the grid item\'s image.
pattern AppsDynamiteStorageGridGridItem_Layout_TEXTABOVE :: AppsDynamiteStorageGridGridItem_Layout
pattern AppsDynamiteStorageGridGridItem_Layout_TEXTABOVE = AppsDynamiteStorageGridGridItem_Layout "TEXT_ABOVE"

{-# COMPLETE
  AppsDynamiteStorageGridGridItem_Layout_GRIDITEMLAYOUTUNSPECIFIED,
  AppsDynamiteStorageGridGridItem_Layout_TEXTBELOW,
  AppsDynamiteStorageGridGridItem_Layout_TEXTABOVE,
  AppsDynamiteStorageGridGridItem_Layout
  #-}

-- | The horizontal alignment of the grid item\'s text.
newtype AppsDynamiteStorageGridGridItem_TextAlignment = AppsDynamiteStorageGridGridItem_TextAlignment {fromAppsDynamiteStorageGridGridItem_TextAlignment :: Core.Text}
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

-- | Unspecified alignment.
pattern AppsDynamiteStorageGridGridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: AppsDynamiteStorageGridGridItem_TextAlignment
pattern AppsDynamiteStorageGridGridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED = AppsDynamiteStorageGridGridItem_TextAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Alignment to the start position.
pattern AppsDynamiteStorageGridGridItem_TextAlignment_Start :: AppsDynamiteStorageGridGridItem_TextAlignment
pattern AppsDynamiteStorageGridGridItem_TextAlignment_Start = AppsDynamiteStorageGridGridItem_TextAlignment "START"

-- | Alignment to the center position.
pattern AppsDynamiteStorageGridGridItem_TextAlignment_Center :: AppsDynamiteStorageGridGridItem_TextAlignment
pattern AppsDynamiteStorageGridGridItem_TextAlignment_Center = AppsDynamiteStorageGridGridItem_TextAlignment "CENTER"

-- | Alignment to the end position.
pattern AppsDynamiteStorageGridGridItem_TextAlignment_End :: AppsDynamiteStorageGridGridItem_TextAlignment
pattern AppsDynamiteStorageGridGridItem_TextAlignment_End = AppsDynamiteStorageGridGridItem_TextAlignment "END"

{-# COMPLETE
  AppsDynamiteStorageGridGridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  AppsDynamiteStorageGridGridItem_TextAlignment_Start,
  AppsDynamiteStorageGridGridItem_TextAlignment_Center,
  AppsDynamiteStorageGridGridItem_TextAlignment_End,
  AppsDynamiteStorageGridGridItem_TextAlignment
  #-}

-- | The crop style applied to the image. In some cases, applying a @CIRCLE@ crop causes the image to be drawn larger than a standard icon.
newtype AppsDynamiteStorageIcon_ImageType = AppsDynamiteStorageIcon_ImageType {fromAppsDynamiteStorageIcon_ImageType :: Core.Text}
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

-- | Applies no cropping to the image.
pattern AppsDynamiteStorageIcon_ImageType_Square :: AppsDynamiteStorageIcon_ImageType
pattern AppsDynamiteStorageIcon_ImageType_Square = AppsDynamiteStorageIcon_ImageType "SQUARE"

-- | Applies a circular mask to the image.
pattern AppsDynamiteStorageIcon_ImageType_Circle :: AppsDynamiteStorageIcon_ImageType
pattern AppsDynamiteStorageIcon_ImageType_Circle = AppsDynamiteStorageIcon_ImageType "CIRCLE"

{-# COMPLETE
  AppsDynamiteStorageIcon_ImageType_Square,
  AppsDynamiteStorageIcon_ImageType_Circle,
  AppsDynamiteStorageIcon_ImageType
  #-}

-- | The crop type.
newtype AppsDynamiteStorageImageCropStyle_Type = AppsDynamiteStorageImageCropStyle_Type {fromAppsDynamiteStorageImageCropStyle_Type :: Core.Text}
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

-- | No value specified.
pattern AppsDynamiteStorageImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED :: AppsDynamiteStorageImageCropStyle_Type
pattern AppsDynamiteStorageImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED = AppsDynamiteStorageImageCropStyle_Type "IMAGE_CROP_TYPE_UNSPECIFIED"

-- | Applies a square crop.
pattern AppsDynamiteStorageImageCropStyle_Type_Square :: AppsDynamiteStorageImageCropStyle_Type
pattern AppsDynamiteStorageImageCropStyle_Type_Square = AppsDynamiteStorageImageCropStyle_Type "SQUARE"

-- | Applies a circular crop.
pattern AppsDynamiteStorageImageCropStyle_Type_Circle :: AppsDynamiteStorageImageCropStyle_Type
pattern AppsDynamiteStorageImageCropStyle_Type_Circle = AppsDynamiteStorageImageCropStyle_Type "CIRCLE"

-- | Applies a rectangular crop with a custom aspect ratio.
pattern AppsDynamiteStorageImageCropStyle_Type_RECTANGLECUSTOM :: AppsDynamiteStorageImageCropStyle_Type
pattern AppsDynamiteStorageImageCropStyle_Type_RECTANGLECUSTOM = AppsDynamiteStorageImageCropStyle_Type "RECTANGLE_CUSTOM"

-- | Applies a rectangular crop with a 4:3 aspect ratio.
pattern AppsDynamiteStorageImageCropStyle_Type_RECTANGLE_4_3 :: AppsDynamiteStorageImageCropStyle_Type
pattern AppsDynamiteStorageImageCropStyle_Type_RECTANGLE_4_3 = AppsDynamiteStorageImageCropStyle_Type "RECTANGLE_4_3"

{-# COMPLETE
  AppsDynamiteStorageImageCropStyle_Type_IMAGECROPTYPEUNSPECIFIED,
  AppsDynamiteStorageImageCropStyle_Type_Square,
  AppsDynamiteStorageImageCropStyle_Type_Circle,
  AppsDynamiteStorageImageCropStyle_Type_RECTANGLECUSTOM,
  AppsDynamiteStorageImageCropStyle_Type_RECTANGLE_4_3,
  AppsDynamiteStorageImageCropStyle_Type
  #-}

newtype AppsDynamiteStorageOpenLink_OnClose = AppsDynamiteStorageOpenLink_OnClose {fromAppsDynamiteStorageOpenLink_OnClose :: Core.Text}
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

-- | Doesn’t reload the card after the child window closes. Reloads the card after the child window closes. If used in conjunction with </workspace/add-ons/reference/rpc/google.apps.card.v1#openas OpenAs.OVERLAY>, the child window acts as a modal dialog and the main card is blocked until the child window closes.
pattern AppsDynamiteStorageOpenLink_OnClose_Nothing' :: AppsDynamiteStorageOpenLink_OnClose
pattern AppsDynamiteStorageOpenLink_OnClose_Nothing' = AppsDynamiteStorageOpenLink_OnClose "NOTHING"

-- |
pattern AppsDynamiteStorageOpenLink_OnClose_Reload :: AppsDynamiteStorageOpenLink_OnClose
pattern AppsDynamiteStorageOpenLink_OnClose_Reload = AppsDynamiteStorageOpenLink_OnClose "RELOAD"

{-# COMPLETE
  AppsDynamiteStorageOpenLink_OnClose_Nothing',
  AppsDynamiteStorageOpenLink_OnClose_Reload,
  AppsDynamiteStorageOpenLink_OnClose
  #-}

newtype AppsDynamiteStorageOpenLink_OpenAs = AppsDynamiteStorageOpenLink_OpenAs {fromAppsDynamiteStorageOpenLink_OpenAs :: Core.Text}
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

-- | The link opens as a full size window (if that\'s the frame used by the client.
pattern AppsDynamiteStorageOpenLink_OpenAs_FULLSIZE :: AppsDynamiteStorageOpenLink_OpenAs
pattern AppsDynamiteStorageOpenLink_OpenAs_FULLSIZE = AppsDynamiteStorageOpenLink_OpenAs "FULL_SIZE"

-- | The link opens as an overlay, such as a pop-up.
pattern AppsDynamiteStorageOpenLink_OpenAs_Overlay :: AppsDynamiteStorageOpenLink_OpenAs
pattern AppsDynamiteStorageOpenLink_OpenAs_Overlay = AppsDynamiteStorageOpenLink_OpenAs "OVERLAY"

{-# COMPLETE
  AppsDynamiteStorageOpenLink_OpenAs_FULLSIZE,
  AppsDynamiteStorageOpenLink_OpenAs_Overlay,
  AppsDynamiteStorageOpenLink_OpenAs
  #-}

newtype AppsDynamiteStorageSelectionInput_Type = AppsDynamiteStorageSelectionInput_Type {fromAppsDynamiteStorageSelectionInput_Type :: Core.Text}
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

-- | The selection type is a checkbox.
pattern AppsDynamiteStorageSelectionInput_Type_CHECKBOX :: AppsDynamiteStorageSelectionInput_Type
pattern AppsDynamiteStorageSelectionInput_Type_CHECKBOX = AppsDynamiteStorageSelectionInput_Type "CHECK_BOX"

-- | The selection type is a radio button.
pattern AppsDynamiteStorageSelectionInput_Type_RADIOBUTTON :: AppsDynamiteStorageSelectionInput_Type
pattern AppsDynamiteStorageSelectionInput_Type_RADIOBUTTON = AppsDynamiteStorageSelectionInput_Type "RADIO_BUTTON"

-- | The selection type is a switch.
pattern AppsDynamiteStorageSelectionInput_Type_Switch :: AppsDynamiteStorageSelectionInput_Type
pattern AppsDynamiteStorageSelectionInput_Type_Switch = AppsDynamiteStorageSelectionInput_Type "SWITCH"

-- | The selection type is a dropdown.
pattern AppsDynamiteStorageSelectionInput_Type_Dropdown :: AppsDynamiteStorageSelectionInput_Type
pattern AppsDynamiteStorageSelectionInput_Type_Dropdown = AppsDynamiteStorageSelectionInput_Type "DROPDOWN"

-- | The selection type is multi-select
pattern AppsDynamiteStorageSelectionInput_Type_MULTISELECT :: AppsDynamiteStorageSelectionInput_Type
pattern AppsDynamiteStorageSelectionInput_Type_MULTISELECT = AppsDynamiteStorageSelectionInput_Type "MULTI_SELECT"

{-# COMPLETE
  AppsDynamiteStorageSelectionInput_Type_CHECKBOX,
  AppsDynamiteStorageSelectionInput_Type_RADIOBUTTON,
  AppsDynamiteStorageSelectionInput_Type_Switch,
  AppsDynamiteStorageSelectionInput_Type_Dropdown,
  AppsDynamiteStorageSelectionInput_Type_MULTISELECT,
  AppsDynamiteStorageSelectionInput_Type
  #-}

-- | The style of the text, for example, a single line or multiple lines.
newtype AppsDynamiteStorageTextInput_Type = AppsDynamiteStorageTextInput_Type {fromAppsDynamiteStorageTextInput_Type :: Core.Text}
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

-- | The text is put into a single line.
pattern AppsDynamiteStorageTextInput_Type_SINGLELINE :: AppsDynamiteStorageTextInput_Type
pattern AppsDynamiteStorageTextInput_Type_SINGLELINE = AppsDynamiteStorageTextInput_Type "SINGLE_LINE"

-- | The text is put into multiple lines.
pattern AppsDynamiteStorageTextInput_Type_MULTIPLELINE :: AppsDynamiteStorageTextInput_Type
pattern AppsDynamiteStorageTextInput_Type_MULTIPLELINE = AppsDynamiteStorageTextInput_Type "MULTIPLE_LINE"

{-# COMPLETE
  AppsDynamiteStorageTextInput_Type_SINGLELINE,
  AppsDynamiteStorageTextInput_Type_MULTIPLELINE,
  AppsDynamiteStorageTextInput_Type
  #-}

-- | The horizontal alignment of this widget.
newtype AppsDynamiteStorageWidget_HorizontalAlignment = AppsDynamiteStorageWidget_HorizontalAlignment {fromAppsDynamiteStorageWidget_HorizontalAlignment :: Core.Text}
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

-- | Unspecified alignment.
pattern AppsDynamiteStorageWidget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: AppsDynamiteStorageWidget_HorizontalAlignment
pattern AppsDynamiteStorageWidget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = AppsDynamiteStorageWidget_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Alignment to the start position.
pattern AppsDynamiteStorageWidget_HorizontalAlignment_Start :: AppsDynamiteStorageWidget_HorizontalAlignment
pattern AppsDynamiteStorageWidget_HorizontalAlignment_Start = AppsDynamiteStorageWidget_HorizontalAlignment "START"

-- | Alignment to the center position.
pattern AppsDynamiteStorageWidget_HorizontalAlignment_Center :: AppsDynamiteStorageWidget_HorizontalAlignment
pattern AppsDynamiteStorageWidget_HorizontalAlignment_Center = AppsDynamiteStorageWidget_HorizontalAlignment "CENTER"

-- | Alignment to the end position.
pattern AppsDynamiteStorageWidget_HorizontalAlignment_End :: AppsDynamiteStorageWidget_HorizontalAlignment
pattern AppsDynamiteStorageWidget_HorizontalAlignment_End = AppsDynamiteStorageWidget_HorizontalAlignment "END"

{-# COMPLETE
  AppsDynamiteStorageWidget_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  AppsDynamiteStorageWidget_HorizontalAlignment_Start,
  AppsDynamiteStorageWidget_HorizontalAlignment_Center,
  AppsDynamiteStorageWidget_HorizontalAlignment_End,
  AppsDynamiteStorageWidget_HorizontalAlignment
  #-}

newtype AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem {fromAppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem :: Core.Text}
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

-- | Unknown feature.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_UNKNOWNFEATURE :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_UNKNOWNFEATURE = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem "UNKNOWN_FEATURE"

-- | Applies to @PHONE@ entry point. A call to a toll number is charged to the calling party. A number can\'t be toll and toll-free at the same time.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_Toll :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_Toll = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem "TOLL"

-- | Applies to @PHONE@ entry point. For the calling party, a call to a toll-free number is free of charge. A number can\'t be toll and toll-free at the same time.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_TOLLFREE :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_TOLLFREE = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem "TOLL_FREE"

{-# COMPLETE
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_UNKNOWNFEATURE,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_Toll,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem_TOLLFREE,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_FeaturesItem
  #-}

-- | The type of the entry point. Required.
newtype AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type {fromAppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type :: Core.Text}
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

-- | Unknown conference type.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Unknown :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Unknown = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type "UNKNOWN"

-- | A video conference.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Video :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Video = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type "VIDEO"

-- | A phone conference.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Phone :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Phone = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type "PHONE"

-- | Used to provide a link to further conference joining information.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_More :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_More = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type "MORE"

-- | A conference using <https://en.wikipedia.org/wiki/Session_Initiation_Protocol Session Initiation Protocol>
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Sip :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Sip = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type "SIP"

{-# COMPLETE
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Unknown,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Video,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Phone,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_More,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type_Sip,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup_Type
  #-}

-- | The type of error. Required.
newtype AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type {fromAppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type :: Core.Text}
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
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Unknown :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Unknown = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type "UNKNOWN"

-- | An authentication error.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Authentication :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Authentication = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type "AUTHENTICATION"

-- | A temporary error.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Temporary :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Temporary = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type "TEMPORARY"

-- | A permanent error.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Permanent :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Permanent = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type "PERMANENT"

-- | The user isn\'t allowed to perform some action in the third-party conferencing system.
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_PERMISSIONDENIED :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_PERMISSIONDENIED = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type "PERMISSION_DENIED"

-- | The user isn\'t allowed to use the selected conference solution (but might be allowed to use other solutions offered by the add-on).
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_CONFERENCESOLUTIONFORBIDDEN :: AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
pattern AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_CONFERENCESOLUTIONFORBIDDEN = AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type "CONFERENCE_SOLUTION_FORBIDDEN"

{-# COMPLETE
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Unknown,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Authentication,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Temporary,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_Permanent,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_PERMISSIONDENIED,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type_CONFERENCESOLUTIONFORBIDDEN,
  AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError_Type
  #-}

-- | The border type.
newtype BorderStyle_Type = BorderStyle_Type {fromBorderStyle_Type :: Core.Text}
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

-- | No value specified.
pattern BorderStyle_Type_BORDERTYPENOTSET :: BorderStyle_Type
pattern BorderStyle_Type_BORDERTYPENOTSET = BorderStyle_Type "BORDER_TYPE_NOT_SET"

-- | No border.
pattern BorderStyle_Type_NOBORDER :: BorderStyle_Type
pattern BorderStyle_Type_NOBORDER = BorderStyle_Type "NO_BORDER"

-- | Outline.
pattern BorderStyle_Type_Stroke :: BorderStyle_Type
pattern BorderStyle_Type_Stroke = BorderStyle_Type "STROKE"

{-# COMPLETE
  BorderStyle_Type_BORDERTYPENOTSET,
  BorderStyle_Type_NOBORDER,
  BorderStyle_Type_Stroke,
  BorderStyle_Type
  #-}

newtype BotInfo_AppAllowlistStatus = BotInfo_AppAllowlistStatus {fromBotInfo_AppAllowlistStatus :: Core.Text}
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
pattern BotInfo_AppAllowlistStatus_UNSPECIFIEDSTATUS :: BotInfo_AppAllowlistStatus
pattern BotInfo_AppAllowlistStatus_UNSPECIFIEDSTATUS = BotInfo_AppAllowlistStatus "UNSPECIFIED_STATUS"

-- |
pattern BotInfo_AppAllowlistStatus_Allowed :: BotInfo_AppAllowlistStatus
pattern BotInfo_AppAllowlistStatus_Allowed = BotInfo_AppAllowlistStatus "ALLOWED"

-- | For both ALL/APPS/DISABLED/BY/ADMIN and APP/NOT/ALLOWLISTED/BY/ADMIN, the app should still be visible in the catalog, but usage of the app will be disabled. Indicates that all apps have been disabled by the dasher admin.
pattern BotInfo_AppAllowlistStatus_ALLAPPSDISABLEDBYADMIN :: BotInfo_AppAllowlistStatus
pattern BotInfo_AppAllowlistStatus_ALLAPPSDISABLEDBYADMIN = BotInfo_AppAllowlistStatus "ALL_APPS_DISABLED_BY_ADMIN"

-- | Indicates that the customer is using allowlisting, but that the bot is not allowlisted.
pattern BotInfo_AppAllowlistStatus_APPNOTALLOWLISTEDBYADMIN :: BotInfo_AppAllowlistStatus
pattern BotInfo_AppAllowlistStatus_APPNOTALLOWLISTEDBYADMIN = BotInfo_AppAllowlistStatus "APP_NOT_ALLOWLISTED_BY_ADMIN"

{-# COMPLETE
  BotInfo_AppAllowlistStatus_UNSPECIFIEDSTATUS,
  BotInfo_AppAllowlistStatus_Allowed,
  BotInfo_AppAllowlistStatus_ALLAPPSDISABLEDBYADMIN,
  BotInfo_AppAllowlistStatus_APPNOTALLOWLISTEDBYADMIN,
  BotInfo_AppAllowlistStatus
  #-}

-- | Indicates whether bot is enabled\/disabled.
newtype BotInfo_Status = BotInfo_Status {fromBotInfo_Status :: Core.Text}
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
pattern BotInfo_Status_UNKNOWNSTATUS :: BotInfo_Status
pattern BotInfo_Status_UNKNOWNSTATUS = BotInfo_Status "UNKNOWN_STATUS"

-- |
pattern BotInfo_Status_Enabled :: BotInfo_Status
pattern BotInfo_Status_Enabled = BotInfo_Status "ENABLED"

-- | Bot has been disabled by the bot developer. No one can \@mention or interact with the bot.
pattern BotInfo_Status_DISABLEDBYDEVELOPER :: BotInfo_Status
pattern BotInfo_Status_DISABLEDBYDEVELOPER = BotInfo_Status "DISABLED_BY_DEVELOPER"

{-# COMPLETE
  BotInfo_Status_UNKNOWNSTATUS,
  BotInfo_Status_Enabled,
  BotInfo_Status_DISABLEDBYDEVELOPER,
  BotInfo_Status
  #-}

newtype BotInfo_SupportedUsesItem = BotInfo_SupportedUsesItem {fromBotInfo_SupportedUsesItem :: Core.Text}
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
pattern BotInfo_SupportedUsesItem_Unknown :: BotInfo_SupportedUsesItem
pattern BotInfo_SupportedUsesItem_Unknown = BotInfo_SupportedUsesItem "UNKNOWN"

-- |
pattern BotInfo_SupportedUsesItem_CANADDTODM :: BotInfo_SupportedUsesItem
pattern BotInfo_SupportedUsesItem_CANADDTODM = BotInfo_SupportedUsesItem "CAN_ADD_TO_DM"

-- |
pattern BotInfo_SupportedUsesItem_CANADDTOROOM :: BotInfo_SupportedUsesItem
pattern BotInfo_SupportedUsesItem_CANADDTOROOM = BotInfo_SupportedUsesItem "CAN_ADD_TO_ROOM"

-- |
pattern BotInfo_SupportedUsesItem_CANADDTOHUMANDM :: BotInfo_SupportedUsesItem
pattern BotInfo_SupportedUsesItem_CANADDTOHUMANDM = BotInfo_SupportedUsesItem "CAN_ADD_TO_HUMAN_DM"

{-# COMPLETE
  BotInfo_SupportedUsesItem_Unknown,
  BotInfo_SupportedUsesItem_CANADDTODM,
  BotInfo_SupportedUsesItem_CANADDTOROOM,
  BotInfo_SupportedUsesItem_CANADDTOHUMANDM,
  BotInfo_SupportedUsesItem
  #-}

newtype BotResponse_RequiredAction = BotResponse_RequiredAction {fromBotResponse_RequiredAction :: Core.Text}
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
pattern BotResponse_RequiredAction_UNKNOWNSETUPTYPE :: BotResponse_RequiredAction
pattern BotResponse_RequiredAction_UNKNOWNSETUPTYPE = BotResponse_RequiredAction "UNKNOWN_SETUP_TYPE"

-- | Bot requires configuration.
pattern BotResponse_RequiredAction_Configuration :: BotResponse_RequiredAction
pattern BotResponse_RequiredAction_Configuration = BotResponse_RequiredAction "CONFIGURATION"

-- | Bot requires authentication.
pattern BotResponse_RequiredAction_Authentication :: BotResponse_RequiredAction
pattern BotResponse_RequiredAction_Authentication = BotResponse_RequiredAction "AUTHENTICATION"

{-# COMPLETE
  BotResponse_RequiredAction_UNKNOWNSETUPTYPE,
  BotResponse_RequiredAction_Configuration,
  BotResponse_RequiredAction_Authentication,
  BotResponse_RequiredAction
  #-}

newtype BotResponse_ResponseType = BotResponse_ResponseType {fromBotResponse_ResponseType :: Core.Text}
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
pattern BotResponse_ResponseType_UNKNOWNRESPONSETYPE :: BotResponse_ResponseType
pattern BotResponse_ResponseType_UNKNOWNRESPONSETYPE = BotResponse_ResponseType "UNKNOWN_RESPONSE_TYPE"

-- | Bot fails to respond because of deadline_exceeded or failing to parse bot message.
pattern BotResponse_ResponseType_Error' :: BotResponse_ResponseType
pattern BotResponse_ResponseType_Error' = BotResponse_ResponseType "ERROR"

-- | Bot requires auth or config
pattern BotResponse_ResponseType_SETUPREQUIRED :: BotResponse_ResponseType
pattern BotResponse_ResponseType_SETUPREQUIRED = BotResponse_ResponseType "SETUP_REQUIRED"

-- | Bot fails to respond because it is disabled by domain admin
pattern BotResponse_ResponseType_DISABLEDBYADMIN :: BotResponse_ResponseType
pattern BotResponse_ResponseType_DISABLEDBYADMIN = BotResponse_ResponseType "DISABLED_BY_ADMIN"

-- | Bot fails to respond because it is disabled by the bot\'s developer
pattern BotResponse_ResponseType_DISABLEDBYDEVELOPER :: BotResponse_ResponseType
pattern BotResponse_ResponseType_DISABLEDBYDEVELOPER = BotResponse_ResponseType "DISABLED_BY_DEVELOPER"

-- | Message to bot should be permanently private.
pattern BotResponse_ResponseType_Private :: BotResponse_ResponseType
pattern BotResponse_ResponseType_Private = BotResponse_ResponseType "PRIVATE"

-- | A suggestion to promote an app.
pattern BotResponse_ResponseType_APPSUGGESTION :: BotResponse_ResponseType
pattern BotResponse_ResponseType_APPSUGGESTION = BotResponse_ResponseType "APP_SUGGESTION"

{-# COMPLETE
  BotResponse_ResponseType_UNKNOWNRESPONSETYPE,
  BotResponse_ResponseType_Error',
  BotResponse_ResponseType_SETUPREQUIRED,
  BotResponse_ResponseType_DISABLEDBYADMIN,
  BotResponse_ResponseType_DISABLEDBYDEVELOPER,
  BotResponse_ResponseType_Private,
  BotResponse_ResponseType_APPSUGGESTION,
  BotResponse_ResponseType
  #-}

-- | The policy that controls the broadcast\'s viewer access.
newtype BroadcastAccess_AccessPolicy = BroadcastAccess_AccessPolicy {fromBroadcastAccess_AccessPolicy :: Core.Text}
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

-- | Used only when broadcast is not enabled, or an unknown enum value is used.
pattern BroadcastAccess_AccessPolicy_BROADCASTINGACCESSPOLICYUNSPECIFIED :: BroadcastAccess_AccessPolicy
pattern BroadcastAccess_AccessPolicy_BROADCASTINGACCESSPOLICYUNSPECIFIED = BroadcastAccess_AccessPolicy "BROADCASTING_ACCESS_POLICY_UNSPECIFIED"

-- | Only authenticated Google accounts belonging to the same organization as the meeting organizer can access the broadcast.
pattern BroadcastAccess_AccessPolicy_Organization :: BroadcastAccess_AccessPolicy
pattern BroadcastAccess_AccessPolicy_Organization = BroadcastAccess_AccessPolicy "ORGANIZATION"

-- | Anyone with the broadcast view URL can access the broadcast.
pattern BroadcastAccess_AccessPolicy_Public :: BroadcastAccess_AccessPolicy
pattern BroadcastAccess_AccessPolicy_Public = BroadcastAccess_AccessPolicy "PUBLIC"

{-# COMPLETE
  BroadcastAccess_AccessPolicy_BROADCASTINGACCESSPOLICYUNSPECIFIED,
  BroadcastAccess_AccessPolicy_Organization,
  BroadcastAccess_AccessPolicy_Public,
  BroadcastAccess_AccessPolicy
  #-}

newtype CallInfo_AvailableAccessTypesItem = CallInfo_AvailableAccessTypesItem {fromCallInfo_AvailableAccessTypesItem :: Core.Text}
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

-- | Default value. This value is unused.
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPEUNSPECIFIED :: CallInfo_AvailableAccessTypesItem
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPEUNSPECIFIED = CallInfo_AvailableAccessTypesItem "ACCESS_TYPE_UNSPECIFIED"

-- | Anyone with meeting join information (url, phone access...) can join, no knocking required. (Subject to organization policies)
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPEOPEN :: CallInfo_AvailableAccessTypesItem
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPEOPEN = CallInfo_AvailableAccessTypesItem "ACCESS_TYPE_OPEN"

-- | Members of the Host\'s organization, invited external users, and dial-in users can join without knocking, everyone else must knock. (Subject to organization policies)
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPETRUSTED :: CallInfo_AvailableAccessTypesItem
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPETRUSTED = CallInfo_AvailableAccessTypesItem "ACCESS_TYPE_TRUSTED"

-- | Only participants invited by a host can automatically join, everyone else must knock and be admitted. (Subject to organization policies) Participants cannot dial out from the meeting. And only hosts can accept knocks.
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPERESTRICTED :: CallInfo_AvailableAccessTypesItem
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPERESTRICTED = CallInfo_AvailableAccessTypesItem "ACCESS_TYPE_RESTRICTED"

-- | Only participants invited by a host can join. Knocking is not allowed, dial in and dial out are also disabled.
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPECLOSED :: CallInfo_AvailableAccessTypesItem
pattern CallInfo_AvailableAccessTypesItem_ACCESSTYPECLOSED = CallInfo_AvailableAccessTypesItem "ACCESS_TYPE_CLOSED"

{-# COMPLETE
  CallInfo_AvailableAccessTypesItem_ACCESSTYPEUNSPECIFIED,
  CallInfo_AvailableAccessTypesItem_ACCESSTYPEOPEN,
  CallInfo_AvailableAccessTypesItem_ACCESSTYPETRUSTED,
  CallInfo_AvailableAccessTypesItem_ACCESSTYPERESTRICTED,
  CallInfo_AvailableAccessTypesItem_ACCESSTYPECLOSED,
  CallInfo_AvailableAccessTypesItem
  #-}

-- | The current access type of the conference.
newtype CallSettings_AccessType = CallSettings_AccessType {fromCallSettings_AccessType :: Core.Text}
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

-- | Default value. This value is unused.
pattern CallSettings_AccessType_ACCESSTYPEUNSPECIFIED :: CallSettings_AccessType
pattern CallSettings_AccessType_ACCESSTYPEUNSPECIFIED = CallSettings_AccessType "ACCESS_TYPE_UNSPECIFIED"

-- | Anyone with meeting join information (url, phone access...) can join, no knocking required. (Subject to organization policies)
pattern CallSettings_AccessType_ACCESSTYPEOPEN :: CallSettings_AccessType
pattern CallSettings_AccessType_ACCESSTYPEOPEN = CallSettings_AccessType "ACCESS_TYPE_OPEN"

-- | Members of the Host\'s organization, invited external users, and dial-in users can join without knocking, everyone else must knock. (Subject to organization policies)
pattern CallSettings_AccessType_ACCESSTYPETRUSTED :: CallSettings_AccessType
pattern CallSettings_AccessType_ACCESSTYPETRUSTED = CallSettings_AccessType "ACCESS_TYPE_TRUSTED"

-- | Only participants invited by a host can automatically join, everyone else must knock and be admitted. (Subject to organization policies) Participants cannot dial out from the meeting. And only hosts can accept knocks.
pattern CallSettings_AccessType_ACCESSTYPERESTRICTED :: CallSettings_AccessType
pattern CallSettings_AccessType_ACCESSTYPERESTRICTED = CallSettings_AccessType "ACCESS_TYPE_RESTRICTED"

-- | Only participants invited by a host can join. Knocking is not allowed, dial in and dial out are also disabled.
pattern CallSettings_AccessType_ACCESSTYPECLOSED :: CallSettings_AccessType
pattern CallSettings_AccessType_ACCESSTYPECLOSED = CallSettings_AccessType "ACCESS_TYPE_CLOSED"

{-# COMPLETE
  CallSettings_AccessType_ACCESSTYPEUNSPECIFIED,
  CallSettings_AccessType_ACCESSTYPEOPEN,
  CallSettings_AccessType_ACCESSTYPETRUSTED,
  CallSettings_AccessType_ACCESSTYPERESTRICTED,
  CallSettings_AccessType_ACCESSTYPECLOSED,
  CallSettings_AccessType
  #-}

newtype Card_DisplayStyle = Card_DisplayStyle {fromCard_DisplayStyle :: Core.Text}
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
pattern Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED :: Card_DisplayStyle
pattern Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED = Card_DisplayStyle "DISPLAY_STYLE_UNSPECIFIED"

-- |
pattern Card_DisplayStyle_Peek :: Card_DisplayStyle
pattern Card_DisplayStyle_Peek = Card_DisplayStyle "PEEK"

-- |
pattern Card_DisplayStyle_Replace :: Card_DisplayStyle
pattern Card_DisplayStyle_Replace = Card_DisplayStyle "REPLACE"

{-# COMPLETE
  Card_DisplayStyle_DISPLAYSTYLEUNSPECIFIED,
  Card_DisplayStyle_Peek,
  Card_DisplayStyle_Replace,
  Card_DisplayStyle
  #-}

newtype CardCapabilityMetadata_RequiredCapabilitiesItem = CardCapabilityMetadata_RequiredCapabilitiesItem {fromCardCapabilityMetadata_RequiredCapabilitiesItem :: Core.Text}
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
pattern CardCapabilityMetadata_RequiredCapabilitiesItem_Unknown :: CardCapabilityMetadata_RequiredCapabilitiesItem
pattern CardCapabilityMetadata_RequiredCapabilitiesItem_Unknown = CardCapabilityMetadata_RequiredCapabilitiesItem "UNKNOWN"

-- | NEXT TAG : 2
pattern CardCapabilityMetadata_RequiredCapabilitiesItem_SUPPORTSBASECARDS :: CardCapabilityMetadata_RequiredCapabilitiesItem
pattern CardCapabilityMetadata_RequiredCapabilitiesItem_SUPPORTSBASECARDS = CardCapabilityMetadata_RequiredCapabilitiesItem "SUPPORTS_BASE_CARDS"

{-# COMPLETE
  CardCapabilityMetadata_RequiredCapabilitiesItem_Unknown,
  CardCapabilityMetadata_RequiredCapabilitiesItem_SUPPORTSBASECARDS,
  CardCapabilityMetadata_RequiredCapabilitiesItem
  #-}

newtype CardHeader_ImageStyle = CardHeader_ImageStyle {fromCardHeader_ImageStyle :: Core.Text}
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

-- | No value specified.
pattern CardHeader_ImageStyle_CROPTYPENOTSET :: CardHeader_ImageStyle
pattern CardHeader_ImageStyle_CROPTYPENOTSET = CardHeader_ImageStyle "CROP_TYPE_NOT_SET"

-- | Applies a square crop.
pattern CardHeader_ImageStyle_Square :: CardHeader_ImageStyle
pattern CardHeader_ImageStyle_Square = CardHeader_ImageStyle "SQUARE"

-- | Applies a circular crop.
pattern CardHeader_ImageStyle_Circle :: CardHeader_ImageStyle
pattern CardHeader_ImageStyle_Circle = CardHeader_ImageStyle "CIRCLE"

-- | Applies a rectangular crop with a custom aspect ratio.
pattern CardHeader_ImageStyle_RECTANGLECUSTOM :: CardHeader_ImageStyle
pattern CardHeader_ImageStyle_RECTANGLECUSTOM = CardHeader_ImageStyle "RECTANGLE_CUSTOM"

-- | Applies a rectangular crop with a 4:3 aspect ratio.
pattern CardHeader_ImageStyle_RECTANGLE_4_3 :: CardHeader_ImageStyle
pattern CardHeader_ImageStyle_RECTANGLE_4_3 = CardHeader_ImageStyle "RECTANGLE_4_3"

{-# COMPLETE
  CardHeader_ImageStyle_CROPTYPENOTSET,
  CardHeader_ImageStyle_Square,
  CardHeader_ImageStyle_Circle,
  CardHeader_ImageStyle_RECTANGLECUSTOM,
  CardHeader_ImageStyle_RECTANGLE_4_3,
  CardHeader_ImageStyle
  #-}

-- | Is this event OnTR or OffTR? Since some events can be ON/THE/RECORD and have an expiration_timestamp (for example enterprise retention users) we need to store the otr status.
newtype ChatContentExtension_EventOtrStatus = ChatContentExtension_EventOtrStatus {fromChatContentExtension_EventOtrStatus :: Core.Text}
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

-- | The conversation is completely off the record.
pattern ChatContentExtension_EventOtrStatus_OFFTHERECORD :: ChatContentExtension_EventOtrStatus
pattern ChatContentExtension_EventOtrStatus_OFFTHERECORD = ChatContentExtension_EventOtrStatus "OFF_THE_RECORD"

-- | The conversation is completely on the record.
pattern ChatContentExtension_EventOtrStatus_ONTHERECORD :: ChatContentExtension_EventOtrStatus
pattern ChatContentExtension_EventOtrStatus_ONTHERECORD = ChatContentExtension_EventOtrStatus "ON_THE_RECORD"

{-# COMPLETE
  ChatContentExtension_EventOtrStatus_OFFTHERECORD,
  ChatContentExtension_EventOtrStatus_ONTHERECORD,
  ChatContentExtension_EventOtrStatus
  #-}

-- | Identifies the app handling this co-activity.
newtype CoActivity_CoActivityApp = CoActivity_CoActivityApp {fromCoActivity_CoActivityApp :: Core.Text}
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

-- | Should never be used.
pattern CoActivity_CoActivityApp_COACTIVITYAPPUNSPECIFIED :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPUNSPECIFIED = CoActivity_CoActivityApp "CO_ACTIVITY_APP_UNSPECIFIED"

-- | Main YouTube app, for watching videos.
pattern CoActivity_CoActivityApp_COACTIVITYAPPYOUTUBEMAIN :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPYOUTUBEMAIN = CoActivity_CoActivityApp "CO_ACTIVITY_APP_YOU_TUBE_MAIN"

-- | Spotify music.
pattern CoActivity_CoActivityApp_COACTIVITYAPPSPOTIFY :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPSPOTIFY = CoActivity_CoActivityApp "CO_ACTIVITY_APP_SPOTIFY"

-- | Uno game.
pattern CoActivity_CoActivityApp_COACTIVITYAPPUNO :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPUNO = CoActivity_CoActivityApp "CO_ACTIVITY_APP_UNO"

-- | HeadsUp game.
pattern CoActivity_CoActivityApp_COACTIVITYAPPHEADSUP :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPHEADSUP = CoActivity_CoActivityApp "CO_ACTIVITY_APP_HEADSUP"

-- | Kahoot! educational software.
pattern CoActivity_CoActivityApp_COACTIVITYAPPKAHOOT :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPKAHOOT = CoActivity_CoActivityApp "CO_ACTIVITY_APP_KAHOOT"

-- | GQueues task manager.
pattern CoActivity_CoActivityApp_COACTIVITYAPPGQUEUES :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPGQUEUES = CoActivity_CoActivityApp "CO_ACTIVITY_APP_GQUEUES"

-- | YouTube Music
pattern CoActivity_CoActivityApp_COACTIVITYAPPYOUTUBEMUSIC :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPYOUTUBEMUSIC = CoActivity_CoActivityApp "CO_ACTIVITY_APP_YOU_TUBE_MUSIC"

-- | Samsung Notes
pattern CoActivity_CoActivityApp_COACTIVITYAPPSAMSUNGNOTES :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPSAMSUNGNOTES = CoActivity_CoActivityApp "CO_ACTIVITY_APP_SAMSUNG_NOTES"

-- | .
pattern CoActivity_CoActivityApp_COACTIVITYAPPHAPPYAARDVARK :: CoActivity_CoActivityApp
pattern CoActivity_CoActivityApp_COACTIVITYAPPHAPPYAARDVARK = CoActivity_CoActivityApp "CO_ACTIVITY_APP_HAPPY_AARDVARK"

{-# COMPLETE
  CoActivity_CoActivityApp_COACTIVITYAPPUNSPECIFIED,
  CoActivity_CoActivityApp_COACTIVITYAPPYOUTUBEMAIN,
  CoActivity_CoActivityApp_COACTIVITYAPPSPOTIFY,
  CoActivity_CoActivityApp_COACTIVITYAPPUNO,
  CoActivity_CoActivityApp_COACTIVITYAPPHEADSUP,
  CoActivity_CoActivityApp_COACTIVITYAPPKAHOOT,
  CoActivity_CoActivityApp_COACTIVITYAPPGQUEUES,
  CoActivity_CoActivityApp_COACTIVITYAPPYOUTUBEMUSIC,
  CoActivity_CoActivityApp_COACTIVITYAPPSAMSUNGNOTES,
  CoActivity_CoActivityApp_COACTIVITYAPPHAPPYAARDVARK,
  CoActivity_CoActivityApp
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

-- | The type of the DateTimePicker.
newtype DateTimePicker_Type = DateTimePicker_Type {fromDateTimePicker_Type :: Core.Text}
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
pattern DateTimePicker_Type_UNSPECIFIEDTYPE :: DateTimePicker_Type
pattern DateTimePicker_Type_UNSPECIFIEDTYPE = DateTimePicker_Type "UNSPECIFIED_TYPE"

-- |
pattern DateTimePicker_Type_DATEANDTIME :: DateTimePicker_Type
pattern DateTimePicker_Type_DATEANDTIME = DateTimePicker_Type "DATE_AND_TIME"

-- |
pattern DateTimePicker_Type_DATEONLY :: DateTimePicker_Type
pattern DateTimePicker_Type_DATEONLY = DateTimePicker_Type "DATE_ONLY"

-- |
pattern DateTimePicker_Type_TIMEONLY :: DateTimePicker_Type
pattern DateTimePicker_Type_TIMEONLY = DateTimePicker_Type "TIME_ONLY"

{-# COMPLETE
  DateTimePicker_Type_UNSPECIFIEDTYPE,
  DateTimePicker_Type_DATEANDTIME,
  DateTimePicker_Type_DATEONLY,
  DateTimePicker_Type_TIMEONLY,
  DateTimePicker_Type
  #-}

-- | Describes the medium the cent was sent\/received. For example, if I receive an SMS via GV, the medium_type will be GV.
newtype DeliveryMedium_MediumType = DeliveryMedium_MediumType {fromDeliveryMedium_MediumType :: Core.Text}
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
pattern DeliveryMedium_MediumType_UNKNOWNMEDIUM :: DeliveryMedium_MediumType
pattern DeliveryMedium_MediumType_UNKNOWNMEDIUM = DeliveryMedium_MediumType "UNKNOWN_MEDIUM"

-- |
pattern DeliveryMedium_MediumType_BABELMEDIUM :: DeliveryMedium_MediumType
pattern DeliveryMedium_MediumType_BABELMEDIUM = DeliveryMedium_MediumType "BABEL_MEDIUM"

-- |
pattern DeliveryMedium_MediumType_GOOGLEVOICEMEDIUM :: DeliveryMedium_MediumType
pattern DeliveryMedium_MediumType_GOOGLEVOICEMEDIUM = DeliveryMedium_MediumType "GOOGLE_VOICE_MEDIUM"

-- |
pattern DeliveryMedium_MediumType_LOCALSMSMEDIUM :: DeliveryMedium_MediumType
pattern DeliveryMedium_MediumType_LOCALSMSMEDIUM = DeliveryMedium_MediumType "LOCAL_SMS_MEDIUM"

{-# COMPLETE
  DeliveryMedium_MediumType_UNKNOWNMEDIUM,
  DeliveryMedium_MediumType_BABELMEDIUM,
  DeliveryMedium_MediumType_GOOGLEVOICEMEDIUM,
  DeliveryMedium_MediumType_LOCALSMSMEDIUM,
  DeliveryMedium_MediumType
  #-}

newtype DlpAction_ActionType = DlpAction_ActionType {fromDlpAction_ActionType :: Core.Text}
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

-- | LINT.IfChange
pattern DlpAction_ActionType_NOACTION :: DlpAction_ActionType
pattern DlpAction_ActionType_NOACTION = DlpAction_ActionType "NO_ACTION"

-- |
pattern DlpAction_ActionType_Block :: DlpAction_ActionType
pattern DlpAction_ActionType_Block = DlpAction_ActionType "BLOCK"

-- |
pattern DlpAction_ActionType_AUDITONLY :: DlpAction_ActionType
pattern DlpAction_ActionType_AUDITONLY = DlpAction_ActionType "AUDIT_ONLY"

-- | LINT.ThenChange(\/\/depot\/google3\/java\/com\/google\/apps\/dynamite\/v1\/external\/dlp\/ApplicableDlpActionEvaluator.java)
pattern DlpAction_ActionType_Warn :: DlpAction_ActionType
pattern DlpAction_ActionType_Warn = DlpAction_ActionType "WARN"

{-# COMPLETE
  DlpAction_ActionType_NOACTION,
  DlpAction_ActionType_Block,
  DlpAction_ActionType_AUDITONLY,
  DlpAction_ActionType_Warn,
  DlpAction_ActionType
  #-}

-- | The outcome of a DLP Scan. If this is set, scan/not/applicable/for/context should not be true.
newtype DlpScanSummary_ScanOutcome = DlpScanSummary_ScanOutcome {fromDlpScanSummary_ScanOutcome :: Core.Text}
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
pattern DlpScanSummary_ScanOutcome_SCANUNKNOWNOUTCOME :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANUNKNOWNOUTCOME = DlpScanSummary_ScanOutcome "SCAN_UNKNOWN_OUTCOME"

-- | This means no violation is detected on the given message\/attachment.
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDNOVIOLATION :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDNOVIOLATION = DlpScanSummary_ScanOutcome "SCAN_SUCCEEDED_NO_VIOLATION"

-- | Violation is detected. The message\/attachment will be blocked (or deleted if this happens in failure recovery), the user will be warned, and the violation will be logged to BIP.
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDBLOCK :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDBLOCK = DlpScanSummary_ScanOutcome "SCAN_SUCCEEDED_BLOCK"

-- | Violation is detected. The user will be warned, and the violation will be logged to BIP.
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWARN :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWARN = DlpScanSummary_ScanOutcome "SCAN_SUCCEEDED_WARN"

-- | Violation is detected and will be logged to BIP (no user-facing action performed).
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDAUDITONLY :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDAUDITONLY = DlpScanSummary_ScanOutcome "SCAN_SUCCEEDED_AUDIT_ONLY"

-- | Rule fetch and evaluation were attempted but an exception occurred.
pattern DlpScanSummary_ScanOutcome_SCANFAILUREEXCEPTION :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANFAILUREEXCEPTION = DlpScanSummary_ScanOutcome "SCAN_FAILURE_EXCEPTION"

-- | Rule fetch was attempted but failed, so rule evaluation could not be performed.
pattern DlpScanSummary_ScanOutcome_SCANFAILURERULEFETCHFAILED :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANFAILURERULEFETCHFAILED = DlpScanSummary_ScanOutcome "SCAN_FAILURE_RULE_FETCH_FAILED"

-- | Rule fetch and evaluation were attempted but the scanning timed out.
pattern DlpScanSummary_ScanOutcome_SCANFAILURETIMEOUT :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANFAILURETIMEOUT = DlpScanSummary_ScanOutcome "SCAN_FAILURE_TIMEOUT"

-- | Rule fetch completed and evaluation were attempted, but all of the rules failed to be evaluated.
pattern DlpScanSummary_ScanOutcome_SCANFAILUREALLRULESFAILED :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANFAILUREALLRULESFAILED = DlpScanSummary_ScanOutcome "SCAN_FAILURE_ALL_RULES_FAILED"

-- | An IllegalStateException is thrown when executing DLP on attachments. This could happen if the space row is missing.
pattern DlpScanSummary_ScanOutcome_SCANFAILUREILLEGALSTATEFORATTACHMENTS :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANFAILUREILLEGALSTATEFORATTACHMENTS = DlpScanSummary_ScanOutcome "SCAN_FAILURE_ILLEGAL_STATE_FOR_ATTACHMENTS"

-- | Rule fetch and evaluation is skipped because DLP is not enabled for the user.
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDEXPERIMENTDISABLED :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDEXPERIMENTDISABLED = DlpScanSummary_ScanOutcome "SCAN_SKIPPED_EXPERIMENT_DISABLED"

-- | Rule fetch and evaluation are skipped because the user sending message is consumer.
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDCONSUMER :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDCONSUMER = DlpScanSummary_ScanOutcome "SCAN_SKIPPED_CONSUMER"

-- | Rule fetch and evaluation are skipped because the user sending message is a non-human user (i.e. a bot).
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDNONHUMANUSER :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDNONHUMANUSER = DlpScanSummary_ScanOutcome "SCAN_SKIPPED_NON_HUMAN_USER"

-- | Rule fetch and evaluation are skipped because there is no message to scan. Deprecated: this should not happen since there must be message or attachment for DLP scan.
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDNOMESSAGE :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDNOMESSAGE = DlpScanSummary_ScanOutcome "SCAN_SKIPPED_NO_MESSAGE"

-- | Rule fetch and evaluation are skipped because the user has acknowledged the warning on the message that triggered the Warn violation and sent the message anyway.
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDUSERACKNOWLEDGEDWARNING :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDUSERACKNOWLEDGEDWARNING = DlpScanSummary_ScanOutcome "SCAN_SKIPPED_USER_ACKNOWLEDGED_WARNING"

-- | Scanning was skipped because the message originated from Interop or Babel.
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDMESSAGEFROMUNSUPPORTEDORIGIN :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDMESSAGEFROMUNSUPPORTEDORIGIN = DlpScanSummary_ScanOutcome "SCAN_SKIPPED_MESSAGE_FROM_UNSUPPORTED_ORIGIN"

-- | Scanning was skipped because the message was sent while the space is in migration mode. See go\/migration-mode for details.
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDMESSAGESENTDURINGSPACEMIGRATION :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSKIPPEDMESSAGESENTDURINGSPACEMIGRATION = DlpScanSummary_ScanOutcome "SCAN_SKIPPED_MESSAGE_SENT_DURING_SPACE_MIGRATION"

-- | Rule fetch happened, but rule evaluation is skipped because no rules were found.
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNORULESFOUND :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNORULESFOUND = DlpScanSummary_ScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_NO_RULES_FOUND"

-- | Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given action params.
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORACTIONPARAMS :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORACTIONPARAMS = DlpScanSummary_ScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_ACTION_PARAMS"

-- | Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given trigger.
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORTRIGGER :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORTRIGGER = DlpScanSummary_ScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_TRIGGER"

-- | Rule fetch happened, but rule evaluation is skipped because Changeling returned permanent failure while converting the attachment to text.
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGPERMANENTERROR :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGPERMANENTERROR = DlpScanSummary_ScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_PERMANENT_ERROR"

-- | Rule fetch happened, but rule evaluation is skipped because Changeling returned an empty response while converting the attachment to text.
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGEMPTYRESPONSE :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGEMPTYRESPONSE = DlpScanSummary_ScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_EMPTY_RESPONSE"

-- | Rule fetch happened, but rule evaluation is skipped because file type is unsupported.
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDUNSUPPORTEDFILETYPE :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDUNSUPPORTEDFILETYPE = DlpScanSummary_ScanOutcome "SCAN_RULE_EVALUATION_SKIPPED_UNSUPPORTED_FILE_TYPE"

-- | Rules were fetched but some evaluations failed. No violation was found in the rules that were successfully evaluated.
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESNOVIOLATION :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESNOVIOLATION = DlpScanSummary_ScanOutcome "SCAN_SUCCEEDED_WITH_FAILURES_NO_VIOLATION"

-- | Rules were fetched but some evaluations failed. A blocking violation was found in the rules that were successfully evaluated. The message\/attachment will be blocked, the user will be notified, and the violation will be logged to BIP. A blocking violation takes precedence over all other violation types.
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESBLOCK :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESBLOCK = DlpScanSummary_ScanOutcome "SCAN_SUCCEEDED_WITH_FAILURES_BLOCK"

-- | Rules were fetched but some evaluations failed. A warn violation was found in the rules that were successfully evaluated. The user will be warned, and the violation will be logged to BIP.
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESWARN :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESWARN = DlpScanSummary_ScanOutcome "SCAN_SUCCEEDED_WITH_FAILURES_WARN"

-- | Rules were fetched but some evaluations failed. An audit-only violation was found in the rules that were successfully evaluated. The violation will be logged to BIP (no user-facing action performed).
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESAUDITONLY :: DlpScanSummary_ScanOutcome
pattern DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESAUDITONLY = DlpScanSummary_ScanOutcome "SCAN_SUCCEEDED_WITH_FAILURES_AUDIT_ONLY"

{-# COMPLETE
  DlpScanSummary_ScanOutcome_SCANUNKNOWNOUTCOME,
  DlpScanSummary_ScanOutcome_SCANSUCCEEDEDNOVIOLATION,
  DlpScanSummary_ScanOutcome_SCANSUCCEEDEDBLOCK,
  DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWARN,
  DlpScanSummary_ScanOutcome_SCANSUCCEEDEDAUDITONLY,
  DlpScanSummary_ScanOutcome_SCANFAILUREEXCEPTION,
  DlpScanSummary_ScanOutcome_SCANFAILURERULEFETCHFAILED,
  DlpScanSummary_ScanOutcome_SCANFAILURETIMEOUT,
  DlpScanSummary_ScanOutcome_SCANFAILUREALLRULESFAILED,
  DlpScanSummary_ScanOutcome_SCANFAILUREILLEGALSTATEFORATTACHMENTS,
  DlpScanSummary_ScanOutcome_SCANSKIPPEDEXPERIMENTDISABLED,
  DlpScanSummary_ScanOutcome_SCANSKIPPEDCONSUMER,
  DlpScanSummary_ScanOutcome_SCANSKIPPEDNONHUMANUSER,
  DlpScanSummary_ScanOutcome_SCANSKIPPEDNOMESSAGE,
  DlpScanSummary_ScanOutcome_SCANSKIPPEDUSERACKNOWLEDGEDWARNING,
  DlpScanSummary_ScanOutcome_SCANSKIPPEDMESSAGEFROMUNSUPPORTEDORIGIN,
  DlpScanSummary_ScanOutcome_SCANSKIPPEDMESSAGESENTDURINGSPACEMIGRATION,
  DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNORULESFOUND,
  DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORACTIONPARAMS,
  DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDNOAPPLICABLERULESFORTRIGGER,
  DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGPERMANENTERROR,
  DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDCHANGELINGEMPTYRESPONSE,
  DlpScanSummary_ScanOutcome_SCANRULEEVALUATIONSKIPPEDUNSUPPORTEDFILETYPE,
  DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESNOVIOLATION,
  DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESBLOCK,
  DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESWARN,
  DlpScanSummary_ScanOutcome_SCANSUCCEEDEDWITHFAILURESAUDITONLY,
  DlpScanSummary_ScanOutcome
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

-- | DriveAction for organizing this file in Drive. If the user does not have access to the Drive file, the value will be DriveAction.DRIVE/ACTION/UNSPECIFIED. This field is only set when part of a FileResult in a ListFilesResponse.
newtype DriveMetadata_DriveAction = DriveMetadata_DriveAction {fromDriveMetadata_DriveAction :: Core.Text}
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

-- | No organize action should be shown.
pattern DriveMetadata_DriveAction_DRIVEACTIONUNSPECIFIED :: DriveMetadata_DriveAction
pattern DriveMetadata_DriveAction_DRIVEACTIONUNSPECIFIED = DriveMetadata_DriveAction "DRIVE_ACTION_UNSPECIFIED"

-- | Show \"Add to Drive\" button, for adding file that doesn\'t exist in Drive to Drive. Note that deleted Drive files that still exist (i.e. in your Trash) will still be ORGANIZE (this is consistent with Gmail Drive attachments).
pattern DriveMetadata_DriveAction_ADDTODRIVE :: DriveMetadata_DriveAction
pattern DriveMetadata_DriveAction_ADDTODRIVE = DriveMetadata_DriveAction "ADD_TO_DRIVE"

-- | Show \"Move\" button, for organizing a Drive file the user has permission to move.
pattern DriveMetadata_DriveAction_Organize :: DriveMetadata_DriveAction
pattern DriveMetadata_DriveAction_Organize = DriveMetadata_DriveAction "ORGANIZE"

-- | Show \"Add shortcut\" button, for adding a shortcut to a Drive file the user does not have permission to move.
pattern DriveMetadata_DriveAction_ADDSHORTCUT :: DriveMetadata_DriveAction
pattern DriveMetadata_DriveAction_ADDSHORTCUT = DriveMetadata_DriveAction "ADD_SHORTCUT"

-- | Show \"Add another shortcut\" button, for Drive files the user has already created a shortcut to.
pattern DriveMetadata_DriveAction_ADDANOTHERSHORTCUT :: DriveMetadata_DriveAction
pattern DriveMetadata_DriveAction_ADDANOTHERSHORTCUT = DriveMetadata_DriveAction "ADD_ANOTHER_SHORTCUT"

{-# COMPLETE
  DriveMetadata_DriveAction_DRIVEACTIONUNSPECIFIED,
  DriveMetadata_DriveAction_ADDTODRIVE,
  DriveMetadata_DriveAction_Organize,
  DriveMetadata_DriveAction_ADDSHORTCUT,
  DriveMetadata_DriveAction_ADDANOTHERSHORTCUT,
  DriveMetadata_DriveAction
  #-}

newtype DriveMetadata_DriveState = DriveMetadata_DriveState {fromDriveMetadata_DriveState :: Core.Text}
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

-- | Default value
pattern DriveMetadata_DriveState_DRIVESTATEUNSPECIFIED :: DriveMetadata_DriveState
pattern DriveMetadata_DriveState_DRIVESTATEUNSPECIFIED = DriveMetadata_DriveState "DRIVE_STATE_UNSPECIFIED"

-- | File in My Drive
pattern DriveMetadata_DriveState_INMYDRIVE :: DriveMetadata_DriveState
pattern DriveMetadata_DriveState_INMYDRIVE = DriveMetadata_DriveState "IN_MY_DRIVE"

-- | File in Team Drive
pattern DriveMetadata_DriveState_INTEAMDRIVE :: DriveMetadata_DriveState
pattern DriveMetadata_DriveState_INTEAMDRIVE = DriveMetadata_DriveState "IN_TEAM_DRIVE"

-- | File in someone else\'s Drive, but is shared with the current user
pattern DriveMetadata_DriveState_SHAREDINDRIVE :: DriveMetadata_DriveState
pattern DriveMetadata_DriveState_SHAREDINDRIVE = DriveMetadata_DriveState "SHARED_IN_DRIVE"

-- | File not in drive
pattern DriveMetadata_DriveState_NOTINDRIVE :: DriveMetadata_DriveState
pattern DriveMetadata_DriveState_NOTINDRIVE = DriveMetadata_DriveState "NOT_IN_DRIVE"

{-# COMPLETE
  DriveMetadata_DriveState_DRIVESTATEUNSPECIFIED,
  DriveMetadata_DriveState_INMYDRIVE,
  DriveMetadata_DriveState_INTEAMDRIVE,
  DriveMetadata_DriveState_SHAREDINDRIVE,
  DriveMetadata_DriveState_NOTINDRIVE,
  DriveMetadata_DriveState
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

newtype EmbedClientItem_TypeItem = EmbedClientItem_TypeItem {fromEmbedClientItem_TypeItem :: Core.Text}
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

-- | Largely deprecated, effectively an error condition and should not be in storage.
pattern EmbedClientItem_TypeItem_Unknown :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Unknown = EmbedClientItem_TypeItem "UNKNOWN"

-- | Embeds V2 types
pattern EmbedClientItem_TypeItem_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ACTION_V2 = EmbedClientItem_TypeItem "ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_ADD_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ADD_ACTION_V2 = EmbedClientItem_TypeItem "ADD_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_AGGREGATE_RATING_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AGGREGATE_RATING_V2 = EmbedClientItem_TypeItem "AGGREGATE_RATING_V2"

-- |
pattern EmbedClientItem_TypeItem_ARTICLE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ARTICLE_V2 = EmbedClientItem_TypeItem "ARTICLE_V2"

-- |
pattern EmbedClientItem_TypeItem_ASSESS_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ASSESS_ACTION_V2 = EmbedClientItem_TypeItem "ASSESS_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_AUDIO_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUDIO_OBJECT_V2 = EmbedClientItem_TypeItem "AUDIO_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_BASIC_INTERACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BASIC_INTERACTION_V2 = EmbedClientItem_TypeItem "BASIC_INTERACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_BLOG_POSTING_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BLOG_POSTING_V2 = EmbedClientItem_TypeItem "BLOG_POSTING_V2"

-- |
pattern EmbedClientItem_TypeItem_BLOG_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BLOG_V2 = EmbedClientItem_TypeItem "BLOG_V2"

-- |
pattern EmbedClientItem_TypeItem_BOOK_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BOOK_V2 = EmbedClientItem_TypeItem "BOOK_V2"

-- |
pattern EmbedClientItem_TypeItem_BUY_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BUY_ACTION_V2 = EmbedClientItem_TypeItem "BUY_ACTION_V2"

-- | The action of checking in, as opposed to a \"check-in\".
pattern EmbedClientItem_TypeItem_CHECK_IN_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CHECK_IN_ACTION_V2 = EmbedClientItem_TypeItem "CHECK_IN_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_CHECKIN_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CHECKIN_V2 = EmbedClientItem_TypeItem "CHECKIN_V2"

-- |
pattern EmbedClientItem_TypeItem_COLLEXION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COLLEXION_V2 = EmbedClientItem_TypeItem "COLLEXION_V2"

-- | The act of commenting, which might result in a comment.
pattern EmbedClientItem_TypeItem_COMMENT_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COMMENT_ACTION_V2 = EmbedClientItem_TypeItem "COMMENT_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_COMMENT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COMMENT_V2 = EmbedClientItem_TypeItem "COMMENT_V2"

-- |
pattern EmbedClientItem_TypeItem_COMMUNICATE_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COMMUNICATE_ACTION_V2 = EmbedClientItem_TypeItem "COMMUNICATE_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_CONSUME_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CONSUME_ACTION_V2 = EmbedClientItem_TypeItem "CONSUME_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_CREATE_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CREATE_ACTION_V2 = EmbedClientItem_TypeItem "CREATE_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_CREATIVE_WORK_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CREATIVE_WORK_V2 = EmbedClientItem_TypeItem "CREATIVE_WORK_V2"

-- |
pattern EmbedClientItem_TypeItem_DISCOVER_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DISCOVER_ACTION_V2 = EmbedClientItem_TypeItem "DISCOVER_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_DOCUMENT_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DOCUMENT_OBJECT_V2 = EmbedClientItem_TypeItem "DOCUMENT_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_DRAWING_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DRAWING_OBJECT_V2 = EmbedClientItem_TypeItem "DRAWING_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_DRIVE_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DRIVE_OBJECT_V2 = EmbedClientItem_TypeItem "DRIVE_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_EMOTISHARE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EMOTISHARE_V2 = EmbedClientItem_TypeItem "EMOTISHARE_V2"

-- |
pattern EmbedClientItem_TypeItem_ENTRY_POINT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ENTRY_POINT_V2 = EmbedClientItem_TypeItem "ENTRY_POINT_V2"

-- |
pattern EmbedClientItem_TypeItem_EVENT_TIME_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EVENT_TIME_V2 = EmbedClientItem_TypeItem "EVENT_TIME_V2"

-- |
pattern EmbedClientItem_TypeItem_EVENT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EVENT_V2 = EmbedClientItem_TypeItem "EVENT_V2"

-- |
pattern EmbedClientItem_TypeItem_FILE_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FILE_OBJECT_V2 = EmbedClientItem_TypeItem "FILE_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_FIND_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FIND_ACTION_V2 = EmbedClientItem_TypeItem "FIND_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_FINANCIAL_QUOTE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FINANCIAL_QUOTE_V2 = EmbedClientItem_TypeItem "FINANCIAL_QUOTE_V2"

-- |
pattern EmbedClientItem_TypeItem_FORM_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FORM_OBJECT_V2 = EmbedClientItem_TypeItem "FORM_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_GEO_COORDINATES_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GEO_COORDINATES_V2 = EmbedClientItem_TypeItem "GEO_COORDINATES_V2"

-- |
pattern EmbedClientItem_TypeItem_GOOGLE_OFFER_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOOGLE_OFFER_V2 = EmbedClientItem_TypeItem "GOOGLE_OFFER_V2"

-- |
pattern EmbedClientItem_TypeItem_HANGOUTCHATMESSAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HANGOUTCHATMESSAGE = EmbedClientItem_TypeItem "HANGOUT_CHAT_MESSAGE"

-- |
pattern EmbedClientItem_TypeItem_HANGOUTQUOTE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HANGOUTQUOTE = EmbedClientItem_TypeItem "HANGOUT_QUOTE"

-- |
pattern EmbedClientItem_TypeItem_HANGOUT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HANGOUT_V2 = EmbedClientItem_TypeItem "HANGOUT_V2"

-- |
pattern EmbedClientItem_TypeItem_HOA_PLUS_EVENT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HOA_PLUS_EVENT_V2 = EmbedClientItem_TypeItem "HOA_PLUS_EVENT_V2"

-- |
pattern EmbedClientItem_TypeItem_IMAGE_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_IMAGE_OBJECT_V2 = EmbedClientItem_TypeItem "IMAGE_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_INTERACT_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_INTERACT_ACTION_V2 = EmbedClientItem_TypeItem "INTERACT_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_INTERACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_INTERACTION_V2 = EmbedClientItem_TypeItem "INTERACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_LISTEN_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LISTEN_ACTION_V2 = EmbedClientItem_TypeItem "LISTEN_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_LOCAL_BUSINESS_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LOCAL_BUSINESS_V2 = EmbedClientItem_TypeItem "LOCAL_BUSINESS_V2"

-- |
pattern EmbedClientItem_TypeItem_LOCAL_PLUS_PHOTO_ALBUM_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LOCAL_PLUS_PHOTO_ALBUM_V2 = EmbedClientItem_TypeItem "LOCAL_PLUS_PHOTO_ALBUM_V2"

-- |
pattern EmbedClientItem_TypeItem_MAGAZINE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MAGAZINE_V2 = EmbedClientItem_TypeItem "MAGAZINE_V2"

-- |
pattern EmbedClientItem_TypeItem_MEDIA_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MEDIA_OBJECT_V2 = EmbedClientItem_TypeItem "MEDIA_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_MOBILE_APPLICATION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOBILE_APPLICATION_V2 = EmbedClientItem_TypeItem "MOBILE_APPLICATION_V2"

-- |
pattern EmbedClientItem_TypeItem_MOVIE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOVIE_V2 = EmbedClientItem_TypeItem "MOVIE_V2"

-- |
pattern EmbedClientItem_TypeItem_MUSIC_ALBUM_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSIC_ALBUM_V2 = EmbedClientItem_TypeItem "MUSIC_ALBUM_V2"

-- |
pattern EmbedClientItem_TypeItem_MUSIC_GROUP_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSIC_GROUP_V2 = EmbedClientItem_TypeItem "MUSIC_GROUP_V2"

-- |
pattern EmbedClientItem_TypeItem_MUSIC_PLAYLIST_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSIC_PLAYLIST_V2 = EmbedClientItem_TypeItem "MUSIC_PLAYLIST_V2"

-- |
pattern EmbedClientItem_TypeItem_MUSIC_RECORDING_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSIC_RECORDING_V2 = EmbedClientItem_TypeItem "MUSIC_RECORDING_V2"

-- |
pattern EmbedClientItem_TypeItem_NEWS_ARTICLE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_NEWS_ARTICLE_V2 = EmbedClientItem_TypeItem "NEWS_ARTICLE_V2"

-- |
pattern EmbedClientItem_TypeItem_OFFER_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_OFFER_V2 = EmbedClientItem_TypeItem "OFFER_V2"

-- |
pattern EmbedClientItem_TypeItem_ORGANIZATION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ORGANIZATION_V2 = EmbedClientItem_TypeItem "ORGANIZATION_V2"

-- |
pattern EmbedClientItem_TypeItem_ORGANIZE_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ORGANIZE_ACTION_V2 = EmbedClientItem_TypeItem "ORGANIZE_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_PERSON_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PERSON_V2 = EmbedClientItem_TypeItem "PERSON_V2"

-- |
pattern EmbedClientItem_TypeItem_PLACE_REVIEW_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLACE_REVIEW_V2 = EmbedClientItem_TypeItem "PLACE_REVIEW_V2"

-- |
pattern EmbedClientItem_TypeItem_PLACE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLACE_V2 = EmbedClientItem_TypeItem "PLACE_V2"

-- |
pattern EmbedClientItem_TypeItem_PLAN_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLAN_ACTION_V2 = EmbedClientItem_TypeItem "PLAN_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_PLAY_MUSIC_ALBUM_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLAY_MUSIC_ALBUM_V2 = EmbedClientItem_TypeItem "PLAY_MUSIC_ALBUM_V2"

-- |
pattern EmbedClientItem_TypeItem_PLAY_MUSIC_TRACK_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLAY_MUSIC_TRACK_V2 = EmbedClientItem_TypeItem "PLAY_MUSIC_TRACK_V2"

-- |
pattern EmbedClientItem_TypeItem_PLAY_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLAY_OBJECT_V2 = EmbedClientItem_TypeItem "PLAY_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_AUDIO_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_AUDIO_V2 = EmbedClientItem_TypeItem "PLUS_AUDIO_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_EVENT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_EVENT_V2 = EmbedClientItem_TypeItem "PLUS_EVENT_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_MEDIA_COLLECTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_MEDIA_COLLECTION_V2 = EmbedClientItem_TypeItem "PLUS_MEDIA_COLLECTION_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_MEDIA_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_MEDIA_OBJECT_V2 = EmbedClientItem_TypeItem "PLUS_MEDIA_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_PAGE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_PAGE_V2 = EmbedClientItem_TypeItem "PLUS_PAGE_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_PHOTOS_ADDED_TO_COLLECTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_PHOTOS_ADDED_TO_COLLECTION_V2 = EmbedClientItem_TypeItem "PLUS_PHOTOS_ADDED_TO_COLLECTION_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_PHOTO_ALBUM_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_PHOTO_ALBUM_V2 = EmbedClientItem_TypeItem "PLUS_PHOTO_ALBUM_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_PHOTO_COLLECTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_PHOTO_COLLECTION_V2 = EmbedClientItem_TypeItem "PLUS_PHOTO_COLLECTION_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_PHOTO_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_PHOTO_V2 = EmbedClientItem_TypeItem "PLUS_PHOTO_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_POST_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_POST_V2 = EmbedClientItem_TypeItem "PLUS_POST_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_RESHARE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_RESHARE_V2 = EmbedClientItem_TypeItem "PLUS_RESHARE_V2"

-- |
pattern EmbedClientItem_TypeItem_PLUS_SOFTWARE_APPLICATION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUS_SOFTWARE_APPLICATION_V2 = EmbedClientItem_TypeItem "PLUS_SOFTWARE_APPLICATION_V2"

-- |
pattern EmbedClientItem_TypeItem_POLL_OPTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_POLL_OPTION_V2 = EmbedClientItem_TypeItem "POLL_OPTION_V2"

-- |
pattern EmbedClientItem_TypeItem_POLL_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_POLL_V2 = EmbedClientItem_TypeItem "POLL_V2"

-- |
pattern EmbedClientItem_TypeItem_POSTAL_ADDRESS_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_POSTAL_ADDRESS_V2 = EmbedClientItem_TypeItem "POSTAL_ADDRESS_V2"

-- |
pattern EmbedClientItem_TypeItem_PRESENTATION_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PRESENTATION_OBJECT_V2 = EmbedClientItem_TypeItem "PRESENTATION_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_PRODUCT_REVIEW_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PRODUCT_REVIEW_V2 = EmbedClientItem_TypeItem "PRODUCT_REVIEW_V2"

-- |
pattern EmbedClientItem_TypeItem_RATING_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_RATING_V2 = EmbedClientItem_TypeItem "RATING_V2"

-- |
pattern EmbedClientItem_TypeItem_REACT_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_REACT_ACTION_V2 = EmbedClientItem_TypeItem "REACT_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_RESERVATION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_RESERVATION_V2 = EmbedClientItem_TypeItem "RESERVATION_V2"

-- |
pattern EmbedClientItem_TypeItem_RESERVE_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_RESERVE_ACTION_V2 = EmbedClientItem_TypeItem "RESERVE_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_REVIEW_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_REVIEW_V2 = EmbedClientItem_TypeItem "REVIEW_V2"

-- |
pattern EmbedClientItem_TypeItem_REVIEW_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_REVIEW_ACTION_V2 = EmbedClientItem_TypeItem "REVIEW_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_SOFTWARE_APPLICATION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SOFTWARE_APPLICATION_V2 = EmbedClientItem_TypeItem "SOFTWARE_APPLICATION_V2"

-- |
pattern EmbedClientItem_TypeItem_SPREADSHEET_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SPREADSHEET_OBJECT_V2 = EmbedClientItem_TypeItem "SPREADSHEET_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_SQUARE_INVITE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SQUARE_INVITE_V2 = EmbedClientItem_TypeItem "SQUARE_INVITE_V2"

-- |
pattern EmbedClientItem_TypeItem_SQUARE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SQUARE_V2 = EmbedClientItem_TypeItem "SQUARE_V2"

-- |
pattern EmbedClientItem_TypeItem_STICKER_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_STICKER_V2 = EmbedClientItem_TypeItem "STICKER_V2"

-- | Boswell story (see goto\/boswell)
pattern EmbedClientItem_TypeItem_STORY_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_STORY_V2 = EmbedClientItem_TypeItem "STORY_V2"

-- |
pattern EmbedClientItem_TypeItem_THING_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_THING_V2 = EmbedClientItem_TypeItem "THING_V2"

-- |
pattern EmbedClientItem_TypeItem_TRADE_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TRADE_ACTION_V2 = EmbedClientItem_TypeItem "TRADE_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_DEPRECATED_TOUR_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DEPRECATED_TOUR_OBJECT_V2 = EmbedClientItem_TypeItem "DEPRECATED_TOUR_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_TV_EPISODE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TV_EPISODE_V2 = EmbedClientItem_TypeItem "TV_EPISODE_V2"

-- |
pattern EmbedClientItem_TypeItem_TV_SERIES_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TV_SERIES_V2 = EmbedClientItem_TypeItem "TV_SERIES_V2"

-- |
pattern EmbedClientItem_TypeItem_UPDATE_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_UPDATE_ACTION_V2 = EmbedClientItem_TypeItem "UPDATE_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_VIEW_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_VIEW_ACTION_V2 = EmbedClientItem_TypeItem "VIEW_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_VIDEO_OBJECT_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_VIDEO_OBJECT_V2 = EmbedClientItem_TypeItem "VIDEO_OBJECT_V2"

-- |
pattern EmbedClientItem_TypeItem_VIDEO_GALLERY_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_VIDEO_GALLERY_V2 = EmbedClientItem_TypeItem "VIDEO_GALLERY_V2"

-- |
pattern EmbedClientItem_TypeItem_WANT_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WANT_ACTION_V2 = EmbedClientItem_TypeItem "WANT_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_WEB_PAGE_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WEB_PAGE_V2 = EmbedClientItem_TypeItem "WEB_PAGE_V2"

-- |
pattern EmbedClientItem_TypeItem_WRITE_ACTION_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WRITE_ACTION_V2 = EmbedClientItem_TypeItem "WRITE_ACTION_V2"

-- |
pattern EmbedClientItem_TypeItem_YOUTUBE_CHANNEL_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_YOUTUBE_CHANNEL_V2 = EmbedClientItem_TypeItem "YOUTUBE_CHANNEL_V2"

-- | A photo stored in photo service owned by a Google account user. This is distinct from PlusPhoto as it isn\'t tied to GPlus, but is instead intended to be a more general photo tied to a google user.
pattern EmbedClientItem_TypeItem_GOOGLE_USER_PHOTO_V2 :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOOGLE_USER_PHOTO_V2 = EmbedClientItem_TypeItem "GOOGLE_USER_PHOTO_V2"

-- | A photo album in photo service owned by a Google account user. This is distinct from PlusPhotoAlbum as it isn\'t tied to GPlus, but is instead intended to be a general photo album tied to a google user.
pattern EmbedClientItem_TypeItem_GOOGLEUSERPHOTOALBUM :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOOGLEUSERPHOTOALBUM = EmbedClientItem_TypeItem "GOOGLE_USER_PHOTO_ALBUM"

-- | An embed used to create a single photo in photo service. This type is never stored but is used to create a GOOGLE/USER/PHOTO/V2 or PLUS/PHOTO_V2 embed.
pattern EmbedClientItem_TypeItem_GOOGLEPHOTORECIPE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOOGLEPHOTORECIPE = EmbedClientItem_TypeItem "GOOGLE_PHOTO_RECIPE"

-- | Embeds V1 types
pattern EmbedClientItem_TypeItem_Thing :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Thing = EmbedClientItem_TypeItem "THING"

-- |
pattern EmbedClientItem_TypeItem_CREATIVEWORK :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CREATIVEWORK = EmbedClientItem_TypeItem "CREATIVE_WORK"

-- |
pattern EmbedClientItem_TypeItem_Event :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Event = EmbedClientItem_TypeItem "EVENT"

-- |
pattern EmbedClientItem_TypeItem_Intangible :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Intangible = EmbedClientItem_TypeItem "INTANGIBLE"

-- |
pattern EmbedClientItem_TypeItem_Organization :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Organization = EmbedClientItem_TypeItem "ORGANIZATION"

-- |
pattern EmbedClientItem_TypeItem_Person :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Person = EmbedClientItem_TypeItem "PERSON"

-- |
pattern EmbedClientItem_TypeItem_Place :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Place = EmbedClientItem_TypeItem "PLACE"

-- |
pattern EmbedClientItem_TypeItem_Product :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Product = EmbedClientItem_TypeItem "PRODUCT"

-- | CREATIVE_WORK subtypes
pattern EmbedClientItem_TypeItem_Article :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Article = EmbedClientItem_TypeItem "ARTICLE"

-- |
pattern EmbedClientItem_TypeItem_BLOGPOSTING :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BLOGPOSTING = EmbedClientItem_TypeItem "BLOG_POSTING"

-- |
pattern EmbedClientItem_TypeItem_NEWSARTICLE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_NEWSARTICLE = EmbedClientItem_TypeItem "NEWS_ARTICLE"

-- |
pattern EmbedClientItem_TypeItem_SCHOLARLYARTICLE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SCHOLARLYARTICLE = EmbedClientItem_TypeItem "SCHOLARLY_ARTICLE"

-- |
pattern EmbedClientItem_TypeItem_Blog :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Blog = EmbedClientItem_TypeItem "BLOG"

-- |
pattern EmbedClientItem_TypeItem_Book :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Book = EmbedClientItem_TypeItem "BOOK"

-- |
pattern EmbedClientItem_TypeItem_Comment :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Comment = EmbedClientItem_TypeItem "COMMENT"

-- |
pattern EmbedClientItem_TypeItem_ITEMLIST :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ITEMLIST = EmbedClientItem_TypeItem "ITEM_LIST"

-- |
pattern EmbedClientItem_TypeItem_Map :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Map = EmbedClientItem_TypeItem "MAP"

-- |
pattern EmbedClientItem_TypeItem_MEDIAOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MEDIAOBJECT = EmbedClientItem_TypeItem "MEDIA_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_AUDIOOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUDIOOBJECT = EmbedClientItem_TypeItem "AUDIO_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_IMAGEOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_IMAGEOBJECT = EmbedClientItem_TypeItem "IMAGE_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_MUSICVIDEOOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSICVIDEOOBJECT = EmbedClientItem_TypeItem "MUSIC_VIDEO_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_VIDEOOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_VIDEOOBJECT = EmbedClientItem_TypeItem "VIDEO_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_Movie :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Movie = EmbedClientItem_TypeItem "MOVIE"

-- |
pattern EmbedClientItem_TypeItem_MUSICPLAYLIST :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSICPLAYLIST = EmbedClientItem_TypeItem "MUSIC_PLAYLIST"

-- |
pattern EmbedClientItem_TypeItem_MUSICALBUM :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSICALBUM = EmbedClientItem_TypeItem "MUSIC_ALBUM"

-- |
pattern EmbedClientItem_TypeItem_MUSICRECORDING :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSICRECORDING = EmbedClientItem_TypeItem "MUSIC_RECORDING"

-- |
pattern EmbedClientItem_TypeItem_Painting :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Painting = EmbedClientItem_TypeItem "PAINTING"

-- |
pattern EmbedClientItem_TypeItem_Photograph :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Photograph = EmbedClientItem_TypeItem "PHOTOGRAPH"

-- |
pattern EmbedClientItem_TypeItem_Recipe :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Recipe = EmbedClientItem_TypeItem "RECIPE"

-- |
pattern EmbedClientItem_TypeItem_Review :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Review = EmbedClientItem_TypeItem "REVIEW"

-- |
pattern EmbedClientItem_TypeItem_Sculpture :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Sculpture = EmbedClientItem_TypeItem "SCULPTURE"

-- |
pattern EmbedClientItem_TypeItem_SOFTWAREAPPLICATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SOFTWAREAPPLICATION = EmbedClientItem_TypeItem "SOFTWARE_APPLICATION"

-- |
pattern EmbedClientItem_TypeItem_MOBILEAPPLICATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOBILEAPPLICATION = EmbedClientItem_TypeItem "MOBILE_APPLICATION"

-- |
pattern EmbedClientItem_TypeItem_WEBAPPLICATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WEBAPPLICATION = EmbedClientItem_TypeItem "WEB_APPLICATION"

-- |
pattern EmbedClientItem_TypeItem_TVEPISODE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TVEPISODE = EmbedClientItem_TypeItem "TV_EPISODE"

-- |
pattern EmbedClientItem_TypeItem_TVSEASON :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TVSEASON = EmbedClientItem_TypeItem "TV_SEASON"

-- |
pattern EmbedClientItem_TypeItem_TVSERIES :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TVSERIES = EmbedClientItem_TypeItem "TV_SERIES"

-- |
pattern EmbedClientItem_TypeItem_WEBPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WEBPAGE = EmbedClientItem_TypeItem "WEB_PAGE"

-- |
pattern EmbedClientItem_TypeItem_ABOUTPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ABOUTPAGE = EmbedClientItem_TypeItem "ABOUT_PAGE"

-- |
pattern EmbedClientItem_TypeItem_CHECKOUTPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CHECKOUTPAGE = EmbedClientItem_TypeItem "CHECKOUT_PAGE"

-- |
pattern EmbedClientItem_TypeItem_COLLECTIONPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COLLECTIONPAGE = EmbedClientItem_TypeItem "COLLECTION_PAGE"

-- |
pattern EmbedClientItem_TypeItem_IMAGEGALLERY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_IMAGEGALLERY = EmbedClientItem_TypeItem "IMAGE_GALLERY"

-- |
pattern EmbedClientItem_TypeItem_VIDEOGALLERY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_VIDEOGALLERY = EmbedClientItem_TypeItem "VIDEO_GALLERY"

-- |
pattern EmbedClientItem_TypeItem_CONTACTPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CONTACTPAGE = EmbedClientItem_TypeItem "CONTACT_PAGE"

-- |
pattern EmbedClientItem_TypeItem_ITEMPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ITEMPAGE = EmbedClientItem_TypeItem "ITEM_PAGE"

-- |
pattern EmbedClientItem_TypeItem_PROFILEPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PROFILEPAGE = EmbedClientItem_TypeItem "PROFILE_PAGE"

-- |
pattern EmbedClientItem_TypeItem_SEARCHRESULTSPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SEARCHRESULTSPAGE = EmbedClientItem_TypeItem "SEARCH_RESULTS_PAGE"

-- |
pattern EmbedClientItem_TypeItem_WEBPAGEELEMENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WEBPAGEELEMENT = EmbedClientItem_TypeItem "WEB_PAGE_ELEMENT"

-- |
pattern EmbedClientItem_TypeItem_SITENAVIGATIONELEMENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SITENAVIGATIONELEMENT = EmbedClientItem_TypeItem "SITE_NAVIGATION_ELEMENT"

-- |
pattern EmbedClientItem_TypeItem_Table :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Table = EmbedClientItem_TypeItem "TABLE"

-- |
pattern EmbedClientItem_TypeItem_WPADBLOCK :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WPADBLOCK = EmbedClientItem_TypeItem "WP_AD_BLOCK"

-- |
pattern EmbedClientItem_TypeItem_WPFOOTER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WPFOOTER = EmbedClientItem_TypeItem "WP_FOOTER"

-- |
pattern EmbedClientItem_TypeItem_WPHEADER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WPHEADER = EmbedClientItem_TypeItem "WP_HEADER"

-- |
pattern EmbedClientItem_TypeItem_WPSIDEBAR :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WPSIDEBAR = EmbedClientItem_TypeItem "WP_SIDEBAR"

-- |
pattern EmbedClientItem_TypeItem_APPINVITE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_APPINVITE = EmbedClientItem_TypeItem "APP_INVITE"

-- |
pattern EmbedClientItem_TypeItem_Emotishare :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Emotishare = EmbedClientItem_TypeItem "EMOTISHARE"

-- | EVENT subtypes
pattern EmbedClientItem_TypeItem_BUSINESSEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BUSINESSEVENT = EmbedClientItem_TypeItem "BUSINESS_EVENT"

-- |
pattern EmbedClientItem_TypeItem_CHILDRENSEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CHILDRENSEVENT = EmbedClientItem_TypeItem "CHILDRENS_EVENT"

-- |
pattern EmbedClientItem_TypeItem_COMEDYEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COMEDYEVENT = EmbedClientItem_TypeItem "COMEDY_EVENT"

-- |
pattern EmbedClientItem_TypeItem_DANCEEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DANCEEVENT = EmbedClientItem_TypeItem "DANCE_EVENT"

-- |
pattern EmbedClientItem_TypeItem_EDUCATIONEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EDUCATIONEVENT = EmbedClientItem_TypeItem "EDUCATION_EVENT"

-- |
pattern EmbedClientItem_TypeItem_Festival :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Festival = EmbedClientItem_TypeItem "FESTIVAL"

-- |
pattern EmbedClientItem_TypeItem_FOODEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FOODEVENT = EmbedClientItem_TypeItem "FOOD_EVENT"

-- |
pattern EmbedClientItem_TypeItem_LITERARYEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LITERARYEVENT = EmbedClientItem_TypeItem "LITERARY_EVENT"

-- |
pattern EmbedClientItem_TypeItem_MUSICEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSICEVENT = EmbedClientItem_TypeItem "MUSIC_EVENT"

-- |
pattern EmbedClientItem_TypeItem_SALEEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SALEEVENT = EmbedClientItem_TypeItem "SALE_EVENT"

-- |
pattern EmbedClientItem_TypeItem_SOCIALEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SOCIALEVENT = EmbedClientItem_TypeItem "SOCIAL_EVENT"

-- |
pattern EmbedClientItem_TypeItem_SPORTSEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SPORTSEVENT = EmbedClientItem_TypeItem "SPORTS_EVENT"

-- |
pattern EmbedClientItem_TypeItem_THEATEREVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_THEATEREVENT = EmbedClientItem_TypeItem "THEATER_EVENT"

-- |
pattern EmbedClientItem_TypeItem_VISUALARTSEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_VISUALARTSEVENT = EmbedClientItem_TypeItem "VISUAL_ARTS_EVENT"

-- |
pattern EmbedClientItem_TypeItem_Reservation :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Reservation = EmbedClientItem_TypeItem "RESERVATION"

-- |
pattern EmbedClientItem_TypeItem_TRAVELEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TRAVELEVENT = EmbedClientItem_TypeItem "TRAVEL_EVENT"

-- | ORGANIZATION subtypes
pattern EmbedClientItem_TypeItem_Corporation :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Corporation = EmbedClientItem_TypeItem "CORPORATION"

-- |
pattern EmbedClientItem_TypeItem_EDUCATIONALORGANIZATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EDUCATIONALORGANIZATION = EmbedClientItem_TypeItem "EDUCATIONAL_ORGANIZATION"

-- |
pattern EmbedClientItem_TypeItem_COLLEGEORUNIVERSITY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COLLEGEORUNIVERSITY = EmbedClientItem_TypeItem "COLLEGE_OR_UNIVERSITY"

-- |
pattern EmbedClientItem_TypeItem_ELEMENTARYSCHOOL :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ELEMENTARYSCHOOL = EmbedClientItem_TypeItem "ELEMENTARY_SCHOOL"

-- |
pattern EmbedClientItem_TypeItem_HIGHSCHOOL :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HIGHSCHOOL = EmbedClientItem_TypeItem "HIGH_SCHOOL"

-- |
pattern EmbedClientItem_TypeItem_MIDDLESCHOOL :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MIDDLESCHOOL = EmbedClientItem_TypeItem "MIDDLE_SCHOOL"

-- |
pattern EmbedClientItem_TypeItem_Preschool :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Preschool = EmbedClientItem_TypeItem "PRESCHOOL"

-- |
pattern EmbedClientItem_TypeItem_School :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_School = EmbedClientItem_TypeItem "SCHOOL"

-- |
pattern EmbedClientItem_TypeItem_GOVERNMENTORGANIZATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOVERNMENTORGANIZATION = EmbedClientItem_TypeItem "GOVERNMENT_ORGANIZATION"

-- |
pattern EmbedClientItem_TypeItem_LOCALBUSINESS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LOCALBUSINESS = EmbedClientItem_TypeItem "LOCAL_BUSINESS"

-- |
pattern EmbedClientItem_TypeItem_ANIMALSHELTER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ANIMALSHELTER = EmbedClientItem_TypeItem "ANIMAL_SHELTER"

-- |
pattern EmbedClientItem_TypeItem_AUTOMOTIVEBUSINESS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUTOMOTIVEBUSINESS = EmbedClientItem_TypeItem "AUTOMOTIVE_BUSINESS"

-- |
pattern EmbedClientItem_TypeItem_AUTOBODYSHOP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUTOBODYSHOP = EmbedClientItem_TypeItem "AUTO_BODY_SHOP"

-- |
pattern EmbedClientItem_TypeItem_AUTODEALER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUTODEALER = EmbedClientItem_TypeItem "AUTO_DEALER"

-- |
pattern EmbedClientItem_TypeItem_AUTOPARTSSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUTOPARTSSTORE = EmbedClientItem_TypeItem "AUTO_PARTS_STORE"

-- |
pattern EmbedClientItem_TypeItem_AUTORENTAL :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUTORENTAL = EmbedClientItem_TypeItem "AUTO_RENTAL"

-- |
pattern EmbedClientItem_TypeItem_AUTOREPAIR :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUTOREPAIR = EmbedClientItem_TypeItem "AUTO_REPAIR"

-- |
pattern EmbedClientItem_TypeItem_AUTOWASH :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUTOWASH = EmbedClientItem_TypeItem "AUTO_WASH"

-- |
pattern EmbedClientItem_TypeItem_GASSTATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GASSTATION = EmbedClientItem_TypeItem "GAS_STATION"

-- |
pattern EmbedClientItem_TypeItem_MOTORCYCLEDEALER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOTORCYCLEDEALER = EmbedClientItem_TypeItem "MOTORCYCLE_DEALER"

-- |
pattern EmbedClientItem_TypeItem_MOTORCYCLEREPAIR :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOTORCYCLEREPAIR = EmbedClientItem_TypeItem "MOTORCYCLE_REPAIR"

-- |
pattern EmbedClientItem_TypeItem_CHILDCARE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CHILDCARE = EmbedClientItem_TypeItem "CHILD_CARE"

-- |
pattern EmbedClientItem_TypeItem_DRYCLEANINGORLAUNDRY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DRYCLEANINGORLAUNDRY = EmbedClientItem_TypeItem "DRY_CLEANING_OR_LAUNDRY"

-- |
pattern EmbedClientItem_TypeItem_EMERGENCYSERVICE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EMERGENCYSERVICE = EmbedClientItem_TypeItem "EMERGENCY_SERVICE"

-- |
pattern EmbedClientItem_TypeItem_FIRESTATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FIRESTATION = EmbedClientItem_TypeItem "FIRE_STATION"

-- |
pattern EmbedClientItem_TypeItem_Hospital :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Hospital = EmbedClientItem_TypeItem "HOSPITAL"

-- |
pattern EmbedClientItem_TypeItem_POLICESTATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_POLICESTATION = EmbedClientItem_TypeItem "POLICE_STATION"

-- |
pattern EmbedClientItem_TypeItem_EMPLOYMENTAGENGY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EMPLOYMENTAGENGY = EmbedClientItem_TypeItem "EMPLOYMENT_AGENGY"

-- |
pattern EmbedClientItem_TypeItem_ENTERTAINMENTBUSINESS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ENTERTAINMENTBUSINESS = EmbedClientItem_TypeItem "ENTERTAINMENT_BUSINESS"

-- |
pattern EmbedClientItem_TypeItem_ADULTENTERTAINMENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ADULTENTERTAINMENT = EmbedClientItem_TypeItem "ADULT_ENTERTAINMENT"

-- |
pattern EmbedClientItem_TypeItem_AMUSEMENTPARK :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AMUSEMENTPARK = EmbedClientItem_TypeItem "AMUSEMENT_PARK"

-- |
pattern EmbedClientItem_TypeItem_ARTGALLERY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ARTGALLERY = EmbedClientItem_TypeItem "ART_GALLERY"

-- |
pattern EmbedClientItem_TypeItem_Casino :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Casino = EmbedClientItem_TypeItem "CASINO"

-- |
pattern EmbedClientItem_TypeItem_COMEDYCLUB :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COMEDYCLUB = EmbedClientItem_TypeItem "COMEDY_CLUB"

-- |
pattern EmbedClientItem_TypeItem_MOVIETHEATER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOVIETHEATER = EmbedClientItem_TypeItem "MOVIE_THEATER"

-- |
pattern EmbedClientItem_TypeItem_NIGHTCLUB :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_NIGHTCLUB = EmbedClientItem_TypeItem "NIGHT_CLUB"

-- |
pattern EmbedClientItem_TypeItem_FINANCIALSERVICE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FINANCIALSERVICE = EmbedClientItem_TypeItem "FINANCIAL_SERVICE"

-- |
pattern EmbedClientItem_TypeItem_ACCOUNTINGSERVICE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ACCOUNTINGSERVICE = EmbedClientItem_TypeItem "ACCOUNTING_SERVICE"

-- |
pattern EmbedClientItem_TypeItem_AUTOMATEDTELLER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AUTOMATEDTELLER = EmbedClientItem_TypeItem "AUTOMATED_TELLER"

-- |
pattern EmbedClientItem_TypeItem_BANKORCREDITUNION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BANKORCREDITUNION = EmbedClientItem_TypeItem "BANK_OR_CREDIT_UNION"

-- |
pattern EmbedClientItem_TypeItem_INSURANCEAGENCY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_INSURANCEAGENCY = EmbedClientItem_TypeItem "INSURANCE_AGENCY"

-- |
pattern EmbedClientItem_TypeItem_FOODESTABLISHMENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FOODESTABLISHMENT = EmbedClientItem_TypeItem "FOOD_ESTABLISHMENT"

-- |
pattern EmbedClientItem_TypeItem_Bakery :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Bakery = EmbedClientItem_TypeItem "BAKERY"

-- |
pattern EmbedClientItem_TypeItem_BARORPUB :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BARORPUB = EmbedClientItem_TypeItem "BAR_OR_PUB"

-- |
pattern EmbedClientItem_TypeItem_Brewery :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Brewery = EmbedClientItem_TypeItem "BREWERY"

-- |
pattern EmbedClientItem_TypeItem_CAFEORCOFFEESHOP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CAFEORCOFFEESHOP = EmbedClientItem_TypeItem "CAFE_OR_COFFEE_SHOP"

-- |
pattern EmbedClientItem_TypeItem_FASTFOODRESTAURANT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FASTFOODRESTAURANT = EmbedClientItem_TypeItem "FAST_FOOD_RESTAURANT"

-- |
pattern EmbedClientItem_TypeItem_ICECREAMSHOP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ICECREAMSHOP = EmbedClientItem_TypeItem "ICE_CREAM_SHOP"

-- |
pattern EmbedClientItem_TypeItem_Restaurant :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Restaurant = EmbedClientItem_TypeItem "RESTAURANT"

-- |
pattern EmbedClientItem_TypeItem_Winery :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Winery = EmbedClientItem_TypeItem "WINERY"

-- |
pattern EmbedClientItem_TypeItem_GOVERNMENTOFFICE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOVERNMENTOFFICE = EmbedClientItem_TypeItem "GOVERNMENT_OFFICE"

-- |
pattern EmbedClientItem_TypeItem_POSTOFFICE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_POSTOFFICE = EmbedClientItem_TypeItem "POST_OFFICE"

-- |
pattern EmbedClientItem_TypeItem_HEALTHANDBEAUTYBUSINESS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HEALTHANDBEAUTYBUSINESS = EmbedClientItem_TypeItem "HEALTH_AND_BEAUTY_BUSINESS"

-- |
pattern EmbedClientItem_TypeItem_BEAUTYSALON :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BEAUTYSALON = EmbedClientItem_TypeItem "BEAUTY_SALON"

-- |
pattern EmbedClientItem_TypeItem_DAYSPA :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DAYSPA = EmbedClientItem_TypeItem "DAY_SPA"

-- |
pattern EmbedClientItem_TypeItem_HAIRSALON :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HAIRSALON = EmbedClientItem_TypeItem "HAIR_SALON"

-- |
pattern EmbedClientItem_TypeItem_HEALTHCLUB :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HEALTHCLUB = EmbedClientItem_TypeItem "HEALTH_CLUB"

-- |
pattern EmbedClientItem_TypeItem_NAILSALON :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_NAILSALON = EmbedClientItem_TypeItem "NAIL_SALON"

-- |
pattern EmbedClientItem_TypeItem_TATTOOPARLOR :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TATTOOPARLOR = EmbedClientItem_TypeItem "TATTOO_PARLOR"

-- |
pattern EmbedClientItem_TypeItem_HOMEANDCONSTRUCTIONBUSINESS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HOMEANDCONSTRUCTIONBUSINESS = EmbedClientItem_TypeItem "HOME_AND_CONSTRUCTION_BUSINESS"

-- |
pattern EmbedClientItem_TypeItem_Electrician :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Electrician = EmbedClientItem_TypeItem "ELECTRICIAN"

-- |
pattern EmbedClientItem_TypeItem_GENERALCONTRACTOR :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GENERALCONTRACTOR = EmbedClientItem_TypeItem "GENERAL_CONTRACTOR"

-- |
pattern EmbedClientItem_TypeItem_HVACBUSINESS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HVACBUSINESS = EmbedClientItem_TypeItem "HVAC_BUSINESS"

-- |
pattern EmbedClientItem_TypeItem_HOUSEPAINTER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HOUSEPAINTER = EmbedClientItem_TypeItem "HOUSE_PAINTER"

-- |
pattern EmbedClientItem_TypeItem_Locksmith :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Locksmith = EmbedClientItem_TypeItem "LOCKSMITH"

-- |
pattern EmbedClientItem_TypeItem_MOVINGCOMPANY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOVINGCOMPANY = EmbedClientItem_TypeItem "MOVING_COMPANY"

-- |
pattern EmbedClientItem_TypeItem_Plumber :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Plumber = EmbedClientItem_TypeItem "PLUMBER"

-- |
pattern EmbedClientItem_TypeItem_ROOFINGCONTRACTOR :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ROOFINGCONTRACTOR = EmbedClientItem_TypeItem "ROOFING_CONTRACTOR"

-- |
pattern EmbedClientItem_TypeItem_INTERNETCAFE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_INTERNETCAFE = EmbedClientItem_TypeItem "INTERNET_CAFE"

-- |
pattern EmbedClientItem_TypeItem_Library :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Library = EmbedClientItem_TypeItem "LIBRARY"

-- |
pattern EmbedClientItem_TypeItem_LODGINGBUSINESS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LODGINGBUSINESS = EmbedClientItem_TypeItem "LODGING_BUSINESS"

-- |
pattern EmbedClientItem_TypeItem_BEDANDBREAKFAST :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BEDANDBREAKFAST = EmbedClientItem_TypeItem "BED_AND_BREAKFAST"

-- |
pattern EmbedClientItem_TypeItem_Hostel :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Hostel = EmbedClientItem_TypeItem "HOSTEL"

-- |
pattern EmbedClientItem_TypeItem_Hotel :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Hotel = EmbedClientItem_TypeItem "HOTEL"

-- |
pattern EmbedClientItem_TypeItem_Motel :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Motel = EmbedClientItem_TypeItem "MOTEL"

-- |
pattern EmbedClientItem_TypeItem_MEDICALORGANIZATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MEDICALORGANIZATION = EmbedClientItem_TypeItem "MEDICAL_ORGANIZATION"

-- |
pattern EmbedClientItem_TypeItem_Dentist :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Dentist = EmbedClientItem_TypeItem "DENTIST"

-- |
pattern EmbedClientItem_TypeItem_MEDICALCLINIC :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MEDICALCLINIC = EmbedClientItem_TypeItem "MEDICAL_CLINIC"

-- |
pattern EmbedClientItem_TypeItem_Optician :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Optician = EmbedClientItem_TypeItem "OPTICIAN"

-- |
pattern EmbedClientItem_TypeItem_Pharmacy :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Pharmacy = EmbedClientItem_TypeItem "PHARMACY"

-- |
pattern EmbedClientItem_TypeItem_Physician :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Physician = EmbedClientItem_TypeItem "PHYSICIAN"

-- |
pattern EmbedClientItem_TypeItem_VETERINARYCARE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_VETERINARYCARE = EmbedClientItem_TypeItem "VETERINARY_CARE"

-- |
pattern EmbedClientItem_TypeItem_PROFESSIONALSERVICE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PROFESSIONALSERVICE = EmbedClientItem_TypeItem "PROFESSIONAL_SERVICE"

-- |
pattern EmbedClientItem_TypeItem_Attorney :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Attorney = EmbedClientItem_TypeItem "ATTORNEY"

-- |
pattern EmbedClientItem_TypeItem_Notary :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Notary = EmbedClientItem_TypeItem "NOTARY"

-- |
pattern EmbedClientItem_TypeItem_RADIOSTATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_RADIOSTATION = EmbedClientItem_TypeItem "RADIO_STATION"

-- |
pattern EmbedClientItem_TypeItem_REALESTATEAGENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_REALESTATEAGENT = EmbedClientItem_TypeItem "REAL_ESTATE_AGENT"

-- |
pattern EmbedClientItem_TypeItem_RECYCLINGCENTER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_RECYCLINGCENTER = EmbedClientItem_TypeItem "RECYCLING_CENTER"

-- |
pattern EmbedClientItem_TypeItem_SELFSTORAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SELFSTORAGE = EmbedClientItem_TypeItem "SELF_STORAGE"

-- |
pattern EmbedClientItem_TypeItem_SHOPPINGCENTER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SHOPPINGCENTER = EmbedClientItem_TypeItem "SHOPPING_CENTER"

-- |
pattern EmbedClientItem_TypeItem_SPORTSACTIVITYLOCATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SPORTSACTIVITYLOCATION = EmbedClientItem_TypeItem "SPORTS_ACTIVITY_LOCATION"

-- |
pattern EmbedClientItem_TypeItem_BOWLINGALLEY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BOWLINGALLEY = EmbedClientItem_TypeItem "BOWLING_ALLEY"

-- |
pattern EmbedClientItem_TypeItem_EXERCISEGYM :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EXERCISEGYM = EmbedClientItem_TypeItem "EXERCISE_GYM"

-- |
pattern EmbedClientItem_TypeItem_GOLFCOURSE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOLFCOURSE = EmbedClientItem_TypeItem "GOLF_COURSE"

-- |
pattern EmbedClientItem_TypeItem_PUBLICSWIMMINGPOOL :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PUBLICSWIMMINGPOOL = EmbedClientItem_TypeItem "PUBLIC_SWIMMING_POOL"

-- |
pattern EmbedClientItem_TypeItem_SKIRESORT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SKIRESORT = EmbedClientItem_TypeItem "SKI_RESORT"

-- |
pattern EmbedClientItem_TypeItem_SPORTSCLUB :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SPORTSCLUB = EmbedClientItem_TypeItem "SPORTS_CLUB"

-- |
pattern EmbedClientItem_TypeItem_STADIUMORARENA :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_STADIUMORARENA = EmbedClientItem_TypeItem "STADIUM_OR_ARENA"

-- |
pattern EmbedClientItem_TypeItem_TENNISCOMPLEX :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TENNISCOMPLEX = EmbedClientItem_TypeItem "TENNIS_COMPLEX"

-- |
pattern EmbedClientItem_TypeItem_Store :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Store = EmbedClientItem_TypeItem "STORE"

-- |
pattern EmbedClientItem_TypeItem_BIKESTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BIKESTORE = EmbedClientItem_TypeItem "BIKE_STORE"

-- |
pattern EmbedClientItem_TypeItem_BOOKSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BOOKSTORE = EmbedClientItem_TypeItem "BOOK_STORE"

-- |
pattern EmbedClientItem_TypeItem_CLOTHINGSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CLOTHINGSTORE = EmbedClientItem_TypeItem "CLOTHING_STORE"

-- |
pattern EmbedClientItem_TypeItem_COMPUTERSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_COMPUTERSTORE = EmbedClientItem_TypeItem "COMPUTER_STORE"

-- |
pattern EmbedClientItem_TypeItem_CONVENIENCESTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CONVENIENCESTORE = EmbedClientItem_TypeItem "CONVENIENCE_STORE"

-- |
pattern EmbedClientItem_TypeItem_DEPARTMENTSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DEPARTMENTSTORE = EmbedClientItem_TypeItem "DEPARTMENT_STORE"

-- |
pattern EmbedClientItem_TypeItem_ELECTRONICSSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ELECTRONICSSTORE = EmbedClientItem_TypeItem "ELECTRONICS_STORE"

-- |
pattern EmbedClientItem_TypeItem_Florist :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Florist = EmbedClientItem_TypeItem "FLORIST"

-- |
pattern EmbedClientItem_TypeItem_FURNITURESTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FURNITURESTORE = EmbedClientItem_TypeItem "FURNITURE_STORE"

-- |
pattern EmbedClientItem_TypeItem_GARDENSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GARDENSTORE = EmbedClientItem_TypeItem "GARDEN_STORE"

-- |
pattern EmbedClientItem_TypeItem_GROCERYSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GROCERYSTORE = EmbedClientItem_TypeItem "GROCERY_STORE"

-- |
pattern EmbedClientItem_TypeItem_HARDWARESTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HARDWARESTORE = EmbedClientItem_TypeItem "HARDWARE_STORE"

-- |
pattern EmbedClientItem_TypeItem_HOBBYSHOP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HOBBYSHOP = EmbedClientItem_TypeItem "HOBBY_SHOP"

-- |
pattern EmbedClientItem_TypeItem_HOMEGOODSSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HOMEGOODSSTORE = EmbedClientItem_TypeItem "HOME_GOODS_STORE"

-- |
pattern EmbedClientItem_TypeItem_JEWELRYSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_JEWELRYSTORE = EmbedClientItem_TypeItem "JEWELRY_STORE"

-- |
pattern EmbedClientItem_TypeItem_LIQUORSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LIQUORSTORE = EmbedClientItem_TypeItem "LIQUOR_STORE"

-- |
pattern EmbedClientItem_TypeItem_MENSCLOTHINGSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MENSCLOTHINGSTORE = EmbedClientItem_TypeItem "MENS_CLOTHING_STORE"

-- |
pattern EmbedClientItem_TypeItem_MOBILEPHONESTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOBILEPHONESTORE = EmbedClientItem_TypeItem "MOBILE_PHONE_STORE"

-- |
pattern EmbedClientItem_TypeItem_MOVIERENTALSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MOVIERENTALSTORE = EmbedClientItem_TypeItem "MOVIE_RENTAL_STORE"

-- |
pattern EmbedClientItem_TypeItem_MUSICSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSICSTORE = EmbedClientItem_TypeItem "MUSIC_STORE"

-- |
pattern EmbedClientItem_TypeItem_OFFICEEQUIPMENTSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_OFFICEEQUIPMENTSTORE = EmbedClientItem_TypeItem "OFFICE_EQUIPMENT_STORE"

-- |
pattern EmbedClientItem_TypeItem_OUTLETSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_OUTLETSTORE = EmbedClientItem_TypeItem "OUTLET_STORE"

-- |
pattern EmbedClientItem_TypeItem_PAWNSHOP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PAWNSHOP = EmbedClientItem_TypeItem "PAWN_SHOP"

-- |
pattern EmbedClientItem_TypeItem_PETSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PETSTORE = EmbedClientItem_TypeItem "PET_STORE"

-- |
pattern EmbedClientItem_TypeItem_SHOESTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SHOESTORE = EmbedClientItem_TypeItem "SHOE_STORE"

-- |
pattern EmbedClientItem_TypeItem_SPORTINGGOODSSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SPORTINGGOODSSTORE = EmbedClientItem_TypeItem "SPORTING_GOODS_STORE"

-- |
pattern EmbedClientItem_TypeItem_TIRESHOP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TIRESHOP = EmbedClientItem_TypeItem "TIRE_SHOP"

-- |
pattern EmbedClientItem_TypeItem_TOYSTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TOYSTORE = EmbedClientItem_TypeItem "TOY_STORE"

-- |
pattern EmbedClientItem_TypeItem_WHOLESALESTORE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_WHOLESALESTORE = EmbedClientItem_TypeItem "WHOLESALE_STORE"

-- |
pattern EmbedClientItem_TypeItem_TELEVISIONSTATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TELEVISIONSTATION = EmbedClientItem_TypeItem "TELEVISION_STATION"

-- |
pattern EmbedClientItem_TypeItem_TOURISTINFORMATIONCENTER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TOURISTINFORMATIONCENTER = EmbedClientItem_TypeItem "TOURIST_INFORMATION_CENTER"

-- |
pattern EmbedClientItem_TypeItem_TRAVELAGENCY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TRAVELAGENCY = EmbedClientItem_TypeItem "TRAVEL_AGENCY"

-- |
pattern EmbedClientItem_TypeItem_PERFORMINGGROUP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PERFORMINGGROUP = EmbedClientItem_TypeItem "PERFORMING_GROUP"

-- |
pattern EmbedClientItem_TypeItem_MUSICGROUP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSICGROUP = EmbedClientItem_TypeItem "MUSIC_GROUP"

-- | PLACE subtypes
pattern EmbedClientItem_TypeItem_ADMINISTRATIVEAREA :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ADMINISTRATIVEAREA = EmbedClientItem_TypeItem "ADMINISTRATIVE_AREA"

-- |
pattern EmbedClientItem_TypeItem_City :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_City = EmbedClientItem_TypeItem "CITY"

-- |
pattern EmbedClientItem_TypeItem_Country :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Country = EmbedClientItem_TypeItem "COUNTRY"

-- |
pattern EmbedClientItem_TypeItem_State :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_State = EmbedClientItem_TypeItem "STATE"

-- |
pattern EmbedClientItem_TypeItem_CIVICSTRUCTURE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CIVICSTRUCTURE = EmbedClientItem_TypeItem "CIVIC_STRUCTURE"

-- |
pattern EmbedClientItem_TypeItem_Airport :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Airport = EmbedClientItem_TypeItem "AIRPORT"

-- |
pattern EmbedClientItem_TypeItem_Aquarium :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Aquarium = EmbedClientItem_TypeItem "AQUARIUM"

-- |
pattern EmbedClientItem_TypeItem_Beach :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Beach = EmbedClientItem_TypeItem "BEACH"

-- |
pattern EmbedClientItem_TypeItem_BUSSTATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BUSSTATION = EmbedClientItem_TypeItem "BUS_STATION"

-- |
pattern EmbedClientItem_TypeItem_BUSSTOP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BUSSTOP = EmbedClientItem_TypeItem "BUS_STOP"

-- |
pattern EmbedClientItem_TypeItem_Campground :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Campground = EmbedClientItem_TypeItem "CAMPGROUND"

-- |
pattern EmbedClientItem_TypeItem_Cemetery :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Cemetery = EmbedClientItem_TypeItem "CEMETERY"

-- |
pattern EmbedClientItem_TypeItem_Crematorium :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Crematorium = EmbedClientItem_TypeItem "CREMATORIUM"

-- |
pattern EmbedClientItem_TypeItem_EVENTVENUE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EVENTVENUE = EmbedClientItem_TypeItem "EVENT_VENUE"

-- |
pattern EmbedClientItem_TypeItem_GOVERNMENTBUILDING :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOVERNMENTBUILDING = EmbedClientItem_TypeItem "GOVERNMENT_BUILDING"

-- |
pattern EmbedClientItem_TypeItem_CITYHALL :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CITYHALL = EmbedClientItem_TypeItem "CITY_HALL"

-- |
pattern EmbedClientItem_TypeItem_Courthouse :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Courthouse = EmbedClientItem_TypeItem "COURTHOUSE"

-- |
pattern EmbedClientItem_TypeItem_DEFENCEESTABLISHMENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DEFENCEESTABLISHMENT = EmbedClientItem_TypeItem "DEFENCE_ESTABLISHMENT"

-- |
pattern EmbedClientItem_TypeItem_Embassy :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Embassy = EmbedClientItem_TypeItem "EMBASSY"

-- |
pattern EmbedClientItem_TypeItem_LEGISLATIVEBUILDING :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LEGISLATIVEBUILDING = EmbedClientItem_TypeItem "LEGISLATIVE_BUILDING"

-- |
pattern EmbedClientItem_TypeItem_Museum :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Museum = EmbedClientItem_TypeItem "MUSEUM"

-- |
pattern EmbedClientItem_TypeItem_MUSICVENUE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_MUSICVENUE = EmbedClientItem_TypeItem "MUSIC_VENUE"

-- |
pattern EmbedClientItem_TypeItem_Park :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Park = EmbedClientItem_TypeItem "PARK"

-- |
pattern EmbedClientItem_TypeItem_PARKINGFACILITY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PARKINGFACILITY = EmbedClientItem_TypeItem "PARKING_FACILITY"

-- |
pattern EmbedClientItem_TypeItem_PERFORMINGARTSTHEATER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PERFORMINGARTSTHEATER = EmbedClientItem_TypeItem "PERFORMING_ARTS_THEATER"

-- |
pattern EmbedClientItem_TypeItem_PLACEOFWORSHIP :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLACEOFWORSHIP = EmbedClientItem_TypeItem "PLACE_OF_WORSHIP"

-- |
pattern EmbedClientItem_TypeItem_BUDDHISTTEMPLE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BUDDHISTTEMPLE = EmbedClientItem_TypeItem "BUDDHIST_TEMPLE"

-- |
pattern EmbedClientItem_TypeItem_CATHOLICCHURCH :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CATHOLICCHURCH = EmbedClientItem_TypeItem "CATHOLIC_CHURCH"

-- |
pattern EmbedClientItem_TypeItem_Church :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Church = EmbedClientItem_TypeItem "CHURCH"

-- |
pattern EmbedClientItem_TypeItem_HINDUTEMPLE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HINDUTEMPLE = EmbedClientItem_TypeItem "HINDU_TEMPLE"

-- |
pattern EmbedClientItem_TypeItem_Mosque :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Mosque = EmbedClientItem_TypeItem "MOSQUE"

-- |
pattern EmbedClientItem_TypeItem_Synagogue :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Synagogue = EmbedClientItem_TypeItem "SYNAGOGUE"

-- |
pattern EmbedClientItem_TypeItem_Playground :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Playground = EmbedClientItem_TypeItem "PLAYGROUND"

-- |
pattern EmbedClientItem_TypeItem_RVPARK :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_RVPARK = EmbedClientItem_TypeItem "R_V_PARK"

-- |
pattern EmbedClientItem_TypeItem_Residence :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Residence = EmbedClientItem_TypeItem "RESIDENCE"

-- |
pattern EmbedClientItem_TypeItem_APARTMENTCOMPLEX :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_APARTMENTCOMPLEX = EmbedClientItem_TypeItem "APARTMENT_COMPLEX"

-- |
pattern EmbedClientItem_TypeItem_GATEDRESIDENCECOMMUNITY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GATEDRESIDENCECOMMUNITY = EmbedClientItem_TypeItem "GATED_RESIDENCE_COMMUNITY"

-- |
pattern EmbedClientItem_TypeItem_SINGLEFAMILYRESIDENCE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SINGLEFAMILYRESIDENCE = EmbedClientItem_TypeItem "SINGLE_FAMILY_RESIDENCE"

-- |
pattern EmbedClientItem_TypeItem_TOURISTATTRACTION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TOURISTATTRACTION = EmbedClientItem_TypeItem "TOURIST_ATTRACTION"

-- |
pattern EmbedClientItem_TypeItem_SUBWAYSTATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SUBWAYSTATION = EmbedClientItem_TypeItem "SUBWAY_STATION"

-- |
pattern EmbedClientItem_TypeItem_TAXISTAND :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TAXISTAND = EmbedClientItem_TypeItem "TAXI_STAND"

-- |
pattern EmbedClientItem_TypeItem_TRAINSTATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_TRAINSTATION = EmbedClientItem_TypeItem "TRAIN_STATION"

-- |
pattern EmbedClientItem_TypeItem_Zoo :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Zoo = EmbedClientItem_TypeItem "ZOO"

-- |
pattern EmbedClientItem_TypeItem_Landform :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Landform = EmbedClientItem_TypeItem "LANDFORM"

-- |
pattern EmbedClientItem_TypeItem_BODYOFWATER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BODYOFWATER = EmbedClientItem_TypeItem "BODY_OF_WATER"

-- |
pattern EmbedClientItem_TypeItem_Canal :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Canal = EmbedClientItem_TypeItem "CANAL"

-- |
pattern EmbedClientItem_TypeItem_LAKEBODYOFWATER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LAKEBODYOFWATER = EmbedClientItem_TypeItem "LAKE_BODY_OF_WATER"

-- |
pattern EmbedClientItem_TypeItem_OCEANBODYOFWATER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_OCEANBODYOFWATER = EmbedClientItem_TypeItem "OCEAN_BODY_OF_WATER"

-- |
pattern EmbedClientItem_TypeItem_Pond :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Pond = EmbedClientItem_TypeItem "POND"

-- |
pattern EmbedClientItem_TypeItem_Reservoir :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Reservoir = EmbedClientItem_TypeItem "RESERVOIR"

-- |
pattern EmbedClientItem_TypeItem_RIVERBODYOFWATER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_RIVERBODYOFWATER = EmbedClientItem_TypeItem "RIVER_BODY_OF_WATER"

-- |
pattern EmbedClientItem_TypeItem_SEABODYOFWATER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SEABODYOFWATER = EmbedClientItem_TypeItem "SEA_BODY_OF_WATER"

-- |
pattern EmbedClientItem_TypeItem_Waterfall :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Waterfall = EmbedClientItem_TypeItem "WATERFALL"

-- |
pattern EmbedClientItem_TypeItem_Continent :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Continent = EmbedClientItem_TypeItem "CONTINENT"

-- |
pattern EmbedClientItem_TypeItem_Mountain :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Mountain = EmbedClientItem_TypeItem "MOUNTAIN"

-- |
pattern EmbedClientItem_TypeItem_Volcano :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Volcano = EmbedClientItem_TypeItem "VOLCANO"

-- |
pattern EmbedClientItem_TypeItem_LANDMARKSORHISTORICALBUILDINGS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LANDMARKSORHISTORICALBUILDINGS = EmbedClientItem_TypeItem "LANDMARKS_OR_HISTORICAL_BUILDINGS"

-- | NOTE(jpanzer): This is a badly designed hierarchy and we should avoid depending on Event properties inside UserInteractions as much as possible IMHO.
pattern EmbedClientItem_TypeItem_USERINTERACTION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_USERINTERACTION = EmbedClientItem_TypeItem "USER_INTERACTION"

-- |
pattern EmbedClientItem_TypeItem_USERPLUSONES :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_USERPLUSONES = EmbedClientItem_TypeItem "USER_PLUS_ONES"

-- | Intangibles, primarily used as sub-objects of other types
pattern EmbedClientItem_TypeItem_Enumeration :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Enumeration = EmbedClientItem_TypeItem "ENUMERATION"

-- |
pattern EmbedClientItem_TypeItem_BOOKFORMATTYPE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_BOOKFORMATTYPE = EmbedClientItem_TypeItem "BOOK_FORMAT_TYPE"

-- |
pattern EmbedClientItem_TypeItem_ITEMAVAILABILITY :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_ITEMAVAILABILITY = EmbedClientItem_TypeItem "ITEM_AVAILABILITY"

-- |
pattern EmbedClientItem_TypeItem_OFFERITEMCONDITION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_OFFERITEMCONDITION = EmbedClientItem_TypeItem "OFFER_ITEM_CONDITION"

-- |
pattern EmbedClientItem_TypeItem_JOBPOSTING :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_JOBPOSTING = EmbedClientItem_TypeItem "JOB_POSTING"

-- |
pattern EmbedClientItem_TypeItem_Language :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Language = EmbedClientItem_TypeItem "LANGUAGE"

-- |
pattern EmbedClientItem_TypeItem_Offer :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Offer = EmbedClientItem_TypeItem "OFFER"

-- |
pattern EmbedClientItem_TypeItem_Quantity :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Quantity = EmbedClientItem_TypeItem "QUANTITY"

-- |
pattern EmbedClientItem_TypeItem_Distance :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Distance = EmbedClientItem_TypeItem "DISTANCE"

-- |
pattern EmbedClientItem_TypeItem_Duration :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Duration = EmbedClientItem_TypeItem "DURATION"

-- |
pattern EmbedClientItem_TypeItem_Energy :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Energy = EmbedClientItem_TypeItem "ENERGY"

-- |
pattern EmbedClientItem_TypeItem_Mass :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Mass = EmbedClientItem_TypeItem "MASS"

-- |
pattern EmbedClientItem_TypeItem_Rating :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Rating = EmbedClientItem_TypeItem "RATING"

-- |
pattern EmbedClientItem_TypeItem_AGGREGATERATING :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_AGGREGATERATING = EmbedClientItem_TypeItem "AGGREGATE_RATING"

-- |
pattern EmbedClientItem_TypeItem_STRUCTUREDVALUE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_STRUCTUREDVALUE = EmbedClientItem_TypeItem "STRUCTURED_VALUE"

-- |
pattern EmbedClientItem_TypeItem_CONTACTPOINT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CONTACTPOINT = EmbedClientItem_TypeItem "CONTACT_POINT"

-- |
pattern EmbedClientItem_TypeItem_POSTALADDRESS :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_POSTALADDRESS = EmbedClientItem_TypeItem "POSTAL_ADDRESS"

-- |
pattern EmbedClientItem_TypeItem_GEOCOORDINATES :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GEOCOORDINATES = EmbedClientItem_TypeItem "GEO_COORDINATES"

-- |
pattern EmbedClientItem_TypeItem_GEOSHAPE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GEOSHAPE = EmbedClientItem_TypeItem "GEO_SHAPE"

-- |
pattern EmbedClientItem_TypeItem_NUTRITIONINFORMATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_NUTRITIONINFORMATION = EmbedClientItem_TypeItem "NUTRITION_INFORMATION"

-- | CREATIVE_WORK extensions
pattern EmbedClientItem_TypeItem_PRESENTATIONOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PRESENTATIONOBJECT = EmbedClientItem_TypeItem "PRESENTATION_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_DOCUMENTOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DOCUMENTOBJECT = EmbedClientItem_TypeItem "DOCUMENT_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_SPREADSHEETOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SPREADSHEETOBJECT = EmbedClientItem_TypeItem "SPREADSHEET_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_FORMOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FORMOBJECT = EmbedClientItem_TypeItem "FORM_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_DRAWINGOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DRAWINGOBJECT = EmbedClientItem_TypeItem "DRAWING_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_PLACEREVIEW :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLACEREVIEW = EmbedClientItem_TypeItem "PLACE_REVIEW"

-- |
pattern EmbedClientItem_TypeItem_FILEOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FILEOBJECT = EmbedClientItem_TypeItem "FILE_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_PLAYMUSICTRACK :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLAYMUSICTRACK = EmbedClientItem_TypeItem "PLAY_MUSIC_TRACK"

-- |
pattern EmbedClientItem_TypeItem_PLAYMUSICALBUM :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLAYMUSICALBUM = EmbedClientItem_TypeItem "PLAY_MUSIC_ALBUM"

-- |
pattern EmbedClientItem_TypeItem_Magazine :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Magazine = EmbedClientItem_TypeItem "MAGAZINE"

-- | Single frame for http:\/\/goto\/carousel.
pattern EmbedClientItem_TypeItem_CAROUSELFRAME :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_CAROUSELFRAME = EmbedClientItem_TypeItem "CAROUSEL_FRAME"

-- | EVENT extensions
pattern EmbedClientItem_TypeItem_PLUSEVENT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUSEVENT = EmbedClientItem_TypeItem "PLUS_EVENT"

-- | No declared proto. Used only as a base type for now.
pattern EmbedClientItem_TypeItem_Hangout :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Hangout = EmbedClientItem_TypeItem "HANGOUT"

-- |
pattern EmbedClientItem_TypeItem_HANGOUTBROADCAST :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HANGOUTBROADCAST = EmbedClientItem_TypeItem "HANGOUT_BROADCAST"

-- |
pattern EmbedClientItem_TypeItem_HANGOUTCONSUMER :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_HANGOUTCONSUMER = EmbedClientItem_TypeItem "HANGOUT_CONSUMER"

-- |
pattern EmbedClientItem_TypeItem_Checkin :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Checkin = EmbedClientItem_TypeItem "CHECKIN"

-- |
pattern EmbedClientItem_TypeItem_EXAMPLEOBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_EXAMPLEOBJECT = EmbedClientItem_TypeItem "EXAMPLE_OBJECT"

-- | NOTE(melchang): These correspond to http:\/\/schema.org\/WebPage\/Community and http:\/\/schema.org\/WebPage\/CommunityInvite. See b\/7653610 for why these are \"SQUARE\" and not \"COMMUNITY\".
pattern EmbedClientItem_TypeItem_Square :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Square = EmbedClientItem_TypeItem "SQUARE"

-- |
pattern EmbedClientItem_TypeItem_SQUAREINVITE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_SQUAREINVITE = EmbedClientItem_TypeItem "SQUARE_INVITE"

-- |
pattern EmbedClientItem_TypeItem_PLUSPHOTO :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUSPHOTO = EmbedClientItem_TypeItem "PLUS_PHOTO"

-- |
pattern EmbedClientItem_TypeItem_PLUSPHOTOALBUM :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUSPHOTOALBUM = EmbedClientItem_TypeItem "PLUS_PHOTO_ALBUM"

-- |
pattern EmbedClientItem_TypeItem_LOCALPLUSPHOTOALBUM :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_LOCALPLUSPHOTOALBUM = EmbedClientItem_TypeItem "LOCAL_PLUS_PHOTO_ALBUM"

-- |
pattern EmbedClientItem_TypeItem_PRODUCTREVIEW :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PRODUCTREVIEW = EmbedClientItem_TypeItem "PRODUCT_REVIEW"

-- |
pattern EmbedClientItem_TypeItem_FINANCIALQUOTE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_FINANCIALQUOTE = EmbedClientItem_TypeItem "FINANCIAL_QUOTE"

-- |
pattern EmbedClientItem_TypeItem_DEPRECATEDTOUROBJECT :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DEPRECATEDTOUROBJECT = EmbedClientItem_TypeItem "DEPRECATED_TOUR_OBJECT"

-- |
pattern EmbedClientItem_TypeItem_PLUSPAGE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUSPAGE = EmbedClientItem_TypeItem "PLUS_PAGE"

-- | Data visualizations. See http:\/\/code.google.com\/apis\/chart\/index.html
pattern EmbedClientItem_TypeItem_GOOGLECHART :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_GOOGLECHART = EmbedClientItem_TypeItem "GOOGLE_CHART"

-- |
pattern EmbedClientItem_TypeItem_PLUSPHOTOSADDEDTOCOLLECTION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUSPHOTOSADDEDTOCOLLECTION = EmbedClientItem_TypeItem "PLUS_PHOTOS_ADDED_TO_COLLECTION"

-- | A collection of people that have been recommended to a user.
pattern EmbedClientItem_TypeItem_RECOMMENDEDPEOPLE :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_RECOMMENDEDPEOPLE = EmbedClientItem_TypeItem "RECOMMENDED_PEOPLE"

-- | A Google+ post.
pattern EmbedClientItem_TypeItem_PLUSPOST :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_PLUSPOST = EmbedClientItem_TypeItem "PLUS_POST"

-- | An http:\/\/schema.org\/Date unstructured ISO-8859 timestamp string.
pattern EmbedClientItem_TypeItem_Date :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_Date = EmbedClientItem_TypeItem "DATE"

-- | Embed representing a collection of multiple Drive objects.
pattern EmbedClientItem_TypeItem_DRIVEOBJECTCOLLECTION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DRIVEOBJECTCOLLECTION = EmbedClientItem_TypeItem "DRIVE_OBJECT_COLLECTION"

-- | https:\/\/schema.org\/NewsMediaOrganization
pattern EmbedClientItem_TypeItem_NEWSMEDIAORGANIZATION :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_NEWSMEDIAORGANIZATION = EmbedClientItem_TypeItem "NEWS_MEDIA_ORGANIZATION"

-- | Deprecated in favor of DYNAMITE/MESSAGE/METADATA
pattern EmbedClientItem_TypeItem_DYNAMITEATTACHMENTMETADATA :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DYNAMITEATTACHMENTMETADATA = EmbedClientItem_TypeItem "DYNAMITE_ATTACHMENT_METADATA"

-- | Used for Dynamite message metadata in Hangouts
pattern EmbedClientItem_TypeItem_DYNAMITEMESSAGEMETADATA :: EmbedClientItem_TypeItem
pattern EmbedClientItem_TypeItem_DYNAMITEMESSAGEMETADATA = EmbedClientItem_TypeItem "DYNAMITE_MESSAGE_METADATA"

{-# COMPLETE
  EmbedClientItem_TypeItem_Unknown,
  EmbedClientItem_TypeItem_ACTION_V2,
  EmbedClientItem_TypeItem_ADD_ACTION_V2,
  EmbedClientItem_TypeItem_AGGREGATE_RATING_V2,
  EmbedClientItem_TypeItem_ARTICLE_V2,
  EmbedClientItem_TypeItem_ASSESS_ACTION_V2,
  EmbedClientItem_TypeItem_AUDIO_OBJECT_V2,
  EmbedClientItem_TypeItem_BASIC_INTERACTION_V2,
  EmbedClientItem_TypeItem_BLOG_POSTING_V2,
  EmbedClientItem_TypeItem_BLOG_V2,
  EmbedClientItem_TypeItem_BOOK_V2,
  EmbedClientItem_TypeItem_BUY_ACTION_V2,
  EmbedClientItem_TypeItem_CHECK_IN_ACTION_V2,
  EmbedClientItem_TypeItem_CHECKIN_V2,
  EmbedClientItem_TypeItem_COLLEXION_V2,
  EmbedClientItem_TypeItem_COMMENT_ACTION_V2,
  EmbedClientItem_TypeItem_COMMENT_V2,
  EmbedClientItem_TypeItem_COMMUNICATE_ACTION_V2,
  EmbedClientItem_TypeItem_CONSUME_ACTION_V2,
  EmbedClientItem_TypeItem_CREATE_ACTION_V2,
  EmbedClientItem_TypeItem_CREATIVE_WORK_V2,
  EmbedClientItem_TypeItem_DISCOVER_ACTION_V2,
  EmbedClientItem_TypeItem_DOCUMENT_OBJECT_V2,
  EmbedClientItem_TypeItem_DRAWING_OBJECT_V2,
  EmbedClientItem_TypeItem_DRIVE_OBJECT_V2,
  EmbedClientItem_TypeItem_EMOTISHARE_V2,
  EmbedClientItem_TypeItem_ENTRY_POINT_V2,
  EmbedClientItem_TypeItem_EVENT_TIME_V2,
  EmbedClientItem_TypeItem_EVENT_V2,
  EmbedClientItem_TypeItem_FILE_OBJECT_V2,
  EmbedClientItem_TypeItem_FIND_ACTION_V2,
  EmbedClientItem_TypeItem_FINANCIAL_QUOTE_V2,
  EmbedClientItem_TypeItem_FORM_OBJECT_V2,
  EmbedClientItem_TypeItem_GEO_COORDINATES_V2,
  EmbedClientItem_TypeItem_GOOGLE_OFFER_V2,
  EmbedClientItem_TypeItem_HANGOUTCHATMESSAGE,
  EmbedClientItem_TypeItem_HANGOUTQUOTE,
  EmbedClientItem_TypeItem_HANGOUT_V2,
  EmbedClientItem_TypeItem_HOA_PLUS_EVENT_V2,
  EmbedClientItem_TypeItem_IMAGE_OBJECT_V2,
  EmbedClientItem_TypeItem_INTERACT_ACTION_V2,
  EmbedClientItem_TypeItem_INTERACTION_V2,
  EmbedClientItem_TypeItem_LISTEN_ACTION_V2,
  EmbedClientItem_TypeItem_LOCAL_BUSINESS_V2,
  EmbedClientItem_TypeItem_LOCAL_PLUS_PHOTO_ALBUM_V2,
  EmbedClientItem_TypeItem_MAGAZINE_V2,
  EmbedClientItem_TypeItem_MEDIA_OBJECT_V2,
  EmbedClientItem_TypeItem_MOBILE_APPLICATION_V2,
  EmbedClientItem_TypeItem_MOVIE_V2,
  EmbedClientItem_TypeItem_MUSIC_ALBUM_V2,
  EmbedClientItem_TypeItem_MUSIC_GROUP_V2,
  EmbedClientItem_TypeItem_MUSIC_PLAYLIST_V2,
  EmbedClientItem_TypeItem_MUSIC_RECORDING_V2,
  EmbedClientItem_TypeItem_NEWS_ARTICLE_V2,
  EmbedClientItem_TypeItem_OFFER_V2,
  EmbedClientItem_TypeItem_ORGANIZATION_V2,
  EmbedClientItem_TypeItem_ORGANIZE_ACTION_V2,
  EmbedClientItem_TypeItem_PERSON_V2,
  EmbedClientItem_TypeItem_PLACE_REVIEW_V2,
  EmbedClientItem_TypeItem_PLACE_V2,
  EmbedClientItem_TypeItem_PLAN_ACTION_V2,
  EmbedClientItem_TypeItem_PLAY_MUSIC_ALBUM_V2,
  EmbedClientItem_TypeItem_PLAY_MUSIC_TRACK_V2,
  EmbedClientItem_TypeItem_PLAY_OBJECT_V2,
  EmbedClientItem_TypeItem_PLUS_AUDIO_V2,
  EmbedClientItem_TypeItem_PLUS_EVENT_V2,
  EmbedClientItem_TypeItem_PLUS_MEDIA_COLLECTION_V2,
  EmbedClientItem_TypeItem_PLUS_MEDIA_OBJECT_V2,
  EmbedClientItem_TypeItem_PLUS_PAGE_V2,
  EmbedClientItem_TypeItem_PLUS_PHOTOS_ADDED_TO_COLLECTION_V2,
  EmbedClientItem_TypeItem_PLUS_PHOTO_ALBUM_V2,
  EmbedClientItem_TypeItem_PLUS_PHOTO_COLLECTION_V2,
  EmbedClientItem_TypeItem_PLUS_PHOTO_V2,
  EmbedClientItem_TypeItem_PLUS_POST_V2,
  EmbedClientItem_TypeItem_PLUS_RESHARE_V2,
  EmbedClientItem_TypeItem_PLUS_SOFTWARE_APPLICATION_V2,
  EmbedClientItem_TypeItem_POLL_OPTION_V2,
  EmbedClientItem_TypeItem_POLL_V2,
  EmbedClientItem_TypeItem_POSTAL_ADDRESS_V2,
  EmbedClientItem_TypeItem_PRESENTATION_OBJECT_V2,
  EmbedClientItem_TypeItem_PRODUCT_REVIEW_V2,
  EmbedClientItem_TypeItem_RATING_V2,
  EmbedClientItem_TypeItem_REACT_ACTION_V2,
  EmbedClientItem_TypeItem_RESERVATION_V2,
  EmbedClientItem_TypeItem_RESERVE_ACTION_V2,
  EmbedClientItem_TypeItem_REVIEW_V2,
  EmbedClientItem_TypeItem_REVIEW_ACTION_V2,
  EmbedClientItem_TypeItem_SOFTWARE_APPLICATION_V2,
  EmbedClientItem_TypeItem_SPREADSHEET_OBJECT_V2,
  EmbedClientItem_TypeItem_SQUARE_INVITE_V2,
  EmbedClientItem_TypeItem_SQUARE_V2,
  EmbedClientItem_TypeItem_STICKER_V2,
  EmbedClientItem_TypeItem_STORY_V2,
  EmbedClientItem_TypeItem_THING_V2,
  EmbedClientItem_TypeItem_TRADE_ACTION_V2,
  EmbedClientItem_TypeItem_DEPRECATED_TOUR_OBJECT_V2,
  EmbedClientItem_TypeItem_TV_EPISODE_V2,
  EmbedClientItem_TypeItem_TV_SERIES_V2,
  EmbedClientItem_TypeItem_UPDATE_ACTION_V2,
  EmbedClientItem_TypeItem_VIEW_ACTION_V2,
  EmbedClientItem_TypeItem_VIDEO_OBJECT_V2,
  EmbedClientItem_TypeItem_VIDEO_GALLERY_V2,
  EmbedClientItem_TypeItem_WANT_ACTION_V2,
  EmbedClientItem_TypeItem_WEB_PAGE_V2,
  EmbedClientItem_TypeItem_WRITE_ACTION_V2,
  EmbedClientItem_TypeItem_YOUTUBE_CHANNEL_V2,
  EmbedClientItem_TypeItem_GOOGLE_USER_PHOTO_V2,
  EmbedClientItem_TypeItem_GOOGLEUSERPHOTOALBUM,
  EmbedClientItem_TypeItem_GOOGLEPHOTORECIPE,
  EmbedClientItem_TypeItem_Thing,
  EmbedClientItem_TypeItem_CREATIVEWORK,
  EmbedClientItem_TypeItem_Event,
  EmbedClientItem_TypeItem_Intangible,
  EmbedClientItem_TypeItem_Organization,
  EmbedClientItem_TypeItem_Person,
  EmbedClientItem_TypeItem_Place,
  EmbedClientItem_TypeItem_Product,
  EmbedClientItem_TypeItem_Article,
  EmbedClientItem_TypeItem_BLOGPOSTING,
  EmbedClientItem_TypeItem_NEWSARTICLE,
  EmbedClientItem_TypeItem_SCHOLARLYARTICLE,
  EmbedClientItem_TypeItem_Blog,
  EmbedClientItem_TypeItem_Book,
  EmbedClientItem_TypeItem_Comment,
  EmbedClientItem_TypeItem_ITEMLIST,
  EmbedClientItem_TypeItem_Map,
  EmbedClientItem_TypeItem_MEDIAOBJECT,
  EmbedClientItem_TypeItem_AUDIOOBJECT,
  EmbedClientItem_TypeItem_IMAGEOBJECT,
  EmbedClientItem_TypeItem_MUSICVIDEOOBJECT,
  EmbedClientItem_TypeItem_VIDEOOBJECT,
  EmbedClientItem_TypeItem_Movie,
  EmbedClientItem_TypeItem_MUSICPLAYLIST,
  EmbedClientItem_TypeItem_MUSICALBUM,
  EmbedClientItem_TypeItem_MUSICRECORDING,
  EmbedClientItem_TypeItem_Painting,
  EmbedClientItem_TypeItem_Photograph,
  EmbedClientItem_TypeItem_Recipe,
  EmbedClientItem_TypeItem_Review,
  EmbedClientItem_TypeItem_Sculpture,
  EmbedClientItem_TypeItem_SOFTWAREAPPLICATION,
  EmbedClientItem_TypeItem_MOBILEAPPLICATION,
  EmbedClientItem_TypeItem_WEBAPPLICATION,
  EmbedClientItem_TypeItem_TVEPISODE,
  EmbedClientItem_TypeItem_TVSEASON,
  EmbedClientItem_TypeItem_TVSERIES,
  EmbedClientItem_TypeItem_WEBPAGE,
  EmbedClientItem_TypeItem_ABOUTPAGE,
  EmbedClientItem_TypeItem_CHECKOUTPAGE,
  EmbedClientItem_TypeItem_COLLECTIONPAGE,
  EmbedClientItem_TypeItem_IMAGEGALLERY,
  EmbedClientItem_TypeItem_VIDEOGALLERY,
  EmbedClientItem_TypeItem_CONTACTPAGE,
  EmbedClientItem_TypeItem_ITEMPAGE,
  EmbedClientItem_TypeItem_PROFILEPAGE,
  EmbedClientItem_TypeItem_SEARCHRESULTSPAGE,
  EmbedClientItem_TypeItem_WEBPAGEELEMENT,
  EmbedClientItem_TypeItem_SITENAVIGATIONELEMENT,
  EmbedClientItem_TypeItem_Table,
  EmbedClientItem_TypeItem_WPADBLOCK,
  EmbedClientItem_TypeItem_WPFOOTER,
  EmbedClientItem_TypeItem_WPHEADER,
  EmbedClientItem_TypeItem_WPSIDEBAR,
  EmbedClientItem_TypeItem_APPINVITE,
  EmbedClientItem_TypeItem_Emotishare,
  EmbedClientItem_TypeItem_BUSINESSEVENT,
  EmbedClientItem_TypeItem_CHILDRENSEVENT,
  EmbedClientItem_TypeItem_COMEDYEVENT,
  EmbedClientItem_TypeItem_DANCEEVENT,
  EmbedClientItem_TypeItem_EDUCATIONEVENT,
  EmbedClientItem_TypeItem_Festival,
  EmbedClientItem_TypeItem_FOODEVENT,
  EmbedClientItem_TypeItem_LITERARYEVENT,
  EmbedClientItem_TypeItem_MUSICEVENT,
  EmbedClientItem_TypeItem_SALEEVENT,
  EmbedClientItem_TypeItem_SOCIALEVENT,
  EmbedClientItem_TypeItem_SPORTSEVENT,
  EmbedClientItem_TypeItem_THEATEREVENT,
  EmbedClientItem_TypeItem_VISUALARTSEVENT,
  EmbedClientItem_TypeItem_Reservation,
  EmbedClientItem_TypeItem_TRAVELEVENT,
  EmbedClientItem_TypeItem_Corporation,
  EmbedClientItem_TypeItem_EDUCATIONALORGANIZATION,
  EmbedClientItem_TypeItem_COLLEGEORUNIVERSITY,
  EmbedClientItem_TypeItem_ELEMENTARYSCHOOL,
  EmbedClientItem_TypeItem_HIGHSCHOOL,
  EmbedClientItem_TypeItem_MIDDLESCHOOL,
  EmbedClientItem_TypeItem_Preschool,
  EmbedClientItem_TypeItem_School,
  EmbedClientItem_TypeItem_GOVERNMENTORGANIZATION,
  EmbedClientItem_TypeItem_LOCALBUSINESS,
  EmbedClientItem_TypeItem_ANIMALSHELTER,
  EmbedClientItem_TypeItem_AUTOMOTIVEBUSINESS,
  EmbedClientItem_TypeItem_AUTOBODYSHOP,
  EmbedClientItem_TypeItem_AUTODEALER,
  EmbedClientItem_TypeItem_AUTOPARTSSTORE,
  EmbedClientItem_TypeItem_AUTORENTAL,
  EmbedClientItem_TypeItem_AUTOREPAIR,
  EmbedClientItem_TypeItem_AUTOWASH,
  EmbedClientItem_TypeItem_GASSTATION,
  EmbedClientItem_TypeItem_MOTORCYCLEDEALER,
  EmbedClientItem_TypeItem_MOTORCYCLEREPAIR,
  EmbedClientItem_TypeItem_CHILDCARE,
  EmbedClientItem_TypeItem_DRYCLEANINGORLAUNDRY,
  EmbedClientItem_TypeItem_EMERGENCYSERVICE,
  EmbedClientItem_TypeItem_FIRESTATION,
  EmbedClientItem_TypeItem_Hospital,
  EmbedClientItem_TypeItem_POLICESTATION,
  EmbedClientItem_TypeItem_EMPLOYMENTAGENGY,
  EmbedClientItem_TypeItem_ENTERTAINMENTBUSINESS,
  EmbedClientItem_TypeItem_ADULTENTERTAINMENT,
  EmbedClientItem_TypeItem_AMUSEMENTPARK,
  EmbedClientItem_TypeItem_ARTGALLERY,
  EmbedClientItem_TypeItem_Casino,
  EmbedClientItem_TypeItem_COMEDYCLUB,
  EmbedClientItem_TypeItem_MOVIETHEATER,
  EmbedClientItem_TypeItem_NIGHTCLUB,
  EmbedClientItem_TypeItem_FINANCIALSERVICE,
  EmbedClientItem_TypeItem_ACCOUNTINGSERVICE,
  EmbedClientItem_TypeItem_AUTOMATEDTELLER,
  EmbedClientItem_TypeItem_BANKORCREDITUNION,
  EmbedClientItem_TypeItem_INSURANCEAGENCY,
  EmbedClientItem_TypeItem_FOODESTABLISHMENT,
  EmbedClientItem_TypeItem_Bakery,
  EmbedClientItem_TypeItem_BARORPUB,
  EmbedClientItem_TypeItem_Brewery,
  EmbedClientItem_TypeItem_CAFEORCOFFEESHOP,
  EmbedClientItem_TypeItem_FASTFOODRESTAURANT,
  EmbedClientItem_TypeItem_ICECREAMSHOP,
  EmbedClientItem_TypeItem_Restaurant,
  EmbedClientItem_TypeItem_Winery,
  EmbedClientItem_TypeItem_GOVERNMENTOFFICE,
  EmbedClientItem_TypeItem_POSTOFFICE,
  EmbedClientItem_TypeItem_HEALTHANDBEAUTYBUSINESS,
  EmbedClientItem_TypeItem_BEAUTYSALON,
  EmbedClientItem_TypeItem_DAYSPA,
  EmbedClientItem_TypeItem_HAIRSALON,
  EmbedClientItem_TypeItem_HEALTHCLUB,
  EmbedClientItem_TypeItem_NAILSALON,
  EmbedClientItem_TypeItem_TATTOOPARLOR,
  EmbedClientItem_TypeItem_HOMEANDCONSTRUCTIONBUSINESS,
  EmbedClientItem_TypeItem_Electrician,
  EmbedClientItem_TypeItem_GENERALCONTRACTOR,
  EmbedClientItem_TypeItem_HVACBUSINESS,
  EmbedClientItem_TypeItem_HOUSEPAINTER,
  EmbedClientItem_TypeItem_Locksmith,
  EmbedClientItem_TypeItem_MOVINGCOMPANY,
  EmbedClientItem_TypeItem_Plumber,
  EmbedClientItem_TypeItem_ROOFINGCONTRACTOR,
  EmbedClientItem_TypeItem_INTERNETCAFE,
  EmbedClientItem_TypeItem_Library,
  EmbedClientItem_TypeItem_LODGINGBUSINESS,
  EmbedClientItem_TypeItem_BEDANDBREAKFAST,
  EmbedClientItem_TypeItem_Hostel,
  EmbedClientItem_TypeItem_Hotel,
  EmbedClientItem_TypeItem_Motel,
  EmbedClientItem_TypeItem_MEDICALORGANIZATION,
  EmbedClientItem_TypeItem_Dentist,
  EmbedClientItem_TypeItem_MEDICALCLINIC,
  EmbedClientItem_TypeItem_Optician,
  EmbedClientItem_TypeItem_Pharmacy,
  EmbedClientItem_TypeItem_Physician,
  EmbedClientItem_TypeItem_VETERINARYCARE,
  EmbedClientItem_TypeItem_PROFESSIONALSERVICE,
  EmbedClientItem_TypeItem_Attorney,
  EmbedClientItem_TypeItem_Notary,
  EmbedClientItem_TypeItem_RADIOSTATION,
  EmbedClientItem_TypeItem_REALESTATEAGENT,
  EmbedClientItem_TypeItem_RECYCLINGCENTER,
  EmbedClientItem_TypeItem_SELFSTORAGE,
  EmbedClientItem_TypeItem_SHOPPINGCENTER,
  EmbedClientItem_TypeItem_SPORTSACTIVITYLOCATION,
  EmbedClientItem_TypeItem_BOWLINGALLEY,
  EmbedClientItem_TypeItem_EXERCISEGYM,
  EmbedClientItem_TypeItem_GOLFCOURSE,
  EmbedClientItem_TypeItem_PUBLICSWIMMINGPOOL,
  EmbedClientItem_TypeItem_SKIRESORT,
  EmbedClientItem_TypeItem_SPORTSCLUB,
  EmbedClientItem_TypeItem_STADIUMORARENA,
  EmbedClientItem_TypeItem_TENNISCOMPLEX,
  EmbedClientItem_TypeItem_Store,
  EmbedClientItem_TypeItem_BIKESTORE,
  EmbedClientItem_TypeItem_BOOKSTORE,
  EmbedClientItem_TypeItem_CLOTHINGSTORE,
  EmbedClientItem_TypeItem_COMPUTERSTORE,
  EmbedClientItem_TypeItem_CONVENIENCESTORE,
  EmbedClientItem_TypeItem_DEPARTMENTSTORE,
  EmbedClientItem_TypeItem_ELECTRONICSSTORE,
  EmbedClientItem_TypeItem_Florist,
  EmbedClientItem_TypeItem_FURNITURESTORE,
  EmbedClientItem_TypeItem_GARDENSTORE,
  EmbedClientItem_TypeItem_GROCERYSTORE,
  EmbedClientItem_TypeItem_HARDWARESTORE,
  EmbedClientItem_TypeItem_HOBBYSHOP,
  EmbedClientItem_TypeItem_HOMEGOODSSTORE,
  EmbedClientItem_TypeItem_JEWELRYSTORE,
  EmbedClientItem_TypeItem_LIQUORSTORE,
  EmbedClientItem_TypeItem_MENSCLOTHINGSTORE,
  EmbedClientItem_TypeItem_MOBILEPHONESTORE,
  EmbedClientItem_TypeItem_MOVIERENTALSTORE,
  EmbedClientItem_TypeItem_MUSICSTORE,
  EmbedClientItem_TypeItem_OFFICEEQUIPMENTSTORE,
  EmbedClientItem_TypeItem_OUTLETSTORE,
  EmbedClientItem_TypeItem_PAWNSHOP,
  EmbedClientItem_TypeItem_PETSTORE,
  EmbedClientItem_TypeItem_SHOESTORE,
  EmbedClientItem_TypeItem_SPORTINGGOODSSTORE,
  EmbedClientItem_TypeItem_TIRESHOP,
  EmbedClientItem_TypeItem_TOYSTORE,
  EmbedClientItem_TypeItem_WHOLESALESTORE,
  EmbedClientItem_TypeItem_TELEVISIONSTATION,
  EmbedClientItem_TypeItem_TOURISTINFORMATIONCENTER,
  EmbedClientItem_TypeItem_TRAVELAGENCY,
  EmbedClientItem_TypeItem_PERFORMINGGROUP,
  EmbedClientItem_TypeItem_MUSICGROUP,
  EmbedClientItem_TypeItem_ADMINISTRATIVEAREA,
  EmbedClientItem_TypeItem_City,
  EmbedClientItem_TypeItem_Country,
  EmbedClientItem_TypeItem_State,
  EmbedClientItem_TypeItem_CIVICSTRUCTURE,
  EmbedClientItem_TypeItem_Airport,
  EmbedClientItem_TypeItem_Aquarium,
  EmbedClientItem_TypeItem_Beach,
  EmbedClientItem_TypeItem_BUSSTATION,
  EmbedClientItem_TypeItem_BUSSTOP,
  EmbedClientItem_TypeItem_Campground,
  EmbedClientItem_TypeItem_Cemetery,
  EmbedClientItem_TypeItem_Crematorium,
  EmbedClientItem_TypeItem_EVENTVENUE,
  EmbedClientItem_TypeItem_GOVERNMENTBUILDING,
  EmbedClientItem_TypeItem_CITYHALL,
  EmbedClientItem_TypeItem_Courthouse,
  EmbedClientItem_TypeItem_DEFENCEESTABLISHMENT,
  EmbedClientItem_TypeItem_Embassy,
  EmbedClientItem_TypeItem_LEGISLATIVEBUILDING,
  EmbedClientItem_TypeItem_Museum,
  EmbedClientItem_TypeItem_MUSICVENUE,
  EmbedClientItem_TypeItem_Park,
  EmbedClientItem_TypeItem_PARKINGFACILITY,
  EmbedClientItem_TypeItem_PERFORMINGARTSTHEATER,
  EmbedClientItem_TypeItem_PLACEOFWORSHIP,
  EmbedClientItem_TypeItem_BUDDHISTTEMPLE,
  EmbedClientItem_TypeItem_CATHOLICCHURCH,
  EmbedClientItem_TypeItem_Church,
  EmbedClientItem_TypeItem_HINDUTEMPLE,
  EmbedClientItem_TypeItem_Mosque,
  EmbedClientItem_TypeItem_Synagogue,
  EmbedClientItem_TypeItem_Playground,
  EmbedClientItem_TypeItem_RVPARK,
  EmbedClientItem_TypeItem_Residence,
  EmbedClientItem_TypeItem_APARTMENTCOMPLEX,
  EmbedClientItem_TypeItem_GATEDRESIDENCECOMMUNITY,
  EmbedClientItem_TypeItem_SINGLEFAMILYRESIDENCE,
  EmbedClientItem_TypeItem_TOURISTATTRACTION,
  EmbedClientItem_TypeItem_SUBWAYSTATION,
  EmbedClientItem_TypeItem_TAXISTAND,
  EmbedClientItem_TypeItem_TRAINSTATION,
  EmbedClientItem_TypeItem_Zoo,
  EmbedClientItem_TypeItem_Landform,
  EmbedClientItem_TypeItem_BODYOFWATER,
  EmbedClientItem_TypeItem_Canal,
  EmbedClientItem_TypeItem_LAKEBODYOFWATER,
  EmbedClientItem_TypeItem_OCEANBODYOFWATER,
  EmbedClientItem_TypeItem_Pond,
  EmbedClientItem_TypeItem_Reservoir,
  EmbedClientItem_TypeItem_RIVERBODYOFWATER,
  EmbedClientItem_TypeItem_SEABODYOFWATER,
  EmbedClientItem_TypeItem_Waterfall,
  EmbedClientItem_TypeItem_Continent,
  EmbedClientItem_TypeItem_Mountain,
  EmbedClientItem_TypeItem_Volcano,
  EmbedClientItem_TypeItem_LANDMARKSORHISTORICALBUILDINGS,
  EmbedClientItem_TypeItem_USERINTERACTION,
  EmbedClientItem_TypeItem_USERPLUSONES,
  EmbedClientItem_TypeItem_Enumeration,
  EmbedClientItem_TypeItem_BOOKFORMATTYPE,
  EmbedClientItem_TypeItem_ITEMAVAILABILITY,
  EmbedClientItem_TypeItem_OFFERITEMCONDITION,
  EmbedClientItem_TypeItem_JOBPOSTING,
  EmbedClientItem_TypeItem_Language,
  EmbedClientItem_TypeItem_Offer,
  EmbedClientItem_TypeItem_Quantity,
  EmbedClientItem_TypeItem_Distance,
  EmbedClientItem_TypeItem_Duration,
  EmbedClientItem_TypeItem_Energy,
  EmbedClientItem_TypeItem_Mass,
  EmbedClientItem_TypeItem_Rating,
  EmbedClientItem_TypeItem_AGGREGATERATING,
  EmbedClientItem_TypeItem_STRUCTUREDVALUE,
  EmbedClientItem_TypeItem_CONTACTPOINT,
  EmbedClientItem_TypeItem_POSTALADDRESS,
  EmbedClientItem_TypeItem_GEOCOORDINATES,
  EmbedClientItem_TypeItem_GEOSHAPE,
  EmbedClientItem_TypeItem_NUTRITIONINFORMATION,
  EmbedClientItem_TypeItem_PRESENTATIONOBJECT,
  EmbedClientItem_TypeItem_DOCUMENTOBJECT,
  EmbedClientItem_TypeItem_SPREADSHEETOBJECT,
  EmbedClientItem_TypeItem_FORMOBJECT,
  EmbedClientItem_TypeItem_DRAWINGOBJECT,
  EmbedClientItem_TypeItem_PLACEREVIEW,
  EmbedClientItem_TypeItem_FILEOBJECT,
  EmbedClientItem_TypeItem_PLAYMUSICTRACK,
  EmbedClientItem_TypeItem_PLAYMUSICALBUM,
  EmbedClientItem_TypeItem_Magazine,
  EmbedClientItem_TypeItem_CAROUSELFRAME,
  EmbedClientItem_TypeItem_PLUSEVENT,
  EmbedClientItem_TypeItem_Hangout,
  EmbedClientItem_TypeItem_HANGOUTBROADCAST,
  EmbedClientItem_TypeItem_HANGOUTCONSUMER,
  EmbedClientItem_TypeItem_Checkin,
  EmbedClientItem_TypeItem_EXAMPLEOBJECT,
  EmbedClientItem_TypeItem_Square,
  EmbedClientItem_TypeItem_SQUAREINVITE,
  EmbedClientItem_TypeItem_PLUSPHOTO,
  EmbedClientItem_TypeItem_PLUSPHOTOALBUM,
  EmbedClientItem_TypeItem_LOCALPLUSPHOTOALBUM,
  EmbedClientItem_TypeItem_PRODUCTREVIEW,
  EmbedClientItem_TypeItem_FINANCIALQUOTE,
  EmbedClientItem_TypeItem_DEPRECATEDTOUROBJECT,
  EmbedClientItem_TypeItem_PLUSPAGE,
  EmbedClientItem_TypeItem_GOOGLECHART,
  EmbedClientItem_TypeItem_PLUSPHOTOSADDEDTOCOLLECTION,
  EmbedClientItem_TypeItem_RECOMMENDEDPEOPLE,
  EmbedClientItem_TypeItem_PLUSPOST,
  EmbedClientItem_TypeItem_Date,
  EmbedClientItem_TypeItem_DRIVEOBJECTCOLLECTION,
  EmbedClientItem_TypeItem_NEWSMEDIAORGANIZATION,
  EmbedClientItem_TypeItem_DYNAMITEATTACHMENTMETADATA,
  EmbedClientItem_TypeItem_DYNAMITEMESSAGEMETADATA,
  EmbedClientItem_TypeItem
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

newtype FormAction_LoadIndicator = FormAction_LoadIndicator {fromFormAction_LoadIndicator :: Core.Text}
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
pattern FormAction_LoadIndicator_Spinner :: FormAction_LoadIndicator
pattern FormAction_LoadIndicator_Spinner = FormAction_LoadIndicator "SPINNER"

-- |
pattern FormAction_LoadIndicator_None :: FormAction_LoadIndicator
pattern FormAction_LoadIndicator_None = FormAction_LoadIndicator "NONE"

{-# COMPLETE
  FormAction_LoadIndicator_Spinner,
  FormAction_LoadIndicator_None,
  FormAction_LoadIndicator
  #-}

-- | LINT.ThenChange(\/\/depot\/google3\/apps\/dynamite\/v1\/web\/datakeys\/annotated_span.proto)
newtype FormatMetadata_FormatType = FormatMetadata_FormatType {fromFormatMetadata_FormatType :: Core.Text}
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

-- | Default value for the enum.
pattern FormatMetadata_FormatType_TYPEUNSPECIFIED :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_TYPEUNSPECIFIED = FormatMetadata_FormatType "TYPE_UNSPECIFIED"

-- |
pattern FormatMetadata_FormatType_Bold :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_Bold = FormatMetadata_FormatType "BOLD"

-- |
pattern FormatMetadata_FormatType_Italic :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_Italic = FormatMetadata_FormatType "ITALIC"

-- |
pattern FormatMetadata_FormatType_Strike :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_Strike = FormatMetadata_FormatType "STRIKE"

-- |
pattern FormatMetadata_FormatType_SOURCECODE :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_SOURCECODE = FormatMetadata_FormatType "SOURCE_CODE"

-- | Inline monospace.
pattern FormatMetadata_FormatType_Monospace :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_Monospace = FormatMetadata_FormatType "MONOSPACE"

-- |
pattern FormatMetadata_FormatType_Hidden :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_Hidden = FormatMetadata_FormatType "HIDDEN"

-- | Multi-line monospace block.
pattern FormatMetadata_FormatType_MONOSPACEBLOCK :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_MONOSPACEBLOCK = FormatMetadata_FormatType "MONOSPACE_BLOCK"

-- |
pattern FormatMetadata_FormatType_Underline :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_Underline = FormatMetadata_FormatType "UNDERLINE"

-- |
pattern FormatMetadata_FormatType_FONTCOLOR :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_FONTCOLOR = FormatMetadata_FormatType "FONT_COLOR"

-- | Encloses BULLETED/LIST/ITEM annotations.
pattern FormatMetadata_FormatType_BULLETEDLIST :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_BULLETEDLIST = FormatMetadata_FormatType "BULLETED_LIST"

-- | Must cover the whole line including the newline
pattern FormatMetadata_FormatType_BULLETEDLISTITEM :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_BULLETEDLISTITEM = FormatMetadata_FormatType "BULLETED_LIST_ITEM"

-- | character at the end. Not used anymore.
pattern FormatMetadata_FormatType_CLIENTHIDDEN :: FormatMetadata_FormatType
pattern FormatMetadata_FormatType_CLIENTHIDDEN = FormatMetadata_FormatType "CLIENT_HIDDEN"

{-# COMPLETE
  FormatMetadata_FormatType_TYPEUNSPECIFIED,
  FormatMetadata_FormatType_Bold,
  FormatMetadata_FormatType_Italic,
  FormatMetadata_FormatType_Strike,
  FormatMetadata_FormatType_SOURCECODE,
  FormatMetadata_FormatType_Monospace,
  FormatMetadata_FormatType_Hidden,
  FormatMetadata_FormatType_MONOSPACEBLOCK,
  FormatMetadata_FormatType_Underline,
  FormatMetadata_FormatType_FONTCOLOR,
  FormatMetadata_FormatType_BULLETEDLIST,
  FormatMetadata_FormatType_BULLETEDLISTITEM,
  FormatMetadata_FormatType_CLIENTHIDDEN,
  FormatMetadata_FormatType
  #-}

-- | If set, this indicates that the segment should be rendered with the specified style. The absence of an explicit style represents \"no style\", i.e. the segment can be rendered with the default style chosen by the application.
newtype Formatting_Style = Formatting_Style {fromFormatting_Style :: Core.Text}
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

-- | This represents a style that is unknown (e.g. a new style was introduced but not supported by older mobile app versions) and should generally not be used as a value in a proto. If the segment does not need to be rendered with a special style, the \'style\' field should simply be left unset. A reasonable fallback for an unknown style is to render the segment in the default style.
pattern Formatting_Style_UNKNOWNSTYLE :: Formatting_Style
pattern Formatting_Style_UNKNOWNSTYLE = Formatting_Style "UNKNOWN_STYLE"

-- | The most important heading to the least important heading.
pattern Formatting_Style_HEADING_1 :: Formatting_Style
pattern Formatting_Style_HEADING_1 = Formatting_Style "HEADING_1"

-- |
pattern Formatting_Style_HEADING_2 :: Formatting_Style
pattern Formatting_Style_HEADING_2 = Formatting_Style "HEADING_2"

-- |
pattern Formatting_Style_HEADING_3 :: Formatting_Style
pattern Formatting_Style_HEADING_3 = Formatting_Style "HEADING_3"

-- |
pattern Formatting_Style_HEADING_4 :: Formatting_Style
pattern Formatting_Style_HEADING_4 = Formatting_Style "HEADING_4"

{-# COMPLETE
  Formatting_Style_UNKNOWNSTYLE,
  Formatting_Style_HEADING_1,
  Formatting_Style_HEADING_2,
  Formatting_Style_HEADING_3,
  Formatting_Style_HEADING_4,
  Formatting_Style
  #-}

-- | The image\'s type (e.g. square border or circular border).
newtype GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle = GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle {fromGoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle :: Core.Text}
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
pattern GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_IMAGESTYLEUNSPECIFIED :: GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle
pattern GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_IMAGESTYLEUNSPECIFIED = GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle "IMAGE_STYLE_UNSPECIFIED"

-- | Square border.
pattern GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_Image :: GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle
pattern GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_Image = GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle "IMAGE"

-- | Circular border.
pattern GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_Avatar :: GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle
pattern GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_Avatar = GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle "AVATAR"

{-# COMPLETE
  GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_IMAGESTYLEUNSPECIFIED,
  GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_Image,
  GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle_Avatar,
  GoogleChatV1ContextualAddOnMarkupCardCardHeader_ImageStyle
  #-}

-- | The icon specified by an enum that indices to an icon provided by Chat API.
newtype GoogleChatV1WidgetMarkupImageButton_Icon = GoogleChatV1WidgetMarkupImageButton_Icon {fromGoogleChatV1WidgetMarkupImageButton_Icon :: Core.Text}
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
pattern GoogleChatV1WidgetMarkupImageButton_Icon_ICONUNSPECIFIED :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_ICONUNSPECIFIED = GoogleChatV1WidgetMarkupImageButton_Icon "ICON_UNSPECIFIED"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Airplane :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Airplane = GoogleChatV1WidgetMarkupImageButton_Icon "AIRPLANE"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Bookmark :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Bookmark = GoogleChatV1WidgetMarkupImageButton_Icon "BOOKMARK"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Bus :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Bus = GoogleChatV1WidgetMarkupImageButton_Icon "BUS"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Car :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Car = GoogleChatV1WidgetMarkupImageButton_Icon "CAR"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Clock :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Clock = GoogleChatV1WidgetMarkupImageButton_Icon "CLOCK"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_CONFIRMATIONNUMBERICON :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_CONFIRMATIONNUMBERICON = GoogleChatV1WidgetMarkupImageButton_Icon "CONFIRMATION_NUMBER_ICON"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Dollar :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Dollar = GoogleChatV1WidgetMarkupImageButton_Icon "DOLLAR"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Description :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Description = GoogleChatV1WidgetMarkupImageButton_Icon "DESCRIPTION"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Email :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Email = GoogleChatV1WidgetMarkupImageButton_Icon "EMAIL"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_EVENTPERFORMER :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_EVENTPERFORMER = GoogleChatV1WidgetMarkupImageButton_Icon "EVENT_PERFORMER"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_EVENTSEAT :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_EVENTSEAT = GoogleChatV1WidgetMarkupImageButton_Icon "EVENT_SEAT"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_FLIGHTARRIVAL :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_FLIGHTARRIVAL = GoogleChatV1WidgetMarkupImageButton_Icon "FLIGHT_ARRIVAL"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_FLIGHTDEPARTURE :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_FLIGHTDEPARTURE = GoogleChatV1WidgetMarkupImageButton_Icon "FLIGHT_DEPARTURE"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Hotel :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Hotel = GoogleChatV1WidgetMarkupImageButton_Icon "HOTEL"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_HOTELROOMTYPE :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_HOTELROOMTYPE = GoogleChatV1WidgetMarkupImageButton_Icon "HOTEL_ROOM_TYPE"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Invite :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Invite = GoogleChatV1WidgetMarkupImageButton_Icon "INVITE"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_MAPPIN :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_MAPPIN = GoogleChatV1WidgetMarkupImageButton_Icon "MAP_PIN"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Membership :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Membership = GoogleChatV1WidgetMarkupImageButton_Icon "MEMBERSHIP"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_MULTIPLEPEOPLE :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_MULTIPLEPEOPLE = GoogleChatV1WidgetMarkupImageButton_Icon "MULTIPLE_PEOPLE"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Offer :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Offer = GoogleChatV1WidgetMarkupImageButton_Icon "OFFER"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Person :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Person = GoogleChatV1WidgetMarkupImageButton_Icon "PERSON"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Phone :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Phone = GoogleChatV1WidgetMarkupImageButton_Icon "PHONE"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_RESTAURANTICON :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_RESTAURANTICON = GoogleChatV1WidgetMarkupImageButton_Icon "RESTAURANT_ICON"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_SHOPPINGCART :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_SHOPPINGCART = GoogleChatV1WidgetMarkupImageButton_Icon "SHOPPING_CART"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Star :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Star = GoogleChatV1WidgetMarkupImageButton_Icon "STAR"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Store :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Store = GoogleChatV1WidgetMarkupImageButton_Icon "STORE"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Ticket :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Ticket = GoogleChatV1WidgetMarkupImageButton_Icon "TICKET"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Train :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_Train = GoogleChatV1WidgetMarkupImageButton_Icon "TRAIN"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_VIDEOCAMERA :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_VIDEOCAMERA = GoogleChatV1WidgetMarkupImageButton_Icon "VIDEO_CAMERA"

-- |
pattern GoogleChatV1WidgetMarkupImageButton_Icon_VIDEOPLAY :: GoogleChatV1WidgetMarkupImageButton_Icon
pattern GoogleChatV1WidgetMarkupImageButton_Icon_VIDEOPLAY = GoogleChatV1WidgetMarkupImageButton_Icon "VIDEO_PLAY"

{-# COMPLETE
  GoogleChatV1WidgetMarkupImageButton_Icon_ICONUNSPECIFIED,
  GoogleChatV1WidgetMarkupImageButton_Icon_Airplane,
  GoogleChatV1WidgetMarkupImageButton_Icon_Bookmark,
  GoogleChatV1WidgetMarkupImageButton_Icon_Bus,
  GoogleChatV1WidgetMarkupImageButton_Icon_Car,
  GoogleChatV1WidgetMarkupImageButton_Icon_Clock,
  GoogleChatV1WidgetMarkupImageButton_Icon_CONFIRMATIONNUMBERICON,
  GoogleChatV1WidgetMarkupImageButton_Icon_Dollar,
  GoogleChatV1WidgetMarkupImageButton_Icon_Description,
  GoogleChatV1WidgetMarkupImageButton_Icon_Email,
  GoogleChatV1WidgetMarkupImageButton_Icon_EVENTPERFORMER,
  GoogleChatV1WidgetMarkupImageButton_Icon_EVENTSEAT,
  GoogleChatV1WidgetMarkupImageButton_Icon_FLIGHTARRIVAL,
  GoogleChatV1WidgetMarkupImageButton_Icon_FLIGHTDEPARTURE,
  GoogleChatV1WidgetMarkupImageButton_Icon_Hotel,
  GoogleChatV1WidgetMarkupImageButton_Icon_HOTELROOMTYPE,
  GoogleChatV1WidgetMarkupImageButton_Icon_Invite,
  GoogleChatV1WidgetMarkupImageButton_Icon_MAPPIN,
  GoogleChatV1WidgetMarkupImageButton_Icon_Membership,
  GoogleChatV1WidgetMarkupImageButton_Icon_MULTIPLEPEOPLE,
  GoogleChatV1WidgetMarkupImageButton_Icon_Offer,
  GoogleChatV1WidgetMarkupImageButton_Icon_Person,
  GoogleChatV1WidgetMarkupImageButton_Icon_Phone,
  GoogleChatV1WidgetMarkupImageButton_Icon_RESTAURANTICON,
  GoogleChatV1WidgetMarkupImageButton_Icon_SHOPPINGCART,
  GoogleChatV1WidgetMarkupImageButton_Icon_Star,
  GoogleChatV1WidgetMarkupImageButton_Icon_Store,
  GoogleChatV1WidgetMarkupImageButton_Icon_Ticket,
  GoogleChatV1WidgetMarkupImageButton_Icon_Train,
  GoogleChatV1WidgetMarkupImageButton_Icon_VIDEOCAMERA,
  GoogleChatV1WidgetMarkupImageButton_Icon_VIDEOPLAY,
  GoogleChatV1WidgetMarkupImageButton_Icon
  #-}

-- | An enum value that will be replaced by the Chat API with the corresponding icon image.
newtype GoogleChatV1WidgetMarkupKeyValue_Icon = GoogleChatV1WidgetMarkupKeyValue_Icon {fromGoogleChatV1WidgetMarkupKeyValue_Icon :: Core.Text}
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
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_ICONUNSPECIFIED :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_ICONUNSPECIFIED = GoogleChatV1WidgetMarkupKeyValue_Icon "ICON_UNSPECIFIED"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Airplane :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Airplane = GoogleChatV1WidgetMarkupKeyValue_Icon "AIRPLANE"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Bookmark :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Bookmark = GoogleChatV1WidgetMarkupKeyValue_Icon "BOOKMARK"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Bus :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Bus = GoogleChatV1WidgetMarkupKeyValue_Icon "BUS"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Car :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Car = GoogleChatV1WidgetMarkupKeyValue_Icon "CAR"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Clock :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Clock = GoogleChatV1WidgetMarkupKeyValue_Icon "CLOCK"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_CONFIRMATIONNUMBERICON :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_CONFIRMATIONNUMBERICON = GoogleChatV1WidgetMarkupKeyValue_Icon "CONFIRMATION_NUMBER_ICON"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Dollar :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Dollar = GoogleChatV1WidgetMarkupKeyValue_Icon "DOLLAR"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Description :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Description = GoogleChatV1WidgetMarkupKeyValue_Icon "DESCRIPTION"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Email :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Email = GoogleChatV1WidgetMarkupKeyValue_Icon "EMAIL"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_EVENTPERFORMER :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_EVENTPERFORMER = GoogleChatV1WidgetMarkupKeyValue_Icon "EVENT_PERFORMER"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_EVENTSEAT :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_EVENTSEAT = GoogleChatV1WidgetMarkupKeyValue_Icon "EVENT_SEAT"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_FLIGHTARRIVAL :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_FLIGHTARRIVAL = GoogleChatV1WidgetMarkupKeyValue_Icon "FLIGHT_ARRIVAL"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_FLIGHTDEPARTURE :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_FLIGHTDEPARTURE = GoogleChatV1WidgetMarkupKeyValue_Icon "FLIGHT_DEPARTURE"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Hotel :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Hotel = GoogleChatV1WidgetMarkupKeyValue_Icon "HOTEL"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_HOTELROOMTYPE :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_HOTELROOMTYPE = GoogleChatV1WidgetMarkupKeyValue_Icon "HOTEL_ROOM_TYPE"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Invite :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Invite = GoogleChatV1WidgetMarkupKeyValue_Icon "INVITE"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_MAPPIN :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_MAPPIN = GoogleChatV1WidgetMarkupKeyValue_Icon "MAP_PIN"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Membership :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Membership = GoogleChatV1WidgetMarkupKeyValue_Icon "MEMBERSHIP"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_MULTIPLEPEOPLE :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_MULTIPLEPEOPLE = GoogleChatV1WidgetMarkupKeyValue_Icon "MULTIPLE_PEOPLE"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Offer :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Offer = GoogleChatV1WidgetMarkupKeyValue_Icon "OFFER"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Person :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Person = GoogleChatV1WidgetMarkupKeyValue_Icon "PERSON"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Phone :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Phone = GoogleChatV1WidgetMarkupKeyValue_Icon "PHONE"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_RESTAURANTICON :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_RESTAURANTICON = GoogleChatV1WidgetMarkupKeyValue_Icon "RESTAURANT_ICON"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_SHOPPINGCART :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_SHOPPINGCART = GoogleChatV1WidgetMarkupKeyValue_Icon "SHOPPING_CART"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Star :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Star = GoogleChatV1WidgetMarkupKeyValue_Icon "STAR"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Store :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Store = GoogleChatV1WidgetMarkupKeyValue_Icon "STORE"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Ticket :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Ticket = GoogleChatV1WidgetMarkupKeyValue_Icon "TICKET"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Train :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_Train = GoogleChatV1WidgetMarkupKeyValue_Icon "TRAIN"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_VIDEOCAMERA :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_VIDEOCAMERA = GoogleChatV1WidgetMarkupKeyValue_Icon "VIDEO_CAMERA"

-- |
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_VIDEOPLAY :: GoogleChatV1WidgetMarkupKeyValue_Icon
pattern GoogleChatV1WidgetMarkupKeyValue_Icon_VIDEOPLAY = GoogleChatV1WidgetMarkupKeyValue_Icon "VIDEO_PLAY"

{-# COMPLETE
  GoogleChatV1WidgetMarkupKeyValue_Icon_ICONUNSPECIFIED,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Airplane,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Bookmark,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Bus,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Car,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Clock,
  GoogleChatV1WidgetMarkupKeyValue_Icon_CONFIRMATIONNUMBERICON,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Dollar,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Description,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Email,
  GoogleChatV1WidgetMarkupKeyValue_Icon_EVENTPERFORMER,
  GoogleChatV1WidgetMarkupKeyValue_Icon_EVENTSEAT,
  GoogleChatV1WidgetMarkupKeyValue_Icon_FLIGHTARRIVAL,
  GoogleChatV1WidgetMarkupKeyValue_Icon_FLIGHTDEPARTURE,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Hotel,
  GoogleChatV1WidgetMarkupKeyValue_Icon_HOTELROOMTYPE,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Invite,
  GoogleChatV1WidgetMarkupKeyValue_Icon_MAPPIN,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Membership,
  GoogleChatV1WidgetMarkupKeyValue_Icon_MULTIPLEPEOPLE,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Offer,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Person,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Phone,
  GoogleChatV1WidgetMarkupKeyValue_Icon_RESTAURANTICON,
  GoogleChatV1WidgetMarkupKeyValue_Icon_SHOPPINGCART,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Star,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Store,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Ticket,
  GoogleChatV1WidgetMarkupKeyValue_Icon_Train,
  GoogleChatV1WidgetMarkupKeyValue_Icon_VIDEOCAMERA,
  GoogleChatV1WidgetMarkupKeyValue_Icon_VIDEOPLAY,
  GoogleChatV1WidgetMarkupKeyValue_Icon
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

newtype GridItem_Layout = GridItem_Layout {fromGridItem_Layout :: Core.Text}
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
pattern GridItem_Layout_NOTSET :: GridItem_Layout
pattern GridItem_Layout_NOTSET = GridItem_Layout "NOT_SET"

-- | The title and subtitle are shown below the grid item\'s image.
pattern GridItem_Layout_TEXTBELOW :: GridItem_Layout
pattern GridItem_Layout_TEXTBELOW = GridItem_Layout "TEXT_BELOW"

-- | The title and subtitle are shown above the grid item\'s image.
pattern GridItem_Layout_TEXTABOVE :: GridItem_Layout
pattern GridItem_Layout_TEXTABOVE = GridItem_Layout "TEXT_ABOVE"

{-# COMPLETE
  GridItem_Layout_NOTSET,
  GridItem_Layout_TEXTBELOW,
  GridItem_Layout_TEXTABOVE,
  GridItem_Layout
  #-}

newtype GridItem_TextAlignment = GridItem_TextAlignment {fromGridItem_TextAlignment :: Core.Text}
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
pattern GridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: GridItem_TextAlignment
pattern GridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED = GridItem_TextAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- |
pattern GridItem_TextAlignment_Start :: GridItem_TextAlignment
pattern GridItem_TextAlignment_Start = GridItem_TextAlignment "START"

-- |
pattern GridItem_TextAlignment_Center :: GridItem_TextAlignment
pattern GridItem_TextAlignment_Center = GridItem_TextAlignment "CENTER"

-- |
pattern GridItem_TextAlignment_End :: GridItem_TextAlignment
pattern GridItem_TextAlignment_End = GridItem_TextAlignment "END"

{-# COMPLETE
  GridItem_TextAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  GridItem_TextAlignment_Start,
  GridItem_TextAlignment_Center,
  GridItem_TextAlignment_End,
  GridItem_TextAlignment
  #-}

newtype GroupLinkSharingModificationEvent_NewStatus = GroupLinkSharingModificationEvent_NewStatus {fromGroupLinkSharingModificationEvent_NewStatus :: Core.Text}
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
pattern GroupLinkSharingModificationEvent_NewStatus_UNKNOWNLINKSHARINGSTATUS :: GroupLinkSharingModificationEvent_NewStatus
pattern GroupLinkSharingModificationEvent_NewStatus_UNKNOWNLINKSHARINGSTATUS = GroupLinkSharingModificationEvent_NewStatus "UNKNOWN_LINK_SHARING_STATUS"

-- | Link sharing is turned on.
pattern GroupLinkSharingModificationEvent_NewStatus_LINKSHARINGON :: GroupLinkSharingModificationEvent_NewStatus
pattern GroupLinkSharingModificationEvent_NewStatus_LINKSHARINGON = GroupLinkSharingModificationEvent_NewStatus "LINK_SHARING_ON"

-- | Link sharing is turned off.
pattern GroupLinkSharingModificationEvent_NewStatus_LINKSHARINGOFF :: GroupLinkSharingModificationEvent_NewStatus
pattern GroupLinkSharingModificationEvent_NewStatus_LINKSHARINGOFF = GroupLinkSharingModificationEvent_NewStatus "LINK_SHARING_OFF"

-- | Link sharing is not available for the conversation.
pattern GroupLinkSharingModificationEvent_NewStatus_NOTAVAILABLE :: GroupLinkSharingModificationEvent_NewStatus
pattern GroupLinkSharingModificationEvent_NewStatus_NOTAVAILABLE = GroupLinkSharingModificationEvent_NewStatus "NOT_AVAILABLE"

{-# COMPLETE
  GroupLinkSharingModificationEvent_NewStatus_UNKNOWNLINKSHARINGSTATUS,
  GroupLinkSharingModificationEvent_NewStatus_LINKSHARINGON,
  GroupLinkSharingModificationEvent_NewStatus_LINKSHARINGOFF,
  GroupLinkSharingModificationEvent_NewStatus_NOTAVAILABLE,
  GroupLinkSharingModificationEvent_NewStatus
  #-}

newtype GsuiteIntegrationMetadata_ClientType = GsuiteIntegrationMetadata_ClientType {fromGsuiteIntegrationMetadata_ClientType :: Core.Text}
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
pattern GsuiteIntegrationMetadata_ClientType_UNKNOWNCLIENTTYPE :: GsuiteIntegrationMetadata_ClientType
pattern GsuiteIntegrationMetadata_ClientType_UNKNOWNCLIENTTYPE = GsuiteIntegrationMetadata_ClientType "UNKNOWN_CLIENT_TYPE"

-- |
pattern GsuiteIntegrationMetadata_ClientType_Meet :: GsuiteIntegrationMetadata_ClientType
pattern GsuiteIntegrationMetadata_ClientType_Meet = GsuiteIntegrationMetadata_ClientType "MEET"

-- |
pattern GsuiteIntegrationMetadata_ClientType_Tasks :: GsuiteIntegrationMetadata_ClientType
pattern GsuiteIntegrationMetadata_ClientType_Tasks = GsuiteIntegrationMetadata_ClientType "TASKS"

-- |
pattern GsuiteIntegrationMetadata_ClientType_CALENDAREVENT :: GsuiteIntegrationMetadata_ClientType
pattern GsuiteIntegrationMetadata_ClientType_CALENDAREVENT = GsuiteIntegrationMetadata_ClientType "CALENDAR_EVENT"

-- |
pattern GsuiteIntegrationMetadata_ClientType_Assistant :: GsuiteIntegrationMetadata_ClientType
pattern GsuiteIntegrationMetadata_ClientType_Assistant = GsuiteIntegrationMetadata_ClientType "ASSISTANT"

-- |
pattern GsuiteIntegrationMetadata_ClientType_ACTIVITYFEEDSERVICE :: GsuiteIntegrationMetadata_ClientType
pattern GsuiteIntegrationMetadata_ClientType_ACTIVITYFEEDSERVICE = GsuiteIntegrationMetadata_ClientType "ACTIVITY_FEED_SERVICE"

{-# COMPLETE
  GsuiteIntegrationMetadata_ClientType_UNKNOWNCLIENTTYPE,
  GsuiteIntegrationMetadata_ClientType_Meet,
  GsuiteIntegrationMetadata_ClientType_Tasks,
  GsuiteIntegrationMetadata_ClientType_CALENDAREVENT,
  GsuiteIntegrationMetadata_ClientType_Assistant,
  GsuiteIntegrationMetadata_ClientType_ACTIVITYFEEDSERVICE,
  GsuiteIntegrationMetadata_ClientType
  #-}

newtype HangoutEvent_MediaType = HangoutEvent_MediaType {fromHangoutEvent_MediaType :: Core.Text}
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
pattern HangoutEvent_MediaType_AUDIOVIDEO :: HangoutEvent_MediaType
pattern HangoutEvent_MediaType_AUDIOVIDEO = HangoutEvent_MediaType "AUDIO_VIDEO"

-- |
pattern HangoutEvent_MediaType_AUDIOONLY :: HangoutEvent_MediaType
pattern HangoutEvent_MediaType_AUDIOONLY = HangoutEvent_MediaType "AUDIO_ONLY"

-- | A user has started a PTT broadcast. When receiving a notification with this HangoutMediaType, other users in the conversation will take different actions depending on their active clients: a) If there is a recent \"reasonable\" active client, the user will join hangout and play audio. b) If there is no \"reasonable\" active client an invite will be displayed on all clients.
pattern HangoutEvent_MediaType_PUSHTOTALK :: HangoutEvent_MediaType
pattern HangoutEvent_MediaType_PUSHTOTALK = HangoutEvent_MediaType "PUSH_TO_TALK"

{-# COMPLETE
  HangoutEvent_MediaType_AUDIOVIDEO,
  HangoutEvent_MediaType_AUDIOONLY,
  HangoutEvent_MediaType_PUSHTOTALK,
  HangoutEvent_MediaType
  #-}

newtype HangoutEvent_Type = HangoutEvent_Type {fromHangoutEvent_Type :: Core.Text}
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
pattern HangoutEvent_Type_STARTHANGOUT :: HangoutEvent_Type
pattern HangoutEvent_Type_STARTHANGOUT = HangoutEvent_Type "START_HANGOUT"

-- |
pattern HangoutEvent_Type_JOINHANGOUT :: HangoutEvent_Type
pattern HangoutEvent_Type_JOINHANGOUT = HangoutEvent_Type "JOIN_HANGOUT"

-- |
pattern HangoutEvent_Type_LEAVEHANGOUT :: HangoutEvent_Type
pattern HangoutEvent_Type_LEAVEHANGOUT = HangoutEvent_Type "LEAVE_HANGOUT"

-- |
pattern HangoutEvent_Type_ENDHANGOUT :: HangoutEvent_Type
pattern HangoutEvent_Type_ENDHANGOUT = HangoutEvent_Type "END_HANGOUT"

-- |
pattern HangoutEvent_Type_HANGOUTCOMINGSOON :: HangoutEvent_Type
pattern HangoutEvent_Type_HANGOUTCOMINGSOON = HangoutEvent_Type "HANGOUT_COMING_SOON"

-- |
pattern HangoutEvent_Type_ONGOINGHANGOUT :: HangoutEvent_Type
pattern HangoutEvent_Type_ONGOINGHANGOUT = HangoutEvent_Type "ONGOING_HANGOUT"

{-# COMPLETE
  HangoutEvent_Type_STARTHANGOUT,
  HangoutEvent_Type_JOINHANGOUT,
  HangoutEvent_Type_LEAVEHANGOUT,
  HangoutEvent_Type_ENDHANGOUT,
  HangoutEvent_Type_HANGOUTCOMINGSOON,
  HangoutEvent_Type_ONGOINGHANGOUT,
  HangoutEvent_Type
  #-}

newtype HangoutVideoEventMetadata_HangoutVideoType = HangoutVideoEventMetadata_HangoutVideoType {fromHangoutVideoEventMetadata_HangoutVideoType :: Core.Text}
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
pattern HangoutVideoEventMetadata_HangoutVideoType_UNKNOWNHANGOUTVIDEOEVENTTYPE :: HangoutVideoEventMetadata_HangoutVideoType
pattern HangoutVideoEventMetadata_HangoutVideoType_UNKNOWNHANGOUTVIDEOEVENTTYPE = HangoutVideoEventMetadata_HangoutVideoType "UNKNOWN_HANGOUT_VIDEO_EVENT_TYPE"

-- |
pattern HangoutVideoEventMetadata_HangoutVideoType_VIDEOSTART :: HangoutVideoEventMetadata_HangoutVideoType
pattern HangoutVideoEventMetadata_HangoutVideoType_VIDEOSTART = HangoutVideoEventMetadata_HangoutVideoType "VIDEO_START"

-- |
pattern HangoutVideoEventMetadata_HangoutVideoType_VIDEOEND :: HangoutVideoEventMetadata_HangoutVideoType
pattern HangoutVideoEventMetadata_HangoutVideoType_VIDEOEND = HangoutVideoEventMetadata_HangoutVideoType "VIDEO_END"

{-# COMPLETE
  HangoutVideoEventMetadata_HangoutVideoType_UNKNOWNHANGOUTVIDEOEVENTTYPE,
  HangoutVideoEventMetadata_HangoutVideoType_VIDEOSTART,
  HangoutVideoEventMetadata_HangoutVideoType_VIDEOEND,
  HangoutVideoEventMetadata_HangoutVideoType
  #-}

newtype HistoryRecord_Type = HistoryRecord_Type {fromHistoryRecord_Type :: Core.Text}
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

-- | Represents a type that is deprecated or not known by the executing code. Even if Fusebox sends a HistoryRecord with Type not UNKNOWN, it may send Type values that are not yet defined on the client-side, in which case they will be appear as Type.UNKNOWN on the client.
pattern HistoryRecord_Type_Unknown :: HistoryRecord_Type
pattern HistoryRecord_Type_Unknown = HistoryRecord_Type "UNKNOWN"

-- | Represents a change internal to the Fusebox. HistoryRecords for Fusebox internal changes contribute to the user\'s version, which is defined as the latest HistoryRecord\'s record/id. INTERNAL HistoryRecords exist to allow a client to update its notion of the latest record/id it has processed, but do not necessarily contain any other information.
pattern HistoryRecord_Type_Internal :: HistoryRecord_Type
pattern HistoryRecord_Type_Internal = HistoryRecord_Type "INTERNAL"

-- | ThreadUpdate:
pattern HistoryRecord_Type_MESSAGEADDED :: HistoryRecord_Type
pattern HistoryRecord_Type_MESSAGEADDED = HistoryRecord_Type "MESSAGE_ADDED"

-- |
pattern HistoryRecord_Type_MESSAGEDELETED :: HistoryRecord_Type
pattern HistoryRecord_Type_MESSAGEDELETED = HistoryRecord_Type "MESSAGE_DELETED"

-- |
pattern HistoryRecord_Type_LABELADDED :: HistoryRecord_Type
pattern HistoryRecord_Type_LABELADDED = HistoryRecord_Type "LABEL_ADDED"

-- |
pattern HistoryRecord_Type_LABELREMOVED :: HistoryRecord_Type
pattern HistoryRecord_Type_LABELREMOVED = HistoryRecord_Type "LABEL_REMOVED"

-- |
pattern HistoryRecord_Type_ATTRIBUTESET :: HistoryRecord_Type
pattern HistoryRecord_Type_ATTRIBUTESET = HistoryRecord_Type "ATTRIBUTE_SET"

-- |
pattern HistoryRecord_Type_ATTRIBUTEREMOVED :: HistoryRecord_Type
pattern HistoryRecord_Type_ATTRIBUTEREMOVED = HistoryRecord_Type "ATTRIBUTE_REMOVED"

-- |
pattern HistoryRecord_Type_THREADKEYSET :: HistoryRecord_Type
pattern HistoryRecord_Type_THREADKEYSET = HistoryRecord_Type "THREAD_KEY_SET"

-- | LabelUpdate:
pattern HistoryRecord_Type_LABELCREATED :: HistoryRecord_Type
pattern HistoryRecord_Type_LABELCREATED = HistoryRecord_Type "LABEL_CREATED"

-- |
pattern HistoryRecord_Type_LABELDELETED :: HistoryRecord_Type
pattern HistoryRecord_Type_LABELDELETED = HistoryRecord_Type "LABEL_DELETED"

-- |
pattern HistoryRecord_Type_LABELRENAMED :: HistoryRecord_Type
pattern HistoryRecord_Type_LABELRENAMED = HistoryRecord_Type "LABEL_RENAMED"

-- |
pattern HistoryRecord_Type_LABELUPDATED :: HistoryRecord_Type
pattern HistoryRecord_Type_LABELUPDATED = HistoryRecord_Type "LABEL_UPDATED"

-- | PrefUpdate:
pattern HistoryRecord_Type_PREFWRITTEN :: HistoryRecord_Type
pattern HistoryRecord_Type_PREFWRITTEN = HistoryRecord_Type "PREF_WRITTEN"

-- |
pattern HistoryRecord_Type_PREFDELETED :: HistoryRecord_Type
pattern HistoryRecord_Type_PREFDELETED = HistoryRecord_Type "PREF_DELETED"

-- | FilterUpdate:
pattern HistoryRecord_Type_FILTERCREATED :: HistoryRecord_Type
pattern HistoryRecord_Type_FILTERCREATED = HistoryRecord_Type "FILTER_CREATED"

-- |
pattern HistoryRecord_Type_FILTERDELETED :: HistoryRecord_Type
pattern HistoryRecord_Type_FILTERDELETED = HistoryRecord_Type "FILTER_DELETED"

-- | IMAP
pattern HistoryRecord_Type_IMAPUIDSREASSIGN :: HistoryRecord_Type
pattern HistoryRecord_Type_IMAPUIDSREASSIGN = HistoryRecord_Type "IMAP_UIDS_REASSIGN"

-- | EAI
pattern HistoryRecord_Type_TOPICSTATEUPDATED :: HistoryRecord_Type
pattern HistoryRecord_Type_TOPICSTATEUPDATED = HistoryRecord_Type "TOPIC_STATE_UPDATED"

-- | TXN/DEBUG/INFO
pattern HistoryRecord_Type_TXNDEBUGINFO :: HistoryRecord_Type
pattern HistoryRecord_Type_TXNDEBUGINFO = HistoryRecord_Type "TXN_DEBUG_INFO"

{-# COMPLETE
  HistoryRecord_Type_Unknown,
  HistoryRecord_Type_Internal,
  HistoryRecord_Type_MESSAGEADDED,
  HistoryRecord_Type_MESSAGEDELETED,
  HistoryRecord_Type_LABELADDED,
  HistoryRecord_Type_LABELREMOVED,
  HistoryRecord_Type_ATTRIBUTESET,
  HistoryRecord_Type_ATTRIBUTEREMOVED,
  HistoryRecord_Type_THREADKEYSET,
  HistoryRecord_Type_LABELCREATED,
  HistoryRecord_Type_LABELDELETED,
  HistoryRecord_Type_LABELRENAMED,
  HistoryRecord_Type_LABELUPDATED,
  HistoryRecord_Type_PREFWRITTEN,
  HistoryRecord_Type_PREFDELETED,
  HistoryRecord_Type_FILTERCREATED,
  HistoryRecord_Type_FILTERDELETED,
  HistoryRecord_Type_IMAPUIDSREASSIGN,
  HistoryRecord_Type_TOPICSTATEUPDATED,
  HistoryRecord_Type_TXNDEBUGINFO,
  HistoryRecord_Type
  #-}

newtype IconImage_Icon = IconImage_Icon {fromIconImage_Icon :: Core.Text}
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
pattern IconImage_Icon_None :: IconImage_Icon
pattern IconImage_Icon_None = IconImage_Icon "NONE"

-- |
pattern IconImage_Icon_Airplane :: IconImage_Icon
pattern IconImage_Icon_Airplane = IconImage_Icon "AIRPLANE"

-- |
pattern IconImage_Icon_Bookmark :: IconImage_Icon
pattern IconImage_Icon_Bookmark = IconImage_Icon "BOOKMARK"

-- |
pattern IconImage_Icon_Bus :: IconImage_Icon
pattern IconImage_Icon_Bus = IconImage_Icon "BUS"

-- |
pattern IconImage_Icon_Car :: IconImage_Icon
pattern IconImage_Icon_Car = IconImage_Icon "CAR"

-- |
pattern IconImage_Icon_Clock :: IconImage_Icon
pattern IconImage_Icon_Clock = IconImage_Icon "CLOCK"

-- |
pattern IconImage_Icon_CONFIRMATIONNUMBERICON :: IconImage_Icon
pattern IconImage_Icon_CONFIRMATIONNUMBERICON = IconImage_Icon "CONFIRMATION_NUMBER_ICON"

-- |
pattern IconImage_Icon_Dollar :: IconImage_Icon
pattern IconImage_Icon_Dollar = IconImage_Icon "DOLLAR"

-- |
pattern IconImage_Icon_Description :: IconImage_Icon
pattern IconImage_Icon_Description = IconImage_Icon "DESCRIPTION"

-- |
pattern IconImage_Icon_Edit :: IconImage_Icon
pattern IconImage_Icon_Edit = IconImage_Icon "EDIT"

-- |
pattern IconImage_Icon_EDITNOTE :: IconImage_Icon
pattern IconImage_Icon_EDITNOTE = IconImage_Icon "EDIT_NOTE"

-- |
pattern IconImage_Icon_Email :: IconImage_Icon
pattern IconImage_Icon_Email = IconImage_Icon "EMAIL"

-- |
pattern IconImage_Icon_EVENTPERFORMER :: IconImage_Icon
pattern IconImage_Icon_EVENTPERFORMER = IconImage_Icon "EVENT_PERFORMER"

-- |
pattern IconImage_Icon_EVENTSEAT :: IconImage_Icon
pattern IconImage_Icon_EVENTSEAT = IconImage_Icon "EVENT_SEAT"

-- |
pattern IconImage_Icon_FLIGHTARRIVAL :: IconImage_Icon
pattern IconImage_Icon_FLIGHTARRIVAL = IconImage_Icon "FLIGHT_ARRIVAL"

-- |
pattern IconImage_Icon_FLIGHTDEPARTURE :: IconImage_Icon
pattern IconImage_Icon_FLIGHTDEPARTURE = IconImage_Icon "FLIGHT_DEPARTURE"

-- |
pattern IconImage_Icon_Hotel :: IconImage_Icon
pattern IconImage_Icon_Hotel = IconImage_Icon "HOTEL"

-- |
pattern IconImage_Icon_HOTELROOMTYPE :: IconImage_Icon
pattern IconImage_Icon_HOTELROOMTYPE = IconImage_Icon "HOTEL_ROOM_TYPE"

-- |
pattern IconImage_Icon_Invite :: IconImage_Icon
pattern IconImage_Icon_Invite = IconImage_Icon "INVITE"

-- |
pattern IconImage_Icon_MAPPIN :: IconImage_Icon
pattern IconImage_Icon_MAPPIN = IconImage_Icon "MAP_PIN"

-- |
pattern IconImage_Icon_Membership :: IconImage_Icon
pattern IconImage_Icon_Membership = IconImage_Icon "MEMBERSHIP"

-- |
pattern IconImage_Icon_MULTIPLEPEOPLE :: IconImage_Icon
pattern IconImage_Icon_MULTIPLEPEOPLE = IconImage_Icon "MULTIPLE_PEOPLE"

-- |
pattern IconImage_Icon_Offer :: IconImage_Icon
pattern IconImage_Icon_Offer = IconImage_Icon "OFFER"

-- |
pattern IconImage_Icon_OPENINNEW :: IconImage_Icon
pattern IconImage_Icon_OPENINNEW = IconImage_Icon "OPEN_IN_NEW"

-- |
pattern IconImage_Icon_Person :: IconImage_Icon
pattern IconImage_Icon_Person = IconImage_Icon "PERSON"

-- |
pattern IconImage_Icon_Phone :: IconImage_Icon
pattern IconImage_Icon_Phone = IconImage_Icon "PHONE"

-- |
pattern IconImage_Icon_RESTAURANTICON :: IconImage_Icon
pattern IconImage_Icon_RESTAURANTICON = IconImage_Icon "RESTAURANT_ICON"

-- |
pattern IconImage_Icon_SHOPPINGCART :: IconImage_Icon
pattern IconImage_Icon_SHOPPINGCART = IconImage_Icon "SHOPPING_CART"

-- |
pattern IconImage_Icon_Star :: IconImage_Icon
pattern IconImage_Icon_Star = IconImage_Icon "STAR"

-- |
pattern IconImage_Icon_Store :: IconImage_Icon
pattern IconImage_Icon_Store = IconImage_Icon "STORE"

-- |
pattern IconImage_Icon_Ticket :: IconImage_Icon
pattern IconImage_Icon_Ticket = IconImage_Icon "TICKET"

-- |
pattern IconImage_Icon_Train :: IconImage_Icon
pattern IconImage_Icon_Train = IconImage_Icon "TRAIN"

-- |
pattern IconImage_Icon_VIDEOCAMERA :: IconImage_Icon
pattern IconImage_Icon_VIDEOCAMERA = IconImage_Icon "VIDEO_CAMERA"

-- | Add new items in alphabetical order. Next Available ID: 34
pattern IconImage_Icon_VIDEOPLAY :: IconImage_Icon
pattern IconImage_Icon_VIDEOPLAY = IconImage_Icon "VIDEO_PLAY"

{-# COMPLETE
  IconImage_Icon_None,
  IconImage_Icon_Airplane,
  IconImage_Icon_Bookmark,
  IconImage_Icon_Bus,
  IconImage_Icon_Car,
  IconImage_Icon_Clock,
  IconImage_Icon_CONFIRMATIONNUMBERICON,
  IconImage_Icon_Dollar,
  IconImage_Icon_Description,
  IconImage_Icon_Edit,
  IconImage_Icon_EDITNOTE,
  IconImage_Icon_Email,
  IconImage_Icon_EVENTPERFORMER,
  IconImage_Icon_EVENTSEAT,
  IconImage_Icon_FLIGHTARRIVAL,
  IconImage_Icon_FLIGHTDEPARTURE,
  IconImage_Icon_Hotel,
  IconImage_Icon_HOTELROOMTYPE,
  IconImage_Icon_Invite,
  IconImage_Icon_MAPPIN,
  IconImage_Icon_Membership,
  IconImage_Icon_MULTIPLEPEOPLE,
  IconImage_Icon_Offer,
  IconImage_Icon_OPENINNEW,
  IconImage_Icon_Person,
  IconImage_Icon_Phone,
  IconImage_Icon_RESTAURANTICON,
  IconImage_Icon_SHOPPINGCART,
  IconImage_Icon_Star,
  IconImage_Icon_Store,
  IconImage_Icon_Ticket,
  IconImage_Icon_Train,
  IconImage_Icon_VIDEOCAMERA,
  IconImage_Icon_VIDEOPLAY,
  IconImage_Icon
  #-}

-- | The image cropping style. Note that icons with a CIRCLE style are rendered larger than the default icon size.
newtype IconImage_ImageStyle = IconImage_ImageStyle {fromIconImage_ImageStyle :: Core.Text}
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

-- | No value specified.
pattern IconImage_ImageStyle_CROPTYPENOTSET :: IconImage_ImageStyle
pattern IconImage_ImageStyle_CROPTYPENOTSET = IconImage_ImageStyle "CROP_TYPE_NOT_SET"

-- | Applies a square crop.
pattern IconImage_ImageStyle_Square :: IconImage_ImageStyle
pattern IconImage_ImageStyle_Square = IconImage_ImageStyle "SQUARE"

-- | Applies a circular crop.
pattern IconImage_ImageStyle_Circle :: IconImage_ImageStyle
pattern IconImage_ImageStyle_Circle = IconImage_ImageStyle "CIRCLE"

-- | Applies a rectangular crop with a custom aspect ratio.
pattern IconImage_ImageStyle_RECTANGLECUSTOM :: IconImage_ImageStyle
pattern IconImage_ImageStyle_RECTANGLECUSTOM = IconImage_ImageStyle "RECTANGLE_CUSTOM"

-- | Applies a rectangular crop with a 4:3 aspect ratio.
pattern IconImage_ImageStyle_RECTANGLE_4_3 :: IconImage_ImageStyle
pattern IconImage_ImageStyle_RECTANGLE_4_3 = IconImage_ImageStyle "RECTANGLE_4_3"

{-# COMPLETE
  IconImage_ImageStyle_CROPTYPENOTSET,
  IconImage_ImageStyle_Square,
  IconImage_ImageStyle_Circle,
  IconImage_ImageStyle_RECTANGLECUSTOM,
  IconImage_ImageStyle_RECTANGLE_4_3,
  IconImage_ImageStyle
  #-}

newtype ImageButton_Icon = ImageButton_Icon {fromImageButton_Icon :: Core.Text}
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
pattern ImageButton_Icon_None :: ImageButton_Icon
pattern ImageButton_Icon_None = ImageButton_Icon "NONE"

-- |
pattern ImageButton_Icon_Airplane :: ImageButton_Icon
pattern ImageButton_Icon_Airplane = ImageButton_Icon "AIRPLANE"

-- |
pattern ImageButton_Icon_Bookmark :: ImageButton_Icon
pattern ImageButton_Icon_Bookmark = ImageButton_Icon "BOOKMARK"

-- |
pattern ImageButton_Icon_Bus :: ImageButton_Icon
pattern ImageButton_Icon_Bus = ImageButton_Icon "BUS"

-- |
pattern ImageButton_Icon_Car :: ImageButton_Icon
pattern ImageButton_Icon_Car = ImageButton_Icon "CAR"

-- |
pattern ImageButton_Icon_Clock :: ImageButton_Icon
pattern ImageButton_Icon_Clock = ImageButton_Icon "CLOCK"

-- |
pattern ImageButton_Icon_CONFIRMATIONNUMBERICON :: ImageButton_Icon
pattern ImageButton_Icon_CONFIRMATIONNUMBERICON = ImageButton_Icon "CONFIRMATION_NUMBER_ICON"

-- |
pattern ImageButton_Icon_Dollar :: ImageButton_Icon
pattern ImageButton_Icon_Dollar = ImageButton_Icon "DOLLAR"

-- |
pattern ImageButton_Icon_Description :: ImageButton_Icon
pattern ImageButton_Icon_Description = ImageButton_Icon "DESCRIPTION"

-- |
pattern ImageButton_Icon_Edit :: ImageButton_Icon
pattern ImageButton_Icon_Edit = ImageButton_Icon "EDIT"

-- |
pattern ImageButton_Icon_EDITNOTE :: ImageButton_Icon
pattern ImageButton_Icon_EDITNOTE = ImageButton_Icon "EDIT_NOTE"

-- |
pattern ImageButton_Icon_Email :: ImageButton_Icon
pattern ImageButton_Icon_Email = ImageButton_Icon "EMAIL"

-- |
pattern ImageButton_Icon_EVENTPERFORMER :: ImageButton_Icon
pattern ImageButton_Icon_EVENTPERFORMER = ImageButton_Icon "EVENT_PERFORMER"

-- |
pattern ImageButton_Icon_EVENTSEAT :: ImageButton_Icon
pattern ImageButton_Icon_EVENTSEAT = ImageButton_Icon "EVENT_SEAT"

-- |
pattern ImageButton_Icon_FLIGHTARRIVAL :: ImageButton_Icon
pattern ImageButton_Icon_FLIGHTARRIVAL = ImageButton_Icon "FLIGHT_ARRIVAL"

-- |
pattern ImageButton_Icon_FLIGHTDEPARTURE :: ImageButton_Icon
pattern ImageButton_Icon_FLIGHTDEPARTURE = ImageButton_Icon "FLIGHT_DEPARTURE"

-- |
pattern ImageButton_Icon_Hotel :: ImageButton_Icon
pattern ImageButton_Icon_Hotel = ImageButton_Icon "HOTEL"

-- |
pattern ImageButton_Icon_HOTELROOMTYPE :: ImageButton_Icon
pattern ImageButton_Icon_HOTELROOMTYPE = ImageButton_Icon "HOTEL_ROOM_TYPE"

-- |
pattern ImageButton_Icon_Invite :: ImageButton_Icon
pattern ImageButton_Icon_Invite = ImageButton_Icon "INVITE"

-- |
pattern ImageButton_Icon_MAPPIN :: ImageButton_Icon
pattern ImageButton_Icon_MAPPIN = ImageButton_Icon "MAP_PIN"

-- |
pattern ImageButton_Icon_Membership :: ImageButton_Icon
pattern ImageButton_Icon_Membership = ImageButton_Icon "MEMBERSHIP"

-- |
pattern ImageButton_Icon_MULTIPLEPEOPLE :: ImageButton_Icon
pattern ImageButton_Icon_MULTIPLEPEOPLE = ImageButton_Icon "MULTIPLE_PEOPLE"

-- |
pattern ImageButton_Icon_Offer :: ImageButton_Icon
pattern ImageButton_Icon_Offer = ImageButton_Icon "OFFER"

-- |
pattern ImageButton_Icon_OPENINNEW :: ImageButton_Icon
pattern ImageButton_Icon_OPENINNEW = ImageButton_Icon "OPEN_IN_NEW"

-- |
pattern ImageButton_Icon_Person :: ImageButton_Icon
pattern ImageButton_Icon_Person = ImageButton_Icon "PERSON"

-- |
pattern ImageButton_Icon_Phone :: ImageButton_Icon
pattern ImageButton_Icon_Phone = ImageButton_Icon "PHONE"

-- |
pattern ImageButton_Icon_RESTAURANTICON :: ImageButton_Icon
pattern ImageButton_Icon_RESTAURANTICON = ImageButton_Icon "RESTAURANT_ICON"

-- |
pattern ImageButton_Icon_SHOPPINGCART :: ImageButton_Icon
pattern ImageButton_Icon_SHOPPINGCART = ImageButton_Icon "SHOPPING_CART"

-- |
pattern ImageButton_Icon_Star :: ImageButton_Icon
pattern ImageButton_Icon_Star = ImageButton_Icon "STAR"

-- |
pattern ImageButton_Icon_Store :: ImageButton_Icon
pattern ImageButton_Icon_Store = ImageButton_Icon "STORE"

-- |
pattern ImageButton_Icon_Ticket :: ImageButton_Icon
pattern ImageButton_Icon_Ticket = ImageButton_Icon "TICKET"

-- |
pattern ImageButton_Icon_Train :: ImageButton_Icon
pattern ImageButton_Icon_Train = ImageButton_Icon "TRAIN"

-- |
pattern ImageButton_Icon_VIDEOCAMERA :: ImageButton_Icon
pattern ImageButton_Icon_VIDEOCAMERA = ImageButton_Icon "VIDEO_CAMERA"

-- | Add new items in alphabetical order. Next Available ID: 34
pattern ImageButton_Icon_VIDEOPLAY :: ImageButton_Icon
pattern ImageButton_Icon_VIDEOPLAY = ImageButton_Icon "VIDEO_PLAY"

{-# COMPLETE
  ImageButton_Icon_None,
  ImageButton_Icon_Airplane,
  ImageButton_Icon_Bookmark,
  ImageButton_Icon_Bus,
  ImageButton_Icon_Car,
  ImageButton_Icon_Clock,
  ImageButton_Icon_CONFIRMATIONNUMBERICON,
  ImageButton_Icon_Dollar,
  ImageButton_Icon_Description,
  ImageButton_Icon_Edit,
  ImageButton_Icon_EDITNOTE,
  ImageButton_Icon_Email,
  ImageButton_Icon_EVENTPERFORMER,
  ImageButton_Icon_EVENTSEAT,
  ImageButton_Icon_FLIGHTARRIVAL,
  ImageButton_Icon_FLIGHTDEPARTURE,
  ImageButton_Icon_Hotel,
  ImageButton_Icon_HOTELROOMTYPE,
  ImageButton_Icon_Invite,
  ImageButton_Icon_MAPPIN,
  ImageButton_Icon_Membership,
  ImageButton_Icon_MULTIPLEPEOPLE,
  ImageButton_Icon_Offer,
  ImageButton_Icon_OPENINNEW,
  ImageButton_Icon_Person,
  ImageButton_Icon_Phone,
  ImageButton_Icon_RESTAURANTICON,
  ImageButton_Icon_SHOPPINGCART,
  ImageButton_Icon_Star,
  ImageButton_Icon_Store,
  ImageButton_Icon_Ticket,
  ImageButton_Icon_Train,
  ImageButton_Icon_VIDEOCAMERA,
  ImageButton_Icon_VIDEOPLAY,
  ImageButton_Icon
  #-}

-- | The crop type.
newtype ImageCropStyle_Type = ImageCropStyle_Type {fromImageCropStyle_Type :: Core.Text}
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

-- | No value specified.
pattern ImageCropStyle_Type_CROPTYPENOTSET :: ImageCropStyle_Type
pattern ImageCropStyle_Type_CROPTYPENOTSET = ImageCropStyle_Type "CROP_TYPE_NOT_SET"

-- | Applies a square crop.
pattern ImageCropStyle_Type_Square :: ImageCropStyle_Type
pattern ImageCropStyle_Type_Square = ImageCropStyle_Type "SQUARE"

-- | Applies a circular crop.
pattern ImageCropStyle_Type_Circle :: ImageCropStyle_Type
pattern ImageCropStyle_Type_Circle = ImageCropStyle_Type "CIRCLE"

-- | Applies a rectangular crop with a custom aspect ratio.
pattern ImageCropStyle_Type_RECTANGLECUSTOM :: ImageCropStyle_Type
pattern ImageCropStyle_Type_RECTANGLECUSTOM = ImageCropStyle_Type "RECTANGLE_CUSTOM"

-- | Applies a rectangular crop with a 4:3 aspect ratio.
pattern ImageCropStyle_Type_RECTANGLE_4_3 :: ImageCropStyle_Type
pattern ImageCropStyle_Type_RECTANGLE_4_3 = ImageCropStyle_Type "RECTANGLE_4_3"

{-# COMPLETE
  ImageCropStyle_Type_CROPTYPENOTSET,
  ImageCropStyle_Type_Square,
  ImageCropStyle_Type_Circle,
  ImageCropStyle_Type_RECTANGLECUSTOM,
  ImageCropStyle_Type_RECTANGLE_4_3,
  ImageCropStyle_Type
  #-}

newtype ImageKeyValue_Icon = ImageKeyValue_Icon {fromImageKeyValue_Icon :: Core.Text}
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
pattern ImageKeyValue_Icon_None :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_None = ImageKeyValue_Icon "NONE"

-- |
pattern ImageKeyValue_Icon_Airplane :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Airplane = ImageKeyValue_Icon "AIRPLANE"

-- |
pattern ImageKeyValue_Icon_Bookmark :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Bookmark = ImageKeyValue_Icon "BOOKMARK"

-- |
pattern ImageKeyValue_Icon_Bus :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Bus = ImageKeyValue_Icon "BUS"

-- |
pattern ImageKeyValue_Icon_Car :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Car = ImageKeyValue_Icon "CAR"

-- |
pattern ImageKeyValue_Icon_Clock :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Clock = ImageKeyValue_Icon "CLOCK"

-- |
pattern ImageKeyValue_Icon_CONFIRMATIONNUMBERICON :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_CONFIRMATIONNUMBERICON = ImageKeyValue_Icon "CONFIRMATION_NUMBER_ICON"

-- |
pattern ImageKeyValue_Icon_Dollar :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Dollar = ImageKeyValue_Icon "DOLLAR"

-- |
pattern ImageKeyValue_Icon_Description :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Description = ImageKeyValue_Icon "DESCRIPTION"

-- |
pattern ImageKeyValue_Icon_Edit :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Edit = ImageKeyValue_Icon "EDIT"

-- |
pattern ImageKeyValue_Icon_EDITNOTE :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_EDITNOTE = ImageKeyValue_Icon "EDIT_NOTE"

-- |
pattern ImageKeyValue_Icon_Email :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Email = ImageKeyValue_Icon "EMAIL"

-- |
pattern ImageKeyValue_Icon_EVENTPERFORMER :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_EVENTPERFORMER = ImageKeyValue_Icon "EVENT_PERFORMER"

-- |
pattern ImageKeyValue_Icon_EVENTSEAT :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_EVENTSEAT = ImageKeyValue_Icon "EVENT_SEAT"

-- |
pattern ImageKeyValue_Icon_FLIGHTARRIVAL :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_FLIGHTARRIVAL = ImageKeyValue_Icon "FLIGHT_ARRIVAL"

-- |
pattern ImageKeyValue_Icon_FLIGHTDEPARTURE :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_FLIGHTDEPARTURE = ImageKeyValue_Icon "FLIGHT_DEPARTURE"

-- |
pattern ImageKeyValue_Icon_Hotel :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Hotel = ImageKeyValue_Icon "HOTEL"

-- |
pattern ImageKeyValue_Icon_HOTELROOMTYPE :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_HOTELROOMTYPE = ImageKeyValue_Icon "HOTEL_ROOM_TYPE"

-- |
pattern ImageKeyValue_Icon_Invite :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Invite = ImageKeyValue_Icon "INVITE"

-- |
pattern ImageKeyValue_Icon_MAPPIN :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_MAPPIN = ImageKeyValue_Icon "MAP_PIN"

-- |
pattern ImageKeyValue_Icon_Membership :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Membership = ImageKeyValue_Icon "MEMBERSHIP"

-- |
pattern ImageKeyValue_Icon_MULTIPLEPEOPLE :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_MULTIPLEPEOPLE = ImageKeyValue_Icon "MULTIPLE_PEOPLE"

-- |
pattern ImageKeyValue_Icon_Offer :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Offer = ImageKeyValue_Icon "OFFER"

-- |
pattern ImageKeyValue_Icon_OPENINNEW :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_OPENINNEW = ImageKeyValue_Icon "OPEN_IN_NEW"

-- |
pattern ImageKeyValue_Icon_Person :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Person = ImageKeyValue_Icon "PERSON"

-- |
pattern ImageKeyValue_Icon_Phone :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Phone = ImageKeyValue_Icon "PHONE"

-- |
pattern ImageKeyValue_Icon_RESTAURANTICON :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_RESTAURANTICON = ImageKeyValue_Icon "RESTAURANT_ICON"

-- |
pattern ImageKeyValue_Icon_SHOPPINGCART :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_SHOPPINGCART = ImageKeyValue_Icon "SHOPPING_CART"

-- |
pattern ImageKeyValue_Icon_Star :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Star = ImageKeyValue_Icon "STAR"

-- |
pattern ImageKeyValue_Icon_Store :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Store = ImageKeyValue_Icon "STORE"

-- |
pattern ImageKeyValue_Icon_Ticket :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Ticket = ImageKeyValue_Icon "TICKET"

-- |
pattern ImageKeyValue_Icon_Train :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_Train = ImageKeyValue_Icon "TRAIN"

-- |
pattern ImageKeyValue_Icon_VIDEOCAMERA :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_VIDEOCAMERA = ImageKeyValue_Icon "VIDEO_CAMERA"

-- | Add new items in alphabetical order. Next Available ID: 34
pattern ImageKeyValue_Icon_VIDEOPLAY :: ImageKeyValue_Icon
pattern ImageKeyValue_Icon_VIDEOPLAY = ImageKeyValue_Icon "VIDEO_PLAY"

{-# COMPLETE
  ImageKeyValue_Icon_None,
  ImageKeyValue_Icon_Airplane,
  ImageKeyValue_Icon_Bookmark,
  ImageKeyValue_Icon_Bus,
  ImageKeyValue_Icon_Car,
  ImageKeyValue_Icon_Clock,
  ImageKeyValue_Icon_CONFIRMATIONNUMBERICON,
  ImageKeyValue_Icon_Dollar,
  ImageKeyValue_Icon_Description,
  ImageKeyValue_Icon_Edit,
  ImageKeyValue_Icon_EDITNOTE,
  ImageKeyValue_Icon_Email,
  ImageKeyValue_Icon_EVENTPERFORMER,
  ImageKeyValue_Icon_EVENTSEAT,
  ImageKeyValue_Icon_FLIGHTARRIVAL,
  ImageKeyValue_Icon_FLIGHTDEPARTURE,
  ImageKeyValue_Icon_Hotel,
  ImageKeyValue_Icon_HOTELROOMTYPE,
  ImageKeyValue_Icon_Invite,
  ImageKeyValue_Icon_MAPPIN,
  ImageKeyValue_Icon_Membership,
  ImageKeyValue_Icon_MULTIPLEPEOPLE,
  ImageKeyValue_Icon_Offer,
  ImageKeyValue_Icon_OPENINNEW,
  ImageKeyValue_Icon_Person,
  ImageKeyValue_Icon_Phone,
  ImageKeyValue_Icon_RESTAURANTICON,
  ImageKeyValue_Icon_SHOPPINGCART,
  ImageKeyValue_Icon_Star,
  ImageKeyValue_Icon_Store,
  ImageKeyValue_Icon_Ticket,
  ImageKeyValue_Icon_Train,
  ImageKeyValue_Icon_VIDEOCAMERA,
  ImageKeyValue_Icon_VIDEOPLAY,
  ImageKeyValue_Icon
  #-}

newtype ImapSessionContext_App = ImapSessionContext_App {fromImapSessionContext_App :: Core.Text}
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

-- | Unknown
pattern ImapSessionContext_App_OTHERAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_OTHERAPP = ImapSessionContext_App "OTHER_APP"

-- | Browsers Google Chrome
pattern ImapSessionContext_App_Chrome :: ImapSessionContext_App
pattern ImapSessionContext_App_Chrome = ImapSessionContext_App "CHROME"

-- | Mozilla Firefox
pattern ImapSessionContext_App_Firefox :: ImapSessionContext_App
pattern ImapSessionContext_App_Firefox = ImapSessionContext_App "FIREFOX"

-- | Microsoft Internet Explorer
pattern ImapSessionContext_App_Msie :: ImapSessionContext_App
pattern ImapSessionContext_App_Msie = ImapSessionContext_App "MSIE"

-- | Apple Safari
pattern ImapSessionContext_App_Safari :: ImapSessionContext_App
pattern ImapSessionContext_App_Safari = ImapSessionContext_App "SAFARI"

-- | Opera
pattern ImapSessionContext_App_Opera :: ImapSessionContext_App
pattern ImapSessionContext_App_Opera = ImapSessionContext_App "OPERA"

-- | Tag #7 used to be CHROME/WEBVIEW, which was deprecated and replaced by CHROME/WEBVIEW_APP. When adding a new browser, skip #7 for safety. Microsoft Edge
pattern ImapSessionContext_App_Edge :: ImapSessionContext_App
pattern ImapSessionContext_App_Edge = ImapSessionContext_App "EDGE"

-- | MSIE in Compatibility View. See b\/22467241.
pattern ImapSessionContext_App_MSIECOMPATIBILITY :: ImapSessionContext_App
pattern ImapSessionContext_App_MSIECOMPATIBILITY = ImapSessionContext_App "MSIE_COMPATIBILITY"

-- | Browser not otherwise specified
pattern ImapSessionContext_App_OTHERBROWSER :: ImapSessionContext_App
pattern ImapSessionContext_App_OTHERBROWSER = ImapSessionContext_App "OTHER_BROWSER"

-- | Samsung browser on Android
pattern ImapSessionContext_App_SAMSUNGBROWSER :: ImapSessionContext_App
pattern ImapSessionContext_App_SAMSUNGBROWSER = ImapSessionContext_App "SAMSUNG_BROWSER"

-- | UC Browser
pattern ImapSessionContext_App_UCBROWSER :: ImapSessionContext_App
pattern ImapSessionContext_App_UCBROWSER = ImapSessionContext_App "UC_BROWSER"

-- | Android\'s legacy default AOSP browser (distinct
pattern ImapSessionContext_App_ANDROIDBROWSER :: ImapSessionContext_App
pattern ImapSessionContext_App_ANDROIDBROWSER = ImapSessionContext_App "ANDROID_BROWSER"

-- | from customized OEM flavours). Yandex Browser
pattern ImapSessionContext_App_YANDEXBROWSER :: ImapSessionContext_App
pattern ImapSessionContext_App_YANDEXBROWSER = ImapSessionContext_App "YANDEX_BROWSER"

-- | Amazon Silk browser
pattern ImapSessionContext_App_SILKBROWSER :: ImapSessionContext_App
pattern ImapSessionContext_App_SILKBROWSER = ImapSessionContext_App "SILK_BROWSER"

-- | Popoular browser in Vietnam
pattern ImapSessionContext_App_COCCOCBROWSER :: ImapSessionContext_App
pattern ImapSessionContext_App_COCCOCBROWSER = ImapSessionContext_App "COC_COC_BROWSER"

-- | Tag for the maximum enum value that represents a browser. Enum values (strictly) between OTHER_APP and this value represent browsers. This should never appear in real data.
pattern ImapSessionContext_App_MAXBROWSERAPPVALUE :: ImapSessionContext_App
pattern ImapSessionContext_App_MAXBROWSERAPPVALUE = ImapSessionContext_App "MAX_BROWSER_APP_VALUE"

-- | Email apps Gmail
pattern ImapSessionContext_App_GMAILAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GMAILAPP = ImapSessionContext_App "GMAIL_APP"

-- | Inbox by Gmail
pattern ImapSessionContext_App_GMAILINBOXAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GMAILINBOXAPP = ImapSessionContext_App "GMAIL_INBOX_APP"

-- | Native Android email app
pattern ImapSessionContext_App_ANDROIDEMAILAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_ANDROIDEMAILAPP = ImapSessionContext_App "ANDROID_EMAIL_APP"

-- | (replaced by Gmail in Lollipop) Samsung mail
pattern ImapSessionContext_App_SAMSUNGMAILAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_SAMSUNGMAILAPP = ImapSessionContext_App "SAMSUNG_MAIL_APP"

-- | Motorola email app
pattern ImapSessionContext_App_MOTOEMAILAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_MOTOEMAILAPP = ImapSessionContext_App "MOTO_EMAIL_APP"

-- | Boxer
pattern ImapSessionContext_App_BOXERAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_BOXERAPP = ImapSessionContext_App "BOXER_APP"

-- | Mail.dll by Limilabs
pattern ImapSessionContext_App_LIMILABSMAILDLL :: ImapSessionContext_App
pattern ImapSessionContext_App_LIMILABSMAILDLL = ImapSessionContext_App "LIMILABS_MAIL_DLL"

-- | BlackBerry Internet Service
pattern ImapSessionContext_App_BISAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_BISAPP = ImapSessionContext_App "BIS_APP"

-- | Microsoft Outlook
pattern ImapSessionContext_App_OUTLOOKMAILAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_OUTLOOKMAILAPP = ImapSessionContext_App "OUTLOOK_MAIL_APP"

-- | Apple apps (mail, contacts & calendar)
pattern ImapSessionContext_App_APPLENATIVEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_APPLENATIVEAPP = ImapSessionContext_App "APPLE_NATIVE_APP"

-- | Chrome Webview
pattern ImapSessionContext_App_CHROMEWEBVIEWAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_CHROMEWEBVIEWAPP = ImapSessionContext_App "CHROME_WEBVIEW_APP"

-- | Safari Webview
pattern ImapSessionContext_App_SAFARIWEBVIEWAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_SAFARIWEBVIEWAPP = ImapSessionContext_App "SAFARI_WEBVIEW_APP"

-- | Chrome Sync
pattern ImapSessionContext_App_CHROMESYNCAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_CHROMESYNCAPP = ImapSessionContext_App "CHROME_SYNC_APP"

-- | Includes both Now and Search on GSA.
pattern ImapSessionContext_App_GSAAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GSAAPP = ImapSessionContext_App "GSA_APP"

-- | Maps
pattern ImapSessionContext_App_GMMAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GMMAPP = ImapSessionContext_App "GMM_APP"

-- | Calendar
pattern ImapSessionContext_App_CALENDARAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_CALENDARAPP = ImapSessionContext_App "CALENDAR_APP"

-- | Google+
pattern ImapSessionContext_App_PLUSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_PLUSAPP = ImapSessionContext_App "PLUS_APP"

-- | Hangouts Classic
pattern ImapSessionContext_App_HANGOUTSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_HANGOUTSAPP = ImapSessionContext_App "HANGOUTS_APP"

-- | Hangouts Meet
pattern ImapSessionContext_App_HANGOUTSMEETAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_HANGOUTSMEETAPP = ImapSessionContext_App "HANGOUTS_MEET_APP"

-- | Jamboard app (go\/jamboard)
pattern ImapSessionContext_App_JAMBOARDAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_JAMBOARDAPP = ImapSessionContext_App "JAMBOARD_APP"

-- | Google Voice
pattern ImapSessionContext_App_VOICEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_VOICEAPP = ImapSessionContext_App "VOICE_APP"

-- | Photos
pattern ImapSessionContext_App_PHOTOSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_PHOTOSAPP = ImapSessionContext_App "PHOTOS_APP"

-- | Drive Sync
pattern ImapSessionContext_App_DRIVESYNCAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_DRIVESYNCAPP = ImapSessionContext_App "DRIVE_SYNC_APP"

-- | Drive
pattern ImapSessionContext_App_DRIVEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_DRIVEAPP = ImapSessionContext_App "DRIVE_APP"

-- | Docs
pattern ImapSessionContext_App_DOCSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_DOCSAPP = ImapSessionContext_App "DOCS_APP"

-- | Sheets
pattern ImapSessionContext_App_SHEETSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_SHEETSAPP = ImapSessionContext_App "SHEETS_APP"

-- | Slides
pattern ImapSessionContext_App_SLIDESAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_SLIDESAPP = ImapSessionContext_App "SLIDES_APP"

-- | Keep
pattern ImapSessionContext_App_KEEPAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_KEEPAPP = ImapSessionContext_App "KEEP_APP"

-- | WhatsApp in Drive
pattern ImapSessionContext_App_WHATSAPPINDRIVEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_WHATSAPPINDRIVEAPP = ImapSessionContext_App "WHATS_APP_IN_DRIVE_APP"

-- | Translate
pattern ImapSessionContext_App_TRANSLATEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_TRANSLATEAPP = ImapSessionContext_App "TRANSLATE_APP"

-- | YouTube
pattern ImapSessionContext_App_YOUTUBEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBEAPP = ImapSessionContext_App "YOUTUBE_APP"

-- | YouTube Music
pattern ImapSessionContext_App_YOUTUBEMUSICAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBEMUSICAPP = ImapSessionContext_App "YOUTUBE_MUSIC_APP"

-- | YouTube Gaming
pattern ImapSessionContext_App_YOUTUBEGAMINGAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBEGAMINGAPP = ImapSessionContext_App "YOUTUBE_GAMING_APP"

-- | YouTube Kids
pattern ImapSessionContext_App_YOUTUBEKIDSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBEKIDSAPP = ImapSessionContext_App "YOUTUBE_KIDS_APP"

-- | YouTube Capture
pattern ImapSessionContext_App_YOUTUBECAPTUREAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBECAPTUREAPP = ImapSessionContext_App "YOUTUBE_CAPTURE_APP"

-- | YouTube Creator Studio
pattern ImapSessionContext_App_YOUTUBECREATORAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBECREATORAPP = ImapSessionContext_App "YOUTUBE_CREATOR_APP"

-- | YouTube Go
pattern ImapSessionContext_App_YOUTUBEGOAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBEGOAPP = ImapSessionContext_App "YOUTUBE_GO_APP"

-- | YouTube TV
pattern ImapSessionContext_App_YOUTUBETVAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBETVAPP = ImapSessionContext_App "YOUTUBE_TV_APP"

-- | YouTube VR
pattern ImapSessionContext_App_YOUTUBEVRAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_YOUTUBEVRAPP = ImapSessionContext_App "YOUTUBE_VR_APP"

-- | Google Play
pattern ImapSessionContext_App_PLAYAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_PLAYAPP = ImapSessionContext_App "PLAY_APP"

-- | Google Play Music
pattern ImapSessionContext_App_PLAYMUSICAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_PLAYMUSICAPP = ImapSessionContext_App "PLAY_MUSIC_APP"

-- | Google Play Books
pattern ImapSessionContext_App_PLAYBOOKSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_PLAYBOOKSAPP = ImapSessionContext_App "PLAY_BOOKS_APP"

-- | Google Play Movies & TV
pattern ImapSessionContext_App_PLAYMOVIESAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_PLAYMOVIESAPP = ImapSessionContext_App "PLAY_MOVIES_APP"

-- | Google Play Newsstand
pattern ImapSessionContext_App_PLAYNEWSSTANDAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_PLAYNEWSSTANDAPP = ImapSessionContext_App "PLAY_NEWSSTAND_APP"

-- | Google Play Games
pattern ImapSessionContext_App_PLAYGAMESAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_PLAYGAMESAPP = ImapSessionContext_App "PLAY_GAMES_APP"

-- | Pokemon GO (uses Google to sign in)
pattern ImapSessionContext_App_POKEMONGOAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_POKEMONGOAPP = ImapSessionContext_App "POKEMON_GO_APP"

-- | Allo
pattern ImapSessionContext_App_ALLOAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_ALLOAPP = ImapSessionContext_App "ALLO_APP"

-- | Duo
pattern ImapSessionContext_App_DUOAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_DUOAPP = ImapSessionContext_App "DUO_APP"

-- | Google Classroom
pattern ImapSessionContext_App_CLASSROOMAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_CLASSROOMAPP = ImapSessionContext_App "CLASSROOM_APP"

-- | Google Trips
pattern ImapSessionContext_App_TRIPSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_TRIPSAPP = ImapSessionContext_App "TRIPS_APP"

-- | Google Pay (formerly Android Pay)
pattern ImapSessionContext_App_GOOGLEPAYAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GOOGLEPAYAPP = ImapSessionContext_App "GOOGLE_PAY_APP"

-- | Waze
pattern ImapSessionContext_App_WAZEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_WAZEAPP = ImapSessionContext_App "WAZE_APP"

-- | Google Assistant standalone app. iOS only,
pattern ImapSessionContext_App_ASSISTANTAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_ASSISTANTAPP = ImapSessionContext_App "ASSISTANT_APP"

-- | since on Android OPA is integrated in GSA. Gboard - the Google Keyboard
pattern ImapSessionContext_App_GBOARDAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GBOARDAPP = ImapSessionContext_App "GBOARD_APP"

-- | Google News & Weather
pattern ImapSessionContext_App_NEWSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_NEWSAPP = ImapSessionContext_App "NEWS_APP"

-- | Google Home app (rebranded from Chromecast app)
pattern ImapSessionContext_App_HOMEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_HOMEAPP = ImapSessionContext_App "HOME_APP"

-- | Google Earth
pattern ImapSessionContext_App_EARTHAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_EARTHAPP = ImapSessionContext_App "EARTH_APP"

-- | Google Street View
pattern ImapSessionContext_App_STREETVIEWAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_STREETVIEWAPP = ImapSessionContext_App "STREET_VIEW_APP"

-- | Tez payment app for India (go\/paisa)
pattern ImapSessionContext_App_TEZAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_TEZAPP = ImapSessionContext_App "TEZ_APP"

-- | Google Analytics
pattern ImapSessionContext_App_GOOGLEANALYTICSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GOOGLEANALYTICSAPP = ImapSessionContext_App "GOOGLE_ANALYTICS_APP"

-- | AdSense
pattern ImapSessionContext_App_ADSENSEAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_ADSENSEAPP = ImapSessionContext_App "ADSENSE_APP"

-- | AdWords
pattern ImapSessionContext_App_ADWORDSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_ADWORDSAPP = ImapSessionContext_App "ADWORDS_APP"

-- | Google Express (formerly Shopping Express)
pattern ImapSessionContext_App_EXPRESSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_EXPRESSAPP = ImapSessionContext_App "EXPRESS_APP"

-- | Android Wear companion app
pattern ImapSessionContext_App_WEARAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_WEARAPP = ImapSessionContext_App "WEAR_APP"

-- | Google My Business
pattern ImapSessionContext_App_GOOGLEMYBUSINESSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GOOGLEMYBUSINESSAPP = ImapSessionContext_App "GOOGLE_MY_BUSINESS_APP"

-- | Google Family Link
pattern ImapSessionContext_App_FAMILYLINKAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_FAMILYLINKAPP = ImapSessionContext_App "FAMILY_LINK_APP"

-- | Google Opinion Rewards
pattern ImapSessionContext_App_OPINIONREWARDSAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_OPINIONREWARDSAPP = ImapSessionContext_App "OPINION_REWARDS_APP"

-- | Google Wallet
pattern ImapSessionContext_App_WALLETAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_WALLETAPP = ImapSessionContext_App "WALLET_APP"

-- | Google Arts & Culture
pattern ImapSessionContext_App_ARTSANDCULTUREAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_ARTSANDCULTUREAPP = ImapSessionContext_App "ARTS_AND_CULTURE_APP"

-- | Android Device Manager
pattern ImapSessionContext_App_ANDROIDDEVICEMANAGERAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_ANDROIDDEVICEMANAGERAPP = ImapSessionContext_App "ANDROID_DEVICE_MANAGER_APP"

-- | Google Go
pattern ImapSessionContext_App_GOOGLEGOAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_GOOGLEGOAPP = ImapSessionContext_App "GOOGLE_GO_APP"

-- | Files Go
pattern ImapSessionContext_App_FILESGOAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_FILESGOAPP = ImapSessionContext_App "FILES_GO_APP"

-- | Datally
pattern ImapSessionContext_App_DATALLYAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_DATALLYAPP = ImapSessionContext_App "DATALLY_APP"

-- | Google Wifi (incl. OnHub)
pattern ImapSessionContext_App_WIFIAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_WIFIAPP = ImapSessionContext_App "WIFI_APP"

-- | Stadia (go\/stadia)
pattern ImapSessionContext_App_STADIAAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_STADIAAPP = ImapSessionContext_App "STADIA_APP"

-- | Battlestar (go\/battlestar)
pattern ImapSessionContext_App_BATTLESTARAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_BATTLESTARAPP = ImapSessionContext_App "BATTLESTAR_APP"

-- | SmartLock
pattern ImapSessionContext_App_SMARTLOCKAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_SMARTLOCKAPP = ImapSessionContext_App "SMART_LOCK_APP"

-- | Non-browser, non-mail, non-first-party apps LogDog (https:\/\/getlogdog.com\/)
pattern ImapSessionContext_App_LOGDOGAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_LOGDOGAPP = ImapSessionContext_App "LOGDOG_APP"

-- | Do not remove this fields - remvoing them caused issues in the past (see cl\/180425348 for reference).
pattern ImapSessionContext_App_DEPRECATEDMACOSXMAILAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_DEPRECATEDMACOSXMAILAPP = ImapSessionContext_App "DEPRECATED_MAC_OSX_MAIL_APP"

-- |
pattern ImapSessionContext_App_DEPRECATEDIOSMAILAPP :: ImapSessionContext_App
pattern ImapSessionContext_App_DEPRECATEDIOSMAILAPP = ImapSessionContext_App "DEPRECATED_IOS_MAIL_APP"

{-# COMPLETE
  ImapSessionContext_App_OTHERAPP,
  ImapSessionContext_App_Chrome,
  ImapSessionContext_App_Firefox,
  ImapSessionContext_App_Msie,
  ImapSessionContext_App_Safari,
  ImapSessionContext_App_Opera,
  ImapSessionContext_App_Edge,
  ImapSessionContext_App_MSIECOMPATIBILITY,
  ImapSessionContext_App_OTHERBROWSER,
  ImapSessionContext_App_SAMSUNGBROWSER,
  ImapSessionContext_App_UCBROWSER,
  ImapSessionContext_App_ANDROIDBROWSER,
  ImapSessionContext_App_YANDEXBROWSER,
  ImapSessionContext_App_SILKBROWSER,
  ImapSessionContext_App_COCCOCBROWSER,
  ImapSessionContext_App_MAXBROWSERAPPVALUE,
  ImapSessionContext_App_GMAILAPP,
  ImapSessionContext_App_GMAILINBOXAPP,
  ImapSessionContext_App_ANDROIDEMAILAPP,
  ImapSessionContext_App_SAMSUNGMAILAPP,
  ImapSessionContext_App_MOTOEMAILAPP,
  ImapSessionContext_App_BOXERAPP,
  ImapSessionContext_App_LIMILABSMAILDLL,
  ImapSessionContext_App_BISAPP,
  ImapSessionContext_App_OUTLOOKMAILAPP,
  ImapSessionContext_App_APPLENATIVEAPP,
  ImapSessionContext_App_CHROMEWEBVIEWAPP,
  ImapSessionContext_App_SAFARIWEBVIEWAPP,
  ImapSessionContext_App_CHROMESYNCAPP,
  ImapSessionContext_App_GSAAPP,
  ImapSessionContext_App_GMMAPP,
  ImapSessionContext_App_CALENDARAPP,
  ImapSessionContext_App_PLUSAPP,
  ImapSessionContext_App_HANGOUTSAPP,
  ImapSessionContext_App_HANGOUTSMEETAPP,
  ImapSessionContext_App_JAMBOARDAPP,
  ImapSessionContext_App_VOICEAPP,
  ImapSessionContext_App_PHOTOSAPP,
  ImapSessionContext_App_DRIVESYNCAPP,
  ImapSessionContext_App_DRIVEAPP,
  ImapSessionContext_App_DOCSAPP,
  ImapSessionContext_App_SHEETSAPP,
  ImapSessionContext_App_SLIDESAPP,
  ImapSessionContext_App_KEEPAPP,
  ImapSessionContext_App_WHATSAPPINDRIVEAPP,
  ImapSessionContext_App_TRANSLATEAPP,
  ImapSessionContext_App_YOUTUBEAPP,
  ImapSessionContext_App_YOUTUBEMUSICAPP,
  ImapSessionContext_App_YOUTUBEGAMINGAPP,
  ImapSessionContext_App_YOUTUBEKIDSAPP,
  ImapSessionContext_App_YOUTUBECAPTUREAPP,
  ImapSessionContext_App_YOUTUBECREATORAPP,
  ImapSessionContext_App_YOUTUBEGOAPP,
  ImapSessionContext_App_YOUTUBETVAPP,
  ImapSessionContext_App_YOUTUBEVRAPP,
  ImapSessionContext_App_PLAYAPP,
  ImapSessionContext_App_PLAYMUSICAPP,
  ImapSessionContext_App_PLAYBOOKSAPP,
  ImapSessionContext_App_PLAYMOVIESAPP,
  ImapSessionContext_App_PLAYNEWSSTANDAPP,
  ImapSessionContext_App_PLAYGAMESAPP,
  ImapSessionContext_App_POKEMONGOAPP,
  ImapSessionContext_App_ALLOAPP,
  ImapSessionContext_App_DUOAPP,
  ImapSessionContext_App_CLASSROOMAPP,
  ImapSessionContext_App_TRIPSAPP,
  ImapSessionContext_App_GOOGLEPAYAPP,
  ImapSessionContext_App_WAZEAPP,
  ImapSessionContext_App_ASSISTANTAPP,
  ImapSessionContext_App_GBOARDAPP,
  ImapSessionContext_App_NEWSAPP,
  ImapSessionContext_App_HOMEAPP,
  ImapSessionContext_App_EARTHAPP,
  ImapSessionContext_App_STREETVIEWAPP,
  ImapSessionContext_App_TEZAPP,
  ImapSessionContext_App_GOOGLEANALYTICSAPP,
  ImapSessionContext_App_ADSENSEAPP,
  ImapSessionContext_App_ADWORDSAPP,
  ImapSessionContext_App_EXPRESSAPP,
  ImapSessionContext_App_WEARAPP,
  ImapSessionContext_App_GOOGLEMYBUSINESSAPP,
  ImapSessionContext_App_FAMILYLINKAPP,
  ImapSessionContext_App_OPINIONREWARDSAPP,
  ImapSessionContext_App_WALLETAPP,
  ImapSessionContext_App_ARTSANDCULTUREAPP,
  ImapSessionContext_App_ANDROIDDEVICEMANAGERAPP,
  ImapSessionContext_App_GOOGLEGOAPP,
  ImapSessionContext_App_FILESGOAPP,
  ImapSessionContext_App_DATALLYAPP,
  ImapSessionContext_App_WIFIAPP,
  ImapSessionContext_App_STADIAAPP,
  ImapSessionContext_App_BATTLESTARAPP,
  ImapSessionContext_App_SMARTLOCKAPP,
  ImapSessionContext_App_LOGDOGAPP,
  ImapSessionContext_App_DEPRECATEDMACOSXMAILAPP,
  ImapSessionContext_App_DEPRECATEDIOSMAILAPP,
  ImapSessionContext_App
  #-}

-- | User agent information
newtype ImapSessionContext_DeviceType = ImapSessionContext_DeviceType {fromImapSessionContext_DeviceType :: Core.Text}
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

-- | Unknown device type.
pattern ImapSessionContext_DeviceType_Unknown :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_Unknown = ImapSessionContext_DeviceType "UNKNOWN"

-- | PCs (incl. Macs). Desktops, laptops and various niche form factors that typically run desktop-class OSes (all-in-ones, HTPCs etc.).
pattern ImapSessionContext_DeviceType_PC :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_PC = ImapSessionContext_DeviceType "PC"

-- | Primarily used for phones, but also set as default for OSes that are predominantly for phones (Android, iOS etc.) when we can\'t determine otherwise.
pattern ImapSessionContext_DeviceType_Mobile :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_Mobile = ImapSessionContext_DeviceType "MOBILE"

-- | Tablets.
pattern ImapSessionContext_DeviceType_Tablet :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_Tablet = ImapSessionContext_DeviceType "TABLET"

-- | Mobile devices which are not phones, but are capable of storing and playing digital media such as audio, images, and video files. Example: iPod.
pattern ImapSessionContext_DeviceType_PORTABLEMEDIAPLAYER :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_PORTABLEMEDIAPLAYER = ImapSessionContext_DeviceType "PORTABLE_MEDIA_PLAYER"

-- | Smart TVs which interact with Google products without an external additional device. Includes TV sets which run Android TV directly. Refers to actual TV screens, rather than connected boxes or dongles.
pattern ImapSessionContext_DeviceType_TV :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_TV = ImapSessionContext_DeviceType "TV"

-- | Devices whose primary purpose is playing games. Examples: Xbox, Playstation.
pattern ImapSessionContext_DeviceType_GAMECONSOLE :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_GAMECONSOLE = ImapSessionContext_DeviceType "GAME_CONSOLE"

-- | Add-on devices (i.e. devices which require connecting to another device, such as screens\/TVs\/speakers) whose primary purpose is media consumption (excludes physical TV screens). Examples: Chromecast, Roku, Apple TV, Nexus Player.
pattern ImapSessionContext_DeviceType_MEDIAPLAYER :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_MEDIAPLAYER = ImapSessionContext_DeviceType "MEDIA_PLAYER"

-- | Examples: Google Home, Amazon Echo.
pattern ImapSessionContext_DeviceType_SMARTSPEAKER :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_SMARTSPEAKER = ImapSessionContext_DeviceType "SMART_SPEAKER"

-- | Examples: Google Home Display (Quartz\/Manhattan\/Jasper\/Dragonglass), Amazon Echo Spot, Amazon Echo Show.
pattern ImapSessionContext_DeviceType_SMARTDISPLAY :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_SMARTDISPLAY = ImapSessionContext_DeviceType "SMART_DISPLAY"

-- | Other connected home devices which do not fit in any of the above categories; that is, neither media- or gaming-focused, nor primarily a voice-enabled speaker.
pattern ImapSessionContext_DeviceType_CONNECTEDHOMEOTHER :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_CONNECTEDHOMEOTHER = ImapSessionContext_DeviceType "CONNECTED_HOME_OTHER"

-- | Wearable devices such as smartwatches.
pattern ImapSessionContext_DeviceType_Wearable :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_Wearable = ImapSessionContext_DeviceType "WEARABLE"

-- | Google Glass.
pattern ImapSessionContext_DeviceType_Glass :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_Glass = ImapSessionContext_DeviceType "GLASS"

-- | Examples: Android Auto (Embedded mode, not mirrored from phone).
pattern ImapSessionContext_DeviceType_Car :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_Car = ImapSessionContext_DeviceType "CAR"

-- | Standalone VR headsets, such as the Lenovo Mirage Solo. Does not include phone-based VR (such as Daydream View or Gear VR) or PC\/Console-based such as Oculus Rift, HTC Vive and PSVR; in such cases, the form factor may be PHONE, PC or GAME_CONSOLE as applicable.
pattern ImapSessionContext_DeviceType_VRHEADSET :: ImapSessionContext_DeviceType
pattern ImapSessionContext_DeviceType_VRHEADSET = ImapSessionContext_DeviceType "VR_HEADSET"

{-# COMPLETE
  ImapSessionContext_DeviceType_Unknown,
  ImapSessionContext_DeviceType_PC,
  ImapSessionContext_DeviceType_Mobile,
  ImapSessionContext_DeviceType_Tablet,
  ImapSessionContext_DeviceType_PORTABLEMEDIAPLAYER,
  ImapSessionContext_DeviceType_TV,
  ImapSessionContext_DeviceType_GAMECONSOLE,
  ImapSessionContext_DeviceType_MEDIAPLAYER,
  ImapSessionContext_DeviceType_SMARTSPEAKER,
  ImapSessionContext_DeviceType_SMARTDISPLAY,
  ImapSessionContext_DeviceType_CONNECTEDHOMEOTHER,
  ImapSessionContext_DeviceType_Wearable,
  ImapSessionContext_DeviceType_Glass,
  ImapSessionContext_DeviceType_Car,
  ImapSessionContext_DeviceType_VRHEADSET,
  ImapSessionContext_DeviceType
  #-}

newtype ImapSessionContext_Os = ImapSessionContext_Os {fromImapSessionContext_Os :: Core.Text}
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
pattern ImapSessionContext_Os_UNKNOWNOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_UNKNOWNOS = ImapSessionContext_Os "UNKNOWN_OS"

-- | Mobile operating systems (1-99).
pattern ImapSessionContext_Os_ANDROIDOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_ANDROIDOS = ImapSessionContext_Os "ANDROID_OS"

-- |
pattern ImapSessionContext_Os_IOSOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_IOSOS = ImapSessionContext_Os "IOS_OS"

-- |
pattern ImapSessionContext_Os_BLACKBERRYOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_BLACKBERRYOS = ImapSessionContext_Os "BLACKBERRY_OS"

-- |
pattern ImapSessionContext_Os_WINPHONEOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_WINPHONEOS = ImapSessionContext_Os "WIN_PHONE_OS"

-- | Amazon Fire OS (for Kindle Fire devices or Fire TV).
pattern ImapSessionContext_Os_FIREOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_FIREOS = ImapSessionContext_Os "FIRE_OS"

-- | Tag for the maximum enum value that represents a mobile OS. Enum values (strictly) between UNKNOWN_OS and this value represent mobile OSes. This should never appear in real data.
pattern ImapSessionContext_Os_MAXMOBILEOSVALUE :: ImapSessionContext_Os
pattern ImapSessionContext_Os_MAXMOBILEOSVALUE = ImapSessionContext_Os "MAX_MOBILE_OS_VALUE"

-- | PC operating systems.
pattern ImapSessionContext_Os_WINDOWSOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_WINDOWSOS = ImapSessionContext_Os "WINDOWS_OS"

-- |
pattern ImapSessionContext_Os_LINUXOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_LINUXOS = ImapSessionContext_Os "LINUX_OS"

-- |
pattern ImapSessionContext_Os_MACOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_MACOS = ImapSessionContext_Os "MAC_OS"

-- |
pattern ImapSessionContext_Os_CHROMEOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_CHROMEOS = ImapSessionContext_Os "CHROME_OS"

-- | The OS powering Playstation consoles. Ignores OS changes across console generations.
pattern ImapSessionContext_Os_PLAYSTATIONOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_PLAYSTATIONOS = ImapSessionContext_Os "PLAYSTATION_OS"

-- | The Windows-derived OS used on Xbox consoles.
pattern ImapSessionContext_Os_XBOXOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_XBOXOS = ImapSessionContext_Os "XBOX_OS"

-- | Tizen OS, popular in Samsung TVs, watches and more.
pattern ImapSessionContext_Os_TIZENOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_TIZENOS = ImapSessionContext_Os "TIZEN_OS"

-- | Apple tvOS (powering the Apple TV).
pattern ImapSessionContext_Os_APPLETVOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_APPLETVOS = ImapSessionContext_Os "APPLE_TV_OS"

-- | KaiOS, a fork from Firefox OS that is between a full smartphone and a feature phone. Notably, it supports the Google Assistant. go\/kaiosama
pattern ImapSessionContext_Os_KAIOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_KAIOS = ImapSessionContext_Os "KAI_OS"

-- | Android optimized for IoT devices. go\/things
pattern ImapSessionContext_Os_ANDROIDTHINGSOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_ANDROIDTHINGSOS = ImapSessionContext_Os "ANDROID_THINGS_OS"

-- | Cast family devices, including Chromecast, Google Home, and third-party speaker with integrated Assistant.
pattern ImapSessionContext_Os_CASTOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_CASTOS = ImapSessionContext_Os "CAST_OS"

-- | Stadia on Cast devices. This is not truly an OS, but it\'s a temporary setting since Stadia uses a different sign-in flow (and is revoked differently) from Cast. See http:\/\/go\/stadia-in-google-account. Do not use without discussing with id-devices-eng\@.
pattern ImapSessionContext_Os_STADIAOS :: ImapSessionContext_Os
pattern ImapSessionContext_Os_STADIAOS = ImapSessionContext_Os "STADIA_OS"

{-# COMPLETE
  ImapSessionContext_Os_UNKNOWNOS,
  ImapSessionContext_Os_ANDROIDOS,
  ImapSessionContext_Os_IOSOS,
  ImapSessionContext_Os_BLACKBERRYOS,
  ImapSessionContext_Os_WINPHONEOS,
  ImapSessionContext_Os_FIREOS,
  ImapSessionContext_Os_MAXMOBILEOSVALUE,
  ImapSessionContext_Os_WINDOWSOS,
  ImapSessionContext_Os_LINUXOS,
  ImapSessionContext_Os_MACOS,
  ImapSessionContext_Os_CHROMEOS,
  ImapSessionContext_Os_PLAYSTATIONOS,
  ImapSessionContext_Os_XBOXOS,
  ImapSessionContext_Os_TIZENOS,
  ImapSessionContext_Os_APPLETVOS,
  ImapSessionContext_Os_KAIOS,
  ImapSessionContext_Os_ANDROIDTHINGSOS,
  ImapSessionContext_Os_CASTOS,
  ImapSessionContext_Os_STADIAOS,
  ImapSessionContext_Os
  #-}

-- | Used in Spanner storage, BE API responses and FE API responses.
newtype IncomingWebhookChangedMetadata_Type = IncomingWebhookChangedMetadata_Type {fromIncomingWebhookChangedMetadata_Type :: Core.Text}
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
pattern IncomingWebhookChangedMetadata_Type_Unspecified :: IncomingWebhookChangedMetadata_Type
pattern IncomingWebhookChangedMetadata_Type_Unspecified = IncomingWebhookChangedMetadata_Type "UNSPECIFIED"

-- |
pattern IncomingWebhookChangedMetadata_Type_Added :: IncomingWebhookChangedMetadata_Type
pattern IncomingWebhookChangedMetadata_Type_Added = IncomingWebhookChangedMetadata_Type "ADDED"

-- | TODO (b\/154857280): remove UPDATED field.
pattern IncomingWebhookChangedMetadata_Type_Updated :: IncomingWebhookChangedMetadata_Type
pattern IncomingWebhookChangedMetadata_Type_Updated = IncomingWebhookChangedMetadata_Type "UPDATED"

-- |
pattern IncomingWebhookChangedMetadata_Type_Removed :: IncomingWebhookChangedMetadata_Type
pattern IncomingWebhookChangedMetadata_Type_Removed = IncomingWebhookChangedMetadata_Type "REMOVED"

-- |
pattern IncomingWebhookChangedMetadata_Type_UPDATEDNAME :: IncomingWebhookChangedMetadata_Type
pattern IncomingWebhookChangedMetadata_Type_UPDATEDNAME = IncomingWebhookChangedMetadata_Type "UPDATED_NAME"

-- |
pattern IncomingWebhookChangedMetadata_Type_UPDATEDAVATAR :: IncomingWebhookChangedMetadata_Type
pattern IncomingWebhookChangedMetadata_Type_UPDATEDAVATAR = IncomingWebhookChangedMetadata_Type "UPDATED_AVATAR"

-- |
pattern IncomingWebhookChangedMetadata_Type_UPDATEDNAMEANDAVATAR :: IncomingWebhookChangedMetadata_Type
pattern IncomingWebhookChangedMetadata_Type_UPDATEDNAMEANDAVATAR = IncomingWebhookChangedMetadata_Type "UPDATED_NAME_AND_AVATAR"

{-# COMPLETE
  IncomingWebhookChangedMetadata_Type_Unspecified,
  IncomingWebhookChangedMetadata_Type_Added,
  IncomingWebhookChangedMetadata_Type_Updated,
  IncomingWebhookChangedMetadata_Type_Removed,
  IncomingWebhookChangedMetadata_Type_UPDATEDNAME,
  IncomingWebhookChangedMetadata_Type_UPDATEDAVATAR,
  IncomingWebhookChangedMetadata_Type_UPDATEDNAMEANDAVATAR,
  IncomingWebhookChangedMetadata_Type
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

-- | The type of inserted content.
newtype InsertContent_ContentType = InsertContent_ContentType {fromInsertContent_ContentType :: Core.Text}
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

-- | Default value when nothing is set for ContentType.
pattern InsertContent_ContentType_UNSPECIFIEDCONTENTTYPE :: InsertContent_ContentType
pattern InsertContent_ContentType_UNSPECIFIEDCONTENTTYPE = InsertContent_ContentType "UNSPECIFIED_CONTENT_TYPE"

-- | Specifies that the content is in plain text.
pattern InsertContent_ContentType_Text :: InsertContent_ContentType
pattern InsertContent_ContentType_Text = InsertContent_ContentType "TEXT"

-- | Specifies that the content is in HTML and is mutable (can be edited).
pattern InsertContent_ContentType_MUTABLEHTML :: InsertContent_ContentType
pattern InsertContent_ContentType_MUTABLEHTML = InsertContent_ContentType "MUTABLE_HTML"

-- | Specifies that the content is in HTML and is immutable (cannot be edited).
pattern InsertContent_ContentType_IMMUTABLEHTML :: InsertContent_ContentType
pattern InsertContent_ContentType_IMMUTABLEHTML = InsertContent_ContentType "IMMUTABLE_HTML"

{-# COMPLETE
  InsertContent_ContentType_UNSPECIFIEDCONTENTTYPE,
  InsertContent_ContentType_Text,
  InsertContent_ContentType_MUTABLEHTML,
  InsertContent_ContentType_IMMUTABLEHTML,
  InsertContent_ContentType
  #-}

newtype InsertContent_MimeType = InsertContent_MimeType {fromInsertContent_MimeType :: Core.Text}
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

-- | Default value when nothing is set for EmailMimeType.
pattern InsertContent_MimeType_UNSPECIFIEDEMAILMIMETYPE :: InsertContent_MimeType
pattern InsertContent_MimeType_UNSPECIFIEDEMAILMIMETYPE = InsertContent_MimeType "UNSPECIFIED_EMAIL_MIME_TYPE"

-- | Specifies that the inserted content is in plain text.
pattern InsertContent_MimeType_PLAINTEXT :: InsertContent_MimeType
pattern InsertContent_MimeType_PLAINTEXT = InsertContent_MimeType "PLAIN_TEXT"

-- | Specifies that the inserted content is in HTML.
pattern InsertContent_MimeType_Html :: InsertContent_MimeType
pattern InsertContent_MimeType_Html = InsertContent_MimeType "HTML"

{-# COMPLETE
  InsertContent_MimeType_UNSPECIFIEDEMAILMIMETYPE,
  InsertContent_MimeType_PLAINTEXT,
  InsertContent_MimeType_Html,
  InsertContent_MimeType
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

newtype KeyValue_Icon = KeyValue_Icon {fromKeyValue_Icon :: Core.Text}
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
pattern KeyValue_Icon_None :: KeyValue_Icon
pattern KeyValue_Icon_None = KeyValue_Icon "NONE"

-- |
pattern KeyValue_Icon_Airplane :: KeyValue_Icon
pattern KeyValue_Icon_Airplane = KeyValue_Icon "AIRPLANE"

-- |
pattern KeyValue_Icon_Bookmark :: KeyValue_Icon
pattern KeyValue_Icon_Bookmark = KeyValue_Icon "BOOKMARK"

-- |
pattern KeyValue_Icon_Bus :: KeyValue_Icon
pattern KeyValue_Icon_Bus = KeyValue_Icon "BUS"

-- |
pattern KeyValue_Icon_Car :: KeyValue_Icon
pattern KeyValue_Icon_Car = KeyValue_Icon "CAR"

-- |
pattern KeyValue_Icon_Clock :: KeyValue_Icon
pattern KeyValue_Icon_Clock = KeyValue_Icon "CLOCK"

-- |
pattern KeyValue_Icon_CONFIRMATIONNUMBERICON :: KeyValue_Icon
pattern KeyValue_Icon_CONFIRMATIONNUMBERICON = KeyValue_Icon "CONFIRMATION_NUMBER_ICON"

-- |
pattern KeyValue_Icon_Dollar :: KeyValue_Icon
pattern KeyValue_Icon_Dollar = KeyValue_Icon "DOLLAR"

-- |
pattern KeyValue_Icon_Description :: KeyValue_Icon
pattern KeyValue_Icon_Description = KeyValue_Icon "DESCRIPTION"

-- |
pattern KeyValue_Icon_Edit :: KeyValue_Icon
pattern KeyValue_Icon_Edit = KeyValue_Icon "EDIT"

-- |
pattern KeyValue_Icon_EDITNOTE :: KeyValue_Icon
pattern KeyValue_Icon_EDITNOTE = KeyValue_Icon "EDIT_NOTE"

-- |
pattern KeyValue_Icon_Email :: KeyValue_Icon
pattern KeyValue_Icon_Email = KeyValue_Icon "EMAIL"

-- |
pattern KeyValue_Icon_EVENTPERFORMER :: KeyValue_Icon
pattern KeyValue_Icon_EVENTPERFORMER = KeyValue_Icon "EVENT_PERFORMER"

-- |
pattern KeyValue_Icon_EVENTSEAT :: KeyValue_Icon
pattern KeyValue_Icon_EVENTSEAT = KeyValue_Icon "EVENT_SEAT"

-- |
pattern KeyValue_Icon_FLIGHTARRIVAL :: KeyValue_Icon
pattern KeyValue_Icon_FLIGHTARRIVAL = KeyValue_Icon "FLIGHT_ARRIVAL"

-- |
pattern KeyValue_Icon_FLIGHTDEPARTURE :: KeyValue_Icon
pattern KeyValue_Icon_FLIGHTDEPARTURE = KeyValue_Icon "FLIGHT_DEPARTURE"

-- |
pattern KeyValue_Icon_Hotel :: KeyValue_Icon
pattern KeyValue_Icon_Hotel = KeyValue_Icon "HOTEL"

-- |
pattern KeyValue_Icon_HOTELROOMTYPE :: KeyValue_Icon
pattern KeyValue_Icon_HOTELROOMTYPE = KeyValue_Icon "HOTEL_ROOM_TYPE"

-- |
pattern KeyValue_Icon_Invite :: KeyValue_Icon
pattern KeyValue_Icon_Invite = KeyValue_Icon "INVITE"

-- |
pattern KeyValue_Icon_MAPPIN :: KeyValue_Icon
pattern KeyValue_Icon_MAPPIN = KeyValue_Icon "MAP_PIN"

-- |
pattern KeyValue_Icon_Membership :: KeyValue_Icon
pattern KeyValue_Icon_Membership = KeyValue_Icon "MEMBERSHIP"

-- |
pattern KeyValue_Icon_MULTIPLEPEOPLE :: KeyValue_Icon
pattern KeyValue_Icon_MULTIPLEPEOPLE = KeyValue_Icon "MULTIPLE_PEOPLE"

-- |
pattern KeyValue_Icon_Offer :: KeyValue_Icon
pattern KeyValue_Icon_Offer = KeyValue_Icon "OFFER"

-- |
pattern KeyValue_Icon_OPENINNEW :: KeyValue_Icon
pattern KeyValue_Icon_OPENINNEW = KeyValue_Icon "OPEN_IN_NEW"

-- |
pattern KeyValue_Icon_Person :: KeyValue_Icon
pattern KeyValue_Icon_Person = KeyValue_Icon "PERSON"

-- |
pattern KeyValue_Icon_Phone :: KeyValue_Icon
pattern KeyValue_Icon_Phone = KeyValue_Icon "PHONE"

-- |
pattern KeyValue_Icon_RESTAURANTICON :: KeyValue_Icon
pattern KeyValue_Icon_RESTAURANTICON = KeyValue_Icon "RESTAURANT_ICON"

-- |
pattern KeyValue_Icon_SHOPPINGCART :: KeyValue_Icon
pattern KeyValue_Icon_SHOPPINGCART = KeyValue_Icon "SHOPPING_CART"

-- |
pattern KeyValue_Icon_Star :: KeyValue_Icon
pattern KeyValue_Icon_Star = KeyValue_Icon "STAR"

-- |
pattern KeyValue_Icon_Store :: KeyValue_Icon
pattern KeyValue_Icon_Store = KeyValue_Icon "STORE"

-- |
pattern KeyValue_Icon_Ticket :: KeyValue_Icon
pattern KeyValue_Icon_Ticket = KeyValue_Icon "TICKET"

-- |
pattern KeyValue_Icon_Train :: KeyValue_Icon
pattern KeyValue_Icon_Train = KeyValue_Icon "TRAIN"

-- |
pattern KeyValue_Icon_VIDEOCAMERA :: KeyValue_Icon
pattern KeyValue_Icon_VIDEOCAMERA = KeyValue_Icon "VIDEO_CAMERA"

-- | Add new items in alphabetical order. Next Available ID: 34
pattern KeyValue_Icon_VIDEOPLAY :: KeyValue_Icon
pattern KeyValue_Icon_VIDEOPLAY = KeyValue_Icon "VIDEO_PLAY"

{-# COMPLETE
  KeyValue_Icon_None,
  KeyValue_Icon_Airplane,
  KeyValue_Icon_Bookmark,
  KeyValue_Icon_Bus,
  KeyValue_Icon_Car,
  KeyValue_Icon_Clock,
  KeyValue_Icon_CONFIRMATIONNUMBERICON,
  KeyValue_Icon_Dollar,
  KeyValue_Icon_Description,
  KeyValue_Icon_Edit,
  KeyValue_Icon_EDITNOTE,
  KeyValue_Icon_Email,
  KeyValue_Icon_EVENTPERFORMER,
  KeyValue_Icon_EVENTSEAT,
  KeyValue_Icon_FLIGHTARRIVAL,
  KeyValue_Icon_FLIGHTDEPARTURE,
  KeyValue_Icon_Hotel,
  KeyValue_Icon_HOTELROOMTYPE,
  KeyValue_Icon_Invite,
  KeyValue_Icon_MAPPIN,
  KeyValue_Icon_Membership,
  KeyValue_Icon_MULTIPLEPEOPLE,
  KeyValue_Icon_Offer,
  KeyValue_Icon_OPENINNEW,
  KeyValue_Icon_Person,
  KeyValue_Icon_Phone,
  KeyValue_Icon_RESTAURANTICON,
  KeyValue_Icon_SHOPPINGCART,
  KeyValue_Icon_Star,
  KeyValue_Icon_Store,
  KeyValue_Icon_Ticket,
  KeyValue_Icon_Train,
  KeyValue_Icon_VIDEOCAMERA,
  KeyValue_Icon_VIDEOPLAY,
  KeyValue_Icon
  #-}

newtype KeyValue_ImageStyle = KeyValue_ImageStyle {fromKeyValue_ImageStyle :: Core.Text}
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

-- | No value specified.
pattern KeyValue_ImageStyle_CROPTYPENOTSET :: KeyValue_ImageStyle
pattern KeyValue_ImageStyle_CROPTYPENOTSET = KeyValue_ImageStyle "CROP_TYPE_NOT_SET"

-- | Applies a square crop.
pattern KeyValue_ImageStyle_Square :: KeyValue_ImageStyle
pattern KeyValue_ImageStyle_Square = KeyValue_ImageStyle "SQUARE"

-- | Applies a circular crop.
pattern KeyValue_ImageStyle_Circle :: KeyValue_ImageStyle
pattern KeyValue_ImageStyle_Circle = KeyValue_ImageStyle "CIRCLE"

-- | Applies a rectangular crop with a custom aspect ratio.
pattern KeyValue_ImageStyle_RECTANGLECUSTOM :: KeyValue_ImageStyle
pattern KeyValue_ImageStyle_RECTANGLECUSTOM = KeyValue_ImageStyle "RECTANGLE_CUSTOM"

-- | Applies a rectangular crop with a 4:3 aspect ratio.
pattern KeyValue_ImageStyle_RECTANGLE_4_3 :: KeyValue_ImageStyle
pattern KeyValue_ImageStyle_RECTANGLE_4_3 = KeyValue_ImageStyle "RECTANGLE_4_3"

{-# COMPLETE
  KeyValue_ImageStyle_CROPTYPENOTSET,
  KeyValue_ImageStyle_Square,
  KeyValue_ImageStyle_Circle,
  KeyValue_ImageStyle_RECTANGLECUSTOM,
  KeyValue_ImageStyle_RECTANGLE_4_3,
  KeyValue_ImageStyle
  #-}

-- | The hint to use when rendering the associated attachment. Ignored if there is no associated attachment.
newtype LinkData_AttachmentRenderHint = LinkData_AttachmentRenderHint {fromLinkData_AttachmentRenderHint :: Core.Text}
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

-- | No rendering hint; should not be used (equivalent to having no hint)
pattern LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTUNKNOWN :: LinkData_AttachmentRenderHint
pattern LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTUNKNOWN = LinkData_AttachmentRenderHint "ATTACHMENT_RENDER_HINT_UNKNOWN"

-- | Render any associated attachment at the end of the block, after all sibling Segments. Leave the link in place in the text and render it normally as well.
pattern LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTAFTER :: LinkData_AttachmentRenderHint
pattern LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTAFTER = LinkData_AttachmentRenderHint "ATTACHMENT_RENDER_HINT_AFTER"

-- | Render any associated attachment inline in the text in place of the link text, forcing a line break before and after the attachment so the text and the attachment are \"interleaved\". If this is not possible, render as if AFTER.
pattern LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTINTERLEAVED :: LinkData_AttachmentRenderHint
pattern LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTINTERLEAVED = LinkData_AttachmentRenderHint "ATTACHMENT_RENDER_HINT_INTERLEAVED"

{-# COMPLETE
  LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTUNKNOWN,
  LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTAFTER,
  LinkData_AttachmentRenderHint_ATTACHMENTRENDERHINTINTERLEAVED,
  LinkData_AttachmentRenderHint
  #-}

-- | LinkType is an optional field that provides additional information regarding link target. For example, link type can be identified as the SELF_LINK when the request was executed from the same link as the link target.
newtype LinkData_LinkType = LinkData_LinkType {fromLinkData_LinkType :: Core.Text}
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

-- | No link type specified.
pattern LinkData_LinkType_UNKNOWNLINKTYPE :: LinkData_LinkType
pattern LinkData_LinkType_UNKNOWNLINKTYPE = LinkData_LinkType "UNKNOWN_LINK_TYPE"

-- | This indicates that the link target points to the same object related to this segment. Example: A YouTube link with text=\"0.07\" and link/target: \"https:\/\/www.youtube.com\/watch?v=leHVmSqd4/w&t=0m07s\" points to the same YouTube video where this segment appears. See http:\/\/go\/ignore-badwords-filtering-for-selflink for adding link_type design document.
pattern LinkData_LinkType_SELFLINK :: LinkData_LinkType
pattern LinkData_LinkType_SELFLINK = LinkData_LinkType "SELF_LINK"

{-# COMPLETE
  LinkData_LinkType_UNKNOWNLINKTYPE,
  LinkData_LinkType_SELFLINK,
  LinkData_LinkType
  #-}

newtype MeetingSpace_AcceptedNumberClassItem = MeetingSpace_AcceptedNumberClassItem {fromMeetingSpace_AcceptedNumberClassItem :: Core.Text}
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

-- | No number class has been specified.
pattern MeetingSpace_AcceptedNumberClassItem_NUMBERCLASSUNSPECIFIED :: MeetingSpace_AcceptedNumberClassItem
pattern MeetingSpace_AcceptedNumberClassItem_NUMBERCLASSUNSPECIFIED = MeetingSpace_AcceptedNumberClassItem "NUMBER_CLASS_UNSPECIFIED"

-- | The number has a low cost to receive calls on.
pattern MeetingSpace_AcceptedNumberClassItem_LOWCOST :: MeetingSpace_AcceptedNumberClassItem
pattern MeetingSpace_AcceptedNumberClassItem_LOWCOST = MeetingSpace_AcceptedNumberClassItem "LOW_COST"

-- | The number has a high cost to receive calls on.
pattern MeetingSpace_AcceptedNumberClassItem_HIGHCOST :: MeetingSpace_AcceptedNumberClassItem
pattern MeetingSpace_AcceptedNumberClassItem_HIGHCOST = MeetingSpace_AcceptedNumberClassItem "HIGH_COST"

-- | Class for legacy numbers.
pattern MeetingSpace_AcceptedNumberClassItem_Legacy :: MeetingSpace_AcceptedNumberClassItem
pattern MeetingSpace_AcceptedNumberClassItem_Legacy = MeetingSpace_AcceptedNumberClassItem "LEGACY"

{-# COMPLETE
  MeetingSpace_AcceptedNumberClassItem_NUMBERCLASSUNSPECIFIED,
  MeetingSpace_AcceptedNumberClassItem_LOWCOST,
  MeetingSpace_AcceptedNumberClassItem_HIGHCOST,
  MeetingSpace_AcceptedNumberClassItem_Legacy,
  MeetingSpace_AcceptedNumberClassItem
  #-}

-- | This should only be set when MembershipChange type is LEAVE.
newtype MembershipChangeEvent_LeaveReason = MembershipChangeEvent_LeaveReason {fromMembershipChangeEvent_LeaveReason :: Core.Text}
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
pattern MembershipChangeEvent_LeaveReason_LEAVEREASONUNKNOWN :: MembershipChangeEvent_LeaveReason
pattern MembershipChangeEvent_LeaveReason_LEAVEREASONUNKNOWN = MembershipChangeEvent_LeaveReason "LEAVE_REASON_UNKNOWN"

-- |
pattern MembershipChangeEvent_LeaveReason_FORCEHISTORYPOLICYCHANGE :: MembershipChangeEvent_LeaveReason
pattern MembershipChangeEvent_LeaveReason_FORCEHISTORYPOLICYCHANGE = MembershipChangeEvent_LeaveReason "FORCE_HISTORY_POLICY_CHANGE"

-- |
pattern MembershipChangeEvent_LeaveReason_USERINITIATED :: MembershipChangeEvent_LeaveReason
pattern MembershipChangeEvent_LeaveReason_USERINITIATED = MembershipChangeEvent_LeaveReason "USER_INITIATED"

{-# COMPLETE
  MembershipChangeEvent_LeaveReason_LEAVEREASONUNKNOWN,
  MembershipChangeEvent_LeaveReason_FORCEHISTORYPOLICYCHANGE,
  MembershipChangeEvent_LeaveReason_USERINITIATED,
  MembershipChangeEvent_LeaveReason
  #-}

newtype MembershipChangeEvent_Type = MembershipChangeEvent_Type {fromMembershipChangeEvent_Type :: Core.Text}
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
pattern MembershipChangeEvent_Type_Join :: MembershipChangeEvent_Type
pattern MembershipChangeEvent_Type_Join = MembershipChangeEvent_Type "JOIN"

-- |
pattern MembershipChangeEvent_Type_Leave :: MembershipChangeEvent_Type
pattern MembershipChangeEvent_Type_Leave = MembershipChangeEvent_Type "LEAVE"

{-# COMPLETE
  MembershipChangeEvent_Type_Join,
  MembershipChangeEvent_Type_Leave,
  MembershipChangeEvent_Type
  #-}

-- | The type of the user who initiated this membership change.
newtype MembershipChangedMetadata_InitiatorType = MembershipChangedMetadata_InitiatorType {fromMembershipChangedMetadata_InitiatorType :: Core.Text}
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
pattern MembershipChangedMetadata_InitiatorType_INITIATORTYPEUNSPECIFIED :: MembershipChangedMetadata_InitiatorType
pattern MembershipChangedMetadata_InitiatorType_INITIATORTYPEUNSPECIFIED = MembershipChangedMetadata_InitiatorType "INITIATOR_TYPE_UNSPECIFIED"

-- |
pattern MembershipChangedMetadata_InitiatorType_INITIATORTYPEENDUSER :: MembershipChangedMetadata_InitiatorType
pattern MembershipChangedMetadata_InitiatorType_INITIATORTYPEENDUSER = MembershipChangedMetadata_InitiatorType "INITIATOR_TYPE_END_USER"

-- |
pattern MembershipChangedMetadata_InitiatorType_INITIATORTYPEADMIN :: MembershipChangedMetadata_InitiatorType
pattern MembershipChangedMetadata_InitiatorType_INITIATORTYPEADMIN = MembershipChangedMetadata_InitiatorType "INITIATOR_TYPE_ADMIN"

{-# COMPLETE
  MembershipChangedMetadata_InitiatorType_INITIATORTYPEUNSPECIFIED,
  MembershipChangedMetadata_InitiatorType_INITIATORTYPEENDUSER,
  MembershipChangedMetadata_InitiatorType_INITIATORTYPEADMIN,
  MembershipChangedMetadata_InitiatorType
  #-}

newtype MembershipChangedMetadata_Type = MembershipChangedMetadata_Type {fromMembershipChangedMetadata_Type :: Core.Text}
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

-- | Default value for the enum. DO NOT USE.
pattern MembershipChangedMetadata_Type_TYPEUNSPECIFIED :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_TYPEUNSPECIFIED = MembershipChangedMetadata_Type "TYPE_UNSPECIFIED"

-- | Non-member -> Can join. Multiple groups and users.
pattern MembershipChangedMetadata_Type_Invited :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_Invited = MembershipChangedMetadata_Type "INVITED"

-- | Can join -> Member. One user.
pattern MembershipChangedMetadata_Type_Joined :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_Joined = MembershipChangedMetadata_Type "JOINED"

-- | Non-member -> Member. Multiple users.
pattern MembershipChangedMetadata_Type_Added :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_Added = MembershipChangedMetadata_Type "ADDED"

-- | Can join -> Non-member. One group or user.
pattern MembershipChangedMetadata_Type_Removed :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_Removed = MembershipChangedMetadata_Type "REMOVED"

-- | Member -> Can join. One user.
pattern MembershipChangedMetadata_Type_Left' :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_Left' = MembershipChangedMetadata_Type "LEFT"

-- | Bot added to the room.
pattern MembershipChangedMetadata_Type_BOTADDED :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_BOTADDED = MembershipChangedMetadata_Type "BOT_ADDED"

-- | Bot removed from the room.
pattern MembershipChangedMetadata_Type_BOTREMOVED :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_BOTREMOVED = MembershipChangedMetadata_Type "BOT_REMOVED"

-- | This signifies the user is kicked because the user\'s OTR policy is conflicted with the room history settings. Joined -> Non-member. One user.
pattern MembershipChangedMetadata_Type_KICKEDDUETOOTRCONFLICT :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_KICKEDDUETOOTRCONFLICT = MembershipChangedMetadata_Type "KICKED_DUE_TO_OTR_CONFLICT"

-- | MembershipRole changed. Multiple users.
pattern MembershipChangedMetadata_Type_ROLEUPDATED :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_ROLEUPDATED = MembershipChangedMetadata_Type "ROLE_UPDATED"

-- | The room is now joinable by an
pattern MembershipChangedMetadata_Type_ROLETARGETAUDIENCEUPDATED :: MembershipChangedMetadata_Type
pattern MembershipChangedMetadata_Type_ROLETARGETAUDIENCEUPDATED = MembershipChangedMetadata_Type "ROLE_TARGET_AUDIENCE_UPDATED"

{-# COMPLETE
  MembershipChangedMetadata_Type_TYPEUNSPECIFIED,
  MembershipChangedMetadata_Type_Invited,
  MembershipChangedMetadata_Type_Joined,
  MembershipChangedMetadata_Type_Added,
  MembershipChangedMetadata_Type_Removed,
  MembershipChangedMetadata_Type_Left',
  MembershipChangedMetadata_Type_BOTADDED,
  MembershipChangedMetadata_Type_BOTREMOVED,
  MembershipChangedMetadata_Type_KICKEDDUETOOTRCONFLICT,
  MembershipChangedMetadata_Type_ROLEUPDATED,
  MembershipChangedMetadata_Type_ROLETARGETAUDIENCEUPDATED,
  MembershipChangedMetadata_Type
  #-}

-- | Indicates who can delete the message. This field is set on the read path (e.g. ListTopics) but doesn’t have any effect on the write path (e.g. CreateMessageRequest).
newtype Message_DeletableBy = Message_DeletableBy {fromMessage_DeletableBy :: Core.Text}
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

-- | Default case, should never be used. If this data is encountered in the DB any request should throw an exception.
pattern Message_DeletableBy_PERMISSIONUNSPECIFIED :: Message_DeletableBy
pattern Message_DeletableBy_PERMISSIONUNSPECIFIED = Message_DeletableBy "PERMISSION_UNSPECIFIED"

-- | No one except for the message creator\/origin pair can mutate. This permission checks both gaia id and the request origin. Request origin can be Chat API or Chat UI. Mutation is allowed iff both attributes of the request match the original message creation. Use case: this allows historical 1P apps lock down message edit permission i.e. In Chat UI, humans cannot edit their messages created via these 1P apps. Do not use this for additional use cases.
pattern Message_DeletableBy_PERMISSIONNOONE :: Message_DeletableBy
pattern Message_DeletableBy_PERMISSIONNOONE = Message_DeletableBy "PERMISSION_NO_ONE"

-- | The message creator can mutate regardless of request origin. Use case: for messages created by human via Chat UI or Chat API. These messages can be mutated by the same human user via Chat UI or via any app on Chat API.
pattern Message_DeletableBy_PERMISSIONCREATOR :: Message_DeletableBy
pattern Message_DeletableBy_PERMISSIONCREATOR = Message_DeletableBy "PERMISSION_CREATOR"

-- | Every human member of a space or the creator can mutate the entity. This excludes app acting on behalf of human via Chat API. Use case: This is to enable humans to delete messages created by apps.
pattern Message_DeletableBy_PERMISSIONMEMBER :: Message_DeletableBy
pattern Message_DeletableBy_PERMISSIONMEMBER = Message_DeletableBy "PERMISSION_MEMBER"

{-# COMPLETE
  Message_DeletableBy_PERMISSIONUNSPECIFIED,
  Message_DeletableBy_PERMISSIONNOONE,
  Message_DeletableBy_PERMISSIONCREATOR,
  Message_DeletableBy_PERMISSIONMEMBER,
  Message_DeletableBy
  #-}

-- | Indicates who can edit the message. This field is set on the read path (e.g. ListTopics) but doesn’t have any effect on the write path (e.g. CreateMessageRequest).
newtype Message_EditableBy = Message_EditableBy {fromMessage_EditableBy :: Core.Text}
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

-- | Default case, should never be used. If this data is encountered in the DB any request should throw an exception.
pattern Message_EditableBy_PERMISSIONUNSPECIFIED :: Message_EditableBy
pattern Message_EditableBy_PERMISSIONUNSPECIFIED = Message_EditableBy "PERMISSION_UNSPECIFIED"

-- | No one except for the message creator\/origin pair can mutate. This permission checks both gaia id and the request origin. Request origin can be Chat API or Chat UI. Mutation is allowed iff both attributes of the request match the original message creation. Use case: this allows historical 1P apps lock down message edit permission i.e. In Chat UI, humans cannot edit their messages created via these 1P apps. Do not use this for additional use cases.
pattern Message_EditableBy_PERMISSIONNOONE :: Message_EditableBy
pattern Message_EditableBy_PERMISSIONNOONE = Message_EditableBy "PERMISSION_NO_ONE"

-- | The message creator can mutate regardless of request origin. Use case: for messages created by human via Chat UI or Chat API. These messages can be mutated by the same human user via Chat UI or via any app on Chat API.
pattern Message_EditableBy_PERMISSIONCREATOR :: Message_EditableBy
pattern Message_EditableBy_PERMISSIONCREATOR = Message_EditableBy "PERMISSION_CREATOR"

-- | Every human member of a space or the creator can mutate the entity. This excludes app acting on behalf of human via Chat API. Use case: This is to enable humans to delete messages created by apps.
pattern Message_EditableBy_PERMISSIONMEMBER :: Message_EditableBy
pattern Message_EditableBy_PERMISSIONMEMBER = Message_EditableBy "PERMISSION_MEMBER"

{-# COMPLETE
  Message_EditableBy_PERMISSIONUNSPECIFIED,
  Message_EditableBy_PERMISSIONNOONE,
  Message_EditableBy_PERMISSIONCREATOR,
  Message_EditableBy_PERMISSIONMEMBER,
  Message_EditableBy
  #-}

-- | Where the message was posted from
newtype Message_MessageOrigin = Message_MessageOrigin {fromMessage_MessageOrigin :: Core.Text}
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
pattern Message_MessageOrigin_ORIGINNOTSET :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINNOTSET = Message_MessageOrigin "ORIGIN_NOT_SET"

-- |
pattern Message_MessageOrigin_ORIGINDYNAMITE :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINDYNAMITE = Message_MessageOrigin "ORIGIN_DYNAMITE"

-- | The message is from Babel (Hangouts Classic) interop.
pattern Message_MessageOrigin_ORIGINBABELINTEROPLIVE :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINBABELINTEROPLIVE = Message_MessageOrigin "ORIGIN_BABEL_INTEROP_LIVE"

-- | The message is from Babel interop retries from Manifold queue.
pattern Message_MessageOrigin_ORIGINBABELINTEROPRETRY :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINBABELINTEROPRETRY = Message_MessageOrigin "ORIGIN_BABEL_INTEROP_RETRY"

-- | The message came directly from Babel as source-of-truth
pattern Message_MessageOrigin_ORIGINBABEL :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINBABEL = Message_MessageOrigin "ORIGIN_BABEL"

-- | The message came directly from Babel during dual-write
pattern Message_MessageOrigin_ORIGINBABELDUALWRITE :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINBABELDUALWRITE = Message_MessageOrigin "ORIGIN_BABEL_DUAL_WRITE"

-- | The message came directly from Babel Manifold queue during dual write
pattern Message_MessageOrigin_ORIGINBABELDUALWRITERETRY :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINBABELDUALWRITERETRY = Message_MessageOrigin "ORIGIN_BABEL_DUAL_WRITE_RETRY"

-- | The message was backfilled by go\/dinnertrain as part of go\/storage-consolidation. The backfill origin corresponds to the BackfillState in which the message was created.
pattern Message_MessageOrigin_ORIGINBACKFILLFROMPAPYRUS :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINBACKFILLFROMPAPYRUS = Message_MessageOrigin "ORIGIN_BACKFILL_FROM_PAPYRUS"

-- |
pattern Message_MessageOrigin_ORIGINBACKFILLFROMGMAILARCHIVE :: Message_MessageOrigin
pattern Message_MessageOrigin_ORIGINBACKFILLFROMGMAILARCHIVE = Message_MessageOrigin "ORIGIN_BACKFILL_FROM_GMAIL_ARCHIVE"

{-# COMPLETE
  Message_MessageOrigin_ORIGINNOTSET,
  Message_MessageOrigin_ORIGINDYNAMITE,
  Message_MessageOrigin_ORIGINBABELINTEROPLIVE,
  Message_MessageOrigin_ORIGINBABELINTEROPRETRY,
  Message_MessageOrigin_ORIGINBABEL,
  Message_MessageOrigin_ORIGINBABELDUALWRITE,
  Message_MessageOrigin_ORIGINBABELDUALWRITERETRY,
  Message_MessageOrigin_ORIGINBACKFILLFROMPAPYRUS,
  Message_MessageOrigin_ORIGINBACKFILLFROMGMAILARCHIVE,
  Message_MessageOrigin
  #-}

-- | State of the message, indicating whether the message is visible to all members in the group or is only visible to the sender only, or the private/message/viewer if it is set.
newtype Message_MessageState = Message_MessageState {fromMessage_MessageState :: Core.Text}
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

-- | Default - visible to the room \/ DM.
pattern Message_MessageState_Public :: Message_MessageState
pattern Message_MessageState_Public = Message_MessageState "PUBLIC"

-- | Private state - only visible to the message creator, and the private/message/viewer if set.
pattern Message_MessageState_Private :: Message_MessageState
pattern Message_MessageState_Private = Message_MessageState "PRIVATE"

{-# COMPLETE
  Message_MessageState_Public,
  Message_MessageState_Private,
  Message_MessageState
  #-}

-- | Output only. Whether this message has been quoted by another message or not. Used by clients to handle message edit flows for messages that have been quoted.
newtype Message_QuotedByState = Message_QuotedByState {fromMessage_QuotedByState :: Core.Text}
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

-- | Unspecified state for QuotedByState.
pattern Message_QuotedByState_QUOTEDBYSTATEUNSPECIFIED :: Message_QuotedByState
pattern Message_QuotedByState_QUOTEDBYSTATEUNSPECIFIED = Message_QuotedByState "QUOTED_BY_STATE_UNSPECIFIED"

-- | State to indicate that this message is quoted by another message (excluding purged message).
pattern Message_QuotedByState_QUOTEDBYSTATEHASBEENQUOTED :: Message_QuotedByState
pattern Message_QuotedByState_QUOTEDBYSTATEHASBEENQUOTED = Message_QuotedByState "QUOTED_BY_STATE_HAS_BEEN_QUOTED"

-- | State to indicate that this message are not quoted by another message.
pattern Message_QuotedByState_QUOTEDBYSTATEHASNOTBEENQUOTED :: Message_QuotedByState
pattern Message_QuotedByState_QUOTEDBYSTATEHASNOTBEENQUOTED = Message_QuotedByState "QUOTED_BY_STATE_HAS_NOT_BEEN_QUOTED"

{-# COMPLETE
  Message_QuotedByState_QUOTEDBYSTATEUNSPECIFIED,
  Message_QuotedByState_QUOTEDBYSTATEHASBEENQUOTED,
  Message_QuotedByState_QUOTEDBYSTATEHASNOTBEENQUOTED,
  Message_QuotedByState
  #-}

-- | Used by clients to correctly log format type for message creation due to complexity with client side optimistic update (see go\/content-metric-post-send-logging for details). Currently, only set by server in the message or topic creation path.
newtype Message_RichTextFormattingType = Message_RichTextFormattingType {fromMessage_RichTextFormattingType :: Core.Text}
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
pattern Message_RichTextFormattingType_None :: Message_RichTextFormattingType
pattern Message_RichTextFormattingType_None = Message_RichTextFormattingType "NONE"

-- | The formatting was specified as /markdown characters/ in message text.
pattern Message_RichTextFormattingType_Markdown :: Message_RichTextFormattingType
pattern Message_RichTextFormattingType_Markdown = Message_RichTextFormattingType "MARKDOWN"

-- | The formatting was specified as {\@link com.google.apps.dynamite.v1.shared.FormatMetadata} annotations.
pattern Message_RichTextFormattingType_FORMATANNOTATIONS :: Message_RichTextFormattingType
pattern Message_RichTextFormattingType_FORMATANNOTATIONS = Message_RichTextFormattingType "FORMAT_ANNOTATIONS"

-- | The client sent the format annotations, but didn\'t set the accept/format/annotations field to true. This shouldn\'t happen, but there might be some old clients that end up here.
pattern Message_RichTextFormattingType_FORMATANNOTATIONSIGNORED :: Message_RichTextFormattingType
pattern Message_RichTextFormattingType_FORMATANNOTATIONSIGNORED = Message_RichTextFormattingType "FORMAT_ANNOTATIONS_IGNORED"

-- | A combination of MARKDOWN and FORMAT/ANNOTATIONS/IGNORED.
pattern Message_RichTextFormattingType_FORMATANNOTATIONSIGNOREDWITHMARKDOWN :: Message_RichTextFormattingType
pattern Message_RichTextFormattingType_FORMATANNOTATIONSIGNOREDWITHMARKDOWN = Message_RichTextFormattingType "FORMAT_ANNOTATIONS_IGNORED_WITH_MARKDOWN"

{-# COMPLETE
  Message_RichTextFormattingType_None,
  Message_RichTextFormattingType_Markdown,
  Message_RichTextFormattingType_FORMATANNOTATIONS,
  Message_RichTextFormattingType_FORMATANNOTATIONSIGNORED,
  Message_RichTextFormattingType_FORMATANNOTATIONSIGNOREDWITHMARKDOWN,
  Message_RichTextFormattingType
  #-}

-- | Message author’s user type (human\/bot).
newtype MessageInfo_AuthorUserType = MessageInfo_AuthorUserType {fromMessageInfo_AuthorUserType :: Core.Text}
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
pattern MessageInfo_AuthorUserType_Human :: MessageInfo_AuthorUserType
pattern MessageInfo_AuthorUserType_Human = MessageInfo_AuthorUserType "HUMAN"

-- |
pattern MessageInfo_AuthorUserType_Bot :: MessageInfo_AuthorUserType
pattern MessageInfo_AuthorUserType_Bot = MessageInfo_AuthorUserType "BOT"

{-# COMPLETE
  MessageInfo_AuthorUserType_Human,
  MessageInfo_AuthorUserType_Bot,
  MessageInfo_AuthorUserType
  #-}

-- | Searcher\'s membership state in the space where the message is posted.
newtype MessageInfo_SearcherMembershipState = MessageInfo_SearcherMembershipState {fromMessageInfo_SearcherMembershipState :: Core.Text}
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
pattern MessageInfo_SearcherMembershipState_MEMBERUNKNOWN :: MessageInfo_SearcherMembershipState
pattern MessageInfo_SearcherMembershipState_MEMBERUNKNOWN = MessageInfo_SearcherMembershipState "MEMBER_UNKNOWN"

-- | An invitation to the space has been sent
pattern MessageInfo_SearcherMembershipState_MEMBERINVITED :: MessageInfo_SearcherMembershipState
pattern MessageInfo_SearcherMembershipState_MEMBERINVITED = MessageInfo_SearcherMembershipState "MEMBER_INVITED"

-- | User has joined the space
pattern MessageInfo_SearcherMembershipState_MEMBERJOINED :: MessageInfo_SearcherMembershipState
pattern MessageInfo_SearcherMembershipState_MEMBERJOINED = MessageInfo_SearcherMembershipState "MEMBER_JOINED"

-- | User is not a member
pattern MessageInfo_SearcherMembershipState_MEMBERNOTAMEMBER :: MessageInfo_SearcherMembershipState
pattern MessageInfo_SearcherMembershipState_MEMBERNOTAMEMBER = MessageInfo_SearcherMembershipState "MEMBER_NOT_A_MEMBER"

-- | This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.
pattern MessageInfo_SearcherMembershipState_MEMBERFAILED :: MessageInfo_SearcherMembershipState
pattern MessageInfo_SearcherMembershipState_MEMBERFAILED = MessageInfo_SearcherMembershipState "MEMBER_FAILED"

{-# COMPLETE
  MessageInfo_SearcherMembershipState_MEMBERUNKNOWN,
  MessageInfo_SearcherMembershipState_MEMBERINVITED,
  MessageInfo_SearcherMembershipState_MEMBERJOINED,
  MessageInfo_SearcherMembershipState_MEMBERNOTAMEMBER,
  MessageInfo_SearcherMembershipState_MEMBERFAILED,
  MessageInfo_SearcherMembershipState
  #-}

-- | Next available ID: 5
newtype OpenLink_LoadIndicator = OpenLink_LoadIndicator {fromOpenLink_LoadIndicator :: Core.Text}
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
pattern OpenLink_LoadIndicator_None :: OpenLink_LoadIndicator
pattern OpenLink_LoadIndicator_None = OpenLink_LoadIndicator "NONE"

-- |
pattern OpenLink_LoadIndicator_Spinner :: OpenLink_LoadIndicator
pattern OpenLink_LoadIndicator_Spinner = OpenLink_LoadIndicator "SPINNER"

{-# COMPLETE
  OpenLink_LoadIndicator_None,
  OpenLink_LoadIndicator_Spinner,
  OpenLink_LoadIndicator
  #-}

newtype OpenLink_OnClose = OpenLink_OnClose {fromOpenLink_OnClose :: Core.Text}
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
pattern OpenLink_OnClose_Nothing' :: OpenLink_OnClose
pattern OpenLink_OnClose_Nothing' = OpenLink_OnClose "NOTHING"

-- |
pattern OpenLink_OnClose_RELOADADDON :: OpenLink_OnClose
pattern OpenLink_OnClose_RELOADADDON = OpenLink_OnClose "RELOAD_ADD_ON"

{-# COMPLETE
  OpenLink_OnClose_Nothing',
  OpenLink_OnClose_RELOADADDON,
  OpenLink_OnClose
  #-}

newtype OpenLink_OpenAs = OpenLink_OpenAs {fromOpenLink_OpenAs :: Core.Text}
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
pattern OpenLink_OpenAs_FULLSIZE :: OpenLink_OpenAs
pattern OpenLink_OpenAs_FULLSIZE = OpenLink_OpenAs "FULL_SIZE"

-- |
pattern OpenLink_OpenAs_Overlay :: OpenLink_OpenAs
pattern OpenLink_OpenAs_Overlay = OpenLink_OpenAs "OVERLAY"

{-# COMPLETE
  OpenLink_OpenAs_FULLSIZE,
  OpenLink_OpenAs_Overlay,
  OpenLink_OpenAs
  #-}

newtype OtrChatMessageEvent_MessageOtrStatus = OtrChatMessageEvent_MessageOtrStatus {fromOtrChatMessageEvent_MessageOtrStatus :: Core.Text}
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

-- | The conversation is completely off the record.
pattern OtrChatMessageEvent_MessageOtrStatus_OFFTHERECORD :: OtrChatMessageEvent_MessageOtrStatus
pattern OtrChatMessageEvent_MessageOtrStatus_OFFTHERECORD = OtrChatMessageEvent_MessageOtrStatus "OFF_THE_RECORD"

-- | The conversation is completely on the record.
pattern OtrChatMessageEvent_MessageOtrStatus_ONTHERECORD :: OtrChatMessageEvent_MessageOtrStatus
pattern OtrChatMessageEvent_MessageOtrStatus_ONTHERECORD = OtrChatMessageEvent_MessageOtrStatus "ON_THE_RECORD"

{-# COMPLETE
  OtrChatMessageEvent_MessageOtrStatus_OFFTHERECORD,
  OtrChatMessageEvent_MessageOtrStatus_ONTHERECORD,
  OtrChatMessageEvent_MessageOtrStatus
  #-}

newtype OtrModificationEvent_NewOtrStatus = OtrModificationEvent_NewOtrStatus {fromOtrModificationEvent_NewOtrStatus :: Core.Text}
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

-- | The conversation is completely off the record.
pattern OtrModificationEvent_NewOtrStatus_OFFTHERECORD :: OtrModificationEvent_NewOtrStatus
pattern OtrModificationEvent_NewOtrStatus_OFFTHERECORD = OtrModificationEvent_NewOtrStatus "OFF_THE_RECORD"

-- | The conversation is completely on the record.
pattern OtrModificationEvent_NewOtrStatus_ONTHERECORD :: OtrModificationEvent_NewOtrStatus
pattern OtrModificationEvent_NewOtrStatus_ONTHERECORD = OtrModificationEvent_NewOtrStatus "ON_THE_RECORD"

{-# COMPLETE
  OtrModificationEvent_NewOtrStatus_OFFTHERECORD,
  OtrModificationEvent_NewOtrStatus_ONTHERECORD,
  OtrModificationEvent_NewOtrStatus
  #-}

newtype OtrModificationEvent_NewOtrToggle = OtrModificationEvent_NewOtrToggle {fromOtrModificationEvent_NewOtrToggle :: Core.Text}
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

-- | The conversation can be toggled
pattern OtrModificationEvent_NewOtrToggle_Enabled :: OtrModificationEvent_NewOtrToggle
pattern OtrModificationEvent_NewOtrToggle_Enabled = OtrModificationEvent_NewOtrToggle "ENABLED"

-- | The conversation cannot be toggled
pattern OtrModificationEvent_NewOtrToggle_Disabled :: OtrModificationEvent_NewOtrToggle
pattern OtrModificationEvent_NewOtrToggle_Disabled = OtrModificationEvent_NewOtrToggle "DISABLED"

{-# COMPLETE
  OtrModificationEvent_NewOtrToggle_Enabled,
  OtrModificationEvent_NewOtrToggle_Disabled,
  OtrModificationEvent_NewOtrToggle
  #-}

newtype OtrModificationEvent_OldOtrStatus = OtrModificationEvent_OldOtrStatus {fromOtrModificationEvent_OldOtrStatus :: Core.Text}
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

-- | The conversation is completely off the record.
pattern OtrModificationEvent_OldOtrStatus_OFFTHERECORD :: OtrModificationEvent_OldOtrStatus
pattern OtrModificationEvent_OldOtrStatus_OFFTHERECORD = OtrModificationEvent_OldOtrStatus "OFF_THE_RECORD"

-- | The conversation is completely on the record.
pattern OtrModificationEvent_OldOtrStatus_ONTHERECORD :: OtrModificationEvent_OldOtrStatus
pattern OtrModificationEvent_OldOtrStatus_ONTHERECORD = OtrModificationEvent_OldOtrStatus "ON_THE_RECORD"

{-# COMPLETE
  OtrModificationEvent_OldOtrStatus_OFFTHERECORD,
  OtrModificationEvent_OldOtrStatus_ONTHERECORD,
  OtrModificationEvent_OldOtrStatus
  #-}

newtype OtrModificationEvent_OldOtrToggle = OtrModificationEvent_OldOtrToggle {fromOtrModificationEvent_OldOtrToggle :: Core.Text}
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

-- | The conversation can be toggled
pattern OtrModificationEvent_OldOtrToggle_Enabled :: OtrModificationEvent_OldOtrToggle
pattern OtrModificationEvent_OldOtrToggle_Enabled = OtrModificationEvent_OldOtrToggle "ENABLED"

-- | The conversation cannot be toggled
pattern OtrModificationEvent_OldOtrToggle_Disabled :: OtrModificationEvent_OldOtrToggle
pattern OtrModificationEvent_OldOtrToggle_Disabled = OtrModificationEvent_OldOtrToggle "DISABLED"

{-# COMPLETE
  OtrModificationEvent_OldOtrToggle_Enabled,
  OtrModificationEvent_OldOtrToggle_Disabled,
  OtrModificationEvent_OldOtrToggle
  #-}

-- | Type of Google API Console client.
newtype PackagingServiceClient_Type = PackagingServiceClient_Type {fromPackagingServiceClient_Type :: Core.Text}
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

-- | Client for Android app.
pattern PackagingServiceClient_Type_Android :: PackagingServiceClient_Type
pattern PackagingServiceClient_Type_Android = PackagingServiceClient_Type "ANDROID"

-- | Client for iOS app.
pattern PackagingServiceClient_Type_Ios :: PackagingServiceClient_Type
pattern PackagingServiceClient_Type_Ios = PackagingServiceClient_Type "IOS"

{-# COMPLETE
  PackagingServiceClient_Type_Android,
  PackagingServiceClient_Type_Ios,
  PackagingServiceClient_Type
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

-- |
pattern PhoneNumber_Type_Other :: PhoneNumber_Type
pattern PhoneNumber_Type_Other = PhoneNumber_Type "OTHER"

-- |
pattern PhoneNumber_Type_Mobile :: PhoneNumber_Type
pattern PhoneNumber_Type_Mobile = PhoneNumber_Type "MOBILE"

-- |
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

-- | This is only optional because required enums cannot be extended. Currently required.
newtype PrincipalProto_Scope = PrincipalProto_Scope {fromPrincipalProto_Scope :: Core.Text}
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
pattern PrincipalProto_Scope_Invalid :: PrincipalProto_Scope
pattern PrincipalProto_Scope_Invalid = PrincipalProto_Scope "INVALID"

-- |
pattern PrincipalProto_Scope_GAIAUSER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_GAIAUSER = PrincipalProto_Scope "GAIA_USER"

-- |
pattern PrincipalProto_Scope_GAIAGROUP :: PrincipalProto_Scope
pattern PrincipalProto_Scope_GAIAGROUP = PrincipalProto_Scope "GAIA_GROUP"

-- |
pattern PrincipalProto_Scope_LDAPUSER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_LDAPUSER = PrincipalProto_Scope "LDAP_USER"

-- |
pattern PrincipalProto_Scope_LDAPGROUP :: PrincipalProto_Scope
pattern PrincipalProto_Scope_LDAPGROUP = PrincipalProto_Scope "LDAP_GROUP"

-- |
pattern PrincipalProto_Scope_MDBUSER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_MDBUSER = PrincipalProto_Scope "MDB_USER"

-- |
pattern PrincipalProto_Scope_MDBGROUP :: PrincipalProto_Scope
pattern PrincipalProto_Scope_MDBGROUP = PrincipalProto_Scope "MDB_GROUP"

-- |
pattern PrincipalProto_Scope_POSTINIUSER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_POSTINIUSER = PrincipalProto_Scope "POSTINI_USER"

-- |
pattern PrincipalProto_Scope_CONTACTGROUP :: PrincipalProto_Scope
pattern PrincipalProto_Scope_CONTACTGROUP = PrincipalProto_Scope "CONTACT_GROUP"

-- |
pattern PrincipalProto_Scope_SIMPLESECRETHOLDER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_SIMPLESECRETHOLDER = PrincipalProto_Scope "SIMPLE_SECRET_HOLDER"

-- |
pattern PrincipalProto_Scope_SIGNINGKEYPOSSESSOR :: PrincipalProto_Scope
pattern PrincipalProto_Scope_SIGNINGKEYPOSSESSOR = PrincipalProto_Scope "SIGNING_KEY_POSSESSOR"

-- |
pattern PrincipalProto_Scope_ALLAUTHENTICATEDUSERS :: PrincipalProto_Scope
pattern PrincipalProto_Scope_ALLAUTHENTICATEDUSERS = PrincipalProto_Scope "ALL_AUTHENTICATED_USERS"

-- |
pattern PrincipalProto_Scope_OAUTHCONSUMER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_OAUTHCONSUMER = PrincipalProto_Scope "OAUTH_CONSUMER"

-- |
pattern PrincipalProto_Scope_Host :: PrincipalProto_Scope
pattern PrincipalProto_Scope_Host = PrincipalProto_Scope "HOST"

-- |
pattern PrincipalProto_Scope_SOCIALGRAPHNODE :: PrincipalProto_Scope
pattern PrincipalProto_Scope_SOCIALGRAPHNODE = PrincipalProto_Scope "SOCIAL_GRAPH_NODE"

-- |
pattern PrincipalProto_Scope_EMAILOWNER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_EMAILOWNER = PrincipalProto_Scope "EMAIL_OWNER"

-- |
pattern PrincipalProto_Scope_CAPTOKENHOLDER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_CAPTOKENHOLDER = PrincipalProto_Scope "CAP_TOKEN_HOLDER"

-- |
pattern PrincipalProto_Scope_Circle :: PrincipalProto_Scope
pattern PrincipalProto_Scope_Circle = PrincipalProto_Scope "CIRCLE"

-- |
pattern PrincipalProto_Scope_Square :: PrincipalProto_Scope
pattern PrincipalProto_Scope_Square = PrincipalProto_Scope "SQUARE"

-- |
pattern PrincipalProto_Scope_Event :: PrincipalProto_Scope
pattern PrincipalProto_Scope_Event = PrincipalProto_Scope "EVENT"

-- |
pattern PrincipalProto_Scope_RESOURCEROLE :: PrincipalProto_Scope
pattern PrincipalProto_Scope_RESOURCEROLE = PrincipalProto_Scope "RESOURCE_ROLE"

-- |
pattern PrincipalProto_Scope_Chat :: PrincipalProto_Scope
pattern PrincipalProto_Scope_Chat = PrincipalProto_Scope "CHAT"

-- |
pattern PrincipalProto_Scope_YOUTUBEUSER :: PrincipalProto_Scope
pattern PrincipalProto_Scope_YOUTUBEUSER = PrincipalProto_Scope "YOUTUBE_USER"

-- |
pattern PrincipalProto_Scope_UNUSEDZWIEBACKSESSION :: PrincipalProto_Scope
pattern PrincipalProto_Scope_UNUSEDZWIEBACKSESSION = PrincipalProto_Scope "UNUSED_ZWIEBACK_SESSION"

-- |
pattern PrincipalProto_Scope_ZWIEBACKSESSION :: PrincipalProto_Scope
pattern PrincipalProto_Scope_ZWIEBACKSESSION = PrincipalProto_Scope "ZWIEBACK_SESSION"

-- |
pattern PrincipalProto_Scope_RBACROLE :: PrincipalProto_Scope
pattern PrincipalProto_Scope_RBACROLE = PrincipalProto_Scope "RBAC_ROLE"

-- |
pattern PrincipalProto_Scope_RBACSUBJECT :: PrincipalProto_Scope
pattern PrincipalProto_Scope_RBACSUBJECT = PrincipalProto_Scope "RBAC_SUBJECT"

-- | next tag: 29
pattern PrincipalProto_Scope_CLOUDPRINCIPAL :: PrincipalProto_Scope
pattern PrincipalProto_Scope_CLOUDPRINCIPAL = PrincipalProto_Scope "CLOUD_PRINCIPAL"

{-# COMPLETE
  PrincipalProto_Scope_Invalid,
  PrincipalProto_Scope_GAIAUSER,
  PrincipalProto_Scope_GAIAGROUP,
  PrincipalProto_Scope_LDAPUSER,
  PrincipalProto_Scope_LDAPGROUP,
  PrincipalProto_Scope_MDBUSER,
  PrincipalProto_Scope_MDBGROUP,
  PrincipalProto_Scope_POSTINIUSER,
  PrincipalProto_Scope_CONTACTGROUP,
  PrincipalProto_Scope_SIMPLESECRETHOLDER,
  PrincipalProto_Scope_SIGNINGKEYPOSSESSOR,
  PrincipalProto_Scope_ALLAUTHENTICATEDUSERS,
  PrincipalProto_Scope_OAUTHCONSUMER,
  PrincipalProto_Scope_Host,
  PrincipalProto_Scope_SOCIALGRAPHNODE,
  PrincipalProto_Scope_EMAILOWNER,
  PrincipalProto_Scope_CAPTOKENHOLDER,
  PrincipalProto_Scope_Circle,
  PrincipalProto_Scope_Square,
  PrincipalProto_Scope_Event,
  PrincipalProto_Scope_RESOURCEROLE,
  PrincipalProto_Scope_Chat,
  PrincipalProto_Scope_YOUTUBEUSER,
  PrincipalProto_Scope_UNUSEDZWIEBACKSESSION,
  PrincipalProto_Scope_ZWIEBACKSESSION,
  PrincipalProto_Scope_RBACROLE,
  PrincipalProto_Scope_RBACSUBJECT,
  PrincipalProto_Scope_CLOUDPRINCIPAL,
  PrincipalProto_Scope
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

-- | Output only. The bot attachment state of the quoted message. Used by clients to display a bot attachment indicator in the UI.
newtype QuotedMessageMetadata_BotAttachmentState = QuotedMessageMetadata_BotAttachmentState {fromQuotedMessageMetadata_BotAttachmentState :: Core.Text}
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
pattern QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATEUNSPECIFIED :: QuotedMessageMetadata_BotAttachmentState
pattern QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATEUNSPECIFIED = QuotedMessageMetadata_BotAttachmentState "BOT_ATTACHMENT_STATE_UNSPECIFIED"

-- |
pattern QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATEHASBOTATTACHMENT :: QuotedMessageMetadata_BotAttachmentState
pattern QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATEHASBOTATTACHMENT = QuotedMessageMetadata_BotAttachmentState "BOT_ATTACHMENT_STATE_HAS_BOT_ATTACHMENT"

-- |
pattern QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATENOBOTATTACHMENT :: QuotedMessageMetadata_BotAttachmentState
pattern QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATENOBOTATTACHMENT = QuotedMessageMetadata_BotAttachmentState "BOT_ATTACHMENT_STATE_NO_BOT_ATTACHMENT"

{-# COMPLETE
  QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATEUNSPECIFIED,
  QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATEHASBOTATTACHMENT,
  QuotedMessageMetadata_BotAttachmentState_BOTATTACHMENTSTATENOBOTATTACHMENT,
  QuotedMessageMetadata_BotAttachmentState
  #-}

-- | Output only. The state of the quoted message. Used by clients to display tombstones for quotes that reference a deleted message.
newtype QuotedMessageMetadata_MessageState = QuotedMessageMetadata_MessageState {fromQuotedMessageMetadata_MessageState :: Core.Text}
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
pattern QuotedMessageMetadata_MessageState_MESSAGESTATEUNSPECIFIED :: QuotedMessageMetadata_MessageState
pattern QuotedMessageMetadata_MessageState_MESSAGESTATEUNSPECIFIED = QuotedMessageMetadata_MessageState "MESSAGE_STATE_UNSPECIFIED"

-- | The original message is present in storage and not deleted; the message contents can be hydrated.
pattern QuotedMessageMetadata_MessageState_MESSAGESTATEACTIVE :: QuotedMessageMetadata_MessageState
pattern QuotedMessageMetadata_MessageState_MESSAGESTATEACTIVE = QuotedMessageMetadata_MessageState "MESSAGE_STATE_ACTIVE"

-- | The original message has been deleted; the message contents cannot be hydrated.
pattern QuotedMessageMetadata_MessageState_MESSAGESTATEDELETED :: QuotedMessageMetadata_MessageState
pattern QuotedMessageMetadata_MessageState_MESSAGESTATEDELETED = QuotedMessageMetadata_MessageState "MESSAGE_STATE_DELETED"

-- | The OTR original message was edited and therefore no longer retrievable from storage; the message contents cannot be hydrated. See go\/message-quoting-otr-edits for more context.
pattern QuotedMessageMetadata_MessageState_MESSAGESTATEOTREDITED :: QuotedMessageMetadata_MessageState
pattern QuotedMessageMetadata_MessageState_MESSAGESTATEOTREDITED = QuotedMessageMetadata_MessageState "MESSAGE_STATE_OTR_EDITED"

{-# COMPLETE
  QuotedMessageMetadata_MessageState_MESSAGESTATEUNSPECIFIED,
  QuotedMessageMetadata_MessageState_MESSAGESTATEACTIVE,
  QuotedMessageMetadata_MessageState_MESSAGESTATEDELETED,
  QuotedMessageMetadata_MessageState_MESSAGESTATEOTREDITED,
  QuotedMessageMetadata_MessageState
  #-}

-- | The type of event.
newtype RecordingEvent_Type = RecordingEvent_Type {fromRecordingEvent_Type :: Core.Text}
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

-- | This is never used.
pattern RecordingEvent_Type_RECORDINGEVENTUNSPECIFIED :: RecordingEvent_Type
pattern RecordingEvent_Type_RECORDINGEVENTUNSPECIFIED = RecordingEvent_Type "RECORDING_EVENT_UNSPECIFIED"

-- | Deprecated, use detailed user actions instead.
pattern RecordingEvent_Type_USERACTION :: RecordingEvent_Type
pattern RecordingEvent_Type_USERACTION = RecordingEvent_Type "USER_ACTION"

-- | Recording was started or is being started by a user.
pattern RecordingEvent_Type_STARTEDBYUSER :: RecordingEvent_Type
pattern RecordingEvent_Type_STARTEDBYUSER = RecordingEvent_Type "STARTED_BY_USER"

-- | Recording was stopped by a user.
pattern RecordingEvent_Type_STOPPEDBYUSER :: RecordingEvent_Type
pattern RecordingEvent_Type_STOPPEDBYUSER = RecordingEvent_Type "STOPPED_BY_USER"

-- | Recording was cancelled by a user.
pattern RecordingEvent_Type_CANCELLEDBYUSER :: RecordingEvent_Type
pattern RecordingEvent_Type_CANCELLEDBYUSER = RecordingEvent_Type "CANCELLED_BY_USER"

-- | Recording was cancelled by the server because of a failure during recording initialization.
pattern RecordingEvent_Type_CANCELLEDINITIALIZATIONFAILED :: RecordingEvent_Type
pattern RecordingEvent_Type_CANCELLEDINITIALIZATIONFAILED = RecordingEvent_Type "CANCELLED_INITIALIZATION_FAILED"

-- | Recording was cancelled by the server because the recording initiator left the conference during initialization. When the initiator leaves after the recording is started, no event is triggered.
pattern RecordingEvent_Type_CANCELLEDINITIATORLEFT :: RecordingEvent_Type
pattern RecordingEvent_Type_CANCELLEDINITIATORLEFT = RecordingEvent_Type "CANCELLED_INITIATOR_LEFT"

-- | Recording is about to be stopped by the server because the recording is about to reach the maximum duration.
pattern RecordingEvent_Type_ACTIVEABOUTTOSTOPTOOLONG :: RecordingEvent_Type
pattern RecordingEvent_Type_ACTIVEABOUTTOSTOPTOOLONG = RecordingEvent_Type "ACTIVE_ABOUT_TO_STOP_TOO_LONG"

-- | Recording was stopped because the recording reached the maximum duration.
pattern RecordingEvent_Type_STOPPEDTOOLONG :: RecordingEvent_Type
pattern RecordingEvent_Type_STOPPEDTOOLONG = RecordingEvent_Type "STOPPED_TOO_LONG"

-- | Recording was stopped because there were no devices left in the conference.
pattern RecordingEvent_Type_STOPPEDALLDEVICESLEFT :: RecordingEvent_Type
pattern RecordingEvent_Type_STOPPEDALLDEVICESLEFT = RecordingEvent_Type "STOPPED_ALL_DEVICES_LEFT"

-- | Recording was stopped because of an internal error.
pattern RecordingEvent_Type_STOPPEDINTERNALFAILURES :: RecordingEvent_Type
pattern RecordingEvent_Type_STOPPEDINTERNALFAILURES = RecordingEvent_Type "STOPPED_INTERNAL_FAILURES"

{-# COMPLETE
  RecordingEvent_Type_RECORDINGEVENTUNSPECIFIED,
  RecordingEvent_Type_USERACTION,
  RecordingEvent_Type_STARTEDBYUSER,
  RecordingEvent_Type_STOPPEDBYUSER,
  RecordingEvent_Type_CANCELLEDBYUSER,
  RecordingEvent_Type_CANCELLEDINITIALIZATIONFAILED,
  RecordingEvent_Type_CANCELLEDINITIATORLEFT,
  RecordingEvent_Type_ACTIVEABOUTTOSTOPTOOLONG,
  RecordingEvent_Type_STOPPEDTOOLONG,
  RecordingEvent_Type_STOPPEDALLDEVICESLEFT,
  RecordingEvent_Type_STOPPEDINTERNALFAILURES,
  RecordingEvent_Type
  #-}

-- | The application type of the current active recording. @RECORDING_APPLICATION_TYPE_UNSPECIFIED@ if @recording_status@ is inactive.
newtype RecordingInfo_RecordingApplicationType = RecordingInfo_RecordingApplicationType {fromRecordingInfo_RecordingApplicationType :: Core.Text}
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

-- | This is never used.
pattern RecordingInfo_RecordingApplicationType_RECORDINGAPPLICATIONTYPEUNSPECIFIED :: RecordingInfo_RecordingApplicationType
pattern RecordingInfo_RecordingApplicationType_RECORDINGAPPLICATIONTYPEUNSPECIFIED = RecordingInfo_RecordingApplicationType "RECORDING_APPLICATION_TYPE_UNSPECIFIED"

-- | A meeting recording saved to a video file in Google Drive.
pattern RecordingInfo_RecordingApplicationType_Recording :: RecordingInfo_RecordingApplicationType
pattern RecordingInfo_RecordingApplicationType_Recording = RecordingInfo_RecordingApplicationType "RECORDING"

-- | A /Google Live/ managed stream.
pattern RecordingInfo_RecordingApplicationType_GLIVESTREAM :: RecordingInfo_RecordingApplicationType
pattern RecordingInfo_RecordingApplicationType_GLIVESTREAM = RecordingInfo_RecordingApplicationType "GLIVE_STREAM"

-- | A meeting broadcast.
pattern RecordingInfo_RecordingApplicationType_Broadcast :: RecordingInfo_RecordingApplicationType
pattern RecordingInfo_RecordingApplicationType_Broadcast = RecordingInfo_RecordingApplicationType "BROADCAST"

{-# COMPLETE
  RecordingInfo_RecordingApplicationType_RECORDINGAPPLICATIONTYPEUNSPECIFIED,
  RecordingInfo_RecordingApplicationType_Recording,
  RecordingInfo_RecordingApplicationType_GLIVESTREAM,
  RecordingInfo_RecordingApplicationType_Broadcast,
  RecordingInfo_RecordingApplicationType
  #-}

-- | The current status of the recording. This can be used by clients to show a recording dot or similar to indicated to the user that a recording is taking place.
newtype RecordingInfo_RecordingStatus = RecordingInfo_RecordingStatus {fromRecordingInfo_RecordingStatus :: Core.Text}
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

-- | This value is never used.
pattern RecordingInfo_RecordingStatus_RECORDINGUNSPECIFIED :: RecordingInfo_RecordingStatus
pattern RecordingInfo_RecordingStatus_RECORDINGUNSPECIFIED = RecordingInfo_RecordingStatus "RECORDING_UNSPECIFIED"

-- | The conference is not being recorded. This can mean either that no recording has been started, or that a previous recording has stopped.
pattern RecordingInfo_RecordingStatus_RECORDINGINACTIVE :: RecordingInfo_RecordingStatus
pattern RecordingInfo_RecordingStatus_RECORDINGINACTIVE = RecordingInfo_RecordingStatus "RECORDING_INACTIVE"

-- | Recording is about to begin. The status will be updated to RECORDING_STARTED when the recording actually starts, which happens when all the backend plumbing is set up.
pattern RecordingInfo_RecordingStatus_RECORDINGSTARTING :: RecordingInfo_RecordingStatus
pattern RecordingInfo_RecordingStatus_RECORDINGSTARTING = RecordingInfo_RecordingStatus "RECORDING_STARTING"

-- | The recording is started. Any media sent to the conference may be included in the resulting recording.
pattern RecordingInfo_RecordingStatus_RECORDINGSTARTED :: RecordingInfo_RecordingStatus
pattern RecordingInfo_RecordingStatus_RECORDINGSTARTED = RecordingInfo_RecordingStatus "RECORDING_STARTED"

{-# COMPLETE
  RecordingInfo_RecordingStatus_RECORDINGUNSPECIFIED,
  RecordingInfo_RecordingStatus_RECORDINGINACTIVE,
  RecordingInfo_RecordingStatus_RECORDINGSTARTING,
  RecordingInfo_RecordingStatus_RECORDINGSTARTED,
  RecordingInfo_RecordingStatus
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

newtype RequiredMessageFeaturesMetadata_RequiredFeaturesItem = RequiredMessageFeaturesMetadata_RequiredFeaturesItem {fromRequiredMessageFeaturesMetadata_RequiredFeaturesItem :: Core.Text}
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
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATUREUNSPECIFIED :: RequiredMessageFeaturesMetadata_RequiredFeaturesItem
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATUREUNSPECIFIED = RequiredMessageFeaturesMetadata_RequiredFeaturesItem "REQUIRED_FEATURE_UNSPECIFIED"

-- |
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATUREMESSAGEQUOTING :: RequiredMessageFeaturesMetadata_RequiredFeaturesItem
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATUREMESSAGEQUOTING = RequiredMessageFeaturesMetadata_RequiredFeaturesItem "REQUIRED_FEATURE_MESSAGE_QUOTING"

-- |
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURETOMBSTONESINDMSANDUFRS :: RequiredMessageFeaturesMetadata_RequiredFeaturesItem
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURETOMBSTONESINDMSANDUFRS = RequiredMessageFeaturesMetadata_RequiredFeaturesItem "REQUIRED_FEATURE_TOMBSTONES_IN_DMS_AND_UFRS"

-- |
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURECUSTOMHYPERLINK :: RequiredMessageFeaturesMetadata_RequiredFeaturesItem
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURECUSTOMHYPERLINK = RequiredMessageFeaturesMetadata_RequiredFeaturesItem "REQUIRED_FEATURE_CUSTOM_HYPERLINK"

-- |
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURESMARTCHIP :: RequiredMessageFeaturesMetadata_RequiredFeaturesItem
pattern RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURESMARTCHIP = RequiredMessageFeaturesMetadata_RequiredFeaturesItem "REQUIRED_FEATURE_SMART_CHIP"

{-# COMPLETE
  RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATUREUNSPECIFIED,
  RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATUREMESSAGEQUOTING,
  RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURETOMBSTONESINDMSANDUFRS,
  RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURECUSTOMHYPERLINK,
  RequiredMessageFeaturesMetadata_RequiredFeaturesItem_REQUIREDFEATURESMARTCHIP,
  RequiredMessageFeaturesMetadata_RequiredFeaturesItem
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

-- | The type of the user who initiated this room update.
newtype RoomUpdatedMetadata_InitiatorType = RoomUpdatedMetadata_InitiatorType {fromRoomUpdatedMetadata_InitiatorType :: Core.Text}
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
pattern RoomUpdatedMetadata_InitiatorType_INITIATORTYPEUNSPECIFIED :: RoomUpdatedMetadata_InitiatorType
pattern RoomUpdatedMetadata_InitiatorType_INITIATORTYPEUNSPECIFIED = RoomUpdatedMetadata_InitiatorType "INITIATOR_TYPE_UNSPECIFIED"

-- |
pattern RoomUpdatedMetadata_InitiatorType_INITIATORTYPEENDUSER :: RoomUpdatedMetadata_InitiatorType
pattern RoomUpdatedMetadata_InitiatorType_INITIATORTYPEENDUSER = RoomUpdatedMetadata_InitiatorType "INITIATOR_TYPE_END_USER"

-- |
pattern RoomUpdatedMetadata_InitiatorType_INITIATORTYPEADMIN :: RoomUpdatedMetadata_InitiatorType
pattern RoomUpdatedMetadata_InitiatorType_INITIATORTYPEADMIN = RoomUpdatedMetadata_InitiatorType "INITIATOR_TYPE_ADMIN"

{-# COMPLETE
  RoomUpdatedMetadata_InitiatorType_INITIATORTYPEUNSPECIFIED,
  RoomUpdatedMetadata_InitiatorType_INITIATORTYPEENDUSER,
  RoomUpdatedMetadata_InitiatorType_INITIATORTYPEADMIN,
  RoomUpdatedMetadata_InitiatorType
  #-}

-- | Roster deletion state - considered active unless set to deleted
newtype Roster_RosterState = Roster_RosterState {fromRoster_RosterState :: Core.Text}
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
pattern Roster_RosterState_ROSTERSTATEUNKNOWN :: Roster_RosterState
pattern Roster_RosterState_ROSTERSTATEUNKNOWN = Roster_RosterState "ROSTER_STATE_UNKNOWN"

-- | Roster is active
pattern Roster_RosterState_ROSTERACTIVE :: Roster_RosterState
pattern Roster_RosterState_ROSTERACTIVE = Roster_RosterState "ROSTER_ACTIVE"

-- | Roster deleted
pattern Roster_RosterState_ROSTERDELETED :: Roster_RosterState
pattern Roster_RosterState_ROSTERDELETED = Roster_RosterState "ROSTER_DELETED"

{-# COMPLETE
  Roster_RosterState_ROSTERSTATEUNKNOWN,
  Roster_RosterState_ROSTERACTIVE,
  Roster_RosterState_ROSTERDELETED,
  Roster_RosterState
  #-}

-- | Type of Segment.
newtype Segment_Type = Segment_Type {fromSegment_Type :: Core.Text}
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

-- | A TEXT segment represents plain-text subject to particular formatting constraints (as represented in the \"formatting\" field of the Segment).
pattern Segment_Type_Text :: Segment_Type
pattern Segment_Type_Text = Segment_Type "TEXT"

-- | A LINE_BREAK segment is simply a placeholder to represent a line break between other segments. The \"text\" variable may be set to a newline as a fallback, but clients that understand this segment type should simply insert a line break without needing to reference any fields.
pattern Segment_Type_LINEBREAK :: Segment_Type
pattern Segment_Type_LINEBREAK = Segment_Type "LINE_BREAK"

-- | A LINK segment represents a link to a web entity. The \"text\" field should be used for anchor text. Additional link data should be put in the link_data protobuf.
pattern Segment_Type_Link :: Segment_Type
pattern Segment_Type_Link = Segment_Type "LINK"

-- | A USER/MENTION segment represents a reference to a (possibly non-Gaia, possibly off-network) user. The \"text\" field may be populated as a fallback, but information identifying the user should be contained in the user/mention/data protobuf. (The set of fields that are populated in user/mention_data may differ depending on the context in which the segment is viewed, but the interpretation of the fields is uniform. See comments over UserMentionData).
pattern Segment_Type_USERMENTION :: Segment_Type
pattern Segment_Type_USERMENTION = Segment_Type "USER_MENTION"

-- | An ALL/USER/MENTION segment represents a reference to all users in the context, that is, the conversation, discussion, or other context containing the segment. For example, an ALL/USER/MENTION segment (\"\@all\") can be useful to ping all participants in a conversation if the notification setting of the conversation is not set to ping on normal messages. An ALL/USER/MENTION should be treated as a USER_MENTION for all users who receives the segment.
pattern Segment_Type_ALLUSERMENTION :: Segment_Type
pattern Segment_Type_ALLUSERMENTION = Segment_Type "ALL_USER_MENTION"

-- | A HASHTAG segment represents a structured reference to a topic. The \"text\" field should represent display text (e.g. \"#Google\"), and additional metadata should be put in the Segment\'s hashtag_data field.
pattern Segment_Type_Hashtag :: Segment_Type
pattern Segment_Type_Hashtag = Segment_Type "HASHTAG"

{-# COMPLETE
  Segment_Type_Text,
  Segment_Type_LINEBREAK,
  Segment_Type_Link,
  Segment_Type_USERMENTION,
  Segment_Type_ALLUSERMENTION,
  Segment_Type_Hashtag,
  Segment_Type
  #-}

newtype SelectionControl_Type = SelectionControl_Type {fromSelectionControl_Type :: Core.Text}
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
pattern SelectionControl_Type_CHECKBOX :: SelectionControl_Type
pattern SelectionControl_Type_CHECKBOX = SelectionControl_Type "CHECK_BOX"

-- |
pattern SelectionControl_Type_RADIOBUTTON :: SelectionControl_Type
pattern SelectionControl_Type_RADIOBUTTON = SelectionControl_Type "RADIO_BUTTON"

-- |
pattern SelectionControl_Type_Switch :: SelectionControl_Type
pattern SelectionControl_Type_Switch = SelectionControl_Type "SWITCH"

-- |
pattern SelectionControl_Type_Dropdown :: SelectionControl_Type
pattern SelectionControl_Type_Dropdown = SelectionControl_Type "DROPDOWN"

{-# COMPLETE
  SelectionControl_Type_CHECKBOX,
  SelectionControl_Type_RADIOBUTTON,
  SelectionControl_Type_Switch,
  SelectionControl_Type_Dropdown,
  SelectionControl_Type
  #-}

-- | The type of event.
newtype SessionEvent_Type = SessionEvent_Type {fromSessionEvent_Type :: Core.Text}
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

-- | This is never used.
pattern SessionEvent_Type_EVENTUNSPECIFIED :: SessionEvent_Type
pattern SessionEvent_Type_EVENTUNSPECIFIED = SessionEvent_Type "EVENT_UNSPECIFIED"

-- | Streaming session was started or is being started by a user.
pattern SessionEvent_Type_STARTEDBYUSER :: SessionEvent_Type
pattern SessionEvent_Type_STARTEDBYUSER = SessionEvent_Type "STARTED_BY_USER"

-- | Streaming session was stopped by a user.
pattern SessionEvent_Type_STOPPEDBYUSER :: SessionEvent_Type
pattern SessionEvent_Type_STOPPEDBYUSER = SessionEvent_Type "STOPPED_BY_USER"

-- | Streaming session was cancelled by a user.
pattern SessionEvent_Type_CANCELLEDBYUSER :: SessionEvent_Type
pattern SessionEvent_Type_CANCELLEDBYUSER = SessionEvent_Type "CANCELLED_BY_USER"

-- | Streaming session was cancelled by the server because of a failure during session initialization.
pattern SessionEvent_Type_CANCELLEDINITIALIZATIONFAILED :: SessionEvent_Type
pattern SessionEvent_Type_CANCELLEDINITIALIZATIONFAILED = SessionEvent_Type "CANCELLED_INITIALIZATION_FAILED"

-- | Streaming session was cancelled by the server because the session initiator left the conference during initialization. When the initiator leaves after the session is started, no event is triggered.
pattern SessionEvent_Type_CANCELLEDINITIATORLEFT :: SessionEvent_Type
pattern SessionEvent_Type_CANCELLEDINITIATORLEFT = SessionEvent_Type "CANCELLED_INITIATOR_LEFT"

-- | Streaming session is about to be stopped by the server because the session is about to reach the maximum duration.
pattern SessionEvent_Type_ACTIVEABOUTTOSTOPTOOLONG :: SessionEvent_Type
pattern SessionEvent_Type_ACTIVEABOUTTOSTOPTOOLONG = SessionEvent_Type "ACTIVE_ABOUT_TO_STOP_TOO_LONG"

-- | Streaming session was stopped because the session reached the maximum duration.
pattern SessionEvent_Type_STOPPEDTOOLONG :: SessionEvent_Type
pattern SessionEvent_Type_STOPPEDTOOLONG = SessionEvent_Type "STOPPED_TOO_LONG"

-- | Streaming session was stopped because there were no devices left in the conference.
pattern SessionEvent_Type_STOPPEDALLDEVICESLEFT :: SessionEvent_Type
pattern SessionEvent_Type_STOPPEDALLDEVICESLEFT = SessionEvent_Type "STOPPED_ALL_DEVICES_LEFT"

-- | Streaming session was stopped because of an internal error.
pattern SessionEvent_Type_STOPPEDINTERNALFAILURES :: SessionEvent_Type
pattern SessionEvent_Type_STOPPEDINTERNALFAILURES = SessionEvent_Type "STOPPED_INTERNAL_FAILURES"

{-# COMPLETE
  SessionEvent_Type_EVENTUNSPECIFIED,
  SessionEvent_Type_STARTEDBYUSER,
  SessionEvent_Type_STOPPEDBYUSER,
  SessionEvent_Type_CANCELLEDBYUSER,
  SessionEvent_Type_CANCELLEDINITIALIZATIONFAILED,
  SessionEvent_Type_CANCELLEDINITIATORLEFT,
  SessionEvent_Type_ACTIVEABOUTTOSTOPTOOLONG,
  SessionEvent_Type_STOPPEDTOOLONG,
  SessionEvent_Type_STOPPEDALLDEVICESLEFT,
  SessionEvent_Type_STOPPEDINTERNALFAILURES,
  SessionEvent_Type
  #-}

-- | State of the session.
newtype SessionStateInfo_SessionState = SessionStateInfo_SessionState {fromSessionStateInfo_SessionState :: Core.Text}
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

-- | Unspecified session state.
pattern SessionStateInfo_SessionState_SESSIONSTATEUNSPECIFIED :: SessionStateInfo_SessionState
pattern SessionStateInfo_SessionState_SESSIONSTATEUNSPECIFIED = SessionStateInfo_SessionState "SESSION_STATE_UNSPECIFIED"

-- | The session is starting.
pattern SessionStateInfo_SessionState_Starting :: SessionStateInfo_SessionState
pattern SessionStateInfo_SessionState_Starting = SessionStateInfo_SessionState "STARTING"

-- | The session is active\/ongoing.
pattern SessionStateInfo_SessionState_Active :: SessionStateInfo_SessionState
pattern SessionStateInfo_SessionState_Active = SessionStateInfo_SessionState "ACTIVE"

-- | The session has stopped.
pattern SessionStateInfo_SessionState_Stopped :: SessionStateInfo_SessionState
pattern SessionStateInfo_SessionState_Stopped = SessionStateInfo_SessionState "STOPPED"

{-# COMPLETE
  SessionStateInfo_SessionState_SESSIONSTATEUNSPECIFIED,
  SessionStateInfo_SessionState_Starting,
  SessionStateInfo_SessionState_Active,
  SessionStateInfo_SessionState_Stopped,
  SessionStateInfo_SessionState
  #-}

-- | Output only. The reason the session was transitioned to STOPPED state.
newtype SessionStateInfo_SessionStopReason = SessionStateInfo_SessionStopReason {fromSessionStateInfo_SessionStopReason :: Core.Text}
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

-- | Session stop reason unspecified.
pattern SessionStateInfo_SessionStopReason_SESSIONSTOPREASONUNSPECIFIED :: SessionStateInfo_SessionStopReason
pattern SessionStateInfo_SessionStopReason_SESSIONSTOPREASONUNSPECIFIED = SessionStateInfo_SessionStopReason "SESSION_STOP_REASON_UNSPECIFIED"

-- | Stopped by user action.
pattern SessionStateInfo_SessionStopReason_USERACTION :: SessionStateInfo_SessionStopReason
pattern SessionStateInfo_SessionStopReason_USERACTION = SessionStateInfo_SessionStopReason "USER_ACTION"

-- | Stopped by the server because of an initialization failure.
pattern SessionStateInfo_SessionStopReason_STOPPEDINITIALIZATIONFAILED :: SessionStateInfo_SessionStopReason
pattern SessionStateInfo_SessionStopReason_STOPPEDINITIALIZATIONFAILED = SessionStateInfo_SessionStopReason "STOPPED_INITIALIZATION_FAILED"

-- | Stopped because the session reached the maximum duration.
pattern SessionStateInfo_SessionStopReason_STOPPEDTOOLONG :: SessionStateInfo_SessionStopReason
pattern SessionStateInfo_SessionStopReason_STOPPEDTOOLONG = SessionStateInfo_SessionStopReason "STOPPED_TOO_LONG"

-- | Stopped because there were no devices left in the conference.
pattern SessionStateInfo_SessionStopReason_STOPPEDALLDEVICESLEFT :: SessionStateInfo_SessionStopReason
pattern SessionStateInfo_SessionStopReason_STOPPEDALLDEVICESLEFT = SessionStateInfo_SessionStopReason "STOPPED_ALL_DEVICES_LEFT"

-- | Stopped because of an internal error.
pattern SessionStateInfo_SessionStopReason_STOPPEDINTERNALFAILURES :: SessionStateInfo_SessionStopReason
pattern SessionStateInfo_SessionStopReason_STOPPEDINTERNALFAILURES = SessionStateInfo_SessionStopReason "STOPPED_INTERNAL_FAILURES"

-- | Stopped because the broadcast event ended on YouTube.
pattern SessionStateInfo_SessionStopReason_STOPPEDYOUTUBELIVEEVENTENDED :: SessionStateInfo_SessionStopReason
pattern SessionStateInfo_SessionStopReason_STOPPEDYOUTUBELIVEEVENTENDED = SessionStateInfo_SessionStopReason "STOPPED_YOU_TUBE_LIVE_EVENT_ENDED"

{-# COMPLETE
  SessionStateInfo_SessionStopReason_SESSIONSTOPREASONUNSPECIFIED,
  SessionStateInfo_SessionStopReason_USERACTION,
  SessionStateInfo_SessionStopReason_STOPPEDINITIALIZATIONFAILED,
  SessionStateInfo_SessionStopReason_STOPPEDTOOLONG,
  SessionStateInfo_SessionStopReason_STOPPEDALLDEVICESLEFT,
  SessionStateInfo_SessionStopReason_STOPPEDINTERNALFAILURES,
  SessionStateInfo_SessionStopReason_STOPPEDYOUTUBELIVEEVENTENDED,
  SessionStateInfo_SessionStopReason
  #-}

-- | The access type of the meeting space.
newtype Settings_AccessType = Settings_AccessType {fromSettings_AccessType :: Core.Text}
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

-- | Default value. This value is unused.
pattern Settings_AccessType_ACCESSTYPEUNSPECIFIED :: Settings_AccessType
pattern Settings_AccessType_ACCESSTYPEUNSPECIFIED = Settings_AccessType "ACCESS_TYPE_UNSPECIFIED"

-- | Anyone with meeting join information (url, phone access...) can join, no knocking required. (Subject to organization policies)
pattern Settings_AccessType_ACCESSTYPEOPEN :: Settings_AccessType
pattern Settings_AccessType_ACCESSTYPEOPEN = Settings_AccessType "ACCESS_TYPE_OPEN"

-- | Members of the Host\'s organization, invited external users, and dial-in users can join without knocking, everyone else must knock. (Subject to organization policies)
pattern Settings_AccessType_ACCESSTYPETRUSTED :: Settings_AccessType
pattern Settings_AccessType_ACCESSTYPETRUSTED = Settings_AccessType "ACCESS_TYPE_TRUSTED"

-- | Only participants invited by a host can automatically join, everyone else must knock and be admitted. (Subject to organization policies) Participants cannot dial out from the meeting. And only hosts can accept knocks.
pattern Settings_AccessType_ACCESSTYPERESTRICTED :: Settings_AccessType
pattern Settings_AccessType_ACCESSTYPERESTRICTED = Settings_AccessType "ACCESS_TYPE_RESTRICTED"

-- | Only participants invited by a host can join. Knocking is not allowed, dial in and dial out are also disabled.
pattern Settings_AccessType_ACCESSTYPECLOSED :: Settings_AccessType
pattern Settings_AccessType_ACCESSTYPECLOSED = Settings_AccessType "ACCESS_TYPE_CLOSED"

{-# COMPLETE
  Settings_AccessType_ACCESSTYPEUNSPECIFIED,
  Settings_AccessType_ACCESSTYPEOPEN,
  Settings_AccessType_ACCESSTYPETRUSTED,
  Settings_AccessType_ACCESSTYPERESTRICTED,
  Settings_AccessType_ACCESSTYPECLOSED,
  Settings_AccessType
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

-- | This is optional because required enums cannot be extended.
newtype SimpleSecretLabelProto_Type = SimpleSecretLabelProto_Type {fromSimpleSecretLabelProto_Type :: Core.Text}
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

-- | Used as a default value.
pattern SimpleSecretLabelProto_Type_Invalid :: SimpleSecretLabelProto_Type
pattern SimpleSecretLabelProto_Type_Invalid = SimpleSecretLabelProto_Type "INVALID"

-- | The singleton auth key for a common-sharing ACL. No other fields of SimpleSecretLabelProto need to be filled in, since there is only one of these per ACL. The corresponding secret is the auth key encoded in 64-bit big-endian.
pattern SimpleSecretLabelProto_Type_AUTHKEY :: SimpleSecretLabelProto_Type
pattern SimpleSecretLabelProto_Type_AUTHKEY = SimpleSecretLabelProto_Type "AUTH_KEY"

-- | A common-sharing invite token. |invite_id| (below) must be set to identify the invite. The corresponding secret is the SecretMaterial, as defined by InviteToken.SecretMaterial in acl.proto, encoded in 64-bit big-endian. If there is no SecretMaterial, the secret should be omitted; in this case the invite ID itself is the secret, which is less secure.
pattern SimpleSecretLabelProto_Type_Invite :: SimpleSecretLabelProto_Type
pattern SimpleSecretLabelProto_Type_Invite = SimpleSecretLabelProto_Type "INVITE"

-- | A generic secret value. Do not use this if any more specific type is appropriate.
pattern SimpleSecretLabelProto_Type_GENERICSECRET :: SimpleSecretLabelProto_Type
pattern SimpleSecretLabelProto_Type_GENERICSECRET = SimpleSecretLabelProto_Type "GENERIC_SECRET"

-- | __/DEPRECATED (3-Oct-2011)/__ Use the new CapTokenProto and CapTokenHolderProto instead. A capability token. The corresponding secret is an arbitrary-length random byte string (recommended: 128 bits). |capability_id| may be filled in (see below). See CapTokenMetadata in acl.proto.
pattern SimpleSecretLabelProto_Type_CAPTOKEN :: SimpleSecretLabelProto_Type
pattern SimpleSecretLabelProto_Type_CAPTOKEN = SimpleSecretLabelProto_Type "CAP_TOKEN"

-- | Identifies a principal that can perform a successful REKE handshake. The holder is not authenticated by presenting a SimpleSecretProto, but rather by knowing either the REKE resumption ticket secret or the private key corresponding to a public key specified outside the PrincipalProto. For more information, see: http:\/\/goto.google.com\/loas2cert
pattern SimpleSecretLabelProto_Type_Reke :: SimpleSecretLabelProto_Type
pattern SimpleSecretLabelProto_Type_Reke = SimpleSecretLabelProto_Type "REKE"

{-# COMPLETE
  SimpleSecretLabelProto_Type_Invalid,
  SimpleSecretLabelProto_Type_AUTHKEY,
  SimpleSecretLabelProto_Type_Invite,
  SimpleSecretLabelProto_Type_GENERICSECRET,
  SimpleSecretLabelProto_Type_CAPTOKEN,
  SimpleSecretLabelProto_Type_Reke,
  SimpleSecretLabelProto_Type
  #-}

newtype SlashCommandMetadata_Type = SlashCommandMetadata_Type {fromSlashCommandMetadata_Type :: Core.Text}
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

-- | Default value for the enum. DO NOT USE.
pattern SlashCommandMetadata_Type_TYPEUNSPECIFIED :: SlashCommandMetadata_Type
pattern SlashCommandMetadata_Type_TYPEUNSPECIFIED = SlashCommandMetadata_Type "TYPE_UNSPECIFIED"

-- | If a bot is added by a Slash Command, it means the bot was invoked by the user but hasn\'t yet been added to the group. Attaching an ADD annotation both add and invoke the bot.
pattern SlashCommandMetadata_Type_Add :: SlashCommandMetadata_Type
pattern SlashCommandMetadata_Type_Add = SlashCommandMetadata_Type "ADD"

-- |
pattern SlashCommandMetadata_Type_Invoke :: SlashCommandMetadata_Type
pattern SlashCommandMetadata_Type_Invoke = SlashCommandMetadata_Type "INVOKE"

-- | Server-generated slash command metadata, for clients to strikethrough.
pattern SlashCommandMetadata_Type_FAILEDTOADD :: SlashCommandMetadata_Type
pattern SlashCommandMetadata_Type_FAILEDTOADD = SlashCommandMetadata_Type "FAILED_TO_ADD"

{-# COMPLETE
  SlashCommandMetadata_Type_TYPEUNSPECIFIED,
  SlashCommandMetadata_Type_Add,
  SlashCommandMetadata_Type_Invoke,
  SlashCommandMetadata_Type_FAILEDTOADD,
  SlashCommandMetadata_Type
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

-- | The application type of the current streaming session.
newtype StreamingSessionInfo_ApplicationType = StreamingSessionInfo_ApplicationType {fromStreamingSessionInfo_ApplicationType :: Core.Text}
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

-- | This is never used.
pattern StreamingSessionInfo_ApplicationType_RECORDINGAPPLICATIONTYPEUNSPECIFIED :: StreamingSessionInfo_ApplicationType
pattern StreamingSessionInfo_ApplicationType_RECORDINGAPPLICATIONTYPEUNSPECIFIED = StreamingSessionInfo_ApplicationType "RECORDING_APPLICATION_TYPE_UNSPECIFIED"

-- | A meeting recording saved to a video file in Google Drive.
pattern StreamingSessionInfo_ApplicationType_Recording :: StreamingSessionInfo_ApplicationType
pattern StreamingSessionInfo_ApplicationType_Recording = StreamingSessionInfo_ApplicationType "RECORDING"

-- | A /Google Live/ managed stream.
pattern StreamingSessionInfo_ApplicationType_GLIVESTREAM :: StreamingSessionInfo_ApplicationType
pattern StreamingSessionInfo_ApplicationType_GLIVESTREAM = StreamingSessionInfo_ApplicationType "GLIVE_STREAM"

-- | A meeting broadcast.
pattern StreamingSessionInfo_ApplicationType_Broadcast :: StreamingSessionInfo_ApplicationType
pattern StreamingSessionInfo_ApplicationType_Broadcast = StreamingSessionInfo_ApplicationType "BROADCAST"

{-# COMPLETE
  StreamingSessionInfo_ApplicationType_RECORDINGAPPLICATIONTYPEUNSPECIFIED,
  StreamingSessionInfo_ApplicationType_Recording,
  StreamingSessionInfo_ApplicationType_GLIVESTREAM,
  StreamingSessionInfo_ApplicationType_Broadcast,
  StreamingSessionInfo_ApplicationType
  #-}

-- | The current status of this streaming session. This can be used by clients to show session status indicator and\/or notification.
newtype StreamingSessionInfo_Status = StreamingSessionInfo_Status {fromStreamingSessionInfo_Status :: Core.Text}
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

-- | This value is never used.
pattern StreamingSessionInfo_Status_STATUSUNSPECIFIED :: StreamingSessionInfo_Status
pattern StreamingSessionInfo_Status_STATUSUNSPECIFIED = StreamingSessionInfo_Status "STATUS_UNSPECIFIED"

-- | The streaming session is inactive. This means either it\'s not started yet or it\'s already stopped.
pattern StreamingSessionInfo_Status_Inactive :: StreamingSessionInfo_Status
pattern StreamingSessionInfo_Status_Inactive = StreamingSessionInfo_Status "INACTIVE"

-- | The streaming session is about to begin. The status will be updated to LIVE when the streaming session actually starts, which happens when all the backend plumbing is set up.
pattern StreamingSessionInfo_Status_Starting :: StreamingSessionInfo_Status
pattern StreamingSessionInfo_Status_Starting = StreamingSessionInfo_Status "STARTING"

-- | The streaming session is live. Any media sent to the conference may be included in the resulting recording\/broadcast.
pattern StreamingSessionInfo_Status_Live :: StreamingSessionInfo_Status
pattern StreamingSessionInfo_Status_Live = StreamingSessionInfo_Status "LIVE"

{-# COMPLETE
  StreamingSessionInfo_Status_STATUSUNSPECIFIED,
  StreamingSessionInfo_Status_Inactive,
  StreamingSessionInfo_Status_Starting,
  StreamingSessionInfo_Status_Live,
  StreamingSessionInfo_Status
  #-}

-- | The policy that controls who can view the broadcast. This setting applies for broadcast session.
newtype StreamingSessionInfo_ViewerAccessPolicy = StreamingSessionInfo_ViewerAccessPolicy {fromStreamingSessionInfo_ViewerAccessPolicy :: Core.Text}
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

-- | Used only when broadcast is not enabled, or an unknown enum value is used.
pattern StreamingSessionInfo_ViewerAccessPolicy_BROADCASTINGACCESSPOLICYUNSPECIFIED :: StreamingSessionInfo_ViewerAccessPolicy
pattern StreamingSessionInfo_ViewerAccessPolicy_BROADCASTINGACCESSPOLICYUNSPECIFIED = StreamingSessionInfo_ViewerAccessPolicy "BROADCASTING_ACCESS_POLICY_UNSPECIFIED"

-- | Only authenticated Google accounts belonging to the same organization as the meeting organizer can access the broadcast.
pattern StreamingSessionInfo_ViewerAccessPolicy_Organization :: StreamingSessionInfo_ViewerAccessPolicy
pattern StreamingSessionInfo_ViewerAccessPolicy_Organization = StreamingSessionInfo_ViewerAccessPolicy "ORGANIZATION"

-- | Anyone with the broadcast view URL can access the broadcast.
pattern StreamingSessionInfo_ViewerAccessPolicy_Public :: StreamingSessionInfo_ViewerAccessPolicy
pattern StreamingSessionInfo_ViewerAccessPolicy_Public = StreamingSessionInfo_ViewerAccessPolicy "PUBLIC"

{-# COMPLETE
  StreamingSessionInfo_ViewerAccessPolicy_BROADCASTINGACCESSPOLICYUNSPECIFIED,
  StreamingSessionInfo_ViewerAccessPolicy_Organization,
  StreamingSessionInfo_ViewerAccessPolicy_Public,
  StreamingSessionInfo_ViewerAccessPolicy
  #-}

newtype SwitchWidget_ControlType = SwitchWidget_ControlType {fromSwitchWidget_ControlType :: Core.Text}
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
pattern SwitchWidget_ControlType_Unspecified :: SwitchWidget_ControlType
pattern SwitchWidget_ControlType_Unspecified = SwitchWidget_ControlType "UNSPECIFIED"

-- |
pattern SwitchWidget_ControlType_Switch :: SwitchWidget_ControlType
pattern SwitchWidget_ControlType_Switch = SwitchWidget_ControlType "SWITCH"

-- |
pattern SwitchWidget_ControlType_Checkbox :: SwitchWidget_ControlType
pattern SwitchWidget_ControlType_Checkbox = SwitchWidget_ControlType "CHECKBOX"

{-# COMPLETE
  SwitchWidget_ControlType_Unspecified,
  SwitchWidget_ControlType_Switch,
  SwitchWidget_ControlType_Checkbox,
  SwitchWidget_ControlType
  #-}

newtype TextButton_Style = TextButton_Style {fromTextButton_Style :: Core.Text}
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
pattern TextButton_Style_Unspecified :: TextButton_Style
pattern TextButton_Style_Unspecified = TextButton_Style "UNSPECIFIED"

-- | Simple text button with ripple touch feedback.
pattern TextButton_Style_Text :: TextButton_Style
pattern TextButton_Style_Text = TextButton_Style "TEXT"

-- | Button with solid background.
pattern TextButton_Style_Filled :: TextButton_Style
pattern TextButton_Style_Filled = TextButton_Style "FILLED"

{-# COMPLETE
  TextButton_Style_Unspecified,
  TextButton_Style_Text,
  TextButton_Style_Filled,
  TextButton_Style
  #-}

newtype TextField_Type = TextField_Type {fromTextField_Type :: Core.Text}
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
pattern TextField_Type_SINGLELINE :: TextField_Type
pattern TextField_Type_SINGLELINE = TextField_Type "SINGLE_LINE"

-- |
pattern TextField_Type_MULTIPLELINE :: TextField_Type
pattern TextField_Type_MULTIPLELINE = TextField_Type "MULTIPLE_LINE"

{-# COMPLETE
  TextField_Type_SINGLELINE,
  TextField_Type_MULTIPLELINE,
  TextField_Type
  #-}

-- | Indicates the type of Tombstone.
newtype TombstoneMetadata_TombstoneType = TombstoneMetadata_TombstoneType {fromTombstoneMetadata_TombstoneType :: Core.Text}
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

-- | This should not be used.
pattern TombstoneMetadata_TombstoneType_TOMBSTONEUNSPECIFIED :: TombstoneMetadata_TombstoneType
pattern TombstoneMetadata_TombstoneType_TOMBSTONEUNSPECIFIED = TombstoneMetadata_TombstoneType "TOMBSTONE_UNSPECIFIED"

-- | User deleted their own message.
pattern TombstoneMetadata_TombstoneType_Creator :: TombstoneMetadata_TombstoneType
pattern TombstoneMetadata_TombstoneType_Creator = TombstoneMetadata_TombstoneType "CREATOR"

-- | The space owner deleted a message in their space.
pattern TombstoneMetadata_TombstoneType_ROOMOWNER :: TombstoneMetadata_TombstoneType
pattern TombstoneMetadata_TombstoneType_ROOMOWNER = TombstoneMetadata_TombstoneType "ROOM_OWNER"

-- | The customer admin deleted a message in a space or DM owned by the customer. (go\/chat-customer-owned-data)
pattern TombstoneMetadata_TombstoneType_Admin :: TombstoneMetadata_TombstoneType
pattern TombstoneMetadata_TombstoneType_Admin = TombstoneMetadata_TombstoneType "ADMIN"

-- | App scheduled deletion of their own message. See go\/bme-dd.
pattern TombstoneMetadata_TombstoneType_APPMESSAGEEXPIRY :: TombstoneMetadata_TombstoneType
pattern TombstoneMetadata_TombstoneType_APPMESSAGEEXPIRY = TombstoneMetadata_TombstoneType "APP_MESSAGE_EXPIRY"

-- | User deleted their own message via an app. See go\/chat-api-delete-message.
pattern TombstoneMetadata_TombstoneType_CREATORVIAAPP :: TombstoneMetadata_TombstoneType
pattern TombstoneMetadata_TombstoneType_CREATORVIAAPP = TombstoneMetadata_TombstoneType "CREATOR_VIA_APP"

-- | The space owner deleted a message in their space via an app. See go\/chat-api-delete-message.
pattern TombstoneMetadata_TombstoneType_ROOMOWNERVIAAPP :: TombstoneMetadata_TombstoneType
pattern TombstoneMetadata_TombstoneType_ROOMOWNERVIAAPP = TombstoneMetadata_TombstoneType "ROOM_OWNER_VIA_APP"

{-# COMPLETE
  TombstoneMetadata_TombstoneType_TOMBSTONEUNSPECIFIED,
  TombstoneMetadata_TombstoneType_Creator,
  TombstoneMetadata_TombstoneType_ROOMOWNER,
  TombstoneMetadata_TombstoneType_Admin,
  TombstoneMetadata_TombstoneType_APPMESSAGEEXPIRY,
  TombstoneMetadata_TombstoneType_CREATORVIAAPP,
  TombstoneMetadata_TombstoneType_ROOMOWNERVIAAPP,
  TombstoneMetadata_TombstoneType
  #-}

-- | Which server should interpret action_type.
newtype Trigger_Dispatcher = Trigger_Dispatcher {fromTrigger_Dispatcher :: Core.Text}
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

-- | Replace ACTION/INVOKE/X; the CS and Stratus are no longer limited to a single type of action. Each additional remote client should be defined here.
pattern Trigger_Dispatcher_DISPATCHERCOPROC :: Trigger_Dispatcher
pattern Trigger_Dispatcher_DISPATCHERCOPROC = Trigger_Dispatcher "DISPATCHER_COPROC"

-- |
pattern Trigger_Dispatcher_DISPATCHERJOBSETTEDPRIMARY :: Trigger_Dispatcher
pattern Trigger_Dispatcher_DISPATCHERJOBSETTEDPRIMARY = Trigger_Dispatcher "DISPATCHER_JOBSETTED_PRIMARY"

-- |
pattern Trigger_Dispatcher_DISPATCHERSTRATUS :: Trigger_Dispatcher
pattern Trigger_Dispatcher_DISPATCHERSTRATUS = Trigger_Dispatcher "DISPATCHER_STRATUS"

-- |
pattern Trigger_Dispatcher_DISPATCHERTASKSSERVER :: Trigger_Dispatcher
pattern Trigger_Dispatcher_DISPATCHERTASKSSERVER = Trigger_Dispatcher "DISPATCHER_TASKS_SERVER"

-- |
pattern Trigger_Dispatcher_DISPATCHERSTUBBYDISPATCHER :: Trigger_Dispatcher
pattern Trigger_Dispatcher_DISPATCHERSTUBBYDISPATCHER = Trigger_Dispatcher "DISPATCHER_STUBBY_DISPATCHER"

-- |
pattern Trigger_Dispatcher_DISPATCHERCS :: Trigger_Dispatcher
pattern Trigger_Dispatcher_DISPATCHERCS = Trigger_Dispatcher "DISPATCHER_CS"

{-# COMPLETE
  Trigger_Dispatcher_DISPATCHERCOPROC,
  Trigger_Dispatcher_DISPATCHERJOBSETTEDPRIMARY,
  Trigger_Dispatcher_DISPATCHERSTRATUS,
  Trigger_Dispatcher_DISPATCHERTASKSSERVER,
  Trigger_Dispatcher_DISPATCHERSTUBBYDISPATCHER,
  Trigger_Dispatcher_DISPATCHERCS,
  Trigger_Dispatcher
  #-}

newtype TriggerAction_Action = TriggerAction_Action {fromTriggerAction_Action :: Core.Text}
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
pattern TriggerAction_Action_ACTIONNONE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONNONE = TriggerAction_Action "ACTION_NONE"

-- | No-op
pattern TriggerAction_Action_ACTIONDELETE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONDELETE = TriggerAction_Action "ACTION_DELETE"

-- | No-op
pattern TriggerAction_Action_ACTIONCREATENEWTRIGGER :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONCREATENEWTRIGGER = TriggerAction_Action "ACTION_CREATE_NEW_TRIGGER"

-- | This action begins the message expunge process. It will trigger a purge attempt for all messages that have this trigger.
pattern TriggerAction_Action_ACTIONMESSAGEEXPUNGE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONMESSAGEEXPUNGE = TriggerAction_Action "ACTION_MESSAGE_EXPUNGE"

-- | When this trigger fires, the current retention policy will be loaded from the policy management system and stored into the preference cache (if necessary). This will also create new expunge triggers if necessary.
pattern TriggerAction_Action_ACTIONRETENTIONPOLICYUPDATE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONRETENTIONPOLICYUPDATE = TriggerAction_Action "ACTION_RETENTION_POLICY_UPDATE"

-- | When this trigger fires, the message should be used to update the user\'s importance model. See http:\/\/go\/io-tingle for more details.
pattern TriggerAction_Action_ACTIONUPDATEICEBOXMODEL :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONUPDATEICEBOXMODEL = TriggerAction_Action "ACTION_UPDATE_ICEBOX_MODEL"

-- | Sends the trigger to the master Caribou server via the Stubby TriggerHandlerService interface (defined in caribou\/coproc\/proto\/trigger_handler.proto). The trigger is handled at fire time in the account\'s primary replica, and only in non-primary replicas after a delay.
pattern TriggerAction_Action_ACTIONINVOKECS :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKECS = TriggerAction_Action "ACTION_INVOKE_CS"

-- | Similar to ACTION/INVOKE/CS, but instead of sending the trigger to the master Caribou server, sends it to a Stratus server that also implements the TriggerHandlerService. This Stratus server is specified via FLAGS/triggers/stratus/server/address. The trigger is handled at fire time in the account\'s primary replica, and only in non-primary replicas after a delay.
pattern TriggerAction_Action_ACTIONINVOKESTRATUS :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKESTRATUS = TriggerAction_Action "ACTION_INVOKE_STRATUS"

-- | This action begins the message\'s PDH expunge. It will trigger a expunge (from pdh) attempt for all messages that have this trigger.
pattern TriggerAction_Action_ACTIONPDHEXPUNGE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONPDHEXPUNGE = TriggerAction_Action "ACTION_PDH_EXPUNGE"

-- | When this trigger fires, based on the latest retention policy: 1. messages that need to be deleted will be deleted through the CS trigger handler 2. ^deleted messages that need to be expunged will be expunged
pattern TriggerAction_Action_ACTIONQUERYRETENTION :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONQUERYRETENTION = TriggerAction_Action "ACTION_QUERY_RETENTION"

-- | Similar to ACTION/INVOKE/CS, but instead of sending the trigger to the master Caribou server, sends it to a jobsetted server in the user\'s master jobset using the consistent-hash homing algorithm. The jobsetted/server/spec must be specified when using this TriggerAction.
pattern TriggerAction_Action_ACTIONINVOKEJOBSETTEDPRIMARY :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKEJOBSETTEDPRIMARY = TriggerAction_Action "ACTION_INVOKE_JOBSETTED_PRIMARY"

-- | Send the trigger to a Tasks server that implements the TriggerHandlerService. Dispatched via GSLB target specified by FLAGS/triggers/tasks/server/address.
pattern TriggerAction_Action_ACTIONINVOKETASKSSERVER :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKETASKSSERVER = TriggerAction_Action "ACTION_INVOKE_TASKS_SERVER"

-- | Send the trigger to a SmartMail Publisher server that implements the TriggerHandlerService. Dispatched via GSLB target specified by FLAGS/triggers/publisher/server/address.
pattern TriggerAction_Action_ACTIONINVOKEPUBLISHER :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKEPUBLISHER = TriggerAction_Action "ACTION_INVOKE_PUBLISHER"

-- | Send the trigger to an Observer server that implements the TriggerHandlerService. Dispatched via GSLB target specified by FLAGS/triggers/observer/server/address.
pattern TriggerAction_Action_ACTIONINVOKEOBSERVER :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKEOBSERVER = TriggerAction_Action "ACTION_INVOKE_OBSERVER"

-- | Push a set of history records to PDH.
pattern TriggerAction_Action_ACTIONPUSHHISTORYTOPDH :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONPUSHHISTORYTOPDH = TriggerAction_Action "ACTION_PUSH_HISTORY_TO_PDH"

-- | Send the trigger to the stubby dispatcher, which routes the RPC using the value of Trigger.dispatch/id as the RoutingInfo.extension/tag field. Dispatched via the GSLB target specified by FLAGS/triggers/stubby/dispatcher/address.
pattern TriggerAction_Action_ACTIONINVOKESTUBBYDISPATCHER :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKESTUBBYDISPATCHER = TriggerAction_Action "ACTION_INVOKE_STUBBY_DISPATCHER"

-- | Backfills a set of records from an account and pushes them to PDH.
pattern TriggerAction_Action_ACTIONPDHBACKFILL :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONPDHBACKFILL = TriggerAction_Action "ACTION_PDH_BACKFILL"

-- | Move messages from ^deleted to ^all. This trigger will only undelete messages that were deleted before the fire time of the trigger. Also, messages whose blobs are already deleted will not be undeleted. This is an account trigger.
pattern TriggerAction_Action_ACTIONMESSAGEUNDELETE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONMESSAGEUNDELETE = TriggerAction_Action "ACTION_MESSAGE_UNDELETE"

-- | This trigger will undelete messages that were ^deleted arbitrarily long in the past and a trash label will be applied to these undeleted messages. This is an account trigger that will be written when the Vault admin enables end user access for the Vault customer. This trigger shares its implementation with the ACTION/MESSAGE/UNDELETE trigger.
pattern TriggerAction_Action_ACTIONVAULTENDUSERACCESS :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONVAULTENDUSERACCESS = TriggerAction_Action "ACTION_VAULT_END_USER_ACCESS"

-- | Send the trigger to a groups server that implements the TriggerHandlerService. Dispatched via GSLB target specified by FLAGS/triggers/groups/server/address.
pattern TriggerAction_Action_ACTIONINVOKEGROUPS :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKEGROUPS = TriggerAction_Action "ACTION_INVOKE_GROUPS"

-- | This trigger will be executed once per newly created account. It will be created as part of the first transaction written to the account. The trigger can also be written as part of an SVF in case we want to re-initialize every account.
pattern TriggerAction_Action_ACTIONACCOUNTINITIALIZATION :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONACCOUNTINITIALIZATION = TriggerAction_Action "ACTION_ACCOUNT_INITIALIZATION"

-- | Send the trigger to an Observer server that implements the TriggerHandlerService for wipeout purpose. Dispatched via GSLB target specified by FLAGS/triggers/observer/server/address. It behaves differently from the invoke observer trigger (ACTION/INVOKE/OBSERVER) and should be batched separately. Tingle always fires this kind of action trigger for ^deleted messages.
pattern TriggerAction_Action_ACTIONINVOKEOBSERVERWIPEOUT :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKEOBSERVERWIPEOUT = TriggerAction_Action "ACTION_INVOKE_OBSERVER_WIPEOUT"

-- | Begins the message expunge similar to ACTION/MESSAGE/EXPUNGE but doesn\'t check if the message was deleted at least 30 days back. To be used ONLY for service removal. See go\/gmail-service-removal for more details.
pattern TriggerAction_Action_ACTIONSERVICEREMOVEDMESSAGEEXPUNGE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONSERVICEREMOVEDMESSAGEEXPUNGE = TriggerAction_Action "ACTION_SERVICE_REMOVED_MESSAGE_EXPUNGE"

-- | Sends RPC to everclear for the message expunge.
pattern TriggerAction_Action_ACTIONEVERCLEAREXPUNGE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONEVERCLEAREXPUNGE = TriggerAction_Action "ACTION_EVERCLEAR_EXPUNGE"

-- | Send the trigger to the S\/MIME certificate issuer server. Dispatched via the GSLB target specified by FLAGS/triggers/smime/certificate/issuer/server/address.
pattern TriggerAction_Action_ACTIONINVOKESMIMECERTIFICATEISSUER :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKESMIMECERTIFICATEISSUER = TriggerAction_Action "ACTION_INVOKE_SMIME_CERTIFICATE_ISSUER"

-- | The retention trigger that will be written to implement Groups retention.
pattern TriggerAction_Action_ACTIONGROUPSQUERYRETENTION :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONGROUPSQUERYRETENTION = TriggerAction_Action "ACTION_GROUPS_QUERY_RETENTION"

-- | Dispatches the permanent backup trigger to Satellite through Stubby dispatcher.
pattern TriggerAction_Action_ACTIONINVOKESATELLITEBACKUP :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKESATELLITEBACKUP = TriggerAction_Action "ACTION_INVOKE_SATELLITE_BACKUP"

-- | Process the debug log trigger by adding message body before dispatching to the Caribou Server through Stubby Dispatcher.
pattern TriggerAction_Action_ACTIONINVOKEDEBUGLOG :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKEDEBUGLOG = TriggerAction_Action "ACTION_INVOKE_DEBUG_LOG"

-- | This trigger deletes expired temporary preferences. See go\/tingle-temp-prefs for more details.
pattern TriggerAction_Action_ACTIONPREFERENCECLEANUP :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONPREFERENCECLEANUP = TriggerAction_Action "ACTION_PREFERENCE_CLEANUP"

-- | Similar to ACTION/QUERY/RETENTION but uses the MessageRetention policies to trash\/delete the messages: cs\/caribou\/base\/lib\/proto\/data_retention.proto .
pattern TriggerAction_Action_ACTIONCARIBOUDATARETENTION :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONCARIBOUDATARETENTION = TriggerAction_Action "ACTION_CARIBOU_DATA_RETENTION"

-- | This trigger deletes expired HistoryRecords. See go\/history-record-cleanup for more details.
pattern TriggerAction_Action_ACTIONHISTORYCLEANUP :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONHISTORYCLEANUP = TriggerAction_Action "ACTION_HISTORY_CLEANUP"

-- | This trigger relabels messages asynchronously. See go\/fusebox-bulk-api for more details.
pattern TriggerAction_Action_ACTIONITEMBULKRELABEL :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONITEMBULKRELABEL = TriggerAction_Action "ACTION_ITEM_BULK_RELABEL"

-- | Dispatches the image processing trigger to Satellite through Stubby dispatcher. See go\/gmail-photo-sharing for details.
pattern TriggerAction_Action_ACTIONINVOKESATELLITEIMAGEPROCESSING :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONINVOKESATELLITEIMAGEPROCESSING = TriggerAction_Action "ACTION_INVOKE_SATELLITE_IMAGE_PROCESSING"

-- | Trigger for executing comparison logic between the output of ApplyDataRetention idle task and CaribouDataRetention trigger.
pattern TriggerAction_Action_ACTIONCARIBOUDATARETENTIONDIFF :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONCARIBOUDATARETENTIONDIFF = TriggerAction_Action "ACTION_CARIBOU_DATA_RETENTION_DIFF"

-- | Trigger for backfill relevancy score. see go\/gmail-relevancy-scoring-write for detail.
pattern TriggerAction_Action_ACTIONRELEVANCYSCOREBACKFILL :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONRELEVANCYSCOREBACKFILL = TriggerAction_Action "ACTION_RELEVANCY_SCORE_BACKFILL"

-- | Trigger to backfill gaps left by pdh pushed via push notification. see go\/tingle-moonshine-push-v2
pattern TriggerAction_Action_ACTIONPDHPUSHNOTIFICATIONBACKFILL :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONPDHPUSHNOTIFICATIONBACKFILL = TriggerAction_Action "ACTION_PDH_PUSH_NOTIFICATION_BACKFILL"

-- | Begins the message expunge similar to ACTION/MESSAGE/EXPUNGE but fires within one day. To be used ONLY for auto save drafts. See go\/faster-auto-save-draft-deletion for more details.
pattern TriggerAction_Action_ACTIONAUTOSAVEDRAFTEXPUNGE :: TriggerAction_Action
pattern TriggerAction_Action_ACTIONAUTOSAVEDRAFTEXPUNGE = TriggerAction_Action "ACTION_AUTO_SAVE_DRAFT_EXPUNGE"

{-# COMPLETE
  TriggerAction_Action_ACTIONNONE,
  TriggerAction_Action_ACTIONDELETE,
  TriggerAction_Action_ACTIONCREATENEWTRIGGER,
  TriggerAction_Action_ACTIONMESSAGEEXPUNGE,
  TriggerAction_Action_ACTIONRETENTIONPOLICYUPDATE,
  TriggerAction_Action_ACTIONUPDATEICEBOXMODEL,
  TriggerAction_Action_ACTIONINVOKECS,
  TriggerAction_Action_ACTIONINVOKESTRATUS,
  TriggerAction_Action_ACTIONPDHEXPUNGE,
  TriggerAction_Action_ACTIONQUERYRETENTION,
  TriggerAction_Action_ACTIONINVOKEJOBSETTEDPRIMARY,
  TriggerAction_Action_ACTIONINVOKETASKSSERVER,
  TriggerAction_Action_ACTIONINVOKEPUBLISHER,
  TriggerAction_Action_ACTIONINVOKEOBSERVER,
  TriggerAction_Action_ACTIONPUSHHISTORYTOPDH,
  TriggerAction_Action_ACTIONINVOKESTUBBYDISPATCHER,
  TriggerAction_Action_ACTIONPDHBACKFILL,
  TriggerAction_Action_ACTIONMESSAGEUNDELETE,
  TriggerAction_Action_ACTIONVAULTENDUSERACCESS,
  TriggerAction_Action_ACTIONINVOKEGROUPS,
  TriggerAction_Action_ACTIONACCOUNTINITIALIZATION,
  TriggerAction_Action_ACTIONINVOKEOBSERVERWIPEOUT,
  TriggerAction_Action_ACTIONSERVICEREMOVEDMESSAGEEXPUNGE,
  TriggerAction_Action_ACTIONEVERCLEAREXPUNGE,
  TriggerAction_Action_ACTIONINVOKESMIMECERTIFICATEISSUER,
  TriggerAction_Action_ACTIONGROUPSQUERYRETENTION,
  TriggerAction_Action_ACTIONINVOKESATELLITEBACKUP,
  TriggerAction_Action_ACTIONINVOKEDEBUGLOG,
  TriggerAction_Action_ACTIONPREFERENCECLEANUP,
  TriggerAction_Action_ACTIONCARIBOUDATARETENTION,
  TriggerAction_Action_ACTIONHISTORYCLEANUP,
  TriggerAction_Action_ACTIONITEMBULKRELABEL,
  TriggerAction_Action_ACTIONINVOKESATELLITEIMAGEPROCESSING,
  TriggerAction_Action_ACTIONCARIBOUDATARETENTIONDIFF,
  TriggerAction_Action_ACTIONRELEVANCYSCOREBACKFILL,
  TriggerAction_Action_ACTIONPDHPUSHNOTIFICATIONBACKFILL,
  TriggerAction_Action_ACTIONAUTOSAVEDRAFTEXPUNGE,
  TriggerAction_Action
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

newtype UpdateBody_Type = UpdateBody_Type {fromUpdateBody_Type :: Core.Text}
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

-- | Default value when nothing is set for Type.
pattern UpdateBody_Type_UNSPECIFIEDACTIONTYPE :: UpdateBody_Type
pattern UpdateBody_Type_UNSPECIFIEDACTIONTYPE = UpdateBody_Type "UNSPECIFIED_ACTION_TYPE"

-- | Indicates this action is to perform an in-place insertion. By default the content is inserted at the current cursor position, if there is selected content, it replaces the selected content.
pattern UpdateBody_Type_INPLACEINSERT :: UpdateBody_Type
pattern UpdateBody_Type_INPLACEINSERT = UpdateBody_Type "IN_PLACE_INSERT"

-- | Indicates this action is to perform insert at the start of the message body.
pattern UpdateBody_Type_INSERTATSTART :: UpdateBody_Type
pattern UpdateBody_Type_INSERTATSTART = UpdateBody_Type "INSERT_AT_START"

-- | Indicates this action is to perform insert at the end of the message body.
pattern UpdateBody_Type_INSERTATEND :: UpdateBody_Type
pattern UpdateBody_Type_INSERTATEND = UpdateBody_Type "INSERT_AT_END"

-- | Indicates this action is to replace the message body.
pattern UpdateBody_Type_Replace :: UpdateBody_Type
pattern UpdateBody_Type_Replace = UpdateBody_Type "REPLACE"

{-# COMPLETE
  UpdateBody_Type_UNSPECIFIEDACTIONTYPE,
  UpdateBody_Type_INPLACEINSERT,
  UpdateBody_Type_INSERTATSTART,
  UpdateBody_Type_INSERTATEND,
  UpdateBody_Type_Replace,
  UpdateBody_Type
  #-}

-- | DriveAction for organizing the cloned version of this upload in Drive, if the file has been added to Drive. This field is not set if the file has not been added to Drive. Additionally, this field is only set when part of a FileResult in a ListFilesResponse.
newtype UploadMetadata_ClonedDriveAction = UploadMetadata_ClonedDriveAction {fromUploadMetadata_ClonedDriveAction :: Core.Text}
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

-- | No organize action should be shown.
pattern UploadMetadata_ClonedDriveAction_DRIVEACTIONUNSPECIFIED :: UploadMetadata_ClonedDriveAction
pattern UploadMetadata_ClonedDriveAction_DRIVEACTIONUNSPECIFIED = UploadMetadata_ClonedDriveAction "DRIVE_ACTION_UNSPECIFIED"

-- | Show \"Add to Drive\" button, for adding file that doesn\'t exist in Drive to Drive. Note that deleted Drive files that still exist (i.e. in your Trash) will still be ORGANIZE (this is consistent with Gmail Drive attachments).
pattern UploadMetadata_ClonedDriveAction_ADDTODRIVE :: UploadMetadata_ClonedDriveAction
pattern UploadMetadata_ClonedDriveAction_ADDTODRIVE = UploadMetadata_ClonedDriveAction "ADD_TO_DRIVE"

-- | Show \"Move\" button, for organizing a Drive file the user has permission to move.
pattern UploadMetadata_ClonedDriveAction_Organize :: UploadMetadata_ClonedDriveAction
pattern UploadMetadata_ClonedDriveAction_Organize = UploadMetadata_ClonedDriveAction "ORGANIZE"

-- | Show \"Add shortcut\" button, for adding a shortcut to a Drive file the user does not have permission to move.
pattern UploadMetadata_ClonedDriveAction_ADDSHORTCUT :: UploadMetadata_ClonedDriveAction
pattern UploadMetadata_ClonedDriveAction_ADDSHORTCUT = UploadMetadata_ClonedDriveAction "ADD_SHORTCUT"

-- | Show \"Add another shortcut\" button, for Drive files the user has already created a shortcut to.
pattern UploadMetadata_ClonedDriveAction_ADDANOTHERSHORTCUT :: UploadMetadata_ClonedDriveAction
pattern UploadMetadata_ClonedDriveAction_ADDANOTHERSHORTCUT = UploadMetadata_ClonedDriveAction "ADD_ANOTHER_SHORTCUT"

{-# COMPLETE
  UploadMetadata_ClonedDriveAction_DRIVEACTIONUNSPECIFIED,
  UploadMetadata_ClonedDriveAction_ADDTODRIVE,
  UploadMetadata_ClonedDriveAction_Organize,
  UploadMetadata_ClonedDriveAction_ADDSHORTCUT,
  UploadMetadata_ClonedDriveAction_ADDANOTHERSHORTCUT,
  UploadMetadata_ClonedDriveAction
  #-}

-- | Result for a virus scan. It\'s duplicated in the above field apps.dynamite.shared.BackendUploadMetadata
newtype UploadMetadata_VirusScanResult = UploadMetadata_VirusScanResult {fromUploadMetadata_VirusScanResult :: Core.Text}
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
pattern UploadMetadata_VirusScanResult_UNKNOWNVIRUSSCANRESULT :: UploadMetadata_VirusScanResult
pattern UploadMetadata_VirusScanResult_UNKNOWNVIRUSSCANRESULT = UploadMetadata_VirusScanResult "UNKNOWN_VIRUS_SCAN_RESULT"

-- |
pattern UploadMetadata_VirusScanResult_Clean :: UploadMetadata_VirusScanResult
pattern UploadMetadata_VirusScanResult_Clean = UploadMetadata_VirusScanResult "CLEAN"

-- |
pattern UploadMetadata_VirusScanResult_Infected :: UploadMetadata_VirusScanResult
pattern UploadMetadata_VirusScanResult_Infected = UploadMetadata_VirusScanResult "INFECTED"

-- |
pattern UploadMetadata_VirusScanResult_Error' :: UploadMetadata_VirusScanResult
pattern UploadMetadata_VirusScanResult_Error' = UploadMetadata_VirusScanResult "ERROR"

-- | The document violates Google\'s policy for executables and archives.
pattern UploadMetadata_VirusScanResult_POLICYVIOLATION :: UploadMetadata_VirusScanResult
pattern UploadMetadata_VirusScanResult_POLICYVIOLATION = UploadMetadata_VirusScanResult "POLICY_VIOLATION"

{-# COMPLETE
  UploadMetadata_VirusScanResult_UNKNOWNVIRUSSCANRESULT,
  UploadMetadata_VirusScanResult_Clean,
  UploadMetadata_VirusScanResult_Infected,
  UploadMetadata_VirusScanResult_Error',
  UploadMetadata_VirusScanResult_POLICYVIOLATION,
  UploadMetadata_VirusScanResult
  #-}

newtype UrlMetadata_UrlSource = UrlMetadata_UrlSource {fromUrlMetadata_UrlSource :: Core.Text}
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
pattern UrlMetadata_UrlSource_URLSOURCEUNKNOWN :: UrlMetadata_UrlSource
pattern UrlMetadata_UrlSource_URLSOURCEUNKNOWN = UrlMetadata_UrlSource "URL_SOURCE_UNKNOWN"

-- |
pattern UrlMetadata_UrlSource_SERVERSUPPLIEDPOLICYVIOLATION :: UrlMetadata_UrlSource
pattern UrlMetadata_UrlSource_SERVERSUPPLIEDPOLICYVIOLATION = UrlMetadata_UrlSource "SERVER_SUPPLIED_POLICY_VIOLATION"

-- | Set by the server, when it detects a URL in the message text
pattern UrlMetadata_UrlSource_AUTODETECTEDPLAINTEXT :: UrlMetadata_UrlSource
pattern UrlMetadata_UrlSource_AUTODETECTEDPLAINTEXT = UrlMetadata_UrlSource "AUTO_DETECTED_PLAIN_TEXT"

-- | Set by the client, when the user adds a link as a custom hyperlink. Validated by the server and persisted in storage.
pattern UrlMetadata_UrlSource_RICHTEXT :: UrlMetadata_UrlSource
pattern UrlMetadata_UrlSource_RICHTEXT = UrlMetadata_UrlSource "RICH_TEXT"

{-# COMPLETE
  UrlMetadata_UrlSource_URLSOURCEUNKNOWN,
  UrlMetadata_UrlSource_SERVERSUPPLIEDPOLICYVIOLATION,
  UrlMetadata_UrlSource_AUTODETECTEDPLAINTEXT,
  UrlMetadata_UrlSource_RICHTEXT,
  UrlMetadata_UrlSource
  #-}

-- | State of user\'s Gaia Account
newtype User_UserAccountState = User_UserAccountState {fromUser_UserAccountState :: Core.Text}
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
pattern User_UserAccountState_UNKNOWNUSERACCOUNTSTATE :: User_UserAccountState
pattern User_UserAccountState_UNKNOWNUSERACCOUNTSTATE = User_UserAccountState "UNKNOWN_USER_ACCOUNT_STATE"

-- | User has Dynamite enabled.
pattern User_UserAccountState_Enabled :: User_UserAccountState
pattern User_UserAccountState_Enabled = User_UserAccountState "ENABLED"

-- | User doesn\'t have Dynamite enabled. This includes service disabled by admin, or user\'s account is suspended
pattern User_UserAccountState_Disabled :: User_UserAccountState
pattern User_UserAccountState_Disabled = User_UserAccountState "DISABLED"

-- | User account is deleted
pattern User_UserAccountState_Deleted :: User_UserAccountState
pattern User_UserAccountState_Deleted = User_UserAccountState "DELETED"

-- | Failed to retrieve user\'s info. Will use user\'s email address as name and first_name.
pattern User_UserAccountState_TEMPORARYUNAVAILABLE :: User_UserAccountState
pattern User_UserAccountState_TEMPORARYUNAVAILABLE = User_UserAccountState "TEMPORARY_UNAVAILABLE"

{-# COMPLETE
  User_UserAccountState_UNKNOWNUSERACCOUNTSTATE,
  User_UserAccountState_Enabled,
  User_UserAccountState_Disabled,
  User_UserAccountState_Deleted,
  User_UserAccountState_TEMPORARYUNAVAILABLE,
  User_UserAccountState
  #-}

-- | Visibility of user\'s Profile
newtype User_UserProfileVisibility = User_UserProfileVisibility {fromUser_UserProfileVisibility :: Core.Text}
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
pattern User_UserProfileVisibility_UNKNOWNUSERPROFILEVISIBILITY :: User_UserProfileVisibility
pattern User_UserProfileVisibility_UNKNOWNUSERPROFILEVISIBILITY = User_UserProfileVisibility "UNKNOWN_USER_PROFILE_VISIBILITY"

-- | Caller has full visibility.
pattern User_UserProfileVisibility_FULLPROFILE :: User_UserProfileVisibility
pattern User_UserProfileVisibility_FULLPROFILE = User_UserProfileVisibility "FULL_PROFILE"

-- | Caller can only see target user\'s primary email from Gaia
pattern User_UserProfileVisibility_PRIMARYMAIL :: User_UserProfileVisibility
pattern User_UserProfileVisibility_PRIMARYMAIL = User_UserProfileVisibility "PRIMARY_MAIL"

-- | Caller can only see the email used to invite the target user
pattern User_UserProfileVisibility_INVITEEEMAIL :: User_UserProfileVisibility
pattern User_UserProfileVisibility_INVITEEEMAIL = User_UserProfileVisibility "INVITEE_EMAIL"

-- | Caller can only see the target user as a deleted user. Email is empty. Names are redacted as \"Deleted User\".
pattern User_UserProfileVisibility_DELETEDUSER :: User_UserProfileVisibility
pattern User_UserProfileVisibility_DELETEDUSER = User_UserProfileVisibility "DELETED_USER"

-- | Caller has no visibility to the target user at all. Email is empty. Names are redacted as \"Unknown User\".
pattern User_UserProfileVisibility_UNKNOWNUSER :: User_UserProfileVisibility
pattern User_UserProfileVisibility_UNKNOWNUSER = User_UserProfileVisibility "UNKNOWN_USER"

-- | Stubby failed. Clients should always retry ASAP
pattern User_UserProfileVisibility_Failure :: User_UserProfileVisibility
pattern User_UserProfileVisibility_Failure = User_UserProfileVisibility "FAILURE"

{-# COMPLETE
  User_UserProfileVisibility_UNKNOWNUSERPROFILEVISIBILITY,
  User_UserProfileVisibility_FULLPROFILE,
  User_UserProfileVisibility_PRIMARYMAIL,
  User_UserProfileVisibility_INVITEEEMAIL,
  User_UserProfileVisibility_DELETEDUSER,
  User_UserProfileVisibility_UNKNOWNUSER,
  User_UserProfileVisibility_Failure,
  User_UserProfileVisibility
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

-- | Describes how updater/count/to_show should be used.
newtype UserInfo_UpdaterCountDisplayType = UserInfo_UpdaterCountDisplayType {fromUserInfo_UpdaterCountDisplayType :: Core.Text}
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
pattern UserInfo_UpdaterCountDisplayType_UPDATERCOUNTDISPLAYTYPEUNSPECIFIED :: UserInfo_UpdaterCountDisplayType
pattern UserInfo_UpdaterCountDisplayType_UPDATERCOUNTDISPLAYTYPEUNSPECIFIED = UserInfo_UpdaterCountDisplayType "UPDATER_COUNT_DISPLAY_TYPE_UNSPECIFIED"

-- | No additional updaters where involved. Shows up in clients as \"$USERNAME replied\".
pattern UserInfo_UpdaterCountDisplayType_NODISPLAYCOUNT :: UserInfo_UpdaterCountDisplayType
pattern UserInfo_UpdaterCountDisplayType_NODISPLAYCOUNT = UserInfo_UpdaterCountDisplayType "NO_DISPLAY_COUNT"

-- | A precise updater count is known and the value set in updater/count/to/show should be used. If set, updater/count/to/show is set to the total number of updaters minus the one set in updater/to/show. Shows up in clients as \"$USERNAME and $NUM others replied\".
pattern UserInfo_UpdaterCountDisplayType_EXACTCOUNT :: UserInfo_UpdaterCountDisplayType
pattern UserInfo_UpdaterCountDisplayType_EXACTCOUNT = UserInfo_UpdaterCountDisplayType "EXACT_COUNT"

-- | A precise updater count could not be calculated, but there is at least one. Any value set in updater/count/to_show should NOT be used. Shows up in clients as \"$USERNAME and others replied\".
pattern UserInfo_UpdaterCountDisplayType_NONZEROCOUNT :: UserInfo_UpdaterCountDisplayType
pattern UserInfo_UpdaterCountDisplayType_NONZEROCOUNT = UserInfo_UpdaterCountDisplayType "NONZERO_COUNT"

{-# COMPLETE
  UserInfo_UpdaterCountDisplayType_UPDATERCOUNTDISPLAYTYPEUNSPECIFIED,
  UserInfo_UpdaterCountDisplayType_NODISPLAYCOUNT,
  UserInfo_UpdaterCountDisplayType_EXACTCOUNT,
  UserInfo_UpdaterCountDisplayType_NONZEROCOUNT,
  UserInfo_UpdaterCountDisplayType
  #-}

newtype UserMentionMetadata_Type = UserMentionMetadata_Type {fromUserMentionMetadata_Type :: Core.Text}
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

-- | Default value for the enum. DO NOT USE.
pattern UserMentionMetadata_Type_TYPEUNSPECIFIED :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_TYPEUNSPECIFIED = UserMentionMetadata_Type "TYPE_UNSPECIFIED"

-- |
pattern UserMentionMetadata_Type_Invite :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_Invite = UserMentionMetadata_Type "INVITE"

-- |
pattern UserMentionMetadata_Type_Uninvite :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_Uninvite = UserMentionMetadata_Type "UNINVITE"

-- |
pattern UserMentionMetadata_Type_Mention :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_Mention = UserMentionMetadata_Type "MENTION"

-- |
pattern UserMentionMetadata_Type_MENTIONALL :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_MENTIONALL = UserMentionMetadata_Type "MENTION_ALL"

-- | Server-generated user mention, for clients to strikethrough.
pattern UserMentionMetadata_Type_FAILEDTOADD :: UserMentionMetadata_Type
pattern UserMentionMetadata_Type_FAILEDTOADD = UserMentionMetadata_Type "FAILED_TO_ADD"

{-# COMPLETE
  UserMentionMetadata_Type_TYPEUNSPECIFIED,
  UserMentionMetadata_Type_Invite,
  UserMentionMetadata_Type_Uninvite,
  UserMentionMetadata_Type_Mention,
  UserMentionMetadata_Type_MENTIONALL,
  UserMentionMetadata_Type_FAILEDTOADD,
  UserMentionMetadata_Type
  #-}

-- | Specific reason for the user mention failing, for fine-grained processing by clients (i.e. specific error message for space limit exceeded case) IMPORTANT: Set this only for FAILED/TO/ADD case.
newtype UserMentionMetadata_UserMentionError = UserMentionMetadata_UserMentionError {fromUserMentionMetadata_UserMentionError :: Core.Text}
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
pattern UserMentionMetadata_UserMentionError_USERMENTIONERRORUNSPECIFIED :: UserMentionMetadata_UserMentionError
pattern UserMentionMetadata_UserMentionError_USERMENTIONERRORUNSPECIFIED = UserMentionMetadata_UserMentionError "USER_MENTION_ERROR_UNSPECIFIED"

-- | Failure caused by adding user to a room that is full
pattern UserMentionMetadata_UserMentionError_MEMBERSHIPLIMITEXCEEDED :: UserMentionMetadata_UserMentionError
pattern UserMentionMetadata_UserMentionError_MEMBERSHIPLIMITEXCEEDED = UserMentionMetadata_UserMentionError "MEMBERSHIP_LIMIT_EXCEEDED"

{-# COMPLETE
  UserMentionMetadata_UserMentionError_USERMENTIONERRORUNSPECIFIED,
  UserMentionMetadata_UserMentionError_MEMBERSHIPLIMITEXCEEDED,
  UserMentionMetadata_UserMentionError
  #-}

-- | When set to a non-default value, indicates the validation reason that is set when phone number is invalid (is_valid is false).
newtype VoicePhoneNumberI18nData_ValidationResult = VoicePhoneNumberI18nData_ValidationResult {fromVoicePhoneNumberI18nData_ValidationResult :: Core.Text}
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
pattern VoicePhoneNumberI18nData_ValidationResult_Unknown :: VoicePhoneNumberI18nData_ValidationResult
pattern VoicePhoneNumberI18nData_ValidationResult_Unknown = VoicePhoneNumberI18nData_ValidationResult "UNKNOWN"

-- |
pattern VoicePhoneNumberI18nData_ValidationResult_ISPOSSIBLE :: VoicePhoneNumberI18nData_ValidationResult
pattern VoicePhoneNumberI18nData_ValidationResult_ISPOSSIBLE = VoicePhoneNumberI18nData_ValidationResult "IS_POSSIBLE"

-- |
pattern VoicePhoneNumberI18nData_ValidationResult_INVALIDCOUNTRYCODE :: VoicePhoneNumberI18nData_ValidationResult
pattern VoicePhoneNumberI18nData_ValidationResult_INVALIDCOUNTRYCODE = VoicePhoneNumberI18nData_ValidationResult "INVALID_COUNTRY_CODE"

-- |
pattern VoicePhoneNumberI18nData_ValidationResult_TOOSHORT :: VoicePhoneNumberI18nData_ValidationResult
pattern VoicePhoneNumberI18nData_ValidationResult_TOOSHORT = VoicePhoneNumberI18nData_ValidationResult "TOO_SHORT"

-- |
pattern VoicePhoneNumberI18nData_ValidationResult_TOOLONG :: VoicePhoneNumberI18nData_ValidationResult
pattern VoicePhoneNumberI18nData_ValidationResult_TOOLONG = VoicePhoneNumberI18nData_ValidationResult "TOO_LONG"

-- |
pattern VoicePhoneNumberI18nData_ValidationResult_ISPOSSIBLELOCALONLY :: VoicePhoneNumberI18nData_ValidationResult
pattern VoicePhoneNumberI18nData_ValidationResult_ISPOSSIBLELOCALONLY = VoicePhoneNumberI18nData_ValidationResult "IS_POSSIBLE_LOCAL_ONLY"

-- |
pattern VoicePhoneNumberI18nData_ValidationResult_INVALIDLENGTH :: VoicePhoneNumberI18nData_ValidationResult
pattern VoicePhoneNumberI18nData_ValidationResult_INVALIDLENGTH = VoicePhoneNumberI18nData_ValidationResult "INVALID_LENGTH"

{-# COMPLETE
  VoicePhoneNumberI18nData_ValidationResult_Unknown,
  VoicePhoneNumberI18nData_ValidationResult_ISPOSSIBLE,
  VoicePhoneNumberI18nData_ValidationResult_INVALIDCOUNTRYCODE,
  VoicePhoneNumberI18nData_ValidationResult_TOOSHORT,
  VoicePhoneNumberI18nData_ValidationResult_TOOLONG,
  VoicePhoneNumberI18nData_ValidationResult_ISPOSSIBLELOCALONLY,
  VoicePhoneNumberI18nData_ValidationResult_INVALIDLENGTH,
  VoicePhoneNumberI18nData_ValidationResult
  #-}

-- | The horizontal alignment of this widget.
newtype WidgetMarkup_HorizontalAlignment = WidgetMarkup_HorizontalAlignment {fromWidgetMarkup_HorizontalAlignment :: Core.Text}
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
pattern WidgetMarkup_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: WidgetMarkup_HorizontalAlignment
pattern WidgetMarkup_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = WidgetMarkup_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- |
pattern WidgetMarkup_HorizontalAlignment_Start :: WidgetMarkup_HorizontalAlignment
pattern WidgetMarkup_HorizontalAlignment_Start = WidgetMarkup_HorizontalAlignment "START"

-- |
pattern WidgetMarkup_HorizontalAlignment_Center :: WidgetMarkup_HorizontalAlignment
pattern WidgetMarkup_HorizontalAlignment_Center = WidgetMarkup_HorizontalAlignment "CENTER"

-- |
pattern WidgetMarkup_HorizontalAlignment_End :: WidgetMarkup_HorizontalAlignment
pattern WidgetMarkup_HorizontalAlignment_End = WidgetMarkup_HorizontalAlignment "END"

{-# COMPLETE
  WidgetMarkup_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  WidgetMarkup_HorizontalAlignment_Start,
  WidgetMarkup_HorizontalAlignment_Center,
  WidgetMarkup_HorizontalAlignment_End,
  WidgetMarkup_HorizontalAlignment
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
