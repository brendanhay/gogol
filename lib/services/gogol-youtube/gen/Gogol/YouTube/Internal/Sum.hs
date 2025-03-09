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
-- Module      : Gogol.YouTube.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.YouTube.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ActivityContentDetailsPromotedItem_CtaType
    ActivityContentDetailsPromotedItem_CtaType
      ( ActivityContentDetailsPromotedItem_CtaType_CtaTypeUnspecified,
        ActivityContentDetailsPromotedItem_CtaType_VisitAdvertiserSite,
        ..
      ),

    -- * ActivityContentDetailsRecommendation_Reason
    ActivityContentDetailsRecommendation_Reason
      ( ActivityContentDetailsRecommendation_Reason_ReasonUnspecified,
        ActivityContentDetailsRecommendation_Reason_VideoFavorited,
        ActivityContentDetailsRecommendation_Reason_VideoLiked,
        ActivityContentDetailsRecommendation_Reason_VideoWatched,
        ..
      ),

    -- * ActivityContentDetailsSocial_Type
    ActivityContentDetailsSocial_Type
      ( ActivityContentDetailsSocial_Type_Unspecified,
        ActivityContentDetailsSocial_Type_GooglePlus,
        ActivityContentDetailsSocial_Type_Facebook,
        ActivityContentDetailsSocial_Type_Twitter,
        ..
      ),

    -- * ActivitySnippet_Type
    ActivitySnippet_Type
      ( ActivitySnippet_Type_TypeUnspecified,
        ActivitySnippet_Type_Upload,
        ActivitySnippet_Type_Like,
        ActivitySnippet_Type_Favorite,
        ActivitySnippet_Type_Comment,
        ActivitySnippet_Type_Subscription,
        ActivitySnippet_Type_PlaylistItem,
        ActivitySnippet_Type_Recommendation,
        ActivitySnippet_Type_Bulletin,
        ActivitySnippet_Type_Social,
        ActivitySnippet_Type_ChannelItem,
        ActivitySnippet_Type_PromotedItem,
        ..
      ),

    -- * CaptionSnippet_AudioTrackType
    CaptionSnippet_AudioTrackType
      ( CaptionSnippet_AudioTrackType_Unknown,
        CaptionSnippet_AudioTrackType_Primary,
        CaptionSnippet_AudioTrackType_Commentary,
        CaptionSnippet_AudioTrackType_Descriptive,
        ..
      ),

    -- * CaptionSnippet_FailureReason
    CaptionSnippet_FailureReason
      ( CaptionSnippet_FailureReason_UnknownFormat,
        CaptionSnippet_FailureReason_UnsupportedFormat,
        CaptionSnippet_FailureReason_ProcessingFailed,
        ..
      ),

    -- * CaptionSnippet_Status
    CaptionSnippet_Status
      ( CaptionSnippet_Status_Serving,
        CaptionSnippet_Status_Syncing,
        CaptionSnippet_Status_Failed,
        ..
      ),

    -- * CaptionSnippet_TrackKind
    CaptionSnippet_TrackKind
      ( CaptionSnippet_TrackKind_Standard,
        CaptionSnippet_TrackKind_Asr,
        CaptionSnippet_TrackKind_Forced,
        ..
      ),

    -- * CdnSettings_FrameRate
    CdnSettings_FrameRate
      ( CdnSettings_FrameRate_30fps,
        CdnSettings_FrameRate_60fps,
        CdnSettings_FrameRate_Variable,
        ..
      ),

    -- * CdnSettings_IngestionType
    CdnSettings_IngestionType
      ( CdnSettings_IngestionType_Rtmp,
        CdnSettings_IngestionType_Dash,
        CdnSettings_IngestionType_Webrtc,
        CdnSettings_IngestionType_Hls,
        ..
      ),

    -- * CdnSettings_Resolution
    CdnSettings_Resolution
      ( CdnSettings_Resolution_240p,
        CdnSettings_Resolution_360p,
        CdnSettings_Resolution_480p,
        CdnSettings_Resolution_720p,
        CdnSettings_Resolution_1080p,
        CdnSettings_Resolution_1440p,
        CdnSettings_Resolution_2160p,
        CdnSettings_Resolution_Variable,
        ..
      ),

    -- * ChannelConversionPing_Context
    ChannelConversionPing_Context
      ( ChannelConversionPing_Context_Subscribe,
        ChannelConversionPing_Context_Unsubscribe,
        ChannelConversionPing_Context_Cview,
        ..
      ),

    -- * ChannelSectionSnippet_Style
    ChannelSectionSnippet_Style
      ( ChannelSectionSnippet_Style_ChannelsectionStyleUnspecified,
        ChannelSectionSnippet_Style_HorizontalRow,
        ChannelSectionSnippet_Style_VerticalList,
        ..
      ),

    -- * ChannelSectionSnippet_Type
    ChannelSectionSnippet_Type
      ( ChannelSectionSnippet_Type_ChannelsectionTypeUndefined,
        ChannelSectionSnippet_Type_SinglePlaylist,
        ChannelSectionSnippet_Type_MultiplePlaylists,
        ChannelSectionSnippet_Type_PopularUploads,
        ChannelSectionSnippet_Type_RecentUploads,
        ChannelSectionSnippet_Type_Likes,
        ChannelSectionSnippet_Type_AllPlaylists,
        ChannelSectionSnippet_Type_LikedPlaylists,
        ChannelSectionSnippet_Type_RecentPosts,
        ChannelSectionSnippet_Type_RecentActivity,
        ChannelSectionSnippet_Type_LiveEvents,
        ChannelSectionSnippet_Type_UpcomingEvents,
        ChannelSectionSnippet_Type_CompletedEvents,
        ChannelSectionSnippet_Type_MultipleChannels,
        ChannelSectionSnippet_Type_PostedVideos,
        ChannelSectionSnippet_Type_PostedPlaylists,
        ChannelSectionSnippet_Type_Subscriptions,
        ..
      ),

    -- * ChannelStatus_LongUploadsStatus
    ChannelStatus_LongUploadsStatus
      ( ChannelStatus_LongUploadsStatus_LongUploadsUnspecified,
        ChannelStatus_LongUploadsStatus_Allowed,
        ChannelStatus_LongUploadsStatus_Eligible,
        ChannelStatus_LongUploadsStatus_Disallowed,
        ..
      ),

    -- * ChannelStatus_PrivacyStatus
    ChannelStatus_PrivacyStatus
      ( ChannelStatus_PrivacyStatus_Public,
        ChannelStatus_PrivacyStatus_Unlisted,
        ChannelStatus_PrivacyStatus_Private,
        ..
      ),

    -- * ChannelToStoreLinkDetailsBillingDetails_BillingStatus
    ChannelToStoreLinkDetailsBillingDetails_BillingStatus
      ( ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusUnspecified,
        ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusPending,
        ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusActive,
        ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusInactive,
        ..
      ),

    -- * ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status
    ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status
      ( ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusUnspecified,
        ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusEligible,
        ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusActive,
        ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusPaused,
        ..
      ),

    -- * CommentSnippet_ModerationStatus
    CommentSnippet_ModerationStatus
      ( CommentSnippet_ModerationStatus_Published,
        CommentSnippet_ModerationStatus_HeldForReview,
        CommentSnippet_ModerationStatus_LikelySpam,
        CommentSnippet_ModerationStatus_Rejected,
        ..
      ),

    -- * CommentSnippet_ViewerRating
    CommentSnippet_ViewerRating
      ( CommentSnippet_ViewerRating_None,
        CommentSnippet_ViewerRating_Like,
        CommentSnippet_ViewerRating_Dislike,
        ..
      ),

    -- * ContentRating_AcbRating
    ContentRating_AcbRating
      ( ContentRating_AcbRating_AcbUnspecified,
        ContentRating_AcbRating_AcbE,
        ContentRating_AcbRating_AcbP,
        ContentRating_AcbRating_AcbC,
        ContentRating_AcbRating_AcbG,
        ContentRating_AcbRating_AcbPg,
        ContentRating_AcbRating_AcbM,
        ContentRating_AcbRating_AcbMa15plus,
        ContentRating_AcbRating_AcbR18plus,
        ContentRating_AcbRating_AcbUnrated,
        ..
      ),

    -- * ContentRating_AgcomRating
    ContentRating_AgcomRating
      ( ContentRating_AgcomRating_AgcomUnspecified,
        ContentRating_AgcomRating_AgcomT,
        ContentRating_AgcomRating_AGCOMVM14,
        ContentRating_AgcomRating_AGCOMVM18,
        ContentRating_AgcomRating_AgcomUnrated,
        ..
      ),

    -- * ContentRating_AnatelRating
    ContentRating_AnatelRating
      ( ContentRating_AnatelRating_AnatelUnspecified,
        ContentRating_AnatelRating_AnatelF,
        ContentRating_AnatelRating_AnatelI,
        ContentRating_AnatelRating_ANATELI7,
        ContentRating_AnatelRating_ANATELI10,
        ContentRating_AnatelRating_ANATELI12,
        ContentRating_AnatelRating_AnatelR,
        ContentRating_AnatelRating_AnatelA,
        ContentRating_AnatelRating_AnatelUnrated,
        ..
      ),

    -- * ContentRating_BbfcRating
    ContentRating_BbfcRating
      ( ContentRating_BbfcRating_BbfcUnspecified,
        ContentRating_BbfcRating_BbfcU,
        ContentRating_BbfcRating_BbfcPg,
        ContentRating_BbfcRating_Bbfc12a,
        ContentRating_BbfcRating_BBFC12,
        ContentRating_BbfcRating_BBFC15,
        ContentRating_BbfcRating_BBFC18,
        ContentRating_BbfcRating_BBFCR18,
        ContentRating_BbfcRating_BbfcUnrated,
        ..
      ),

    -- * ContentRating_BfvcRating
    ContentRating_BfvcRating
      ( ContentRating_BfvcRating_BfvcUnspecified,
        ContentRating_BfvcRating_BfvcG,
        ContentRating_BfvcRating_BfvcE,
        ContentRating_BfvcRating_BFVC13,
        ContentRating_BfvcRating_BFVC15,
        ContentRating_BfvcRating_BFVC18,
        ContentRating_BfvcRating_BFVC20,
        ContentRating_BfvcRating_BfvcB,
        ContentRating_BfvcRating_BfvcUnrated,
        ..
      ),

    -- * ContentRating_BmukkRating
    ContentRating_BmukkRating
      ( ContentRating_BmukkRating_BmukkUnspecified,
        ContentRating_BmukkRating_BmukkAa,
        ContentRating_BmukkRating_BMUKK6,
        ContentRating_BmukkRating_BMUKK8,
        ContentRating_BmukkRating_BMUKK10,
        ContentRating_BmukkRating_BMUKK12,
        ContentRating_BmukkRating_BMUKK14,
        ContentRating_BmukkRating_BMUKK16,
        ContentRating_BmukkRating_BmukkUnrated,
        ..
      ),

    -- * ContentRating_CatvRating
    ContentRating_CatvRating
      ( ContentRating_CatvRating_CatvUnspecified,
        ContentRating_CatvRating_CatvC,
        ContentRating_CatvRating_CATVC8,
        ContentRating_CatvRating_CatvG,
        ContentRating_CatvRating_CatvPg,
        ContentRating_CatvRating_Catv14plus,
        ContentRating_CatvRating_Catv18plus,
        ContentRating_CatvRating_CatvUnrated,
        ContentRating_CatvRating_CatvE,
        ..
      ),

    -- * ContentRating_CatvfrRating
    ContentRating_CatvfrRating
      ( ContentRating_CatvfrRating_CatvfrUnspecified,
        ContentRating_CatvfrRating_CatvfrG,
        ContentRating_CatvfrRating_Catvfr8plus,
        ContentRating_CatvfrRating_Catvfr13plus,
        ContentRating_CatvfrRating_Catvfr16plus,
        ContentRating_CatvfrRating_Catvfr18plus,
        ContentRating_CatvfrRating_CatvfrUnrated,
        ContentRating_CatvfrRating_CatvfrE,
        ..
      ),

    -- * ContentRating_CbfcRating
    ContentRating_CbfcRating
      ( ContentRating_CbfcRating_CbfcUnspecified,
        ContentRating_CbfcRating_CbfcU,
        ContentRating_CbfcRating_CbfcUA,
        ContentRating_CbfcRating_CbfcUA7plus,
        ContentRating_CbfcRating_CbfcUA13plus,
        ContentRating_CbfcRating_CbfcUA16plus,
        ContentRating_CbfcRating_CbfcA,
        ContentRating_CbfcRating_CbfcS,
        ContentRating_CbfcRating_CbfcUnrated,
        ..
      ),

    -- * ContentRating_CccRating
    ContentRating_CccRating
      ( ContentRating_CccRating_CccUnspecified,
        ContentRating_CccRating_CccTe,
        ContentRating_CccRating_CCC6,
        ContentRating_CccRating_CCC14,
        ContentRating_CccRating_CCC18,
        ContentRating_CccRating_Ccc18v,
        ContentRating_CccRating_Ccc18s,
        ContentRating_CccRating_CccUnrated,
        ..
      ),

    -- * ContentRating_CceRating
    ContentRating_CceRating
      ( ContentRating_CceRating_CceUnspecified,
        ContentRating_CceRating_CCEM4,
        ContentRating_CceRating_CCEM6,
        ContentRating_CceRating_CCEM12,
        ContentRating_CceRating_CCEM16,
        ContentRating_CceRating_CCEM18,
        ContentRating_CceRating_CceUnrated,
        ContentRating_CceRating_CCEM14,
        ..
      ),

    -- * ContentRating_ChfilmRating
    ContentRating_ChfilmRating
      ( ContentRating_ChfilmRating_ChfilmUnspecified,
        ContentRating_ChfilmRating_CHFILM0,
        ContentRating_ChfilmRating_CHFILM6,
        ContentRating_ChfilmRating_CHFILM12,
        ContentRating_ChfilmRating_CHFILM16,
        ContentRating_ChfilmRating_CHFILM18,
        ContentRating_ChfilmRating_ChfilmUnrated,
        ..
      ),

    -- * ContentRating_ChvrsRating
    ContentRating_ChvrsRating
      ( ContentRating_ChvrsRating_ChvrsUnspecified,
        ContentRating_ChvrsRating_ChvrsG,
        ContentRating_ChvrsRating_ChvrsPg,
        ContentRating_ChvrsRating_Chvrs14a,
        ContentRating_ChvrsRating_Chvrs18a,
        ContentRating_ChvrsRating_ChvrsR,
        ContentRating_ChvrsRating_ChvrsE,
        ContentRating_ChvrsRating_ChvrsUnrated,
        ..
      ),

    -- * ContentRating_CicfRating
    ContentRating_CicfRating
      ( ContentRating_CicfRating_CicfUnspecified,
        ContentRating_CicfRating_CicfE,
        ContentRating_CicfRating_CicfKtEa,
        ContentRating_CicfRating_CicfKntEna,
        ContentRating_CicfRating_CicfUnrated,
        ..
      ),

    -- * ContentRating_CnaRating
    ContentRating_CnaRating
      ( ContentRating_CnaRating_CnaUnspecified,
        ContentRating_CnaRating_CnaAp,
        ContentRating_CnaRating_CNA12,
        ContentRating_CnaRating_CNA15,
        ContentRating_CnaRating_CNA18,
        ContentRating_CnaRating_Cna18plus,
        ContentRating_CnaRating_CnaUnrated,
        ..
      ),

    -- * ContentRating_CncRating
    ContentRating_CncRating
      ( ContentRating_CncRating_CncUnspecified,
        ContentRating_CncRating_CncT,
        ContentRating_CncRating_CNC10,
        ContentRating_CncRating_CNC12,
        ContentRating_CncRating_CNC16,
        ContentRating_CncRating_CNC18,
        ContentRating_CncRating_CncE,
        ContentRating_CncRating_CncInterdiction,
        ContentRating_CncRating_CncUnrated,
        ..
      ),

    -- * ContentRating_CsaRating
    ContentRating_CsaRating
      ( ContentRating_CsaRating_CsaUnspecified,
        ContentRating_CsaRating_CsaT,
        ContentRating_CsaRating_CSA10,
        ContentRating_CsaRating_CSA12,
        ContentRating_CsaRating_CSA16,
        ContentRating_CsaRating_CSA18,
        ContentRating_CsaRating_CsaInterdiction,
        ContentRating_CsaRating_CsaUnrated,
        ..
      ),

    -- * ContentRating_CscfRating
    ContentRating_CscfRating
      ( ContentRating_CscfRating_CscfUnspecified,
        ContentRating_CscfRating_CscfAl,
        ContentRating_CscfRating_CscfA,
        ContentRating_CscfRating_CSCF6,
        ContentRating_CscfRating_CSCF9,
        ContentRating_CscfRating_CSCF12,
        ContentRating_CscfRating_CSCF16,
        ContentRating_CscfRating_CSCF18,
        ContentRating_CscfRating_CscfUnrated,
        ..
      ),

    -- * ContentRating_CzfilmRating
    ContentRating_CzfilmRating
      ( ContentRating_CzfilmRating_CzfilmUnspecified,
        ContentRating_CzfilmRating_CzfilmU,
        ContentRating_CzfilmRating_CZFILM12,
        ContentRating_CzfilmRating_CZFILM14,
        ContentRating_CzfilmRating_CZFILM18,
        ContentRating_CzfilmRating_CzfilmUnrated,
        ..
      ),

    -- * ContentRating_DjctqRating
    ContentRating_DjctqRating
      ( ContentRating_DjctqRating_DjctqUnspecified,
        ContentRating_DjctqRating_DjctqL,
        ContentRating_DjctqRating_DJCTQ10,
        ContentRating_DjctqRating_DJCTQ12,
        ContentRating_DjctqRating_DJCTQ14,
        ContentRating_DjctqRating_DJCTQ16,
        ContentRating_DjctqRating_DJCTQ18,
        ContentRating_DjctqRating_DjctqEr,
        ContentRating_DjctqRating_DJCTQL10,
        ContentRating_DjctqRating_DJCTQL12,
        ContentRating_DjctqRating_DJCTQL14,
        ContentRating_DjctqRating_DJCTQL16,
        ContentRating_DjctqRating_DJCTQL18,
        ContentRating_DjctqRating_DJCTQ1012,
        ContentRating_DjctqRating_DJCTQ1014,
        ContentRating_DjctqRating_DJCTQ1016,
        ContentRating_DjctqRating_DJCTQ1018,
        ContentRating_DjctqRating_DJCTQ1214,
        ContentRating_DjctqRating_DJCTQ1216,
        ContentRating_DjctqRating_DJCTQ1218,
        ContentRating_DjctqRating_DJCTQ1416,
        ContentRating_DjctqRating_DJCTQ1418,
        ContentRating_DjctqRating_DJCTQ1618,
        ContentRating_DjctqRating_DjctqUnrated,
        ..
      ),

    -- * ContentRating_DjctqRatingReasonsItem
    ContentRating_DjctqRatingReasonsItem
      ( ContentRating_DjctqRatingReasonsItem_DjctqRatingReasonUnspecified,
        ContentRating_DjctqRatingReasonsItem_DjctqViolence,
        ContentRating_DjctqRatingReasonsItem_DjctqExtremeViolence,
        ContentRating_DjctqRatingReasonsItem_DjctqSexualContent,
        ContentRating_DjctqRatingReasonsItem_DjctqNudity,
        ContentRating_DjctqRatingReasonsItem_DjctqSex,
        ContentRating_DjctqRatingReasonsItem_DjctqExplicitSex,
        ContentRating_DjctqRatingReasonsItem_DjctqDrugs,
        ContentRating_DjctqRatingReasonsItem_DjctqLegalDrugs,
        ContentRating_DjctqRatingReasonsItem_DjctqIllegalDrugs,
        ContentRating_DjctqRatingReasonsItem_DjctqInappropriateLanguage,
        ContentRating_DjctqRatingReasonsItem_DjctqCriminalActs,
        ContentRating_DjctqRatingReasonsItem_DjctqImpactingContent,
        ContentRating_DjctqRatingReasonsItem_DjctqFear,
        ContentRating_DjctqRatingReasonsItem_DjctqMedicalProcedures,
        ContentRating_DjctqRatingReasonsItem_DjctqSensitiveTopics,
        ContentRating_DjctqRatingReasonsItem_DjctqFantasyViolence,
        ..
      ),

    -- * ContentRating_EcbmctRating
    ContentRating_EcbmctRating
      ( ContentRating_EcbmctRating_EcbmctUnspecified,
        ContentRating_EcbmctRating_EcbmctG,
        ContentRating_EcbmctRating_Ecbmct7a,
        ContentRating_EcbmctRating_Ecbmct7plus,
        ContentRating_EcbmctRating_Ecbmct13a,
        ContentRating_EcbmctRating_Ecbmct13plus,
        ContentRating_EcbmctRating_Ecbmct15a,
        ContentRating_EcbmctRating_Ecbmct15plus,
        ContentRating_EcbmctRating_Ecbmct18plus,
        ContentRating_EcbmctRating_EcbmctUnrated,
        ..
      ),

    -- * ContentRating_EefilmRating
    ContentRating_EefilmRating
      ( ContentRating_EefilmRating_EefilmUnspecified,
        ContentRating_EefilmRating_EefilmPere,
        ContentRating_EefilmRating_EefilmL,
        ContentRating_EefilmRating_EEFILMMS6,
        ContentRating_EefilmRating_EEFILMK6,
        ContentRating_EefilmRating_EEFILMMS12,
        ContentRating_EefilmRating_EEFILMK12,
        ContentRating_EefilmRating_EEFILMK14,
        ContentRating_EefilmRating_EEFILMK16,
        ContentRating_EefilmRating_EefilmUnrated,
        ..
      ),

    -- * ContentRating_EgfilmRating
    ContentRating_EgfilmRating
      ( ContentRating_EgfilmRating_EgfilmUnspecified,
        ContentRating_EgfilmRating_EgfilmGn,
        ContentRating_EgfilmRating_EGFILM18,
        ContentRating_EgfilmRating_EgfilmBn,
        ContentRating_EgfilmRating_EgfilmUnrated,
        ..
      ),

    -- * ContentRating_EirinRating
    ContentRating_EirinRating
      ( ContentRating_EirinRating_EirinUnspecified,
        ContentRating_EirinRating_EirinG,
        ContentRating_EirinRating_EIRINPG12,
        ContentRating_EirinRating_EirinR15plus,
        ContentRating_EirinRating_EirinR18plus,
        ContentRating_EirinRating_EirinUnrated,
        ..
      ),

    -- * ContentRating_FcbmRating
    ContentRating_FcbmRating
      ( ContentRating_FcbmRating_FcbmUnspecified,
        ContentRating_FcbmRating_FcbmU,
        ContentRating_FcbmRating_FCBMPG13,
        ContentRating_FcbmRating_FCBMP13,
        ContentRating_FcbmRating_FCBM18,
        ContentRating_FcbmRating_Fcbm18sx,
        ContentRating_FcbmRating_Fcbm18pa,
        ContentRating_FcbmRating_Fcbm18sg,
        ContentRating_FcbmRating_Fcbm18pl,
        ContentRating_FcbmRating_FcbmUnrated,
        ..
      ),

    -- * ContentRating_FcoRating
    ContentRating_FcoRating
      ( ContentRating_FcoRating_FcoUnspecified,
        ContentRating_FcoRating_FcoI,
        ContentRating_FcoRating_FcoIia,
        ContentRating_FcoRating_FcoIib,
        ContentRating_FcoRating_FcoIi,
        ContentRating_FcoRating_FcoIii,
        ContentRating_FcoRating_FcoUnrated,
        ..
      ),

    -- * ContentRating_FmocRating
    ContentRating_FmocRating
      ( ContentRating_FmocRating_FmocUnspecified,
        ContentRating_FmocRating_FmocU,
        ContentRating_FmocRating_FMOC10,
        ContentRating_FmocRating_FMOC12,
        ContentRating_FmocRating_FMOC16,
        ContentRating_FmocRating_FMOC18,
        ContentRating_FmocRating_FmocE,
        ContentRating_FmocRating_FmocUnrated,
        ..
      ),

    -- * ContentRating_FpbRating
    ContentRating_FpbRating
      ( ContentRating_FpbRating_FpbUnspecified,
        ContentRating_FpbRating_FpbA,
        ContentRating_FpbRating_FpbPg,
        ContentRating_FpbRating_Fpb79Pg,
        ContentRating_FpbRating_Fpb1012Pg,
        ContentRating_FpbRating_FPB13,
        ContentRating_FpbRating_FPB16,
        ContentRating_FpbRating_FPB18,
        ContentRating_FpbRating_FPBX18,
        ContentRating_FpbRating_FpbXx,
        ContentRating_FpbRating_FpbUnrated,
        ContentRating_FpbRating_FPB10,
        ..
      ),

    -- * ContentRating_FpbRatingReasonsItem
    ContentRating_FpbRatingReasonsItem
      ( ContentRating_FpbRatingReasonsItem_FpbRatingReasonUnspecified,
        ContentRating_FpbRatingReasonsItem_FpbBlasphemy,
        ContentRating_FpbRatingReasonsItem_FpbLanguage,
        ContentRating_FpbRatingReasonsItem_FpbNudity,
        ContentRating_FpbRatingReasonsItem_FpbPrejudice,
        ContentRating_FpbRatingReasonsItem_FpbSex,
        ContentRating_FpbRatingReasonsItem_FpbViolence,
        ContentRating_FpbRatingReasonsItem_FpbDrugs,
        ContentRating_FpbRatingReasonsItem_FpbSexualViolence,
        ContentRating_FpbRatingReasonsItem_FpbHorror,
        ContentRating_FpbRatingReasonsItem_FpbCriminalTechniques,
        ContentRating_FpbRatingReasonsItem_FpbImitativeActsTechniques,
        ..
      ),

    -- * ContentRating_FskRating
    ContentRating_FskRating
      ( ContentRating_FskRating_FskUnspecified,
        ContentRating_FskRating_FSK0,
        ContentRating_FskRating_FSK6,
        ContentRating_FskRating_FSK12,
        ContentRating_FskRating_FSK16,
        ContentRating_FskRating_FSK18,
        ContentRating_FskRating_FskUnrated,
        ..
      ),

    -- * ContentRating_GrfilmRating
    ContentRating_GrfilmRating
      ( ContentRating_GrfilmRating_GrfilmUnspecified,
        ContentRating_GrfilmRating_GrfilmK,
        ContentRating_GrfilmRating_GrfilmE,
        ContentRating_GrfilmRating_GRFILMK12,
        ContentRating_GrfilmRating_GRFILMK13,
        ContentRating_GrfilmRating_GRFILMK15,
        ContentRating_GrfilmRating_GRFILMK17,
        ContentRating_GrfilmRating_GRFILMK18,
        ContentRating_GrfilmRating_GrfilmUnrated,
        ..
      ),

    -- * ContentRating_IcaaRating
    ContentRating_IcaaRating
      ( ContentRating_IcaaRating_IcaaUnspecified,
        ContentRating_IcaaRating_IcaaApta,
        ContentRating_IcaaRating_ICAA7,
        ContentRating_IcaaRating_ICAA12,
        ContentRating_IcaaRating_ICAA13,
        ContentRating_IcaaRating_ICAA16,
        ContentRating_IcaaRating_ICAA18,
        ContentRating_IcaaRating_IcaaX,
        ContentRating_IcaaRating_IcaaUnrated,
        ..
      ),

    -- * ContentRating_IfcoRating
    ContentRating_IfcoRating
      ( ContentRating_IfcoRating_IfcoUnspecified,
        ContentRating_IfcoRating_IfcoG,
        ContentRating_IfcoRating_IfcoPg,
        ContentRating_IfcoRating_IFCO12,
        ContentRating_IfcoRating_Ifco12a,
        ContentRating_IfcoRating_IFCO15,
        ContentRating_IfcoRating_Ifco15a,
        ContentRating_IfcoRating_IFCO16,
        ContentRating_IfcoRating_IFCO18,
        ContentRating_IfcoRating_IfcoUnrated,
        ..
      ),

    -- * ContentRating_IlfilmRating
    ContentRating_IlfilmRating
      ( ContentRating_IlfilmRating_IlfilmUnspecified,
        ContentRating_IlfilmRating_IlfilmAa,
        ContentRating_IlfilmRating_ILFILM12,
        ContentRating_IlfilmRating_ILFILM14,
        ContentRating_IlfilmRating_ILFILM16,
        ContentRating_IlfilmRating_ILFILM18,
        ContentRating_IlfilmRating_IlfilmUnrated,
        ..
      ),

    -- * ContentRating_IncaaRating
    ContentRating_IncaaRating
      ( ContentRating_IncaaRating_IncaaUnspecified,
        ContentRating_IncaaRating_IncaaAtp,
        ContentRating_IncaaRating_INCAASAM13,
        ContentRating_IncaaRating_INCAASAM16,
        ContentRating_IncaaRating_INCAASAM18,
        ContentRating_IncaaRating_IncaaC,
        ContentRating_IncaaRating_IncaaUnrated,
        ..
      ),

    -- * ContentRating_KfcbRating
    ContentRating_KfcbRating
      ( ContentRating_KfcbRating_KfcbUnspecified,
        ContentRating_KfcbRating_KfcbG,
        ContentRating_KfcbRating_KfcbPg,
        ContentRating_KfcbRating_Kfcb16plus,
        ContentRating_KfcbRating_KfcbR,
        ContentRating_KfcbRating_KfcbUnrated,
        ..
      ),

    -- * ContentRating_KijkwijzerRating
    ContentRating_KijkwijzerRating
      ( ContentRating_KijkwijzerRating_KijkwijzerUnspecified,
        ContentRating_KijkwijzerRating_KijkwijzerAl,
        ContentRating_KijkwijzerRating_KIJKWIJZER6,
        ContentRating_KijkwijzerRating_KIJKWIJZER9,
        ContentRating_KijkwijzerRating_KIJKWIJZER12,
        ContentRating_KijkwijzerRating_KIJKWIJZER16,
        ContentRating_KijkwijzerRating_KIJKWIJZER18,
        ContentRating_KijkwijzerRating_KijkwijzerUnrated,
        ..
      ),

    -- * ContentRating_KmrbRating
    ContentRating_KmrbRating
      ( ContentRating_KmrbRating_KmrbUnspecified,
        ContentRating_KmrbRating_KmrbAll,
        ContentRating_KmrbRating_Kmrb12plus,
        ContentRating_KmrbRating_Kmrb15plus,
        ContentRating_KmrbRating_KmrbTeenr,
        ContentRating_KmrbRating_KmrbR,
        ContentRating_KmrbRating_KmrbUnrated,
        ..
      ),

    -- * ContentRating_LsfRating
    ContentRating_LsfRating
      ( ContentRating_LsfRating_LsfUnspecified,
        ContentRating_LsfRating_LsfSu,
        ContentRating_LsfRating_LsfA,
        ContentRating_LsfRating_LsfBo,
        ContentRating_LsfRating_LSF13,
        ContentRating_LsfRating_LsfR,
        ContentRating_LsfRating_LSF17,
        ContentRating_LsfRating_LsfD,
        ContentRating_LsfRating_LSF21,
        ContentRating_LsfRating_LsfUnrated,
        ..
      ),

    -- * ContentRating_MccaaRating
    ContentRating_MccaaRating
      ( ContentRating_MccaaRating_MccaaUnspecified,
        ContentRating_MccaaRating_MccaaU,
        ContentRating_MccaaRating_MccaaPg,
        ContentRating_MccaaRating_Mccaa12a,
        ContentRating_MccaaRating_MCCAA12,
        ContentRating_MccaaRating_MCCAA14,
        ContentRating_MccaaRating_MCCAA15,
        ContentRating_MccaaRating_MCCAA16,
        ContentRating_MccaaRating_MCCAA18,
        ContentRating_MccaaRating_MccaaUnrated,
        ..
      ),

    -- * ContentRating_MccypRating
    ContentRating_MccypRating
      ( ContentRating_MccypRating_MccypUnspecified,
        ContentRating_MccypRating_MccypA,
        ContentRating_MccypRating_MCCYP7,
        ContentRating_MccypRating_MCCYP11,
        ContentRating_MccypRating_MCCYP15,
        ContentRating_MccypRating_MccypUnrated,
        ..
      ),

    -- * ContentRating_McstRating
    ContentRating_McstRating
      ( ContentRating_McstRating_McstUnspecified,
        ContentRating_McstRating_McstP,
        ContentRating_McstRating_MCST0,
        ContentRating_McstRating_MCSTC13,
        ContentRating_McstRating_MCSTC16,
        ContentRating_McstRating_Mcst16plus,
        ContentRating_McstRating_MCSTC18,
        ContentRating_McstRating_McstGPg,
        ContentRating_McstRating_McstUnrated,
        ..
      ),

    -- * ContentRating_MdaRating
    ContentRating_MdaRating
      ( ContentRating_MdaRating_MdaUnspecified,
        ContentRating_MdaRating_MdaG,
        ContentRating_MdaRating_MdaPg,
        ContentRating_MdaRating_MDAPG13,
        ContentRating_MdaRating_MDANC16,
        ContentRating_MdaRating_MDAM18,
        ContentRating_MdaRating_MDAR21,
        ContentRating_MdaRating_MdaUnrated,
        ..
      ),

    -- * ContentRating_MedietilsynetRating
    ContentRating_MedietilsynetRating
      ( ContentRating_MedietilsynetRating_MedietilsynetUnspecified,
        ContentRating_MedietilsynetRating_MedietilsynetA,
        ContentRating_MedietilsynetRating_MEDIETILSYNET6,
        ContentRating_MedietilsynetRating_MEDIETILSYNET7,
        ContentRating_MedietilsynetRating_MEDIETILSYNET9,
        ContentRating_MedietilsynetRating_MEDIETILSYNET11,
        ContentRating_MedietilsynetRating_MEDIETILSYNET12,
        ContentRating_MedietilsynetRating_MEDIETILSYNET15,
        ContentRating_MedietilsynetRating_MEDIETILSYNET18,
        ContentRating_MedietilsynetRating_MedietilsynetUnrated,
        ..
      ),

    -- * ContentRating_MekuRating
    ContentRating_MekuRating
      ( ContentRating_MekuRating_MekuUnspecified,
        ContentRating_MekuRating_MekuS,
        ContentRating_MekuRating_MEKU7,
        ContentRating_MekuRating_MEKU12,
        ContentRating_MekuRating_MEKU16,
        ContentRating_MekuRating_MEKU18,
        ContentRating_MekuRating_MekuUnrated,
        ..
      ),

    -- * ContentRating_MenaMpaaRating
    ContentRating_MenaMpaaRating
      ( ContentRating_MenaMpaaRating_MenaMpaaUnspecified,
        ContentRating_MenaMpaaRating_MenaMpaaG,
        ContentRating_MenaMpaaRating_MenaMpaaPg,
        ContentRating_MenaMpaaRating_MENAMPAAPG13,
        ContentRating_MenaMpaaRating_MenaMpaaR,
        ContentRating_MenaMpaaRating_MenaMpaaUnrated,
        ..
      ),

    -- * ContentRating_MibacRating
    ContentRating_MibacRating
      ( ContentRating_MibacRating_MibacUnspecified,
        ContentRating_MibacRating_MibacT,
        ContentRating_MibacRating_MibacVap,
        ContentRating_MibacRating_MIBACVM6,
        ContentRating_MibacRating_MIBACVM12,
        ContentRating_MibacRating_MIBACVM14,
        ContentRating_MibacRating_MIBACVM16,
        ContentRating_MibacRating_MIBACVM18,
        ContentRating_MibacRating_MibacUnrated,
        ..
      ),

    -- * ContentRating_MocRating
    ContentRating_MocRating
      ( ContentRating_MocRating_MocUnspecified,
        ContentRating_MocRating_MocE,
        ContentRating_MocRating_MocT,
        ContentRating_MocRating_MOC7,
        ContentRating_MocRating_MOC12,
        ContentRating_MocRating_MOC15,
        ContentRating_MocRating_MOC18,
        ContentRating_MocRating_MocX,
        ContentRating_MocRating_MocBanned,
        ContentRating_MocRating_MocUnrated,
        ..
      ),

    -- * ContentRating_MoctwRating
    ContentRating_MoctwRating
      ( ContentRating_MoctwRating_MoctwUnspecified,
        ContentRating_MoctwRating_MoctwG,
        ContentRating_MoctwRating_MoctwP,
        ContentRating_MoctwRating_MoctwPg,
        ContentRating_MoctwRating_MoctwR,
        ContentRating_MoctwRating_MoctwUnrated,
        ContentRating_MoctwRating_MOCTWR12,
        ContentRating_MoctwRating_MOCTWR15,
        ..
      ),

    -- * ContentRating_MpaaRating
    ContentRating_MpaaRating
      ( ContentRating_MpaaRating_MpaaUnspecified,
        ContentRating_MpaaRating_MpaaG,
        ContentRating_MpaaRating_MpaaPg,
        ContentRating_MpaaRating_MPAAPG13,
        ContentRating_MpaaRating_MpaaR,
        ContentRating_MpaaRating_MPAANC17,
        ContentRating_MpaaRating_MpaaX,
        ContentRating_MpaaRating_MpaaUnrated,
        ..
      ),

    -- * ContentRating_MpaatRating
    ContentRating_MpaatRating
      ( ContentRating_MpaatRating_MpaatUnspecified,
        ContentRating_MpaatRating_MpaatGb,
        ContentRating_MpaatRating_MpaatRb,
        ..
      ),

    -- * ContentRating_MtrcbRating
    ContentRating_MtrcbRating
      ( ContentRating_MtrcbRating_MtrcbUnspecified,
        ContentRating_MtrcbRating_MtrcbG,
        ContentRating_MtrcbRating_MtrcbPg,
        ContentRating_MtrcbRating_MTRCBR13,
        ContentRating_MtrcbRating_MTRCBR16,
        ContentRating_MtrcbRating_MTRCBR18,
        ContentRating_MtrcbRating_MtrcbX,
        ContentRating_MtrcbRating_MtrcbUnrated,
        ..
      ),

    -- * ContentRating_NbcRating
    ContentRating_NbcRating
      ( ContentRating_NbcRating_NbcUnspecified,
        ContentRating_NbcRating_NbcG,
        ContentRating_NbcRating_NbcPg,
        ContentRating_NbcRating_Nbc12plus,
        ContentRating_NbcRating_Nbc15plus,
        ContentRating_NbcRating_Nbc18plus,
        ContentRating_NbcRating_Nbc18plusr,
        ContentRating_NbcRating_NbcPu,
        ContentRating_NbcRating_NbcUnrated,
        ..
      ),

    -- * ContentRating_NbcplRating
    ContentRating_NbcplRating
      ( ContentRating_NbcplRating_NbcplUnspecified,
        ContentRating_NbcplRating_NbcplI,
        ContentRating_NbcplRating_NbcplIi,
        ContentRating_NbcplRating_NbcplIii,
        ContentRating_NbcplRating_NbcplIv,
        ContentRating_NbcplRating_Nbcpl18plus,
        ContentRating_NbcplRating_NbcplUnrated,
        ..
      ),

    -- * ContentRating_NfrcRating
    ContentRating_NfrcRating
      ( ContentRating_NfrcRating_NfrcUnspecified,
        ContentRating_NfrcRating_NfrcA,
        ContentRating_NfrcRating_NfrcB,
        ContentRating_NfrcRating_NfrcC,
        ContentRating_NfrcRating_NfrcD,
        ContentRating_NfrcRating_NfrcX,
        ContentRating_NfrcRating_NfrcUnrated,
        ..
      ),

    -- * ContentRating_NfvcbRating
    ContentRating_NfvcbRating
      ( ContentRating_NfvcbRating_NfvcbUnspecified,
        ContentRating_NfvcbRating_NfvcbG,
        ContentRating_NfvcbRating_NfvcbPg,
        ContentRating_NfvcbRating_NFVCB12,
        ContentRating_NfvcbRating_Nfvcb12a,
        ContentRating_NfvcbRating_NFVCB15,
        ContentRating_NfvcbRating_NFVCB18,
        ContentRating_NfvcbRating_NfvcbRe,
        ContentRating_NfvcbRating_NfvcbUnrated,
        ..
      ),

    -- * ContentRating_NkclvRating
    ContentRating_NkclvRating
      ( ContentRating_NkclvRating_NkclvUnspecified,
        ContentRating_NkclvRating_NkclvU,
        ContentRating_NkclvRating_Nkclv7plus,
        ContentRating_NkclvRating_Nkclv12plus,
        ContentRating_NkclvRating_Nkclv16plus,
        ContentRating_NkclvRating_Nkclv18plus,
        ContentRating_NkclvRating_NkclvUnrated,
        ..
      ),

    -- * ContentRating_NmcRating
    ContentRating_NmcRating
      ( ContentRating_NmcRating_NmcUnspecified,
        ContentRating_NmcRating_NmcG,
        ContentRating_NmcRating_NmcPg,
        ContentRating_NmcRating_NMCPG13,
        ContentRating_NmcRating_NMCPG15,
        ContentRating_NmcRating_Nmc15plus,
        ContentRating_NmcRating_Nmc18plus,
        ContentRating_NmcRating_Nmc18tc,
        ContentRating_NmcRating_NmcUnrated,
        ..
      ),

    -- * ContentRating_OflcRating
    ContentRating_OflcRating
      ( ContentRating_OflcRating_OflcUnspecified,
        ContentRating_OflcRating_OflcG,
        ContentRating_OflcRating_OflcPg,
        ContentRating_OflcRating_OflcM,
        ContentRating_OflcRating_OFLCR13,
        ContentRating_OflcRating_OFLCR15,
        ContentRating_OflcRating_OFLCR16,
        ContentRating_OflcRating_OFLCR18,
        ContentRating_OflcRating_OflcUnrated,
        ContentRating_OflcRating_OFLCRP13,
        ContentRating_OflcRating_OFLCRP16,
        ContentRating_OflcRating_OFLCRP18,
        ..
      ),

    -- * ContentRating_PefilmRating
    ContentRating_PefilmRating
      ( ContentRating_PefilmRating_PefilmUnspecified,
        ContentRating_PefilmRating_PefilmPt,
        ContentRating_PefilmRating_PefilmPg,
        ContentRating_PefilmRating_PEFILM14,
        ContentRating_PefilmRating_PEFILM18,
        ContentRating_PefilmRating_PefilmUnrated,
        ..
      ),

    -- * ContentRating_RcnofRating
    ContentRating_RcnofRating
      ( ContentRating_RcnofRating_RcnofUnspecified,
        ContentRating_RcnofRating_RcnofI,
        ContentRating_RcnofRating_RcnofIi,
        ContentRating_RcnofRating_RcnofIii,
        ContentRating_RcnofRating_RcnofIv,
        ContentRating_RcnofRating_RcnofV,
        ContentRating_RcnofRating_RcnofVi,
        ContentRating_RcnofRating_RcnofUnrated,
        ..
      ),

    -- * ContentRating_ResorteviolenciaRating
    ContentRating_ResorteviolenciaRating
      ( ContentRating_ResorteviolenciaRating_ResorteviolenciaUnspecified,
        ContentRating_ResorteviolenciaRating_ResorteviolenciaA,
        ContentRating_ResorteviolenciaRating_ResorteviolenciaB,
        ContentRating_ResorteviolenciaRating_ResorteviolenciaC,
        ContentRating_ResorteviolenciaRating_ResorteviolenciaD,
        ContentRating_ResorteviolenciaRating_ResorteviolenciaE,
        ContentRating_ResorteviolenciaRating_ResorteviolenciaUnrated,
        ..
      ),

    -- * ContentRating_RtcRating
    ContentRating_RtcRating
      ( ContentRating_RtcRating_RtcUnspecified,
        ContentRating_RtcRating_RtcAa,
        ContentRating_RtcRating_RtcA,
        ContentRating_RtcRating_RtcB,
        ContentRating_RtcRating_RTCB15,
        ContentRating_RtcRating_RtcC,
        ContentRating_RtcRating_RtcD,
        ContentRating_RtcRating_RtcUnrated,
        ..
      ),

    -- * ContentRating_RteRating
    ContentRating_RteRating
      ( ContentRating_RteRating_RteUnspecified,
        ContentRating_RteRating_RteGa,
        ContentRating_RteRating_RteCh,
        ContentRating_RteRating_RtePs,
        ContentRating_RteRating_RteMa,
        ContentRating_RteRating_RteUnrated,
        ..
      ),

    -- * ContentRating_RussiaRating
    ContentRating_RussiaRating
      ( ContentRating_RussiaRating_RussiaUnspecified,
        ContentRating_RussiaRating_RUSSIA0,
        ContentRating_RussiaRating_RUSSIA6,
        ContentRating_RussiaRating_RUSSIA12,
        ContentRating_RussiaRating_RUSSIA16,
        ContentRating_RussiaRating_RUSSIA18,
        ContentRating_RussiaRating_RussiaUnrated,
        ..
      ),

    -- * ContentRating_SkfilmRating
    ContentRating_SkfilmRating
      ( ContentRating_SkfilmRating_SkfilmUnspecified,
        ContentRating_SkfilmRating_SkfilmG,
        ContentRating_SkfilmRating_SKFILMP2,
        ContentRating_SkfilmRating_SKFILMP5,
        ContentRating_SkfilmRating_SKFILMP8,
        ContentRating_SkfilmRating_SkfilmUnrated,
        ..
      ),

    -- * ContentRating_SmaisRating
    ContentRating_SmaisRating
      ( ContentRating_SmaisRating_SmaisUnspecified,
        ContentRating_SmaisRating_SmaisL,
        ContentRating_SmaisRating_SMAIS7,
        ContentRating_SmaisRating_SMAIS12,
        ContentRating_SmaisRating_SMAIS14,
        ContentRating_SmaisRating_SMAIS16,
        ContentRating_SmaisRating_SMAIS18,
        ContentRating_SmaisRating_SmaisUnrated,
        ..
      ),

    -- * ContentRating_SmsaRating
    ContentRating_SmsaRating
      ( ContentRating_SmsaRating_SmsaUnspecified,
        ContentRating_SmsaRating_SmsaA,
        ContentRating_SmsaRating_SMSA7,
        ContentRating_SmsaRating_SMSA11,
        ContentRating_SmsaRating_SMSA15,
        ContentRating_SmsaRating_SmsaUnrated,
        ..
      ),

    -- * ContentRating_TvpgRating
    ContentRating_TvpgRating
      ( ContentRating_TvpgRating_TvpgUnspecified,
        ContentRating_TvpgRating_TvpgY,
        ContentRating_TvpgRating_TVPGY7,
        ContentRating_TvpgRating_TvpgY7Fv,
        ContentRating_TvpgRating_TvpgG,
        ContentRating_TvpgRating_TvpgPg,
        ContentRating_TvpgRating_PG14,
        ContentRating_TvpgRating_TvpgMa,
        ContentRating_TvpgRating_TvpgUnrated,
        ..
      ),

    -- * ContentRating_YtRating
    ContentRating_YtRating
      ( ContentRating_YtRating_YtUnspecified,
        ContentRating_YtRating_YtAgeRestricted,
        ..
      ),

    -- * Cuepoint_CueType
    Cuepoint_CueType
      ( Cuepoint_CueType_CueTypeUnspecified,
        Cuepoint_CueType_CueTypeAd,
        ..
      ),

    -- * CuepointSchedule_ScheduleStrategy
    CuepointSchedule_ScheduleStrategy
      ( CuepointSchedule_ScheduleStrategy_ScheduleStrategyUnspecified,
        CuepointSchedule_ScheduleStrategy_Concurrent,
        CuepointSchedule_ScheduleStrategy_NonConcurrent,
        ..
      ),

    -- * InvideoPosition_CornerPosition
    InvideoPosition_CornerPosition
      ( InvideoPosition_CornerPosition_TopLeft,
        InvideoPosition_CornerPosition_TopRight,
        InvideoPosition_CornerPosition_BottomLeft,
        InvideoPosition_CornerPosition_BottomRight,
        ..
      ),

    -- * InvideoPosition_Type
    InvideoPosition_Type
      ( InvideoPosition_Type_Corner,
        ..
      ),

    -- * InvideoTiming_Type
    InvideoTiming_Type
      ( InvideoTiming_Type_OffsetFromStart,
        InvideoTiming_Type_OffsetFromEnd,
        ..
      ),

    -- * LiveBroadcastContentDetails_ClosedCaptionsType
    LiveBroadcastContentDetails_ClosedCaptionsType
      ( LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsTypeUnspecified,
        LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsDisabled,
        LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsHttpPost,
        LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsEmbedded,
        ..
      ),

    -- * LiveBroadcastContentDetails_LatencyPreference
    LiveBroadcastContentDetails_LatencyPreference
      ( LiveBroadcastContentDetails_LatencyPreference_LatencyPreferenceUnspecified,
        LiveBroadcastContentDetails_LatencyPreference_Normal,
        LiveBroadcastContentDetails_LatencyPreference_Low,
        LiveBroadcastContentDetails_LatencyPreference_UltraLow,
        ..
      ),

    -- * LiveBroadcastContentDetails_Projection
    LiveBroadcastContentDetails_Projection
      ( LiveBroadcastContentDetails_Projection_ProjectionUnspecified,
        LiveBroadcastContentDetails_Projection_Rectangular,
        LiveBroadcastContentDetails_Projection_360,
        LiveBroadcastContentDetails_Projection_Mesh,
        ..
      ),

    -- * LiveBroadcastContentDetails_StereoLayout
    LiveBroadcastContentDetails_StereoLayout
      ( LiveBroadcastContentDetails_StereoLayout_StereoLayoutUnspecified,
        LiveBroadcastContentDetails_StereoLayout_Mono,
        LiveBroadcastContentDetails_StereoLayout_LeftRight,
        LiveBroadcastContentDetails_StereoLayout_TopBottom,
        ..
      ),

    -- * LiveBroadcastStatus_LifeCycleStatus
    LiveBroadcastStatus_LifeCycleStatus
      ( LiveBroadcastStatus_LifeCycleStatus_LifeCycleStatusUnspecified,
        LiveBroadcastStatus_LifeCycleStatus_Created,
        LiveBroadcastStatus_LifeCycleStatus_Ready,
        LiveBroadcastStatus_LifeCycleStatus_Testing,
        LiveBroadcastStatus_LifeCycleStatus_Live,
        LiveBroadcastStatus_LifeCycleStatus_Complete,
        LiveBroadcastStatus_LifeCycleStatus_Revoked,
        LiveBroadcastStatus_LifeCycleStatus_TestStarting,
        LiveBroadcastStatus_LifeCycleStatus_LiveStarting,
        ..
      ),

    -- * LiveBroadcastStatus_LiveBroadcastPriority
    LiveBroadcastStatus_LiveBroadcastPriority
      ( LiveBroadcastStatus_LiveBroadcastPriority_LiveBroadcastPriorityUnspecified,
        LiveBroadcastStatus_LiveBroadcastPriority_Low,
        LiveBroadcastStatus_LiveBroadcastPriority_Normal,
        LiveBroadcastStatus_LiveBroadcastPriority_High,
        ..
      ),

    -- * LiveBroadcastStatus_PrivacyStatus
    LiveBroadcastStatus_PrivacyStatus
      ( LiveBroadcastStatus_PrivacyStatus_Public,
        LiveBroadcastStatus_PrivacyStatus_Unlisted,
        LiveBroadcastStatus_PrivacyStatus_Private,
        ..
      ),

    -- * LiveBroadcastStatus_RecordingStatus
    LiveBroadcastStatus_RecordingStatus
      ( LiveBroadcastStatus_RecordingStatus_LiveBroadcastRecordingStatusUnspecified,
        LiveBroadcastStatus_RecordingStatus_NotRecording,
        LiveBroadcastStatus_RecordingStatus_Recording,
        LiveBroadcastStatus_RecordingStatus_Recorded,
        ..
      ),

    -- * LiveChatBanSnippet_Type
    LiveChatBanSnippet_Type
      ( LiveChatBanSnippet_Type_LiveChatBanTypeUnspecified,
        LiveChatBanSnippet_Type_Permanent,
        LiveChatBanSnippet_Type_Temporary,
        ..
      ),

    -- * LiveChatMessageSnippet_Type
    LiveChatMessageSnippet_Type
      ( LiveChatMessageSnippet_Type_InvalidType,
        LiveChatMessageSnippet_Type_TextMessageEvent,
        LiveChatMessageSnippet_Type_Tombstone,
        LiveChatMessageSnippet_Type_FanFundingEvent,
        LiveChatMessageSnippet_Type_ChatEndedEvent,
        LiveChatMessageSnippet_Type_SponsorOnlyModeStartedEvent,
        LiveChatMessageSnippet_Type_SponsorOnlyModeEndedEvent,
        LiveChatMessageSnippet_Type_NewSponsorEvent,
        LiveChatMessageSnippet_Type_MemberMilestoneChatEvent,
        LiveChatMessageSnippet_Type_MembershipGiftingEvent,
        LiveChatMessageSnippet_Type_GiftMembershipReceivedEvent,
        LiveChatMessageSnippet_Type_MessageDeletedEvent,
        LiveChatMessageSnippet_Type_MessageRetractedEvent,
        LiveChatMessageSnippet_Type_UserBannedEvent,
        LiveChatMessageSnippet_Type_SuperChatEvent,
        LiveChatMessageSnippet_Type_SuperStickerEvent,
        LiveChatMessageSnippet_Type_PollEvent,
        ..
      ),

    -- * LiveChatPollDetails_Status
    LiveChatPollDetails_Status
      ( LiveChatPollDetails_Status_Unknown,
        LiveChatPollDetails_Status_Active,
        LiveChatPollDetails_Status_Closed,
        ..
      ),

    -- * LiveChatUserBannedMessageDetails_BanType
    LiveChatUserBannedMessageDetails_BanType
      ( LiveChatUserBannedMessageDetails_BanType_Permanent,
        LiveChatUserBannedMessageDetails_BanType_Temporary,
        ..
      ),

    -- * LiveStreamConfigurationIssue_Severity
    LiveStreamConfigurationIssue_Severity
      ( LiveStreamConfigurationIssue_Severity_Info,
        LiveStreamConfigurationIssue_Severity_Warning,
        LiveStreamConfigurationIssue_Severity_Error',
        ..
      ),

    -- * LiveStreamConfigurationIssue_Type
    LiveStreamConfigurationIssue_Type
      ( LiveStreamConfigurationIssue_Type_GopSizeOver,
        LiveStreamConfigurationIssue_Type_GopSizeLong,
        LiveStreamConfigurationIssue_Type_GopSizeShort,
        LiveStreamConfigurationIssue_Type_OpenGop,
        LiveStreamConfigurationIssue_Type_BadContainer,
        LiveStreamConfigurationIssue_Type_AudioBitrateHigh,
        LiveStreamConfigurationIssue_Type_AudioBitrateLow,
        LiveStreamConfigurationIssue_Type_AudioSampleRate,
        LiveStreamConfigurationIssue_Type_BitrateHigh,
        LiveStreamConfigurationIssue_Type_BitrateLow,
        LiveStreamConfigurationIssue_Type_AudioCodec,
        LiveStreamConfigurationIssue_Type_VideoCodec,
        LiveStreamConfigurationIssue_Type_NoAudioStream,
        LiveStreamConfigurationIssue_Type_NoVideoStream,
        LiveStreamConfigurationIssue_Type_MultipleVideoStreams,
        LiveStreamConfigurationIssue_Type_MultipleAudioStreams,
        LiveStreamConfigurationIssue_Type_AudioTooManyChannels,
        LiveStreamConfigurationIssue_Type_InterlacedVideo,
        LiveStreamConfigurationIssue_Type_FrameRateHigh,
        LiveStreamConfigurationIssue_Type_ResolutionMismatch,
        LiveStreamConfigurationIssue_Type_VideoCodecMismatch,
        LiveStreamConfigurationIssue_Type_VideoInterlaceMismatch,
        LiveStreamConfigurationIssue_Type_VideoProfileMismatch,
        LiveStreamConfigurationIssue_Type_VideoBitrateMismatch,
        LiveStreamConfigurationIssue_Type_FramerateMismatch,
        LiveStreamConfigurationIssue_Type_GopMismatch,
        LiveStreamConfigurationIssue_Type_AudioSampleRateMismatch,
        LiveStreamConfigurationIssue_Type_AudioStereoMismatch,
        LiveStreamConfigurationIssue_Type_AudioCodecMismatch,
        LiveStreamConfigurationIssue_Type_AudioBitrateMismatch,
        LiveStreamConfigurationIssue_Type_VideoResolutionSuboptimal,
        LiveStreamConfigurationIssue_Type_VideoResolutionUnsupported,
        LiveStreamConfigurationIssue_Type_VideoIngestionStarved,
        LiveStreamConfigurationIssue_Type_VideoIngestionFasterThanRealtime,
        ..
      ),

    -- * LiveStreamHealthStatus_Status
    LiveStreamHealthStatus_Status
      ( LiveStreamHealthStatus_Status_Good,
        LiveStreamHealthStatus_Status_OK,
        LiveStreamHealthStatus_Status_Bad,
        LiveStreamHealthStatus_Status_NoData,
        LiveStreamHealthStatus_Status_Revoked,
        ..
      ),

    -- * LiveStreamStatus_StreamStatus
    LiveStreamStatus_StreamStatus
      ( LiveStreamStatus_StreamStatus_Created,
        LiveStreamStatus_StreamStatus_Ready,
        LiveStreamStatus_StreamStatus_Active,
        LiveStreamStatus_StreamStatus_Inactive,
        LiveStreamStatus_StreamStatus_Error',
        ..
      ),

    -- * PlaylistImageSnippet_Type
    PlaylistImageSnippet_Type
      ( PlaylistImageSnippet_Type_Hero,
        ..
      ),

    -- * PlaylistItemStatus_PrivacyStatus
    PlaylistItemStatus_PrivacyStatus
      ( PlaylistItemStatus_PrivacyStatus_Public,
        PlaylistItemStatus_PrivacyStatus_Unlisted,
        PlaylistItemStatus_PrivacyStatus_Private,
        ..
      ),

    -- * PlaylistStatus_PodcastStatus
    PlaylistStatus_PodcastStatus
      ( PlaylistStatus_PodcastStatus_Enabled,
        PlaylistStatus_PodcastStatus_Disabled,
        ..
      ),

    -- * PlaylistStatus_PrivacyStatus
    PlaylistStatus_PrivacyStatus
      ( PlaylistStatus_PrivacyStatus_Public,
        PlaylistStatus_PrivacyStatus_Unlisted,
        PlaylistStatus_PrivacyStatus_Private,
        ..
      ),

    -- * SearchResultSnippet_LiveBroadcastContent
    SearchResultSnippet_LiveBroadcastContent
      ( SearchResultSnippet_LiveBroadcastContent_None,
        SearchResultSnippet_LiveBroadcastContent_Upcoming,
        SearchResultSnippet_LiveBroadcastContent_Live,
        SearchResultSnippet_LiveBroadcastContent_Completed,
        ..
      ),

    -- * SubscriptionContentDetails_ActivityType
    SubscriptionContentDetails_ActivityType
      ( SubscriptionContentDetails_ActivityType_SubscriptionActivityTypeUnspecified,
        SubscriptionContentDetails_ActivityType_All,
        SubscriptionContentDetails_ActivityType_Uploads,
        ..
      ),

    -- * ThirdPartyLinkSnippet_Type
    ThirdPartyLinkSnippet_Type
      ( ThirdPartyLinkSnippet_Type_LinkUnspecified,
        ThirdPartyLinkSnippet_Type_ChannelToStoreLink,
        ..
      ),

    -- * ThirdPartyLinkStatus_LinkStatus
    ThirdPartyLinkStatus_LinkStatus
      ( ThirdPartyLinkStatus_LinkStatus_Unknown,
        ThirdPartyLinkStatus_LinkStatus_Failed,
        ThirdPartyLinkStatus_LinkStatus_Pending,
        ThirdPartyLinkStatus_LinkStatus_Linked,
        ..
      ),

    -- * VideoAgeGating_VideoGameRating
    VideoAgeGating_VideoGameRating
      ( VideoAgeGating_VideoGameRating_Anyone,
        VideoAgeGating_VideoGameRating_M15Plus,
        VideoAgeGating_VideoGameRating_M16Plus,
        VideoAgeGating_VideoGameRating_M17Plus,
        ..
      ),

    -- * VideoContentDetails_Caption
    VideoContentDetails_Caption
      ( VideoContentDetails_Caption_True',
        VideoContentDetails_Caption_False',
        ..
      ),

    -- * VideoContentDetails_Definition
    VideoContentDetails_Definition
      ( VideoContentDetails_Definition_SD,
        VideoContentDetails_Definition_HD,
        ..
      ),

    -- * VideoContentDetails_Projection
    VideoContentDetails_Projection
      ( VideoContentDetails_Projection_Rectangular,
        VideoContentDetails_Projection_360,
        ..
      ),

    -- * VideoFileDetails_FileType
    VideoFileDetails_FileType
      ( VideoFileDetails_FileType_Video,
        VideoFileDetails_FileType_Audio,
        VideoFileDetails_FileType_Image,
        VideoFileDetails_FileType_Archive,
        VideoFileDetails_FileType_Document,
        VideoFileDetails_FileType_Project,
        VideoFileDetails_FileType_Other,
        ..
      ),

    -- * VideoFileDetailsVideoStream_Rotation
    VideoFileDetailsVideoStream_Rotation
      ( VideoFileDetailsVideoStream_Rotation_None,
        VideoFileDetailsVideoStream_Rotation_Clockwise,
        VideoFileDetailsVideoStream_Rotation_UpsideDown,
        VideoFileDetailsVideoStream_Rotation_CounterClockwise,
        VideoFileDetailsVideoStream_Rotation_Other,
        ..
      ),

    -- * VideoProcessingDetails_ProcessingFailureReason
    VideoProcessingDetails_ProcessingFailureReason
      ( VideoProcessingDetails_ProcessingFailureReason_UploadFailed,
        VideoProcessingDetails_ProcessingFailureReason_TranscodeFailed,
        VideoProcessingDetails_ProcessingFailureReason_StreamingFailed,
        VideoProcessingDetails_ProcessingFailureReason_Other,
        ..
      ),

    -- * VideoProcessingDetails_ProcessingStatus
    VideoProcessingDetails_ProcessingStatus
      ( VideoProcessingDetails_ProcessingStatus_Processing,
        VideoProcessingDetails_ProcessingStatus_Succeeded,
        VideoProcessingDetails_ProcessingStatus_Failed,
        VideoProcessingDetails_ProcessingStatus_Terminated,
        ..
      ),

    -- * VideoRating_Rating
    VideoRating_Rating
      ( VideoRating_Rating_None,
        VideoRating_Rating_Like,
        VideoRating_Rating_Dislike,
        ..
      ),

    -- * VideoSnippet_LiveBroadcastContent
    VideoSnippet_LiveBroadcastContent
      ( VideoSnippet_LiveBroadcastContent_None,
        VideoSnippet_LiveBroadcastContent_Upcoming,
        VideoSnippet_LiveBroadcastContent_Live,
        VideoSnippet_LiveBroadcastContent_Completed,
        ..
      ),

    -- * VideoStatus_FailureReason
    VideoStatus_FailureReason
      ( VideoStatus_FailureReason_Conversion,
        VideoStatus_FailureReason_InvalidFile,
        VideoStatus_FailureReason_EmptyFile,
        VideoStatus_FailureReason_TooSmall,
        VideoStatus_FailureReason_Codec,
        VideoStatus_FailureReason_UploadAborted,
        ..
      ),

    -- * VideoStatus_License
    VideoStatus_License
      ( VideoStatus_License_Youtube,
        VideoStatus_License_CreativeCommon,
        ..
      ),

    -- * VideoStatus_PrivacyStatus
    VideoStatus_PrivacyStatus
      ( VideoStatus_PrivacyStatus_Public,
        VideoStatus_PrivacyStatus_Unlisted,
        VideoStatus_PrivacyStatus_Private,
        ..
      ),

    -- * VideoStatus_RejectionReason
    VideoStatus_RejectionReason
      ( VideoStatus_RejectionReason_Copyright,
        VideoStatus_RejectionReason_Inappropriate,
        VideoStatus_RejectionReason_Duplicate,
        VideoStatus_RejectionReason_TermsOfUse,
        VideoStatus_RejectionReason_UploaderAccountSuspended,
        VideoStatus_RejectionReason_Length,
        VideoStatus_RejectionReason_Claim,
        VideoStatus_RejectionReason_UploaderAccountClosed,
        VideoStatus_RejectionReason_Trademark,
        VideoStatus_RejectionReason_Legal,
        ..
      ),

    -- * VideoStatus_UploadStatus
    VideoStatus_UploadStatus
      ( VideoStatus_UploadStatus_Uploaded,
        VideoStatus_UploadStatus_Processed,
        VideoStatus_UploadStatus_Failed,
        VideoStatus_UploadStatus_Rejected,
        VideoStatus_UploadStatus_Deleted,
        ..
      ),

    -- * VideoSuggestions_EditorSuggestionsItem
    VideoSuggestions_EditorSuggestionsItem
      ( VideoSuggestions_EditorSuggestionsItem_VideoAutoLevels,
        VideoSuggestions_EditorSuggestionsItem_VideoStabilize,
        VideoSuggestions_EditorSuggestionsItem_VideoCrop,
        VideoSuggestions_EditorSuggestionsItem_AudioQuietAudioSwap,
        ..
      ),

    -- * VideoSuggestions_ProcessingErrorsItem
    VideoSuggestions_ProcessingErrorsItem
      ( VideoSuggestions_ProcessingErrorsItem_AudioFile,
        VideoSuggestions_ProcessingErrorsItem_ImageFile,
        VideoSuggestions_ProcessingErrorsItem_ProjectFile,
        VideoSuggestions_ProcessingErrorsItem_NotAVideoFile,
        VideoSuggestions_ProcessingErrorsItem_DocFile,
        VideoSuggestions_ProcessingErrorsItem_ArchiveFile,
        VideoSuggestions_ProcessingErrorsItem_UnsupportedSpatialAudioLayout,
        ..
      ),

    -- * VideoSuggestions_ProcessingHintsItem
    VideoSuggestions_ProcessingHintsItem
      ( VideoSuggestions_ProcessingHintsItem_NonStreamableMov,
        VideoSuggestions_ProcessingHintsItem_SendBestQualityVideo,
        VideoSuggestions_ProcessingHintsItem_SphericalVideo,
        VideoSuggestions_ProcessingHintsItem_SpatialAudio,
        VideoSuggestions_ProcessingHintsItem_VrVideo,
        VideoSuggestions_ProcessingHintsItem_HdrVideo,
        ..
      ),

    -- * VideoSuggestions_ProcessingWarningsItem
    VideoSuggestions_ProcessingWarningsItem
      ( VideoSuggestions_ProcessingWarningsItem_UnknownContainer,
        VideoSuggestions_ProcessingWarningsItem_UnknownVideoCodec,
        VideoSuggestions_ProcessingWarningsItem_UnknownAudioCodec,
        VideoSuggestions_ProcessingWarningsItem_InconsistentResolution,
        VideoSuggestions_ProcessingWarningsItem_HasEditlist,
        VideoSuggestions_ProcessingWarningsItem_ProblematicVideoCodec,
        VideoSuggestions_ProcessingWarningsItem_ProblematicAudioCodec,
        VideoSuggestions_ProcessingWarningsItem_UnsupportedVrStereoMode,
        VideoSuggestions_ProcessingWarningsItem_UnsupportedSphericalProjectionType,
        VideoSuggestions_ProcessingWarningsItem_UnsupportedHdrPixelFormat,
        VideoSuggestions_ProcessingWarningsItem_UnsupportedHdrColorMetadata,
        VideoSuggestions_ProcessingWarningsItem_ProblematicHdrLookupTable,
        ..
      ),

    -- * CommentThreadsListModerationStatus
    CommentThreadsListModerationStatus
      ( CommentThreadsListModerationStatus_Published,
        CommentThreadsListModerationStatus_HeldForReview,
        CommentThreadsListModerationStatus_LikelySpam,
        CommentThreadsListModerationStatus_Rejected,
        ..
      ),

    -- * CommentThreadsListOrder
    CommentThreadsListOrder
      ( CommentThreadsListOrder_OrderUnspecified,
        CommentThreadsListOrder_Time,
        CommentThreadsListOrder_Relevance,
        ..
      ),

    -- * CommentThreadsListTextFormat
    CommentThreadsListTextFormat
      ( CommentThreadsListTextFormat_TextFormatUnspecified,
        CommentThreadsListTextFormat_Html,
        CommentThreadsListTextFormat_PlainText,
        ..
      ),

    -- * CommentsListTextFormat
    CommentsListTextFormat
      ( CommentsListTextFormat_TextFormatUnspecified,
        CommentsListTextFormat_Html,
        CommentsListTextFormat_PlainText,
        ..
      ),

    -- * CommentsSetModerationStatusModerationStatus
    CommentsSetModerationStatusModerationStatus
      ( CommentsSetModerationStatusModerationStatus_Published,
        CommentsSetModerationStatusModerationStatus_HeldForReview,
        CommentsSetModerationStatusModerationStatus_LikelySpam,
        CommentsSetModerationStatusModerationStatus_Rejected,
        ..
      ),

    -- * LiveBroadcastsListBroadcastStatus
    LiveBroadcastsListBroadcastStatus
      ( LiveBroadcastsListBroadcastStatus_BroadcastStatusFilterUnspecified,
        LiveBroadcastsListBroadcastStatus_All,
        LiveBroadcastsListBroadcastStatus_Active,
        LiveBroadcastsListBroadcastStatus_Upcoming,
        LiveBroadcastsListBroadcastStatus_Completed,
        ..
      ),

    -- * LiveBroadcastsListBroadcastType
    LiveBroadcastsListBroadcastType
      ( LiveBroadcastsListBroadcastType_BroadcastTypeFilterUnspecified,
        LiveBroadcastsListBroadcastType_All,
        LiveBroadcastsListBroadcastType_Event,
        LiveBroadcastsListBroadcastType_Persistent,
        ..
      ),

    -- * LiveBroadcastsTransitionBroadcastStatus
    LiveBroadcastsTransitionBroadcastStatus
      ( LiveBroadcastsTransitionBroadcastStatus_StatusUnspecified,
        LiveBroadcastsTransitionBroadcastStatus_Testing,
        LiveBroadcastsTransitionBroadcastStatus_Live,
        LiveBroadcastsTransitionBroadcastStatus_Complete,
        ..
      ),

    -- * LiveChatMessagesTransitionStatus
    LiveChatMessagesTransitionStatus
      ( LiveChatMessagesTransitionStatus_StatusUnspecified,
        LiveChatMessagesTransitionStatus_Closed,
        ..
      ),

    -- * MembersListMode
    MembersListMode
      ( MembersListMode_ListMembersModeUnknown,
        MembersListMode_Updates,
        MembersListMode_AllCurrent,
        ..
      ),

    -- * SearchListChannelType
    SearchListChannelType
      ( SearchListChannelType_ChannelTypeUnspecified,
        SearchListChannelType_Any,
        SearchListChannelType_Show,
        ..
      ),

    -- * SearchListEventType
    SearchListEventType
      ( SearchListEventType_None,
        SearchListEventType_Upcoming,
        SearchListEventType_Live,
        SearchListEventType_Completed,
        ..
      ),

    -- * SearchListOrder
    SearchListOrder
      ( SearchListOrder_SearchSortUnspecified,
        SearchListOrder_Date,
        SearchListOrder_Rating,
        SearchListOrder_ViewCount,
        SearchListOrder_Relevance,
        SearchListOrder_Title,
        SearchListOrder_VideoCount,
        ..
      ),

    -- * SearchListSafeSearch
    SearchListSafeSearch
      ( SearchListSafeSearch_SafeSearchSettingUnspecified,
        SearchListSafeSearch_None,
        SearchListSafeSearch_Moderate,
        SearchListSafeSearch_Strict,
        ..
      ),

    -- * SearchListVideoCaption
    SearchListVideoCaption
      ( SearchListVideoCaption_VideoCaptionUnspecified,
        SearchListVideoCaption_Any,
        SearchListVideoCaption_ClosedCaption,
        SearchListVideoCaption_None,
        ..
      ),

    -- * SearchListVideoDefinition
    SearchListVideoDefinition
      ( SearchListVideoDefinition_Any,
        SearchListVideoDefinition_Standard,
        SearchListVideoDefinition_High,
        ..
      ),

    -- * SearchListVideoDimension
    SearchListVideoDimension
      ( SearchListVideoDimension_Any,
        SearchListVideoDimension_2D,
        SearchListVideoDimension_3D,
        ..
      ),

    -- * SearchListVideoDuration
    SearchListVideoDuration
      ( SearchListVideoDuration_VideoDurationUnspecified,
        SearchListVideoDuration_Any,
        SearchListVideoDuration_Short,
        SearchListVideoDuration_Medium,
        SearchListVideoDuration_Long,
        ..
      ),

    -- * SearchListVideoEmbeddable
    SearchListVideoEmbeddable
      ( SearchListVideoEmbeddable_VideoEmbeddableUnspecified,
        SearchListVideoEmbeddable_Any,
        SearchListVideoEmbeddable_True',
        ..
      ),

    -- * SearchListVideoLicense
    SearchListVideoLicense
      ( SearchListVideoLicense_Any,
        SearchListVideoLicense_Youtube,
        SearchListVideoLicense_CreativeCommon,
        ..
      ),

    -- * SearchListVideoPaidProductPlacement
    SearchListVideoPaidProductPlacement
      ( SearchListVideoPaidProductPlacement_VideoPaidProductPlacementUnspecified,
        SearchListVideoPaidProductPlacement_Any,
        SearchListVideoPaidProductPlacement_True',
        ..
      ),

    -- * SearchListVideoSyndicated
    SearchListVideoSyndicated
      ( SearchListVideoSyndicated_VideoSyndicatedUnspecified,
        SearchListVideoSyndicated_Any,
        SearchListVideoSyndicated_True',
        ..
      ),

    -- * SearchListVideoType
    SearchListVideoType
      ( SearchListVideoType_VideoTypeUnspecified,
        SearchListVideoType_Any,
        SearchListVideoType_Movie,
        SearchListVideoType_Episode,
        ..
      ),

    -- * SubscriptionsListOrder
    SubscriptionsListOrder
      ( SubscriptionsListOrder_SubscriptionOrderUnspecified,
        SubscriptionsListOrder_Relevance,
        SubscriptionsListOrder_Unread,
        SubscriptionsListOrder_Alphabetical,
        ..
      ),

    -- * ThirdPartyLinksDeleteType
    ThirdPartyLinksDeleteType
      ( ThirdPartyLinksDeleteType_LinkUnspecified,
        ThirdPartyLinksDeleteType_ChannelToStoreLink,
        ..
      ),

    -- * ThirdPartyLinksListType
    ThirdPartyLinksListType
      ( ThirdPartyLinksListType_LinkUnspecified,
        ThirdPartyLinksListType_ChannelToStoreLink,
        ..
      ),

    -- * VideosListChart
    VideosListChart
      ( VideosListChart_ChartUnspecified,
        VideosListChart_MostPopular,
        ..
      ),

    -- * VideosListMyRating
    VideosListMyRating
      ( VideosListMyRating_None,
        VideosListMyRating_Like,
        VideosListMyRating_Dislike,
        ..
      ),

    -- * VideosRateRating
    VideosRateRating
      ( VideosRateRating_None,
        VideosRateRating_Like,
        VideosRateRating_Dislike,
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

-- | The type of call-to-action, a message to the user indicating action that can be taken.
newtype ActivityContentDetailsPromotedItem_CtaType = ActivityContentDetailsPromotedItem_CtaType {fromActivityContentDetailsPromotedItem_CtaType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ActivityContentDetailsPromotedItem_CtaType_CtaTypeUnspecified :: ActivityContentDetailsPromotedItem_CtaType
pattern ActivityContentDetailsPromotedItem_CtaType_CtaTypeUnspecified = ActivityContentDetailsPromotedItem_CtaType "ctaTypeUnspecified"

pattern ActivityContentDetailsPromotedItem_CtaType_VisitAdvertiserSite :: ActivityContentDetailsPromotedItem_CtaType
pattern ActivityContentDetailsPromotedItem_CtaType_VisitAdvertiserSite = ActivityContentDetailsPromotedItem_CtaType "visitAdvertiserSite"

{-# COMPLETE
  ActivityContentDetailsPromotedItem_CtaType_CtaTypeUnspecified,
  ActivityContentDetailsPromotedItem_CtaType_VisitAdvertiserSite,
  ActivityContentDetailsPromotedItem_CtaType
  #-}

-- | The reason that the resource is recommended to the user.
newtype ActivityContentDetailsRecommendation_Reason = ActivityContentDetailsRecommendation_Reason {fromActivityContentDetailsRecommendation_Reason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ActivityContentDetailsRecommendation_Reason_ReasonUnspecified :: ActivityContentDetailsRecommendation_Reason
pattern ActivityContentDetailsRecommendation_Reason_ReasonUnspecified = ActivityContentDetailsRecommendation_Reason "reasonUnspecified"

pattern ActivityContentDetailsRecommendation_Reason_VideoFavorited :: ActivityContentDetailsRecommendation_Reason
pattern ActivityContentDetailsRecommendation_Reason_VideoFavorited = ActivityContentDetailsRecommendation_Reason "videoFavorited"

pattern ActivityContentDetailsRecommendation_Reason_VideoLiked :: ActivityContentDetailsRecommendation_Reason
pattern ActivityContentDetailsRecommendation_Reason_VideoLiked = ActivityContentDetailsRecommendation_Reason "videoLiked"

pattern ActivityContentDetailsRecommendation_Reason_VideoWatched :: ActivityContentDetailsRecommendation_Reason
pattern ActivityContentDetailsRecommendation_Reason_VideoWatched = ActivityContentDetailsRecommendation_Reason "videoWatched"

{-# COMPLETE
  ActivityContentDetailsRecommendation_Reason_ReasonUnspecified,
  ActivityContentDetailsRecommendation_Reason_VideoFavorited,
  ActivityContentDetailsRecommendation_Reason_VideoLiked,
  ActivityContentDetailsRecommendation_Reason_VideoWatched,
  ActivityContentDetailsRecommendation_Reason
  #-}

-- | The name of the social network.
newtype ActivityContentDetailsSocial_Type = ActivityContentDetailsSocial_Type {fromActivityContentDetailsSocial_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ActivityContentDetailsSocial_Type_Unspecified :: ActivityContentDetailsSocial_Type
pattern ActivityContentDetailsSocial_Type_Unspecified = ActivityContentDetailsSocial_Type "unspecified"

pattern ActivityContentDetailsSocial_Type_GooglePlus :: ActivityContentDetailsSocial_Type
pattern ActivityContentDetailsSocial_Type_GooglePlus = ActivityContentDetailsSocial_Type "googlePlus"

pattern ActivityContentDetailsSocial_Type_Facebook :: ActivityContentDetailsSocial_Type
pattern ActivityContentDetailsSocial_Type_Facebook = ActivityContentDetailsSocial_Type "facebook"

pattern ActivityContentDetailsSocial_Type_Twitter :: ActivityContentDetailsSocial_Type
pattern ActivityContentDetailsSocial_Type_Twitter = ActivityContentDetailsSocial_Type "twitter"

{-# COMPLETE
  ActivityContentDetailsSocial_Type_Unspecified,
  ActivityContentDetailsSocial_Type_GooglePlus,
  ActivityContentDetailsSocial_Type_Facebook,
  ActivityContentDetailsSocial_Type_Twitter,
  ActivityContentDetailsSocial_Type
  #-}

-- | The type of activity that the resource describes.
newtype ActivitySnippet_Type = ActivitySnippet_Type {fromActivitySnippet_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ActivitySnippet_Type_TypeUnspecified :: ActivitySnippet_Type
pattern ActivitySnippet_Type_TypeUnspecified = ActivitySnippet_Type "typeUnspecified"

pattern ActivitySnippet_Type_Upload :: ActivitySnippet_Type
pattern ActivitySnippet_Type_Upload = ActivitySnippet_Type "upload"

pattern ActivitySnippet_Type_Like :: ActivitySnippet_Type
pattern ActivitySnippet_Type_Like = ActivitySnippet_Type "like"

pattern ActivitySnippet_Type_Favorite :: ActivitySnippet_Type
pattern ActivitySnippet_Type_Favorite = ActivitySnippet_Type "favorite"

pattern ActivitySnippet_Type_Comment :: ActivitySnippet_Type
pattern ActivitySnippet_Type_Comment = ActivitySnippet_Type "comment"

pattern ActivitySnippet_Type_Subscription :: ActivitySnippet_Type
pattern ActivitySnippet_Type_Subscription = ActivitySnippet_Type "subscription"

pattern ActivitySnippet_Type_PlaylistItem :: ActivitySnippet_Type
pattern ActivitySnippet_Type_PlaylistItem = ActivitySnippet_Type "playlistItem"

pattern ActivitySnippet_Type_Recommendation :: ActivitySnippet_Type
pattern ActivitySnippet_Type_Recommendation = ActivitySnippet_Type "recommendation"

pattern ActivitySnippet_Type_Bulletin :: ActivitySnippet_Type
pattern ActivitySnippet_Type_Bulletin = ActivitySnippet_Type "bulletin"

pattern ActivitySnippet_Type_Social :: ActivitySnippet_Type
pattern ActivitySnippet_Type_Social = ActivitySnippet_Type "social"

pattern ActivitySnippet_Type_ChannelItem :: ActivitySnippet_Type
pattern ActivitySnippet_Type_ChannelItem = ActivitySnippet_Type "channelItem"

pattern ActivitySnippet_Type_PromotedItem :: ActivitySnippet_Type
pattern ActivitySnippet_Type_PromotedItem = ActivitySnippet_Type "promotedItem"

{-# COMPLETE
  ActivitySnippet_Type_TypeUnspecified,
  ActivitySnippet_Type_Upload,
  ActivitySnippet_Type_Like,
  ActivitySnippet_Type_Favorite,
  ActivitySnippet_Type_Comment,
  ActivitySnippet_Type_Subscription,
  ActivitySnippet_Type_PlaylistItem,
  ActivitySnippet_Type_Recommendation,
  ActivitySnippet_Type_Bulletin,
  ActivitySnippet_Type_Social,
  ActivitySnippet_Type_ChannelItem,
  ActivitySnippet_Type_PromotedItem,
  ActivitySnippet_Type
  #-}

-- | The type of audio track associated with the caption track.
newtype CaptionSnippet_AudioTrackType = CaptionSnippet_AudioTrackType {fromCaptionSnippet_AudioTrackType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CaptionSnippet_AudioTrackType_Unknown :: CaptionSnippet_AudioTrackType
pattern CaptionSnippet_AudioTrackType_Unknown = CaptionSnippet_AudioTrackType "unknown"

pattern CaptionSnippet_AudioTrackType_Primary :: CaptionSnippet_AudioTrackType
pattern CaptionSnippet_AudioTrackType_Primary = CaptionSnippet_AudioTrackType "primary"

pattern CaptionSnippet_AudioTrackType_Commentary :: CaptionSnippet_AudioTrackType
pattern CaptionSnippet_AudioTrackType_Commentary = CaptionSnippet_AudioTrackType "commentary"

pattern CaptionSnippet_AudioTrackType_Descriptive :: CaptionSnippet_AudioTrackType
pattern CaptionSnippet_AudioTrackType_Descriptive = CaptionSnippet_AudioTrackType "descriptive"

{-# COMPLETE
  CaptionSnippet_AudioTrackType_Unknown,
  CaptionSnippet_AudioTrackType_Primary,
  CaptionSnippet_AudioTrackType_Commentary,
  CaptionSnippet_AudioTrackType_Descriptive,
  CaptionSnippet_AudioTrackType
  #-}

-- | The reason that YouTube failed to process the caption track. This property is only present if the state property\'s value is failed.
newtype CaptionSnippet_FailureReason = CaptionSnippet_FailureReason {fromCaptionSnippet_FailureReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CaptionSnippet_FailureReason_UnknownFormat :: CaptionSnippet_FailureReason
pattern CaptionSnippet_FailureReason_UnknownFormat = CaptionSnippet_FailureReason "unknownFormat"

pattern CaptionSnippet_FailureReason_UnsupportedFormat :: CaptionSnippet_FailureReason
pattern CaptionSnippet_FailureReason_UnsupportedFormat = CaptionSnippet_FailureReason "unsupportedFormat"

pattern CaptionSnippet_FailureReason_ProcessingFailed :: CaptionSnippet_FailureReason
pattern CaptionSnippet_FailureReason_ProcessingFailed = CaptionSnippet_FailureReason "processingFailed"

{-# COMPLETE
  CaptionSnippet_FailureReason_UnknownFormat,
  CaptionSnippet_FailureReason_UnsupportedFormat,
  CaptionSnippet_FailureReason_ProcessingFailed,
  CaptionSnippet_FailureReason
  #-}

-- | The caption track\'s status.
newtype CaptionSnippet_Status = CaptionSnippet_Status {fromCaptionSnippet_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CaptionSnippet_Status_Serving :: CaptionSnippet_Status
pattern CaptionSnippet_Status_Serving = CaptionSnippet_Status "serving"

pattern CaptionSnippet_Status_Syncing :: CaptionSnippet_Status
pattern CaptionSnippet_Status_Syncing = CaptionSnippet_Status "syncing"

pattern CaptionSnippet_Status_Failed :: CaptionSnippet_Status
pattern CaptionSnippet_Status_Failed = CaptionSnippet_Status "failed"

{-# COMPLETE
  CaptionSnippet_Status_Serving,
  CaptionSnippet_Status_Syncing,
  CaptionSnippet_Status_Failed,
  CaptionSnippet_Status
  #-}

-- | The caption track\'s type.
newtype CaptionSnippet_TrackKind = CaptionSnippet_TrackKind {fromCaptionSnippet_TrackKind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CaptionSnippet_TrackKind_Standard :: CaptionSnippet_TrackKind
pattern CaptionSnippet_TrackKind_Standard = CaptionSnippet_TrackKind "standard"

pattern CaptionSnippet_TrackKind_Asr :: CaptionSnippet_TrackKind
pattern CaptionSnippet_TrackKind_Asr = CaptionSnippet_TrackKind "ASR"

pattern CaptionSnippet_TrackKind_Forced :: CaptionSnippet_TrackKind
pattern CaptionSnippet_TrackKind_Forced = CaptionSnippet_TrackKind "forced"

{-# COMPLETE
  CaptionSnippet_TrackKind_Standard,
  CaptionSnippet_TrackKind_Asr,
  CaptionSnippet_TrackKind_Forced,
  CaptionSnippet_TrackKind
  #-}

-- | The frame rate of the inbound video data.
newtype CdnSettings_FrameRate = CdnSettings_FrameRate {fromCdnSettings_FrameRate :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CdnSettings_FrameRate_30fps :: CdnSettings_FrameRate
pattern CdnSettings_FrameRate_30fps = CdnSettings_FrameRate "30fps"

pattern CdnSettings_FrameRate_60fps :: CdnSettings_FrameRate
pattern CdnSettings_FrameRate_60fps = CdnSettings_FrameRate "60fps"

pattern CdnSettings_FrameRate_Variable :: CdnSettings_FrameRate
pattern CdnSettings_FrameRate_Variable = CdnSettings_FrameRate "variable"

{-# COMPLETE
  CdnSettings_FrameRate_30fps,
  CdnSettings_FrameRate_60fps,
  CdnSettings_FrameRate_Variable,
  CdnSettings_FrameRate
  #-}

-- | The method or protocol used to transmit the video stream.
newtype CdnSettings_IngestionType = CdnSettings_IngestionType {fromCdnSettings_IngestionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CdnSettings_IngestionType_Rtmp :: CdnSettings_IngestionType
pattern CdnSettings_IngestionType_Rtmp = CdnSettings_IngestionType "rtmp"

pattern CdnSettings_IngestionType_Dash :: CdnSettings_IngestionType
pattern CdnSettings_IngestionType_Dash = CdnSettings_IngestionType "dash"

pattern CdnSettings_IngestionType_Webrtc :: CdnSettings_IngestionType
pattern CdnSettings_IngestionType_Webrtc = CdnSettings_IngestionType "webrtc"

pattern CdnSettings_IngestionType_Hls :: CdnSettings_IngestionType
pattern CdnSettings_IngestionType_Hls = CdnSettings_IngestionType "hls"

{-# COMPLETE
  CdnSettings_IngestionType_Rtmp,
  CdnSettings_IngestionType_Dash,
  CdnSettings_IngestionType_Webrtc,
  CdnSettings_IngestionType_Hls,
  CdnSettings_IngestionType
  #-}

-- | The resolution of the inbound video data.
newtype CdnSettings_Resolution = CdnSettings_Resolution {fromCdnSettings_Resolution :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CdnSettings_Resolution_240p :: CdnSettings_Resolution
pattern CdnSettings_Resolution_240p = CdnSettings_Resolution "240p"

pattern CdnSettings_Resolution_360p :: CdnSettings_Resolution
pattern CdnSettings_Resolution_360p = CdnSettings_Resolution "360p"

pattern CdnSettings_Resolution_480p :: CdnSettings_Resolution
pattern CdnSettings_Resolution_480p = CdnSettings_Resolution "480p"

pattern CdnSettings_Resolution_720p :: CdnSettings_Resolution
pattern CdnSettings_Resolution_720p = CdnSettings_Resolution "720p"

pattern CdnSettings_Resolution_1080p :: CdnSettings_Resolution
pattern CdnSettings_Resolution_1080p = CdnSettings_Resolution "1080p"

pattern CdnSettings_Resolution_1440p :: CdnSettings_Resolution
pattern CdnSettings_Resolution_1440p = CdnSettings_Resolution "1440p"

pattern CdnSettings_Resolution_2160p :: CdnSettings_Resolution
pattern CdnSettings_Resolution_2160p = CdnSettings_Resolution "2160p"

pattern CdnSettings_Resolution_Variable :: CdnSettings_Resolution
pattern CdnSettings_Resolution_Variable = CdnSettings_Resolution "variable"

{-# COMPLETE
  CdnSettings_Resolution_240p,
  CdnSettings_Resolution_360p,
  CdnSettings_Resolution_480p,
  CdnSettings_Resolution_720p,
  CdnSettings_Resolution_1080p,
  CdnSettings_Resolution_1440p,
  CdnSettings_Resolution_2160p,
  CdnSettings_Resolution_Variable,
  CdnSettings_Resolution
  #-}

-- | Defines the context of the ping.
newtype ChannelConversionPing_Context = ChannelConversionPing_Context {fromChannelConversionPing_Context :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ChannelConversionPing_Context_Subscribe :: ChannelConversionPing_Context
pattern ChannelConversionPing_Context_Subscribe = ChannelConversionPing_Context "subscribe"

pattern ChannelConversionPing_Context_Unsubscribe :: ChannelConversionPing_Context
pattern ChannelConversionPing_Context_Unsubscribe = ChannelConversionPing_Context "unsubscribe"

pattern ChannelConversionPing_Context_Cview :: ChannelConversionPing_Context
pattern ChannelConversionPing_Context_Cview = ChannelConversionPing_Context "cview"

{-# COMPLETE
  ChannelConversionPing_Context_Subscribe,
  ChannelConversionPing_Context_Unsubscribe,
  ChannelConversionPing_Context_Cview,
  ChannelConversionPing_Context
  #-}

-- | The style of the channel section.
newtype ChannelSectionSnippet_Style = ChannelSectionSnippet_Style {fromChannelSectionSnippet_Style :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ChannelSectionSnippet_Style_ChannelsectionStyleUnspecified :: ChannelSectionSnippet_Style
pattern ChannelSectionSnippet_Style_ChannelsectionStyleUnspecified = ChannelSectionSnippet_Style "channelsectionStyleUnspecified"

pattern ChannelSectionSnippet_Style_HorizontalRow :: ChannelSectionSnippet_Style
pattern ChannelSectionSnippet_Style_HorizontalRow = ChannelSectionSnippet_Style "horizontalRow"

pattern ChannelSectionSnippet_Style_VerticalList :: ChannelSectionSnippet_Style
pattern ChannelSectionSnippet_Style_VerticalList = ChannelSectionSnippet_Style "verticalList"

{-# COMPLETE
  ChannelSectionSnippet_Style_ChannelsectionStyleUnspecified,
  ChannelSectionSnippet_Style_HorizontalRow,
  ChannelSectionSnippet_Style_VerticalList,
  ChannelSectionSnippet_Style
  #-}

-- | The type of the channel section.
newtype ChannelSectionSnippet_Type = ChannelSectionSnippet_Type {fromChannelSectionSnippet_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ChannelSectionSnippet_Type_ChannelsectionTypeUndefined :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_ChannelsectionTypeUndefined = ChannelSectionSnippet_Type "channelsectionTypeUndefined"

pattern ChannelSectionSnippet_Type_SinglePlaylist :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_SinglePlaylist = ChannelSectionSnippet_Type "singlePlaylist"

pattern ChannelSectionSnippet_Type_MultiplePlaylists :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_MultiplePlaylists = ChannelSectionSnippet_Type "multiplePlaylists"

pattern ChannelSectionSnippet_Type_PopularUploads :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_PopularUploads = ChannelSectionSnippet_Type "popularUploads"

pattern ChannelSectionSnippet_Type_RecentUploads :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_RecentUploads = ChannelSectionSnippet_Type "recentUploads"

pattern ChannelSectionSnippet_Type_Likes :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_Likes = ChannelSectionSnippet_Type "likes"

pattern ChannelSectionSnippet_Type_AllPlaylists :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_AllPlaylists = ChannelSectionSnippet_Type "allPlaylists"

pattern ChannelSectionSnippet_Type_LikedPlaylists :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_LikedPlaylists = ChannelSectionSnippet_Type "likedPlaylists"

pattern ChannelSectionSnippet_Type_RecentPosts :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_RecentPosts = ChannelSectionSnippet_Type "recentPosts"

pattern ChannelSectionSnippet_Type_RecentActivity :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_RecentActivity = ChannelSectionSnippet_Type "recentActivity"

pattern ChannelSectionSnippet_Type_LiveEvents :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_LiveEvents = ChannelSectionSnippet_Type "liveEvents"

pattern ChannelSectionSnippet_Type_UpcomingEvents :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_UpcomingEvents = ChannelSectionSnippet_Type "upcomingEvents"

pattern ChannelSectionSnippet_Type_CompletedEvents :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_CompletedEvents = ChannelSectionSnippet_Type "completedEvents"

pattern ChannelSectionSnippet_Type_MultipleChannels :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_MultipleChannels = ChannelSectionSnippet_Type "multipleChannels"

pattern ChannelSectionSnippet_Type_PostedVideos :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_PostedVideos = ChannelSectionSnippet_Type "postedVideos"

pattern ChannelSectionSnippet_Type_PostedPlaylists :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_PostedPlaylists = ChannelSectionSnippet_Type "postedPlaylists"

pattern ChannelSectionSnippet_Type_Subscriptions :: ChannelSectionSnippet_Type
pattern ChannelSectionSnippet_Type_Subscriptions = ChannelSectionSnippet_Type "subscriptions"

{-# COMPLETE
  ChannelSectionSnippet_Type_ChannelsectionTypeUndefined,
  ChannelSectionSnippet_Type_SinglePlaylist,
  ChannelSectionSnippet_Type_MultiplePlaylists,
  ChannelSectionSnippet_Type_PopularUploads,
  ChannelSectionSnippet_Type_RecentUploads,
  ChannelSectionSnippet_Type_Likes,
  ChannelSectionSnippet_Type_AllPlaylists,
  ChannelSectionSnippet_Type_LikedPlaylists,
  ChannelSectionSnippet_Type_RecentPosts,
  ChannelSectionSnippet_Type_RecentActivity,
  ChannelSectionSnippet_Type_LiveEvents,
  ChannelSectionSnippet_Type_UpcomingEvents,
  ChannelSectionSnippet_Type_CompletedEvents,
  ChannelSectionSnippet_Type_MultipleChannels,
  ChannelSectionSnippet_Type_PostedVideos,
  ChannelSectionSnippet_Type_PostedPlaylists,
  ChannelSectionSnippet_Type_Subscriptions,
  ChannelSectionSnippet_Type
  #-}

-- | The long uploads status of this channel. See https:\/\/support.google.com\/youtube\/answer\/71673 for more information.
newtype ChannelStatus_LongUploadsStatus = ChannelStatus_LongUploadsStatus {fromChannelStatus_LongUploadsStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ChannelStatus_LongUploadsStatus_LongUploadsUnspecified :: ChannelStatus_LongUploadsStatus
pattern ChannelStatus_LongUploadsStatus_LongUploadsUnspecified = ChannelStatus_LongUploadsStatus "longUploadsUnspecified"

pattern ChannelStatus_LongUploadsStatus_Allowed :: ChannelStatus_LongUploadsStatus
pattern ChannelStatus_LongUploadsStatus_Allowed = ChannelStatus_LongUploadsStatus "allowed"

pattern ChannelStatus_LongUploadsStatus_Eligible :: ChannelStatus_LongUploadsStatus
pattern ChannelStatus_LongUploadsStatus_Eligible = ChannelStatus_LongUploadsStatus "eligible"

pattern ChannelStatus_LongUploadsStatus_Disallowed :: ChannelStatus_LongUploadsStatus
pattern ChannelStatus_LongUploadsStatus_Disallowed = ChannelStatus_LongUploadsStatus "disallowed"

{-# COMPLETE
  ChannelStatus_LongUploadsStatus_LongUploadsUnspecified,
  ChannelStatus_LongUploadsStatus_Allowed,
  ChannelStatus_LongUploadsStatus_Eligible,
  ChannelStatus_LongUploadsStatus_Disallowed,
  ChannelStatus_LongUploadsStatus
  #-}

-- | Privacy status of the channel.
newtype ChannelStatus_PrivacyStatus = ChannelStatus_PrivacyStatus {fromChannelStatus_PrivacyStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ChannelStatus_PrivacyStatus_Public :: ChannelStatus_PrivacyStatus
pattern ChannelStatus_PrivacyStatus_Public = ChannelStatus_PrivacyStatus "public"

pattern ChannelStatus_PrivacyStatus_Unlisted :: ChannelStatus_PrivacyStatus
pattern ChannelStatus_PrivacyStatus_Unlisted = ChannelStatus_PrivacyStatus "unlisted"

pattern ChannelStatus_PrivacyStatus_Private :: ChannelStatus_PrivacyStatus
pattern ChannelStatus_PrivacyStatus_Private = ChannelStatus_PrivacyStatus "private"

{-# COMPLETE
  ChannelStatus_PrivacyStatus_Public,
  ChannelStatus_PrivacyStatus_Unlisted,
  ChannelStatus_PrivacyStatus_Private,
  ChannelStatus_PrivacyStatus
  #-}

-- | The current billing profile status.
newtype ChannelToStoreLinkDetailsBillingDetails_BillingStatus = ChannelToStoreLinkDetailsBillingDetails_BillingStatus {fromChannelToStoreLinkDetailsBillingDetails_BillingStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusUnspecified :: ChannelToStoreLinkDetailsBillingDetails_BillingStatus
pattern ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusUnspecified = ChannelToStoreLinkDetailsBillingDetails_BillingStatus "billingStatusUnspecified"

pattern ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusPending :: ChannelToStoreLinkDetailsBillingDetails_BillingStatus
pattern ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusPending = ChannelToStoreLinkDetailsBillingDetails_BillingStatus "billingStatusPending"

pattern ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusActive :: ChannelToStoreLinkDetailsBillingDetails_BillingStatus
pattern ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusActive = ChannelToStoreLinkDetailsBillingDetails_BillingStatus "billingStatusActive"

pattern ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusInactive :: ChannelToStoreLinkDetailsBillingDetails_BillingStatus
pattern ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusInactive = ChannelToStoreLinkDetailsBillingDetails_BillingStatus "billingStatusInactive"

{-# COMPLETE
  ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusUnspecified,
  ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusPending,
  ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusActive,
  ChannelToStoreLinkDetailsBillingDetails_BillingStatus_BillingStatusInactive,
  ChannelToStoreLinkDetailsBillingDetails_BillingStatus
  #-}

-- | The current merchant affiliate program status.
newtype ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status = ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status {fromChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified status.
pattern ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusUnspecified :: ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status
pattern ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusUnspecified = ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status "merchantAffiliateProgramStatusUnspecified"

-- | Merchant is eligible for the merchant affiliate program.
pattern ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusEligible :: ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status
pattern ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusEligible = ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status "merchantAffiliateProgramStatusEligible"

-- | Merchant affiliate program is active.
pattern ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusActive :: ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status
pattern ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusActive = ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status "merchantAffiliateProgramStatusActive"

-- | Merchant affiliate program is paused.
pattern ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusPaused :: ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status
pattern ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusPaused = ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status "merchantAffiliateProgramStatusPaused"

{-# COMPLETE
  ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusUnspecified,
  ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusEligible,
  ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusActive,
  ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status_MerchantAffiliateProgramStatusPaused,
  ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status
  #-}

-- | The comment\'s moderation status. Will not be set if the comments were requested through the id filter.
newtype CommentSnippet_ModerationStatus = CommentSnippet_ModerationStatus {fromCommentSnippet_ModerationStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The comment is available for public display.
pattern CommentSnippet_ModerationStatus_Published :: CommentSnippet_ModerationStatus
pattern CommentSnippet_ModerationStatus_Published = CommentSnippet_ModerationStatus "published"

-- | The comment is awaiting review by a moderator.
pattern CommentSnippet_ModerationStatus_HeldForReview :: CommentSnippet_ModerationStatus
pattern CommentSnippet_ModerationStatus_HeldForReview = CommentSnippet_ModerationStatus "heldForReview"

pattern CommentSnippet_ModerationStatus_LikelySpam :: CommentSnippet_ModerationStatus
pattern CommentSnippet_ModerationStatus_LikelySpam = CommentSnippet_ModerationStatus "likelySpam"

-- | The comment is unfit for display.
pattern CommentSnippet_ModerationStatus_Rejected :: CommentSnippet_ModerationStatus
pattern CommentSnippet_ModerationStatus_Rejected = CommentSnippet_ModerationStatus "rejected"

{-# COMPLETE
  CommentSnippet_ModerationStatus_Published,
  CommentSnippet_ModerationStatus_HeldForReview,
  CommentSnippet_ModerationStatus_LikelySpam,
  CommentSnippet_ModerationStatus_Rejected,
  CommentSnippet_ModerationStatus
  #-}

-- | The rating the viewer has given to this comment. For the time being this will never return RATE/TYPE/DISLIKE and instead return RATE/TYPE/NONE. This may change in the future.
newtype CommentSnippet_ViewerRating = CommentSnippet_ViewerRating {fromCommentSnippet_ViewerRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CommentSnippet_ViewerRating_None :: CommentSnippet_ViewerRating
pattern CommentSnippet_ViewerRating_None = CommentSnippet_ViewerRating "none"

-- | The entity is liked.
pattern CommentSnippet_ViewerRating_Like :: CommentSnippet_ViewerRating
pattern CommentSnippet_ViewerRating_Like = CommentSnippet_ViewerRating "like"

-- | The entity is disliked.
pattern CommentSnippet_ViewerRating_Dislike :: CommentSnippet_ViewerRating
pattern CommentSnippet_ViewerRating_Dislike = CommentSnippet_ViewerRating "dislike"

{-# COMPLETE
  CommentSnippet_ViewerRating_None,
  CommentSnippet_ViewerRating_Like,
  CommentSnippet_ViewerRating_Dislike,
  CommentSnippet_ViewerRating
  #-}

-- | The video\'s Australian Classification Board (ACB) or Australian Communications and Media Authority (ACMA) rating. ACMA ratings are used to classify children\'s television programming.
newtype ContentRating_AcbRating = ContentRating_AcbRating {fromContentRating_AcbRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_AcbRating_AcbUnspecified :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbUnspecified = ContentRating_AcbRating "acbUnspecified"

-- | E
pattern ContentRating_AcbRating_AcbE :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbE = ContentRating_AcbRating "acbE"

-- | Programs that have been given a P classification by the Australian Communications and Media Authority. These programs are intended for preschool children.
pattern ContentRating_AcbRating_AcbP :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbP = ContentRating_AcbRating "acbP"

-- | Programs that have been given a C classification by the Australian Communications and Media Authority. These programs are intended for children (other than preschool children) who are younger than 14 years of age.
pattern ContentRating_AcbRating_AcbC :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbC = ContentRating_AcbRating "acbC"

-- | G
pattern ContentRating_AcbRating_AcbG :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbG = ContentRating_AcbRating "acbG"

-- | PG
pattern ContentRating_AcbRating_AcbPg :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbPg = ContentRating_AcbRating "acbPg"

-- | M
pattern ContentRating_AcbRating_AcbM :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbM = ContentRating_AcbRating "acbM"

-- | MA15+
pattern ContentRating_AcbRating_AcbMa15plus :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbMa15plus = ContentRating_AcbRating "acbMa15plus"

-- | R18+
pattern ContentRating_AcbRating_AcbR18plus :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbR18plus = ContentRating_AcbRating "acbR18plus"

pattern ContentRating_AcbRating_AcbUnrated :: ContentRating_AcbRating
pattern ContentRating_AcbRating_AcbUnrated = ContentRating_AcbRating "acbUnrated"

{-# COMPLETE
  ContentRating_AcbRating_AcbUnspecified,
  ContentRating_AcbRating_AcbE,
  ContentRating_AcbRating_AcbP,
  ContentRating_AcbRating_AcbC,
  ContentRating_AcbRating_AcbG,
  ContentRating_AcbRating_AcbPg,
  ContentRating_AcbRating_AcbM,
  ContentRating_AcbRating_AcbMa15plus,
  ContentRating_AcbRating_AcbR18plus,
  ContentRating_AcbRating_AcbUnrated,
  ContentRating_AcbRating
  #-}

-- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle Comunicazioni (AGCOM).
newtype ContentRating_AgcomRating = ContentRating_AgcomRating {fromContentRating_AgcomRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_AgcomRating_AgcomUnspecified :: ContentRating_AgcomRating
pattern ContentRating_AgcomRating_AgcomUnspecified = ContentRating_AgcomRating "agcomUnspecified"

-- | T
pattern ContentRating_AgcomRating_AgcomT :: ContentRating_AgcomRating
pattern ContentRating_AgcomRating_AgcomT = ContentRating_AgcomRating "agcomT"

-- | VM14
pattern ContentRating_AgcomRating_AGCOMVM14 :: ContentRating_AgcomRating
pattern ContentRating_AgcomRating_AGCOMVM14 = ContentRating_AgcomRating "agcomVm14"

-- | VM18
pattern ContentRating_AgcomRating_AGCOMVM18 :: ContentRating_AgcomRating
pattern ContentRating_AgcomRating_AGCOMVM18 = ContentRating_AgcomRating "agcomVm18"

pattern ContentRating_AgcomRating_AgcomUnrated :: ContentRating_AgcomRating
pattern ContentRating_AgcomRating_AgcomUnrated = ContentRating_AgcomRating "agcomUnrated"

{-# COMPLETE
  ContentRating_AgcomRating_AgcomUnspecified,
  ContentRating_AgcomRating_AgcomT,
  ContentRating_AgcomRating_AGCOMVM14,
  ContentRating_AgcomRating_AGCOMVM18,
  ContentRating_AgcomRating_AgcomUnrated,
  ContentRating_AgcomRating
  #-}

-- | The video\'s Anatel (Asociación Nacional de Televisión) rating for Chilean television.
newtype ContentRating_AnatelRating = ContentRating_AnatelRating {fromContentRating_AnatelRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_AnatelRating_AnatelUnspecified :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_AnatelUnspecified = ContentRating_AnatelRating "anatelUnspecified"

-- | F
pattern ContentRating_AnatelRating_AnatelF :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_AnatelF = ContentRating_AnatelRating "anatelF"

-- | I
pattern ContentRating_AnatelRating_AnatelI :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_AnatelI = ContentRating_AnatelRating "anatelI"

-- | I-7
pattern ContentRating_AnatelRating_ANATELI7 :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_ANATELI7 = ContentRating_AnatelRating "anatelI7"

-- | I-10
pattern ContentRating_AnatelRating_ANATELI10 :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_ANATELI10 = ContentRating_AnatelRating "anatelI10"

-- | I-12
pattern ContentRating_AnatelRating_ANATELI12 :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_ANATELI12 = ContentRating_AnatelRating "anatelI12"

-- | R
pattern ContentRating_AnatelRating_AnatelR :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_AnatelR = ContentRating_AnatelRating "anatelR"

-- | A
pattern ContentRating_AnatelRating_AnatelA :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_AnatelA = ContentRating_AnatelRating "anatelA"

pattern ContentRating_AnatelRating_AnatelUnrated :: ContentRating_AnatelRating
pattern ContentRating_AnatelRating_AnatelUnrated = ContentRating_AnatelRating "anatelUnrated"

{-# COMPLETE
  ContentRating_AnatelRating_AnatelUnspecified,
  ContentRating_AnatelRating_AnatelF,
  ContentRating_AnatelRating_AnatelI,
  ContentRating_AnatelRating_ANATELI7,
  ContentRating_AnatelRating_ANATELI10,
  ContentRating_AnatelRating_ANATELI12,
  ContentRating_AnatelRating_AnatelR,
  ContentRating_AnatelRating_AnatelA,
  ContentRating_AnatelRating_AnatelUnrated,
  ContentRating_AnatelRating
  #-}

-- | The video\'s British Board of Film Classification (BBFC) rating.
newtype ContentRating_BbfcRating = ContentRating_BbfcRating {fromContentRating_BbfcRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_BbfcRating_BbfcUnspecified :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_BbfcUnspecified = ContentRating_BbfcRating "bbfcUnspecified"

-- | U
pattern ContentRating_BbfcRating_BbfcU :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_BbfcU = ContentRating_BbfcRating "bbfcU"

-- | PG
pattern ContentRating_BbfcRating_BbfcPg :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_BbfcPg = ContentRating_BbfcRating "bbfcPg"

-- | 12A
pattern ContentRating_BbfcRating_Bbfc12a :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_Bbfc12a = ContentRating_BbfcRating "bbfc12a"

-- | 12
pattern ContentRating_BbfcRating_BBFC12 :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_BBFC12 = ContentRating_BbfcRating "bbfc12"

-- | 15
pattern ContentRating_BbfcRating_BBFC15 :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_BBFC15 = ContentRating_BbfcRating "bbfc15"

-- | 18
pattern ContentRating_BbfcRating_BBFC18 :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_BBFC18 = ContentRating_BbfcRating "bbfc18"

-- | R18
pattern ContentRating_BbfcRating_BBFCR18 :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_BBFCR18 = ContentRating_BbfcRating "bbfcR18"

pattern ContentRating_BbfcRating_BbfcUnrated :: ContentRating_BbfcRating
pattern ContentRating_BbfcRating_BbfcUnrated = ContentRating_BbfcRating "bbfcUnrated"

{-# COMPLETE
  ContentRating_BbfcRating_BbfcUnspecified,
  ContentRating_BbfcRating_BbfcU,
  ContentRating_BbfcRating_BbfcPg,
  ContentRating_BbfcRating_Bbfc12a,
  ContentRating_BbfcRating_BBFC12,
  ContentRating_BbfcRating_BBFC15,
  ContentRating_BbfcRating_BBFC18,
  ContentRating_BbfcRating_BBFCR18,
  ContentRating_BbfcRating_BbfcUnrated,
  ContentRating_BbfcRating
  #-}

-- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
newtype ContentRating_BfvcRating = ContentRating_BfvcRating {fromContentRating_BfvcRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_BfvcRating_BfvcUnspecified :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BfvcUnspecified = ContentRating_BfvcRating "bfvcUnspecified"

-- | G
pattern ContentRating_BfvcRating_BfvcG :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BfvcG = ContentRating_BfvcRating "bfvcG"

-- | E
pattern ContentRating_BfvcRating_BfvcE :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BfvcE = ContentRating_BfvcRating "bfvcE"

-- | 13
pattern ContentRating_BfvcRating_BFVC13 :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BFVC13 = ContentRating_BfvcRating "bfvc13"

-- | 15
pattern ContentRating_BfvcRating_BFVC15 :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BFVC15 = ContentRating_BfvcRating "bfvc15"

-- | 18
pattern ContentRating_BfvcRating_BFVC18 :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BFVC18 = ContentRating_BfvcRating "bfvc18"

-- | 20
pattern ContentRating_BfvcRating_BFVC20 :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BFVC20 = ContentRating_BfvcRating "bfvc20"

-- | B
pattern ContentRating_BfvcRating_BfvcB :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BfvcB = ContentRating_BfvcRating "bfvcB"

pattern ContentRating_BfvcRating_BfvcUnrated :: ContentRating_BfvcRating
pattern ContentRating_BfvcRating_BfvcUnrated = ContentRating_BfvcRating "bfvcUnrated"

{-# COMPLETE
  ContentRating_BfvcRating_BfvcUnspecified,
  ContentRating_BfvcRating_BfvcG,
  ContentRating_BfvcRating_BfvcE,
  ContentRating_BfvcRating_BFVC13,
  ContentRating_BfvcRating_BFVC15,
  ContentRating_BfvcRating_BFVC18,
  ContentRating_BfvcRating_BFVC20,
  ContentRating_BfvcRating_BfvcB,
  ContentRating_BfvcRating_BfvcUnrated,
  ContentRating_BfvcRating
  #-}

-- | The video\'s rating from the Austrian Board of Media Classification (Bundesministerium für Unterricht, Kunst und Kultur).
newtype ContentRating_BmukkRating = ContentRating_BmukkRating {fromContentRating_BmukkRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_BmukkRating_BmukkUnspecified :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BmukkUnspecified = ContentRating_BmukkRating "bmukkUnspecified"

-- | Unrestricted
pattern ContentRating_BmukkRating_BmukkAa :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BmukkAa = ContentRating_BmukkRating "bmukkAa"

-- | 6+
pattern ContentRating_BmukkRating_BMUKK6 :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BMUKK6 = ContentRating_BmukkRating "bmukk6"

-- | 8+
pattern ContentRating_BmukkRating_BMUKK8 :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BMUKK8 = ContentRating_BmukkRating "bmukk8"

-- | 10+
pattern ContentRating_BmukkRating_BMUKK10 :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BMUKK10 = ContentRating_BmukkRating "bmukk10"

-- | 12+
pattern ContentRating_BmukkRating_BMUKK12 :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BMUKK12 = ContentRating_BmukkRating "bmukk12"

-- | 14+
pattern ContentRating_BmukkRating_BMUKK14 :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BMUKK14 = ContentRating_BmukkRating "bmukk14"

-- | 16+
pattern ContentRating_BmukkRating_BMUKK16 :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BMUKK16 = ContentRating_BmukkRating "bmukk16"

pattern ContentRating_BmukkRating_BmukkUnrated :: ContentRating_BmukkRating
pattern ContentRating_BmukkRating_BmukkUnrated = ContentRating_BmukkRating "bmukkUnrated"

{-# COMPLETE
  ContentRating_BmukkRating_BmukkUnspecified,
  ContentRating_BmukkRating_BmukkAa,
  ContentRating_BmukkRating_BMUKK6,
  ContentRating_BmukkRating_BMUKK8,
  ContentRating_BmukkRating_BMUKK10,
  ContentRating_BmukkRating_BMUKK12,
  ContentRating_BmukkRating_BMUKK14,
  ContentRating_BmukkRating_BMUKK16,
  ContentRating_BmukkRating_BmukkUnrated,
  ContentRating_BmukkRating
  #-}

-- | Rating system for Canadian TV - Canadian TV Classification System The video\'s rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian English-language broadcasts. For more information, see the Canadian Broadcast Standards Council website.
newtype ContentRating_CatvRating = ContentRating_CatvRating {fromContentRating_CatvRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CatvRating_CatvUnspecified :: ContentRating_CatvRating
pattern ContentRating_CatvRating_CatvUnspecified = ContentRating_CatvRating "catvUnspecified"

-- | C
pattern ContentRating_CatvRating_CatvC :: ContentRating_CatvRating
pattern ContentRating_CatvRating_CatvC = ContentRating_CatvRating "catvC"

-- | C8
pattern ContentRating_CatvRating_CATVC8 :: ContentRating_CatvRating
pattern ContentRating_CatvRating_CATVC8 = ContentRating_CatvRating "catvC8"

-- | G
pattern ContentRating_CatvRating_CatvG :: ContentRating_CatvRating
pattern ContentRating_CatvRating_CatvG = ContentRating_CatvRating "catvG"

-- | PG
pattern ContentRating_CatvRating_CatvPg :: ContentRating_CatvRating
pattern ContentRating_CatvRating_CatvPg = ContentRating_CatvRating "catvPg"

-- | 14+
pattern ContentRating_CatvRating_Catv14plus :: ContentRating_CatvRating
pattern ContentRating_CatvRating_Catv14plus = ContentRating_CatvRating "catv14plus"

-- | 18+
pattern ContentRating_CatvRating_Catv18plus :: ContentRating_CatvRating
pattern ContentRating_CatvRating_Catv18plus = ContentRating_CatvRating "catv18plus"

pattern ContentRating_CatvRating_CatvUnrated :: ContentRating_CatvRating
pattern ContentRating_CatvRating_CatvUnrated = ContentRating_CatvRating "catvUnrated"

pattern ContentRating_CatvRating_CatvE :: ContentRating_CatvRating
pattern ContentRating_CatvRating_CatvE = ContentRating_CatvRating "catvE"

{-# COMPLETE
  ContentRating_CatvRating_CatvUnspecified,
  ContentRating_CatvRating_CatvC,
  ContentRating_CatvRating_CATVC8,
  ContentRating_CatvRating_CatvG,
  ContentRating_CatvRating_CatvPg,
  ContentRating_CatvRating_Catv14plus,
  ContentRating_CatvRating_Catv18plus,
  ContentRating_CatvRating_CatvUnrated,
  ContentRating_CatvRating_CatvE,
  ContentRating_CatvRating
  #-}

-- | The video\'s rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian French-language broadcasts. For more information, see the Canadian Broadcast Standards Council website.
newtype ContentRating_CatvfrRating = ContentRating_CatvfrRating {fromContentRating_CatvfrRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CatvfrRating_CatvfrUnspecified :: ContentRating_CatvfrRating
pattern ContentRating_CatvfrRating_CatvfrUnspecified = ContentRating_CatvfrRating "catvfrUnspecified"

-- | G
pattern ContentRating_CatvfrRating_CatvfrG :: ContentRating_CatvfrRating
pattern ContentRating_CatvfrRating_CatvfrG = ContentRating_CatvfrRating "catvfrG"

-- | 8+
pattern ContentRating_CatvfrRating_Catvfr8plus :: ContentRating_CatvfrRating
pattern ContentRating_CatvfrRating_Catvfr8plus = ContentRating_CatvfrRating "catvfr8plus"

-- | 13+
pattern ContentRating_CatvfrRating_Catvfr13plus :: ContentRating_CatvfrRating
pattern ContentRating_CatvfrRating_Catvfr13plus = ContentRating_CatvfrRating "catvfr13plus"

-- | 16+
pattern ContentRating_CatvfrRating_Catvfr16plus :: ContentRating_CatvfrRating
pattern ContentRating_CatvfrRating_Catvfr16plus = ContentRating_CatvfrRating "catvfr16plus"

-- | 18+
pattern ContentRating_CatvfrRating_Catvfr18plus :: ContentRating_CatvfrRating
pattern ContentRating_CatvfrRating_Catvfr18plus = ContentRating_CatvfrRating "catvfr18plus"

pattern ContentRating_CatvfrRating_CatvfrUnrated :: ContentRating_CatvfrRating
pattern ContentRating_CatvfrRating_CatvfrUnrated = ContentRating_CatvfrRating "catvfrUnrated"

pattern ContentRating_CatvfrRating_CatvfrE :: ContentRating_CatvfrRating
pattern ContentRating_CatvfrRating_CatvfrE = ContentRating_CatvfrRating "catvfrE"

{-# COMPLETE
  ContentRating_CatvfrRating_CatvfrUnspecified,
  ContentRating_CatvfrRating_CatvfrG,
  ContentRating_CatvfrRating_Catvfr8plus,
  ContentRating_CatvfrRating_Catvfr13plus,
  ContentRating_CatvfrRating_Catvfr16plus,
  ContentRating_CatvfrRating_Catvfr18plus,
  ContentRating_CatvfrRating_CatvfrUnrated,
  ContentRating_CatvfrRating_CatvfrE,
  ContentRating_CatvfrRating
  #-}

-- | The video\'s Central Board of Film Certification (CBFC - India) rating.
newtype ContentRating_CbfcRating = ContentRating_CbfcRating {fromContentRating_CbfcRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CbfcRating_CbfcUnspecified :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcUnspecified = ContentRating_CbfcRating "cbfcUnspecified"

-- | U
pattern ContentRating_CbfcRating_CbfcU :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcU = ContentRating_CbfcRating "cbfcU"

-- | U\/A
pattern ContentRating_CbfcRating_CbfcUA :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcUA = ContentRating_CbfcRating "cbfcUA"

-- | U\/A 7+
pattern ContentRating_CbfcRating_CbfcUA7plus :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcUA7plus = ContentRating_CbfcRating "cbfcUA7plus"

-- | U\/A 13+
pattern ContentRating_CbfcRating_CbfcUA13plus :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcUA13plus = ContentRating_CbfcRating "cbfcUA13plus"

-- | U\/A 16+
pattern ContentRating_CbfcRating_CbfcUA16plus :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcUA16plus = ContentRating_CbfcRating "cbfcUA16plus"

-- | A
pattern ContentRating_CbfcRating_CbfcA :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcA = ContentRating_CbfcRating "cbfcA"

-- | S
pattern ContentRating_CbfcRating_CbfcS :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcS = ContentRating_CbfcRating "cbfcS"

pattern ContentRating_CbfcRating_CbfcUnrated :: ContentRating_CbfcRating
pattern ContentRating_CbfcRating_CbfcUnrated = ContentRating_CbfcRating "cbfcUnrated"

{-# COMPLETE
  ContentRating_CbfcRating_CbfcUnspecified,
  ContentRating_CbfcRating_CbfcU,
  ContentRating_CbfcRating_CbfcUA,
  ContentRating_CbfcRating_CbfcUA7plus,
  ContentRating_CbfcRating_CbfcUA13plus,
  ContentRating_CbfcRating_CbfcUA16plus,
  ContentRating_CbfcRating_CbfcA,
  ContentRating_CbfcRating_CbfcS,
  ContentRating_CbfcRating_CbfcUnrated,
  ContentRating_CbfcRating
  #-}

-- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
newtype ContentRating_CccRating = ContentRating_CccRating {fromContentRating_CccRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CccRating_CccUnspecified :: ContentRating_CccRating
pattern ContentRating_CccRating_CccUnspecified = ContentRating_CccRating "cccUnspecified"

-- | Todo espectador
pattern ContentRating_CccRating_CccTe :: ContentRating_CccRating
pattern ContentRating_CccRating_CccTe = ContentRating_CccRating "cccTe"

-- | 6+ - Inconveniente para menores de 7 años
pattern ContentRating_CccRating_CCC6 :: ContentRating_CccRating
pattern ContentRating_CccRating_CCC6 = ContentRating_CccRating "ccc6"

-- | 14+
pattern ContentRating_CccRating_CCC14 :: ContentRating_CccRating
pattern ContentRating_CccRating_CCC14 = ContentRating_CccRating "ccc14"

-- | 18+
pattern ContentRating_CccRating_CCC18 :: ContentRating_CccRating
pattern ContentRating_CccRating_CCC18 = ContentRating_CccRating "ccc18"

-- | 18+ - contenido excesivamente violento
pattern ContentRating_CccRating_Ccc18v :: ContentRating_CccRating
pattern ContentRating_CccRating_Ccc18v = ContentRating_CccRating "ccc18v"

-- | 18+ - contenido pornográfico
pattern ContentRating_CccRating_Ccc18s :: ContentRating_CccRating
pattern ContentRating_CccRating_Ccc18s = ContentRating_CccRating "ccc18s"

pattern ContentRating_CccRating_CccUnrated :: ContentRating_CccRating
pattern ContentRating_CccRating_CccUnrated = ContentRating_CccRating "cccUnrated"

{-# COMPLETE
  ContentRating_CccRating_CccUnspecified,
  ContentRating_CccRating_CccTe,
  ContentRating_CccRating_CCC6,
  ContentRating_CccRating_CCC14,
  ContentRating_CccRating_CCC18,
  ContentRating_CccRating_Ccc18v,
  ContentRating_CccRating_Ccc18s,
  ContentRating_CccRating_CccUnrated,
  ContentRating_CccRating
  #-}

-- | The video\'s rating from Portugal\'s Comissão de Classificação de Espect´culos.
newtype ContentRating_CceRating = ContentRating_CceRating {fromContentRating_CceRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CceRating_CceUnspecified :: ContentRating_CceRating
pattern ContentRating_CceRating_CceUnspecified = ContentRating_CceRating "cceUnspecified"

-- | 4
pattern ContentRating_CceRating_CCEM4 :: ContentRating_CceRating
pattern ContentRating_CceRating_CCEM4 = ContentRating_CceRating "cceM4"

-- | 6
pattern ContentRating_CceRating_CCEM6 :: ContentRating_CceRating
pattern ContentRating_CceRating_CCEM6 = ContentRating_CceRating "cceM6"

-- | 12
pattern ContentRating_CceRating_CCEM12 :: ContentRating_CceRating
pattern ContentRating_CceRating_CCEM12 = ContentRating_CceRating "cceM12"

-- | 16
pattern ContentRating_CceRating_CCEM16 :: ContentRating_CceRating
pattern ContentRating_CceRating_CCEM16 = ContentRating_CceRating "cceM16"

-- | 18
pattern ContentRating_CceRating_CCEM18 :: ContentRating_CceRating
pattern ContentRating_CceRating_CCEM18 = ContentRating_CceRating "cceM18"

pattern ContentRating_CceRating_CceUnrated :: ContentRating_CceRating
pattern ContentRating_CceRating_CceUnrated = ContentRating_CceRating "cceUnrated"

-- | 14
pattern ContentRating_CceRating_CCEM14 :: ContentRating_CceRating
pattern ContentRating_CceRating_CCEM14 = ContentRating_CceRating "cceM14"

{-# COMPLETE
  ContentRating_CceRating_CceUnspecified,
  ContentRating_CceRating_CCEM4,
  ContentRating_CceRating_CCEM6,
  ContentRating_CceRating_CCEM12,
  ContentRating_CceRating_CCEM16,
  ContentRating_CceRating_CCEM18,
  ContentRating_CceRating_CceUnrated,
  ContentRating_CceRating_CCEM14,
  ContentRating_CceRating
  #-}

-- | The video\'s rating in Switzerland.
newtype ContentRating_ChfilmRating = ContentRating_ChfilmRating {fromContentRating_ChfilmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_ChfilmRating_ChfilmUnspecified :: ContentRating_ChfilmRating
pattern ContentRating_ChfilmRating_ChfilmUnspecified = ContentRating_ChfilmRating "chfilmUnspecified"

-- | 0
pattern ContentRating_ChfilmRating_CHFILM0 :: ContentRating_ChfilmRating
pattern ContentRating_ChfilmRating_CHFILM0 = ContentRating_ChfilmRating "chfilm0"

-- | 6
pattern ContentRating_ChfilmRating_CHFILM6 :: ContentRating_ChfilmRating
pattern ContentRating_ChfilmRating_CHFILM6 = ContentRating_ChfilmRating "chfilm6"

-- | 12
pattern ContentRating_ChfilmRating_CHFILM12 :: ContentRating_ChfilmRating
pattern ContentRating_ChfilmRating_CHFILM12 = ContentRating_ChfilmRating "chfilm12"

-- | 16
pattern ContentRating_ChfilmRating_CHFILM16 :: ContentRating_ChfilmRating
pattern ContentRating_ChfilmRating_CHFILM16 = ContentRating_ChfilmRating "chfilm16"

-- | 18
pattern ContentRating_ChfilmRating_CHFILM18 :: ContentRating_ChfilmRating
pattern ContentRating_ChfilmRating_CHFILM18 = ContentRating_ChfilmRating "chfilm18"

pattern ContentRating_ChfilmRating_ChfilmUnrated :: ContentRating_ChfilmRating
pattern ContentRating_ChfilmRating_ChfilmUnrated = ContentRating_ChfilmRating "chfilmUnrated"

{-# COMPLETE
  ContentRating_ChfilmRating_ChfilmUnspecified,
  ContentRating_ChfilmRating_CHFILM0,
  ContentRating_ChfilmRating_CHFILM6,
  ContentRating_ChfilmRating_CHFILM12,
  ContentRating_ChfilmRating_CHFILM16,
  ContentRating_ChfilmRating_CHFILM18,
  ContentRating_ChfilmRating_ChfilmUnrated,
  ContentRating_ChfilmRating
  #-}

-- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
newtype ContentRating_ChvrsRating = ContentRating_ChvrsRating {fromContentRating_ChvrsRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_ChvrsRating_ChvrsUnspecified :: ContentRating_ChvrsRating
pattern ContentRating_ChvrsRating_ChvrsUnspecified = ContentRating_ChvrsRating "chvrsUnspecified"

-- | G
pattern ContentRating_ChvrsRating_ChvrsG :: ContentRating_ChvrsRating
pattern ContentRating_ChvrsRating_ChvrsG = ContentRating_ChvrsRating "chvrsG"

-- | PG
pattern ContentRating_ChvrsRating_ChvrsPg :: ContentRating_ChvrsRating
pattern ContentRating_ChvrsRating_ChvrsPg = ContentRating_ChvrsRating "chvrsPg"

-- | 14A
pattern ContentRating_ChvrsRating_Chvrs14a :: ContentRating_ChvrsRating
pattern ContentRating_ChvrsRating_Chvrs14a = ContentRating_ChvrsRating "chvrs14a"

-- | 18A
pattern ContentRating_ChvrsRating_Chvrs18a :: ContentRating_ChvrsRating
pattern ContentRating_ChvrsRating_Chvrs18a = ContentRating_ChvrsRating "chvrs18a"

-- | R
pattern ContentRating_ChvrsRating_ChvrsR :: ContentRating_ChvrsRating
pattern ContentRating_ChvrsRating_ChvrsR = ContentRating_ChvrsRating "chvrsR"

-- | E
pattern ContentRating_ChvrsRating_ChvrsE :: ContentRating_ChvrsRating
pattern ContentRating_ChvrsRating_ChvrsE = ContentRating_ChvrsRating "chvrsE"

pattern ContentRating_ChvrsRating_ChvrsUnrated :: ContentRating_ChvrsRating
pattern ContentRating_ChvrsRating_ChvrsUnrated = ContentRating_ChvrsRating "chvrsUnrated"

{-# COMPLETE
  ContentRating_ChvrsRating_ChvrsUnspecified,
  ContentRating_ChvrsRating_ChvrsG,
  ContentRating_ChvrsRating_ChvrsPg,
  ContentRating_ChvrsRating_Chvrs14a,
  ContentRating_ChvrsRating_Chvrs18a,
  ContentRating_ChvrsRating_ChvrsR,
  ContentRating_ChvrsRating_ChvrsE,
  ContentRating_ChvrsRating_ChvrsUnrated,
  ContentRating_ChvrsRating
  #-}

-- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
newtype ContentRating_CicfRating = ContentRating_CicfRating {fromContentRating_CicfRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CicfRating_CicfUnspecified :: ContentRating_CicfRating
pattern ContentRating_CicfRating_CicfUnspecified = ContentRating_CicfRating "cicfUnspecified"

-- | E
pattern ContentRating_CicfRating_CicfE :: ContentRating_CicfRating
pattern ContentRating_CicfRating_CicfE = ContentRating_CicfRating "cicfE"

-- | KT\/EA
pattern ContentRating_CicfRating_CicfKtEa :: ContentRating_CicfRating
pattern ContentRating_CicfRating_CicfKtEa = ContentRating_CicfRating "cicfKtEa"

-- | KNT\/ENA
pattern ContentRating_CicfRating_CicfKntEna :: ContentRating_CicfRating
pattern ContentRating_CicfRating_CicfKntEna = ContentRating_CicfRating "cicfKntEna"

pattern ContentRating_CicfRating_CicfUnrated :: ContentRating_CicfRating
pattern ContentRating_CicfRating_CicfUnrated = ContentRating_CicfRating "cicfUnrated"

{-# COMPLETE
  ContentRating_CicfRating_CicfUnspecified,
  ContentRating_CicfRating_CicfE,
  ContentRating_CicfRating_CicfKtEa,
  ContentRating_CicfRating_CicfKntEna,
  ContentRating_CicfRating_CicfUnrated,
  ContentRating_CicfRating
  #-}

-- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL AUDIOVIZUALULUI (CNA).
newtype ContentRating_CnaRating = ContentRating_CnaRating {fromContentRating_CnaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CnaRating_CnaUnspecified :: ContentRating_CnaRating
pattern ContentRating_CnaRating_CnaUnspecified = ContentRating_CnaRating "cnaUnspecified"

-- | AP
pattern ContentRating_CnaRating_CnaAp :: ContentRating_CnaRating
pattern ContentRating_CnaRating_CnaAp = ContentRating_CnaRating "cnaAp"

-- | 12
pattern ContentRating_CnaRating_CNA12 :: ContentRating_CnaRating
pattern ContentRating_CnaRating_CNA12 = ContentRating_CnaRating "cna12"

-- | 15
pattern ContentRating_CnaRating_CNA15 :: ContentRating_CnaRating
pattern ContentRating_CnaRating_CNA15 = ContentRating_CnaRating "cna15"

-- | 18
pattern ContentRating_CnaRating_CNA18 :: ContentRating_CnaRating
pattern ContentRating_CnaRating_CNA18 = ContentRating_CnaRating "cna18"

-- | 18+
pattern ContentRating_CnaRating_Cna18plus :: ContentRating_CnaRating
pattern ContentRating_CnaRating_Cna18plus = ContentRating_CnaRating "cna18plus"

pattern ContentRating_CnaRating_CnaUnrated :: ContentRating_CnaRating
pattern ContentRating_CnaRating_CnaUnrated = ContentRating_CnaRating "cnaUnrated"

{-# COMPLETE
  ContentRating_CnaRating_CnaUnspecified,
  ContentRating_CnaRating_CnaAp,
  ContentRating_CnaRating_CNA12,
  ContentRating_CnaRating_CNA15,
  ContentRating_CnaRating_CNA18,
  ContentRating_CnaRating_Cna18plus,
  ContentRating_CnaRating_CnaUnrated,
  ContentRating_CnaRating
  #-}

-- | Rating system in France - Commission de classification cinematographique
newtype ContentRating_CncRating = ContentRating_CncRating {fromContentRating_CncRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CncRating_CncUnspecified :: ContentRating_CncRating
pattern ContentRating_CncRating_CncUnspecified = ContentRating_CncRating "cncUnspecified"

-- | T
pattern ContentRating_CncRating_CncT :: ContentRating_CncRating
pattern ContentRating_CncRating_CncT = ContentRating_CncRating "cncT"

-- | 10
pattern ContentRating_CncRating_CNC10 :: ContentRating_CncRating
pattern ContentRating_CncRating_CNC10 = ContentRating_CncRating "cnc10"

-- | 12
pattern ContentRating_CncRating_CNC12 :: ContentRating_CncRating
pattern ContentRating_CncRating_CNC12 = ContentRating_CncRating "cnc12"

-- | 16
pattern ContentRating_CncRating_CNC16 :: ContentRating_CncRating
pattern ContentRating_CncRating_CNC16 = ContentRating_CncRating "cnc16"

-- | 18
pattern ContentRating_CncRating_CNC18 :: ContentRating_CncRating
pattern ContentRating_CncRating_CNC18 = ContentRating_CncRating "cnc18"

-- | E
pattern ContentRating_CncRating_CncE :: ContentRating_CncRating
pattern ContentRating_CncRating_CncE = ContentRating_CncRating "cncE"

-- | interdiction
pattern ContentRating_CncRating_CncInterdiction :: ContentRating_CncRating
pattern ContentRating_CncRating_CncInterdiction = ContentRating_CncRating "cncInterdiction"

pattern ContentRating_CncRating_CncUnrated :: ContentRating_CncRating
pattern ContentRating_CncRating_CncUnrated = ContentRating_CncRating "cncUnrated"

{-# COMPLETE
  ContentRating_CncRating_CncUnspecified,
  ContentRating_CncRating_CncT,
  ContentRating_CncRating_CNC10,
  ContentRating_CncRating_CNC12,
  ContentRating_CncRating_CNC16,
  ContentRating_CncRating_CNC18,
  ContentRating_CncRating_CncE,
  ContentRating_CncRating_CncInterdiction,
  ContentRating_CncRating_CncUnrated,
  ContentRating_CncRating
  #-}

-- | The video\'s rating from France\'s Conseil supérieur de l’audiovisuel, which rates broadcast content.
newtype ContentRating_CsaRating = ContentRating_CsaRating {fromContentRating_CsaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CsaRating_CsaUnspecified :: ContentRating_CsaRating
pattern ContentRating_CsaRating_CsaUnspecified = ContentRating_CsaRating "csaUnspecified"

-- | T
pattern ContentRating_CsaRating_CsaT :: ContentRating_CsaRating
pattern ContentRating_CsaRating_CsaT = ContentRating_CsaRating "csaT"

-- | 10
pattern ContentRating_CsaRating_CSA10 :: ContentRating_CsaRating
pattern ContentRating_CsaRating_CSA10 = ContentRating_CsaRating "csa10"

-- | 12
pattern ContentRating_CsaRating_CSA12 :: ContentRating_CsaRating
pattern ContentRating_CsaRating_CSA12 = ContentRating_CsaRating "csa12"

-- | 16
pattern ContentRating_CsaRating_CSA16 :: ContentRating_CsaRating
pattern ContentRating_CsaRating_CSA16 = ContentRating_CsaRating "csa16"

-- | 18
pattern ContentRating_CsaRating_CSA18 :: ContentRating_CsaRating
pattern ContentRating_CsaRating_CSA18 = ContentRating_CsaRating "csa18"

-- | Interdiction
pattern ContentRating_CsaRating_CsaInterdiction :: ContentRating_CsaRating
pattern ContentRating_CsaRating_CsaInterdiction = ContentRating_CsaRating "csaInterdiction"

pattern ContentRating_CsaRating_CsaUnrated :: ContentRating_CsaRating
pattern ContentRating_CsaRating_CsaUnrated = ContentRating_CsaRating "csaUnrated"

{-# COMPLETE
  ContentRating_CsaRating_CsaUnspecified,
  ContentRating_CsaRating_CsaT,
  ContentRating_CsaRating_CSA10,
  ContentRating_CsaRating_CSA12,
  ContentRating_CsaRating_CSA16,
  ContentRating_CsaRating_CSA18,
  ContentRating_CsaRating_CsaInterdiction,
  ContentRating_CsaRating_CsaUnrated,
  ContentRating_CsaRating
  #-}

-- | The video\'s rating from Luxembourg\'s Commission de surveillance de la classification des films (CSCF).
newtype ContentRating_CscfRating = ContentRating_CscfRating {fromContentRating_CscfRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CscfRating_CscfUnspecified :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CscfUnspecified = ContentRating_CscfRating "cscfUnspecified"

-- | AL
pattern ContentRating_CscfRating_CscfAl :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CscfAl = ContentRating_CscfRating "cscfAl"

-- | A
pattern ContentRating_CscfRating_CscfA :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CscfA = ContentRating_CscfRating "cscfA"

-- | 6
pattern ContentRating_CscfRating_CSCF6 :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CSCF6 = ContentRating_CscfRating "cscf6"

-- | 9
pattern ContentRating_CscfRating_CSCF9 :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CSCF9 = ContentRating_CscfRating "cscf9"

-- | 12
pattern ContentRating_CscfRating_CSCF12 :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CSCF12 = ContentRating_CscfRating "cscf12"

-- | 16
pattern ContentRating_CscfRating_CSCF16 :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CSCF16 = ContentRating_CscfRating "cscf16"

-- | 18
pattern ContentRating_CscfRating_CSCF18 :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CSCF18 = ContentRating_CscfRating "cscf18"

pattern ContentRating_CscfRating_CscfUnrated :: ContentRating_CscfRating
pattern ContentRating_CscfRating_CscfUnrated = ContentRating_CscfRating "cscfUnrated"

{-# COMPLETE
  ContentRating_CscfRating_CscfUnspecified,
  ContentRating_CscfRating_CscfAl,
  ContentRating_CscfRating_CscfA,
  ContentRating_CscfRating_CSCF6,
  ContentRating_CscfRating_CSCF9,
  ContentRating_CscfRating_CSCF12,
  ContentRating_CscfRating_CSCF16,
  ContentRating_CscfRating_CSCF18,
  ContentRating_CscfRating_CscfUnrated,
  ContentRating_CscfRating
  #-}

-- | The video\'s rating in the Czech Republic.
newtype ContentRating_CzfilmRating = ContentRating_CzfilmRating {fromContentRating_CzfilmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_CzfilmRating_CzfilmUnspecified :: ContentRating_CzfilmRating
pattern ContentRating_CzfilmRating_CzfilmUnspecified = ContentRating_CzfilmRating "czfilmUnspecified"

-- | U
pattern ContentRating_CzfilmRating_CzfilmU :: ContentRating_CzfilmRating
pattern ContentRating_CzfilmRating_CzfilmU = ContentRating_CzfilmRating "czfilmU"

-- | 12
pattern ContentRating_CzfilmRating_CZFILM12 :: ContentRating_CzfilmRating
pattern ContentRating_CzfilmRating_CZFILM12 = ContentRating_CzfilmRating "czfilm12"

-- | 14
pattern ContentRating_CzfilmRating_CZFILM14 :: ContentRating_CzfilmRating
pattern ContentRating_CzfilmRating_CZFILM14 = ContentRating_CzfilmRating "czfilm14"

-- | 18
pattern ContentRating_CzfilmRating_CZFILM18 :: ContentRating_CzfilmRating
pattern ContentRating_CzfilmRating_CZFILM18 = ContentRating_CzfilmRating "czfilm18"

pattern ContentRating_CzfilmRating_CzfilmUnrated :: ContentRating_CzfilmRating
pattern ContentRating_CzfilmRating_CzfilmUnrated = ContentRating_CzfilmRating "czfilmUnrated"

{-# COMPLETE
  ContentRating_CzfilmRating_CzfilmUnspecified,
  ContentRating_CzfilmRating_CzfilmU,
  ContentRating_CzfilmRating_CZFILM12,
  ContentRating_CzfilmRating_CZFILM14,
  ContentRating_CzfilmRating_CZFILM18,
  ContentRating_CzfilmRating_CzfilmUnrated,
  ContentRating_CzfilmRating
  #-}

-- | The video\'s Departamento de Justiça, Classificação, Qualificação e Títulos (DJCQT - Brazil) rating.
newtype ContentRating_DjctqRating = ContentRating_DjctqRating {fromContentRating_DjctqRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_DjctqRating_DjctqUnspecified :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DjctqUnspecified = ContentRating_DjctqRating "djctqUnspecified"

-- | L
pattern ContentRating_DjctqRating_DjctqL :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DjctqL = ContentRating_DjctqRating "djctqL"

-- | 10
pattern ContentRating_DjctqRating_DJCTQ10 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ10 = ContentRating_DjctqRating "djctq10"

-- | 12
pattern ContentRating_DjctqRating_DJCTQ12 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ12 = ContentRating_DjctqRating "djctq12"

-- | 14
pattern ContentRating_DjctqRating_DJCTQ14 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ14 = ContentRating_DjctqRating "djctq14"

-- | 16
pattern ContentRating_DjctqRating_DJCTQ16 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ16 = ContentRating_DjctqRating "djctq16"

-- | 18
pattern ContentRating_DjctqRating_DJCTQ18 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ18 = ContentRating_DjctqRating "djctq18"

pattern ContentRating_DjctqRating_DjctqEr :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DjctqEr = ContentRating_DjctqRating "djctqEr"

pattern ContentRating_DjctqRating_DJCTQL10 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQL10 = ContentRating_DjctqRating "djctqL10"

pattern ContentRating_DjctqRating_DJCTQL12 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQL12 = ContentRating_DjctqRating "djctqL12"

pattern ContentRating_DjctqRating_DJCTQL14 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQL14 = ContentRating_DjctqRating "djctqL14"

pattern ContentRating_DjctqRating_DJCTQL16 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQL16 = ContentRating_DjctqRating "djctqL16"

pattern ContentRating_DjctqRating_DJCTQL18 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQL18 = ContentRating_DjctqRating "djctqL18"

pattern ContentRating_DjctqRating_DJCTQ1012 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1012 = ContentRating_DjctqRating "djctq1012"

pattern ContentRating_DjctqRating_DJCTQ1014 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1014 = ContentRating_DjctqRating "djctq1014"

pattern ContentRating_DjctqRating_DJCTQ1016 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1016 = ContentRating_DjctqRating "djctq1016"

pattern ContentRating_DjctqRating_DJCTQ1018 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1018 = ContentRating_DjctqRating "djctq1018"

pattern ContentRating_DjctqRating_DJCTQ1214 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1214 = ContentRating_DjctqRating "djctq1214"

pattern ContentRating_DjctqRating_DJCTQ1216 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1216 = ContentRating_DjctqRating "djctq1216"

pattern ContentRating_DjctqRating_DJCTQ1218 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1218 = ContentRating_DjctqRating "djctq1218"

pattern ContentRating_DjctqRating_DJCTQ1416 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1416 = ContentRating_DjctqRating "djctq1416"

pattern ContentRating_DjctqRating_DJCTQ1418 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1418 = ContentRating_DjctqRating "djctq1418"

pattern ContentRating_DjctqRating_DJCTQ1618 :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DJCTQ1618 = ContentRating_DjctqRating "djctq1618"

pattern ContentRating_DjctqRating_DjctqUnrated :: ContentRating_DjctqRating
pattern ContentRating_DjctqRating_DjctqUnrated = ContentRating_DjctqRating "djctqUnrated"

{-# COMPLETE
  ContentRating_DjctqRating_DjctqUnspecified,
  ContentRating_DjctqRating_DjctqL,
  ContentRating_DjctqRating_DJCTQ10,
  ContentRating_DjctqRating_DJCTQ12,
  ContentRating_DjctqRating_DJCTQ14,
  ContentRating_DjctqRating_DJCTQ16,
  ContentRating_DjctqRating_DJCTQ18,
  ContentRating_DjctqRating_DjctqEr,
  ContentRating_DjctqRating_DJCTQL10,
  ContentRating_DjctqRating_DJCTQL12,
  ContentRating_DjctqRating_DJCTQL14,
  ContentRating_DjctqRating_DJCTQL16,
  ContentRating_DjctqRating_DJCTQL18,
  ContentRating_DjctqRating_DJCTQ1012,
  ContentRating_DjctqRating_DJCTQ1014,
  ContentRating_DjctqRating_DJCTQ1016,
  ContentRating_DjctqRating_DJCTQ1018,
  ContentRating_DjctqRating_DJCTQ1214,
  ContentRating_DjctqRating_DJCTQ1216,
  ContentRating_DjctqRating_DJCTQ1218,
  ContentRating_DjctqRating_DJCTQ1416,
  ContentRating_DjctqRating_DJCTQ1418,
  ContentRating_DjctqRating_DJCTQ1618,
  ContentRating_DjctqRating_DjctqUnrated,
  ContentRating_DjctqRating
  #-}

newtype ContentRating_DjctqRatingReasonsItem = ContentRating_DjctqRatingReasonsItem {fromContentRating_DjctqRatingReasonsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_DjctqRatingReasonsItem_DjctqRatingReasonUnspecified :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqRatingReasonUnspecified = ContentRating_DjctqRatingReasonsItem "djctqRatingReasonUnspecified"

-- | Brazil rating content descriptors. See http:\/\/go\/brazilratings section F. Violência (Violence)
pattern ContentRating_DjctqRatingReasonsItem_DjctqViolence :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqViolence = ContentRating_DjctqRatingReasonsItem "djctqViolence"

-- | Violência extrema (Extreme violence)
pattern ContentRating_DjctqRatingReasonsItem_DjctqExtremeViolence :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqExtremeViolence = ContentRating_DjctqRatingReasonsItem "djctqExtremeViolence"

-- | Conteúdo sexual (Sexual content)
pattern ContentRating_DjctqRatingReasonsItem_DjctqSexualContent :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqSexualContent = ContentRating_DjctqRatingReasonsItem "djctqSexualContent"

-- | Nudez (Nudity)
pattern ContentRating_DjctqRatingReasonsItem_DjctqNudity :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqNudity = ContentRating_DjctqRatingReasonsItem "djctqNudity"

-- | Sexo (Sex)
pattern ContentRating_DjctqRatingReasonsItem_DjctqSex :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqSex = ContentRating_DjctqRatingReasonsItem "djctqSex"

-- | Sexo Explícito (Explicit sex)
pattern ContentRating_DjctqRatingReasonsItem_DjctqExplicitSex :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqExplicitSex = ContentRating_DjctqRatingReasonsItem "djctqExplicitSex"

-- | Drogas (Drugs)
pattern ContentRating_DjctqRatingReasonsItem_DjctqDrugs :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqDrugs = ContentRating_DjctqRatingReasonsItem "djctqDrugs"

-- | Drogas Lícitas (Legal drugs)
pattern ContentRating_DjctqRatingReasonsItem_DjctqLegalDrugs :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqLegalDrugs = ContentRating_DjctqRatingReasonsItem "djctqLegalDrugs"

-- | Drogas Ilícitas (Illegal drugs)
pattern ContentRating_DjctqRatingReasonsItem_DjctqIllegalDrugs :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqIllegalDrugs = ContentRating_DjctqRatingReasonsItem "djctqIllegalDrugs"

-- | Linguagem Imprópria (Inappropriate language)
pattern ContentRating_DjctqRatingReasonsItem_DjctqInappropriateLanguage :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqInappropriateLanguage = ContentRating_DjctqRatingReasonsItem "djctqInappropriateLanguage"

-- | Atos Criminosos (Criminal Acts)
pattern ContentRating_DjctqRatingReasonsItem_DjctqCriminalActs :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqCriminalActs = ContentRating_DjctqRatingReasonsItem "djctqCriminalActs"

-- | Conteúdo Impactante (Impacting content)
pattern ContentRating_DjctqRatingReasonsItem_DjctqImpactingContent :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqImpactingContent = ContentRating_DjctqRatingReasonsItem "djctqImpactingContent"

-- | Temer (Fear)
pattern ContentRating_DjctqRatingReasonsItem_DjctqFear :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqFear = ContentRating_DjctqRatingReasonsItem "djctqFear"

-- | Procedimentos médicos (Medical Procedures)
pattern ContentRating_DjctqRatingReasonsItem_DjctqMedicalProcedures :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqMedicalProcedures = ContentRating_DjctqRatingReasonsItem "djctqMedicalProcedures"

-- | Tópicos sensíveis (Sensitive Topics)
pattern ContentRating_DjctqRatingReasonsItem_DjctqSensitiveTopics :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqSensitiveTopics = ContentRating_DjctqRatingReasonsItem "djctqSensitiveTopics"

-- | Fantasia Violência (Fantasy Violence)
pattern ContentRating_DjctqRatingReasonsItem_DjctqFantasyViolence :: ContentRating_DjctqRatingReasonsItem
pattern ContentRating_DjctqRatingReasonsItem_DjctqFantasyViolence = ContentRating_DjctqRatingReasonsItem "djctqFantasyViolence"

{-# COMPLETE
  ContentRating_DjctqRatingReasonsItem_DjctqRatingReasonUnspecified,
  ContentRating_DjctqRatingReasonsItem_DjctqViolence,
  ContentRating_DjctqRatingReasonsItem_DjctqExtremeViolence,
  ContentRating_DjctqRatingReasonsItem_DjctqSexualContent,
  ContentRating_DjctqRatingReasonsItem_DjctqNudity,
  ContentRating_DjctqRatingReasonsItem_DjctqSex,
  ContentRating_DjctqRatingReasonsItem_DjctqExplicitSex,
  ContentRating_DjctqRatingReasonsItem_DjctqDrugs,
  ContentRating_DjctqRatingReasonsItem_DjctqLegalDrugs,
  ContentRating_DjctqRatingReasonsItem_DjctqIllegalDrugs,
  ContentRating_DjctqRatingReasonsItem_DjctqInappropriateLanguage,
  ContentRating_DjctqRatingReasonsItem_DjctqCriminalActs,
  ContentRating_DjctqRatingReasonsItem_DjctqImpactingContent,
  ContentRating_DjctqRatingReasonsItem_DjctqFear,
  ContentRating_DjctqRatingReasonsItem_DjctqMedicalProcedures,
  ContentRating_DjctqRatingReasonsItem_DjctqSensitiveTopics,
  ContentRating_DjctqRatingReasonsItem_DjctqFantasyViolence,
  ContentRating_DjctqRatingReasonsItem
  #-}

-- | Rating system in Turkey - Evaluation and Classification Board of the Ministry of Culture and Tourism
newtype ContentRating_EcbmctRating = ContentRating_EcbmctRating {fromContentRating_EcbmctRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_EcbmctRating_EcbmctUnspecified :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_EcbmctUnspecified = ContentRating_EcbmctRating "ecbmctUnspecified"

-- | G
pattern ContentRating_EcbmctRating_EcbmctG :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_EcbmctG = ContentRating_EcbmctRating "ecbmctG"

-- | 7A
pattern ContentRating_EcbmctRating_Ecbmct7a :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_Ecbmct7a = ContentRating_EcbmctRating "ecbmct7a"

-- | 7+
pattern ContentRating_EcbmctRating_Ecbmct7plus :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_Ecbmct7plus = ContentRating_EcbmctRating "ecbmct7plus"

-- | 13A
pattern ContentRating_EcbmctRating_Ecbmct13a :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_Ecbmct13a = ContentRating_EcbmctRating "ecbmct13a"

-- | 13+
pattern ContentRating_EcbmctRating_Ecbmct13plus :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_Ecbmct13plus = ContentRating_EcbmctRating "ecbmct13plus"

-- | 15A
pattern ContentRating_EcbmctRating_Ecbmct15a :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_Ecbmct15a = ContentRating_EcbmctRating "ecbmct15a"

-- | 15+
pattern ContentRating_EcbmctRating_Ecbmct15plus :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_Ecbmct15plus = ContentRating_EcbmctRating "ecbmct15plus"

-- | 18+
pattern ContentRating_EcbmctRating_Ecbmct18plus :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_Ecbmct18plus = ContentRating_EcbmctRating "ecbmct18plus"

pattern ContentRating_EcbmctRating_EcbmctUnrated :: ContentRating_EcbmctRating
pattern ContentRating_EcbmctRating_EcbmctUnrated = ContentRating_EcbmctRating "ecbmctUnrated"

{-# COMPLETE
  ContentRating_EcbmctRating_EcbmctUnspecified,
  ContentRating_EcbmctRating_EcbmctG,
  ContentRating_EcbmctRating_Ecbmct7a,
  ContentRating_EcbmctRating_Ecbmct7plus,
  ContentRating_EcbmctRating_Ecbmct13a,
  ContentRating_EcbmctRating_Ecbmct13plus,
  ContentRating_EcbmctRating_Ecbmct15a,
  ContentRating_EcbmctRating_Ecbmct15plus,
  ContentRating_EcbmctRating_Ecbmct18plus,
  ContentRating_EcbmctRating_EcbmctUnrated,
  ContentRating_EcbmctRating
  #-}

-- | The video\'s rating in Estonia.
newtype ContentRating_EefilmRating = ContentRating_EefilmRating {fromContentRating_EefilmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_EefilmRating_EefilmUnspecified :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EefilmUnspecified = ContentRating_EefilmRating "eefilmUnspecified"

-- | Pere
pattern ContentRating_EefilmRating_EefilmPere :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EefilmPere = ContentRating_EefilmRating "eefilmPere"

-- | L
pattern ContentRating_EefilmRating_EefilmL :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EefilmL = ContentRating_EefilmRating "eefilmL"

-- | MS-6
pattern ContentRating_EefilmRating_EEFILMMS6 :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EEFILMMS6 = ContentRating_EefilmRating "eefilmMs6"

-- | K-6
pattern ContentRating_EefilmRating_EEFILMK6 :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EEFILMK6 = ContentRating_EefilmRating "eefilmK6"

-- | MS-12
pattern ContentRating_EefilmRating_EEFILMMS12 :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EEFILMMS12 = ContentRating_EefilmRating "eefilmMs12"

-- | K-12
pattern ContentRating_EefilmRating_EEFILMK12 :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EEFILMK12 = ContentRating_EefilmRating "eefilmK12"

-- | K-14
pattern ContentRating_EefilmRating_EEFILMK14 :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EEFILMK14 = ContentRating_EefilmRating "eefilmK14"

-- | K-16
pattern ContentRating_EefilmRating_EEFILMK16 :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EEFILMK16 = ContentRating_EefilmRating "eefilmK16"

pattern ContentRating_EefilmRating_EefilmUnrated :: ContentRating_EefilmRating
pattern ContentRating_EefilmRating_EefilmUnrated = ContentRating_EefilmRating "eefilmUnrated"

{-# COMPLETE
  ContentRating_EefilmRating_EefilmUnspecified,
  ContentRating_EefilmRating_EefilmPere,
  ContentRating_EefilmRating_EefilmL,
  ContentRating_EefilmRating_EEFILMMS6,
  ContentRating_EefilmRating_EEFILMK6,
  ContentRating_EefilmRating_EEFILMMS12,
  ContentRating_EefilmRating_EEFILMK12,
  ContentRating_EefilmRating_EEFILMK14,
  ContentRating_EefilmRating_EEFILMK16,
  ContentRating_EefilmRating_EefilmUnrated,
  ContentRating_EefilmRating
  #-}

-- | The video\'s rating in Egypt.
newtype ContentRating_EgfilmRating = ContentRating_EgfilmRating {fromContentRating_EgfilmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_EgfilmRating_EgfilmUnspecified :: ContentRating_EgfilmRating
pattern ContentRating_EgfilmRating_EgfilmUnspecified = ContentRating_EgfilmRating "egfilmUnspecified"

-- | GN
pattern ContentRating_EgfilmRating_EgfilmGn :: ContentRating_EgfilmRating
pattern ContentRating_EgfilmRating_EgfilmGn = ContentRating_EgfilmRating "egfilmGn"

-- | 18
pattern ContentRating_EgfilmRating_EGFILM18 :: ContentRating_EgfilmRating
pattern ContentRating_EgfilmRating_EGFILM18 = ContentRating_EgfilmRating "egfilm18"

-- | BN
pattern ContentRating_EgfilmRating_EgfilmBn :: ContentRating_EgfilmRating
pattern ContentRating_EgfilmRating_EgfilmBn = ContentRating_EgfilmRating "egfilmBn"

pattern ContentRating_EgfilmRating_EgfilmUnrated :: ContentRating_EgfilmRating
pattern ContentRating_EgfilmRating_EgfilmUnrated = ContentRating_EgfilmRating "egfilmUnrated"

{-# COMPLETE
  ContentRating_EgfilmRating_EgfilmUnspecified,
  ContentRating_EgfilmRating_EgfilmGn,
  ContentRating_EgfilmRating_EGFILM18,
  ContentRating_EgfilmRating_EgfilmBn,
  ContentRating_EgfilmRating_EgfilmUnrated,
  ContentRating_EgfilmRating
  #-}

-- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
newtype ContentRating_EirinRating = ContentRating_EirinRating {fromContentRating_EirinRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_EirinRating_EirinUnspecified :: ContentRating_EirinRating
pattern ContentRating_EirinRating_EirinUnspecified = ContentRating_EirinRating "eirinUnspecified"

-- | G
pattern ContentRating_EirinRating_EirinG :: ContentRating_EirinRating
pattern ContentRating_EirinRating_EirinG = ContentRating_EirinRating "eirinG"

-- | PG-12
pattern ContentRating_EirinRating_EIRINPG12 :: ContentRating_EirinRating
pattern ContentRating_EirinRating_EIRINPG12 = ContentRating_EirinRating "eirinPg12"

-- | R15+
pattern ContentRating_EirinRating_EirinR15plus :: ContentRating_EirinRating
pattern ContentRating_EirinRating_EirinR15plus = ContentRating_EirinRating "eirinR15plus"

-- | R18+
pattern ContentRating_EirinRating_EirinR18plus :: ContentRating_EirinRating
pattern ContentRating_EirinRating_EirinR18plus = ContentRating_EirinRating "eirinR18plus"

pattern ContentRating_EirinRating_EirinUnrated :: ContentRating_EirinRating
pattern ContentRating_EirinRating_EirinUnrated = ContentRating_EirinRating "eirinUnrated"

{-# COMPLETE
  ContentRating_EirinRating_EirinUnspecified,
  ContentRating_EirinRating_EirinG,
  ContentRating_EirinRating_EIRINPG12,
  ContentRating_EirinRating_EirinR15plus,
  ContentRating_EirinRating_EirinR18plus,
  ContentRating_EirinRating_EirinUnrated,
  ContentRating_EirinRating
  #-}

-- | The video\'s rating from Malaysia\'s Film Censorship Board.
newtype ContentRating_FcbmRating = ContentRating_FcbmRating {fromContentRating_FcbmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_FcbmRating_FcbmUnspecified :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_FcbmUnspecified = ContentRating_FcbmRating "fcbmUnspecified"

-- | U
pattern ContentRating_FcbmRating_FcbmU :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_FcbmU = ContentRating_FcbmRating "fcbmU"

-- | PG13
pattern ContentRating_FcbmRating_FCBMPG13 :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_FCBMPG13 = ContentRating_FcbmRating "fcbmPg13"

-- | P13
pattern ContentRating_FcbmRating_FCBMP13 :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_FCBMP13 = ContentRating_FcbmRating "fcbmP13"

-- | 18
pattern ContentRating_FcbmRating_FCBM18 :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_FCBM18 = ContentRating_FcbmRating "fcbm18"

-- | 18SX
pattern ContentRating_FcbmRating_Fcbm18sx :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_Fcbm18sx = ContentRating_FcbmRating "fcbm18sx"

-- | 18PA
pattern ContentRating_FcbmRating_Fcbm18pa :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_Fcbm18pa = ContentRating_FcbmRating "fcbm18pa"

-- | 18SG
pattern ContentRating_FcbmRating_Fcbm18sg :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_Fcbm18sg = ContentRating_FcbmRating "fcbm18sg"

-- | 18PL
pattern ContentRating_FcbmRating_Fcbm18pl :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_Fcbm18pl = ContentRating_FcbmRating "fcbm18pl"

pattern ContentRating_FcbmRating_FcbmUnrated :: ContentRating_FcbmRating
pattern ContentRating_FcbmRating_FcbmUnrated = ContentRating_FcbmRating "fcbmUnrated"

{-# COMPLETE
  ContentRating_FcbmRating_FcbmUnspecified,
  ContentRating_FcbmRating_FcbmU,
  ContentRating_FcbmRating_FCBMPG13,
  ContentRating_FcbmRating_FCBMP13,
  ContentRating_FcbmRating_FCBM18,
  ContentRating_FcbmRating_Fcbm18sx,
  ContentRating_FcbmRating_Fcbm18pa,
  ContentRating_FcbmRating_Fcbm18sg,
  ContentRating_FcbmRating_Fcbm18pl,
  ContentRating_FcbmRating_FcbmUnrated,
  ContentRating_FcbmRating
  #-}

-- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and Article Administration.
newtype ContentRating_FcoRating = ContentRating_FcoRating {fromContentRating_FcoRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_FcoRating_FcoUnspecified :: ContentRating_FcoRating
pattern ContentRating_FcoRating_FcoUnspecified = ContentRating_FcoRating "fcoUnspecified"

-- | I
pattern ContentRating_FcoRating_FcoI :: ContentRating_FcoRating
pattern ContentRating_FcoRating_FcoI = ContentRating_FcoRating "fcoI"

-- | IIA
pattern ContentRating_FcoRating_FcoIia :: ContentRating_FcoRating
pattern ContentRating_FcoRating_FcoIia = ContentRating_FcoRating "fcoIia"

-- | IIB
pattern ContentRating_FcoRating_FcoIib :: ContentRating_FcoRating
pattern ContentRating_FcoRating_FcoIib = ContentRating_FcoRating "fcoIib"

-- | II
pattern ContentRating_FcoRating_FcoIi :: ContentRating_FcoRating
pattern ContentRating_FcoRating_FcoIi = ContentRating_FcoRating "fcoIi"

-- | III
pattern ContentRating_FcoRating_FcoIii :: ContentRating_FcoRating
pattern ContentRating_FcoRating_FcoIii = ContentRating_FcoRating "fcoIii"

pattern ContentRating_FcoRating_FcoUnrated :: ContentRating_FcoRating
pattern ContentRating_FcoRating_FcoUnrated = ContentRating_FcoRating "fcoUnrated"

{-# COMPLETE
  ContentRating_FcoRating_FcoUnspecified,
  ContentRating_FcoRating_FcoI,
  ContentRating_FcoRating_FcoIia,
  ContentRating_FcoRating_FcoIib,
  ContentRating_FcoRating_FcoIi,
  ContentRating_FcoRating_FcoIii,
  ContentRating_FcoRating_FcoUnrated,
  ContentRating_FcoRating
  #-}

-- | This property has been deprecated. Use the contentDetails.contentRating.cncRating instead.
newtype ContentRating_FmocRating = ContentRating_FmocRating {fromContentRating_FmocRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_FmocRating_FmocUnspecified :: ContentRating_FmocRating
pattern ContentRating_FmocRating_FmocUnspecified = ContentRating_FmocRating "fmocUnspecified"

-- | U
pattern ContentRating_FmocRating_FmocU :: ContentRating_FmocRating
pattern ContentRating_FmocRating_FmocU = ContentRating_FmocRating "fmocU"

-- | 10
pattern ContentRating_FmocRating_FMOC10 :: ContentRating_FmocRating
pattern ContentRating_FmocRating_FMOC10 = ContentRating_FmocRating "fmoc10"

-- | 12
pattern ContentRating_FmocRating_FMOC12 :: ContentRating_FmocRating
pattern ContentRating_FmocRating_FMOC12 = ContentRating_FmocRating "fmoc12"

-- | 16
pattern ContentRating_FmocRating_FMOC16 :: ContentRating_FmocRating
pattern ContentRating_FmocRating_FMOC16 = ContentRating_FmocRating "fmoc16"

-- | 18
pattern ContentRating_FmocRating_FMOC18 :: ContentRating_FmocRating
pattern ContentRating_FmocRating_FMOC18 = ContentRating_FmocRating "fmoc18"

-- | E
pattern ContentRating_FmocRating_FmocE :: ContentRating_FmocRating
pattern ContentRating_FmocRating_FmocE = ContentRating_FmocRating "fmocE"

pattern ContentRating_FmocRating_FmocUnrated :: ContentRating_FmocRating
pattern ContentRating_FmocRating_FmocUnrated = ContentRating_FmocRating "fmocUnrated"

{-# COMPLETE
  ContentRating_FmocRating_FmocUnspecified,
  ContentRating_FmocRating_FmocU,
  ContentRating_FmocRating_FMOC10,
  ContentRating_FmocRating_FMOC12,
  ContentRating_FmocRating_FMOC16,
  ContentRating_FmocRating_FMOC18,
  ContentRating_FmocRating_FmocE,
  ContentRating_FmocRating_FmocUnrated,
  ContentRating_FmocRating
  #-}

-- | The video\'s rating from South Africa\'s Film and Publication Board.
newtype ContentRating_FpbRating = ContentRating_FpbRating {fromContentRating_FpbRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_FpbRating_FpbUnspecified :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FpbUnspecified = ContentRating_FpbRating "fpbUnspecified"

-- | A
pattern ContentRating_FpbRating_FpbA :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FpbA = ContentRating_FpbRating "fpbA"

-- | PG
pattern ContentRating_FpbRating_FpbPg :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FpbPg = ContentRating_FpbRating "fpbPg"

-- | 7-9PG
pattern ContentRating_FpbRating_Fpb79Pg :: ContentRating_FpbRating
pattern ContentRating_FpbRating_Fpb79Pg = ContentRating_FpbRating "fpb79Pg"

-- | 10-12PG
pattern ContentRating_FpbRating_Fpb1012Pg :: ContentRating_FpbRating
pattern ContentRating_FpbRating_Fpb1012Pg = ContentRating_FpbRating "fpb1012Pg"

-- | 13
pattern ContentRating_FpbRating_FPB13 :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FPB13 = ContentRating_FpbRating "fpb13"

-- | 16
pattern ContentRating_FpbRating_FPB16 :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FPB16 = ContentRating_FpbRating "fpb16"

-- | 18
pattern ContentRating_FpbRating_FPB18 :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FPB18 = ContentRating_FpbRating "fpb18"

-- | X18
pattern ContentRating_FpbRating_FPBX18 :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FPBX18 = ContentRating_FpbRating "fpbX18"

-- | XX
pattern ContentRating_FpbRating_FpbXx :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FpbXx = ContentRating_FpbRating "fpbXx"

pattern ContentRating_FpbRating_FpbUnrated :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FpbUnrated = ContentRating_FpbRating "fpbUnrated"

-- | 10
pattern ContentRating_FpbRating_FPB10 :: ContentRating_FpbRating
pattern ContentRating_FpbRating_FPB10 = ContentRating_FpbRating "fpb10"

{-# COMPLETE
  ContentRating_FpbRating_FpbUnspecified,
  ContentRating_FpbRating_FpbA,
  ContentRating_FpbRating_FpbPg,
  ContentRating_FpbRating_Fpb79Pg,
  ContentRating_FpbRating_Fpb1012Pg,
  ContentRating_FpbRating_FPB13,
  ContentRating_FpbRating_FPB16,
  ContentRating_FpbRating_FPB18,
  ContentRating_FpbRating_FPBX18,
  ContentRating_FpbRating_FpbXx,
  ContentRating_FpbRating_FpbUnrated,
  ContentRating_FpbRating_FPB10,
  ContentRating_FpbRating
  #-}

newtype ContentRating_FpbRatingReasonsItem = ContentRating_FpbRatingReasonsItem {fromContentRating_FpbRatingReasonsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_FpbRatingReasonsItem_FpbRatingReasonUnspecified :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbRatingReasonUnspecified = ContentRating_FpbRatingReasonsItem "fpbRatingReasonUnspecified"

-- | South Africa rating content descriptors.
pattern ContentRating_FpbRatingReasonsItem_FpbBlasphemy :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbBlasphemy = ContentRating_FpbRatingReasonsItem "fpbBlasphemy"

pattern ContentRating_FpbRatingReasonsItem_FpbLanguage :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbLanguage = ContentRating_FpbRatingReasonsItem "fpbLanguage"

pattern ContentRating_FpbRatingReasonsItem_FpbNudity :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbNudity = ContentRating_FpbRatingReasonsItem "fpbNudity"

pattern ContentRating_FpbRatingReasonsItem_FpbPrejudice :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbPrejudice = ContentRating_FpbRatingReasonsItem "fpbPrejudice"

pattern ContentRating_FpbRatingReasonsItem_FpbSex :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbSex = ContentRating_FpbRatingReasonsItem "fpbSex"

pattern ContentRating_FpbRatingReasonsItem_FpbViolence :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbViolence = ContentRating_FpbRatingReasonsItem "fpbViolence"

pattern ContentRating_FpbRatingReasonsItem_FpbDrugs :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbDrugs = ContentRating_FpbRatingReasonsItem "fpbDrugs"

pattern ContentRating_FpbRatingReasonsItem_FpbSexualViolence :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbSexualViolence = ContentRating_FpbRatingReasonsItem "fpbSexualViolence"

pattern ContentRating_FpbRatingReasonsItem_FpbHorror :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbHorror = ContentRating_FpbRatingReasonsItem "fpbHorror"

pattern ContentRating_FpbRatingReasonsItem_FpbCriminalTechniques :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbCriminalTechniques = ContentRating_FpbRatingReasonsItem "fpbCriminalTechniques"

pattern ContentRating_FpbRatingReasonsItem_FpbImitativeActsTechniques :: ContentRating_FpbRatingReasonsItem
pattern ContentRating_FpbRatingReasonsItem_FpbImitativeActsTechniques = ContentRating_FpbRatingReasonsItem "fpbImitativeActsTechniques"

{-# COMPLETE
  ContentRating_FpbRatingReasonsItem_FpbRatingReasonUnspecified,
  ContentRating_FpbRatingReasonsItem_FpbBlasphemy,
  ContentRating_FpbRatingReasonsItem_FpbLanguage,
  ContentRating_FpbRatingReasonsItem_FpbNudity,
  ContentRating_FpbRatingReasonsItem_FpbPrejudice,
  ContentRating_FpbRatingReasonsItem_FpbSex,
  ContentRating_FpbRatingReasonsItem_FpbViolence,
  ContentRating_FpbRatingReasonsItem_FpbDrugs,
  ContentRating_FpbRatingReasonsItem_FpbSexualViolence,
  ContentRating_FpbRatingReasonsItem_FpbHorror,
  ContentRating_FpbRatingReasonsItem_FpbCriminalTechniques,
  ContentRating_FpbRatingReasonsItem_FpbImitativeActsTechniques,
  ContentRating_FpbRatingReasonsItem
  #-}

-- | The video\'s Freiwillige Selbstkontrolle der Filmwirtschaft (FSK - Germany) rating.
newtype ContentRating_FskRating = ContentRating_FskRating {fromContentRating_FskRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_FskRating_FskUnspecified :: ContentRating_FskRating
pattern ContentRating_FskRating_FskUnspecified = ContentRating_FskRating "fskUnspecified"

-- | FSK 0
pattern ContentRating_FskRating_FSK0 :: ContentRating_FskRating
pattern ContentRating_FskRating_FSK0 = ContentRating_FskRating "fsk0"

-- | FSK 6
pattern ContentRating_FskRating_FSK6 :: ContentRating_FskRating
pattern ContentRating_FskRating_FSK6 = ContentRating_FskRating "fsk6"

-- | FSK 12
pattern ContentRating_FskRating_FSK12 :: ContentRating_FskRating
pattern ContentRating_FskRating_FSK12 = ContentRating_FskRating "fsk12"

-- | FSK 16
pattern ContentRating_FskRating_FSK16 :: ContentRating_FskRating
pattern ContentRating_FskRating_FSK16 = ContentRating_FskRating "fsk16"

-- | FSK 18
pattern ContentRating_FskRating_FSK18 :: ContentRating_FskRating
pattern ContentRating_FskRating_FSK18 = ContentRating_FskRating "fsk18"

pattern ContentRating_FskRating_FskUnrated :: ContentRating_FskRating
pattern ContentRating_FskRating_FskUnrated = ContentRating_FskRating "fskUnrated"

{-# COMPLETE
  ContentRating_FskRating_FskUnspecified,
  ContentRating_FskRating_FSK0,
  ContentRating_FskRating_FSK6,
  ContentRating_FskRating_FSK12,
  ContentRating_FskRating_FSK16,
  ContentRating_FskRating_FSK18,
  ContentRating_FskRating_FskUnrated,
  ContentRating_FskRating
  #-}

-- | The video\'s rating in Greece.
newtype ContentRating_GrfilmRating = ContentRating_GrfilmRating {fromContentRating_GrfilmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_GrfilmRating_GrfilmUnspecified :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GrfilmUnspecified = ContentRating_GrfilmRating "grfilmUnspecified"

-- | K
pattern ContentRating_GrfilmRating_GrfilmK :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GrfilmK = ContentRating_GrfilmRating "grfilmK"

-- | E
pattern ContentRating_GrfilmRating_GrfilmE :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GrfilmE = ContentRating_GrfilmRating "grfilmE"

-- | K-12
pattern ContentRating_GrfilmRating_GRFILMK12 :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GRFILMK12 = ContentRating_GrfilmRating "grfilmK12"

-- | K-13
pattern ContentRating_GrfilmRating_GRFILMK13 :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GRFILMK13 = ContentRating_GrfilmRating "grfilmK13"

-- | K-15
pattern ContentRating_GrfilmRating_GRFILMK15 :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GRFILMK15 = ContentRating_GrfilmRating "grfilmK15"

-- | K-17
pattern ContentRating_GrfilmRating_GRFILMK17 :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GRFILMK17 = ContentRating_GrfilmRating "grfilmK17"

-- | K-18
pattern ContentRating_GrfilmRating_GRFILMK18 :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GRFILMK18 = ContentRating_GrfilmRating "grfilmK18"

pattern ContentRating_GrfilmRating_GrfilmUnrated :: ContentRating_GrfilmRating
pattern ContentRating_GrfilmRating_GrfilmUnrated = ContentRating_GrfilmRating "grfilmUnrated"

{-# COMPLETE
  ContentRating_GrfilmRating_GrfilmUnspecified,
  ContentRating_GrfilmRating_GrfilmK,
  ContentRating_GrfilmRating_GrfilmE,
  ContentRating_GrfilmRating_GRFILMK12,
  ContentRating_GrfilmRating_GRFILMK13,
  ContentRating_GrfilmRating_GRFILMK15,
  ContentRating_GrfilmRating_GRFILMK17,
  ContentRating_GrfilmRating_GRFILMK18,
  ContentRating_GrfilmRating_GrfilmUnrated,
  ContentRating_GrfilmRating
  #-}

-- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales (ICAA - Spain) rating.
newtype ContentRating_IcaaRating = ContentRating_IcaaRating {fromContentRating_IcaaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_IcaaRating_IcaaUnspecified :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_IcaaUnspecified = ContentRating_IcaaRating "icaaUnspecified"

-- | APTA
pattern ContentRating_IcaaRating_IcaaApta :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_IcaaApta = ContentRating_IcaaRating "icaaApta"

-- | 7
pattern ContentRating_IcaaRating_ICAA7 :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_ICAA7 = ContentRating_IcaaRating "icaa7"

-- | 12
pattern ContentRating_IcaaRating_ICAA12 :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_ICAA12 = ContentRating_IcaaRating "icaa12"

-- | 13
pattern ContentRating_IcaaRating_ICAA13 :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_ICAA13 = ContentRating_IcaaRating "icaa13"

-- | 16
pattern ContentRating_IcaaRating_ICAA16 :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_ICAA16 = ContentRating_IcaaRating "icaa16"

-- | 18
pattern ContentRating_IcaaRating_ICAA18 :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_ICAA18 = ContentRating_IcaaRating "icaa18"

-- | X
pattern ContentRating_IcaaRating_IcaaX :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_IcaaX = ContentRating_IcaaRating "icaaX"

pattern ContentRating_IcaaRating_IcaaUnrated :: ContentRating_IcaaRating
pattern ContentRating_IcaaRating_IcaaUnrated = ContentRating_IcaaRating "icaaUnrated"

{-# COMPLETE
  ContentRating_IcaaRating_IcaaUnspecified,
  ContentRating_IcaaRating_IcaaApta,
  ContentRating_IcaaRating_ICAA7,
  ContentRating_IcaaRating_ICAA12,
  ContentRating_IcaaRating_ICAA13,
  ContentRating_IcaaRating_ICAA16,
  ContentRating_IcaaRating_ICAA18,
  ContentRating_IcaaRating_IcaaX,
  ContentRating_IcaaRating_IcaaUnrated,
  ContentRating_IcaaRating
  #-}

-- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating. See the IFCO website for more information.
newtype ContentRating_IfcoRating = ContentRating_IfcoRating {fromContentRating_IfcoRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_IfcoRating_IfcoUnspecified :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_IfcoUnspecified = ContentRating_IfcoRating "ifcoUnspecified"

-- | G
pattern ContentRating_IfcoRating_IfcoG :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_IfcoG = ContentRating_IfcoRating "ifcoG"

-- | PG
pattern ContentRating_IfcoRating_IfcoPg :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_IfcoPg = ContentRating_IfcoRating "ifcoPg"

-- | 12
pattern ContentRating_IfcoRating_IFCO12 :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_IFCO12 = ContentRating_IfcoRating "ifco12"

-- | 12A
pattern ContentRating_IfcoRating_Ifco12a :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_Ifco12a = ContentRating_IfcoRating "ifco12a"

-- | 15
pattern ContentRating_IfcoRating_IFCO15 :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_IFCO15 = ContentRating_IfcoRating "ifco15"

-- | 15A
pattern ContentRating_IfcoRating_Ifco15a :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_Ifco15a = ContentRating_IfcoRating "ifco15a"

-- | 16
pattern ContentRating_IfcoRating_IFCO16 :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_IFCO16 = ContentRating_IfcoRating "ifco16"

-- | 18
pattern ContentRating_IfcoRating_IFCO18 :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_IFCO18 = ContentRating_IfcoRating "ifco18"

pattern ContentRating_IfcoRating_IfcoUnrated :: ContentRating_IfcoRating
pattern ContentRating_IfcoRating_IfcoUnrated = ContentRating_IfcoRating "ifcoUnrated"

{-# COMPLETE
  ContentRating_IfcoRating_IfcoUnspecified,
  ContentRating_IfcoRating_IfcoG,
  ContentRating_IfcoRating_IfcoPg,
  ContentRating_IfcoRating_IFCO12,
  ContentRating_IfcoRating_Ifco12a,
  ContentRating_IfcoRating_IFCO15,
  ContentRating_IfcoRating_Ifco15a,
  ContentRating_IfcoRating_IFCO16,
  ContentRating_IfcoRating_IFCO18,
  ContentRating_IfcoRating_IfcoUnrated,
  ContentRating_IfcoRating
  #-}

-- | The video\'s rating in Israel.
newtype ContentRating_IlfilmRating = ContentRating_IlfilmRating {fromContentRating_IlfilmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_IlfilmRating_IlfilmUnspecified :: ContentRating_IlfilmRating
pattern ContentRating_IlfilmRating_IlfilmUnspecified = ContentRating_IlfilmRating "ilfilmUnspecified"

-- | AA
pattern ContentRating_IlfilmRating_IlfilmAa :: ContentRating_IlfilmRating
pattern ContentRating_IlfilmRating_IlfilmAa = ContentRating_IlfilmRating "ilfilmAa"

-- | 12
pattern ContentRating_IlfilmRating_ILFILM12 :: ContentRating_IlfilmRating
pattern ContentRating_IlfilmRating_ILFILM12 = ContentRating_IlfilmRating "ilfilm12"

-- | 14
pattern ContentRating_IlfilmRating_ILFILM14 :: ContentRating_IlfilmRating
pattern ContentRating_IlfilmRating_ILFILM14 = ContentRating_IlfilmRating "ilfilm14"

-- | 16
pattern ContentRating_IlfilmRating_ILFILM16 :: ContentRating_IlfilmRating
pattern ContentRating_IlfilmRating_ILFILM16 = ContentRating_IlfilmRating "ilfilm16"

-- | 18
pattern ContentRating_IlfilmRating_ILFILM18 :: ContentRating_IlfilmRating
pattern ContentRating_IlfilmRating_ILFILM18 = ContentRating_IlfilmRating "ilfilm18"

pattern ContentRating_IlfilmRating_IlfilmUnrated :: ContentRating_IlfilmRating
pattern ContentRating_IlfilmRating_IlfilmUnrated = ContentRating_IlfilmRating "ilfilmUnrated"

{-# COMPLETE
  ContentRating_IlfilmRating_IlfilmUnspecified,
  ContentRating_IlfilmRating_IlfilmAa,
  ContentRating_IlfilmRating_ILFILM12,
  ContentRating_IlfilmRating_ILFILM14,
  ContentRating_IlfilmRating_ILFILM16,
  ContentRating_IlfilmRating_ILFILM18,
  ContentRating_IlfilmRating_IlfilmUnrated,
  ContentRating_IlfilmRating
  #-}

-- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales - Argentina) rating.
newtype ContentRating_IncaaRating = ContentRating_IncaaRating {fromContentRating_IncaaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_IncaaRating_IncaaUnspecified :: ContentRating_IncaaRating
pattern ContentRating_IncaaRating_IncaaUnspecified = ContentRating_IncaaRating "incaaUnspecified"

-- | ATP (Apta para todo publico)
pattern ContentRating_IncaaRating_IncaaAtp :: ContentRating_IncaaRating
pattern ContentRating_IncaaRating_IncaaAtp = ContentRating_IncaaRating "incaaAtp"

-- | 13 (Solo apta para mayores de 13 años)
pattern ContentRating_IncaaRating_INCAASAM13 :: ContentRating_IncaaRating
pattern ContentRating_IncaaRating_INCAASAM13 = ContentRating_IncaaRating "incaaSam13"

-- | 16 (Solo apta para mayores de 16 años)
pattern ContentRating_IncaaRating_INCAASAM16 :: ContentRating_IncaaRating
pattern ContentRating_IncaaRating_INCAASAM16 = ContentRating_IncaaRating "incaaSam16"

-- | 18 (Solo apta para mayores de 18 años)
pattern ContentRating_IncaaRating_INCAASAM18 :: ContentRating_IncaaRating
pattern ContentRating_IncaaRating_INCAASAM18 = ContentRating_IncaaRating "incaaSam18"

-- | X (Solo apta para mayores de 18 años, de exhibición condicionada)
pattern ContentRating_IncaaRating_IncaaC :: ContentRating_IncaaRating
pattern ContentRating_IncaaRating_IncaaC = ContentRating_IncaaRating "incaaC"

pattern ContentRating_IncaaRating_IncaaUnrated :: ContentRating_IncaaRating
pattern ContentRating_IncaaRating_IncaaUnrated = ContentRating_IncaaRating "incaaUnrated"

{-# COMPLETE
  ContentRating_IncaaRating_IncaaUnspecified,
  ContentRating_IncaaRating_IncaaAtp,
  ContentRating_IncaaRating_INCAASAM13,
  ContentRating_IncaaRating_INCAASAM16,
  ContentRating_IncaaRating_INCAASAM18,
  ContentRating_IncaaRating_IncaaC,
  ContentRating_IncaaRating_IncaaUnrated,
  ContentRating_IncaaRating
  #-}

-- | The video\'s rating from the Kenya Film Classification Board.
newtype ContentRating_KfcbRating = ContentRating_KfcbRating {fromContentRating_KfcbRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_KfcbRating_KfcbUnspecified :: ContentRating_KfcbRating
pattern ContentRating_KfcbRating_KfcbUnspecified = ContentRating_KfcbRating "kfcbUnspecified"

-- | GE
pattern ContentRating_KfcbRating_KfcbG :: ContentRating_KfcbRating
pattern ContentRating_KfcbRating_KfcbG = ContentRating_KfcbRating "kfcbG"

-- | PG
pattern ContentRating_KfcbRating_KfcbPg :: ContentRating_KfcbRating
pattern ContentRating_KfcbRating_KfcbPg = ContentRating_KfcbRating "kfcbPg"

-- | 16
pattern ContentRating_KfcbRating_Kfcb16plus :: ContentRating_KfcbRating
pattern ContentRating_KfcbRating_Kfcb16plus = ContentRating_KfcbRating "kfcb16plus"

-- | 18
pattern ContentRating_KfcbRating_KfcbR :: ContentRating_KfcbRating
pattern ContentRating_KfcbRating_KfcbR = ContentRating_KfcbRating "kfcbR"

pattern ContentRating_KfcbRating_KfcbUnrated :: ContentRating_KfcbRating
pattern ContentRating_KfcbRating_KfcbUnrated = ContentRating_KfcbRating "kfcbUnrated"

{-# COMPLETE
  ContentRating_KfcbRating_KfcbUnspecified,
  ContentRating_KfcbRating_KfcbG,
  ContentRating_KfcbRating_KfcbPg,
  ContentRating_KfcbRating_Kfcb16plus,
  ContentRating_KfcbRating_KfcbR,
  ContentRating_KfcbRating_KfcbUnrated,
  ContentRating_KfcbRating
  #-}

-- | The video\'s NICAM\/Kijkwijzer rating from the Nederlands Instituut voor de Classificatie van Audiovisuele Media (Netherlands).
newtype ContentRating_KijkwijzerRating = ContentRating_KijkwijzerRating {fromContentRating_KijkwijzerRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_KijkwijzerRating_KijkwijzerUnspecified :: ContentRating_KijkwijzerRating
pattern ContentRating_KijkwijzerRating_KijkwijzerUnspecified = ContentRating_KijkwijzerRating "kijkwijzerUnspecified"

-- | AL
pattern ContentRating_KijkwijzerRating_KijkwijzerAl :: ContentRating_KijkwijzerRating
pattern ContentRating_KijkwijzerRating_KijkwijzerAl = ContentRating_KijkwijzerRating "kijkwijzerAl"

-- | 6
pattern ContentRating_KijkwijzerRating_KIJKWIJZER6 :: ContentRating_KijkwijzerRating
pattern ContentRating_KijkwijzerRating_KIJKWIJZER6 = ContentRating_KijkwijzerRating "kijkwijzer6"

-- | 9
pattern ContentRating_KijkwijzerRating_KIJKWIJZER9 :: ContentRating_KijkwijzerRating
pattern ContentRating_KijkwijzerRating_KIJKWIJZER9 = ContentRating_KijkwijzerRating "kijkwijzer9"

-- | 12
pattern ContentRating_KijkwijzerRating_KIJKWIJZER12 :: ContentRating_KijkwijzerRating
pattern ContentRating_KijkwijzerRating_KIJKWIJZER12 = ContentRating_KijkwijzerRating "kijkwijzer12"

-- | 16
pattern ContentRating_KijkwijzerRating_KIJKWIJZER16 :: ContentRating_KijkwijzerRating
pattern ContentRating_KijkwijzerRating_KIJKWIJZER16 = ContentRating_KijkwijzerRating "kijkwijzer16"

pattern ContentRating_KijkwijzerRating_KIJKWIJZER18 :: ContentRating_KijkwijzerRating
pattern ContentRating_KijkwijzerRating_KIJKWIJZER18 = ContentRating_KijkwijzerRating "kijkwijzer18"

pattern ContentRating_KijkwijzerRating_KijkwijzerUnrated :: ContentRating_KijkwijzerRating
pattern ContentRating_KijkwijzerRating_KijkwijzerUnrated = ContentRating_KijkwijzerRating "kijkwijzerUnrated"

{-# COMPLETE
  ContentRating_KijkwijzerRating_KijkwijzerUnspecified,
  ContentRating_KijkwijzerRating_KijkwijzerAl,
  ContentRating_KijkwijzerRating_KIJKWIJZER6,
  ContentRating_KijkwijzerRating_KIJKWIJZER9,
  ContentRating_KijkwijzerRating_KIJKWIJZER12,
  ContentRating_KijkwijzerRating_KIJKWIJZER16,
  ContentRating_KijkwijzerRating_KIJKWIJZER18,
  ContentRating_KijkwijzerRating_KijkwijzerUnrated,
  ContentRating_KijkwijzerRating
  #-}

-- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The KMRB rates videos in South Korea.
newtype ContentRating_KmrbRating = ContentRating_KmrbRating {fromContentRating_KmrbRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_KmrbRating_KmrbUnspecified :: ContentRating_KmrbRating
pattern ContentRating_KmrbRating_KmrbUnspecified = ContentRating_KmrbRating "kmrbUnspecified"

-- | 전체관람가
pattern ContentRating_KmrbRating_KmrbAll :: ContentRating_KmrbRating
pattern ContentRating_KmrbRating_KmrbAll = ContentRating_KmrbRating "kmrbAll"

-- | 12세 이상 관람가
pattern ContentRating_KmrbRating_Kmrb12plus :: ContentRating_KmrbRating
pattern ContentRating_KmrbRating_Kmrb12plus = ContentRating_KmrbRating "kmrb12plus"

-- | 15세 이상 관람가
pattern ContentRating_KmrbRating_Kmrb15plus :: ContentRating_KmrbRating
pattern ContentRating_KmrbRating_Kmrb15plus = ContentRating_KmrbRating "kmrb15plus"

pattern ContentRating_KmrbRating_KmrbTeenr :: ContentRating_KmrbRating
pattern ContentRating_KmrbRating_KmrbTeenr = ContentRating_KmrbRating "kmrbTeenr"

-- | 청소년 관람불가
pattern ContentRating_KmrbRating_KmrbR :: ContentRating_KmrbRating
pattern ContentRating_KmrbRating_KmrbR = ContentRating_KmrbRating "kmrbR"

pattern ContentRating_KmrbRating_KmrbUnrated :: ContentRating_KmrbRating
pattern ContentRating_KmrbRating_KmrbUnrated = ContentRating_KmrbRating "kmrbUnrated"

{-# COMPLETE
  ContentRating_KmrbRating_KmrbUnspecified,
  ContentRating_KmrbRating_KmrbAll,
  ContentRating_KmrbRating_Kmrb12plus,
  ContentRating_KmrbRating_Kmrb15plus,
  ContentRating_KmrbRating_KmrbTeenr,
  ContentRating_KmrbRating_KmrbR,
  ContentRating_KmrbRating_KmrbUnrated,
  ContentRating_KmrbRating
  #-}

-- | The video\'s rating from Indonesia\'s Lembaga Sensor Film.
newtype ContentRating_LsfRating = ContentRating_LsfRating {fromContentRating_LsfRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_LsfRating_LsfUnspecified :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LsfUnspecified = ContentRating_LsfRating "lsfUnspecified"

-- | SU
pattern ContentRating_LsfRating_LsfSu :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LsfSu = ContentRating_LsfRating "lsfSu"

-- | A
pattern ContentRating_LsfRating_LsfA :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LsfA = ContentRating_LsfRating "lsfA"

-- | BO
pattern ContentRating_LsfRating_LsfBo :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LsfBo = ContentRating_LsfRating "lsfBo"

-- | 13
pattern ContentRating_LsfRating_LSF13 :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LSF13 = ContentRating_LsfRating "lsf13"

-- | R
pattern ContentRating_LsfRating_LsfR :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LsfR = ContentRating_LsfRating "lsfR"

-- | 17
pattern ContentRating_LsfRating_LSF17 :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LSF17 = ContentRating_LsfRating "lsf17"

-- | D
pattern ContentRating_LsfRating_LsfD :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LsfD = ContentRating_LsfRating "lsfD"

-- | 21
pattern ContentRating_LsfRating_LSF21 :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LSF21 = ContentRating_LsfRating "lsf21"

pattern ContentRating_LsfRating_LsfUnrated :: ContentRating_LsfRating
pattern ContentRating_LsfRating_LsfUnrated = ContentRating_LsfRating "lsfUnrated"

{-# COMPLETE
  ContentRating_LsfRating_LsfUnspecified,
  ContentRating_LsfRating_LsfSu,
  ContentRating_LsfRating_LsfA,
  ContentRating_LsfRating_LsfBo,
  ContentRating_LsfRating_LSF13,
  ContentRating_LsfRating_LsfR,
  ContentRating_LsfRating_LSF17,
  ContentRating_LsfRating_LsfD,
  ContentRating_LsfRating_LSF21,
  ContentRating_LsfRating_LsfUnrated,
  ContentRating_LsfRating
  #-}

-- | The video\'s rating from Malta\'s Film Age-Classification Board.
newtype ContentRating_MccaaRating = ContentRating_MccaaRating {fromContentRating_MccaaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MccaaRating_MccaaUnspecified :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MccaaUnspecified = ContentRating_MccaaRating "mccaaUnspecified"

-- | U
pattern ContentRating_MccaaRating_MccaaU :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MccaaU = ContentRating_MccaaRating "mccaaU"

-- | PG
pattern ContentRating_MccaaRating_MccaaPg :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MccaaPg = ContentRating_MccaaRating "mccaaPg"

-- | 12A
pattern ContentRating_MccaaRating_Mccaa12a :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_Mccaa12a = ContentRating_MccaaRating "mccaa12a"

-- | 12
pattern ContentRating_MccaaRating_MCCAA12 :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MCCAA12 = ContentRating_MccaaRating "mccaa12"

-- | 14 - this rating was removed from the new classification structure introduced in 2013.
pattern ContentRating_MccaaRating_MCCAA14 :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MCCAA14 = ContentRating_MccaaRating "mccaa14"

-- | 15
pattern ContentRating_MccaaRating_MCCAA15 :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MCCAA15 = ContentRating_MccaaRating "mccaa15"

-- | 16 - this rating was removed from the new classification structure introduced in 2013.
pattern ContentRating_MccaaRating_MCCAA16 :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MCCAA16 = ContentRating_MccaaRating "mccaa16"

-- | 18
pattern ContentRating_MccaaRating_MCCAA18 :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MCCAA18 = ContentRating_MccaaRating "mccaa18"

pattern ContentRating_MccaaRating_MccaaUnrated :: ContentRating_MccaaRating
pattern ContentRating_MccaaRating_MccaaUnrated = ContentRating_MccaaRating "mccaaUnrated"

{-# COMPLETE
  ContentRating_MccaaRating_MccaaUnspecified,
  ContentRating_MccaaRating_MccaaU,
  ContentRating_MccaaRating_MccaaPg,
  ContentRating_MccaaRating_Mccaa12a,
  ContentRating_MccaaRating_MCCAA12,
  ContentRating_MccaaRating_MCCAA14,
  ContentRating_MccaaRating_MCCAA15,
  ContentRating_MccaaRating_MCCAA16,
  ContentRating_MccaaRating_MCCAA18,
  ContentRating_MccaaRating_MccaaUnrated,
  ContentRating_MccaaRating
  #-}

-- | The video\'s rating from the Danish Film Institute\'s (Det Danske Filminstitut) Media Council for Children and Young People.
newtype ContentRating_MccypRating = ContentRating_MccypRating {fromContentRating_MccypRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MccypRating_MccypUnspecified :: ContentRating_MccypRating
pattern ContentRating_MccypRating_MccypUnspecified = ContentRating_MccypRating "mccypUnspecified"

-- | A
pattern ContentRating_MccypRating_MccypA :: ContentRating_MccypRating
pattern ContentRating_MccypRating_MccypA = ContentRating_MccypRating "mccypA"

-- | 7
pattern ContentRating_MccypRating_MCCYP7 :: ContentRating_MccypRating
pattern ContentRating_MccypRating_MCCYP7 = ContentRating_MccypRating "mccyp7"

-- | 11
pattern ContentRating_MccypRating_MCCYP11 :: ContentRating_MccypRating
pattern ContentRating_MccypRating_MCCYP11 = ContentRating_MccypRating "mccyp11"

-- | 15
pattern ContentRating_MccypRating_MCCYP15 :: ContentRating_MccypRating
pattern ContentRating_MccypRating_MCCYP15 = ContentRating_MccypRating "mccyp15"

pattern ContentRating_MccypRating_MccypUnrated :: ContentRating_MccypRating
pattern ContentRating_MccypRating_MccypUnrated = ContentRating_MccypRating "mccypUnrated"

{-# COMPLETE
  ContentRating_MccypRating_MccypUnspecified,
  ContentRating_MccypRating_MccypA,
  ContentRating_MccypRating_MCCYP7,
  ContentRating_MccypRating_MCCYP11,
  ContentRating_MccypRating_MCCYP15,
  ContentRating_MccypRating_MccypUnrated,
  ContentRating_MccypRating
  #-}

-- | The video\'s rating system for Vietnam - MCST
newtype ContentRating_McstRating = ContentRating_McstRating {fromContentRating_McstRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_McstRating_McstUnspecified :: ContentRating_McstRating
pattern ContentRating_McstRating_McstUnspecified = ContentRating_McstRating "mcstUnspecified"

-- | P
pattern ContentRating_McstRating_McstP :: ContentRating_McstRating
pattern ContentRating_McstRating_McstP = ContentRating_McstRating "mcstP"

-- | 0
pattern ContentRating_McstRating_MCST0 :: ContentRating_McstRating
pattern ContentRating_McstRating_MCST0 = ContentRating_McstRating "mcst0"

-- | C13
pattern ContentRating_McstRating_MCSTC13 :: ContentRating_McstRating
pattern ContentRating_McstRating_MCSTC13 = ContentRating_McstRating "mcstC13"

-- | C16
pattern ContentRating_McstRating_MCSTC16 :: ContentRating_McstRating
pattern ContentRating_McstRating_MCSTC16 = ContentRating_McstRating "mcstC16"

-- | 16+
pattern ContentRating_McstRating_Mcst16plus :: ContentRating_McstRating
pattern ContentRating_McstRating_Mcst16plus = ContentRating_McstRating "mcst16plus"

-- | C18
pattern ContentRating_McstRating_MCSTC18 :: ContentRating_McstRating
pattern ContentRating_McstRating_MCSTC18 = ContentRating_McstRating "mcstC18"

-- | MCST/G/PG
pattern ContentRating_McstRating_McstGPg :: ContentRating_McstRating
pattern ContentRating_McstRating_McstGPg = ContentRating_McstRating "mcstGPg"

pattern ContentRating_McstRating_McstUnrated :: ContentRating_McstRating
pattern ContentRating_McstRating_McstUnrated = ContentRating_McstRating "mcstUnrated"

{-# COMPLETE
  ContentRating_McstRating_McstUnspecified,
  ContentRating_McstRating_McstP,
  ContentRating_McstRating_MCST0,
  ContentRating_McstRating_MCSTC13,
  ContentRating_McstRating_MCSTC16,
  ContentRating_McstRating_Mcst16plus,
  ContentRating_McstRating_MCSTC18,
  ContentRating_McstRating_McstGPg,
  ContentRating_McstRating_McstUnrated,
  ContentRating_McstRating
  #-}

-- | The video\'s rating from Singapore\'s Media Development Authority (MDA) and, specifically, it\'s Board of Film Censors (BFC).
newtype ContentRating_MdaRating = ContentRating_MdaRating {fromContentRating_MdaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MdaRating_MdaUnspecified :: ContentRating_MdaRating
pattern ContentRating_MdaRating_MdaUnspecified = ContentRating_MdaRating "mdaUnspecified"

-- | G
pattern ContentRating_MdaRating_MdaG :: ContentRating_MdaRating
pattern ContentRating_MdaRating_MdaG = ContentRating_MdaRating "mdaG"

-- | PG
pattern ContentRating_MdaRating_MdaPg :: ContentRating_MdaRating
pattern ContentRating_MdaRating_MdaPg = ContentRating_MdaRating "mdaPg"

-- | PG13
pattern ContentRating_MdaRating_MDAPG13 :: ContentRating_MdaRating
pattern ContentRating_MdaRating_MDAPG13 = ContentRating_MdaRating "mdaPg13"

-- | NC16
pattern ContentRating_MdaRating_MDANC16 :: ContentRating_MdaRating
pattern ContentRating_MdaRating_MDANC16 = ContentRating_MdaRating "mdaNc16"

-- | M18
pattern ContentRating_MdaRating_MDAM18 :: ContentRating_MdaRating
pattern ContentRating_MdaRating_MDAM18 = ContentRating_MdaRating "mdaM18"

-- | R21
pattern ContentRating_MdaRating_MDAR21 :: ContentRating_MdaRating
pattern ContentRating_MdaRating_MDAR21 = ContentRating_MdaRating "mdaR21"

pattern ContentRating_MdaRating_MdaUnrated :: ContentRating_MdaRating
pattern ContentRating_MdaRating_MdaUnrated = ContentRating_MdaRating "mdaUnrated"

{-# COMPLETE
  ContentRating_MdaRating_MdaUnspecified,
  ContentRating_MdaRating_MdaG,
  ContentRating_MdaRating_MdaPg,
  ContentRating_MdaRating_MDAPG13,
  ContentRating_MdaRating_MDANC16,
  ContentRating_MdaRating_MDAM18,
  ContentRating_MdaRating_MDAR21,
  ContentRating_MdaRating_MdaUnrated,
  ContentRating_MdaRating
  #-}

-- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
newtype ContentRating_MedietilsynetRating = ContentRating_MedietilsynetRating {fromContentRating_MedietilsynetRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MedietilsynetRating_MedietilsynetUnspecified :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MedietilsynetUnspecified = ContentRating_MedietilsynetRating "medietilsynetUnspecified"

-- | A
pattern ContentRating_MedietilsynetRating_MedietilsynetA :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MedietilsynetA = ContentRating_MedietilsynetRating "medietilsynetA"

-- | 6
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET6 :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET6 = ContentRating_MedietilsynetRating "medietilsynet6"

-- | 7
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET7 :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET7 = ContentRating_MedietilsynetRating "medietilsynet7"

-- | 9
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET9 :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET9 = ContentRating_MedietilsynetRating "medietilsynet9"

-- | 11
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET11 :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET11 = ContentRating_MedietilsynetRating "medietilsynet11"

-- | 12
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET12 :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET12 = ContentRating_MedietilsynetRating "medietilsynet12"

-- | 15
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET15 :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET15 = ContentRating_MedietilsynetRating "medietilsynet15"

-- | 18
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET18 :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MEDIETILSYNET18 = ContentRating_MedietilsynetRating "medietilsynet18"

pattern ContentRating_MedietilsynetRating_MedietilsynetUnrated :: ContentRating_MedietilsynetRating
pattern ContentRating_MedietilsynetRating_MedietilsynetUnrated = ContentRating_MedietilsynetRating "medietilsynetUnrated"

{-# COMPLETE
  ContentRating_MedietilsynetRating_MedietilsynetUnspecified,
  ContentRating_MedietilsynetRating_MedietilsynetA,
  ContentRating_MedietilsynetRating_MEDIETILSYNET6,
  ContentRating_MedietilsynetRating_MEDIETILSYNET7,
  ContentRating_MedietilsynetRating_MEDIETILSYNET9,
  ContentRating_MedietilsynetRating_MEDIETILSYNET11,
  ContentRating_MedietilsynetRating_MEDIETILSYNET12,
  ContentRating_MedietilsynetRating_MEDIETILSYNET15,
  ContentRating_MedietilsynetRating_MEDIETILSYNET18,
  ContentRating_MedietilsynetRating_MedietilsynetUnrated,
  ContentRating_MedietilsynetRating
  #-}

-- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen Instituutti (National Audiovisual Institute).
newtype ContentRating_MekuRating = ContentRating_MekuRating {fromContentRating_MekuRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MekuRating_MekuUnspecified :: ContentRating_MekuRating
pattern ContentRating_MekuRating_MekuUnspecified = ContentRating_MekuRating "mekuUnspecified"

-- | S
pattern ContentRating_MekuRating_MekuS :: ContentRating_MekuRating
pattern ContentRating_MekuRating_MekuS = ContentRating_MekuRating "mekuS"

-- | 7
pattern ContentRating_MekuRating_MEKU7 :: ContentRating_MekuRating
pattern ContentRating_MekuRating_MEKU7 = ContentRating_MekuRating "meku7"

-- | 12
pattern ContentRating_MekuRating_MEKU12 :: ContentRating_MekuRating
pattern ContentRating_MekuRating_MEKU12 = ContentRating_MekuRating "meku12"

-- | 16
pattern ContentRating_MekuRating_MEKU16 :: ContentRating_MekuRating
pattern ContentRating_MekuRating_MEKU16 = ContentRating_MekuRating "meku16"

-- | 18
pattern ContentRating_MekuRating_MEKU18 :: ContentRating_MekuRating
pattern ContentRating_MekuRating_MEKU18 = ContentRating_MekuRating "meku18"

pattern ContentRating_MekuRating_MekuUnrated :: ContentRating_MekuRating
pattern ContentRating_MekuRating_MekuUnrated = ContentRating_MekuRating "mekuUnrated"

{-# COMPLETE
  ContentRating_MekuRating_MekuUnspecified,
  ContentRating_MekuRating_MekuS,
  ContentRating_MekuRating_MEKU7,
  ContentRating_MekuRating_MEKU12,
  ContentRating_MekuRating_MEKU16,
  ContentRating_MekuRating_MEKU18,
  ContentRating_MekuRating_MekuUnrated,
  ContentRating_MekuRating
  #-}

-- | The rating system for MENA countries, a clone of MPAA. It is needed to prevent titles go live w\/o additional QC check, since some of them can be inappropriate for the countries at all. See b\/33408548 for more details.
newtype ContentRating_MenaMpaaRating = ContentRating_MenaMpaaRating {fromContentRating_MenaMpaaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MenaMpaaRating_MenaMpaaUnspecified :: ContentRating_MenaMpaaRating
pattern ContentRating_MenaMpaaRating_MenaMpaaUnspecified = ContentRating_MenaMpaaRating "menaMpaaUnspecified"

-- | G
pattern ContentRating_MenaMpaaRating_MenaMpaaG :: ContentRating_MenaMpaaRating
pattern ContentRating_MenaMpaaRating_MenaMpaaG = ContentRating_MenaMpaaRating "menaMpaaG"

-- | PG
pattern ContentRating_MenaMpaaRating_MenaMpaaPg :: ContentRating_MenaMpaaRating
pattern ContentRating_MenaMpaaRating_MenaMpaaPg = ContentRating_MenaMpaaRating "menaMpaaPg"

-- | PG-13
pattern ContentRating_MenaMpaaRating_MENAMPAAPG13 :: ContentRating_MenaMpaaRating
pattern ContentRating_MenaMpaaRating_MENAMPAAPG13 = ContentRating_MenaMpaaRating "menaMpaaPg13"

-- | R
pattern ContentRating_MenaMpaaRating_MenaMpaaR :: ContentRating_MenaMpaaRating
pattern ContentRating_MenaMpaaRating_MenaMpaaR = ContentRating_MenaMpaaRating "menaMpaaR"

-- | To keep the same enum values as MPAA\'s items have, skip NC_17.
pattern ContentRating_MenaMpaaRating_MenaMpaaUnrated :: ContentRating_MenaMpaaRating
pattern ContentRating_MenaMpaaRating_MenaMpaaUnrated = ContentRating_MenaMpaaRating "menaMpaaUnrated"

{-# COMPLETE
  ContentRating_MenaMpaaRating_MenaMpaaUnspecified,
  ContentRating_MenaMpaaRating_MenaMpaaG,
  ContentRating_MenaMpaaRating_MenaMpaaPg,
  ContentRating_MenaMpaaRating_MENAMPAAPG13,
  ContentRating_MenaMpaaRating_MenaMpaaR,
  ContentRating_MenaMpaaRating_MenaMpaaUnrated,
  ContentRating_MenaMpaaRating
  #-}

-- | The video\'s rating from the Ministero dei Beni e delle Attività Culturali e del Turismo (Italy).
newtype ContentRating_MibacRating = ContentRating_MibacRating {fromContentRating_MibacRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MibacRating_MibacUnspecified :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MibacUnspecified = ContentRating_MibacRating "mibacUnspecified"

pattern ContentRating_MibacRating_MibacT :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MibacT = ContentRating_MibacRating "mibacT"

pattern ContentRating_MibacRating_MibacVap :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MibacVap = ContentRating_MibacRating "mibacVap"

pattern ContentRating_MibacRating_MIBACVM6 :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MIBACVM6 = ContentRating_MibacRating "mibacVm6"

pattern ContentRating_MibacRating_MIBACVM12 :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MIBACVM12 = ContentRating_MibacRating "mibacVm12"

pattern ContentRating_MibacRating_MIBACVM14 :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MIBACVM14 = ContentRating_MibacRating "mibacVm14"

pattern ContentRating_MibacRating_MIBACVM16 :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MIBACVM16 = ContentRating_MibacRating "mibacVm16"

pattern ContentRating_MibacRating_MIBACVM18 :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MIBACVM18 = ContentRating_MibacRating "mibacVm18"

pattern ContentRating_MibacRating_MibacUnrated :: ContentRating_MibacRating
pattern ContentRating_MibacRating_MibacUnrated = ContentRating_MibacRating "mibacUnrated"

{-# COMPLETE
  ContentRating_MibacRating_MibacUnspecified,
  ContentRating_MibacRating_MibacT,
  ContentRating_MibacRating_MibacVap,
  ContentRating_MibacRating_MIBACVM6,
  ContentRating_MibacRating_MIBACVM12,
  ContentRating_MibacRating_MIBACVM14,
  ContentRating_MibacRating_MIBACVM16,
  ContentRating_MibacRating_MIBACVM18,
  ContentRating_MibacRating_MibacUnrated,
  ContentRating_MibacRating
  #-}

-- | The video\'s Ministerio de Cultura (Colombia) rating.
newtype ContentRating_MocRating = ContentRating_MocRating {fromContentRating_MocRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MocRating_MocUnspecified :: ContentRating_MocRating
pattern ContentRating_MocRating_MocUnspecified = ContentRating_MocRating "mocUnspecified"

-- | E
pattern ContentRating_MocRating_MocE :: ContentRating_MocRating
pattern ContentRating_MocRating_MocE = ContentRating_MocRating "mocE"

-- | T
pattern ContentRating_MocRating_MocT :: ContentRating_MocRating
pattern ContentRating_MocRating_MocT = ContentRating_MocRating "mocT"

-- | 7
pattern ContentRating_MocRating_MOC7 :: ContentRating_MocRating
pattern ContentRating_MocRating_MOC7 = ContentRating_MocRating "moc7"

-- | 12
pattern ContentRating_MocRating_MOC12 :: ContentRating_MocRating
pattern ContentRating_MocRating_MOC12 = ContentRating_MocRating "moc12"

-- | 15
pattern ContentRating_MocRating_MOC15 :: ContentRating_MocRating
pattern ContentRating_MocRating_MOC15 = ContentRating_MocRating "moc15"

-- | 18
pattern ContentRating_MocRating_MOC18 :: ContentRating_MocRating
pattern ContentRating_MocRating_MOC18 = ContentRating_MocRating "moc18"

-- | X
pattern ContentRating_MocRating_MocX :: ContentRating_MocRating
pattern ContentRating_MocRating_MocX = ContentRating_MocRating "mocX"

-- | Banned
pattern ContentRating_MocRating_MocBanned :: ContentRating_MocRating
pattern ContentRating_MocRating_MocBanned = ContentRating_MocRating "mocBanned"

pattern ContentRating_MocRating_MocUnrated :: ContentRating_MocRating
pattern ContentRating_MocRating_MocUnrated = ContentRating_MocRating "mocUnrated"

{-# COMPLETE
  ContentRating_MocRating_MocUnspecified,
  ContentRating_MocRating_MocE,
  ContentRating_MocRating_MocT,
  ContentRating_MocRating_MOC7,
  ContentRating_MocRating_MOC12,
  ContentRating_MocRating_MOC15,
  ContentRating_MocRating_MOC18,
  ContentRating_MocRating_MocX,
  ContentRating_MocRating_MocBanned,
  ContentRating_MocRating_MocUnrated,
  ContentRating_MocRating
  #-}

-- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
newtype ContentRating_MoctwRating = ContentRating_MoctwRating {fromContentRating_MoctwRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MoctwRating_MoctwUnspecified :: ContentRating_MoctwRating
pattern ContentRating_MoctwRating_MoctwUnspecified = ContentRating_MoctwRating "moctwUnspecified"

-- | G
pattern ContentRating_MoctwRating_MoctwG :: ContentRating_MoctwRating
pattern ContentRating_MoctwRating_MoctwG = ContentRating_MoctwRating "moctwG"

-- | P
pattern ContentRating_MoctwRating_MoctwP :: ContentRating_MoctwRating
pattern ContentRating_MoctwRating_MoctwP = ContentRating_MoctwRating "moctwP"

-- | PG
pattern ContentRating_MoctwRating_MoctwPg :: ContentRating_MoctwRating
pattern ContentRating_MoctwRating_MoctwPg = ContentRating_MoctwRating "moctwPg"

-- | R
pattern ContentRating_MoctwRating_MoctwR :: ContentRating_MoctwRating
pattern ContentRating_MoctwRating_MoctwR = ContentRating_MoctwRating "moctwR"

pattern ContentRating_MoctwRating_MoctwUnrated :: ContentRating_MoctwRating
pattern ContentRating_MoctwRating_MoctwUnrated = ContentRating_MoctwRating "moctwUnrated"

-- | R-12
pattern ContentRating_MoctwRating_MOCTWR12 :: ContentRating_MoctwRating
pattern ContentRating_MoctwRating_MOCTWR12 = ContentRating_MoctwRating "moctwR12"

-- | R-15
pattern ContentRating_MoctwRating_MOCTWR15 :: ContentRating_MoctwRating
pattern ContentRating_MoctwRating_MOCTWR15 = ContentRating_MoctwRating "moctwR15"

{-# COMPLETE
  ContentRating_MoctwRating_MoctwUnspecified,
  ContentRating_MoctwRating_MoctwG,
  ContentRating_MoctwRating_MoctwP,
  ContentRating_MoctwRating_MoctwPg,
  ContentRating_MoctwRating_MoctwR,
  ContentRating_MoctwRating_MoctwUnrated,
  ContentRating_MoctwRating_MOCTWR12,
  ContentRating_MoctwRating_MOCTWR15,
  ContentRating_MoctwRating
  #-}

-- | The video\'s Motion Picture Association of America (MPAA) rating.
newtype ContentRating_MpaaRating = ContentRating_MpaaRating {fromContentRating_MpaaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MpaaRating_MpaaUnspecified :: ContentRating_MpaaRating
pattern ContentRating_MpaaRating_MpaaUnspecified = ContentRating_MpaaRating "mpaaUnspecified"

-- | G
pattern ContentRating_MpaaRating_MpaaG :: ContentRating_MpaaRating
pattern ContentRating_MpaaRating_MpaaG = ContentRating_MpaaRating "mpaaG"

-- | PG
pattern ContentRating_MpaaRating_MpaaPg :: ContentRating_MpaaRating
pattern ContentRating_MpaaRating_MpaaPg = ContentRating_MpaaRating "mpaaPg"

-- | PG-13
pattern ContentRating_MpaaRating_MPAAPG13 :: ContentRating_MpaaRating
pattern ContentRating_MpaaRating_MPAAPG13 = ContentRating_MpaaRating "mpaaPg13"

-- | R
pattern ContentRating_MpaaRating_MpaaR :: ContentRating_MpaaRating
pattern ContentRating_MpaaRating_MpaaR = ContentRating_MpaaRating "mpaaR"

-- | NC-17
pattern ContentRating_MpaaRating_MPAANC17 :: ContentRating_MpaaRating
pattern ContentRating_MpaaRating_MPAANC17 = ContentRating_MpaaRating "mpaaNc17"

-- | ! X
pattern ContentRating_MpaaRating_MpaaX :: ContentRating_MpaaRating
pattern ContentRating_MpaaRating_MpaaX = ContentRating_MpaaRating "mpaaX"

pattern ContentRating_MpaaRating_MpaaUnrated :: ContentRating_MpaaRating
pattern ContentRating_MpaaRating_MpaaUnrated = ContentRating_MpaaRating "mpaaUnrated"

{-# COMPLETE
  ContentRating_MpaaRating_MpaaUnspecified,
  ContentRating_MpaaRating_MpaaG,
  ContentRating_MpaaRating_MpaaPg,
  ContentRating_MpaaRating_MPAAPG13,
  ContentRating_MpaaRating_MpaaR,
  ContentRating_MpaaRating_MPAANC17,
  ContentRating_MpaaRating_MpaaX,
  ContentRating_MpaaRating_MpaaUnrated,
  ContentRating_MpaaRating
  #-}

-- | The rating system for trailer, DVD, and Ad in the US. See http:\/\/movielabs.com\/md\/ratings\/v2.3\/html\/US/MPAAT/Ratings.html.
newtype ContentRating_MpaatRating = ContentRating_MpaatRating {fromContentRating_MpaatRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MpaatRating_MpaatUnspecified :: ContentRating_MpaatRating
pattern ContentRating_MpaatRating_MpaatUnspecified = ContentRating_MpaatRating "mpaatUnspecified"

-- | GB
pattern ContentRating_MpaatRating_MpaatGb :: ContentRating_MpaatRating
pattern ContentRating_MpaatRating_MpaatGb = ContentRating_MpaatRating "mpaatGb"

-- | RB
pattern ContentRating_MpaatRating_MpaatRb :: ContentRating_MpaatRating
pattern ContentRating_MpaatRating_MpaatRb = ContentRating_MpaatRating "mpaatRb"

{-# COMPLETE
  ContentRating_MpaatRating_MpaatUnspecified,
  ContentRating_MpaatRating_MpaatGb,
  ContentRating_MpaatRating_MpaatRb,
  ContentRating_MpaatRating
  #-}

-- | The video\'s rating from the Movie and Television Review and Classification Board (Philippines).
newtype ContentRating_MtrcbRating = ContentRating_MtrcbRating {fromContentRating_MtrcbRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_MtrcbRating_MtrcbUnspecified :: ContentRating_MtrcbRating
pattern ContentRating_MtrcbRating_MtrcbUnspecified = ContentRating_MtrcbRating "mtrcbUnspecified"

-- | G
pattern ContentRating_MtrcbRating_MtrcbG :: ContentRating_MtrcbRating
pattern ContentRating_MtrcbRating_MtrcbG = ContentRating_MtrcbRating "mtrcbG"

-- | PG
pattern ContentRating_MtrcbRating_MtrcbPg :: ContentRating_MtrcbRating
pattern ContentRating_MtrcbRating_MtrcbPg = ContentRating_MtrcbRating "mtrcbPg"

-- | R-13
pattern ContentRating_MtrcbRating_MTRCBR13 :: ContentRating_MtrcbRating
pattern ContentRating_MtrcbRating_MTRCBR13 = ContentRating_MtrcbRating "mtrcbR13"

-- | R-16
pattern ContentRating_MtrcbRating_MTRCBR16 :: ContentRating_MtrcbRating
pattern ContentRating_MtrcbRating_MTRCBR16 = ContentRating_MtrcbRating "mtrcbR16"

-- | R-18
pattern ContentRating_MtrcbRating_MTRCBR18 :: ContentRating_MtrcbRating
pattern ContentRating_MtrcbRating_MTRCBR18 = ContentRating_MtrcbRating "mtrcbR18"

-- | X
pattern ContentRating_MtrcbRating_MtrcbX :: ContentRating_MtrcbRating
pattern ContentRating_MtrcbRating_MtrcbX = ContentRating_MtrcbRating "mtrcbX"

pattern ContentRating_MtrcbRating_MtrcbUnrated :: ContentRating_MtrcbRating
pattern ContentRating_MtrcbRating_MtrcbUnrated = ContentRating_MtrcbRating "mtrcbUnrated"

{-# COMPLETE
  ContentRating_MtrcbRating_MtrcbUnspecified,
  ContentRating_MtrcbRating_MtrcbG,
  ContentRating_MtrcbRating_MtrcbPg,
  ContentRating_MtrcbRating_MTRCBR13,
  ContentRating_MtrcbRating_MTRCBR16,
  ContentRating_MtrcbRating_MTRCBR18,
  ContentRating_MtrcbRating_MtrcbX,
  ContentRating_MtrcbRating_MtrcbUnrated,
  ContentRating_MtrcbRating
  #-}

-- | The video\'s rating from the Maldives National Bureau of Classification.
newtype ContentRating_NbcRating = ContentRating_NbcRating {fromContentRating_NbcRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_NbcRating_NbcUnspecified :: ContentRating_NbcRating
pattern ContentRating_NbcRating_NbcUnspecified = ContentRating_NbcRating "nbcUnspecified"

-- | G
pattern ContentRating_NbcRating_NbcG :: ContentRating_NbcRating
pattern ContentRating_NbcRating_NbcG = ContentRating_NbcRating "nbcG"

-- | PG
pattern ContentRating_NbcRating_NbcPg :: ContentRating_NbcRating
pattern ContentRating_NbcRating_NbcPg = ContentRating_NbcRating "nbcPg"

-- | 12+
pattern ContentRating_NbcRating_Nbc12plus :: ContentRating_NbcRating
pattern ContentRating_NbcRating_Nbc12plus = ContentRating_NbcRating "nbc12plus"

-- | 15+
pattern ContentRating_NbcRating_Nbc15plus :: ContentRating_NbcRating
pattern ContentRating_NbcRating_Nbc15plus = ContentRating_NbcRating "nbc15plus"

-- | 18+
pattern ContentRating_NbcRating_Nbc18plus :: ContentRating_NbcRating
pattern ContentRating_NbcRating_Nbc18plus = ContentRating_NbcRating "nbc18plus"

-- | 18+R
pattern ContentRating_NbcRating_Nbc18plusr :: ContentRating_NbcRating
pattern ContentRating_NbcRating_Nbc18plusr = ContentRating_NbcRating "nbc18plusr"

-- | PU
pattern ContentRating_NbcRating_NbcPu :: ContentRating_NbcRating
pattern ContentRating_NbcRating_NbcPu = ContentRating_NbcRating "nbcPu"

pattern ContentRating_NbcRating_NbcUnrated :: ContentRating_NbcRating
pattern ContentRating_NbcRating_NbcUnrated = ContentRating_NbcRating "nbcUnrated"

{-# COMPLETE
  ContentRating_NbcRating_NbcUnspecified,
  ContentRating_NbcRating_NbcG,
  ContentRating_NbcRating_NbcPg,
  ContentRating_NbcRating_Nbc12plus,
  ContentRating_NbcRating_Nbc15plus,
  ContentRating_NbcRating_Nbc18plus,
  ContentRating_NbcRating_Nbc18plusr,
  ContentRating_NbcRating_NbcPu,
  ContentRating_NbcRating_NbcUnrated,
  ContentRating_NbcRating
  #-}

-- | The video\'s rating in Poland.
newtype ContentRating_NbcplRating = ContentRating_NbcplRating {fromContentRating_NbcplRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_NbcplRating_NbcplUnspecified :: ContentRating_NbcplRating
pattern ContentRating_NbcplRating_NbcplUnspecified = ContentRating_NbcplRating "nbcplUnspecified"

pattern ContentRating_NbcplRating_NbcplI :: ContentRating_NbcplRating
pattern ContentRating_NbcplRating_NbcplI = ContentRating_NbcplRating "nbcplI"

pattern ContentRating_NbcplRating_NbcplIi :: ContentRating_NbcplRating
pattern ContentRating_NbcplRating_NbcplIi = ContentRating_NbcplRating "nbcplIi"

pattern ContentRating_NbcplRating_NbcplIii :: ContentRating_NbcplRating
pattern ContentRating_NbcplRating_NbcplIii = ContentRating_NbcplRating "nbcplIii"

pattern ContentRating_NbcplRating_NbcplIv :: ContentRating_NbcplRating
pattern ContentRating_NbcplRating_NbcplIv = ContentRating_NbcplRating "nbcplIv"

pattern ContentRating_NbcplRating_Nbcpl18plus :: ContentRating_NbcplRating
pattern ContentRating_NbcplRating_Nbcpl18plus = ContentRating_NbcplRating "nbcpl18plus"

pattern ContentRating_NbcplRating_NbcplUnrated :: ContentRating_NbcplRating
pattern ContentRating_NbcplRating_NbcplUnrated = ContentRating_NbcplRating "nbcplUnrated"

{-# COMPLETE
  ContentRating_NbcplRating_NbcplUnspecified,
  ContentRating_NbcplRating_NbcplI,
  ContentRating_NbcplRating_NbcplIi,
  ContentRating_NbcplRating_NbcplIii,
  ContentRating_NbcplRating_NbcplIv,
  ContentRating_NbcplRating_Nbcpl18plus,
  ContentRating_NbcplRating_NbcplUnrated,
  ContentRating_NbcplRating
  #-}

-- | The video\'s rating from the Bulgarian National Film Center.
newtype ContentRating_NfrcRating = ContentRating_NfrcRating {fromContentRating_NfrcRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_NfrcRating_NfrcUnspecified :: ContentRating_NfrcRating
pattern ContentRating_NfrcRating_NfrcUnspecified = ContentRating_NfrcRating "nfrcUnspecified"

-- | A
pattern ContentRating_NfrcRating_NfrcA :: ContentRating_NfrcRating
pattern ContentRating_NfrcRating_NfrcA = ContentRating_NfrcRating "nfrcA"

-- | B
pattern ContentRating_NfrcRating_NfrcB :: ContentRating_NfrcRating
pattern ContentRating_NfrcRating_NfrcB = ContentRating_NfrcRating "nfrcB"

-- | C
pattern ContentRating_NfrcRating_NfrcC :: ContentRating_NfrcRating
pattern ContentRating_NfrcRating_NfrcC = ContentRating_NfrcRating "nfrcC"

-- | D
pattern ContentRating_NfrcRating_NfrcD :: ContentRating_NfrcRating
pattern ContentRating_NfrcRating_NfrcD = ContentRating_NfrcRating "nfrcD"

-- | X
pattern ContentRating_NfrcRating_NfrcX :: ContentRating_NfrcRating
pattern ContentRating_NfrcRating_NfrcX = ContentRating_NfrcRating "nfrcX"

pattern ContentRating_NfrcRating_NfrcUnrated :: ContentRating_NfrcRating
pattern ContentRating_NfrcRating_NfrcUnrated = ContentRating_NfrcRating "nfrcUnrated"

{-# COMPLETE
  ContentRating_NfrcRating_NfrcUnspecified,
  ContentRating_NfrcRating_NfrcA,
  ContentRating_NfrcRating_NfrcB,
  ContentRating_NfrcRating_NfrcC,
  ContentRating_NfrcRating_NfrcD,
  ContentRating_NfrcRating_NfrcX,
  ContentRating_NfrcRating_NfrcUnrated,
  ContentRating_NfrcRating
  #-}

-- | The video\'s rating from Nigeria\'s National Film and Video Censors Board.
newtype ContentRating_NfvcbRating = ContentRating_NfvcbRating {fromContentRating_NfvcbRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_NfvcbRating_NfvcbUnspecified :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_NfvcbUnspecified = ContentRating_NfvcbRating "nfvcbUnspecified"

-- | G
pattern ContentRating_NfvcbRating_NfvcbG :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_NfvcbG = ContentRating_NfvcbRating "nfvcbG"

-- | PG
pattern ContentRating_NfvcbRating_NfvcbPg :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_NfvcbPg = ContentRating_NfvcbRating "nfvcbPg"

-- | 12
pattern ContentRating_NfvcbRating_NFVCB12 :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_NFVCB12 = ContentRating_NfvcbRating "nfvcb12"

-- | 12A
pattern ContentRating_NfvcbRating_Nfvcb12a :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_Nfvcb12a = ContentRating_NfvcbRating "nfvcb12a"

-- | 15
pattern ContentRating_NfvcbRating_NFVCB15 :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_NFVCB15 = ContentRating_NfvcbRating "nfvcb15"

-- | 18
pattern ContentRating_NfvcbRating_NFVCB18 :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_NFVCB18 = ContentRating_NfvcbRating "nfvcb18"

-- | RE
pattern ContentRating_NfvcbRating_NfvcbRe :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_NfvcbRe = ContentRating_NfvcbRating "nfvcbRe"

pattern ContentRating_NfvcbRating_NfvcbUnrated :: ContentRating_NfvcbRating
pattern ContentRating_NfvcbRating_NfvcbUnrated = ContentRating_NfvcbRating "nfvcbUnrated"

{-# COMPLETE
  ContentRating_NfvcbRating_NfvcbUnspecified,
  ContentRating_NfvcbRating_NfvcbG,
  ContentRating_NfvcbRating_NfvcbPg,
  ContentRating_NfvcbRating_NFVCB12,
  ContentRating_NfvcbRating_Nfvcb12a,
  ContentRating_NfvcbRating_NFVCB15,
  ContentRating_NfvcbRating_NFVCB18,
  ContentRating_NfvcbRating_NfvcbRe,
  ContentRating_NfvcbRating_NfvcbUnrated,
  ContentRating_NfvcbRating
  #-}

-- | The video\'s rating from the Nacionãlais Kino centrs (National Film Centre of Latvia).
newtype ContentRating_NkclvRating = ContentRating_NkclvRating {fromContentRating_NkclvRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_NkclvRating_NkclvUnspecified :: ContentRating_NkclvRating
pattern ContentRating_NkclvRating_NkclvUnspecified = ContentRating_NkclvRating "nkclvUnspecified"

-- | U
pattern ContentRating_NkclvRating_NkclvU :: ContentRating_NkclvRating
pattern ContentRating_NkclvRating_NkclvU = ContentRating_NkclvRating "nkclvU"

-- | 7+
pattern ContentRating_NkclvRating_Nkclv7plus :: ContentRating_NkclvRating
pattern ContentRating_NkclvRating_Nkclv7plus = ContentRating_NkclvRating "nkclv7plus"

-- | 12+
pattern ContentRating_NkclvRating_Nkclv12plus :: ContentRating_NkclvRating
pattern ContentRating_NkclvRating_Nkclv12plus = ContentRating_NkclvRating "nkclv12plus"

-- | ! 16+
pattern ContentRating_NkclvRating_Nkclv16plus :: ContentRating_NkclvRating
pattern ContentRating_NkclvRating_Nkclv16plus = ContentRating_NkclvRating "nkclv16plus"

-- | 18+
pattern ContentRating_NkclvRating_Nkclv18plus :: ContentRating_NkclvRating
pattern ContentRating_NkclvRating_Nkclv18plus = ContentRating_NkclvRating "nkclv18plus"

pattern ContentRating_NkclvRating_NkclvUnrated :: ContentRating_NkclvRating
pattern ContentRating_NkclvRating_NkclvUnrated = ContentRating_NkclvRating "nkclvUnrated"

{-# COMPLETE
  ContentRating_NkclvRating_NkclvUnspecified,
  ContentRating_NkclvRating_NkclvU,
  ContentRating_NkclvRating_Nkclv7plus,
  ContentRating_NkclvRating_Nkclv12plus,
  ContentRating_NkclvRating_Nkclv16plus,
  ContentRating_NkclvRating_Nkclv18plus,
  ContentRating_NkclvRating_NkclvUnrated,
  ContentRating_NkclvRating
  #-}

-- | The National Media Council ratings system for United Arab Emirates.
newtype ContentRating_NmcRating = ContentRating_NmcRating {fromContentRating_NmcRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_NmcRating_NmcUnspecified :: ContentRating_NmcRating
pattern ContentRating_NmcRating_NmcUnspecified = ContentRating_NmcRating "nmcUnspecified"

-- | G
pattern ContentRating_NmcRating_NmcG :: ContentRating_NmcRating
pattern ContentRating_NmcRating_NmcG = ContentRating_NmcRating "nmcG"

-- | PG
pattern ContentRating_NmcRating_NmcPg :: ContentRating_NmcRating
pattern ContentRating_NmcRating_NmcPg = ContentRating_NmcRating "nmcPg"

-- | PG-13
pattern ContentRating_NmcRating_NMCPG13 :: ContentRating_NmcRating
pattern ContentRating_NmcRating_NMCPG13 = ContentRating_NmcRating "nmcPg13"

-- | PG-15
pattern ContentRating_NmcRating_NMCPG15 :: ContentRating_NmcRating
pattern ContentRating_NmcRating_NMCPG15 = ContentRating_NmcRating "nmcPg15"

-- | 15+
pattern ContentRating_NmcRating_Nmc15plus :: ContentRating_NmcRating
pattern ContentRating_NmcRating_Nmc15plus = ContentRating_NmcRating "nmc15plus"

-- | 18+
pattern ContentRating_NmcRating_Nmc18plus :: ContentRating_NmcRating
pattern ContentRating_NmcRating_Nmc18plus = ContentRating_NmcRating "nmc18plus"

-- | 18TC
pattern ContentRating_NmcRating_Nmc18tc :: ContentRating_NmcRating
pattern ContentRating_NmcRating_Nmc18tc = ContentRating_NmcRating "nmc18tc"

pattern ContentRating_NmcRating_NmcUnrated :: ContentRating_NmcRating
pattern ContentRating_NmcRating_NmcUnrated = ContentRating_NmcRating "nmcUnrated"

{-# COMPLETE
  ContentRating_NmcRating_NmcUnspecified,
  ContentRating_NmcRating_NmcG,
  ContentRating_NmcRating_NmcPg,
  ContentRating_NmcRating_NMCPG13,
  ContentRating_NmcRating_NMCPG15,
  ContentRating_NmcRating_Nmc15plus,
  ContentRating_NmcRating_Nmc18plus,
  ContentRating_NmcRating_Nmc18tc,
  ContentRating_NmcRating_NmcUnrated,
  ContentRating_NmcRating
  #-}

-- | The video\'s Office of Film and Literature Classification (OFLC - New Zealand) rating.
newtype ContentRating_OflcRating = ContentRating_OflcRating {fromContentRating_OflcRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_OflcRating_OflcUnspecified :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OflcUnspecified = ContentRating_OflcRating "oflcUnspecified"

-- | G
pattern ContentRating_OflcRating_OflcG :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OflcG = ContentRating_OflcRating "oflcG"

-- | PG
pattern ContentRating_OflcRating_OflcPg :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OflcPg = ContentRating_OflcRating "oflcPg"

-- | M
pattern ContentRating_OflcRating_OflcM :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OflcM = ContentRating_OflcRating "oflcM"

-- | R13
pattern ContentRating_OflcRating_OFLCR13 :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OFLCR13 = ContentRating_OflcRating "oflcR13"

-- | R15
pattern ContentRating_OflcRating_OFLCR15 :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OFLCR15 = ContentRating_OflcRating "oflcR15"

-- | R16
pattern ContentRating_OflcRating_OFLCR16 :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OFLCR16 = ContentRating_OflcRating "oflcR16"

-- | R18
pattern ContentRating_OflcRating_OFLCR18 :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OFLCR18 = ContentRating_OflcRating "oflcR18"

pattern ContentRating_OflcRating_OflcUnrated :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OflcUnrated = ContentRating_OflcRating "oflcUnrated"

-- | RP13
pattern ContentRating_OflcRating_OFLCRP13 :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OFLCRP13 = ContentRating_OflcRating "oflcRp13"

-- | RP16
pattern ContentRating_OflcRating_OFLCRP16 :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OFLCRP16 = ContentRating_OflcRating "oflcRp16"

-- | RP18
pattern ContentRating_OflcRating_OFLCRP18 :: ContentRating_OflcRating
pattern ContentRating_OflcRating_OFLCRP18 = ContentRating_OflcRating "oflcRp18"

{-# COMPLETE
  ContentRating_OflcRating_OflcUnspecified,
  ContentRating_OflcRating_OflcG,
  ContentRating_OflcRating_OflcPg,
  ContentRating_OflcRating_OflcM,
  ContentRating_OflcRating_OFLCR13,
  ContentRating_OflcRating_OFLCR15,
  ContentRating_OflcRating_OFLCR16,
  ContentRating_OflcRating_OFLCR18,
  ContentRating_OflcRating_OflcUnrated,
  ContentRating_OflcRating_OFLCRP13,
  ContentRating_OflcRating_OFLCRP16,
  ContentRating_OflcRating_OFLCRP18,
  ContentRating_OflcRating
  #-}

-- | The video\'s rating in Peru.
newtype ContentRating_PefilmRating = ContentRating_PefilmRating {fromContentRating_PefilmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_PefilmRating_PefilmUnspecified :: ContentRating_PefilmRating
pattern ContentRating_PefilmRating_PefilmUnspecified = ContentRating_PefilmRating "pefilmUnspecified"

-- | PT
pattern ContentRating_PefilmRating_PefilmPt :: ContentRating_PefilmRating
pattern ContentRating_PefilmRating_PefilmPt = ContentRating_PefilmRating "pefilmPt"

-- | PG
pattern ContentRating_PefilmRating_PefilmPg :: ContentRating_PefilmRating
pattern ContentRating_PefilmRating_PefilmPg = ContentRating_PefilmRating "pefilmPg"

-- | 14
pattern ContentRating_PefilmRating_PEFILM14 :: ContentRating_PefilmRating
pattern ContentRating_PefilmRating_PEFILM14 = ContentRating_PefilmRating "pefilm14"

-- | 18
pattern ContentRating_PefilmRating_PEFILM18 :: ContentRating_PefilmRating
pattern ContentRating_PefilmRating_PEFILM18 = ContentRating_PefilmRating "pefilm18"

pattern ContentRating_PefilmRating_PefilmUnrated :: ContentRating_PefilmRating
pattern ContentRating_PefilmRating_PefilmUnrated = ContentRating_PefilmRating "pefilmUnrated"

{-# COMPLETE
  ContentRating_PefilmRating_PefilmUnspecified,
  ContentRating_PefilmRating_PefilmPt,
  ContentRating_PefilmRating_PefilmPg,
  ContentRating_PefilmRating_PEFILM14,
  ContentRating_PefilmRating_PEFILM18,
  ContentRating_PefilmRating_PefilmUnrated,
  ContentRating_PefilmRating
  #-}

-- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating Committee of the National Office of Film.
newtype ContentRating_RcnofRating = ContentRating_RcnofRating {fromContentRating_RcnofRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_RcnofRating_RcnofUnspecified :: ContentRating_RcnofRating
pattern ContentRating_RcnofRating_RcnofUnspecified = ContentRating_RcnofRating "rcnofUnspecified"

pattern ContentRating_RcnofRating_RcnofI :: ContentRating_RcnofRating
pattern ContentRating_RcnofRating_RcnofI = ContentRating_RcnofRating "rcnofI"

pattern ContentRating_RcnofRating_RcnofIi :: ContentRating_RcnofRating
pattern ContentRating_RcnofRating_RcnofIi = ContentRating_RcnofRating "rcnofIi"

pattern ContentRating_RcnofRating_RcnofIii :: ContentRating_RcnofRating
pattern ContentRating_RcnofRating_RcnofIii = ContentRating_RcnofRating "rcnofIii"

pattern ContentRating_RcnofRating_RcnofIv :: ContentRating_RcnofRating
pattern ContentRating_RcnofRating_RcnofIv = ContentRating_RcnofRating "rcnofIv"

pattern ContentRating_RcnofRating_RcnofV :: ContentRating_RcnofRating
pattern ContentRating_RcnofRating_RcnofV = ContentRating_RcnofRating "rcnofV"

pattern ContentRating_RcnofRating_RcnofVi :: ContentRating_RcnofRating
pattern ContentRating_RcnofRating_RcnofVi = ContentRating_RcnofRating "rcnofVi"

pattern ContentRating_RcnofRating_RcnofUnrated :: ContentRating_RcnofRating
pattern ContentRating_RcnofRating_RcnofUnrated = ContentRating_RcnofRating "rcnofUnrated"

{-# COMPLETE
  ContentRating_RcnofRating_RcnofUnspecified,
  ContentRating_RcnofRating_RcnofI,
  ContentRating_RcnofRating_RcnofIi,
  ContentRating_RcnofRating_RcnofIii,
  ContentRating_RcnofRating_RcnofIv,
  ContentRating_RcnofRating_RcnofV,
  ContentRating_RcnofRating_RcnofVi,
  ContentRating_RcnofRating_RcnofUnrated,
  ContentRating_RcnofRating
  #-}

-- | The video\'s rating in Venezuela.
newtype ContentRating_ResorteviolenciaRating = ContentRating_ResorteviolenciaRating {fromContentRating_ResorteviolenciaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaUnspecified :: ContentRating_ResorteviolenciaRating
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaUnspecified = ContentRating_ResorteviolenciaRating "resorteviolenciaUnspecified"

-- | A
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaA :: ContentRating_ResorteviolenciaRating
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaA = ContentRating_ResorteviolenciaRating "resorteviolenciaA"

-- | B
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaB :: ContentRating_ResorteviolenciaRating
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaB = ContentRating_ResorteviolenciaRating "resorteviolenciaB"

-- | C
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaC :: ContentRating_ResorteviolenciaRating
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaC = ContentRating_ResorteviolenciaRating "resorteviolenciaC"

-- | D
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaD :: ContentRating_ResorteviolenciaRating
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaD = ContentRating_ResorteviolenciaRating "resorteviolenciaD"

-- | E
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaE :: ContentRating_ResorteviolenciaRating
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaE = ContentRating_ResorteviolenciaRating "resorteviolenciaE"

pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaUnrated :: ContentRating_ResorteviolenciaRating
pattern ContentRating_ResorteviolenciaRating_ResorteviolenciaUnrated = ContentRating_ResorteviolenciaRating "resorteviolenciaUnrated"

{-# COMPLETE
  ContentRating_ResorteviolenciaRating_ResorteviolenciaUnspecified,
  ContentRating_ResorteviolenciaRating_ResorteviolenciaA,
  ContentRating_ResorteviolenciaRating_ResorteviolenciaB,
  ContentRating_ResorteviolenciaRating_ResorteviolenciaC,
  ContentRating_ResorteviolenciaRating_ResorteviolenciaD,
  ContentRating_ResorteviolenciaRating_ResorteviolenciaE,
  ContentRating_ResorteviolenciaRating_ResorteviolenciaUnrated,
  ContentRating_ResorteviolenciaRating
  #-}

-- | The video\'s General Directorate of Radio, Television and Cinematography (Mexico) rating.
newtype ContentRating_RtcRating = ContentRating_RtcRating {fromContentRating_RtcRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_RtcRating_RtcUnspecified :: ContentRating_RtcRating
pattern ContentRating_RtcRating_RtcUnspecified = ContentRating_RtcRating "rtcUnspecified"

-- | AA
pattern ContentRating_RtcRating_RtcAa :: ContentRating_RtcRating
pattern ContentRating_RtcRating_RtcAa = ContentRating_RtcRating "rtcAa"

-- | A
pattern ContentRating_RtcRating_RtcA :: ContentRating_RtcRating
pattern ContentRating_RtcRating_RtcA = ContentRating_RtcRating "rtcA"

-- | B
pattern ContentRating_RtcRating_RtcB :: ContentRating_RtcRating
pattern ContentRating_RtcRating_RtcB = ContentRating_RtcRating "rtcB"

-- | B15
pattern ContentRating_RtcRating_RTCB15 :: ContentRating_RtcRating
pattern ContentRating_RtcRating_RTCB15 = ContentRating_RtcRating "rtcB15"

-- | C
pattern ContentRating_RtcRating_RtcC :: ContentRating_RtcRating
pattern ContentRating_RtcRating_RtcC = ContentRating_RtcRating "rtcC"

-- | D
pattern ContentRating_RtcRating_RtcD :: ContentRating_RtcRating
pattern ContentRating_RtcRating_RtcD = ContentRating_RtcRating "rtcD"

pattern ContentRating_RtcRating_RtcUnrated :: ContentRating_RtcRating
pattern ContentRating_RtcRating_RtcUnrated = ContentRating_RtcRating "rtcUnrated"

{-# COMPLETE
  ContentRating_RtcRating_RtcUnspecified,
  ContentRating_RtcRating_RtcAa,
  ContentRating_RtcRating_RtcA,
  ContentRating_RtcRating_RtcB,
  ContentRating_RtcRating_RTCB15,
  ContentRating_RtcRating_RtcC,
  ContentRating_RtcRating_RtcD,
  ContentRating_RtcRating_RtcUnrated,
  ContentRating_RtcRating
  #-}

-- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
newtype ContentRating_RteRating = ContentRating_RteRating {fromContentRating_RteRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_RteRating_RteUnspecified :: ContentRating_RteRating
pattern ContentRating_RteRating_RteUnspecified = ContentRating_RteRating "rteUnspecified"

-- | GA
pattern ContentRating_RteRating_RteGa :: ContentRating_RteRating
pattern ContentRating_RteRating_RteGa = ContentRating_RteRating "rteGa"

-- | CH
pattern ContentRating_RteRating_RteCh :: ContentRating_RteRating
pattern ContentRating_RteRating_RteCh = ContentRating_RteRating "rteCh"

-- | PS
pattern ContentRating_RteRating_RtePs :: ContentRating_RteRating
pattern ContentRating_RteRating_RtePs = ContentRating_RteRating "rtePs"

-- | MA
pattern ContentRating_RteRating_RteMa :: ContentRating_RteRating
pattern ContentRating_RteRating_RteMa = ContentRating_RteRating "rteMa"

pattern ContentRating_RteRating_RteUnrated :: ContentRating_RteRating
pattern ContentRating_RteRating_RteUnrated = ContentRating_RteRating "rteUnrated"

{-# COMPLETE
  ContentRating_RteRating_RteUnspecified,
  ContentRating_RteRating_RteGa,
  ContentRating_RteRating_RteCh,
  ContentRating_RteRating_RtePs,
  ContentRating_RteRating_RteMa,
  ContentRating_RteRating_RteUnrated,
  ContentRating_RteRating
  #-}

-- | The video\'s National Film Registry of the Russian Federation (MKRF - Russia) rating.
newtype ContentRating_RussiaRating = ContentRating_RussiaRating {fromContentRating_RussiaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_RussiaRating_RussiaUnspecified :: ContentRating_RussiaRating
pattern ContentRating_RussiaRating_RussiaUnspecified = ContentRating_RussiaRating "russiaUnspecified"

-- | 0+
pattern ContentRating_RussiaRating_RUSSIA0 :: ContentRating_RussiaRating
pattern ContentRating_RussiaRating_RUSSIA0 = ContentRating_RussiaRating "russia0"

-- | 6+
pattern ContentRating_RussiaRating_RUSSIA6 :: ContentRating_RussiaRating
pattern ContentRating_RussiaRating_RUSSIA6 = ContentRating_RussiaRating "russia6"

-- | 12+
pattern ContentRating_RussiaRating_RUSSIA12 :: ContentRating_RussiaRating
pattern ContentRating_RussiaRating_RUSSIA12 = ContentRating_RussiaRating "russia12"

-- | 16+
pattern ContentRating_RussiaRating_RUSSIA16 :: ContentRating_RussiaRating
pattern ContentRating_RussiaRating_RUSSIA16 = ContentRating_RussiaRating "russia16"

-- | 18+
pattern ContentRating_RussiaRating_RUSSIA18 :: ContentRating_RussiaRating
pattern ContentRating_RussiaRating_RUSSIA18 = ContentRating_RussiaRating "russia18"

pattern ContentRating_RussiaRating_RussiaUnrated :: ContentRating_RussiaRating
pattern ContentRating_RussiaRating_RussiaUnrated = ContentRating_RussiaRating "russiaUnrated"

{-# COMPLETE
  ContentRating_RussiaRating_RussiaUnspecified,
  ContentRating_RussiaRating_RUSSIA0,
  ContentRating_RussiaRating_RUSSIA6,
  ContentRating_RussiaRating_RUSSIA12,
  ContentRating_RussiaRating_RUSSIA16,
  ContentRating_RussiaRating_RUSSIA18,
  ContentRating_RussiaRating_RussiaUnrated,
  ContentRating_RussiaRating
  #-}

-- | The video\'s rating in Slovakia.
newtype ContentRating_SkfilmRating = ContentRating_SkfilmRating {fromContentRating_SkfilmRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_SkfilmRating_SkfilmUnspecified :: ContentRating_SkfilmRating
pattern ContentRating_SkfilmRating_SkfilmUnspecified = ContentRating_SkfilmRating "skfilmUnspecified"

-- | G
pattern ContentRating_SkfilmRating_SkfilmG :: ContentRating_SkfilmRating
pattern ContentRating_SkfilmRating_SkfilmG = ContentRating_SkfilmRating "skfilmG"

-- | P2
pattern ContentRating_SkfilmRating_SKFILMP2 :: ContentRating_SkfilmRating
pattern ContentRating_SkfilmRating_SKFILMP2 = ContentRating_SkfilmRating "skfilmP2"

-- | P5
pattern ContentRating_SkfilmRating_SKFILMP5 :: ContentRating_SkfilmRating
pattern ContentRating_SkfilmRating_SKFILMP5 = ContentRating_SkfilmRating "skfilmP5"

-- | P8
pattern ContentRating_SkfilmRating_SKFILMP8 :: ContentRating_SkfilmRating
pattern ContentRating_SkfilmRating_SKFILMP8 = ContentRating_SkfilmRating "skfilmP8"

pattern ContentRating_SkfilmRating_SkfilmUnrated :: ContentRating_SkfilmRating
pattern ContentRating_SkfilmRating_SkfilmUnrated = ContentRating_SkfilmRating "skfilmUnrated"

{-# COMPLETE
  ContentRating_SkfilmRating_SkfilmUnspecified,
  ContentRating_SkfilmRating_SkfilmG,
  ContentRating_SkfilmRating_SKFILMP2,
  ContentRating_SkfilmRating_SKFILMP5,
  ContentRating_SkfilmRating_SKFILMP8,
  ContentRating_SkfilmRating_SkfilmUnrated,
  ContentRating_SkfilmRating
  #-}

-- | The video\'s rating in Iceland.
newtype ContentRating_SmaisRating = ContentRating_SmaisRating {fromContentRating_SmaisRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_SmaisRating_SmaisUnspecified :: ContentRating_SmaisRating
pattern ContentRating_SmaisRating_SmaisUnspecified = ContentRating_SmaisRating "smaisUnspecified"

-- | L
pattern ContentRating_SmaisRating_SmaisL :: ContentRating_SmaisRating
pattern ContentRating_SmaisRating_SmaisL = ContentRating_SmaisRating "smaisL"

-- | 7
pattern ContentRating_SmaisRating_SMAIS7 :: ContentRating_SmaisRating
pattern ContentRating_SmaisRating_SMAIS7 = ContentRating_SmaisRating "smais7"

-- | 12
pattern ContentRating_SmaisRating_SMAIS12 :: ContentRating_SmaisRating
pattern ContentRating_SmaisRating_SMAIS12 = ContentRating_SmaisRating "smais12"

-- | 14
pattern ContentRating_SmaisRating_SMAIS14 :: ContentRating_SmaisRating
pattern ContentRating_SmaisRating_SMAIS14 = ContentRating_SmaisRating "smais14"

-- | 16
pattern ContentRating_SmaisRating_SMAIS16 :: ContentRating_SmaisRating
pattern ContentRating_SmaisRating_SMAIS16 = ContentRating_SmaisRating "smais16"

-- | 18
pattern ContentRating_SmaisRating_SMAIS18 :: ContentRating_SmaisRating
pattern ContentRating_SmaisRating_SMAIS18 = ContentRating_SmaisRating "smais18"

pattern ContentRating_SmaisRating_SmaisUnrated :: ContentRating_SmaisRating
pattern ContentRating_SmaisRating_SmaisUnrated = ContentRating_SmaisRating "smaisUnrated"

{-# COMPLETE
  ContentRating_SmaisRating_SmaisUnspecified,
  ContentRating_SmaisRating_SmaisL,
  ContentRating_SmaisRating_SMAIS7,
  ContentRating_SmaisRating_SMAIS12,
  ContentRating_SmaisRating_SMAIS14,
  ContentRating_SmaisRating_SMAIS16,
  ContentRating_SmaisRating_SMAIS18,
  ContentRating_SmaisRating_SmaisUnrated,
  ContentRating_SmaisRating
  #-}

-- | The video\'s rating from Statens medieråd (Sweden\'s National Media Council).
newtype ContentRating_SmsaRating = ContentRating_SmsaRating {fromContentRating_SmsaRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_SmsaRating_SmsaUnspecified :: ContentRating_SmsaRating
pattern ContentRating_SmsaRating_SmsaUnspecified = ContentRating_SmsaRating "smsaUnspecified"

-- | All ages
pattern ContentRating_SmsaRating_SmsaA :: ContentRating_SmsaRating
pattern ContentRating_SmsaRating_SmsaA = ContentRating_SmsaRating "smsaA"

-- | 7
pattern ContentRating_SmsaRating_SMSA7 :: ContentRating_SmsaRating
pattern ContentRating_SmsaRating_SMSA7 = ContentRating_SmsaRating "smsa7"

-- | 11
pattern ContentRating_SmsaRating_SMSA11 :: ContentRating_SmsaRating
pattern ContentRating_SmsaRating_SMSA11 = ContentRating_SmsaRating "smsa11"

-- | 15
pattern ContentRating_SmsaRating_SMSA15 :: ContentRating_SmsaRating
pattern ContentRating_SmsaRating_SMSA15 = ContentRating_SmsaRating "smsa15"

pattern ContentRating_SmsaRating_SmsaUnrated :: ContentRating_SmsaRating
pattern ContentRating_SmsaRating_SmsaUnrated = ContentRating_SmsaRating "smsaUnrated"

{-# COMPLETE
  ContentRating_SmsaRating_SmsaUnspecified,
  ContentRating_SmsaRating_SmsaA,
  ContentRating_SmsaRating_SMSA7,
  ContentRating_SmsaRating_SMSA11,
  ContentRating_SmsaRating_SMSA15,
  ContentRating_SmsaRating_SmsaUnrated,
  ContentRating_SmsaRating
  #-}

-- | The video\'s TV Parental Guidelines (TVPG) rating.
newtype ContentRating_TvpgRating = ContentRating_TvpgRating {fromContentRating_TvpgRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_TvpgRating_TvpgUnspecified :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_TvpgUnspecified = ContentRating_TvpgRating "tvpgUnspecified"

-- | TV-Y
pattern ContentRating_TvpgRating_TvpgY :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_TvpgY = ContentRating_TvpgRating "tvpgY"

-- | TV-Y7
pattern ContentRating_TvpgRating_TVPGY7 :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_TVPGY7 = ContentRating_TvpgRating "tvpgY7"

-- | TV-Y7-FV
pattern ContentRating_TvpgRating_TvpgY7Fv :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_TvpgY7Fv = ContentRating_TvpgRating "tvpgY7Fv"

-- | TV-G
pattern ContentRating_TvpgRating_TvpgG :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_TvpgG = ContentRating_TvpgRating "tvpgG"

-- | TV-PG
pattern ContentRating_TvpgRating_TvpgPg :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_TvpgPg = ContentRating_TvpgRating "tvpgPg"

-- | TV-14
pattern ContentRating_TvpgRating_PG14 :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_PG14 = ContentRating_TvpgRating "pg14"

-- | TV-MA
pattern ContentRating_TvpgRating_TvpgMa :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_TvpgMa = ContentRating_TvpgRating "tvpgMa"

pattern ContentRating_TvpgRating_TvpgUnrated :: ContentRating_TvpgRating
pattern ContentRating_TvpgRating_TvpgUnrated = ContentRating_TvpgRating "tvpgUnrated"

{-# COMPLETE
  ContentRating_TvpgRating_TvpgUnspecified,
  ContentRating_TvpgRating_TvpgY,
  ContentRating_TvpgRating_TVPGY7,
  ContentRating_TvpgRating_TvpgY7Fv,
  ContentRating_TvpgRating_TvpgG,
  ContentRating_TvpgRating_TvpgPg,
  ContentRating_TvpgRating_PG14,
  ContentRating_TvpgRating_TvpgMa,
  ContentRating_TvpgRating_TvpgUnrated,
  ContentRating_TvpgRating
  #-}

-- | A rating that YouTube uses to identify age-restricted content.
newtype ContentRating_YtRating = ContentRating_YtRating {fromContentRating_YtRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ContentRating_YtRating_YtUnspecified :: ContentRating_YtRating
pattern ContentRating_YtRating_YtUnspecified = ContentRating_YtRating "ytUnspecified"

pattern ContentRating_YtRating_YtAgeRestricted :: ContentRating_YtRating
pattern ContentRating_YtRating_YtAgeRestricted = ContentRating_YtRating "ytAgeRestricted"

{-# COMPLETE
  ContentRating_YtRating_YtUnspecified,
  ContentRating_YtRating_YtAgeRestricted,
  ContentRating_YtRating
  #-}

newtype Cuepoint_CueType = Cuepoint_CueType {fromCuepoint_CueType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern Cuepoint_CueType_CueTypeUnspecified :: Cuepoint_CueType
pattern Cuepoint_CueType_CueTypeUnspecified = Cuepoint_CueType "cueTypeUnspecified"

pattern Cuepoint_CueType_CueTypeAd :: Cuepoint_CueType
pattern Cuepoint_CueType_CueTypeAd = Cuepoint_CueType "cueTypeAd"

{-# COMPLETE
  Cuepoint_CueType_CueTypeUnspecified,
  Cuepoint_CueType_CueTypeAd,
  Cuepoint_CueType
  #-}

-- | The strategy to use when scheduling cuepoints.
newtype CuepointSchedule_ScheduleStrategy = CuepointSchedule_ScheduleStrategy {fromCuepointSchedule_ScheduleStrategy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CuepointSchedule_ScheduleStrategy_ScheduleStrategyUnspecified :: CuepointSchedule_ScheduleStrategy
pattern CuepointSchedule_ScheduleStrategy_ScheduleStrategyUnspecified = CuepointSchedule_ScheduleStrategy "scheduleStrategyUnspecified"

-- | Strategy to schedule cuepoints at one time for all viewers.
pattern CuepointSchedule_ScheduleStrategy_Concurrent :: CuepointSchedule_ScheduleStrategy
pattern CuepointSchedule_ScheduleStrategy_Concurrent = CuepointSchedule_ScheduleStrategy "concurrent"

-- | Strategy to schedule cuepoints at an increased rate to allow viewers to receive cuepoints when eligible. See go\/lcr-non-concurrent-ads for more details.
pattern CuepointSchedule_ScheduleStrategy_NonConcurrent :: CuepointSchedule_ScheduleStrategy
pattern CuepointSchedule_ScheduleStrategy_NonConcurrent = CuepointSchedule_ScheduleStrategy "nonConcurrent"

{-# COMPLETE
  CuepointSchedule_ScheduleStrategy_ScheduleStrategyUnspecified,
  CuepointSchedule_ScheduleStrategy_Concurrent,
  CuepointSchedule_ScheduleStrategy_NonConcurrent,
  CuepointSchedule_ScheduleStrategy
  #-}

-- | Describes in which corner of the video the visual widget will appear.
newtype InvideoPosition_CornerPosition = InvideoPosition_CornerPosition {fromInvideoPosition_CornerPosition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern InvideoPosition_CornerPosition_TopLeft :: InvideoPosition_CornerPosition
pattern InvideoPosition_CornerPosition_TopLeft = InvideoPosition_CornerPosition "topLeft"

pattern InvideoPosition_CornerPosition_TopRight :: InvideoPosition_CornerPosition
pattern InvideoPosition_CornerPosition_TopRight = InvideoPosition_CornerPosition "topRight"

pattern InvideoPosition_CornerPosition_BottomLeft :: InvideoPosition_CornerPosition
pattern InvideoPosition_CornerPosition_BottomLeft = InvideoPosition_CornerPosition "bottomLeft"

pattern InvideoPosition_CornerPosition_BottomRight :: InvideoPosition_CornerPosition
pattern InvideoPosition_CornerPosition_BottomRight = InvideoPosition_CornerPosition "bottomRight"

{-# COMPLETE
  InvideoPosition_CornerPosition_TopLeft,
  InvideoPosition_CornerPosition_TopRight,
  InvideoPosition_CornerPosition_BottomLeft,
  InvideoPosition_CornerPosition_BottomRight,
  InvideoPosition_CornerPosition
  #-}

-- | Defines the position type.
newtype InvideoPosition_Type = InvideoPosition_Type {fromInvideoPosition_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern InvideoPosition_Type_Corner :: InvideoPosition_Type
pattern InvideoPosition_Type_Corner = InvideoPosition_Type "corner"

{-# COMPLETE
  InvideoPosition_Type_Corner,
  InvideoPosition_Type
  #-}

-- | Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an offset from the start of the video. If the value is offsetFromEnd, then the offsetMs field represents an offset from the end of the video.
newtype InvideoTiming_Type = InvideoTiming_Type {fromInvideoTiming_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern InvideoTiming_Type_OffsetFromStart :: InvideoTiming_Type
pattern InvideoTiming_Type_OffsetFromStart = InvideoTiming_Type "offsetFromStart"

pattern InvideoTiming_Type_OffsetFromEnd :: InvideoTiming_Type
pattern InvideoTiming_Type_OffsetFromEnd = InvideoTiming_Type "offsetFromEnd"

{-# COMPLETE
  InvideoTiming_Type_OffsetFromStart,
  InvideoTiming_Type_OffsetFromEnd,
  InvideoTiming_Type
  #-}

newtype LiveBroadcastContentDetails_ClosedCaptionsType = LiveBroadcastContentDetails_ClosedCaptionsType {fromLiveBroadcastContentDetails_ClosedCaptionsType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsTypeUnspecified :: LiveBroadcastContentDetails_ClosedCaptionsType
pattern LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsTypeUnspecified = LiveBroadcastContentDetails_ClosedCaptionsType "closedCaptionsTypeUnspecified"

pattern LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsDisabled :: LiveBroadcastContentDetails_ClosedCaptionsType
pattern LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsDisabled = LiveBroadcastContentDetails_ClosedCaptionsType "closedCaptionsDisabled"

pattern LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsHttpPost :: LiveBroadcastContentDetails_ClosedCaptionsType
pattern LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsHttpPost = LiveBroadcastContentDetails_ClosedCaptionsType "closedCaptionsHttpPost"

pattern LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsEmbedded :: LiveBroadcastContentDetails_ClosedCaptionsType
pattern LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsEmbedded = LiveBroadcastContentDetails_ClosedCaptionsType "closedCaptionsEmbedded"

{-# COMPLETE
  LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsTypeUnspecified,
  LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsDisabled,
  LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsHttpPost,
  LiveBroadcastContentDetails_ClosedCaptionsType_ClosedCaptionsEmbedded,
  LiveBroadcastContentDetails_ClosedCaptionsType
  #-}

-- | If both this and enable/low/latency are set, they must match. LATENCY/NORMAL should match enable/low/latency=false LATENCY/LOW should match enable/low/latency=true LATENCY/ULTRA/LOW should have enable/low/latency omitted.
newtype LiveBroadcastContentDetails_LatencyPreference = LiveBroadcastContentDetails_LatencyPreference {fromLiveBroadcastContentDetails_LatencyPreference :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastContentDetails_LatencyPreference_LatencyPreferenceUnspecified :: LiveBroadcastContentDetails_LatencyPreference
pattern LiveBroadcastContentDetails_LatencyPreference_LatencyPreferenceUnspecified = LiveBroadcastContentDetails_LatencyPreference "latencyPreferenceUnspecified"

-- | Best for: highest quality viewer playbacks and higher resolutions.
pattern LiveBroadcastContentDetails_LatencyPreference_Normal :: LiveBroadcastContentDetails_LatencyPreference
pattern LiveBroadcastContentDetails_LatencyPreference_Normal = LiveBroadcastContentDetails_LatencyPreference "normal"

-- | Best for: near real-time interaction, with minimal playback buffering.
pattern LiveBroadcastContentDetails_LatencyPreference_Low :: LiveBroadcastContentDetails_LatencyPreference
pattern LiveBroadcastContentDetails_LatencyPreference_Low = LiveBroadcastContentDetails_LatencyPreference "low"

-- | Best for: real-time interaction Does not support: Closed captions, 1440p, and 4k resolutions
pattern LiveBroadcastContentDetails_LatencyPreference_UltraLow :: LiveBroadcastContentDetails_LatencyPreference
pattern LiveBroadcastContentDetails_LatencyPreference_UltraLow = LiveBroadcastContentDetails_LatencyPreference "ultraLow"

{-# COMPLETE
  LiveBroadcastContentDetails_LatencyPreference_LatencyPreferenceUnspecified,
  LiveBroadcastContentDetails_LatencyPreference_Normal,
  LiveBroadcastContentDetails_LatencyPreference_Low,
  LiveBroadcastContentDetails_LatencyPreference_UltraLow,
  LiveBroadcastContentDetails_LatencyPreference
  #-}

-- | The projection format of this broadcast. This defaults to rectangular.
newtype LiveBroadcastContentDetails_Projection = LiveBroadcastContentDetails_Projection {fromLiveBroadcastContentDetails_Projection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastContentDetails_Projection_ProjectionUnspecified :: LiveBroadcastContentDetails_Projection
pattern LiveBroadcastContentDetails_Projection_ProjectionUnspecified = LiveBroadcastContentDetails_Projection "projectionUnspecified"

pattern LiveBroadcastContentDetails_Projection_Rectangular :: LiveBroadcastContentDetails_Projection
pattern LiveBroadcastContentDetails_Projection_Rectangular = LiveBroadcastContentDetails_Projection "rectangular"

pattern LiveBroadcastContentDetails_Projection_360 :: LiveBroadcastContentDetails_Projection
pattern LiveBroadcastContentDetails_Projection_360 = LiveBroadcastContentDetails_Projection "360"

pattern LiveBroadcastContentDetails_Projection_Mesh :: LiveBroadcastContentDetails_Projection
pattern LiveBroadcastContentDetails_Projection_Mesh = LiveBroadcastContentDetails_Projection "mesh"

{-# COMPLETE
  LiveBroadcastContentDetails_Projection_ProjectionUnspecified,
  LiveBroadcastContentDetails_Projection_Rectangular,
  LiveBroadcastContentDetails_Projection_360,
  LiveBroadcastContentDetails_Projection_Mesh,
  LiveBroadcastContentDetails_Projection
  #-}

-- | The 3D stereo layout of this broadcast. This defaults to mono.
newtype LiveBroadcastContentDetails_StereoLayout = LiveBroadcastContentDetails_StereoLayout {fromLiveBroadcastContentDetails_StereoLayout :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastContentDetails_StereoLayout_StereoLayoutUnspecified :: LiveBroadcastContentDetails_StereoLayout
pattern LiveBroadcastContentDetails_StereoLayout_StereoLayoutUnspecified = LiveBroadcastContentDetails_StereoLayout "stereoLayoutUnspecified"

pattern LiveBroadcastContentDetails_StereoLayout_Mono :: LiveBroadcastContentDetails_StereoLayout
pattern LiveBroadcastContentDetails_StereoLayout_Mono = LiveBroadcastContentDetails_StereoLayout "mono"

pattern LiveBroadcastContentDetails_StereoLayout_LeftRight :: LiveBroadcastContentDetails_StereoLayout
pattern LiveBroadcastContentDetails_StereoLayout_LeftRight = LiveBroadcastContentDetails_StereoLayout "leftRight"

pattern LiveBroadcastContentDetails_StereoLayout_TopBottom :: LiveBroadcastContentDetails_StereoLayout
pattern LiveBroadcastContentDetails_StereoLayout_TopBottom = LiveBroadcastContentDetails_StereoLayout "topBottom"

{-# COMPLETE
  LiveBroadcastContentDetails_StereoLayout_StereoLayoutUnspecified,
  LiveBroadcastContentDetails_StereoLayout_Mono,
  LiveBroadcastContentDetails_StereoLayout_LeftRight,
  LiveBroadcastContentDetails_StereoLayout_TopBottom,
  LiveBroadcastContentDetails_StereoLayout
  #-}

-- | The broadcast\'s status. The status can be updated using the API\'s liveBroadcasts.transition method.
newtype LiveBroadcastStatus_LifeCycleStatus = LiveBroadcastStatus_LifeCycleStatus {fromLiveBroadcastStatus_LifeCycleStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No value or the value is unknown.
pattern LiveBroadcastStatus_LifeCycleStatus_LifeCycleStatusUnspecified :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_LifeCycleStatusUnspecified = LiveBroadcastStatus_LifeCycleStatus "lifeCycleStatusUnspecified"

-- | Incomplete settings, but otherwise valid
pattern LiveBroadcastStatus_LifeCycleStatus_Created :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_Created = LiveBroadcastStatus_LifeCycleStatus "created"

-- | Complete settings
pattern LiveBroadcastStatus_LifeCycleStatus_Ready :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_Ready = LiveBroadcastStatus_LifeCycleStatus "ready"

-- | Visible only to partner, may need special UI treatment
pattern LiveBroadcastStatus_LifeCycleStatus_Testing :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_Testing = LiveBroadcastStatus_LifeCycleStatus "testing"

-- | Viper is recording; this means the \"clock\" is running
pattern LiveBroadcastStatus_LifeCycleStatus_Live :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_Live = LiveBroadcastStatus_LifeCycleStatus "live"

-- | The broadcast is finished.
pattern LiveBroadcastStatus_LifeCycleStatus_Complete :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_Complete = LiveBroadcastStatus_LifeCycleStatus "complete"

-- | This broadcast was removed by admin action
pattern LiveBroadcastStatus_LifeCycleStatus_Revoked :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_Revoked = LiveBroadcastStatus_LifeCycleStatus "revoked"

-- | Transition into TESTING has been requested
pattern LiveBroadcastStatus_LifeCycleStatus_TestStarting :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_TestStarting = LiveBroadcastStatus_LifeCycleStatus "testStarting"

-- | Transition into LIVE has been requested
pattern LiveBroadcastStatus_LifeCycleStatus_LiveStarting :: LiveBroadcastStatus_LifeCycleStatus
pattern LiveBroadcastStatus_LifeCycleStatus_LiveStarting = LiveBroadcastStatus_LifeCycleStatus "liveStarting"

{-# COMPLETE
  LiveBroadcastStatus_LifeCycleStatus_LifeCycleStatusUnspecified,
  LiveBroadcastStatus_LifeCycleStatus_Created,
  LiveBroadcastStatus_LifeCycleStatus_Ready,
  LiveBroadcastStatus_LifeCycleStatus_Testing,
  LiveBroadcastStatus_LifeCycleStatus_Live,
  LiveBroadcastStatus_LifeCycleStatus_Complete,
  LiveBroadcastStatus_LifeCycleStatus_Revoked,
  LiveBroadcastStatus_LifeCycleStatus_TestStarting,
  LiveBroadcastStatus_LifeCycleStatus_LiveStarting,
  LiveBroadcastStatus_LifeCycleStatus
  #-}

-- | Priority of the live broadcast event (internal state).
newtype LiveBroadcastStatus_LiveBroadcastPriority = LiveBroadcastStatus_LiveBroadcastPriority {fromLiveBroadcastStatus_LiveBroadcastPriority :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastStatus_LiveBroadcastPriority_LiveBroadcastPriorityUnspecified :: LiveBroadcastStatus_LiveBroadcastPriority
pattern LiveBroadcastStatus_LiveBroadcastPriority_LiveBroadcastPriorityUnspecified = LiveBroadcastStatus_LiveBroadcastPriority "liveBroadcastPriorityUnspecified"

-- | Low priority broadcast: for low view count HoAs or other low priority broadcasts.
pattern LiveBroadcastStatus_LiveBroadcastPriority_Low :: LiveBroadcastStatus_LiveBroadcastPriority
pattern LiveBroadcastStatus_LiveBroadcastPriority_Low = LiveBroadcastStatus_LiveBroadcastPriority "low"

-- | Normal priority broadcast: for regular HoAs and broadcasts.
pattern LiveBroadcastStatus_LiveBroadcastPriority_Normal :: LiveBroadcastStatus_LiveBroadcastPriority
pattern LiveBroadcastStatus_LiveBroadcastPriority_Normal = LiveBroadcastStatus_LiveBroadcastPriority "normal"

-- | High priority broadcast: for high profile HoAs, like PixelCorp ones.
pattern LiveBroadcastStatus_LiveBroadcastPriority_High :: LiveBroadcastStatus_LiveBroadcastPriority
pattern LiveBroadcastStatus_LiveBroadcastPriority_High = LiveBroadcastStatus_LiveBroadcastPriority "high"

{-# COMPLETE
  LiveBroadcastStatus_LiveBroadcastPriority_LiveBroadcastPriorityUnspecified,
  LiveBroadcastStatus_LiveBroadcastPriority_Low,
  LiveBroadcastStatus_LiveBroadcastPriority_Normal,
  LiveBroadcastStatus_LiveBroadcastPriority_High,
  LiveBroadcastStatus_LiveBroadcastPriority
  #-}

-- | The broadcast\'s privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource.
newtype LiveBroadcastStatus_PrivacyStatus = LiveBroadcastStatus_PrivacyStatus {fromLiveBroadcastStatus_PrivacyStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastStatus_PrivacyStatus_Public :: LiveBroadcastStatus_PrivacyStatus
pattern LiveBroadcastStatus_PrivacyStatus_Public = LiveBroadcastStatus_PrivacyStatus "public"

pattern LiveBroadcastStatus_PrivacyStatus_Unlisted :: LiveBroadcastStatus_PrivacyStatus
pattern LiveBroadcastStatus_PrivacyStatus_Unlisted = LiveBroadcastStatus_PrivacyStatus "unlisted"

pattern LiveBroadcastStatus_PrivacyStatus_Private :: LiveBroadcastStatus_PrivacyStatus
pattern LiveBroadcastStatus_PrivacyStatus_Private = LiveBroadcastStatus_PrivacyStatus "private"

{-# COMPLETE
  LiveBroadcastStatus_PrivacyStatus_Public,
  LiveBroadcastStatus_PrivacyStatus_Unlisted,
  LiveBroadcastStatus_PrivacyStatus_Private,
  LiveBroadcastStatus_PrivacyStatus
  #-}

-- | The broadcast\'s recording status.
newtype LiveBroadcastStatus_RecordingStatus = LiveBroadcastStatus_RecordingStatus {fromLiveBroadcastStatus_RecordingStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No value or the value is unknown.
pattern LiveBroadcastStatus_RecordingStatus_LiveBroadcastRecordingStatusUnspecified :: LiveBroadcastStatus_RecordingStatus
pattern LiveBroadcastStatus_RecordingStatus_LiveBroadcastRecordingStatusUnspecified = LiveBroadcastStatus_RecordingStatus "liveBroadcastRecordingStatusUnspecified"

-- | The recording has not yet been started.
pattern LiveBroadcastStatus_RecordingStatus_NotRecording :: LiveBroadcastStatus_RecordingStatus
pattern LiveBroadcastStatus_RecordingStatus_NotRecording = LiveBroadcastStatus_RecordingStatus "notRecording"

-- | The recording is currently on.
pattern LiveBroadcastStatus_RecordingStatus_Recording :: LiveBroadcastStatus_RecordingStatus
pattern LiveBroadcastStatus_RecordingStatus_Recording = LiveBroadcastStatus_RecordingStatus "recording"

-- | The recording is completed, and cannot be started again.
pattern LiveBroadcastStatus_RecordingStatus_Recorded :: LiveBroadcastStatus_RecordingStatus
pattern LiveBroadcastStatus_RecordingStatus_Recorded = LiveBroadcastStatus_RecordingStatus "recorded"

{-# COMPLETE
  LiveBroadcastStatus_RecordingStatus_LiveBroadcastRecordingStatusUnspecified,
  LiveBroadcastStatus_RecordingStatus_NotRecording,
  LiveBroadcastStatus_RecordingStatus_Recording,
  LiveBroadcastStatus_RecordingStatus_Recorded,
  LiveBroadcastStatus_RecordingStatus
  #-}

-- | The type of ban.
newtype LiveChatBanSnippet_Type = LiveChatBanSnippet_Type {fromLiveChatBanSnippet_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | An invalid ban type.
pattern LiveChatBanSnippet_Type_LiveChatBanTypeUnspecified :: LiveChatBanSnippet_Type
pattern LiveChatBanSnippet_Type_LiveChatBanTypeUnspecified = LiveChatBanSnippet_Type "liveChatBanTypeUnspecified"

-- | A permanent ban.
pattern LiveChatBanSnippet_Type_Permanent :: LiveChatBanSnippet_Type
pattern LiveChatBanSnippet_Type_Permanent = LiveChatBanSnippet_Type "permanent"

-- | A temporary ban.
pattern LiveChatBanSnippet_Type_Temporary :: LiveChatBanSnippet_Type
pattern LiveChatBanSnippet_Type_Temporary = LiveChatBanSnippet_Type "temporary"

{-# COMPLETE
  LiveChatBanSnippet_Type_LiveChatBanTypeUnspecified,
  LiveChatBanSnippet_Type_Permanent,
  LiveChatBanSnippet_Type_Temporary,
  LiveChatBanSnippet_Type
  #-}

-- | The type of message, this will always be present, it determines the contents of the message as well as which fields will be present.
newtype LiveChatMessageSnippet_Type = LiveChatMessageSnippet_Type {fromLiveChatMessageSnippet_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveChatMessageSnippet_Type_InvalidType :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_InvalidType = LiveChatMessageSnippet_Type "invalidType"

pattern LiveChatMessageSnippet_Type_TextMessageEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_TextMessageEvent = LiveChatMessageSnippet_Type "textMessageEvent"

pattern LiveChatMessageSnippet_Type_Tombstone :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_Tombstone = LiveChatMessageSnippet_Type "tombstone"

pattern LiveChatMessageSnippet_Type_FanFundingEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_FanFundingEvent = LiveChatMessageSnippet_Type "fanFundingEvent"

pattern LiveChatMessageSnippet_Type_ChatEndedEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_ChatEndedEvent = LiveChatMessageSnippet_Type "chatEndedEvent"

pattern LiveChatMessageSnippet_Type_SponsorOnlyModeStartedEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_SponsorOnlyModeStartedEvent = LiveChatMessageSnippet_Type "sponsorOnlyModeStartedEvent"

pattern LiveChatMessageSnippet_Type_SponsorOnlyModeEndedEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_SponsorOnlyModeEndedEvent = LiveChatMessageSnippet_Type "sponsorOnlyModeEndedEvent"

pattern LiveChatMessageSnippet_Type_NewSponsorEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_NewSponsorEvent = LiveChatMessageSnippet_Type "newSponsorEvent"

pattern LiveChatMessageSnippet_Type_MemberMilestoneChatEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_MemberMilestoneChatEvent = LiveChatMessageSnippet_Type "memberMilestoneChatEvent"

pattern LiveChatMessageSnippet_Type_MembershipGiftingEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_MembershipGiftingEvent = LiveChatMessageSnippet_Type "membershipGiftingEvent"

pattern LiveChatMessageSnippet_Type_GiftMembershipReceivedEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_GiftMembershipReceivedEvent = LiveChatMessageSnippet_Type "giftMembershipReceivedEvent"

pattern LiveChatMessageSnippet_Type_MessageDeletedEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_MessageDeletedEvent = LiveChatMessageSnippet_Type "messageDeletedEvent"

pattern LiveChatMessageSnippet_Type_MessageRetractedEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_MessageRetractedEvent = LiveChatMessageSnippet_Type "messageRetractedEvent"

pattern LiveChatMessageSnippet_Type_UserBannedEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_UserBannedEvent = LiveChatMessageSnippet_Type "userBannedEvent"

pattern LiveChatMessageSnippet_Type_SuperChatEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_SuperChatEvent = LiveChatMessageSnippet_Type "superChatEvent"

pattern LiveChatMessageSnippet_Type_SuperStickerEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_SuperStickerEvent = LiveChatMessageSnippet_Type "superStickerEvent"

pattern LiveChatMessageSnippet_Type_PollEvent :: LiveChatMessageSnippet_Type
pattern LiveChatMessageSnippet_Type_PollEvent = LiveChatMessageSnippet_Type "pollEvent"

{-# COMPLETE
  LiveChatMessageSnippet_Type_InvalidType,
  LiveChatMessageSnippet_Type_TextMessageEvent,
  LiveChatMessageSnippet_Type_Tombstone,
  LiveChatMessageSnippet_Type_FanFundingEvent,
  LiveChatMessageSnippet_Type_ChatEndedEvent,
  LiveChatMessageSnippet_Type_SponsorOnlyModeStartedEvent,
  LiveChatMessageSnippet_Type_SponsorOnlyModeEndedEvent,
  LiveChatMessageSnippet_Type_NewSponsorEvent,
  LiveChatMessageSnippet_Type_MemberMilestoneChatEvent,
  LiveChatMessageSnippet_Type_MembershipGiftingEvent,
  LiveChatMessageSnippet_Type_GiftMembershipReceivedEvent,
  LiveChatMessageSnippet_Type_MessageDeletedEvent,
  LiveChatMessageSnippet_Type_MessageRetractedEvent,
  LiveChatMessageSnippet_Type_UserBannedEvent,
  LiveChatMessageSnippet_Type_SuperChatEvent,
  LiveChatMessageSnippet_Type_SuperStickerEvent,
  LiveChatMessageSnippet_Type_PollEvent,
  LiveChatMessageSnippet_Type
  #-}

newtype LiveChatPollDetails_Status = LiveChatPollDetails_Status {fromLiveChatPollDetails_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveChatPollDetails_Status_Unknown :: LiveChatPollDetails_Status
pattern LiveChatPollDetails_Status_Unknown = LiveChatPollDetails_Status "unknown"

pattern LiveChatPollDetails_Status_Active :: LiveChatPollDetails_Status
pattern LiveChatPollDetails_Status_Active = LiveChatPollDetails_Status "active"

pattern LiveChatPollDetails_Status_Closed :: LiveChatPollDetails_Status
pattern LiveChatPollDetails_Status_Closed = LiveChatPollDetails_Status "closed"

{-# COMPLETE
  LiveChatPollDetails_Status_Unknown,
  LiveChatPollDetails_Status_Active,
  LiveChatPollDetails_Status_Closed,
  LiveChatPollDetails_Status
  #-}

-- | The type of ban.
newtype LiveChatUserBannedMessageDetails_BanType = LiveChatUserBannedMessageDetails_BanType {fromLiveChatUserBannedMessageDetails_BanType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveChatUserBannedMessageDetails_BanType_Permanent :: LiveChatUserBannedMessageDetails_BanType
pattern LiveChatUserBannedMessageDetails_BanType_Permanent = LiveChatUserBannedMessageDetails_BanType "permanent"

pattern LiveChatUserBannedMessageDetails_BanType_Temporary :: LiveChatUserBannedMessageDetails_BanType
pattern LiveChatUserBannedMessageDetails_BanType_Temporary = LiveChatUserBannedMessageDetails_BanType "temporary"

{-# COMPLETE
  LiveChatUserBannedMessageDetails_BanType_Permanent,
  LiveChatUserBannedMessageDetails_BanType_Temporary,
  LiveChatUserBannedMessageDetails_BanType
  #-}

-- | How severe this issue is to the stream.
newtype LiveStreamConfigurationIssue_Severity = LiveStreamConfigurationIssue_Severity {fromLiveStreamConfigurationIssue_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveStreamConfigurationIssue_Severity_Info :: LiveStreamConfigurationIssue_Severity
pattern LiveStreamConfigurationIssue_Severity_Info = LiveStreamConfigurationIssue_Severity "info"

pattern LiveStreamConfigurationIssue_Severity_Warning :: LiveStreamConfigurationIssue_Severity
pattern LiveStreamConfigurationIssue_Severity_Warning = LiveStreamConfigurationIssue_Severity "warning"

pattern LiveStreamConfigurationIssue_Severity_Error' :: LiveStreamConfigurationIssue_Severity
pattern LiveStreamConfigurationIssue_Severity_Error' = LiveStreamConfigurationIssue_Severity "error"

{-# COMPLETE
  LiveStreamConfigurationIssue_Severity_Info,
  LiveStreamConfigurationIssue_Severity_Warning,
  LiveStreamConfigurationIssue_Severity_Error',
  LiveStreamConfigurationIssue_Severity
  #-}

-- | The kind of error happening.
newtype LiveStreamConfigurationIssue_Type = LiveStreamConfigurationIssue_Type {fromLiveStreamConfigurationIssue_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveStreamConfigurationIssue_Type_GopSizeOver :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_GopSizeOver = LiveStreamConfigurationIssue_Type "gopSizeOver"

pattern LiveStreamConfigurationIssue_Type_GopSizeLong :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_GopSizeLong = LiveStreamConfigurationIssue_Type "gopSizeLong"

pattern LiveStreamConfigurationIssue_Type_GopSizeShort :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_GopSizeShort = LiveStreamConfigurationIssue_Type "gopSizeShort"

pattern LiveStreamConfigurationIssue_Type_OpenGop :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_OpenGop = LiveStreamConfigurationIssue_Type "openGop"

pattern LiveStreamConfigurationIssue_Type_BadContainer :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_BadContainer = LiveStreamConfigurationIssue_Type "badContainer"

pattern LiveStreamConfigurationIssue_Type_AudioBitrateHigh :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioBitrateHigh = LiveStreamConfigurationIssue_Type "audioBitrateHigh"

pattern LiveStreamConfigurationIssue_Type_AudioBitrateLow :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioBitrateLow = LiveStreamConfigurationIssue_Type "audioBitrateLow"

pattern LiveStreamConfigurationIssue_Type_AudioSampleRate :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioSampleRate = LiveStreamConfigurationIssue_Type "audioSampleRate"

pattern LiveStreamConfigurationIssue_Type_BitrateHigh :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_BitrateHigh = LiveStreamConfigurationIssue_Type "bitrateHigh"

pattern LiveStreamConfigurationIssue_Type_BitrateLow :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_BitrateLow = LiveStreamConfigurationIssue_Type "bitrateLow"

pattern LiveStreamConfigurationIssue_Type_AudioCodec :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioCodec = LiveStreamConfigurationIssue_Type "audioCodec"

pattern LiveStreamConfigurationIssue_Type_VideoCodec :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoCodec = LiveStreamConfigurationIssue_Type "videoCodec"

pattern LiveStreamConfigurationIssue_Type_NoAudioStream :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_NoAudioStream = LiveStreamConfigurationIssue_Type "noAudioStream"

pattern LiveStreamConfigurationIssue_Type_NoVideoStream :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_NoVideoStream = LiveStreamConfigurationIssue_Type "noVideoStream"

pattern LiveStreamConfigurationIssue_Type_MultipleVideoStreams :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_MultipleVideoStreams = LiveStreamConfigurationIssue_Type "multipleVideoStreams"

pattern LiveStreamConfigurationIssue_Type_MultipleAudioStreams :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_MultipleAudioStreams = LiveStreamConfigurationIssue_Type "multipleAudioStreams"

pattern LiveStreamConfigurationIssue_Type_AudioTooManyChannels :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioTooManyChannels = LiveStreamConfigurationIssue_Type "audioTooManyChannels"

pattern LiveStreamConfigurationIssue_Type_InterlacedVideo :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_InterlacedVideo = LiveStreamConfigurationIssue_Type "interlacedVideo"

pattern LiveStreamConfigurationIssue_Type_FrameRateHigh :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_FrameRateHigh = LiveStreamConfigurationIssue_Type "frameRateHigh"

pattern LiveStreamConfigurationIssue_Type_ResolutionMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_ResolutionMismatch = LiveStreamConfigurationIssue_Type "resolutionMismatch"

pattern LiveStreamConfigurationIssue_Type_VideoCodecMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoCodecMismatch = LiveStreamConfigurationIssue_Type "videoCodecMismatch"

pattern LiveStreamConfigurationIssue_Type_VideoInterlaceMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoInterlaceMismatch = LiveStreamConfigurationIssue_Type "videoInterlaceMismatch"

pattern LiveStreamConfigurationIssue_Type_VideoProfileMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoProfileMismatch = LiveStreamConfigurationIssue_Type "videoProfileMismatch"

pattern LiveStreamConfigurationIssue_Type_VideoBitrateMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoBitrateMismatch = LiveStreamConfigurationIssue_Type "videoBitrateMismatch"

pattern LiveStreamConfigurationIssue_Type_FramerateMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_FramerateMismatch = LiveStreamConfigurationIssue_Type "framerateMismatch"

pattern LiveStreamConfigurationIssue_Type_GopMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_GopMismatch = LiveStreamConfigurationIssue_Type "gopMismatch"

pattern LiveStreamConfigurationIssue_Type_AudioSampleRateMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioSampleRateMismatch = LiveStreamConfigurationIssue_Type "audioSampleRateMismatch"

pattern LiveStreamConfigurationIssue_Type_AudioStereoMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioStereoMismatch = LiveStreamConfigurationIssue_Type "audioStereoMismatch"

pattern LiveStreamConfigurationIssue_Type_AudioCodecMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioCodecMismatch = LiveStreamConfigurationIssue_Type "audioCodecMismatch"

pattern LiveStreamConfigurationIssue_Type_AudioBitrateMismatch :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_AudioBitrateMismatch = LiveStreamConfigurationIssue_Type "audioBitrateMismatch"

pattern LiveStreamConfigurationIssue_Type_VideoResolutionSuboptimal :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoResolutionSuboptimal = LiveStreamConfigurationIssue_Type "videoResolutionSuboptimal"

pattern LiveStreamConfigurationIssue_Type_VideoResolutionUnsupported :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoResolutionUnsupported = LiveStreamConfigurationIssue_Type "videoResolutionUnsupported"

pattern LiveStreamConfigurationIssue_Type_VideoIngestionStarved :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoIngestionStarved = LiveStreamConfigurationIssue_Type "videoIngestionStarved"

pattern LiveStreamConfigurationIssue_Type_VideoIngestionFasterThanRealtime :: LiveStreamConfigurationIssue_Type
pattern LiveStreamConfigurationIssue_Type_VideoIngestionFasterThanRealtime = LiveStreamConfigurationIssue_Type "videoIngestionFasterThanRealtime"

{-# COMPLETE
  LiveStreamConfigurationIssue_Type_GopSizeOver,
  LiveStreamConfigurationIssue_Type_GopSizeLong,
  LiveStreamConfigurationIssue_Type_GopSizeShort,
  LiveStreamConfigurationIssue_Type_OpenGop,
  LiveStreamConfigurationIssue_Type_BadContainer,
  LiveStreamConfigurationIssue_Type_AudioBitrateHigh,
  LiveStreamConfigurationIssue_Type_AudioBitrateLow,
  LiveStreamConfigurationIssue_Type_AudioSampleRate,
  LiveStreamConfigurationIssue_Type_BitrateHigh,
  LiveStreamConfigurationIssue_Type_BitrateLow,
  LiveStreamConfigurationIssue_Type_AudioCodec,
  LiveStreamConfigurationIssue_Type_VideoCodec,
  LiveStreamConfigurationIssue_Type_NoAudioStream,
  LiveStreamConfigurationIssue_Type_NoVideoStream,
  LiveStreamConfigurationIssue_Type_MultipleVideoStreams,
  LiveStreamConfigurationIssue_Type_MultipleAudioStreams,
  LiveStreamConfigurationIssue_Type_AudioTooManyChannels,
  LiveStreamConfigurationIssue_Type_InterlacedVideo,
  LiveStreamConfigurationIssue_Type_FrameRateHigh,
  LiveStreamConfigurationIssue_Type_ResolutionMismatch,
  LiveStreamConfigurationIssue_Type_VideoCodecMismatch,
  LiveStreamConfigurationIssue_Type_VideoInterlaceMismatch,
  LiveStreamConfigurationIssue_Type_VideoProfileMismatch,
  LiveStreamConfigurationIssue_Type_VideoBitrateMismatch,
  LiveStreamConfigurationIssue_Type_FramerateMismatch,
  LiveStreamConfigurationIssue_Type_GopMismatch,
  LiveStreamConfigurationIssue_Type_AudioSampleRateMismatch,
  LiveStreamConfigurationIssue_Type_AudioStereoMismatch,
  LiveStreamConfigurationIssue_Type_AudioCodecMismatch,
  LiveStreamConfigurationIssue_Type_AudioBitrateMismatch,
  LiveStreamConfigurationIssue_Type_VideoResolutionSuboptimal,
  LiveStreamConfigurationIssue_Type_VideoResolutionUnsupported,
  LiveStreamConfigurationIssue_Type_VideoIngestionStarved,
  LiveStreamConfigurationIssue_Type_VideoIngestionFasterThanRealtime,
  LiveStreamConfigurationIssue_Type
  #-}

-- | The status code of this stream
newtype LiveStreamHealthStatus_Status = LiveStreamHealthStatus_Status {fromLiveStreamHealthStatus_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveStreamHealthStatus_Status_Good :: LiveStreamHealthStatus_Status
pattern LiveStreamHealthStatus_Status_Good = LiveStreamHealthStatus_Status "good"

pattern LiveStreamHealthStatus_Status_OK :: LiveStreamHealthStatus_Status
pattern LiveStreamHealthStatus_Status_OK = LiveStreamHealthStatus_Status "ok"

pattern LiveStreamHealthStatus_Status_Bad :: LiveStreamHealthStatus_Status
pattern LiveStreamHealthStatus_Status_Bad = LiveStreamHealthStatus_Status "bad"

pattern LiveStreamHealthStatus_Status_NoData :: LiveStreamHealthStatus_Status
pattern LiveStreamHealthStatus_Status_NoData = LiveStreamHealthStatus_Status "noData"

pattern LiveStreamHealthStatus_Status_Revoked :: LiveStreamHealthStatus_Status
pattern LiveStreamHealthStatus_Status_Revoked = LiveStreamHealthStatus_Status "revoked"

{-# COMPLETE
  LiveStreamHealthStatus_Status_Good,
  LiveStreamHealthStatus_Status_OK,
  LiveStreamHealthStatus_Status_Bad,
  LiveStreamHealthStatus_Status_NoData,
  LiveStreamHealthStatus_Status_Revoked,
  LiveStreamHealthStatus_Status
  #-}

newtype LiveStreamStatus_StreamStatus = LiveStreamStatus_StreamStatus {fromLiveStreamStatus_StreamStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveStreamStatus_StreamStatus_Created :: LiveStreamStatus_StreamStatus
pattern LiveStreamStatus_StreamStatus_Created = LiveStreamStatus_StreamStatus "created"

pattern LiveStreamStatus_StreamStatus_Ready :: LiveStreamStatus_StreamStatus
pattern LiveStreamStatus_StreamStatus_Ready = LiveStreamStatus_StreamStatus "ready"

pattern LiveStreamStatus_StreamStatus_Active :: LiveStreamStatus_StreamStatus
pattern LiveStreamStatus_StreamStatus_Active = LiveStreamStatus_StreamStatus "active"

pattern LiveStreamStatus_StreamStatus_Inactive :: LiveStreamStatus_StreamStatus
pattern LiveStreamStatus_StreamStatus_Inactive = LiveStreamStatus_StreamStatus "inactive"

pattern LiveStreamStatus_StreamStatus_Error' :: LiveStreamStatus_StreamStatus
pattern LiveStreamStatus_StreamStatus_Error' = LiveStreamStatus_StreamStatus "error"

{-# COMPLETE
  LiveStreamStatus_StreamStatus_Created,
  LiveStreamStatus_StreamStatus_Ready,
  LiveStreamStatus_StreamStatus_Active,
  LiveStreamStatus_StreamStatus_Inactive,
  LiveStreamStatus_StreamStatus_Error',
  LiveStreamStatus_StreamStatus
  #-}

-- | The image type.
newtype PlaylistImageSnippet_Type = PlaylistImageSnippet_Type {fromPlaylistImageSnippet_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The main image that will be used for this playlist.
pattern PlaylistImageSnippet_Type_Hero :: PlaylistImageSnippet_Type
pattern PlaylistImageSnippet_Type_Hero = PlaylistImageSnippet_Type "hero"

{-# COMPLETE
  PlaylistImageSnippet_Type_Hero,
  PlaylistImageSnippet_Type
  #-}

-- | This resource\'s privacy status.
newtype PlaylistItemStatus_PrivacyStatus = PlaylistItemStatus_PrivacyStatus {fromPlaylistItemStatus_PrivacyStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern PlaylistItemStatus_PrivacyStatus_Public :: PlaylistItemStatus_PrivacyStatus
pattern PlaylistItemStatus_PrivacyStatus_Public = PlaylistItemStatus_PrivacyStatus "public"

pattern PlaylistItemStatus_PrivacyStatus_Unlisted :: PlaylistItemStatus_PrivacyStatus
pattern PlaylistItemStatus_PrivacyStatus_Unlisted = PlaylistItemStatus_PrivacyStatus "unlisted"

pattern PlaylistItemStatus_PrivacyStatus_Private :: PlaylistItemStatus_PrivacyStatus
pattern PlaylistItemStatus_PrivacyStatus_Private = PlaylistItemStatus_PrivacyStatus "private"

{-# COMPLETE
  PlaylistItemStatus_PrivacyStatus_Public,
  PlaylistItemStatus_PrivacyStatus_Unlisted,
  PlaylistItemStatus_PrivacyStatus_Private,
  PlaylistItemStatus_PrivacyStatus
  #-}

-- | The playlist\'s podcast status.
newtype PlaylistStatus_PodcastStatus = PlaylistStatus_PodcastStatus {fromPlaylistStatus_PodcastStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern PlaylistStatus_PodcastStatus_Enabled :: PlaylistStatus_PodcastStatus
pattern PlaylistStatus_PodcastStatus_Enabled = PlaylistStatus_PodcastStatus "enabled"

pattern PlaylistStatus_PodcastStatus_Disabled :: PlaylistStatus_PodcastStatus
pattern PlaylistStatus_PodcastStatus_Disabled = PlaylistStatus_PodcastStatus "disabled"

{-# COMPLETE
  PlaylistStatus_PodcastStatus_Enabled,
  PlaylistStatus_PodcastStatus_Disabled,
  PlaylistStatus_PodcastStatus
  #-}

-- | The playlist\'s privacy status.
newtype PlaylistStatus_PrivacyStatus = PlaylistStatus_PrivacyStatus {fromPlaylistStatus_PrivacyStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern PlaylistStatus_PrivacyStatus_Public :: PlaylistStatus_PrivacyStatus
pattern PlaylistStatus_PrivacyStatus_Public = PlaylistStatus_PrivacyStatus "public"

pattern PlaylistStatus_PrivacyStatus_Unlisted :: PlaylistStatus_PrivacyStatus
pattern PlaylistStatus_PrivacyStatus_Unlisted = PlaylistStatus_PrivacyStatus "unlisted"

pattern PlaylistStatus_PrivacyStatus_Private :: PlaylistStatus_PrivacyStatus
pattern PlaylistStatus_PrivacyStatus_Private = PlaylistStatus_PrivacyStatus "private"

{-# COMPLETE
  PlaylistStatus_PrivacyStatus_Public,
  PlaylistStatus_PrivacyStatus_Unlisted,
  PlaylistStatus_PrivacyStatus_Private,
  PlaylistStatus_PrivacyStatus
  #-}

-- | It indicates if the resource (video or channel) has upcoming\/active live broadcast content. Or it\'s \"none\" if there is not any upcoming\/active live broadcasts.
newtype SearchResultSnippet_LiveBroadcastContent = SearchResultSnippet_LiveBroadcastContent {fromSearchResultSnippet_LiveBroadcastContent :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchResultSnippet_LiveBroadcastContent_None :: SearchResultSnippet_LiveBroadcastContent
pattern SearchResultSnippet_LiveBroadcastContent_None = SearchResultSnippet_LiveBroadcastContent "none"

-- | The live broadcast is upcoming.
pattern SearchResultSnippet_LiveBroadcastContent_Upcoming :: SearchResultSnippet_LiveBroadcastContent
pattern SearchResultSnippet_LiveBroadcastContent_Upcoming = SearchResultSnippet_LiveBroadcastContent "upcoming"

-- | The live broadcast is active.
pattern SearchResultSnippet_LiveBroadcastContent_Live :: SearchResultSnippet_LiveBroadcastContent
pattern SearchResultSnippet_LiveBroadcastContent_Live = SearchResultSnippet_LiveBroadcastContent "live"

-- | The live broadcast has been completed.
pattern SearchResultSnippet_LiveBroadcastContent_Completed :: SearchResultSnippet_LiveBroadcastContent
pattern SearchResultSnippet_LiveBroadcastContent_Completed = SearchResultSnippet_LiveBroadcastContent "completed"

{-# COMPLETE
  SearchResultSnippet_LiveBroadcastContent_None,
  SearchResultSnippet_LiveBroadcastContent_Upcoming,
  SearchResultSnippet_LiveBroadcastContent_Live,
  SearchResultSnippet_LiveBroadcastContent_Completed,
  SearchResultSnippet_LiveBroadcastContent
  #-}

-- | The type of activity this subscription is for (only uploads, everything).
newtype SubscriptionContentDetails_ActivityType = SubscriptionContentDetails_ActivityType {fromSubscriptionContentDetails_ActivityType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SubscriptionContentDetails_ActivityType_SubscriptionActivityTypeUnspecified :: SubscriptionContentDetails_ActivityType
pattern SubscriptionContentDetails_ActivityType_SubscriptionActivityTypeUnspecified = SubscriptionContentDetails_ActivityType "subscriptionActivityTypeUnspecified"

pattern SubscriptionContentDetails_ActivityType_All :: SubscriptionContentDetails_ActivityType
pattern SubscriptionContentDetails_ActivityType_All = SubscriptionContentDetails_ActivityType "all"

pattern SubscriptionContentDetails_ActivityType_Uploads :: SubscriptionContentDetails_ActivityType
pattern SubscriptionContentDetails_ActivityType_Uploads = SubscriptionContentDetails_ActivityType "uploads"

{-# COMPLETE
  SubscriptionContentDetails_ActivityType_SubscriptionActivityTypeUnspecified,
  SubscriptionContentDetails_ActivityType_All,
  SubscriptionContentDetails_ActivityType_Uploads,
  SubscriptionContentDetails_ActivityType
  #-}

-- | Type of the link named after the entities that are being linked.
newtype ThirdPartyLinkSnippet_Type = ThirdPartyLinkSnippet_Type {fromThirdPartyLinkSnippet_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ThirdPartyLinkSnippet_Type_LinkUnspecified :: ThirdPartyLinkSnippet_Type
pattern ThirdPartyLinkSnippet_Type_LinkUnspecified = ThirdPartyLinkSnippet_Type "linkUnspecified"

-- | A link that is connecting (or about to connect) a channel with a store on a merchandising platform in order to enable retail commerce capabilities for that channel on YouTube.
pattern ThirdPartyLinkSnippet_Type_ChannelToStoreLink :: ThirdPartyLinkSnippet_Type
pattern ThirdPartyLinkSnippet_Type_ChannelToStoreLink = ThirdPartyLinkSnippet_Type "channelToStoreLink"

{-# COMPLETE
  ThirdPartyLinkSnippet_Type_LinkUnspecified,
  ThirdPartyLinkSnippet_Type_ChannelToStoreLink,
  ThirdPartyLinkSnippet_Type
  #-}

newtype ThirdPartyLinkStatus_LinkStatus = ThirdPartyLinkStatus_LinkStatus {fromThirdPartyLinkStatus_LinkStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ThirdPartyLinkStatus_LinkStatus_Unknown :: ThirdPartyLinkStatus_LinkStatus
pattern ThirdPartyLinkStatus_LinkStatus_Unknown = ThirdPartyLinkStatus_LinkStatus "unknown"

pattern ThirdPartyLinkStatus_LinkStatus_Failed :: ThirdPartyLinkStatus_LinkStatus
pattern ThirdPartyLinkStatus_LinkStatus_Failed = ThirdPartyLinkStatus_LinkStatus "failed"

pattern ThirdPartyLinkStatus_LinkStatus_Pending :: ThirdPartyLinkStatus_LinkStatus
pattern ThirdPartyLinkStatus_LinkStatus_Pending = ThirdPartyLinkStatus_LinkStatus "pending"

pattern ThirdPartyLinkStatus_LinkStatus_Linked :: ThirdPartyLinkStatus_LinkStatus
pattern ThirdPartyLinkStatus_LinkStatus_Linked = ThirdPartyLinkStatus_LinkStatus "linked"

{-# COMPLETE
  ThirdPartyLinkStatus_LinkStatus_Unknown,
  ThirdPartyLinkStatus_LinkStatus_Failed,
  ThirdPartyLinkStatus_LinkStatus_Pending,
  ThirdPartyLinkStatus_LinkStatus_Linked,
  ThirdPartyLinkStatus_LinkStatus
  #-}

-- | Video game rating, if any.
newtype VideoAgeGating_VideoGameRating = VideoAgeGating_VideoGameRating {fromVideoAgeGating_VideoGameRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoAgeGating_VideoGameRating_Anyone :: VideoAgeGating_VideoGameRating
pattern VideoAgeGating_VideoGameRating_Anyone = VideoAgeGating_VideoGameRating "anyone"

pattern VideoAgeGating_VideoGameRating_M15Plus :: VideoAgeGating_VideoGameRating
pattern VideoAgeGating_VideoGameRating_M15Plus = VideoAgeGating_VideoGameRating "m15Plus"

pattern VideoAgeGating_VideoGameRating_M16Plus :: VideoAgeGating_VideoGameRating
pattern VideoAgeGating_VideoGameRating_M16Plus = VideoAgeGating_VideoGameRating "m16Plus"

pattern VideoAgeGating_VideoGameRating_M17Plus :: VideoAgeGating_VideoGameRating
pattern VideoAgeGating_VideoGameRating_M17Plus = VideoAgeGating_VideoGameRating "m17Plus"

{-# COMPLETE
  VideoAgeGating_VideoGameRating_Anyone,
  VideoAgeGating_VideoGameRating_M15Plus,
  VideoAgeGating_VideoGameRating_M16Plus,
  VideoAgeGating_VideoGameRating_M17Plus,
  VideoAgeGating_VideoGameRating
  #-}

-- | The value of captions indicates whether the video has captions or not.
newtype VideoContentDetails_Caption = VideoContentDetails_Caption {fromVideoContentDetails_Caption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoContentDetails_Caption_True' :: VideoContentDetails_Caption
pattern VideoContentDetails_Caption_True' = VideoContentDetails_Caption "true"

pattern VideoContentDetails_Caption_False' :: VideoContentDetails_Caption
pattern VideoContentDetails_Caption_False' = VideoContentDetails_Caption "false"

{-# COMPLETE
  VideoContentDetails_Caption_True',
  VideoContentDetails_Caption_False',
  VideoContentDetails_Caption
  #-}

-- | The value of definition indicates whether the video is available in high definition or only in standard definition.
newtype VideoContentDetails_Definition = VideoContentDetails_Definition {fromVideoContentDetails_Definition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | sd
pattern VideoContentDetails_Definition_SD :: VideoContentDetails_Definition
pattern VideoContentDetails_Definition_SD = VideoContentDetails_Definition "sd"

-- | hd
pattern VideoContentDetails_Definition_HD :: VideoContentDetails_Definition
pattern VideoContentDetails_Definition_HD = VideoContentDetails_Definition "hd"

{-# COMPLETE
  VideoContentDetails_Definition_SD,
  VideoContentDetails_Definition_HD,
  VideoContentDetails_Definition
  #-}

-- | Specifies the projection format of the video.
newtype VideoContentDetails_Projection = VideoContentDetails_Projection {fromVideoContentDetails_Projection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoContentDetails_Projection_Rectangular :: VideoContentDetails_Projection
pattern VideoContentDetails_Projection_Rectangular = VideoContentDetails_Projection "rectangular"

pattern VideoContentDetails_Projection_360 :: VideoContentDetails_Projection
pattern VideoContentDetails_Projection_360 = VideoContentDetails_Projection "360"

{-# COMPLETE
  VideoContentDetails_Projection_Rectangular,
  VideoContentDetails_Projection_360,
  VideoContentDetails_Projection
  #-}

-- | The uploaded file\'s type as detected by YouTube\'s video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded.
newtype VideoFileDetails_FileType = VideoFileDetails_FileType {fromVideoFileDetails_FileType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Known video file (e.g., an MP4 file).
pattern VideoFileDetails_FileType_Video :: VideoFileDetails_FileType
pattern VideoFileDetails_FileType_Video = VideoFileDetails_FileType "video"

-- | Audio only file (e.g., an MP3 file).
pattern VideoFileDetails_FileType_Audio :: VideoFileDetails_FileType
pattern VideoFileDetails_FileType_Audio = VideoFileDetails_FileType "audio"

-- | Image file (e.g., a JPEG image).
pattern VideoFileDetails_FileType_Image :: VideoFileDetails_FileType
pattern VideoFileDetails_FileType_Image = VideoFileDetails_FileType "image"

-- | Archive file (e.g., a ZIP archive).
pattern VideoFileDetails_FileType_Archive :: VideoFileDetails_FileType
pattern VideoFileDetails_FileType_Archive = VideoFileDetails_FileType "archive"

-- | Document or text file (e.g., MS Word document).
pattern VideoFileDetails_FileType_Document :: VideoFileDetails_FileType
pattern VideoFileDetails_FileType_Document = VideoFileDetails_FileType "document"

-- | Movie project file (e.g., Microsoft Windows Movie Maker project).
pattern VideoFileDetails_FileType_Project :: VideoFileDetails_FileType
pattern VideoFileDetails_FileType_Project = VideoFileDetails_FileType "project"

-- | Other non-video file type.
pattern VideoFileDetails_FileType_Other :: VideoFileDetails_FileType
pattern VideoFileDetails_FileType_Other = VideoFileDetails_FileType "other"

{-# COMPLETE
  VideoFileDetails_FileType_Video,
  VideoFileDetails_FileType_Audio,
  VideoFileDetails_FileType_Image,
  VideoFileDetails_FileType_Archive,
  VideoFileDetails_FileType_Document,
  VideoFileDetails_FileType_Project,
  VideoFileDetails_FileType_Other,
  VideoFileDetails_FileType
  #-}

-- | The amount that YouTube needs to rotate the original source content to properly display the video.
newtype VideoFileDetailsVideoStream_Rotation = VideoFileDetailsVideoStream_Rotation {fromVideoFileDetailsVideoStream_Rotation :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoFileDetailsVideoStream_Rotation_None :: VideoFileDetailsVideoStream_Rotation
pattern VideoFileDetailsVideoStream_Rotation_None = VideoFileDetailsVideoStream_Rotation "none"

pattern VideoFileDetailsVideoStream_Rotation_Clockwise :: VideoFileDetailsVideoStream_Rotation
pattern VideoFileDetailsVideoStream_Rotation_Clockwise = VideoFileDetailsVideoStream_Rotation "clockwise"

pattern VideoFileDetailsVideoStream_Rotation_UpsideDown :: VideoFileDetailsVideoStream_Rotation
pattern VideoFileDetailsVideoStream_Rotation_UpsideDown = VideoFileDetailsVideoStream_Rotation "upsideDown"

pattern VideoFileDetailsVideoStream_Rotation_CounterClockwise :: VideoFileDetailsVideoStream_Rotation
pattern VideoFileDetailsVideoStream_Rotation_CounterClockwise = VideoFileDetailsVideoStream_Rotation "counterClockwise"

pattern VideoFileDetailsVideoStream_Rotation_Other :: VideoFileDetailsVideoStream_Rotation
pattern VideoFileDetailsVideoStream_Rotation_Other = VideoFileDetailsVideoStream_Rotation "other"

{-# COMPLETE
  VideoFileDetailsVideoStream_Rotation_None,
  VideoFileDetailsVideoStream_Rotation_Clockwise,
  VideoFileDetailsVideoStream_Rotation_UpsideDown,
  VideoFileDetailsVideoStream_Rotation_CounterClockwise,
  VideoFileDetailsVideoStream_Rotation_Other,
  VideoFileDetailsVideoStream_Rotation
  #-}

-- | The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property\'s value is failed.
newtype VideoProcessingDetails_ProcessingFailureReason = VideoProcessingDetails_ProcessingFailureReason {fromVideoProcessingDetails_ProcessingFailureReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoProcessingDetails_ProcessingFailureReason_UploadFailed :: VideoProcessingDetails_ProcessingFailureReason
pattern VideoProcessingDetails_ProcessingFailureReason_UploadFailed = VideoProcessingDetails_ProcessingFailureReason "uploadFailed"

pattern VideoProcessingDetails_ProcessingFailureReason_TranscodeFailed :: VideoProcessingDetails_ProcessingFailureReason
pattern VideoProcessingDetails_ProcessingFailureReason_TranscodeFailed = VideoProcessingDetails_ProcessingFailureReason "transcodeFailed"

pattern VideoProcessingDetails_ProcessingFailureReason_StreamingFailed :: VideoProcessingDetails_ProcessingFailureReason
pattern VideoProcessingDetails_ProcessingFailureReason_StreamingFailed = VideoProcessingDetails_ProcessingFailureReason "streamingFailed"

pattern VideoProcessingDetails_ProcessingFailureReason_Other :: VideoProcessingDetails_ProcessingFailureReason
pattern VideoProcessingDetails_ProcessingFailureReason_Other = VideoProcessingDetails_ProcessingFailureReason "other"

{-# COMPLETE
  VideoProcessingDetails_ProcessingFailureReason_UploadFailed,
  VideoProcessingDetails_ProcessingFailureReason_TranscodeFailed,
  VideoProcessingDetails_ProcessingFailureReason_StreamingFailed,
  VideoProcessingDetails_ProcessingFailureReason_Other,
  VideoProcessingDetails_ProcessingFailureReason
  #-}

-- | The video\'s processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed.
newtype VideoProcessingDetails_ProcessingStatus = VideoProcessingDetails_ProcessingStatus {fromVideoProcessingDetails_ProcessingStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoProcessingDetails_ProcessingStatus_Processing :: VideoProcessingDetails_ProcessingStatus
pattern VideoProcessingDetails_ProcessingStatus_Processing = VideoProcessingDetails_ProcessingStatus "processing"

pattern VideoProcessingDetails_ProcessingStatus_Succeeded :: VideoProcessingDetails_ProcessingStatus
pattern VideoProcessingDetails_ProcessingStatus_Succeeded = VideoProcessingDetails_ProcessingStatus "succeeded"

pattern VideoProcessingDetails_ProcessingStatus_Failed :: VideoProcessingDetails_ProcessingStatus
pattern VideoProcessingDetails_ProcessingStatus_Failed = VideoProcessingDetails_ProcessingStatus "failed"

pattern VideoProcessingDetails_ProcessingStatus_Terminated :: VideoProcessingDetails_ProcessingStatus
pattern VideoProcessingDetails_ProcessingStatus_Terminated = VideoProcessingDetails_ProcessingStatus "terminated"

{-# COMPLETE
  VideoProcessingDetails_ProcessingStatus_Processing,
  VideoProcessingDetails_ProcessingStatus_Succeeded,
  VideoProcessingDetails_ProcessingStatus_Failed,
  VideoProcessingDetails_ProcessingStatus_Terminated,
  VideoProcessingDetails_ProcessingStatus
  #-}

-- | Rating of a video.
newtype VideoRating_Rating = VideoRating_Rating {fromVideoRating_Rating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoRating_Rating_None :: VideoRating_Rating
pattern VideoRating_Rating_None = VideoRating_Rating "none"

-- | The entity is liked.
pattern VideoRating_Rating_Like :: VideoRating_Rating
pattern VideoRating_Rating_Like = VideoRating_Rating "like"

-- | The entity is disliked.
pattern VideoRating_Rating_Dislike :: VideoRating_Rating
pattern VideoRating_Rating_Dislike = VideoRating_Rating "dislike"

{-# COMPLETE
  VideoRating_Rating_None,
  VideoRating_Rating_Like,
  VideoRating_Rating_Dislike,
  VideoRating_Rating
  #-}

-- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s \"none\" if the video is not an upcoming\/active live broadcast.
newtype VideoSnippet_LiveBroadcastContent = VideoSnippet_LiveBroadcastContent {fromVideoSnippet_LiveBroadcastContent :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoSnippet_LiveBroadcastContent_None :: VideoSnippet_LiveBroadcastContent
pattern VideoSnippet_LiveBroadcastContent_None = VideoSnippet_LiveBroadcastContent "none"

-- | The live broadcast is upcoming.
pattern VideoSnippet_LiveBroadcastContent_Upcoming :: VideoSnippet_LiveBroadcastContent
pattern VideoSnippet_LiveBroadcastContent_Upcoming = VideoSnippet_LiveBroadcastContent "upcoming"

-- | The live broadcast is active.
pattern VideoSnippet_LiveBroadcastContent_Live :: VideoSnippet_LiveBroadcastContent
pattern VideoSnippet_LiveBroadcastContent_Live = VideoSnippet_LiveBroadcastContent "live"

-- | The live broadcast has been completed.
pattern VideoSnippet_LiveBroadcastContent_Completed :: VideoSnippet_LiveBroadcastContent
pattern VideoSnippet_LiveBroadcastContent_Completed = VideoSnippet_LiveBroadcastContent "completed"

{-# COMPLETE
  VideoSnippet_LiveBroadcastContent_None,
  VideoSnippet_LiveBroadcastContent_Upcoming,
  VideoSnippet_LiveBroadcastContent_Live,
  VideoSnippet_LiveBroadcastContent_Completed,
  VideoSnippet_LiveBroadcastContent
  #-}

-- | This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed.
newtype VideoStatus_FailureReason = VideoStatus_FailureReason {fromVideoStatus_FailureReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unable to convert video content.
pattern VideoStatus_FailureReason_Conversion :: VideoStatus_FailureReason
pattern VideoStatus_FailureReason_Conversion = VideoStatus_FailureReason "conversion"

-- | Invalid file format.
pattern VideoStatus_FailureReason_InvalidFile :: VideoStatus_FailureReason
pattern VideoStatus_FailureReason_InvalidFile = VideoStatus_FailureReason "invalidFile"

-- | Empty file.
pattern VideoStatus_FailureReason_EmptyFile :: VideoStatus_FailureReason
pattern VideoStatus_FailureReason_EmptyFile = VideoStatus_FailureReason "emptyFile"

-- | File was too small.
pattern VideoStatus_FailureReason_TooSmall :: VideoStatus_FailureReason
pattern VideoStatus_FailureReason_TooSmall = VideoStatus_FailureReason "tooSmall"

-- | Unsupported codec.
pattern VideoStatus_FailureReason_Codec :: VideoStatus_FailureReason
pattern VideoStatus_FailureReason_Codec = VideoStatus_FailureReason "codec"

-- | Upload wasn\'t finished.
pattern VideoStatus_FailureReason_UploadAborted :: VideoStatus_FailureReason
pattern VideoStatus_FailureReason_UploadAborted = VideoStatus_FailureReason "uploadAborted"

{-# COMPLETE
  VideoStatus_FailureReason_Conversion,
  VideoStatus_FailureReason_InvalidFile,
  VideoStatus_FailureReason_EmptyFile,
  VideoStatus_FailureReason_TooSmall,
  VideoStatus_FailureReason_Codec,
  VideoStatus_FailureReason_UploadAborted,
  VideoStatus_FailureReason
  #-}

-- | The video\'s license. \@mutable youtube.videos.insert youtube.videos.update
newtype VideoStatus_License = VideoStatus_License {fromVideoStatus_License :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoStatus_License_Youtube :: VideoStatus_License
pattern VideoStatus_License_Youtube = VideoStatus_License "youtube"

pattern VideoStatus_License_CreativeCommon :: VideoStatus_License
pattern VideoStatus_License_CreativeCommon = VideoStatus_License "creativeCommon"

{-# COMPLETE
  VideoStatus_License_Youtube,
  VideoStatus_License_CreativeCommon,
  VideoStatus_License
  #-}

-- | The video\'s privacy status.
newtype VideoStatus_PrivacyStatus = VideoStatus_PrivacyStatus {fromVideoStatus_PrivacyStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideoStatus_PrivacyStatus_Public :: VideoStatus_PrivacyStatus
pattern VideoStatus_PrivacyStatus_Public = VideoStatus_PrivacyStatus "public"

pattern VideoStatus_PrivacyStatus_Unlisted :: VideoStatus_PrivacyStatus
pattern VideoStatus_PrivacyStatus_Unlisted = VideoStatus_PrivacyStatus "unlisted"

pattern VideoStatus_PrivacyStatus_Private :: VideoStatus_PrivacyStatus
pattern VideoStatus_PrivacyStatus_Private = VideoStatus_PrivacyStatus "private"

{-# COMPLETE
  VideoStatus_PrivacyStatus_Public,
  VideoStatus_PrivacyStatus_Unlisted,
  VideoStatus_PrivacyStatus_Private,
  VideoStatus_PrivacyStatus
  #-}

-- | This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected.
newtype VideoStatus_RejectionReason = VideoStatus_RejectionReason {fromVideoStatus_RejectionReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Copyright infringement.
pattern VideoStatus_RejectionReason_Copyright :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_Copyright = VideoStatus_RejectionReason "copyright"

-- | Inappropriate video content.
pattern VideoStatus_RejectionReason_Inappropriate :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_Inappropriate = VideoStatus_RejectionReason "inappropriate"

-- | Duplicate upload in the same channel.
pattern VideoStatus_RejectionReason_Duplicate :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_Duplicate = VideoStatus_RejectionReason "duplicate"

-- | Terms of use violation.
pattern VideoStatus_RejectionReason_TermsOfUse :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_TermsOfUse = VideoStatus_RejectionReason "termsOfUse"

-- | Uploader account was suspended.
pattern VideoStatus_RejectionReason_UploaderAccountSuspended :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_UploaderAccountSuspended = VideoStatus_RejectionReason "uploaderAccountSuspended"

-- | Video duration was too long.
pattern VideoStatus_RejectionReason_Length :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_Length = VideoStatus_RejectionReason "length"

-- | Blocked by content owner.
pattern VideoStatus_RejectionReason_Claim :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_Claim = VideoStatus_RejectionReason "claim"

-- | Uploader closed his\/her account.
pattern VideoStatus_RejectionReason_UploaderAccountClosed :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_UploaderAccountClosed = VideoStatus_RejectionReason "uploaderAccountClosed"

-- | Trademark infringement.
pattern VideoStatus_RejectionReason_Trademark :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_Trademark = VideoStatus_RejectionReason "trademark"

-- | An unspecified legal reason.
pattern VideoStatus_RejectionReason_Legal :: VideoStatus_RejectionReason
pattern VideoStatus_RejectionReason_Legal = VideoStatus_RejectionReason "legal"

{-# COMPLETE
  VideoStatus_RejectionReason_Copyright,
  VideoStatus_RejectionReason_Inappropriate,
  VideoStatus_RejectionReason_Duplicate,
  VideoStatus_RejectionReason_TermsOfUse,
  VideoStatus_RejectionReason_UploaderAccountSuspended,
  VideoStatus_RejectionReason_Length,
  VideoStatus_RejectionReason_Claim,
  VideoStatus_RejectionReason_UploaderAccountClosed,
  VideoStatus_RejectionReason_Trademark,
  VideoStatus_RejectionReason_Legal,
  VideoStatus_RejectionReason
  #-}

-- | The status of the uploaded video.
newtype VideoStatus_UploadStatus = VideoStatus_UploadStatus {fromVideoStatus_UploadStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Video has been uploaded but not processed yet.
pattern VideoStatus_UploadStatus_Uploaded :: VideoStatus_UploadStatus
pattern VideoStatus_UploadStatus_Uploaded = VideoStatus_UploadStatus "uploaded"

-- | Video has been successfully processed.
pattern VideoStatus_UploadStatus_Processed :: VideoStatus_UploadStatus
pattern VideoStatus_UploadStatus_Processed = VideoStatus_UploadStatus "processed"

-- | Processing has failed. See FailureReason.
pattern VideoStatus_UploadStatus_Failed :: VideoStatus_UploadStatus
pattern VideoStatus_UploadStatus_Failed = VideoStatus_UploadStatus "failed"

-- | Video has been rejected. See RejectionReason.
pattern VideoStatus_UploadStatus_Rejected :: VideoStatus_UploadStatus
pattern VideoStatus_UploadStatus_Rejected = VideoStatus_UploadStatus "rejected"

-- | Video has been deleted.
pattern VideoStatus_UploadStatus_Deleted :: VideoStatus_UploadStatus
pattern VideoStatus_UploadStatus_Deleted = VideoStatus_UploadStatus "deleted"

{-# COMPLETE
  VideoStatus_UploadStatus_Uploaded,
  VideoStatus_UploadStatus_Processed,
  VideoStatus_UploadStatus_Failed,
  VideoStatus_UploadStatus_Rejected,
  VideoStatus_UploadStatus_Deleted,
  VideoStatus_UploadStatus
  #-}

newtype VideoSuggestions_EditorSuggestionsItem = VideoSuggestions_EditorSuggestionsItem {fromVideoSuggestions_EditorSuggestionsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Picture brightness levels seem off and could be corrected.
pattern VideoSuggestions_EditorSuggestionsItem_VideoAutoLevels :: VideoSuggestions_EditorSuggestionsItem
pattern VideoSuggestions_EditorSuggestionsItem_VideoAutoLevels = VideoSuggestions_EditorSuggestionsItem "videoAutoLevels"

-- | The video appears shaky and could be stabilized.
pattern VideoSuggestions_EditorSuggestionsItem_VideoStabilize :: VideoSuggestions_EditorSuggestionsItem
pattern VideoSuggestions_EditorSuggestionsItem_VideoStabilize = VideoSuggestions_EditorSuggestionsItem "videoStabilize"

-- | Margins (mattes) detected around the picture could be cropped.
pattern VideoSuggestions_EditorSuggestionsItem_VideoCrop :: VideoSuggestions_EditorSuggestionsItem
pattern VideoSuggestions_EditorSuggestionsItem_VideoCrop = VideoSuggestions_EditorSuggestionsItem "videoCrop"

-- | The audio track appears silent and could be swapped with a better quality one.
pattern VideoSuggestions_EditorSuggestionsItem_AudioQuietAudioSwap :: VideoSuggestions_EditorSuggestionsItem
pattern VideoSuggestions_EditorSuggestionsItem_AudioQuietAudioSwap = VideoSuggestions_EditorSuggestionsItem "audioQuietAudioSwap"

{-# COMPLETE
  VideoSuggestions_EditorSuggestionsItem_VideoAutoLevels,
  VideoSuggestions_EditorSuggestionsItem_VideoStabilize,
  VideoSuggestions_EditorSuggestionsItem_VideoCrop,
  VideoSuggestions_EditorSuggestionsItem_AudioQuietAudioSwap,
  VideoSuggestions_EditorSuggestionsItem
  #-}

newtype VideoSuggestions_ProcessingErrorsItem = VideoSuggestions_ProcessingErrorsItem {fromVideoSuggestions_ProcessingErrorsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | File contains audio only (e.g., an MP3 file).
pattern VideoSuggestions_ProcessingErrorsItem_AudioFile :: VideoSuggestions_ProcessingErrorsItem
pattern VideoSuggestions_ProcessingErrorsItem_AudioFile = VideoSuggestions_ProcessingErrorsItem "audioFile"

-- | Image file (e.g., a JPEG image).
pattern VideoSuggestions_ProcessingErrorsItem_ImageFile :: VideoSuggestions_ProcessingErrorsItem
pattern VideoSuggestions_ProcessingErrorsItem_ImageFile = VideoSuggestions_ProcessingErrorsItem "imageFile"

-- | Movie project file (e.g., Microsoft Windows Movie Maker project).
pattern VideoSuggestions_ProcessingErrorsItem_ProjectFile :: VideoSuggestions_ProcessingErrorsItem
pattern VideoSuggestions_ProcessingErrorsItem_ProjectFile = VideoSuggestions_ProcessingErrorsItem "projectFile"

-- | Other non-video file.
pattern VideoSuggestions_ProcessingErrorsItem_NotAVideoFile :: VideoSuggestions_ProcessingErrorsItem
pattern VideoSuggestions_ProcessingErrorsItem_NotAVideoFile = VideoSuggestions_ProcessingErrorsItem "notAVideoFile"

-- | Document or text file (e.g., MS Word document).
pattern VideoSuggestions_ProcessingErrorsItem_DocFile :: VideoSuggestions_ProcessingErrorsItem
pattern VideoSuggestions_ProcessingErrorsItem_DocFile = VideoSuggestions_ProcessingErrorsItem "docFile"

-- | An archive file (e.g., a ZIP archive).
pattern VideoSuggestions_ProcessingErrorsItem_ArchiveFile :: VideoSuggestions_ProcessingErrorsItem
pattern VideoSuggestions_ProcessingErrorsItem_ArchiveFile = VideoSuggestions_ProcessingErrorsItem "archiveFile"

-- | Unsupported spatial audio layout type.
pattern VideoSuggestions_ProcessingErrorsItem_UnsupportedSpatialAudioLayout :: VideoSuggestions_ProcessingErrorsItem
pattern VideoSuggestions_ProcessingErrorsItem_UnsupportedSpatialAudioLayout = VideoSuggestions_ProcessingErrorsItem "unsupportedSpatialAudioLayout"

{-# COMPLETE
  VideoSuggestions_ProcessingErrorsItem_AudioFile,
  VideoSuggestions_ProcessingErrorsItem_ImageFile,
  VideoSuggestions_ProcessingErrorsItem_ProjectFile,
  VideoSuggestions_ProcessingErrorsItem_NotAVideoFile,
  VideoSuggestions_ProcessingErrorsItem_DocFile,
  VideoSuggestions_ProcessingErrorsItem_ArchiveFile,
  VideoSuggestions_ProcessingErrorsItem_UnsupportedSpatialAudioLayout,
  VideoSuggestions_ProcessingErrorsItem
  #-}

newtype VideoSuggestions_ProcessingHintsItem = VideoSuggestions_ProcessingHintsItem {fromVideoSuggestions_ProcessingHintsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The MP4 file is not streamable, this will slow down the processing. MOOV atom was not found at the beginning of the file.
pattern VideoSuggestions_ProcessingHintsItem_NonStreamableMov :: VideoSuggestions_ProcessingHintsItem
pattern VideoSuggestions_ProcessingHintsItem_NonStreamableMov = VideoSuggestions_ProcessingHintsItem "nonStreamableMov"

-- | Probably a better quality version of the video exists. The video has wide screen aspect ratio, but is not an HD video.
pattern VideoSuggestions_ProcessingHintsItem_SendBestQualityVideo :: VideoSuggestions_ProcessingHintsItem
pattern VideoSuggestions_ProcessingHintsItem_SendBestQualityVideo = VideoSuggestions_ProcessingHintsItem "sendBestQualityVideo"

-- | Uploaded video is spherical video.
pattern VideoSuggestions_ProcessingHintsItem_SphericalVideo :: VideoSuggestions_ProcessingHintsItem
pattern VideoSuggestions_ProcessingHintsItem_SphericalVideo = VideoSuggestions_ProcessingHintsItem "sphericalVideo"

-- | Uploaded video has spatial audio.
pattern VideoSuggestions_ProcessingHintsItem_SpatialAudio :: VideoSuggestions_ProcessingHintsItem
pattern VideoSuggestions_ProcessingHintsItem_SpatialAudio = VideoSuggestions_ProcessingHintsItem "spatialAudio"

-- | Uploaded video is VR video.
pattern VideoSuggestions_ProcessingHintsItem_VrVideo :: VideoSuggestions_ProcessingHintsItem
pattern VideoSuggestions_ProcessingHintsItem_VrVideo = VideoSuggestions_ProcessingHintsItem "vrVideo"

-- | Uploaded video is HDR video.
pattern VideoSuggestions_ProcessingHintsItem_HdrVideo :: VideoSuggestions_ProcessingHintsItem
pattern VideoSuggestions_ProcessingHintsItem_HdrVideo = VideoSuggestions_ProcessingHintsItem "hdrVideo"

{-# COMPLETE
  VideoSuggestions_ProcessingHintsItem_NonStreamableMov,
  VideoSuggestions_ProcessingHintsItem_SendBestQualityVideo,
  VideoSuggestions_ProcessingHintsItem_SphericalVideo,
  VideoSuggestions_ProcessingHintsItem_SpatialAudio,
  VideoSuggestions_ProcessingHintsItem_VrVideo,
  VideoSuggestions_ProcessingHintsItem_HdrVideo,
  VideoSuggestions_ProcessingHintsItem
  #-}

newtype VideoSuggestions_ProcessingWarningsItem = VideoSuggestions_ProcessingWarningsItem {fromVideoSuggestions_ProcessingWarningsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unrecognized file format, transcoding is likely to fail.
pattern VideoSuggestions_ProcessingWarningsItem_UnknownContainer :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_UnknownContainer = VideoSuggestions_ProcessingWarningsItem "unknownContainer"

-- | Unrecognized video codec, transcoding is likely to fail.
pattern VideoSuggestions_ProcessingWarningsItem_UnknownVideoCodec :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_UnknownVideoCodec = VideoSuggestions_ProcessingWarningsItem "unknownVideoCodec"

-- | Unrecognized audio codec, transcoding is likely to fail.
pattern VideoSuggestions_ProcessingWarningsItem_UnknownAudioCodec :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_UnknownAudioCodec = VideoSuggestions_ProcessingWarningsItem "unknownAudioCodec"

-- | Conflicting container and stream resolutions.
pattern VideoSuggestions_ProcessingWarningsItem_InconsistentResolution :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_InconsistentResolution = VideoSuggestions_ProcessingWarningsItem "inconsistentResolution"

-- | Edit lists are not currently supported.
pattern VideoSuggestions_ProcessingWarningsItem_HasEditlist :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_HasEditlist = VideoSuggestions_ProcessingWarningsItem "hasEditlist"

-- | Video codec that is known to cause problems was used.
pattern VideoSuggestions_ProcessingWarningsItem_ProblematicVideoCodec :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_ProblematicVideoCodec = VideoSuggestions_ProcessingWarningsItem "problematicVideoCodec"

-- | Audio codec that is known to cause problems was used.
pattern VideoSuggestions_ProcessingWarningsItem_ProblematicAudioCodec :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_ProblematicAudioCodec = VideoSuggestions_ProcessingWarningsItem "problematicAudioCodec"

-- | Unsupported VR video stereo mode.
pattern VideoSuggestions_ProcessingWarningsItem_UnsupportedVrStereoMode :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_UnsupportedVrStereoMode = VideoSuggestions_ProcessingWarningsItem "unsupportedVrStereoMode"

-- | Unsupported spherical video projection type.
pattern VideoSuggestions_ProcessingWarningsItem_UnsupportedSphericalProjectionType :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_UnsupportedSphericalProjectionType = VideoSuggestions_ProcessingWarningsItem "unsupportedSphericalProjectionType"

-- | Unsupported HDR pixel format.
pattern VideoSuggestions_ProcessingWarningsItem_UnsupportedHdrPixelFormat :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_UnsupportedHdrPixelFormat = VideoSuggestions_ProcessingWarningsItem "unsupportedHdrPixelFormat"

-- | Unspecified HDR color metadata.
pattern VideoSuggestions_ProcessingWarningsItem_UnsupportedHdrColorMetadata :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_UnsupportedHdrColorMetadata = VideoSuggestions_ProcessingWarningsItem "unsupportedHdrColorMetadata"

-- | Problematic HDR lookup table attached.
pattern VideoSuggestions_ProcessingWarningsItem_ProblematicHdrLookupTable :: VideoSuggestions_ProcessingWarningsItem
pattern VideoSuggestions_ProcessingWarningsItem_ProblematicHdrLookupTable = VideoSuggestions_ProcessingWarningsItem "problematicHdrLookupTable"

{-# COMPLETE
  VideoSuggestions_ProcessingWarningsItem_UnknownContainer,
  VideoSuggestions_ProcessingWarningsItem_UnknownVideoCodec,
  VideoSuggestions_ProcessingWarningsItem_UnknownAudioCodec,
  VideoSuggestions_ProcessingWarningsItem_InconsistentResolution,
  VideoSuggestions_ProcessingWarningsItem_HasEditlist,
  VideoSuggestions_ProcessingWarningsItem_ProblematicVideoCodec,
  VideoSuggestions_ProcessingWarningsItem_ProblematicAudioCodec,
  VideoSuggestions_ProcessingWarningsItem_UnsupportedVrStereoMode,
  VideoSuggestions_ProcessingWarningsItem_UnsupportedSphericalProjectionType,
  VideoSuggestions_ProcessingWarningsItem_UnsupportedHdrPixelFormat,
  VideoSuggestions_ProcessingWarningsItem_UnsupportedHdrColorMetadata,
  VideoSuggestions_ProcessingWarningsItem_ProblematicHdrLookupTable,
  VideoSuggestions_ProcessingWarningsItem
  #-}

-- | Limits the returned comment threads to those with the specified moderation status. Not compatible with the \'id\' filter. Valid values: published, heldForReview, likelySpam.
newtype CommentThreadsListModerationStatus = CommentThreadsListModerationStatus {fromCommentThreadsListModerationStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The comment is available for public display.
pattern CommentThreadsListModerationStatus_Published :: CommentThreadsListModerationStatus
pattern CommentThreadsListModerationStatus_Published = CommentThreadsListModerationStatus "published"

-- | The comment is awaiting review by a moderator.
pattern CommentThreadsListModerationStatus_HeldForReview :: CommentThreadsListModerationStatus
pattern CommentThreadsListModerationStatus_HeldForReview = CommentThreadsListModerationStatus "heldForReview"

pattern CommentThreadsListModerationStatus_LikelySpam :: CommentThreadsListModerationStatus
pattern CommentThreadsListModerationStatus_LikelySpam = CommentThreadsListModerationStatus "likelySpam"

-- | The comment is unfit for display.
pattern CommentThreadsListModerationStatus_Rejected :: CommentThreadsListModerationStatus
pattern CommentThreadsListModerationStatus_Rejected = CommentThreadsListModerationStatus "rejected"

{-# COMPLETE
  CommentThreadsListModerationStatus_Published,
  CommentThreadsListModerationStatus_HeldForReview,
  CommentThreadsListModerationStatus_LikelySpam,
  CommentThreadsListModerationStatus_Rejected,
  CommentThreadsListModerationStatus
  #-}

newtype CommentThreadsListOrder = CommentThreadsListOrder {fromCommentThreadsListOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CommentThreadsListOrder_OrderUnspecified :: CommentThreadsListOrder
pattern CommentThreadsListOrder_OrderUnspecified = CommentThreadsListOrder "orderUnspecified"

-- | Order by time.
pattern CommentThreadsListOrder_Time :: CommentThreadsListOrder
pattern CommentThreadsListOrder_Time = CommentThreadsListOrder "time"

-- | Order by relevance.
pattern CommentThreadsListOrder_Relevance :: CommentThreadsListOrder
pattern CommentThreadsListOrder_Relevance = CommentThreadsListOrder "relevance"

{-# COMPLETE
  CommentThreadsListOrder_OrderUnspecified,
  CommentThreadsListOrder_Time,
  CommentThreadsListOrder_Relevance,
  CommentThreadsListOrder
  #-}

-- | The requested text format for the returned comments.
newtype CommentThreadsListTextFormat = CommentThreadsListTextFormat {fromCommentThreadsListTextFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CommentThreadsListTextFormat_TextFormatUnspecified :: CommentThreadsListTextFormat
pattern CommentThreadsListTextFormat_TextFormatUnspecified = CommentThreadsListTextFormat "textFormatUnspecified"

-- | Returns the comments in HTML format. This is the default value.
pattern CommentThreadsListTextFormat_Html :: CommentThreadsListTextFormat
pattern CommentThreadsListTextFormat_Html = CommentThreadsListTextFormat "html"

-- | Returns the comments in plain text format.
pattern CommentThreadsListTextFormat_PlainText :: CommentThreadsListTextFormat
pattern CommentThreadsListTextFormat_PlainText = CommentThreadsListTextFormat "plainText"

{-# COMPLETE
  CommentThreadsListTextFormat_TextFormatUnspecified,
  CommentThreadsListTextFormat_Html,
  CommentThreadsListTextFormat_PlainText,
  CommentThreadsListTextFormat
  #-}

-- | The requested text format for the returned comments.
newtype CommentsListTextFormat = CommentsListTextFormat {fromCommentsListTextFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CommentsListTextFormat_TextFormatUnspecified :: CommentsListTextFormat
pattern CommentsListTextFormat_TextFormatUnspecified = CommentsListTextFormat "textFormatUnspecified"

-- | Returns the comments in HTML format. This is the default value.
pattern CommentsListTextFormat_Html :: CommentsListTextFormat
pattern CommentsListTextFormat_Html = CommentsListTextFormat "html"

-- | Returns the comments in plain text format.
pattern CommentsListTextFormat_PlainText :: CommentsListTextFormat
pattern CommentsListTextFormat_PlainText = CommentsListTextFormat "plainText"

{-# COMPLETE
  CommentsListTextFormat_TextFormatUnspecified,
  CommentsListTextFormat_Html,
  CommentsListTextFormat_PlainText,
  CommentsListTextFormat
  #-}

-- | Specifies the requested moderation status. Note, comments can be in statuses, which are not available through this call. For example, this call does not allow to mark a comment as \'likely spam\'. Valid values: \'heldForReview\', \'published\' or \'rejected\'.
newtype CommentsSetModerationStatusModerationStatus = CommentsSetModerationStatusModerationStatus {fromCommentsSetModerationStatusModerationStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The comment is available for public display.
pattern CommentsSetModerationStatusModerationStatus_Published :: CommentsSetModerationStatusModerationStatus
pattern CommentsSetModerationStatusModerationStatus_Published = CommentsSetModerationStatusModerationStatus "published"

-- | The comment is awaiting review by a moderator.
pattern CommentsSetModerationStatusModerationStatus_HeldForReview :: CommentsSetModerationStatusModerationStatus
pattern CommentsSetModerationStatusModerationStatus_HeldForReview = CommentsSetModerationStatusModerationStatus "heldForReview"

pattern CommentsSetModerationStatusModerationStatus_LikelySpam :: CommentsSetModerationStatusModerationStatus
pattern CommentsSetModerationStatusModerationStatus_LikelySpam = CommentsSetModerationStatusModerationStatus "likelySpam"

-- | The comment is unfit for display.
pattern CommentsSetModerationStatusModerationStatus_Rejected :: CommentsSetModerationStatusModerationStatus
pattern CommentsSetModerationStatusModerationStatus_Rejected = CommentsSetModerationStatusModerationStatus "rejected"

{-# COMPLETE
  CommentsSetModerationStatusModerationStatus_Published,
  CommentsSetModerationStatusModerationStatus_HeldForReview,
  CommentsSetModerationStatusModerationStatus_LikelySpam,
  CommentsSetModerationStatusModerationStatus_Rejected,
  CommentsSetModerationStatusModerationStatus
  #-}

-- | Return broadcasts with a certain status, e.g. active broadcasts.
newtype LiveBroadcastsListBroadcastStatus = LiveBroadcastsListBroadcastStatus {fromLiveBroadcastsListBroadcastStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastsListBroadcastStatus_BroadcastStatusFilterUnspecified :: LiveBroadcastsListBroadcastStatus
pattern LiveBroadcastsListBroadcastStatus_BroadcastStatusFilterUnspecified = LiveBroadcastsListBroadcastStatus "broadcastStatusFilterUnspecified"

-- | Return all broadcasts.
pattern LiveBroadcastsListBroadcastStatus_All :: LiveBroadcastsListBroadcastStatus
pattern LiveBroadcastsListBroadcastStatus_All = LiveBroadcastsListBroadcastStatus "all"

-- | Return current live broadcasts.
pattern LiveBroadcastsListBroadcastStatus_Active :: LiveBroadcastsListBroadcastStatus
pattern LiveBroadcastsListBroadcastStatus_Active = LiveBroadcastsListBroadcastStatus "active"

-- | Return broadcasts that have not yet started.
pattern LiveBroadcastsListBroadcastStatus_Upcoming :: LiveBroadcastsListBroadcastStatus
pattern LiveBroadcastsListBroadcastStatus_Upcoming = LiveBroadcastsListBroadcastStatus "upcoming"

-- | Return broadcasts that have already ended.
pattern LiveBroadcastsListBroadcastStatus_Completed :: LiveBroadcastsListBroadcastStatus
pattern LiveBroadcastsListBroadcastStatus_Completed = LiveBroadcastsListBroadcastStatus "completed"

{-# COMPLETE
  LiveBroadcastsListBroadcastStatus_BroadcastStatusFilterUnspecified,
  LiveBroadcastsListBroadcastStatus_All,
  LiveBroadcastsListBroadcastStatus_Active,
  LiveBroadcastsListBroadcastStatus_Upcoming,
  LiveBroadcastsListBroadcastStatus_Completed,
  LiveBroadcastsListBroadcastStatus
  #-}

-- | Return only broadcasts with the selected type.
newtype LiveBroadcastsListBroadcastType = LiveBroadcastsListBroadcastType {fromLiveBroadcastsListBroadcastType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastsListBroadcastType_BroadcastTypeFilterUnspecified :: LiveBroadcastsListBroadcastType
pattern LiveBroadcastsListBroadcastType_BroadcastTypeFilterUnspecified = LiveBroadcastsListBroadcastType "broadcastTypeFilterUnspecified"

-- | Return all broadcasts.
pattern LiveBroadcastsListBroadcastType_All :: LiveBroadcastsListBroadcastType
pattern LiveBroadcastsListBroadcastType_All = LiveBroadcastsListBroadcastType "all"

-- | Return only scheduled event broadcasts.
pattern LiveBroadcastsListBroadcastType_Event :: LiveBroadcastsListBroadcastType
pattern LiveBroadcastsListBroadcastType_Event = LiveBroadcastsListBroadcastType "event"

-- | Return only persistent broadcasts.
pattern LiveBroadcastsListBroadcastType_Persistent :: LiveBroadcastsListBroadcastType
pattern LiveBroadcastsListBroadcastType_Persistent = LiveBroadcastsListBroadcastType "persistent"

{-# COMPLETE
  LiveBroadcastsListBroadcastType_BroadcastTypeFilterUnspecified,
  LiveBroadcastsListBroadcastType_All,
  LiveBroadcastsListBroadcastType_Event,
  LiveBroadcastsListBroadcastType_Persistent,
  LiveBroadcastsListBroadcastType
  #-}

-- | The status to which the broadcast is going to transition.
newtype LiveBroadcastsTransitionBroadcastStatus = LiveBroadcastsTransitionBroadcastStatus {fromLiveBroadcastsTransitionBroadcastStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern LiveBroadcastsTransitionBroadcastStatus_StatusUnspecified :: LiveBroadcastsTransitionBroadcastStatus
pattern LiveBroadcastsTransitionBroadcastStatus_StatusUnspecified = LiveBroadcastsTransitionBroadcastStatus "statusUnspecified"

-- | Start testing the broadcast. YouTube transmits video to the broadcast\'s monitor stream. Note that you can only transition a broadcast to the testing state if its contentDetails.monitorStream.enableMonitorStream property is set to true.\",
pattern LiveBroadcastsTransitionBroadcastStatus_Testing :: LiveBroadcastsTransitionBroadcastStatus
pattern LiveBroadcastsTransitionBroadcastStatus_Testing = LiveBroadcastsTransitionBroadcastStatus "testing"

-- | Return only persistent broadcasts.
pattern LiveBroadcastsTransitionBroadcastStatus_Live :: LiveBroadcastsTransitionBroadcastStatus
pattern LiveBroadcastsTransitionBroadcastStatus_Live = LiveBroadcastsTransitionBroadcastStatus "live"

-- | The broadcast is over. YouTube stops transmitting video.
pattern LiveBroadcastsTransitionBroadcastStatus_Complete :: LiveBroadcastsTransitionBroadcastStatus
pattern LiveBroadcastsTransitionBroadcastStatus_Complete = LiveBroadcastsTransitionBroadcastStatus "complete"

{-# COMPLETE
  LiveBroadcastsTransitionBroadcastStatus_StatusUnspecified,
  LiveBroadcastsTransitionBroadcastStatus_Testing,
  LiveBroadcastsTransitionBroadcastStatus_Live,
  LiveBroadcastsTransitionBroadcastStatus_Complete,
  LiveBroadcastsTransitionBroadcastStatus
  #-}

-- | The status to which the chat event is going to transition.
newtype LiveChatMessagesTransitionStatus = LiveChatMessagesTransitionStatus {fromLiveChatMessagesTransitionStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default unknown enum value.
pattern LiveChatMessagesTransitionStatus_StatusUnspecified :: LiveChatMessagesTransitionStatus
pattern LiveChatMessagesTransitionStatus_StatusUnspecified = LiveChatMessagesTransitionStatus "statusUnspecified"

-- | The durable chat event is over.
pattern LiveChatMessagesTransitionStatus_Closed :: LiveChatMessagesTransitionStatus
pattern LiveChatMessagesTransitionStatus_Closed = LiveChatMessagesTransitionStatus "closed"

{-# COMPLETE
  LiveChatMessagesTransitionStatus_StatusUnspecified,
  LiveChatMessagesTransitionStatus_Closed,
  LiveChatMessagesTransitionStatus
  #-}

-- | Parameter that specifies which channel members to return.
newtype MembersListMode = MembersListMode {fromMembersListMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern MembersListMode_ListMembersModeUnknown :: MembersListMode
pattern MembersListMode_ListMembersModeUnknown = MembersListMode "listMembersModeUnknown"

-- | Return only members that joined after the first call with this mode was made.
pattern MembersListMode_Updates :: MembersListMode
pattern MembersListMode_Updates = MembersListMode "updates"

-- | Return all current members, from newest to oldest.
pattern MembersListMode_AllCurrent :: MembersListMode
pattern MembersListMode_AllCurrent = MembersListMode "all_current"

{-# COMPLETE
  MembersListMode_ListMembersModeUnknown,
  MembersListMode_Updates,
  MembersListMode_AllCurrent,
  MembersListMode
  #-}

-- | Add a filter on the channel search.
newtype SearchListChannelType = SearchListChannelType {fromSearchListChannelType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListChannelType_ChannelTypeUnspecified :: SearchListChannelType
pattern SearchListChannelType_ChannelTypeUnspecified = SearchListChannelType "channelTypeUnspecified"

-- | Return all channels.
pattern SearchListChannelType_Any :: SearchListChannelType
pattern SearchListChannelType_Any = SearchListChannelType "any"

-- | Only retrieve shows.
pattern SearchListChannelType_Show :: SearchListChannelType
pattern SearchListChannelType_Show = SearchListChannelType "show"

{-# COMPLETE
  SearchListChannelType_ChannelTypeUnspecified,
  SearchListChannelType_Any,
  SearchListChannelType_Show,
  SearchListChannelType
  #-}

-- | Filter on the livestream status of the videos.
newtype SearchListEventType = SearchListEventType {fromSearchListEventType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListEventType_None :: SearchListEventType
pattern SearchListEventType_None = SearchListEventType "none"

-- | The live broadcast is upcoming.
pattern SearchListEventType_Upcoming :: SearchListEventType
pattern SearchListEventType_Upcoming = SearchListEventType "upcoming"

-- | The live broadcast is active.
pattern SearchListEventType_Live :: SearchListEventType
pattern SearchListEventType_Live = SearchListEventType "live"

-- | The live broadcast has been completed.
pattern SearchListEventType_Completed :: SearchListEventType
pattern SearchListEventType_Completed = SearchListEventType "completed"

{-# COMPLETE
  SearchListEventType_None,
  SearchListEventType_Upcoming,
  SearchListEventType_Live,
  SearchListEventType_Completed,
  SearchListEventType
  #-}

-- | Sort order of the results.
newtype SearchListOrder = SearchListOrder {fromSearchListOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListOrder_SearchSortUnspecified :: SearchListOrder
pattern SearchListOrder_SearchSortUnspecified = SearchListOrder "searchSortUnspecified"

-- | Resources are sorted in reverse chronological order based on the date they were created.
pattern SearchListOrder_Date :: SearchListOrder
pattern SearchListOrder_Date = SearchListOrder "date"

-- | Resources are sorted from highest to lowest rating.
pattern SearchListOrder_Rating :: SearchListOrder
pattern SearchListOrder_Rating = SearchListOrder "rating"

-- | Resources are sorted from highest to lowest number of views.
pattern SearchListOrder_ViewCount :: SearchListOrder
pattern SearchListOrder_ViewCount = SearchListOrder "viewCount"

-- | Resources are sorted based on their relevance to the search query. This is the default value for this parameter.
pattern SearchListOrder_Relevance :: SearchListOrder
pattern SearchListOrder_Relevance = SearchListOrder "relevance"

-- | Resources are sorted alphabetically by title.
pattern SearchListOrder_Title :: SearchListOrder
pattern SearchListOrder_Title = SearchListOrder "title"

-- | Channels are sorted in descending order of their number of uploaded videos.
pattern SearchListOrder_VideoCount :: SearchListOrder
pattern SearchListOrder_VideoCount = SearchListOrder "videoCount"

{-# COMPLETE
  SearchListOrder_SearchSortUnspecified,
  SearchListOrder_Date,
  SearchListOrder_Rating,
  SearchListOrder_ViewCount,
  SearchListOrder_Relevance,
  SearchListOrder_Title,
  SearchListOrder_VideoCount,
  SearchListOrder
  #-}

-- | Indicates whether the search results should include restricted content as well as standard content.
newtype SearchListSafeSearch = SearchListSafeSearch {fromSearchListSafeSearch :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListSafeSearch_SafeSearchSettingUnspecified :: SearchListSafeSearch
pattern SearchListSafeSearch_SafeSearchSettingUnspecified = SearchListSafeSearch "safeSearchSettingUnspecified"

-- | YouTube will not filter the search result set.
pattern SearchListSafeSearch_None :: SearchListSafeSearch
pattern SearchListSafeSearch_None = SearchListSafeSearch "none"

-- | YouTube will filter some content from search results and, at the least, will filter content that is restricted in your locale. Based on their content, search results could be removed from search results or demoted in search results. This is the default parameter value.
pattern SearchListSafeSearch_Moderate :: SearchListSafeSearch
pattern SearchListSafeSearch_Moderate = SearchListSafeSearch "moderate"

-- | YouTube will try to exclude all restricted content from the search result set. Based on their content, search results could be removed from search results or demoted in search results.
pattern SearchListSafeSearch_Strict :: SearchListSafeSearch
pattern SearchListSafeSearch_Strict = SearchListSafeSearch "strict"

{-# COMPLETE
  SearchListSafeSearch_SafeSearchSettingUnspecified,
  SearchListSafeSearch_None,
  SearchListSafeSearch_Moderate,
  SearchListSafeSearch_Strict,
  SearchListSafeSearch
  #-}

-- | Filter on the presence of captions on the videos.
newtype SearchListVideoCaption = SearchListVideoCaption {fromSearchListVideoCaption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListVideoCaption_VideoCaptionUnspecified :: SearchListVideoCaption
pattern SearchListVideoCaption_VideoCaptionUnspecified = SearchListVideoCaption "videoCaptionUnspecified"

-- | Do not filter results based on caption availability.
pattern SearchListVideoCaption_Any :: SearchListVideoCaption
pattern SearchListVideoCaption_Any = SearchListVideoCaption "any"

-- | Only include videos that have captions.
pattern SearchListVideoCaption_ClosedCaption :: SearchListVideoCaption
pattern SearchListVideoCaption_ClosedCaption = SearchListVideoCaption "closedCaption"

-- | Only include videos that do not have captions.
pattern SearchListVideoCaption_None :: SearchListVideoCaption
pattern SearchListVideoCaption_None = SearchListVideoCaption "none"

{-# COMPLETE
  SearchListVideoCaption_VideoCaptionUnspecified,
  SearchListVideoCaption_Any,
  SearchListVideoCaption_ClosedCaption,
  SearchListVideoCaption_None,
  SearchListVideoCaption
  #-}

-- | Filter on the definition of the videos.
newtype SearchListVideoDefinition = SearchListVideoDefinition {fromSearchListVideoDefinition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Return all videos, regardless of their resolution.
pattern SearchListVideoDefinition_Any :: SearchListVideoDefinition
pattern SearchListVideoDefinition_Any = SearchListVideoDefinition "any"

-- | Only retrieve videos in standard definition.
pattern SearchListVideoDefinition_Standard :: SearchListVideoDefinition
pattern SearchListVideoDefinition_Standard = SearchListVideoDefinition "standard"

-- | Only retrieve HD videos.
pattern SearchListVideoDefinition_High :: SearchListVideoDefinition
pattern SearchListVideoDefinition_High = SearchListVideoDefinition "high"

{-# COMPLETE
  SearchListVideoDefinition_Any,
  SearchListVideoDefinition_Standard,
  SearchListVideoDefinition_High,
  SearchListVideoDefinition
  #-}

-- | Filter on 3d videos.
newtype SearchListVideoDimension = SearchListVideoDimension {fromSearchListVideoDimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Include both 3D and non-3D videos in returned results. This is the default value.
pattern SearchListVideoDimension_Any :: SearchListVideoDimension
pattern SearchListVideoDimension_Any = SearchListVideoDimension "any"

-- | Restrict search results to exclude 3D videos.
pattern SearchListVideoDimension_2D :: SearchListVideoDimension
pattern SearchListVideoDimension_2D = SearchListVideoDimension "2d"

-- | Restrict search results to only include 3D videos.
pattern SearchListVideoDimension_3D :: SearchListVideoDimension
pattern SearchListVideoDimension_3D = SearchListVideoDimension "3d"

{-# COMPLETE
  SearchListVideoDimension_Any,
  SearchListVideoDimension_2D,
  SearchListVideoDimension_3D,
  SearchListVideoDimension
  #-}

-- | Filter on the duration of the videos.
newtype SearchListVideoDuration = SearchListVideoDuration {fromSearchListVideoDuration :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListVideoDuration_VideoDurationUnspecified :: SearchListVideoDuration
pattern SearchListVideoDuration_VideoDurationUnspecified = SearchListVideoDuration "videoDurationUnspecified"

-- | Do not filter video search results based on their duration. This is the default value.
pattern SearchListVideoDuration_Any :: SearchListVideoDuration
pattern SearchListVideoDuration_Any = SearchListVideoDuration "any"

-- | Only include videos that are less than four minutes long.
pattern SearchListVideoDuration_Short :: SearchListVideoDuration
pattern SearchListVideoDuration_Short = SearchListVideoDuration "short"

-- | Only include videos that are between four and 20 minutes long (inclusive).
pattern SearchListVideoDuration_Medium :: SearchListVideoDuration
pattern SearchListVideoDuration_Medium = SearchListVideoDuration "medium"

-- | Only include videos longer than 20 minutes.
pattern SearchListVideoDuration_Long :: SearchListVideoDuration
pattern SearchListVideoDuration_Long = SearchListVideoDuration "long"

{-# COMPLETE
  SearchListVideoDuration_VideoDurationUnspecified,
  SearchListVideoDuration_Any,
  SearchListVideoDuration_Short,
  SearchListVideoDuration_Medium,
  SearchListVideoDuration_Long,
  SearchListVideoDuration
  #-}

-- | Filter on embeddable videos.
newtype SearchListVideoEmbeddable = SearchListVideoEmbeddable {fromSearchListVideoEmbeddable :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListVideoEmbeddable_VideoEmbeddableUnspecified :: SearchListVideoEmbeddable
pattern SearchListVideoEmbeddable_VideoEmbeddableUnspecified = SearchListVideoEmbeddable "videoEmbeddableUnspecified"

-- | Return all videos, embeddable or not.
pattern SearchListVideoEmbeddable_Any :: SearchListVideoEmbeddable
pattern SearchListVideoEmbeddable_Any = SearchListVideoEmbeddable "any"

-- | Only retrieve embeddable videos.
pattern SearchListVideoEmbeddable_True' :: SearchListVideoEmbeddable
pattern SearchListVideoEmbeddable_True' = SearchListVideoEmbeddable "true"

{-# COMPLETE
  SearchListVideoEmbeddable_VideoEmbeddableUnspecified,
  SearchListVideoEmbeddable_Any,
  SearchListVideoEmbeddable_True',
  SearchListVideoEmbeddable
  #-}

-- | Filter on the license of the videos.
newtype SearchListVideoLicense = SearchListVideoLicense {fromSearchListVideoLicense :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Return all videos, regardless of which license they have, that match the query parameters.
pattern SearchListVideoLicense_Any :: SearchListVideoLicense
pattern SearchListVideoLicense_Any = SearchListVideoLicense "any"

-- | Only return videos that have the standard YouTube license.
pattern SearchListVideoLicense_Youtube :: SearchListVideoLicense
pattern SearchListVideoLicense_Youtube = SearchListVideoLicense "youtube"

-- | Only return videos that have a Creative Commons license. Users can reuse videos with this license in other videos that they create. Learn more.
pattern SearchListVideoLicense_CreativeCommon :: SearchListVideoLicense
pattern SearchListVideoLicense_CreativeCommon = SearchListVideoLicense "creativeCommon"

{-# COMPLETE
  SearchListVideoLicense_Any,
  SearchListVideoLicense_Youtube,
  SearchListVideoLicense_CreativeCommon,
  SearchListVideoLicense
  #-}

newtype SearchListVideoPaidProductPlacement = SearchListVideoPaidProductPlacement {fromSearchListVideoPaidProductPlacement :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListVideoPaidProductPlacement_VideoPaidProductPlacementUnspecified :: SearchListVideoPaidProductPlacement
pattern SearchListVideoPaidProductPlacement_VideoPaidProductPlacementUnspecified = SearchListVideoPaidProductPlacement "videoPaidProductPlacementUnspecified"

-- | Return all videos, paid product placement or not.
pattern SearchListVideoPaidProductPlacement_Any :: SearchListVideoPaidProductPlacement
pattern SearchListVideoPaidProductPlacement_Any = SearchListVideoPaidProductPlacement "any"

-- | Restrict results to only videos with paid product placement.
pattern SearchListVideoPaidProductPlacement_True' :: SearchListVideoPaidProductPlacement
pattern SearchListVideoPaidProductPlacement_True' = SearchListVideoPaidProductPlacement "true"

{-# COMPLETE
  SearchListVideoPaidProductPlacement_VideoPaidProductPlacementUnspecified,
  SearchListVideoPaidProductPlacement_Any,
  SearchListVideoPaidProductPlacement_True',
  SearchListVideoPaidProductPlacement
  #-}

-- | Filter on syndicated videos.
newtype SearchListVideoSyndicated = SearchListVideoSyndicated {fromSearchListVideoSyndicated :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListVideoSyndicated_VideoSyndicatedUnspecified :: SearchListVideoSyndicated
pattern SearchListVideoSyndicated_VideoSyndicatedUnspecified = SearchListVideoSyndicated "videoSyndicatedUnspecified"

-- | Return all videos, syndicated or not.
pattern SearchListVideoSyndicated_Any :: SearchListVideoSyndicated
pattern SearchListVideoSyndicated_Any = SearchListVideoSyndicated "any"

-- | Only retrieve syndicated videos.
pattern SearchListVideoSyndicated_True' :: SearchListVideoSyndicated
pattern SearchListVideoSyndicated_True' = SearchListVideoSyndicated "true"

{-# COMPLETE
  SearchListVideoSyndicated_VideoSyndicatedUnspecified,
  SearchListVideoSyndicated_Any,
  SearchListVideoSyndicated_True',
  SearchListVideoSyndicated
  #-}

-- | Filter on videos of a specific type.
newtype SearchListVideoType = SearchListVideoType {fromSearchListVideoType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SearchListVideoType_VideoTypeUnspecified :: SearchListVideoType
pattern SearchListVideoType_VideoTypeUnspecified = SearchListVideoType "videoTypeUnspecified"

-- | Return all videos.
pattern SearchListVideoType_Any :: SearchListVideoType
pattern SearchListVideoType_Any = SearchListVideoType "any"

-- | Only retrieve movies.
pattern SearchListVideoType_Movie :: SearchListVideoType
pattern SearchListVideoType_Movie = SearchListVideoType "movie"

-- | Only retrieve episodes of shows.
pattern SearchListVideoType_Episode :: SearchListVideoType
pattern SearchListVideoType_Episode = SearchListVideoType "episode"

{-# COMPLETE
  SearchListVideoType_VideoTypeUnspecified,
  SearchListVideoType_Any,
  SearchListVideoType_Movie,
  SearchListVideoType_Episode,
  SearchListVideoType
  #-}

-- | The order of the returned subscriptions
newtype SubscriptionsListOrder = SubscriptionsListOrder {fromSubscriptionsListOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern SubscriptionsListOrder_SubscriptionOrderUnspecified :: SubscriptionsListOrder
pattern SubscriptionsListOrder_SubscriptionOrderUnspecified = SubscriptionsListOrder "subscriptionOrderUnspecified"

-- | Sort by relevance.
pattern SubscriptionsListOrder_Relevance :: SubscriptionsListOrder
pattern SubscriptionsListOrder_Relevance = SubscriptionsListOrder "relevance"

-- | Sort by order of activity.
pattern SubscriptionsListOrder_Unread :: SubscriptionsListOrder
pattern SubscriptionsListOrder_Unread = SubscriptionsListOrder "unread"

-- | Sort alphabetically.
pattern SubscriptionsListOrder_Alphabetical :: SubscriptionsListOrder
pattern SubscriptionsListOrder_Alphabetical = SubscriptionsListOrder "alphabetical"

{-# COMPLETE
  SubscriptionsListOrder_SubscriptionOrderUnspecified,
  SubscriptionsListOrder_Relevance,
  SubscriptionsListOrder_Unread,
  SubscriptionsListOrder_Alphabetical,
  SubscriptionsListOrder
  #-}

-- | Type of the link to be deleted.
newtype ThirdPartyLinksDeleteType = ThirdPartyLinksDeleteType {fromThirdPartyLinksDeleteType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ThirdPartyLinksDeleteType_LinkUnspecified :: ThirdPartyLinksDeleteType
pattern ThirdPartyLinksDeleteType_LinkUnspecified = ThirdPartyLinksDeleteType "linkUnspecified"

-- | A link that is connecting (or about to connect) a channel with a store on a merchandising platform in order to enable retail commerce capabilities for that channel on YouTube.
pattern ThirdPartyLinksDeleteType_ChannelToStoreLink :: ThirdPartyLinksDeleteType
pattern ThirdPartyLinksDeleteType_ChannelToStoreLink = ThirdPartyLinksDeleteType "channelToStoreLink"

{-# COMPLETE
  ThirdPartyLinksDeleteType_LinkUnspecified,
  ThirdPartyLinksDeleteType_ChannelToStoreLink,
  ThirdPartyLinksDeleteType
  #-}

-- | Get a third party link of the given type.
newtype ThirdPartyLinksListType = ThirdPartyLinksListType {fromThirdPartyLinksListType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern ThirdPartyLinksListType_LinkUnspecified :: ThirdPartyLinksListType
pattern ThirdPartyLinksListType_LinkUnspecified = ThirdPartyLinksListType "linkUnspecified"

-- | A link that is connecting (or about to connect) a channel with a store on a merchandising platform in order to enable retail commerce capabilities for that channel on YouTube.
pattern ThirdPartyLinksListType_ChannelToStoreLink :: ThirdPartyLinksListType
pattern ThirdPartyLinksListType_ChannelToStoreLink = ThirdPartyLinksListType "channelToStoreLink"

{-# COMPLETE
  ThirdPartyLinksListType_LinkUnspecified,
  ThirdPartyLinksListType_ChannelToStoreLink,
  ThirdPartyLinksListType
  #-}

-- | Return the videos that are in the specified chart.
newtype VideosListChart = VideosListChart {fromVideosListChart :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideosListChart_ChartUnspecified :: VideosListChart
pattern VideosListChart_ChartUnspecified = VideosListChart "chartUnspecified"

-- | Return the most popular videos for the specified content region and video category.
pattern VideosListChart_MostPopular :: VideosListChart
pattern VideosListChart_MostPopular = VideosListChart "mostPopular"

{-# COMPLETE
  VideosListChart_ChartUnspecified,
  VideosListChart_MostPopular,
  VideosListChart
  #-}

-- | Return videos liked\/disliked by the authenticated user. Does not support RateType.RATED/TYPE/NONE.
newtype VideosListMyRating = VideosListMyRating {fromVideosListMyRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideosListMyRating_None :: VideosListMyRating
pattern VideosListMyRating_None = VideosListMyRating "none"

-- | The entity is liked.
pattern VideosListMyRating_Like :: VideosListMyRating
pattern VideosListMyRating_Like = VideosListMyRating "like"

-- | The entity is disliked.
pattern VideosListMyRating_Dislike :: VideosListMyRating
pattern VideosListMyRating_Dislike = VideosListMyRating "dislike"

{-# COMPLETE
  VideosListMyRating_None,
  VideosListMyRating_Like,
  VideosListMyRating_Dislike,
  VideosListMyRating
  #-}

newtype VideosRateRating = VideosRateRating {fromVideosRateRating :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VideosRateRating_None :: VideosRateRating
pattern VideosRateRating_None = VideosRateRating "none"

-- | The entity is liked.
pattern VideosRateRating_Like :: VideosRateRating
pattern VideosRateRating_Like = VideosRateRating "like"

-- | The entity is disliked.
pattern VideosRateRating_Dislike :: VideosRateRating
pattern VideosRateRating_Dislike = VideosRateRating "dislike"

{-# COMPLETE
  VideosRateRating_None,
  VideosRateRating_Like,
  VideosRateRating_Dislike,
  VideosRateRating
  #-}
