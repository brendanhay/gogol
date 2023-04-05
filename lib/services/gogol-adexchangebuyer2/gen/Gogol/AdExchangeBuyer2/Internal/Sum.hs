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
-- Module      : Gogol.AdExchangeBuyer2.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdExchangeBuyer2.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AdSize_SizeType
    AdSize_SizeType
      ( AdSize_SizeType_SIZETYPEUNSPECIFIED,
        AdSize_SizeType_Pixel,
        AdSize_SizeType_Interstitial,
        AdSize_SizeType_Native,
        AdSize_SizeType_Fluid,
        ..
      ),

    -- * AppContext_AppTypesItem
    AppContext_AppTypesItem
      ( AppContext_AppTypesItem_Native,
        AppContext_AppTypesItem_Web,
        ..
      ),

    -- * AuctionContext_AuctionTypesItem
    AuctionContext_AuctionTypesItem
      ( AuctionContext_AuctionTypesItem_OPENAUCTION,
        AuctionContext_AuctionTypesItem_DIRECTDEALS,
        ..
      ),

    -- * BidResponseWithoutBidsStatusRow_Status
    BidResponseWithoutBidsStatusRow_Status
      ( BidResponseWithoutBidsStatusRow_Status_STATUSUNSPECIFIED,
        BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDS,
        BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDSFORACCOUNT,
        BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDSFORDEAL,
        ..
      ),

    -- * Client_EntityType
    Client_EntityType
      ( Client_EntityType_ENTITYTYPEUNSPECIFIED,
        Client_EntityType_Advertiser,
        Client_EntityType_Brand,
        Client_EntityType_Agency,
        Client_EntityType_ENTITYTYPEUNCLASSIFIED,
        ..
      ),

    -- * Client_Role
    Client_Role
      ( Client_Role_CLIENTROLEUNSPECIFIED,
        Client_Role_CLIENTDEALVIEWER,
        Client_Role_CLIENTDEALNEGOTIATOR,
        Client_Role_CLIENTDEALAPPROVER,
        ..
      ),

    -- * Client_Status
    Client_Status
      ( Client_Status_CLIENTSTATUSUNSPECIFIED,
        Client_Status_Disabled,
        Client_Status_Active,
        ..
      ),

    -- * ClientUser_Status
    ClientUser_Status
      ( ClientUser_Status_USERSTATUSUNSPECIFIED,
        ClientUser_Status_Pending,
        ClientUser_Status_Active,
        ClientUser_Status_Disabled,
        ..
      ),

    -- * Correction_Type
    Correction_Type
      ( Correction_Type_CORRECTIONTYPEUNSPECIFIED,
        Correction_Type_VENDORIDSADDED,
        Correction_Type_SSLATTRIBUTEREMOVED,
        Correction_Type_FLASHFREEATTRIBUTEREMOVED,
        Correction_Type_FLASHFREEATTRIBUTEADDED,
        Correction_Type_REQUIREDATTRIBUTEADDED,
        Correction_Type_REQUIREDVENDORADDED,
        Correction_Type_SSLATTRIBUTEADDED,
        Correction_Type_INBANNERVIDEOATTRIBUTEADDED,
        Correction_Type_MRAIDATTRIBUTEADDED,
        Correction_Type_FLASHATTRIBUTEREMOVED,
        Correction_Type_VIDEOINSNIPPETATTRIBUTEADDED,
        ..
      ),

    -- * Creative_AttributesItem
    Creative_AttributesItem
      ( Creative_AttributesItem_ATTRIBUTEUNSPECIFIED,
        Creative_AttributesItem_IMAGERICHMEDIA,
        Creative_AttributesItem_ADOBEFLASHFLV,
        Creative_AttributesItem_ISTAGGED,
        Creative_AttributesItem_ISCOOKIETARGETED,
        Creative_AttributesItem_ISUSERINTERESTTARGETED,
        Creative_AttributesItem_EXPANDINGDIRECTIONNONE,
        Creative_AttributesItem_EXPANDINGDIRECTIONUP,
        Creative_AttributesItem_EXPANDINGDIRECTIONDOWN,
        Creative_AttributesItem_EXPANDINGDIRECTIONLEFT,
        Creative_AttributesItem_EXPANDINGDIRECTIONRIGHT,
        Creative_AttributesItem_EXPANDINGDIRECTIONUPLEFT,
        Creative_AttributesItem_EXPANDINGDIRECTIONUPRIGHT,
        Creative_AttributesItem_EXPANDINGDIRECTIONDOWNLEFT,
        Creative_AttributesItem_EXPANDINGDIRECTIONDOWNRIGHT,
        Creative_AttributesItem_CREATIVETYPEHTML,
        Creative_AttributesItem_CREATIVETYPEVASTVIDEO,
        Creative_AttributesItem_EXPANDINGDIRECTIONUPORDOWN,
        Creative_AttributesItem_EXPANDINGDIRECTIONLEFTORRIGHT,
        Creative_AttributesItem_EXPANDINGDIRECTIONANYDIAGONAL,
        Creative_AttributesItem_EXPANDINGACTIONROLLOVERTOEXPAND,
        Creative_AttributesItem_INSTREAMVASTVIDEOTYPEVPAIDFLASH,
        Creative_AttributesItem_RICHMEDIACAPABILITYTYPEMRAID,
        Creative_AttributesItem_RICHMEDIACAPABILITYTYPEFLASH,
        Creative_AttributesItem_RICH_MEDIA_CAPABILITY_TYPE_HTML5,
        Creative_AttributesItem_SKIPPABLEINSTREAMVIDEO,
        Creative_AttributesItem_RICHMEDIACAPABILITYTYPESSL,
        Creative_AttributesItem_RICHMEDIACAPABILITYTYPENONSSL,
        Creative_AttributesItem_RICHMEDIACAPABILITYTYPEINTERSTITIAL,
        Creative_AttributesItem_NONSKIPPABLEINSTREAMVIDEO,
        Creative_AttributesItem_NATIVEELIGIBILITYELIGIBLE,
        Creative_AttributesItem_NONVPAID,
        Creative_AttributesItem_NATIVEELIGIBILITYNOTELIGIBLE,
        Creative_AttributesItem_ANYINTERSTITIAL,
        Creative_AttributesItem_NONINTERSTITIAL,
        Creative_AttributesItem_INBANNERVIDEO,
        Creative_AttributesItem_RENDERINGSIZELESSADX,
        Creative_AttributesItem_OMSDK_1_0,
        ..
      ),

    -- * Creative_DealsStatus
    Creative_DealsStatus
      ( Creative_DealsStatus_STATUSUNSPECIFIED,
        Creative_DealsStatus_NOTCHECKED,
        Creative_DealsStatus_CONDITIONALLYAPPROVED,
        Creative_DealsStatus_Approved,
        Creative_DealsStatus_Disapproved,
        Creative_DealsStatus_PENDINGREVIEW,
        Creative_DealsStatus_STATUSTYPEUNSPECIFIED,
        ..
      ),

    -- * Creative_OpenAuctionStatus
    Creative_OpenAuctionStatus
      ( Creative_OpenAuctionStatus_STATUSUNSPECIFIED,
        Creative_OpenAuctionStatus_NOTCHECKED,
        Creative_OpenAuctionStatus_CONDITIONALLYAPPROVED,
        Creative_OpenAuctionStatus_Approved,
        Creative_OpenAuctionStatus_Disapproved,
        Creative_OpenAuctionStatus_PENDINGREVIEW,
        Creative_OpenAuctionStatus_STATUSTYPEUNSPECIFIED,
        ..
      ),

    -- * Creative_RestrictedCategoriesItem
    Creative_RestrictedCategoriesItem
      ( Creative_RestrictedCategoriesItem_NORESTRICTEDCATEGORIES,
        Creative_RestrictedCategoriesItem_Alcohol,
        ..
      ),

    -- * CreativeRestrictions_CreativeFormat
    CreativeRestrictions_CreativeFormat
      ( CreativeRestrictions_CreativeFormat_CREATIVEFORMATUNSPECIFIED,
        CreativeRestrictions_CreativeFormat_Display,
        CreativeRestrictions_CreativeFormat_Video,
        ..
      ),

    -- * CreativeRestrictions_SkippableAdType
    CreativeRestrictions_SkippableAdType
      ( CreativeRestrictions_SkippableAdType_SKIPPABLEADTYPEUNSPECIFIED,
        CreativeRestrictions_SkippableAdType_Skippable,
        CreativeRestrictions_SkippableAdType_INSTREAMSELECT,
        CreativeRestrictions_SkippableAdType_NOTSKIPPABLE,
        ..
      ),

    -- * CreativeSize_AllowedFormatsItem
    CreativeSize_AllowedFormatsItem
      ( CreativeSize_AllowedFormatsItem_Unknown,
        CreativeSize_AllowedFormatsItem_Audio,
        ..
      ),

    -- * CreativeSize_CreativeSizeType
    CreativeSize_CreativeSizeType
      ( CreativeSize_CreativeSizeType_CREATIVESIZETYPEUNSPECIFIED,
        CreativeSize_CreativeSizeType_Regular,
        CreativeSize_CreativeSizeType_Interstitial,
        CreativeSize_CreativeSizeType_Video,
        CreativeSize_CreativeSizeType_Native,
        ..
      ),

    -- * CreativeSize_NativeTemplate
    CreativeSize_NativeTemplate
      ( CreativeSize_NativeTemplate_UNKNOWNNATIVETEMPLATE,
        CreativeSize_NativeTemplate_NATIVECONTENTAD,
        CreativeSize_NativeTemplate_NATIVEAPPINSTALLAD,
        CreativeSize_NativeTemplate_NATIVEVIDEOCONTENTAD,
        CreativeSize_NativeTemplate_NATIVEVIDEOAPPINSTALLAD,
        ..
      ),

    -- * CreativeSize_SkippableAdType
    CreativeSize_SkippableAdType
      ( CreativeSize_SkippableAdType_SKIPPABLEADTYPEUNSPECIFIED,
        CreativeSize_SkippableAdType_Generic,
        CreativeSize_SkippableAdType_INSTREAMSELECT,
        CreativeSize_SkippableAdType_NOTSKIPPABLE,
        ..
      ),

    -- * DayPart_DayOfWeek
    DayPart_DayOfWeek
      ( DayPart_DayOfWeek_DAYOFWEEKUNSPECIFIED,
        DayPart_DayOfWeek_Monday,
        DayPart_DayOfWeek_Tuesday,
        DayPart_DayOfWeek_Wednesday,
        DayPart_DayOfWeek_Thursday,
        DayPart_DayOfWeek_Friday,
        DayPart_DayOfWeek_Saturday,
        DayPart_DayOfWeek_Sunday,
        ..
      ),

    -- * DayPartTargeting_TimeZoneType
    DayPartTargeting_TimeZoneType
      ( DayPartTargeting_TimeZoneType_TIMEZONESOURCEUNSPECIFIED,
        DayPartTargeting_TimeZoneType_Publisher,
        DayPartTargeting_TimeZoneType_User,
        ..
      ),

    -- * Deal_CreativePreApprovalPolicy
    Deal_CreativePreApprovalPolicy
      ( Deal_CreativePreApprovalPolicy_CREATIVEPREAPPROVALPOLICYUNSPECIFIED,
        Deal_CreativePreApprovalPolicy_SELLERPREAPPROVALREQUIRED,
        Deal_CreativePreApprovalPolicy_SELLERPREAPPROVALNOTREQUIRED,
        ..
      ),

    -- * Deal_CreativeSafeFrameCompatibility
    Deal_CreativeSafeFrameCompatibility
      ( Deal_CreativeSafeFrameCompatibility_CREATIVESAFEFRAMECOMPATIBILITYUNSPECIFIED,
        Deal_CreativeSafeFrameCompatibility_Compatible,
        Deal_CreativeSafeFrameCompatibility_Incompatible,
        ..
      ),

    -- * Deal_ProgrammaticCreativeSource
    Deal_ProgrammaticCreativeSource
      ( Deal_ProgrammaticCreativeSource_PROGRAMMATICCREATIVESOURCEUNSPECIFIED,
        Deal_ProgrammaticCreativeSource_Advertiser,
        Deal_ProgrammaticCreativeSource_Publisher,
        ..
      ),

    -- * Deal_SyndicationProduct
    Deal_SyndicationProduct
      ( Deal_SyndicationProduct_SYNDICATIONPRODUCTUNSPECIFIED,
        Deal_SyndicationProduct_Content,
        Deal_SyndicationProduct_Mobile,
        Deal_SyndicationProduct_Video,
        Deal_SyndicationProduct_Games,
        ..
      ),

    -- * DealPauseStatus_FirstPausedBy
    DealPauseStatus_FirstPausedBy
      ( DealPauseStatus_FirstPausedBy_BUYERSELLERROLEUNSPECIFIED,
        DealPauseStatus_FirstPausedBy_Buyer,
        DealPauseStatus_FirstPausedBy_Seller,
        ..
      ),

    -- * DealTerms_BrandingType
    DealTerms_BrandingType
      ( DealTerms_BrandingType_BRANDINGTYPEUNSPECIFIED,
        DealTerms_BrandingType_Branded,
        DealTerms_BrandingType_SEMITRANSPARENT,
        ..
      ),

    -- * DeliveryControl_CreativeBlockingLevel
    DeliveryControl_CreativeBlockingLevel
      ( DeliveryControl_CreativeBlockingLevel_CREATIVEBLOCKINGLEVELUNSPECIFIED,
        DeliveryControl_CreativeBlockingLevel_PUBLISHERBLOCKINGRULES,
        DeliveryControl_CreativeBlockingLevel_ADXPOLICYBLOCKINGONLY,
        ..
      ),

    -- * DeliveryControl_DeliveryRateType
    DeliveryControl_DeliveryRateType
      ( DeliveryControl_DeliveryRateType_DELIVERYRATETYPEUNSPECIFIED,
        DeliveryControl_DeliveryRateType_Evenly,
        DeliveryControl_DeliveryRateType_FRONTLOADED,
        DeliveryControl_DeliveryRateType_ASFASTASPOSSIBLE,
        ..
      ),

    -- * Disapproval_Reason
    Disapproval_Reason
      ( Disapproval_Reason_LENGTHOFIMAGEANIMATION,
        Disapproval_Reason_BROKENURL,
        Disapproval_Reason_MEDIANOTFUNCTIONAL,
        Disapproval_Reason_INVALIDFOURTHPARTYCALL,
        Disapproval_Reason_INCORRECTREMARKETINGDECLARATION,
        Disapproval_Reason_LANDINGPAGEERROR,
        Disapproval_Reason_ADSIZEDOESNOTMATCHADSLOT,
        Disapproval_Reason_NOBORDER,
        Disapproval_Reason_FOURTHPARTYBROWSERCOOKIES,
        Disapproval_Reason_LSOOBJECTS,
        Disapproval_Reason_BLANKCREATIVE,
        Disapproval_Reason_DESTINATIONURLSUNDECLARED,
        Disapproval_Reason_PROBLEMWITHCLICKMACRO,
        Disapproval_Reason_INCORRECTADTECHNOLOGYDECLARATION,
        Disapproval_Reason_INCORRECTDESTINATIONURLDECLARATION,
        Disapproval_Reason_EXPANDABLEINCORRECTDIRECTION,
        Disapproval_Reason_EXPANDABLEDIRECTIONNOTSUPPORTED,
        Disapproval_Reason_EXPANDABLEINVALIDVENDOR,
        Disapproval_Reason_EXPANDABLEFUNCTIONALITY,
        Disapproval_Reason_VIDEOINVALIDVENDOR,
        Disapproval_Reason_VIDEOUNSUPPORTEDLENGTH,
        Disapproval_Reason_VIDEOUNSUPPORTEDFORMAT,
        Disapproval_Reason_VIDEOFUNCTIONALITY,
        Disapproval_Reason_LANDINGPAGEDISABLED,
        Disapproval_Reason_MALWARESUSPECTED,
        Disapproval_Reason_ADULTIMAGEORVIDEO,
        Disapproval_Reason_INACCURATEADTEXT,
        Disapproval_Reason_COUNTERFEITDESIGNERGOODS,
        Disapproval_Reason_POPUP,
        Disapproval_Reason_INVALIDRTBPROTOCOLUSAGE,
        Disapproval_Reason_RAWIPADDRESSINSNIPPET,
        Disapproval_Reason_UNACCEPTABLECONTENTSOFTWARE,
        Disapproval_Reason_UNAUTHORIZEDCOOKIEONGOOGLEDOMAIN,
        Disapproval_Reason_UNDECLAREDFLASHOBJECTS,
        Disapproval_Reason_INVALIDSSLDECLARATION,
        Disapproval_Reason_DIRECTDOWNLOADINAD,
        Disapproval_Reason_MAXIMUMDOWNLOADSIZEEXCEEDED,
        Disapproval_Reason_DESTINATIONURLSITENOTCRAWLABLE,
        Disapproval_Reason_BADURLLEGALDISAPPROVAL,
        Disapproval_Reason_PHARMAGAMBLINGALCOHOLNOTALLOWED,
        Disapproval_Reason_DYNAMICDNSATDESTINATIONURL,
        Disapproval_Reason_POORIMAGEORVIDEOQUALITY,
        Disapproval_Reason_UNACCEPTABLEIMAGECONTENT,
        Disapproval_Reason_INCORRECTIMAGELAYOUT,
        Disapproval_Reason_IRRELEVANTIMAGEORVIDEO,
        Disapproval_Reason_DESTINATIONSITEDOESNOTALLOWGOINGBACK,
        Disapproval_Reason_MISLEADINGCLAIMSINAD,
        Disapproval_Reason_RESTRICTEDPRODUCTS,
        Disapproval_Reason_UNACCEPTABLECONTENT,
        Disapproval_Reason_AUTOMATEDADCLICKING,
        Disapproval_Reason_INVALIDURLPROTOCOL,
        Disapproval_Reason_UNDECLAREDRESTRICTEDCONTENT,
        Disapproval_Reason_INVALIDREMARKETINGLISTUSAGE,
        Disapproval_Reason_DESTINATIONSITENOTCRAWLABLEROBOTSTXT,
        Disapproval_Reason_CLICKTODOWNLOADNOTANAPP,
        Disapproval_Reason_INACCURATEREVIEWEXTENSION,
        Disapproval_Reason_SEXUALLYEXPLICITCONTENT,
        Disapproval_Reason_GAININGANUNFAIRADVANTAGE,
        Disapproval_Reason_GAMINGTHEGOOGLENETWORK,
        Disapproval_Reason_DANGEROUSPRODUCTSKNIVES,
        Disapproval_Reason_DANGEROUSPRODUCTSEXPLOSIVES,
        Disapproval_Reason_DANGEROUSPRODUCTSGUNS,
        Disapproval_Reason_DANGEROUSPRODUCTSDRUGS,
        Disapproval_Reason_DANGEROUSPRODUCTSTOBACCO,
        Disapproval_Reason_DANGEROUSPRODUCTSWEAPONS,
        Disapproval_Reason_UNCLEARORIRRELEVANTAD,
        Disapproval_Reason_PROFESSIONALSTANDARDS,
        Disapproval_Reason_DYSFUNCTIONALPROMOTION,
        Disapproval_Reason_INVALIDINTERESTBASEDAD,
        Disapproval_Reason_MISUSEOFPERSONALINFORMATION,
        Disapproval_Reason_OMISSIONOFRELEVANTINFORMATION,
        Disapproval_Reason_UNAVAILABLEPROMOTIONS,
        Disapproval_Reason_MISLEADINGPROMOTIONS,
        Disapproval_Reason_INAPPROPRIATECONTENT,
        Disapproval_Reason_SENSITIVEEVENTS,
        Disapproval_Reason_SHOCKINGCONTENT,
        Disapproval_Reason_ENABLINGDISHONESTBEHAVIOR,
        Disapproval_Reason_TECHNICALREQUIREMENTS,
        Disapproval_Reason_RESTRICTEDPOLITICALCONTENT,
        Disapproval_Reason_UNSUPPORTEDCONTENT,
        Disapproval_Reason_INVALIDBIDDINGMETHOD,
        Disapproval_Reason_VIDEOTOOLONG,
        Disapproval_Reason_VIOLATESJAPANESEPHARMACYLAW,
        Disapproval_Reason_UNACCREDITEDPETPHARMACY,
        Disapproval_Reason_Abortion,
        Disapproval_Reason_Contraceptives,
        Disapproval_Reason_NEEDCERTIFICATESTOADVERTISEINCHINA,
        Disapproval_Reason_KCDSPREGISTRATION,
        Disapproval_Reason_NOTFAMILYSAFE,
        Disapproval_Reason_CLINICALTRIALRECRUITMENT,
        Disapproval_Reason_MAXIMUMNUMBEROFHTTPCALLSEXCEEDED,
        Disapproval_Reason_MAXIMUMNUMBEROFCOOKIESEXCEEDED,
        Disapproval_Reason_PERSONALLOANS,
        Disapproval_Reason_UNSUPPORTEDFLASHCONTENT,
        Disapproval_Reason_MISUSEBYOMIDSCRIPT,
        Disapproval_Reason_NONWHITELISTEDOMIDVENDOR,
        Disapproval_Reason_DESTINATIONEXPERIENCE,
        Disapproval_Reason_UNSUPPORTEDLANGUAGE,
        Disapproval_Reason_NONSSLCOMPLIANT,
        Disapproval_Reason_TEMPORARYPAUSE,
        Disapproval_Reason_BAILBONDS,
        Disapproval_Reason_EXPERIMENTALMEDICALTREATMENT,
        ..
      ),

    -- * FilterSet_BreakdownDimensionsItem
    FilterSet_BreakdownDimensionsItem
      ( FilterSet_BreakdownDimensionsItem_BREAKDOWNDIMENSIONUNSPECIFIED,
        FilterSet_BreakdownDimensionsItem_PUBLISHERIDENTIFIER,
        ..
      ),

    -- * FilterSet_Environment
    FilterSet_Environment
      ( FilterSet_Environment_ENVIRONMENTUNSPECIFIED,
        FilterSet_Environment_Web,
        FilterSet_Environment_App,
        ..
      ),

    -- * FilterSet_Format
    FilterSet_Format
      ( FilterSet_Format_FORMATUNSPECIFIED,
        FilterSet_Format_NATIVEDISPLAY,
        FilterSet_Format_NATIVEVIDEO,
        FilterSet_Format_NONNATIVEDISPLAY,
        FilterSet_Format_NONNATIVEVIDEO,
        ..
      ),

    -- * FilterSet_FormatsItem
    FilterSet_FormatsItem
      ( FilterSet_FormatsItem_FORMATUNSPECIFIED,
        FilterSet_FormatsItem_NATIVEDISPLAY,
        FilterSet_FormatsItem_NATIVEVIDEO,
        FilterSet_FormatsItem_NONNATIVEDISPLAY,
        FilterSet_FormatsItem_NONNATIVEVIDEO,
        ..
      ),

    -- * FilterSet_PlatformsItem
    FilterSet_PlatformsItem
      ( FilterSet_PlatformsItem_PLATFORMUNSPECIFIED,
        FilterSet_PlatformsItem_Desktop,
        FilterSet_PlatformsItem_Tablet,
        FilterSet_PlatformsItem_Mobile,
        ..
      ),

    -- * FilterSet_TimeSeriesGranularity
    FilterSet_TimeSeriesGranularity
      ( FilterSet_TimeSeriesGranularity_TIMESERIESGRANULARITYUNSPECIFIED,
        FilterSet_TimeSeriesGranularity_Hourly,
        FilterSet_TimeSeriesGranularity_Daily,
        ..
      ),

    -- * FrequencyCap_TimeUnitType
    FrequencyCap_TimeUnitType
      ( FrequencyCap_TimeUnitType_TIMEUNITTYPEUNSPECIFIED,
        FrequencyCap_TimeUnitType_Minute,
        FrequencyCap_TimeUnitType_Hour,
        FrequencyCap_TimeUnitType_Day,
        FrequencyCap_TimeUnitType_Week,
        FrequencyCap_TimeUnitType_Month,
        FrequencyCap_TimeUnitType_Lifetime,
        FrequencyCap_TimeUnitType_Pod,
        FrequencyCap_TimeUnitType_Stream,
        ..
      ),

    -- * GuaranteedFixedPriceTerms_ReservationType
    GuaranteedFixedPriceTerms_ReservationType
      ( GuaranteedFixedPriceTerms_ReservationType_RESERVATIONTYPEUNSPECIFIED,
        GuaranteedFixedPriceTerms_ReservationType_Standard,
        GuaranteedFixedPriceTerms_ReservationType_Sponsorship,
        ..
      ),

    -- * ListCreativeStatusBreakdownByDetailResponse_DetailType
    ListCreativeStatusBreakdownByDetailResponse_DetailType
      ( ListCreativeStatusBreakdownByDetailResponse_DetailType_DETAILTYPEUNSPECIFIED,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_CREATIVEATTRIBUTE,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_Vendor,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_SENSITIVECATEGORY,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_PRODUCTCATEGORY,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_DISAPPROVALREASON,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_POLICYTOPIC,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_ATPVENDOR,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_VENDORDOMAIN,
        ListCreativeStatusBreakdownByDetailResponse_DetailType_GVLID,
        ..
      ),

    -- * NonBillableWinningBidStatusRow_Status
    NonBillableWinningBidStatusRow_Status
      ( NonBillableWinningBidStatusRow_Status_STATUSUNSPECIFIED,
        NonBillableWinningBidStatusRow_Status_ADNOTRENDERED,
        NonBillableWinningBidStatusRow_Status_INVALIDIMPRESSION,
        NonBillableWinningBidStatusRow_Status_FATALVASTERROR,
        NonBillableWinningBidStatusRow_Status_LOSTINMEDIATION,
        ..
      ),

    -- * Note_CreatorRole
    Note_CreatorRole
      ( Note_CreatorRole_BUYERSELLERROLEUNSPECIFIED,
        Note_CreatorRole_Buyer,
        Note_CreatorRole_Seller,
        ..
      ),

    -- * PlatformContext_PlatformsItem
    PlatformContext_PlatformsItem
      ( PlatformContext_PlatformsItem_Desktop,
        PlatformContext_PlatformsItem_Android,
        PlatformContext_PlatformsItem_Ios,
        ..
      ),

    -- * Price_PricingType
    Price_PricingType
      ( Price_PricingType_PRICINGTYPEUNSPECIFIED,
        Price_PricingType_COSTPERMILLE,
        Price_PricingType_COSTPERDAY,
        ..
      ),

    -- * Product_SyndicationProduct
    Product_SyndicationProduct
      ( Product_SyndicationProduct_SYNDICATIONPRODUCTUNSPECIFIED,
        Product_SyndicationProduct_Content,
        Product_SyndicationProduct_Mobile,
        Product_SyndicationProduct_Video,
        Product_SyndicationProduct_Games,
        ..
      ),

    -- * Proposal_LastUpdaterOrCommentorRole
    Proposal_LastUpdaterOrCommentorRole
      ( Proposal_LastUpdaterOrCommentorRole_BUYERSELLERROLEUNSPECIFIED,
        Proposal_LastUpdaterOrCommentorRole_Buyer,
        Proposal_LastUpdaterOrCommentorRole_Seller,
        ..
      ),

    -- * Proposal_OriginatorRole
    Proposal_OriginatorRole
      ( Proposal_OriginatorRole_BUYERSELLERROLEUNSPECIFIED,
        Proposal_OriginatorRole_Buyer,
        Proposal_OriginatorRole_Seller,
        ..
      ),

    -- * Proposal_ProposalState
    Proposal_ProposalState
      ( Proposal_ProposalState_PROPOSALSTATEUNSPECIFIED,
        Proposal_ProposalState_Proposed,
        Proposal_ProposalState_BUYERACCEPTED,
        Proposal_ProposalState_SELLERACCEPTED,
        Proposal_ProposalState_Canceled,
        Proposal_ProposalState_Finalized,
        ..
      ),

    -- * PublisherProfileMobileApplication_AppStore
    PublisherProfileMobileApplication_AppStore
      ( PublisherProfileMobileApplication_AppStore_APPSTORETYPEUNSPECIFIED,
        PublisherProfileMobileApplication_AppStore_APPLEITUNES,
        PublisherProfileMobileApplication_AppStore_GOOGLEPLAY,
        PublisherProfileMobileApplication_AppStore_Roku,
        PublisherProfileMobileApplication_AppStore_AMAZONFIRETV,
        PublisherProfileMobileApplication_AppStore_Playstation,
        PublisherProfileMobileApplication_AppStore_Xbox,
        PublisherProfileMobileApplication_AppStore_SAMSUNGTV,
        PublisherProfileMobileApplication_AppStore_Amazon,
        PublisherProfileMobileApplication_AppStore_Oppo,
        PublisherProfileMobileApplication_AppStore_Samsung,
        PublisherProfileMobileApplication_AppStore_Vivo,
        PublisherProfileMobileApplication_AppStore_Xiaomi,
        ..
      ),

    -- * SecurityContext_SecuritiesItem
    SecurityContext_SecuritiesItem
      ( SecurityContext_SecuritiesItem_Insecure,
        SecurityContext_SecuritiesItem_Ssl,
        ..
      ),

    -- * ServingContext_All
    ServingContext_All
      ( ServingContext_All_SIMPLECONTEXT,
        ..
      ),

    -- * ServingRestriction_Status
    ServingRestriction_Status
      ( ServingRestriction_Status_STATUSUNSPECIFIED,
        ServingRestriction_Status_Disapproval,
        ServingRestriction_Status_PENDINGREVIEW,
        ..
      ),

    -- * VideoTargeting_ExcludedPositionTypesItem
    VideoTargeting_ExcludedPositionTypesItem
      ( VideoTargeting_ExcludedPositionTypesItem_POSITIONTYPEUNSPECIFIED,
        VideoTargeting_ExcludedPositionTypesItem_Preroll,
        VideoTargeting_ExcludedPositionTypesItem_Midroll,
        VideoTargeting_ExcludedPositionTypesItem_Postroll,
        ..
      ),

    -- * VideoTargeting_TargetedPositionTypesItem
    VideoTargeting_TargetedPositionTypesItem
      ( VideoTargeting_TargetedPositionTypesItem_POSITIONTYPEUNSPECIFIED,
        VideoTargeting_TargetedPositionTypesItem_Preroll,
        VideoTargeting_TargetedPositionTypesItem_Midroll,
        VideoTargeting_TargetedPositionTypesItem_Postroll,
        ..
      ),

    -- * AccountsCreativesCreateDuplicateIdMode
    AccountsCreativesCreateDuplicateIdMode
      ( AccountsCreativesCreateDuplicateIdMode_NODUPLICATES,
        AccountsCreativesCreateDuplicateIdMode_FORCEENABLEDUPLICATEIDS,
        ..
      ),

    -- * AccountsFinalizedProposalsListFilterSyntax
    AccountsFinalizedProposalsListFilterSyntax
      ( AccountsFinalizedProposalsListFilterSyntax_FILTERSYNTAXUNSPECIFIED,
        AccountsFinalizedProposalsListFilterSyntax_Pql,
        AccountsFinalizedProposalsListFilterSyntax_LISTFILTER,
        ..
      ),

    -- * AccountsProposalsListFilterSyntax
    AccountsProposalsListFilterSyntax
      ( AccountsProposalsListFilterSyntax_FILTERSYNTAXUNSPECIFIED,
        AccountsProposalsListFilterSyntax_Pql,
        AccountsProposalsListFilterSyntax_LISTFILTER,
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

-- | The size type of the ad slot.
newtype AdSize_SizeType = AdSize_SizeType {fromAdSize_SizeType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined size type.
pattern AdSize_SizeType_SIZETYPEUNSPECIFIED :: AdSize_SizeType
pattern AdSize_SizeType_SIZETYPEUNSPECIFIED = AdSize_SizeType "SIZE_TYPE_UNSPECIFIED"

-- | Ad slot with size specified by height and width in pixels.
pattern AdSize_SizeType_Pixel :: AdSize_SizeType
pattern AdSize_SizeType_Pixel = AdSize_SizeType "PIXEL"

-- | Special size to describe an interstitial ad slot.
pattern AdSize_SizeType_Interstitial :: AdSize_SizeType
pattern AdSize_SizeType_Interstitial = AdSize_SizeType "INTERSTITIAL"

-- | Native (mobile) ads rendered by the publisher.
pattern AdSize_SizeType_Native :: AdSize_SizeType
pattern AdSize_SizeType_Native = AdSize_SizeType "NATIVE"

-- | Fluid size (for example, responsive size) can be resized automatically with the change of outside environment.
pattern AdSize_SizeType_Fluid :: AdSize_SizeType
pattern AdSize_SizeType_Fluid = AdSize_SizeType "FLUID"

{-# COMPLETE
  AdSize_SizeType_SIZETYPEUNSPECIFIED,
  AdSize_SizeType_Pixel,
  AdSize_SizeType_Interstitial,
  AdSize_SizeType_Native,
  AdSize_SizeType_Fluid,
  AdSize_SizeType
  #-}

newtype AppContext_AppTypesItem = AppContext_AppTypesItem {fromAppContext_AppTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Native app context.
pattern AppContext_AppTypesItem_Native :: AppContext_AppTypesItem
pattern AppContext_AppTypesItem_Native = AppContext_AppTypesItem "NATIVE"

-- | Mobile web app context.
pattern AppContext_AppTypesItem_Web :: AppContext_AppTypesItem
pattern AppContext_AppTypesItem_Web = AppContext_AppTypesItem "WEB"

{-# COMPLETE
  AppContext_AppTypesItem_Native,
  AppContext_AppTypesItem_Web,
  AppContext_AppTypesItem
  #-}

newtype AuctionContext_AuctionTypesItem = AuctionContext_AuctionTypesItem {fromAuctionContext_AuctionTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The restriction applies to open auction.
pattern AuctionContext_AuctionTypesItem_OPENAUCTION :: AuctionContext_AuctionTypesItem
pattern AuctionContext_AuctionTypesItem_OPENAUCTION = AuctionContext_AuctionTypesItem "OPEN_AUCTION"

-- | The restriction applies to direct deals.
pattern AuctionContext_AuctionTypesItem_DIRECTDEALS :: AuctionContext_AuctionTypesItem
pattern AuctionContext_AuctionTypesItem_DIRECTDEALS = AuctionContext_AuctionTypesItem "DIRECT_DEALS"

{-# COMPLETE
  AuctionContext_AuctionTypesItem_OPENAUCTION,
  AuctionContext_AuctionTypesItem_DIRECTDEALS,
  AuctionContext_AuctionTypesItem
  #-}

-- | The status specifying why the bid responses were considered to have no applicable bids.
newtype BidResponseWithoutBidsStatusRow_Status = BidResponseWithoutBidsStatusRow_Status {fromBidResponseWithoutBidsStatusRow_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined status. This value will never be returned in responses.
pattern BidResponseWithoutBidsStatusRow_Status_STATUSUNSPECIFIED :: BidResponseWithoutBidsStatusRow_Status
pattern BidResponseWithoutBidsStatusRow_Status_STATUSUNSPECIFIED = BidResponseWithoutBidsStatusRow_Status "STATUS_UNSPECIFIED"

-- | The response had no bids.
pattern BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDS :: BidResponseWithoutBidsStatusRow_Status
pattern BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDS = BidResponseWithoutBidsStatusRow_Status "RESPONSES_WITHOUT_BIDS"

-- | The response had no bids for the specified account, though it may have included bids on behalf of other accounts. Applies if: 1. Request is on behalf of a bidder and an account filter is present. 2. Request is on behalf of a child seat.
pattern BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDSFORACCOUNT :: BidResponseWithoutBidsStatusRow_Status
pattern BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDSFORACCOUNT = BidResponseWithoutBidsStatusRow_Status "RESPONSES_WITHOUT_BIDS_FOR_ACCOUNT"

-- | The response had no bids for the specified deal, though it may have included bids on other deals on behalf of the account to which the deal belongs. If request is on behalf of a bidder and an account filter is not present, this also includes responses that have bids on behalf of accounts other than the account to which the deal belongs.
pattern BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDSFORDEAL :: BidResponseWithoutBidsStatusRow_Status
pattern BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDSFORDEAL = BidResponseWithoutBidsStatusRow_Status "RESPONSES_WITHOUT_BIDS_FOR_DEAL"

{-# COMPLETE
  BidResponseWithoutBidsStatusRow_Status_STATUSUNSPECIFIED,
  BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDS,
  BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDSFORACCOUNT,
  BidResponseWithoutBidsStatusRow_Status_RESPONSESWITHOUTBIDSFORDEAL,
  BidResponseWithoutBidsStatusRow_Status
  #-}

-- | An optional field for specifying the type of the client entity: @ADVERTISER@, @BRAND@, or @AGENCY@.
newtype Client_EntityType = Client_EntityType {fromClient_EntityType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined client entity type. Should not be used.
pattern Client_EntityType_ENTITYTYPEUNSPECIFIED :: Client_EntityType
pattern Client_EntityType_ENTITYTYPEUNSPECIFIED = Client_EntityType "ENTITY_TYPE_UNSPECIFIED"

-- | An advertiser.
pattern Client_EntityType_Advertiser :: Client_EntityType
pattern Client_EntityType_Advertiser = Client_EntityType "ADVERTISER"

-- | A brand.
pattern Client_EntityType_Brand :: Client_EntityType
pattern Client_EntityType_Brand = Client_EntityType "BRAND"

-- | An advertising agency.
pattern Client_EntityType_Agency :: Client_EntityType
pattern Client_EntityType_Agency = Client_EntityType "AGENCY"

-- | An explicit value for a client that was not yet classified as any particular entity.
pattern Client_EntityType_ENTITYTYPEUNCLASSIFIED :: Client_EntityType
pattern Client_EntityType_ENTITYTYPEUNCLASSIFIED = Client_EntityType "ENTITY_TYPE_UNCLASSIFIED"

{-# COMPLETE
  Client_EntityType_ENTITYTYPEUNSPECIFIED,
  Client_EntityType_Advertiser,
  Client_EntityType_Brand,
  Client_EntityType_Agency,
  Client_EntityType_ENTITYTYPEUNCLASSIFIED,
  Client_EntityType
  #-}

-- | The role which is assigned to the client buyer. Each role implies a set of permissions granted to the client. Must be one of @CLIENT_DEAL_VIEWER@, @CLIENT_DEAL_NEGOTIATOR@ or @CLIENT_DEAL_APPROVER@.
newtype Client_Role = Client_Role {fromClient_Role :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined client role.
pattern Client_Role_CLIENTROLEUNSPECIFIED :: Client_Role
pattern Client_Role_CLIENTROLEUNSPECIFIED = Client_Role "CLIENT_ROLE_UNSPECIFIED"

-- | Users associated with this client can see publisher deal offers in the Marketplace. They can neither negotiate proposals nor approve deals. If this client is visible to publishers, they can send deal proposals to this client.
pattern Client_Role_CLIENTDEALVIEWER :: Client_Role
pattern Client_Role_CLIENTDEALVIEWER = Client_Role "CLIENT_DEAL_VIEWER"

-- | Users associated with this client can respond to deal proposals sent to them by publishers. They can also initiate deal proposals of their own.
pattern Client_Role_CLIENTDEALNEGOTIATOR :: Client_Role
pattern Client_Role_CLIENTDEALNEGOTIATOR = Client_Role "CLIENT_DEAL_NEGOTIATOR"

-- | Users associated with this client can approve eligible deals on your behalf. Some deals may still explicitly require publisher finalization. If this role is not selected, the sponsor buyer will need to manually approve each of their deals.
pattern Client_Role_CLIENTDEALAPPROVER :: Client_Role
pattern Client_Role_CLIENTDEALAPPROVER = Client_Role "CLIENT_DEAL_APPROVER"

{-# COMPLETE
  Client_Role_CLIENTROLEUNSPECIFIED,
  Client_Role_CLIENTDEALVIEWER,
  Client_Role_CLIENTDEALNEGOTIATOR,
  Client_Role_CLIENTDEALAPPROVER,
  Client_Role
  #-}

-- | The status of the client buyer.
newtype Client_Status = Client_Status {fromClient_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined client status.
pattern Client_Status_CLIENTSTATUSUNSPECIFIED :: Client_Status
pattern Client_Status_CLIENTSTATUSUNSPECIFIED = Client_Status "CLIENT_STATUS_UNSPECIFIED"

-- | A client that is currently disabled.
pattern Client_Status_Disabled :: Client_Status
pattern Client_Status_Disabled = Client_Status "DISABLED"

-- | A client that is currently active.
pattern Client_Status_Active :: Client_Status
pattern Client_Status_Active = Client_Status "ACTIVE"

{-# COMPLETE
  Client_Status_CLIENTSTATUSUNSPECIFIED,
  Client_Status_Disabled,
  Client_Status_Active,
  Client_Status
  #-}

-- | The status of the client user.
newtype ClientUser_Status = ClientUser_Status {fromClientUser_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined user status.
pattern ClientUser_Status_USERSTATUSUNSPECIFIED :: ClientUser_Status
pattern ClientUser_Status_USERSTATUSUNSPECIFIED = ClientUser_Status "USER_STATUS_UNSPECIFIED"

-- | A user who was already created but hasn\'t accepted the invitation yet.
pattern ClientUser_Status_Pending :: ClientUser_Status
pattern ClientUser_Status_Pending = ClientUser_Status "PENDING"

-- | A user that is currently active.
pattern ClientUser_Status_Active :: ClientUser_Status
pattern ClientUser_Status_Active = ClientUser_Status "ACTIVE"

-- | A user that is currently disabled.
pattern ClientUser_Status_Disabled :: ClientUser_Status
pattern ClientUser_Status_Disabled = ClientUser_Status "DISABLED"

{-# COMPLETE
  ClientUser_Status_USERSTATUSUNSPECIFIED,
  ClientUser_Status_Pending,
  ClientUser_Status_Active,
  ClientUser_Status_Disabled,
  ClientUser_Status
  #-}

-- | The type of correction that was applied to the creative.
newtype Correction_Type = Correction_Type {fromCorrection_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The correction type is unknown. Refer to the details for more information.
pattern Correction_Type_CORRECTIONTYPEUNSPECIFIED :: Correction_Type
pattern Correction_Type_CORRECTIONTYPEUNSPECIFIED = Correction_Type "CORRECTION_TYPE_UNSPECIFIED"

-- | The ad\'s declared vendors did not match the vendors that were detected. The detected vendors were added.
pattern Correction_Type_VENDORIDSADDED :: Correction_Type
pattern Correction_Type_VENDORIDSADDED = Correction_Type "VENDOR_IDS_ADDED"

-- | The ad had the SSL attribute declared but was not SSL-compliant. The SSL attribute was removed.
pattern Correction_Type_SSLATTRIBUTEREMOVED :: Correction_Type
pattern Correction_Type_SSLATTRIBUTEREMOVED = Correction_Type "SSL_ATTRIBUTE_REMOVED"

-- | The ad was declared as Flash-free but contained Flash, so the Flash-free attribute was removed.
pattern Correction_Type_FLASHFREEATTRIBUTEREMOVED :: Correction_Type
pattern Correction_Type_FLASHFREEATTRIBUTEREMOVED = Correction_Type "FLASH_FREE_ATTRIBUTE_REMOVED"

-- | The ad was not declared as Flash-free but it did not reference any flash content, so the Flash-free attribute was added.
pattern Correction_Type_FLASHFREEATTRIBUTEADDED :: Correction_Type
pattern Correction_Type_FLASHFREEATTRIBUTEADDED = Correction_Type "FLASH_FREE_ATTRIBUTE_ADDED"

-- | The ad did not declare a required creative attribute. The attribute was added.
pattern Correction_Type_REQUIREDATTRIBUTEADDED :: Correction_Type
pattern Correction_Type_REQUIREDATTRIBUTEADDED = Correction_Type "REQUIRED_ATTRIBUTE_ADDED"

-- | The ad did not declare a required technology vendor. The technology vendor was added.
pattern Correction_Type_REQUIREDVENDORADDED :: Correction_Type
pattern Correction_Type_REQUIREDVENDORADDED = Correction_Type "REQUIRED_VENDOR_ADDED"

-- | The ad did not declare the SSL attribute but was SSL-compliant, so the SSL attribute was added.
pattern Correction_Type_SSLATTRIBUTEADDED :: Correction_Type
pattern Correction_Type_SSLATTRIBUTEADDED = Correction_Type "SSL_ATTRIBUTE_ADDED"

-- | Properties consistent with In-banner video were found, so an In-Banner Video attribute was added.
pattern Correction_Type_INBANNERVIDEOATTRIBUTEADDED :: Correction_Type
pattern Correction_Type_INBANNERVIDEOATTRIBUTEADDED = Correction_Type "IN_BANNER_VIDEO_ATTRIBUTE_ADDED"

-- | The ad makes calls to the MRAID API so the MRAID attribute was added.
pattern Correction_Type_MRAIDATTRIBUTEADDED :: Correction_Type
pattern Correction_Type_MRAIDATTRIBUTEADDED = Correction_Type "MRAID_ATTRIBUTE_ADDED"

-- | The ad unnecessarily declared the Flash attribute, so the Flash attribute was removed.
pattern Correction_Type_FLASHATTRIBUTEREMOVED :: Correction_Type
pattern Correction_Type_FLASHATTRIBUTEREMOVED = Correction_Type "FLASH_ATTRIBUTE_REMOVED"

-- | The ad contains video content.
pattern Correction_Type_VIDEOINSNIPPETATTRIBUTEADDED :: Correction_Type
pattern Correction_Type_VIDEOINSNIPPETATTRIBUTEADDED = Correction_Type "VIDEO_IN_SNIPPET_ATTRIBUTE_ADDED"

{-# COMPLETE
  Correction_Type_CORRECTIONTYPEUNSPECIFIED,
  Correction_Type_VENDORIDSADDED,
  Correction_Type_SSLATTRIBUTEREMOVED,
  Correction_Type_FLASHFREEATTRIBUTEREMOVED,
  Correction_Type_FLASHFREEATTRIBUTEADDED,
  Correction_Type_REQUIREDATTRIBUTEADDED,
  Correction_Type_REQUIREDVENDORADDED,
  Correction_Type_SSLATTRIBUTEADDED,
  Correction_Type_INBANNERVIDEOATTRIBUTEADDED,
  Correction_Type_MRAIDATTRIBUTEADDED,
  Correction_Type_FLASHATTRIBUTEREMOVED,
  Correction_Type_VIDEOINSNIPPETATTRIBUTEADDED,
  Correction_Type
  #-}

newtype Creative_AttributesItem = Creative_AttributesItem {fromCreative_AttributesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. This is a placeholder value only.
pattern Creative_AttributesItem_ATTRIBUTEUNSPECIFIED :: Creative_AttributesItem
pattern Creative_AttributesItem_ATTRIBUTEUNSPECIFIED = Creative_AttributesItem "ATTRIBUTE_UNSPECIFIED"

-- | The creative is of type image\/rich media. For pretargeting.
pattern Creative_AttributesItem_IMAGERICHMEDIA :: Creative_AttributesItem
pattern Creative_AttributesItem_IMAGERICHMEDIA = Creative_AttributesItem "IMAGE_RICH_MEDIA"

-- | The creative is of video type Adobe Flash FLV. For pretargeting.
pattern Creative_AttributesItem_ADOBEFLASHFLV :: Creative_AttributesItem
pattern Creative_AttributesItem_ADOBEFLASHFLV = Creative_AttributesItem "ADOBE_FLASH_FLV"

-- | The creative is tagged.
pattern Creative_AttributesItem_ISTAGGED :: Creative_AttributesItem
pattern Creative_AttributesItem_ISTAGGED = Creative_AttributesItem "IS_TAGGED"

-- | The creative is cookie targeted.
pattern Creative_AttributesItem_ISCOOKIETARGETED :: Creative_AttributesItem
pattern Creative_AttributesItem_ISCOOKIETARGETED = Creative_AttributesItem "IS_COOKIE_TARGETED"

-- | The creative is user interest targeted.
pattern Creative_AttributesItem_ISUSERINTERESTTARGETED :: Creative_AttributesItem
pattern Creative_AttributesItem_ISUSERINTERESTTARGETED = Creative_AttributesItem "IS_USER_INTEREST_TARGETED"

-- | The creative does not expand.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONNONE :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONNONE = Creative_AttributesItem "EXPANDING_DIRECTION_NONE"

-- | The creative expands up.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONUP :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONUP = Creative_AttributesItem "EXPANDING_DIRECTION_UP"

-- | The creative expands down.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONDOWN :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONDOWN = Creative_AttributesItem "EXPANDING_DIRECTION_DOWN"

-- | The creative expands left.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONLEFT :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONLEFT = Creative_AttributesItem "EXPANDING_DIRECTION_LEFT"

-- | The creative expands right.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONRIGHT :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONRIGHT = Creative_AttributesItem "EXPANDING_DIRECTION_RIGHT"

-- | The creative expands up and left.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONUPLEFT :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONUPLEFT = Creative_AttributesItem "EXPANDING_DIRECTION_UP_LEFT"

-- | The creative expands up and right.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONUPRIGHT :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONUPRIGHT = Creative_AttributesItem "EXPANDING_DIRECTION_UP_RIGHT"

-- | The creative expands down and left.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONDOWNLEFT :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONDOWNLEFT = Creative_AttributesItem "EXPANDING_DIRECTION_DOWN_LEFT"

-- | The creative expands down and right.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONDOWNRIGHT :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONDOWNRIGHT = Creative_AttributesItem "EXPANDING_DIRECTION_DOWN_RIGHT"

-- | The creative type is HTML.
pattern Creative_AttributesItem_CREATIVETYPEHTML :: Creative_AttributesItem
pattern Creative_AttributesItem_CREATIVETYPEHTML = Creative_AttributesItem "CREATIVE_TYPE_HTML"

-- | The creative type is VAST video.
pattern Creative_AttributesItem_CREATIVETYPEVASTVIDEO :: Creative_AttributesItem
pattern Creative_AttributesItem_CREATIVETYPEVASTVIDEO = Creative_AttributesItem "CREATIVE_TYPE_VAST_VIDEO"

-- | The creative expands up or down.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONUPORDOWN :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONUPORDOWN = Creative_AttributesItem "EXPANDING_DIRECTION_UP_OR_DOWN"

-- | The creative expands left or right.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONLEFTORRIGHT :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONLEFTORRIGHT = Creative_AttributesItem "EXPANDING_DIRECTION_LEFT_OR_RIGHT"

-- | The creative expands on any diagonal.
pattern Creative_AttributesItem_EXPANDINGDIRECTIONANYDIAGONAL :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGDIRECTIONANYDIAGONAL = Creative_AttributesItem "EXPANDING_DIRECTION_ANY_DIAGONAL"

-- | The creative expands when rolled over.
pattern Creative_AttributesItem_EXPANDINGACTIONROLLOVERTOEXPAND :: Creative_AttributesItem
pattern Creative_AttributesItem_EXPANDINGACTIONROLLOVERTOEXPAND = Creative_AttributesItem "EXPANDING_ACTION_ROLLOVER_TO_EXPAND"

-- | The instream vast video type is vpaid flash.
pattern Creative_AttributesItem_INSTREAMVASTVIDEOTYPEVPAIDFLASH :: Creative_AttributesItem
pattern Creative_AttributesItem_INSTREAMVASTVIDEOTYPEVPAIDFLASH = Creative_AttributesItem "INSTREAM_VAST_VIDEO_TYPE_VPAID_FLASH"

-- | The creative is MRAID.
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPEMRAID :: Creative_AttributesItem
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPEMRAID = Creative_AttributesItem "RICH_MEDIA_CAPABILITY_TYPE_MRAID"

-- | The creative is Flash.
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPEFLASH :: Creative_AttributesItem
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPEFLASH = Creative_AttributesItem "RICH_MEDIA_CAPABILITY_TYPE_FLASH"

-- | The creative is HTML5.
pattern Creative_AttributesItem_RICH_MEDIA_CAPABILITY_TYPE_HTML5 :: Creative_AttributesItem
pattern Creative_AttributesItem_RICH_MEDIA_CAPABILITY_TYPE_HTML5 = Creative_AttributesItem "RICH_MEDIA_CAPABILITY_TYPE_HTML5"

-- | The creative has an instream VAST video type of skippable instream video. For pretargeting.
pattern Creative_AttributesItem_SKIPPABLEINSTREAMVIDEO :: Creative_AttributesItem
pattern Creative_AttributesItem_SKIPPABLEINSTREAMVIDEO = Creative_AttributesItem "SKIPPABLE_INSTREAM_VIDEO"

-- | The creative is SSL.
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPESSL :: Creative_AttributesItem
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPESSL = Creative_AttributesItem "RICH_MEDIA_CAPABILITY_TYPE_SSL"

-- | The creative is non-SSL.
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPENONSSL :: Creative_AttributesItem
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPENONSSL = Creative_AttributesItem "RICH_MEDIA_CAPABILITY_TYPE_NON_SSL"

-- | The creative is an interstitial.
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPEINTERSTITIAL :: Creative_AttributesItem
pattern Creative_AttributesItem_RICHMEDIACAPABILITYTYPEINTERSTITIAL = Creative_AttributesItem "RICH_MEDIA_CAPABILITY_TYPE_INTERSTITIAL"

-- | The creative has an instream VAST video type of non-skippable instream video. For pretargeting.
pattern Creative_AttributesItem_NONSKIPPABLEINSTREAMVIDEO :: Creative_AttributesItem
pattern Creative_AttributesItem_NONSKIPPABLEINSTREAMVIDEO = Creative_AttributesItem "NON_SKIPPABLE_INSTREAM_VIDEO"

-- | The creative is eligible for native.
pattern Creative_AttributesItem_NATIVEELIGIBILITYELIGIBLE :: Creative_AttributesItem
pattern Creative_AttributesItem_NATIVEELIGIBILITYELIGIBLE = Creative_AttributesItem "NATIVE_ELIGIBILITY_ELIGIBLE"

-- | The creative has an instream VAST video type of non-VPAID. For pretargeting.
pattern Creative_AttributesItem_NONVPAID :: Creative_AttributesItem
pattern Creative_AttributesItem_NONVPAID = Creative_AttributesItem "NON_VPAID"

-- | The creative is not eligible for native.
pattern Creative_AttributesItem_NATIVEELIGIBILITYNOTELIGIBLE :: Creative_AttributesItem
pattern Creative_AttributesItem_NATIVEELIGIBILITYNOTELIGIBLE = Creative_AttributesItem "NATIVE_ELIGIBILITY_NOT_ELIGIBLE"

-- | The creative has an interstitial size of any interstitial. For pretargeting.
pattern Creative_AttributesItem_ANYINTERSTITIAL :: Creative_AttributesItem
pattern Creative_AttributesItem_ANYINTERSTITIAL = Creative_AttributesItem "ANY_INTERSTITIAL"

-- | The creative has an interstitial size of non interstitial. For pretargeting.
pattern Creative_AttributesItem_NONINTERSTITIAL :: Creative_AttributesItem
pattern Creative_AttributesItem_NONINTERSTITIAL = Creative_AttributesItem "NON_INTERSTITIAL"

-- | The video type is in-banner video.
pattern Creative_AttributesItem_INBANNERVIDEO :: Creative_AttributesItem
pattern Creative_AttributesItem_INBANNERVIDEO = Creative_AttributesItem "IN_BANNER_VIDEO"

-- | The creative can dynamically resize to fill a variety of slot sizes.
pattern Creative_AttributesItem_RENDERINGSIZELESSADX :: Creative_AttributesItem
pattern Creative_AttributesItem_RENDERINGSIZELESSADX = Creative_AttributesItem "RENDERING_SIZELESS_ADX"

-- | The open measurement SDK is supported.
pattern Creative_AttributesItem_OMSDK_1_0 :: Creative_AttributesItem
pattern Creative_AttributesItem_OMSDK_1_0 = Creative_AttributesItem "OMSDK_1_0"

{-# COMPLETE
  Creative_AttributesItem_ATTRIBUTEUNSPECIFIED,
  Creative_AttributesItem_IMAGERICHMEDIA,
  Creative_AttributesItem_ADOBEFLASHFLV,
  Creative_AttributesItem_ISTAGGED,
  Creative_AttributesItem_ISCOOKIETARGETED,
  Creative_AttributesItem_ISUSERINTERESTTARGETED,
  Creative_AttributesItem_EXPANDINGDIRECTIONNONE,
  Creative_AttributesItem_EXPANDINGDIRECTIONUP,
  Creative_AttributesItem_EXPANDINGDIRECTIONDOWN,
  Creative_AttributesItem_EXPANDINGDIRECTIONLEFT,
  Creative_AttributesItem_EXPANDINGDIRECTIONRIGHT,
  Creative_AttributesItem_EXPANDINGDIRECTIONUPLEFT,
  Creative_AttributesItem_EXPANDINGDIRECTIONUPRIGHT,
  Creative_AttributesItem_EXPANDINGDIRECTIONDOWNLEFT,
  Creative_AttributesItem_EXPANDINGDIRECTIONDOWNRIGHT,
  Creative_AttributesItem_CREATIVETYPEHTML,
  Creative_AttributesItem_CREATIVETYPEVASTVIDEO,
  Creative_AttributesItem_EXPANDINGDIRECTIONUPORDOWN,
  Creative_AttributesItem_EXPANDINGDIRECTIONLEFTORRIGHT,
  Creative_AttributesItem_EXPANDINGDIRECTIONANYDIAGONAL,
  Creative_AttributesItem_EXPANDINGACTIONROLLOVERTOEXPAND,
  Creative_AttributesItem_INSTREAMVASTVIDEOTYPEVPAIDFLASH,
  Creative_AttributesItem_RICHMEDIACAPABILITYTYPEMRAID,
  Creative_AttributesItem_RICHMEDIACAPABILITYTYPEFLASH,
  Creative_AttributesItem_RICH_MEDIA_CAPABILITY_TYPE_HTML5,
  Creative_AttributesItem_SKIPPABLEINSTREAMVIDEO,
  Creative_AttributesItem_RICHMEDIACAPABILITYTYPESSL,
  Creative_AttributesItem_RICHMEDIACAPABILITYTYPENONSSL,
  Creative_AttributesItem_RICHMEDIACAPABILITYTYPEINTERSTITIAL,
  Creative_AttributesItem_NONSKIPPABLEINSTREAMVIDEO,
  Creative_AttributesItem_NATIVEELIGIBILITYELIGIBLE,
  Creative_AttributesItem_NONVPAID,
  Creative_AttributesItem_NATIVEELIGIBILITYNOTELIGIBLE,
  Creative_AttributesItem_ANYINTERSTITIAL,
  Creative_AttributesItem_NONINTERSTITIAL,
  Creative_AttributesItem_INBANNERVIDEO,
  Creative_AttributesItem_RENDERINGSIZELESSADX,
  Creative_AttributesItem_OMSDK_1_0,
  Creative_AttributesItem
  #-}

-- | Output only. The top-level deals status of this creative. If disapproved, an entry for \'auctionType=DIRECT/DEALS\' (or \'ALL\') in serving/restrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case, it may be preferable to read from serving_restrictions directly. Can be used to filter the response of the creatives.list method.
newtype Creative_DealsStatus = Creative_DealsStatus {fromCreative_DealsStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The status is unknown.
pattern Creative_DealsStatus_STATUSUNSPECIFIED :: Creative_DealsStatus
pattern Creative_DealsStatus_STATUSUNSPECIFIED = Creative_DealsStatus "STATUS_UNSPECIFIED"

-- | The creative has not been checked.
pattern Creative_DealsStatus_NOTCHECKED :: Creative_DealsStatus
pattern Creative_DealsStatus_NOTCHECKED = Creative_DealsStatus "NOT_CHECKED"

-- | The creative has been conditionally approved. See serving_restrictions for details.
pattern Creative_DealsStatus_CONDITIONALLYAPPROVED :: Creative_DealsStatus
pattern Creative_DealsStatus_CONDITIONALLYAPPROVED = Creative_DealsStatus "CONDITIONALLY_APPROVED"

-- | The creative has been approved.
pattern Creative_DealsStatus_Approved :: Creative_DealsStatus
pattern Creative_DealsStatus_Approved = Creative_DealsStatus "APPROVED"

-- | The creative has been disapproved.
pattern Creative_DealsStatus_Disapproved :: Creative_DealsStatus
pattern Creative_DealsStatus_Disapproved = Creative_DealsStatus "DISAPPROVED"

-- | Placeholder for transition to v1beta1. Currently not used.
pattern Creative_DealsStatus_PENDINGREVIEW :: Creative_DealsStatus
pattern Creative_DealsStatus_PENDINGREVIEW = Creative_DealsStatus "PENDING_REVIEW"

-- | Placeholder for transition to v1beta1. Currently not used.
pattern Creative_DealsStatus_STATUSTYPEUNSPECIFIED :: Creative_DealsStatus
pattern Creative_DealsStatus_STATUSTYPEUNSPECIFIED = Creative_DealsStatus "STATUS_TYPE_UNSPECIFIED"

{-# COMPLETE
  Creative_DealsStatus_STATUSUNSPECIFIED,
  Creative_DealsStatus_NOTCHECKED,
  Creative_DealsStatus_CONDITIONALLYAPPROVED,
  Creative_DealsStatus_Approved,
  Creative_DealsStatus_Disapproved,
  Creative_DealsStatus_PENDINGREVIEW,
  Creative_DealsStatus_STATUSTYPEUNSPECIFIED,
  Creative_DealsStatus
  #-}

-- | Output only. The top-level open auction status of this creative. If disapproved, an entry for \'auctionType = OPEN/AUCTION\' (or \'ALL\') in serving/restrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case, it may be preferable to read from serving_restrictions directly. Can be used to filter the response of the creatives.list method.
newtype Creative_OpenAuctionStatus = Creative_OpenAuctionStatus {fromCreative_OpenAuctionStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The status is unknown.
pattern Creative_OpenAuctionStatus_STATUSUNSPECIFIED :: Creative_OpenAuctionStatus
pattern Creative_OpenAuctionStatus_STATUSUNSPECIFIED = Creative_OpenAuctionStatus "STATUS_UNSPECIFIED"

-- | The creative has not been checked.
pattern Creative_OpenAuctionStatus_NOTCHECKED :: Creative_OpenAuctionStatus
pattern Creative_OpenAuctionStatus_NOTCHECKED = Creative_OpenAuctionStatus "NOT_CHECKED"

-- | The creative has been conditionally approved. See serving_restrictions for details.
pattern Creative_OpenAuctionStatus_CONDITIONALLYAPPROVED :: Creative_OpenAuctionStatus
pattern Creative_OpenAuctionStatus_CONDITIONALLYAPPROVED = Creative_OpenAuctionStatus "CONDITIONALLY_APPROVED"

-- | The creative has been approved.
pattern Creative_OpenAuctionStatus_Approved :: Creative_OpenAuctionStatus
pattern Creative_OpenAuctionStatus_Approved = Creative_OpenAuctionStatus "APPROVED"

-- | The creative has been disapproved.
pattern Creative_OpenAuctionStatus_Disapproved :: Creative_OpenAuctionStatus
pattern Creative_OpenAuctionStatus_Disapproved = Creative_OpenAuctionStatus "DISAPPROVED"

-- | Placeholder for transition to v1beta1. Currently not used.
pattern Creative_OpenAuctionStatus_PENDINGREVIEW :: Creative_OpenAuctionStatus
pattern Creative_OpenAuctionStatus_PENDINGREVIEW = Creative_OpenAuctionStatus "PENDING_REVIEW"

-- | Placeholder for transition to v1beta1. Currently not used.
pattern Creative_OpenAuctionStatus_STATUSTYPEUNSPECIFIED :: Creative_OpenAuctionStatus
pattern Creative_OpenAuctionStatus_STATUSTYPEUNSPECIFIED = Creative_OpenAuctionStatus "STATUS_TYPE_UNSPECIFIED"

{-# COMPLETE
  Creative_OpenAuctionStatus_STATUSUNSPECIFIED,
  Creative_OpenAuctionStatus_NOTCHECKED,
  Creative_OpenAuctionStatus_CONDITIONALLYAPPROVED,
  Creative_OpenAuctionStatus_Approved,
  Creative_OpenAuctionStatus_Disapproved,
  Creative_OpenAuctionStatus_PENDINGREVIEW,
  Creative_OpenAuctionStatus_STATUSTYPEUNSPECIFIED,
  Creative_OpenAuctionStatus
  #-}

newtype Creative_RestrictedCategoriesItem = Creative_RestrictedCategoriesItem {fromCreative_RestrictedCategoriesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The ad has no restricted categories
pattern Creative_RestrictedCategoriesItem_NORESTRICTEDCATEGORIES :: Creative_RestrictedCategoriesItem
pattern Creative_RestrictedCategoriesItem_NORESTRICTEDCATEGORIES = Creative_RestrictedCategoriesItem "NO_RESTRICTED_CATEGORIES"

-- | The alcohol restricted category.
pattern Creative_RestrictedCategoriesItem_Alcohol :: Creative_RestrictedCategoriesItem
pattern Creative_RestrictedCategoriesItem_Alcohol = Creative_RestrictedCategoriesItem "ALCOHOL"

{-# COMPLETE
  Creative_RestrictedCategoriesItem_NORESTRICTEDCATEGORIES,
  Creative_RestrictedCategoriesItem_Alcohol,
  Creative_RestrictedCategoriesItem
  #-}

-- | The format of the environment that the creatives will be displayed in.
newtype CreativeRestrictions_CreativeFormat = CreativeRestrictions_CreativeFormat {fromCreativeRestrictions_CreativeFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined creative format.
pattern CreativeRestrictions_CreativeFormat_CREATIVEFORMATUNSPECIFIED :: CreativeRestrictions_CreativeFormat
pattern CreativeRestrictions_CreativeFormat_CREATIVEFORMATUNSPECIFIED = CreativeRestrictions_CreativeFormat "CREATIVE_FORMAT_UNSPECIFIED"

-- | A creative that will be displayed in environments such as a browser.
pattern CreativeRestrictions_CreativeFormat_Display :: CreativeRestrictions_CreativeFormat
pattern CreativeRestrictions_CreativeFormat_Display = CreativeRestrictions_CreativeFormat "DISPLAY"

-- | A video creative that will be displayed in environments such as a video player.
pattern CreativeRestrictions_CreativeFormat_Video :: CreativeRestrictions_CreativeFormat
pattern CreativeRestrictions_CreativeFormat_Video = CreativeRestrictions_CreativeFormat "VIDEO"

{-# COMPLETE
  CreativeRestrictions_CreativeFormat_CREATIVEFORMATUNSPECIFIED,
  CreativeRestrictions_CreativeFormat_Display,
  CreativeRestrictions_CreativeFormat_Video,
  CreativeRestrictions_CreativeFormat
  #-}

-- | Skippable video ads allow viewers to skip ads after 5 seconds.
newtype CreativeRestrictions_SkippableAdType = CreativeRestrictions_SkippableAdType {fromCreativeRestrictions_SkippableAdType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined skippable ad type.
pattern CreativeRestrictions_SkippableAdType_SKIPPABLEADTYPEUNSPECIFIED :: CreativeRestrictions_SkippableAdType
pattern CreativeRestrictions_SkippableAdType_SKIPPABLEADTYPEUNSPECIFIED = CreativeRestrictions_SkippableAdType "SKIPPABLE_AD_TYPE_UNSPECIFIED"

-- | This video ad can be skipped after 5 seconds.
pattern CreativeRestrictions_SkippableAdType_Skippable :: CreativeRestrictions_SkippableAdType
pattern CreativeRestrictions_SkippableAdType_Skippable = CreativeRestrictions_SkippableAdType "SKIPPABLE"

-- | This video ad can be skipped after 5 seconds, and is counted as engaged view after 30 seconds. The creative is hosted on YouTube only, and viewcount of the YouTube video increments after the engaged view.
pattern CreativeRestrictions_SkippableAdType_INSTREAMSELECT :: CreativeRestrictions_SkippableAdType
pattern CreativeRestrictions_SkippableAdType_INSTREAMSELECT = CreativeRestrictions_SkippableAdType "INSTREAM_SELECT"

-- | This video ad is not skippable.
pattern CreativeRestrictions_SkippableAdType_NOTSKIPPABLE :: CreativeRestrictions_SkippableAdType
pattern CreativeRestrictions_SkippableAdType_NOTSKIPPABLE = CreativeRestrictions_SkippableAdType "NOT_SKIPPABLE"

{-# COMPLETE
  CreativeRestrictions_SkippableAdType_SKIPPABLEADTYPEUNSPECIFIED,
  CreativeRestrictions_SkippableAdType_Skippable,
  CreativeRestrictions_SkippableAdType_INSTREAMSELECT,
  CreativeRestrictions_SkippableAdType_NOTSKIPPABLE,
  CreativeRestrictions_SkippableAdType
  #-}

newtype CreativeSize_AllowedFormatsItem = CreativeSize_AllowedFormatsItem {fromCreativeSize_AllowedFormatsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined allowed format.
pattern CreativeSize_AllowedFormatsItem_Unknown :: CreativeSize_AllowedFormatsItem
pattern CreativeSize_AllowedFormatsItem_Unknown = CreativeSize_AllowedFormatsItem "UNKNOWN"

-- | An audio-only ad (without any video).
pattern CreativeSize_AllowedFormatsItem_Audio :: CreativeSize_AllowedFormatsItem
pattern CreativeSize_AllowedFormatsItem_Audio = CreativeSize_AllowedFormatsItem "AUDIO"

{-# COMPLETE
  CreativeSize_AllowedFormatsItem_Unknown,
  CreativeSize_AllowedFormatsItem_Audio,
  CreativeSize_AllowedFormatsItem
  #-}

-- | The creative size type.
newtype CreativeSize_CreativeSizeType = CreativeSize_CreativeSizeType {fromCreativeSize_CreativeSizeType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined creative size type.
pattern CreativeSize_CreativeSizeType_CREATIVESIZETYPEUNSPECIFIED :: CreativeSize_CreativeSizeType
pattern CreativeSize_CreativeSizeType_CREATIVESIZETYPEUNSPECIFIED = CreativeSize_CreativeSizeType "CREATIVE_SIZE_TYPE_UNSPECIFIED"

-- | The creative is a regular desktop creative.
pattern CreativeSize_CreativeSizeType_Regular :: CreativeSize_CreativeSizeType
pattern CreativeSize_CreativeSizeType_Regular = CreativeSize_CreativeSizeType "REGULAR"

-- | The creative is an interstitial creative.
pattern CreativeSize_CreativeSizeType_Interstitial :: CreativeSize_CreativeSizeType
pattern CreativeSize_CreativeSizeType_Interstitial = CreativeSize_CreativeSizeType "INTERSTITIAL"

-- | The creative is a video creative.
pattern CreativeSize_CreativeSizeType_Video :: CreativeSize_CreativeSizeType
pattern CreativeSize_CreativeSizeType_Video = CreativeSize_CreativeSizeType "VIDEO"

-- | The creative is a native (mobile) creative.
pattern CreativeSize_CreativeSizeType_Native :: CreativeSize_CreativeSizeType
pattern CreativeSize_CreativeSizeType_Native = CreativeSize_CreativeSizeType "NATIVE"

{-# COMPLETE
  CreativeSize_CreativeSizeType_CREATIVESIZETYPEUNSPECIFIED,
  CreativeSize_CreativeSizeType_Regular,
  CreativeSize_CreativeSizeType_Interstitial,
  CreativeSize_CreativeSizeType_Video,
  CreativeSize_CreativeSizeType_Native,
  CreativeSize_CreativeSizeType
  #-}

-- | Output only. The native template for this creative. It will have a value only if creative/size/type = CreativeSizeType.NATIVE.
newtype CreativeSize_NativeTemplate = CreativeSize_NativeTemplate {fromCreativeSize_NativeTemplate :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined native template.
pattern CreativeSize_NativeTemplate_UNKNOWNNATIVETEMPLATE :: CreativeSize_NativeTemplate
pattern CreativeSize_NativeTemplate_UNKNOWNNATIVETEMPLATE = CreativeSize_NativeTemplate "UNKNOWN_NATIVE_TEMPLATE"

-- | The creative is linked to native content ad.
pattern CreativeSize_NativeTemplate_NATIVECONTENTAD :: CreativeSize_NativeTemplate
pattern CreativeSize_NativeTemplate_NATIVECONTENTAD = CreativeSize_NativeTemplate "NATIVE_CONTENT_AD"

-- | The creative is linked to native app install ad.
pattern CreativeSize_NativeTemplate_NATIVEAPPINSTALLAD :: CreativeSize_NativeTemplate
pattern CreativeSize_NativeTemplate_NATIVEAPPINSTALLAD = CreativeSize_NativeTemplate "NATIVE_APP_INSTALL_AD"

-- | The creative is linked to native video content ad.
pattern CreativeSize_NativeTemplate_NATIVEVIDEOCONTENTAD :: CreativeSize_NativeTemplate
pattern CreativeSize_NativeTemplate_NATIVEVIDEOCONTENTAD = CreativeSize_NativeTemplate "NATIVE_VIDEO_CONTENT_AD"

-- | The creative is linked to native video app install ad.
pattern CreativeSize_NativeTemplate_NATIVEVIDEOAPPINSTALLAD :: CreativeSize_NativeTemplate
pattern CreativeSize_NativeTemplate_NATIVEVIDEOAPPINSTALLAD = CreativeSize_NativeTemplate "NATIVE_VIDEO_APP_INSTALL_AD"

{-# COMPLETE
  CreativeSize_NativeTemplate_UNKNOWNNATIVETEMPLATE,
  CreativeSize_NativeTemplate_NATIVECONTENTAD,
  CreativeSize_NativeTemplate_NATIVEAPPINSTALLAD,
  CreativeSize_NativeTemplate_NATIVEVIDEOCONTENTAD,
  CreativeSize_NativeTemplate_NATIVEVIDEOAPPINSTALLAD,
  CreativeSize_NativeTemplate
  #-}

-- | The type of skippable ad for this creative. It will have a value only if creative/size/type = CreativeSizeType.VIDEO.
newtype CreativeSize_SkippableAdType = CreativeSize_SkippableAdType {fromCreativeSize_SkippableAdType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined skippable ad type.
pattern CreativeSize_SkippableAdType_SKIPPABLEADTYPEUNSPECIFIED :: CreativeSize_SkippableAdType
pattern CreativeSize_SkippableAdType_SKIPPABLEADTYPEUNSPECIFIED = CreativeSize_SkippableAdType "SKIPPABLE_AD_TYPE_UNSPECIFIED"

-- | This video ad can be skipped after 5 seconds.
pattern CreativeSize_SkippableAdType_Generic :: CreativeSize_SkippableAdType
pattern CreativeSize_SkippableAdType_Generic = CreativeSize_SkippableAdType "GENERIC"

-- | This video ad can be skipped after 5 seconds, and count as engaged view after 30 seconds. The creative is hosted on YouTube only, and viewcount of the YouTube video increments after the engaged view.
pattern CreativeSize_SkippableAdType_INSTREAMSELECT :: CreativeSize_SkippableAdType
pattern CreativeSize_SkippableAdType_INSTREAMSELECT = CreativeSize_SkippableAdType "INSTREAM_SELECT"

-- | This video ad is not skippable.
pattern CreativeSize_SkippableAdType_NOTSKIPPABLE :: CreativeSize_SkippableAdType
pattern CreativeSize_SkippableAdType_NOTSKIPPABLE = CreativeSize_SkippableAdType "NOT_SKIPPABLE"

{-# COMPLETE
  CreativeSize_SkippableAdType_SKIPPABLEADTYPEUNSPECIFIED,
  CreativeSize_SkippableAdType_Generic,
  CreativeSize_SkippableAdType_INSTREAMSELECT,
  CreativeSize_SkippableAdType_NOTSKIPPABLE,
  CreativeSize_SkippableAdType
  #-}

-- | The day of the week to target. If unspecified, applicable to all days.
newtype DayPart_DayOfWeek = DayPart_DayOfWeek {fromDayPart_DayOfWeek :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for when the day of the week is not specified.
pattern DayPart_DayOfWeek_DAYOFWEEKUNSPECIFIED :: DayPart_DayOfWeek
pattern DayPart_DayOfWeek_DAYOFWEEKUNSPECIFIED = DayPart_DayOfWeek "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern DayPart_DayOfWeek_Monday :: DayPart_DayOfWeek
pattern DayPart_DayOfWeek_Monday = DayPart_DayOfWeek "MONDAY"

-- | Tuesday
pattern DayPart_DayOfWeek_Tuesday :: DayPart_DayOfWeek
pattern DayPart_DayOfWeek_Tuesday = DayPart_DayOfWeek "TUESDAY"

-- | Wednesday
pattern DayPart_DayOfWeek_Wednesday :: DayPart_DayOfWeek
pattern DayPart_DayOfWeek_Wednesday = DayPart_DayOfWeek "WEDNESDAY"

-- | Thursday
pattern DayPart_DayOfWeek_Thursday :: DayPart_DayOfWeek
pattern DayPart_DayOfWeek_Thursday = DayPart_DayOfWeek "THURSDAY"

-- | Friday
pattern DayPart_DayOfWeek_Friday :: DayPart_DayOfWeek
pattern DayPart_DayOfWeek_Friday = DayPart_DayOfWeek "FRIDAY"

-- | Saturday
pattern DayPart_DayOfWeek_Saturday :: DayPart_DayOfWeek
pattern DayPart_DayOfWeek_Saturday = DayPart_DayOfWeek "SATURDAY"

-- | Sunday
pattern DayPart_DayOfWeek_Sunday :: DayPart_DayOfWeek
pattern DayPart_DayOfWeek_Sunday = DayPart_DayOfWeek "SUNDAY"

{-# COMPLETE
  DayPart_DayOfWeek_DAYOFWEEKUNSPECIFIED,
  DayPart_DayOfWeek_Monday,
  DayPart_DayOfWeek_Tuesday,
  DayPart_DayOfWeek_Wednesday,
  DayPart_DayOfWeek_Thursday,
  DayPart_DayOfWeek_Friday,
  DayPart_DayOfWeek_Saturday,
  DayPart_DayOfWeek_Sunday,
  DayPart_DayOfWeek
  #-}

-- | The timezone to use for interpreting the day part targeting.
newtype DayPartTargeting_TimeZoneType = DayPartTargeting_TimeZoneType {fromDayPartTargeting_TimeZoneType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined time zone source.
pattern DayPartTargeting_TimeZoneType_TIMEZONESOURCEUNSPECIFIED :: DayPartTargeting_TimeZoneType
pattern DayPartTargeting_TimeZoneType_TIMEZONESOURCEUNSPECIFIED = DayPartTargeting_TimeZoneType "TIME_ZONE_SOURCE_UNSPECIFIED"

-- | Use publisher\'s time zone setting.
pattern DayPartTargeting_TimeZoneType_Publisher :: DayPartTargeting_TimeZoneType
pattern DayPartTargeting_TimeZoneType_Publisher = DayPartTargeting_TimeZoneType "PUBLISHER"

-- | Use the user\'s time zone setting.
pattern DayPartTargeting_TimeZoneType_User :: DayPartTargeting_TimeZoneType
pattern DayPartTargeting_TimeZoneType_User = DayPartTargeting_TimeZoneType "USER"

{-# COMPLETE
  DayPartTargeting_TimeZoneType_TIMEZONESOURCEUNSPECIFIED,
  DayPartTargeting_TimeZoneType_Publisher,
  DayPartTargeting_TimeZoneType_User,
  DayPartTargeting_TimeZoneType
  #-}

-- | Output only. Specifies the creative pre-approval policy.
newtype Deal_CreativePreApprovalPolicy = Deal_CreativePreApprovalPolicy {fromDeal_CreativePreApprovalPolicy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined creative pre-approval policy.
pattern Deal_CreativePreApprovalPolicy_CREATIVEPREAPPROVALPOLICYUNSPECIFIED :: Deal_CreativePreApprovalPolicy
pattern Deal_CreativePreApprovalPolicy_CREATIVEPREAPPROVALPOLICYUNSPECIFIED = Deal_CreativePreApprovalPolicy "CREATIVE_PRE_APPROVAL_POLICY_UNSPECIFIED"

-- | The seller needs to approve each creative before it can serve.
pattern Deal_CreativePreApprovalPolicy_SELLERPREAPPROVALREQUIRED :: Deal_CreativePreApprovalPolicy
pattern Deal_CreativePreApprovalPolicy_SELLERPREAPPROVALREQUIRED = Deal_CreativePreApprovalPolicy "SELLER_PRE_APPROVAL_REQUIRED"

-- | The seller does not need to approve each creative before it can serve.
pattern Deal_CreativePreApprovalPolicy_SELLERPREAPPROVALNOTREQUIRED :: Deal_CreativePreApprovalPolicy
pattern Deal_CreativePreApprovalPolicy_SELLERPREAPPROVALNOTREQUIRED = Deal_CreativePreApprovalPolicy "SELLER_PRE_APPROVAL_NOT_REQUIRED"

{-# COMPLETE
  Deal_CreativePreApprovalPolicy_CREATIVEPREAPPROVALPOLICYUNSPECIFIED,
  Deal_CreativePreApprovalPolicy_SELLERPREAPPROVALREQUIRED,
  Deal_CreativePreApprovalPolicy_SELLERPREAPPROVALNOTREQUIRED,
  Deal_CreativePreApprovalPolicy
  #-}

-- | Output only. Specifies whether the creative is safeFrame compatible.
newtype Deal_CreativeSafeFrameCompatibility = Deal_CreativeSafeFrameCompatibility {fromDeal_CreativeSafeFrameCompatibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined creative safe-frame compatibility.
pattern Deal_CreativeSafeFrameCompatibility_CREATIVESAFEFRAMECOMPATIBILITYUNSPECIFIED :: Deal_CreativeSafeFrameCompatibility
pattern Deal_CreativeSafeFrameCompatibility_CREATIVESAFEFRAMECOMPATIBILITYUNSPECIFIED = Deal_CreativeSafeFrameCompatibility "CREATIVE_SAFE_FRAME_COMPATIBILITY_UNSPECIFIED"

-- | The creatives need to be compatible with the safe frame option.
pattern Deal_CreativeSafeFrameCompatibility_Compatible :: Deal_CreativeSafeFrameCompatibility
pattern Deal_CreativeSafeFrameCompatibility_Compatible = Deal_CreativeSafeFrameCompatibility "COMPATIBLE"

-- | The creatives can be incompatible with the safe frame option.
pattern Deal_CreativeSafeFrameCompatibility_Incompatible :: Deal_CreativeSafeFrameCompatibility
pattern Deal_CreativeSafeFrameCompatibility_Incompatible = Deal_CreativeSafeFrameCompatibility "INCOMPATIBLE"

{-# COMPLETE
  Deal_CreativeSafeFrameCompatibility_CREATIVESAFEFRAMECOMPATIBILITYUNSPECIFIED,
  Deal_CreativeSafeFrameCompatibility_Compatible,
  Deal_CreativeSafeFrameCompatibility_Incompatible,
  Deal_CreativeSafeFrameCompatibility
  #-}

-- | Output only. Specifies the creative source for programmatic deals. PUBLISHER means creative is provided by seller and ADVERTISER means creative is provided by buyer.
newtype Deal_ProgrammaticCreativeSource = Deal_ProgrammaticCreativeSource {fromDeal_ProgrammaticCreativeSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined programmatic creative source.
pattern Deal_ProgrammaticCreativeSource_PROGRAMMATICCREATIVESOURCEUNSPECIFIED :: Deal_ProgrammaticCreativeSource
pattern Deal_ProgrammaticCreativeSource_PROGRAMMATICCREATIVESOURCEUNSPECIFIED = Deal_ProgrammaticCreativeSource "PROGRAMMATIC_CREATIVE_SOURCE_UNSPECIFIED"

-- | The advertiser provides the creatives.
pattern Deal_ProgrammaticCreativeSource_Advertiser :: Deal_ProgrammaticCreativeSource
pattern Deal_ProgrammaticCreativeSource_Advertiser = Deal_ProgrammaticCreativeSource "ADVERTISER"

-- | The publisher provides the creatives to be served.
pattern Deal_ProgrammaticCreativeSource_Publisher :: Deal_ProgrammaticCreativeSource
pattern Deal_ProgrammaticCreativeSource_Publisher = Deal_ProgrammaticCreativeSource "PUBLISHER"

{-# COMPLETE
  Deal_ProgrammaticCreativeSource_PROGRAMMATICCREATIVESOURCEUNSPECIFIED,
  Deal_ProgrammaticCreativeSource_Advertiser,
  Deal_ProgrammaticCreativeSource_Publisher,
  Deal_ProgrammaticCreativeSource
  #-}

-- | The syndication product associated with the deal. Note: This field may be set only when creating the resource. Modifying this field while updating the resource will result in an error.
newtype Deal_SyndicationProduct = Deal_SyndicationProduct {fromDeal_SyndicationProduct :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined syndication product.
pattern Deal_SyndicationProduct_SYNDICATIONPRODUCTUNSPECIFIED :: Deal_SyndicationProduct
pattern Deal_SyndicationProduct_SYNDICATIONPRODUCTUNSPECIFIED = Deal_SyndicationProduct "SYNDICATION_PRODUCT_UNSPECIFIED"

-- | This typically represents a web page.
pattern Deal_SyndicationProduct_Content :: Deal_SyndicationProduct
pattern Deal_SyndicationProduct_Content = Deal_SyndicationProduct "CONTENT"

-- | This represents a mobile property.
pattern Deal_SyndicationProduct_Mobile :: Deal_SyndicationProduct
pattern Deal_SyndicationProduct_Mobile = Deal_SyndicationProduct "MOBILE"

-- | This represents video ad formats.
pattern Deal_SyndicationProduct_Video :: Deal_SyndicationProduct
pattern Deal_SyndicationProduct_Video = Deal_SyndicationProduct "VIDEO"

-- | This represents ads shown within games.
pattern Deal_SyndicationProduct_Games :: Deal_SyndicationProduct
pattern Deal_SyndicationProduct_Games = Deal_SyndicationProduct "GAMES"

{-# COMPLETE
  Deal_SyndicationProduct_SYNDICATIONPRODUCTUNSPECIFIED,
  Deal_SyndicationProduct_Content,
  Deal_SyndicationProduct_Mobile,
  Deal_SyndicationProduct_Video,
  Deal_SyndicationProduct_Games,
  Deal_SyndicationProduct
  #-}

-- | The role of the person who first paused this deal.
newtype DealPauseStatus_FirstPausedBy = DealPauseStatus_FirstPausedBy {fromDealPauseStatus_FirstPausedBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined buyer\/seller role.
pattern DealPauseStatus_FirstPausedBy_BUYERSELLERROLEUNSPECIFIED :: DealPauseStatus_FirstPausedBy
pattern DealPauseStatus_FirstPausedBy_BUYERSELLERROLEUNSPECIFIED = DealPauseStatus_FirstPausedBy "BUYER_SELLER_ROLE_UNSPECIFIED"

-- | Specifies the role as buyer.
pattern DealPauseStatus_FirstPausedBy_Buyer :: DealPauseStatus_FirstPausedBy
pattern DealPauseStatus_FirstPausedBy_Buyer = DealPauseStatus_FirstPausedBy "BUYER"

-- | Specifies the role as seller.
pattern DealPauseStatus_FirstPausedBy_Seller :: DealPauseStatus_FirstPausedBy
pattern DealPauseStatus_FirstPausedBy_Seller = DealPauseStatus_FirstPausedBy "SELLER"

{-# COMPLETE
  DealPauseStatus_FirstPausedBy_BUYERSELLERROLEUNSPECIFIED,
  DealPauseStatus_FirstPausedBy_Buyer,
  DealPauseStatus_FirstPausedBy_Seller,
  DealPauseStatus_FirstPausedBy
  #-}

-- | Visibility of the URL in bid requests. (default: BRANDED)
newtype DealTerms_BrandingType = DealTerms_BrandingType {fromDealTerms_BrandingType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined branding type.
pattern DealTerms_BrandingType_BRANDINGTYPEUNSPECIFIED :: DealTerms_BrandingType
pattern DealTerms_BrandingType_BRANDINGTYPEUNSPECIFIED = DealTerms_BrandingType "BRANDING_TYPE_UNSPECIFIED"

-- | Full URL is included in bid requests.
pattern DealTerms_BrandingType_Branded :: DealTerms_BrandingType
pattern DealTerms_BrandingType_Branded = DealTerms_BrandingType "BRANDED"

-- | A TopLevelDomain or masked URL is sent in bid requests rather than the full one.
pattern DealTerms_BrandingType_SEMITRANSPARENT :: DealTerms_BrandingType
pattern DealTerms_BrandingType_SEMITRANSPARENT = DealTerms_BrandingType "SEMI_TRANSPARENT"

{-# COMPLETE
  DealTerms_BrandingType_BRANDINGTYPEUNSPECIFIED,
  DealTerms_BrandingType_Branded,
  DealTerms_BrandingType_SEMITRANSPARENT,
  DealTerms_BrandingType
  #-}

-- | Output only. Specified the creative blocking levels to be applied.
newtype DeliveryControl_CreativeBlockingLevel = DeliveryControl_CreativeBlockingLevel {fromDeliveryControl_CreativeBlockingLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined creative blocking level.
pattern DeliveryControl_CreativeBlockingLevel_CREATIVEBLOCKINGLEVELUNSPECIFIED :: DeliveryControl_CreativeBlockingLevel
pattern DeliveryControl_CreativeBlockingLevel_CREATIVEBLOCKINGLEVELUNSPECIFIED = DeliveryControl_CreativeBlockingLevel "CREATIVE_BLOCKING_LEVEL_UNSPECIFIED"

-- | Publisher blocking rules will be applied.
pattern DeliveryControl_CreativeBlockingLevel_PUBLISHERBLOCKINGRULES :: DeliveryControl_CreativeBlockingLevel
pattern DeliveryControl_CreativeBlockingLevel_PUBLISHERBLOCKINGRULES = DeliveryControl_CreativeBlockingLevel "PUBLISHER_BLOCKING_RULES"

-- | The Ad Exchange policy blocking rules will be applied.
pattern DeliveryControl_CreativeBlockingLevel_ADXPOLICYBLOCKINGONLY :: DeliveryControl_CreativeBlockingLevel
pattern DeliveryControl_CreativeBlockingLevel_ADXPOLICYBLOCKINGONLY = DeliveryControl_CreativeBlockingLevel "ADX_POLICY_BLOCKING_ONLY"

{-# COMPLETE
  DeliveryControl_CreativeBlockingLevel_CREATIVEBLOCKINGLEVELUNSPECIFIED,
  DeliveryControl_CreativeBlockingLevel_PUBLISHERBLOCKINGRULES,
  DeliveryControl_CreativeBlockingLevel_ADXPOLICYBLOCKINGONLY,
  DeliveryControl_CreativeBlockingLevel
  #-}

-- | Output only. Specifies how the impression delivery will be paced.
newtype DeliveryControl_DeliveryRateType = DeliveryControl_DeliveryRateType {fromDeliveryControl_DeliveryRateType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined delivery rate type.
pattern DeliveryControl_DeliveryRateType_DELIVERYRATETYPEUNSPECIFIED :: DeliveryControl_DeliveryRateType
pattern DeliveryControl_DeliveryRateType_DELIVERYRATETYPEUNSPECIFIED = DeliveryControl_DeliveryRateType "DELIVERY_RATE_TYPE_UNSPECIFIED"

-- | Impressions are served uniformly over the life of the deal.
pattern DeliveryControl_DeliveryRateType_Evenly :: DeliveryControl_DeliveryRateType
pattern DeliveryControl_DeliveryRateType_Evenly = DeliveryControl_DeliveryRateType "EVENLY"

-- | Impressions are served front-loaded.
pattern DeliveryControl_DeliveryRateType_FRONTLOADED :: DeliveryControl_DeliveryRateType
pattern DeliveryControl_DeliveryRateType_FRONTLOADED = DeliveryControl_DeliveryRateType "FRONT_LOADED"

-- | Impressions are served as fast as possible.
pattern DeliveryControl_DeliveryRateType_ASFASTASPOSSIBLE :: DeliveryControl_DeliveryRateType
pattern DeliveryControl_DeliveryRateType_ASFASTASPOSSIBLE = DeliveryControl_DeliveryRateType "AS_FAST_AS_POSSIBLE"

{-# COMPLETE
  DeliveryControl_DeliveryRateType_DELIVERYRATETYPEUNSPECIFIED,
  DeliveryControl_DeliveryRateType_Evenly,
  DeliveryControl_DeliveryRateType_FRONTLOADED,
  DeliveryControl_DeliveryRateType_ASFASTASPOSSIBLE,
  DeliveryControl_DeliveryRateType
  #-}

-- | The categorized reason for disapproval.
newtype Disapproval_Reason = Disapproval_Reason {fromDisapproval_Reason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The length of the image animation is longer than allowed.
pattern Disapproval_Reason_LENGTHOFIMAGEANIMATION :: Disapproval_Reason
pattern Disapproval_Reason_LENGTHOFIMAGEANIMATION = Disapproval_Reason "LENGTH_OF_IMAGE_ANIMATION"

-- | The click through URL doesn\'t work properly.
pattern Disapproval_Reason_BROKENURL :: Disapproval_Reason
pattern Disapproval_Reason_BROKENURL = Disapproval_Reason "BROKEN_URL"

-- | Something is wrong with the creative itself.
pattern Disapproval_Reason_MEDIANOTFUNCTIONAL :: Disapproval_Reason
pattern Disapproval_Reason_MEDIANOTFUNCTIONAL = Disapproval_Reason "MEDIA_NOT_FUNCTIONAL"

-- | The ad makes a fourth party call to an unapproved vendor.
pattern Disapproval_Reason_INVALIDFOURTHPARTYCALL :: Disapproval_Reason
pattern Disapproval_Reason_INVALIDFOURTHPARTYCALL = Disapproval_Reason "INVALID_FOURTH_PARTY_CALL"

-- | The ad targets consumers using remarketing lists and\/or collects data for subsequent use in retargeting, but does not correctly declare that use.
pattern Disapproval_Reason_INCORRECTREMARKETINGDECLARATION :: Disapproval_Reason
pattern Disapproval_Reason_INCORRECTREMARKETINGDECLARATION = Disapproval_Reason "INCORRECT_REMARKETING_DECLARATION"

-- | Clicking on the ad leads to an error page.
pattern Disapproval_Reason_LANDINGPAGEERROR :: Disapproval_Reason
pattern Disapproval_Reason_LANDINGPAGEERROR = Disapproval_Reason "LANDING_PAGE_ERROR"

-- | The ad size when rendered does not match the declaration.
pattern Disapproval_Reason_ADSIZEDOESNOTMATCHADSLOT :: Disapproval_Reason
pattern Disapproval_Reason_ADSIZEDOESNOTMATCHADSLOT = Disapproval_Reason "AD_SIZE_DOES_NOT_MATCH_AD_SLOT"

-- | Ads with a white background require a border, which was missing.
pattern Disapproval_Reason_NOBORDER :: Disapproval_Reason
pattern Disapproval_Reason_NOBORDER = Disapproval_Reason "NO_BORDER"

-- | The creative attempts to set cookies from a fourth party that is not certified.
pattern Disapproval_Reason_FOURTHPARTYBROWSERCOOKIES :: Disapproval_Reason
pattern Disapproval_Reason_FOURTHPARTYBROWSERCOOKIES = Disapproval_Reason "FOURTH_PARTY_BROWSER_COOKIES"

-- | The creative sets an LSO object.
pattern Disapproval_Reason_LSOOBJECTS :: Disapproval_Reason
pattern Disapproval_Reason_LSOOBJECTS = Disapproval_Reason "LSO_OBJECTS"

-- | The ad serves a blank.
pattern Disapproval_Reason_BLANKCREATIVE :: Disapproval_Reason
pattern Disapproval_Reason_BLANKCREATIVE = Disapproval_Reason "BLANK_CREATIVE"

-- | The ad uses rotation, but not all destination URLs were declared.
pattern Disapproval_Reason_DESTINATIONURLSUNDECLARED :: Disapproval_Reason
pattern Disapproval_Reason_DESTINATIONURLSUNDECLARED = Disapproval_Reason "DESTINATION_URLS_UNDECLARED"

-- | There is a problem with the way the click macro is used.
pattern Disapproval_Reason_PROBLEMWITHCLICKMACRO :: Disapproval_Reason
pattern Disapproval_Reason_PROBLEMWITHCLICKMACRO = Disapproval_Reason "PROBLEM_WITH_CLICK_MACRO"

-- | The ad technology declaration is not accurate.
pattern Disapproval_Reason_INCORRECTADTECHNOLOGYDECLARATION :: Disapproval_Reason
pattern Disapproval_Reason_INCORRECTADTECHNOLOGYDECLARATION = Disapproval_Reason "INCORRECT_AD_TECHNOLOGY_DECLARATION"

-- | The actual destination URL does not match the declared destination URL.
pattern Disapproval_Reason_INCORRECTDESTINATIONURLDECLARATION :: Disapproval_Reason
pattern Disapproval_Reason_INCORRECTDESTINATIONURLDECLARATION = Disapproval_Reason "INCORRECT_DESTINATION_URL_DECLARATION"

-- | The declared expanding direction does not match the actual direction.
pattern Disapproval_Reason_EXPANDABLEINCORRECTDIRECTION :: Disapproval_Reason
pattern Disapproval_Reason_EXPANDABLEINCORRECTDIRECTION = Disapproval_Reason "EXPANDABLE_INCORRECT_DIRECTION"

-- | The ad does not expand in a supported direction.
pattern Disapproval_Reason_EXPANDABLEDIRECTIONNOTSUPPORTED :: Disapproval_Reason
pattern Disapproval_Reason_EXPANDABLEDIRECTIONNOTSUPPORTED = Disapproval_Reason "EXPANDABLE_DIRECTION_NOT_SUPPORTED"

-- | The ad uses an expandable vendor that is not supported.
pattern Disapproval_Reason_EXPANDABLEINVALIDVENDOR :: Disapproval_Reason
pattern Disapproval_Reason_EXPANDABLEINVALIDVENDOR = Disapproval_Reason "EXPANDABLE_INVALID_VENDOR"

-- | There was an issue with the expandable ad.
pattern Disapproval_Reason_EXPANDABLEFUNCTIONALITY :: Disapproval_Reason
pattern Disapproval_Reason_EXPANDABLEFUNCTIONALITY = Disapproval_Reason "EXPANDABLE_FUNCTIONALITY"

-- | The ad uses a video vendor that is not supported.
pattern Disapproval_Reason_VIDEOINVALIDVENDOR :: Disapproval_Reason
pattern Disapproval_Reason_VIDEOINVALIDVENDOR = Disapproval_Reason "VIDEO_INVALID_VENDOR"

-- | The length of the video ad is not supported.
pattern Disapproval_Reason_VIDEOUNSUPPORTEDLENGTH :: Disapproval_Reason
pattern Disapproval_Reason_VIDEOUNSUPPORTEDLENGTH = Disapproval_Reason "VIDEO_UNSUPPORTED_LENGTH"

-- | The format of the video ad is not supported.
pattern Disapproval_Reason_VIDEOUNSUPPORTEDFORMAT :: Disapproval_Reason
pattern Disapproval_Reason_VIDEOUNSUPPORTEDFORMAT = Disapproval_Reason "VIDEO_UNSUPPORTED_FORMAT"

-- | There was an issue with the video ad.
pattern Disapproval_Reason_VIDEOFUNCTIONALITY :: Disapproval_Reason
pattern Disapproval_Reason_VIDEOFUNCTIONALITY = Disapproval_Reason "VIDEO_FUNCTIONALITY"

-- | The landing page does not conform to Ad Exchange policy.
pattern Disapproval_Reason_LANDINGPAGEDISABLED :: Disapproval_Reason
pattern Disapproval_Reason_LANDINGPAGEDISABLED = Disapproval_Reason "LANDING_PAGE_DISABLED"

-- | The ad or the landing page may contain malware.
pattern Disapproval_Reason_MALWARESUSPECTED :: Disapproval_Reason
pattern Disapproval_Reason_MALWARESUSPECTED = Disapproval_Reason "MALWARE_SUSPECTED"

-- | The ad contains adult images or video content.
pattern Disapproval_Reason_ADULTIMAGEORVIDEO :: Disapproval_Reason
pattern Disapproval_Reason_ADULTIMAGEORVIDEO = Disapproval_Reason "ADULT_IMAGE_OR_VIDEO"

-- | The ad contains text that is unclear or inaccurate.
pattern Disapproval_Reason_INACCURATEADTEXT :: Disapproval_Reason
pattern Disapproval_Reason_INACCURATEADTEXT = Disapproval_Reason "INACCURATE_AD_TEXT"

-- | The ad promotes counterfeit designer goods.
pattern Disapproval_Reason_COUNTERFEITDESIGNERGOODS :: Disapproval_Reason
pattern Disapproval_Reason_COUNTERFEITDESIGNERGOODS = Disapproval_Reason "COUNTERFEIT_DESIGNER_GOODS"

-- | The ad causes a popup window to appear.
pattern Disapproval_Reason_POPUP :: Disapproval_Reason
pattern Disapproval_Reason_POPUP = Disapproval_Reason "POP_UP"

-- | The creative does not follow policies set for the RTB protocol.
pattern Disapproval_Reason_INVALIDRTBPROTOCOLUSAGE :: Disapproval_Reason
pattern Disapproval_Reason_INVALIDRTBPROTOCOLUSAGE = Disapproval_Reason "INVALID_RTB_PROTOCOL_USAGE"

-- | The ad contains a URL that uses a numeric IP address for the domain.
pattern Disapproval_Reason_RAWIPADDRESSINSNIPPET :: Disapproval_Reason
pattern Disapproval_Reason_RAWIPADDRESSINSNIPPET = Disapproval_Reason "RAW_IP_ADDRESS_IN_SNIPPET"

-- | The ad or landing page contains unacceptable content because it initiated a software or executable download.
pattern Disapproval_Reason_UNACCEPTABLECONTENTSOFTWARE :: Disapproval_Reason
pattern Disapproval_Reason_UNACCEPTABLECONTENTSOFTWARE = Disapproval_Reason "UNACCEPTABLE_CONTENT_SOFTWARE"

-- | The ad set an unauthorized cookie on a Google domain.
pattern Disapproval_Reason_UNAUTHORIZEDCOOKIEONGOOGLEDOMAIN :: Disapproval_Reason
pattern Disapproval_Reason_UNAUTHORIZEDCOOKIEONGOOGLEDOMAIN = Disapproval_Reason "UNAUTHORIZED_COOKIE_ON_GOOGLE_DOMAIN"

-- | Flash content found when no flash was declared.
pattern Disapproval_Reason_UNDECLAREDFLASHOBJECTS :: Disapproval_Reason
pattern Disapproval_Reason_UNDECLAREDFLASHOBJECTS = Disapproval_Reason "UNDECLARED_FLASH_OBJECTS"

-- | SSL support declared but not working correctly.
pattern Disapproval_Reason_INVALIDSSLDECLARATION :: Disapproval_Reason
pattern Disapproval_Reason_INVALIDSSLDECLARATION = Disapproval_Reason "INVALID_SSL_DECLARATION"

-- | Rich Media - Direct Download in Ad (ex. PDF download).
pattern Disapproval_Reason_DIRECTDOWNLOADINAD :: Disapproval_Reason
pattern Disapproval_Reason_DIRECTDOWNLOADINAD = Disapproval_Reason "DIRECT_DOWNLOAD_IN_AD"

-- | Maximum download size exceeded.
pattern Disapproval_Reason_MAXIMUMDOWNLOADSIZEEXCEEDED :: Disapproval_Reason
pattern Disapproval_Reason_MAXIMUMDOWNLOADSIZEEXCEEDED = Disapproval_Reason "MAXIMUM_DOWNLOAD_SIZE_EXCEEDED"

-- | Bad Destination URL: Site Not Crawlable.
pattern Disapproval_Reason_DESTINATIONURLSITENOTCRAWLABLE :: Disapproval_Reason
pattern Disapproval_Reason_DESTINATIONURLSITENOTCRAWLABLE = Disapproval_Reason "DESTINATION_URL_SITE_NOT_CRAWLABLE"

-- | Bad URL: Legal disapproval.
pattern Disapproval_Reason_BADURLLEGALDISAPPROVAL :: Disapproval_Reason
pattern Disapproval_Reason_BADURLLEGALDISAPPROVAL = Disapproval_Reason "BAD_URL_LEGAL_DISAPPROVAL"

-- | Pharmaceuticals, Gambling, Alcohol not allowed and at least one was detected.
pattern Disapproval_Reason_PHARMAGAMBLINGALCOHOLNOTALLOWED :: Disapproval_Reason
pattern Disapproval_Reason_PHARMAGAMBLINGALCOHOLNOTALLOWED = Disapproval_Reason "PHARMA_GAMBLING_ALCOHOL_NOT_ALLOWED"

-- | Dynamic DNS at Destination URL.
pattern Disapproval_Reason_DYNAMICDNSATDESTINATIONURL :: Disapproval_Reason
pattern Disapproval_Reason_DYNAMICDNSATDESTINATIONURL = Disapproval_Reason "DYNAMIC_DNS_AT_DESTINATION_URL"

-- | Poor Image \/ Video Quality.
pattern Disapproval_Reason_POORIMAGEORVIDEOQUALITY :: Disapproval_Reason
pattern Disapproval_Reason_POORIMAGEORVIDEOQUALITY = Disapproval_Reason "POOR_IMAGE_OR_VIDEO_QUALITY"

-- | For example, Image Trick to Click.
pattern Disapproval_Reason_UNACCEPTABLEIMAGECONTENT :: Disapproval_Reason
pattern Disapproval_Reason_UNACCEPTABLEIMAGECONTENT = Disapproval_Reason "UNACCEPTABLE_IMAGE_CONTENT"

-- | Incorrect Image Layout.
pattern Disapproval_Reason_INCORRECTIMAGELAYOUT :: Disapproval_Reason
pattern Disapproval_Reason_INCORRECTIMAGELAYOUT = Disapproval_Reason "INCORRECT_IMAGE_LAYOUT"

-- | Irrelevant Image \/ Video.
pattern Disapproval_Reason_IRRELEVANTIMAGEORVIDEO :: Disapproval_Reason
pattern Disapproval_Reason_IRRELEVANTIMAGEORVIDEO = Disapproval_Reason "IRRELEVANT_IMAGE_OR_VIDEO"

-- | Broken back button.
pattern Disapproval_Reason_DESTINATIONSITEDOESNOTALLOWGOINGBACK :: Disapproval_Reason
pattern Disapproval_Reason_DESTINATIONSITEDOESNOTALLOWGOINGBACK = Disapproval_Reason "DESTINATION_SITE_DOES_NOT_ALLOW_GOING_BACK"

-- | Misleading\/Inaccurate claims in ads.
pattern Disapproval_Reason_MISLEADINGCLAIMSINAD :: Disapproval_Reason
pattern Disapproval_Reason_MISLEADINGCLAIMSINAD = Disapproval_Reason "MISLEADING_CLAIMS_IN_AD"

-- | Restricted Products.
pattern Disapproval_Reason_RESTRICTEDPRODUCTS :: Disapproval_Reason
pattern Disapproval_Reason_RESTRICTEDPRODUCTS = Disapproval_Reason "RESTRICTED_PRODUCTS"

-- | Unacceptable content. For example, malware.
pattern Disapproval_Reason_UNACCEPTABLECONTENT :: Disapproval_Reason
pattern Disapproval_Reason_UNACCEPTABLECONTENT = Disapproval_Reason "UNACCEPTABLE_CONTENT"

-- | The ad automatically redirects to the destination site without a click, or reports a click when none were made.
pattern Disapproval_Reason_AUTOMATEDADCLICKING :: Disapproval_Reason
pattern Disapproval_Reason_AUTOMATEDADCLICKING = Disapproval_Reason "AUTOMATED_AD_CLICKING"

-- | The ad uses URL protocols that do not exist or are not allowed on AdX.
pattern Disapproval_Reason_INVALIDURLPROTOCOL :: Disapproval_Reason
pattern Disapproval_Reason_INVALIDURLPROTOCOL = Disapproval_Reason "INVALID_URL_PROTOCOL"

-- | Restricted content (for example, alcohol) was found in the ad but not declared.
pattern Disapproval_Reason_UNDECLAREDRESTRICTEDCONTENT :: Disapproval_Reason
pattern Disapproval_Reason_UNDECLAREDRESTRICTEDCONTENT = Disapproval_Reason "UNDECLARED_RESTRICTED_CONTENT"

-- | Violation of the remarketing list policy.
pattern Disapproval_Reason_INVALIDREMARKETINGLISTUSAGE :: Disapproval_Reason
pattern Disapproval_Reason_INVALIDREMARKETINGLISTUSAGE = Disapproval_Reason "INVALID_REMARKETING_LIST_USAGE"

-- | The destination site\'s robot.txt file prevents it from being crawled.
pattern Disapproval_Reason_DESTINATIONSITENOTCRAWLABLEROBOTSTXT :: Disapproval_Reason
pattern Disapproval_Reason_DESTINATIONSITENOTCRAWLABLEROBOTSTXT = Disapproval_Reason "DESTINATION_SITE_NOT_CRAWLABLE_ROBOTS_TXT"

-- | Click to download must link to an app.
pattern Disapproval_Reason_CLICKTODOWNLOADNOTANAPP :: Disapproval_Reason
pattern Disapproval_Reason_CLICKTODOWNLOADNOTANAPP = Disapproval_Reason "CLICK_TO_DOWNLOAD_NOT_AN_APP"

-- | A review extension must be an accurate review.
pattern Disapproval_Reason_INACCURATEREVIEWEXTENSION :: Disapproval_Reason
pattern Disapproval_Reason_INACCURATEREVIEWEXTENSION = Disapproval_Reason "INACCURATE_REVIEW_EXTENSION"

-- | Sexually explicit content.
pattern Disapproval_Reason_SEXUALLYEXPLICITCONTENT :: Disapproval_Reason
pattern Disapproval_Reason_SEXUALLYEXPLICITCONTENT = Disapproval_Reason "SEXUALLY_EXPLICIT_CONTENT"

-- | The ad tries to gain an unfair traffic advantage.
pattern Disapproval_Reason_GAININGANUNFAIRADVANTAGE :: Disapproval_Reason
pattern Disapproval_Reason_GAININGANUNFAIRADVANTAGE = Disapproval_Reason "GAINING_AN_UNFAIR_ADVANTAGE"

-- | The ad tries to circumvent Google\'s advertising systems.
pattern Disapproval_Reason_GAMINGTHEGOOGLENETWORK :: Disapproval_Reason
pattern Disapproval_Reason_GAMINGTHEGOOGLENETWORK = Disapproval_Reason "GAMING_THE_GOOGLE_NETWORK"

-- | The ad promotes dangerous knives.
pattern Disapproval_Reason_DANGEROUSPRODUCTSKNIVES :: Disapproval_Reason
pattern Disapproval_Reason_DANGEROUSPRODUCTSKNIVES = Disapproval_Reason "DANGEROUS_PRODUCTS_KNIVES"

-- | The ad promotes explosives.
pattern Disapproval_Reason_DANGEROUSPRODUCTSEXPLOSIVES :: Disapproval_Reason
pattern Disapproval_Reason_DANGEROUSPRODUCTSEXPLOSIVES = Disapproval_Reason "DANGEROUS_PRODUCTS_EXPLOSIVES"

-- | The ad promotes guns & parts.
pattern Disapproval_Reason_DANGEROUSPRODUCTSGUNS :: Disapproval_Reason
pattern Disapproval_Reason_DANGEROUSPRODUCTSGUNS = Disapproval_Reason "DANGEROUS_PRODUCTS_GUNS"

-- | The ad promotes recreational drugs\/services & related equipment.
pattern Disapproval_Reason_DANGEROUSPRODUCTSDRUGS :: Disapproval_Reason
pattern Disapproval_Reason_DANGEROUSPRODUCTSDRUGS = Disapproval_Reason "DANGEROUS_PRODUCTS_DRUGS"

-- | The ad promotes tobacco products\/services & related equipment.
pattern Disapproval_Reason_DANGEROUSPRODUCTSTOBACCO :: Disapproval_Reason
pattern Disapproval_Reason_DANGEROUSPRODUCTSTOBACCO = Disapproval_Reason "DANGEROUS_PRODUCTS_TOBACCO"

-- | The ad promotes weapons.
pattern Disapproval_Reason_DANGEROUSPRODUCTSWEAPONS :: Disapproval_Reason
pattern Disapproval_Reason_DANGEROUSPRODUCTSWEAPONS = Disapproval_Reason "DANGEROUS_PRODUCTS_WEAPONS"

-- | The ad is unclear or irrelevant to the destination site.
pattern Disapproval_Reason_UNCLEARORIRRELEVANTAD :: Disapproval_Reason
pattern Disapproval_Reason_UNCLEARORIRRELEVANTAD = Disapproval_Reason "UNCLEAR_OR_IRRELEVANT_AD"

-- | The ad does not meet professional standards.
pattern Disapproval_Reason_PROFESSIONALSTANDARDS :: Disapproval_Reason
pattern Disapproval_Reason_PROFESSIONALSTANDARDS = Disapproval_Reason "PROFESSIONAL_STANDARDS"

-- | The promotion is unnecessarily difficult to navigate.
pattern Disapproval_Reason_DYSFUNCTIONALPROMOTION :: Disapproval_Reason
pattern Disapproval_Reason_DYSFUNCTIONALPROMOTION = Disapproval_Reason "DYSFUNCTIONAL_PROMOTION"

-- | Violation of Google\'s policy for interest-based ads.
pattern Disapproval_Reason_INVALIDINTERESTBASEDAD :: Disapproval_Reason
pattern Disapproval_Reason_INVALIDINTERESTBASEDAD = Disapproval_Reason "INVALID_INTEREST_BASED_AD"

-- | Misuse of personal information.
pattern Disapproval_Reason_MISUSEOFPERSONALINFORMATION :: Disapproval_Reason
pattern Disapproval_Reason_MISUSEOFPERSONALINFORMATION = Disapproval_Reason "MISUSE_OF_PERSONAL_INFORMATION"

-- | Omission of relevant information.
pattern Disapproval_Reason_OMISSIONOFRELEVANTINFORMATION :: Disapproval_Reason
pattern Disapproval_Reason_OMISSIONOFRELEVANTINFORMATION = Disapproval_Reason "OMISSION_OF_RELEVANT_INFORMATION"

-- | Unavailable promotions.
pattern Disapproval_Reason_UNAVAILABLEPROMOTIONS :: Disapproval_Reason
pattern Disapproval_Reason_UNAVAILABLEPROMOTIONS = Disapproval_Reason "UNAVAILABLE_PROMOTIONS"

-- | Misleading or unrealistic promotions.
pattern Disapproval_Reason_MISLEADINGPROMOTIONS :: Disapproval_Reason
pattern Disapproval_Reason_MISLEADINGPROMOTIONS = Disapproval_Reason "MISLEADING_PROMOTIONS"

-- | Offensive or inappropriate content.
pattern Disapproval_Reason_INAPPROPRIATECONTENT :: Disapproval_Reason
pattern Disapproval_Reason_INAPPROPRIATECONTENT = Disapproval_Reason "INAPPROPRIATE_CONTENT"

-- | Capitalizing on sensitive events.
pattern Disapproval_Reason_SENSITIVEEVENTS :: Disapproval_Reason
pattern Disapproval_Reason_SENSITIVEEVENTS = Disapproval_Reason "SENSITIVE_EVENTS"

-- | Shocking content.
pattern Disapproval_Reason_SHOCKINGCONTENT :: Disapproval_Reason
pattern Disapproval_Reason_SHOCKINGCONTENT = Disapproval_Reason "SHOCKING_CONTENT"

-- | Products & Services that enable dishonest behavior.
pattern Disapproval_Reason_ENABLINGDISHONESTBEHAVIOR :: Disapproval_Reason
pattern Disapproval_Reason_ENABLINGDISHONESTBEHAVIOR = Disapproval_Reason "ENABLING_DISHONEST_BEHAVIOR"

-- | The ad does not meet technical requirements.
pattern Disapproval_Reason_TECHNICALREQUIREMENTS :: Disapproval_Reason
pattern Disapproval_Reason_TECHNICALREQUIREMENTS = Disapproval_Reason "TECHNICAL_REQUIREMENTS"

-- | Restricted political content.
pattern Disapproval_Reason_RESTRICTEDPOLITICALCONTENT :: Disapproval_Reason
pattern Disapproval_Reason_RESTRICTEDPOLITICALCONTENT = Disapproval_Reason "RESTRICTED_POLITICAL_CONTENT"

-- | Unsupported content.
pattern Disapproval_Reason_UNSUPPORTEDCONTENT :: Disapproval_Reason
pattern Disapproval_Reason_UNSUPPORTEDCONTENT = Disapproval_Reason "UNSUPPORTED_CONTENT"

-- | Invalid bidding method.
pattern Disapproval_Reason_INVALIDBIDDINGMETHOD :: Disapproval_Reason
pattern Disapproval_Reason_INVALIDBIDDINGMETHOD = Disapproval_Reason "INVALID_BIDDING_METHOD"

-- | Video length exceeds limits.
pattern Disapproval_Reason_VIDEOTOOLONG :: Disapproval_Reason
pattern Disapproval_Reason_VIDEOTOOLONG = Disapproval_Reason "VIDEO_TOO_LONG"

-- | Unacceptable content: Japanese healthcare.
pattern Disapproval_Reason_VIOLATESJAPANESEPHARMACYLAW :: Disapproval_Reason
pattern Disapproval_Reason_VIOLATESJAPANESEPHARMACYLAW = Disapproval_Reason "VIOLATES_JAPANESE_PHARMACY_LAW"

-- | Online pharmacy ID required.
pattern Disapproval_Reason_UNACCREDITEDPETPHARMACY :: Disapproval_Reason
pattern Disapproval_Reason_UNACCREDITEDPETPHARMACY = Disapproval_Reason "UNACCREDITED_PET_PHARMACY"

-- | Unacceptable content: Abortion.
pattern Disapproval_Reason_Abortion :: Disapproval_Reason
pattern Disapproval_Reason_Abortion = Disapproval_Reason "ABORTION"

-- | Unacceptable content: Birth control.
pattern Disapproval_Reason_Contraceptives :: Disapproval_Reason
pattern Disapproval_Reason_Contraceptives = Disapproval_Reason "CONTRACEPTIVES"

-- | Restricted in China.
pattern Disapproval_Reason_NEEDCERTIFICATESTOADVERTISEINCHINA :: Disapproval_Reason
pattern Disapproval_Reason_NEEDCERTIFICATESTOADVERTISEINCHINA = Disapproval_Reason "NEED_CERTIFICATES_TO_ADVERTISE_IN_CHINA"

-- | Unacceptable content: Korean healthcare.
pattern Disapproval_Reason_KCDSPREGISTRATION :: Disapproval_Reason
pattern Disapproval_Reason_KCDSPREGISTRATION = Disapproval_Reason "KCDSP_REGISTRATION"

-- | Non-family safe or adult content.
pattern Disapproval_Reason_NOTFAMILYSAFE :: Disapproval_Reason
pattern Disapproval_Reason_NOTFAMILYSAFE = Disapproval_Reason "NOT_FAMILY_SAFE"

-- | Clinical trial recruitment.
pattern Disapproval_Reason_CLINICALTRIALRECRUITMENT :: Disapproval_Reason
pattern Disapproval_Reason_CLINICALTRIALRECRUITMENT = Disapproval_Reason "CLINICAL_TRIAL_RECRUITMENT"

-- | Maximum number of HTTP calls exceeded.
pattern Disapproval_Reason_MAXIMUMNUMBEROFHTTPCALLSEXCEEDED :: Disapproval_Reason
pattern Disapproval_Reason_MAXIMUMNUMBEROFHTTPCALLSEXCEEDED = Disapproval_Reason "MAXIMUM_NUMBER_OF_HTTP_CALLS_EXCEEDED"

-- | Maximum number of cookies exceeded.
pattern Disapproval_Reason_MAXIMUMNUMBEROFCOOKIESEXCEEDED :: Disapproval_Reason
pattern Disapproval_Reason_MAXIMUMNUMBEROFCOOKIESEXCEEDED = Disapproval_Reason "MAXIMUM_NUMBER_OF_COOKIES_EXCEEDED"

-- | Financial service ad does not adhere to specifications.
pattern Disapproval_Reason_PERSONALLOANS :: Disapproval_Reason
pattern Disapproval_Reason_PERSONALLOANS = Disapproval_Reason "PERSONAL_LOANS"

-- | Flash content was found in an unsupported context.
pattern Disapproval_Reason_UNSUPPORTEDFLASHCONTENT :: Disapproval_Reason
pattern Disapproval_Reason_UNSUPPORTEDFLASHCONTENT = Disapproval_Reason "UNSUPPORTED_FLASH_CONTENT"

-- | Misuse by an Open Measurement SDK script.
pattern Disapproval_Reason_MISUSEBYOMIDSCRIPT :: Disapproval_Reason
pattern Disapproval_Reason_MISUSEBYOMIDSCRIPT = Disapproval_Reason "MISUSE_BY_OMID_SCRIPT"

-- | Use of an Open Measurement SDK vendor not on approved vendor list.
pattern Disapproval_Reason_NONWHITELISTEDOMIDVENDOR :: Disapproval_Reason
pattern Disapproval_Reason_NONWHITELISTEDOMIDVENDOR = Disapproval_Reason "NON_WHITELISTED_OMID_VENDOR"

-- | Unacceptable landing page.
pattern Disapproval_Reason_DESTINATIONEXPERIENCE :: Disapproval_Reason
pattern Disapproval_Reason_DESTINATIONEXPERIENCE = Disapproval_Reason "DESTINATION_EXPERIENCE"

-- | Unsupported language.
pattern Disapproval_Reason_UNSUPPORTEDLANGUAGE :: Disapproval_Reason
pattern Disapproval_Reason_UNSUPPORTEDLANGUAGE = Disapproval_Reason "UNSUPPORTED_LANGUAGE"

-- | Non-SSL compliant.
pattern Disapproval_Reason_NONSSLCOMPLIANT :: Disapproval_Reason
pattern Disapproval_Reason_NONSSLCOMPLIANT = Disapproval_Reason "NON_SSL_COMPLIANT"

-- | Temporary pausing of creative.
pattern Disapproval_Reason_TEMPORARYPAUSE :: Disapproval_Reason
pattern Disapproval_Reason_TEMPORARYPAUSE = Disapproval_Reason "TEMPORARY_PAUSE"

-- | Promotes services related to bail bonds.
pattern Disapproval_Reason_BAILBONDS :: Disapproval_Reason
pattern Disapproval_Reason_BAILBONDS = Disapproval_Reason "BAIL_BONDS"

-- | Promotes speculative and\/or experimental medical treatments.
pattern Disapproval_Reason_EXPERIMENTALMEDICALTREATMENT :: Disapproval_Reason
pattern Disapproval_Reason_EXPERIMENTALMEDICALTREATMENT = Disapproval_Reason "EXPERIMENTAL_MEDICAL_TREATMENT"

{-# COMPLETE
  Disapproval_Reason_LENGTHOFIMAGEANIMATION,
  Disapproval_Reason_BROKENURL,
  Disapproval_Reason_MEDIANOTFUNCTIONAL,
  Disapproval_Reason_INVALIDFOURTHPARTYCALL,
  Disapproval_Reason_INCORRECTREMARKETINGDECLARATION,
  Disapproval_Reason_LANDINGPAGEERROR,
  Disapproval_Reason_ADSIZEDOESNOTMATCHADSLOT,
  Disapproval_Reason_NOBORDER,
  Disapproval_Reason_FOURTHPARTYBROWSERCOOKIES,
  Disapproval_Reason_LSOOBJECTS,
  Disapproval_Reason_BLANKCREATIVE,
  Disapproval_Reason_DESTINATIONURLSUNDECLARED,
  Disapproval_Reason_PROBLEMWITHCLICKMACRO,
  Disapproval_Reason_INCORRECTADTECHNOLOGYDECLARATION,
  Disapproval_Reason_INCORRECTDESTINATIONURLDECLARATION,
  Disapproval_Reason_EXPANDABLEINCORRECTDIRECTION,
  Disapproval_Reason_EXPANDABLEDIRECTIONNOTSUPPORTED,
  Disapproval_Reason_EXPANDABLEINVALIDVENDOR,
  Disapproval_Reason_EXPANDABLEFUNCTIONALITY,
  Disapproval_Reason_VIDEOINVALIDVENDOR,
  Disapproval_Reason_VIDEOUNSUPPORTEDLENGTH,
  Disapproval_Reason_VIDEOUNSUPPORTEDFORMAT,
  Disapproval_Reason_VIDEOFUNCTIONALITY,
  Disapproval_Reason_LANDINGPAGEDISABLED,
  Disapproval_Reason_MALWARESUSPECTED,
  Disapproval_Reason_ADULTIMAGEORVIDEO,
  Disapproval_Reason_INACCURATEADTEXT,
  Disapproval_Reason_COUNTERFEITDESIGNERGOODS,
  Disapproval_Reason_POPUP,
  Disapproval_Reason_INVALIDRTBPROTOCOLUSAGE,
  Disapproval_Reason_RAWIPADDRESSINSNIPPET,
  Disapproval_Reason_UNACCEPTABLECONTENTSOFTWARE,
  Disapproval_Reason_UNAUTHORIZEDCOOKIEONGOOGLEDOMAIN,
  Disapproval_Reason_UNDECLAREDFLASHOBJECTS,
  Disapproval_Reason_INVALIDSSLDECLARATION,
  Disapproval_Reason_DIRECTDOWNLOADINAD,
  Disapproval_Reason_MAXIMUMDOWNLOADSIZEEXCEEDED,
  Disapproval_Reason_DESTINATIONURLSITENOTCRAWLABLE,
  Disapproval_Reason_BADURLLEGALDISAPPROVAL,
  Disapproval_Reason_PHARMAGAMBLINGALCOHOLNOTALLOWED,
  Disapproval_Reason_DYNAMICDNSATDESTINATIONURL,
  Disapproval_Reason_POORIMAGEORVIDEOQUALITY,
  Disapproval_Reason_UNACCEPTABLEIMAGECONTENT,
  Disapproval_Reason_INCORRECTIMAGELAYOUT,
  Disapproval_Reason_IRRELEVANTIMAGEORVIDEO,
  Disapproval_Reason_DESTINATIONSITEDOESNOTALLOWGOINGBACK,
  Disapproval_Reason_MISLEADINGCLAIMSINAD,
  Disapproval_Reason_RESTRICTEDPRODUCTS,
  Disapproval_Reason_UNACCEPTABLECONTENT,
  Disapproval_Reason_AUTOMATEDADCLICKING,
  Disapproval_Reason_INVALIDURLPROTOCOL,
  Disapproval_Reason_UNDECLAREDRESTRICTEDCONTENT,
  Disapproval_Reason_INVALIDREMARKETINGLISTUSAGE,
  Disapproval_Reason_DESTINATIONSITENOTCRAWLABLEROBOTSTXT,
  Disapproval_Reason_CLICKTODOWNLOADNOTANAPP,
  Disapproval_Reason_INACCURATEREVIEWEXTENSION,
  Disapproval_Reason_SEXUALLYEXPLICITCONTENT,
  Disapproval_Reason_GAININGANUNFAIRADVANTAGE,
  Disapproval_Reason_GAMINGTHEGOOGLENETWORK,
  Disapproval_Reason_DANGEROUSPRODUCTSKNIVES,
  Disapproval_Reason_DANGEROUSPRODUCTSEXPLOSIVES,
  Disapproval_Reason_DANGEROUSPRODUCTSGUNS,
  Disapproval_Reason_DANGEROUSPRODUCTSDRUGS,
  Disapproval_Reason_DANGEROUSPRODUCTSTOBACCO,
  Disapproval_Reason_DANGEROUSPRODUCTSWEAPONS,
  Disapproval_Reason_UNCLEARORIRRELEVANTAD,
  Disapproval_Reason_PROFESSIONALSTANDARDS,
  Disapproval_Reason_DYSFUNCTIONALPROMOTION,
  Disapproval_Reason_INVALIDINTERESTBASEDAD,
  Disapproval_Reason_MISUSEOFPERSONALINFORMATION,
  Disapproval_Reason_OMISSIONOFRELEVANTINFORMATION,
  Disapproval_Reason_UNAVAILABLEPROMOTIONS,
  Disapproval_Reason_MISLEADINGPROMOTIONS,
  Disapproval_Reason_INAPPROPRIATECONTENT,
  Disapproval_Reason_SENSITIVEEVENTS,
  Disapproval_Reason_SHOCKINGCONTENT,
  Disapproval_Reason_ENABLINGDISHONESTBEHAVIOR,
  Disapproval_Reason_TECHNICALREQUIREMENTS,
  Disapproval_Reason_RESTRICTEDPOLITICALCONTENT,
  Disapproval_Reason_UNSUPPORTEDCONTENT,
  Disapproval_Reason_INVALIDBIDDINGMETHOD,
  Disapproval_Reason_VIDEOTOOLONG,
  Disapproval_Reason_VIOLATESJAPANESEPHARMACYLAW,
  Disapproval_Reason_UNACCREDITEDPETPHARMACY,
  Disapproval_Reason_Abortion,
  Disapproval_Reason_Contraceptives,
  Disapproval_Reason_NEEDCERTIFICATESTOADVERTISEINCHINA,
  Disapproval_Reason_KCDSPREGISTRATION,
  Disapproval_Reason_NOTFAMILYSAFE,
  Disapproval_Reason_CLINICALTRIALRECRUITMENT,
  Disapproval_Reason_MAXIMUMNUMBEROFHTTPCALLSEXCEEDED,
  Disapproval_Reason_MAXIMUMNUMBEROFCOOKIESEXCEEDED,
  Disapproval_Reason_PERSONALLOANS,
  Disapproval_Reason_UNSUPPORTEDFLASHCONTENT,
  Disapproval_Reason_MISUSEBYOMIDSCRIPT,
  Disapproval_Reason_NONWHITELISTEDOMIDVENDOR,
  Disapproval_Reason_DESTINATIONEXPERIENCE,
  Disapproval_Reason_UNSUPPORTEDLANGUAGE,
  Disapproval_Reason_NONSSLCOMPLIANT,
  Disapproval_Reason_TEMPORARYPAUSE,
  Disapproval_Reason_BAILBONDS,
  Disapproval_Reason_EXPERIMENTALMEDICALTREATMENT,
  Disapproval_Reason
  #-}

newtype FilterSet_BreakdownDimensionsItem = FilterSet_BreakdownDimensionsItem {fromFilterSet_BreakdownDimensionsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an unspecified dimension; should not be used.
pattern FilterSet_BreakdownDimensionsItem_BREAKDOWNDIMENSIONUNSPECIFIED :: FilterSet_BreakdownDimensionsItem
pattern FilterSet_BreakdownDimensionsItem_BREAKDOWNDIMENSIONUNSPECIFIED = FilterSet_BreakdownDimensionsItem "BREAKDOWN_DIMENSION_UNSPECIFIED"

-- | The response should be broken down by publisher identifier. This option is available only for Open Bidding buyers.
pattern FilterSet_BreakdownDimensionsItem_PUBLISHERIDENTIFIER :: FilterSet_BreakdownDimensionsItem
pattern FilterSet_BreakdownDimensionsItem_PUBLISHERIDENTIFIER = FilterSet_BreakdownDimensionsItem "PUBLISHER_IDENTIFIER"

{-# COMPLETE
  FilterSet_BreakdownDimensionsItem_BREAKDOWNDIMENSIONUNSPECIFIED,
  FilterSet_BreakdownDimensionsItem_PUBLISHERIDENTIFIER,
  FilterSet_BreakdownDimensionsItem
  #-}

-- | The environment on which to filter; optional.
newtype FilterSet_Environment = FilterSet_Environment {fromFilterSet_Environment :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined environment; indicates that no environment filter will be applied.
pattern FilterSet_Environment_ENVIRONMENTUNSPECIFIED :: FilterSet_Environment
pattern FilterSet_Environment_ENVIRONMENTUNSPECIFIED = FilterSet_Environment "ENVIRONMENT_UNSPECIFIED"

-- | The ad impression appears on the web.
pattern FilterSet_Environment_Web :: FilterSet_Environment
pattern FilterSet_Environment_Web = FilterSet_Environment "WEB"

-- | The ad impression appears in an app.
pattern FilterSet_Environment_App :: FilterSet_Environment
pattern FilterSet_Environment_App = FilterSet_Environment "APP"

{-# COMPLETE
  FilterSet_Environment_ENVIRONMENTUNSPECIFIED,
  FilterSet_Environment_Web,
  FilterSet_Environment_App,
  FilterSet_Environment
  #-}

-- | Creative format bidded on or allowed to bid on, can be empty.
newtype FilterSet_Format = FilterSet_Format {fromFilterSet_Format :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined format; indicates that no format filter will be applied.
pattern FilterSet_Format_FORMATUNSPECIFIED :: FilterSet_Format
pattern FilterSet_Format_FORMATUNSPECIFIED = FilterSet_Format "FORMAT_UNSPECIFIED"

-- | The ad impression is a native ad, and display (for example, image) format.
pattern FilterSet_Format_NATIVEDISPLAY :: FilterSet_Format
pattern FilterSet_Format_NATIVEDISPLAY = FilterSet_Format "NATIVE_DISPLAY"

-- | The ad impression is a native ad, and video format.
pattern FilterSet_Format_NATIVEVIDEO :: FilterSet_Format
pattern FilterSet_Format_NATIVEVIDEO = FilterSet_Format "NATIVE_VIDEO"

-- | The ad impression is not a native ad, and display (for example, image) format.
pattern FilterSet_Format_NONNATIVEDISPLAY :: FilterSet_Format
pattern FilterSet_Format_NONNATIVEDISPLAY = FilterSet_Format "NON_NATIVE_DISPLAY"

-- | The ad impression is not a native ad, and video format.
pattern FilterSet_Format_NONNATIVEVIDEO :: FilterSet_Format
pattern FilterSet_Format_NONNATIVEVIDEO = FilterSet_Format "NON_NATIVE_VIDEO"

{-# COMPLETE
  FilterSet_Format_FORMATUNSPECIFIED,
  FilterSet_Format_NATIVEDISPLAY,
  FilterSet_Format_NATIVEVIDEO,
  FilterSet_Format_NONNATIVEDISPLAY,
  FilterSet_Format_NONNATIVEVIDEO,
  FilterSet_Format
  #-}

newtype FilterSet_FormatsItem = FilterSet_FormatsItem {fromFilterSet_FormatsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined format; indicates that no format filter will be applied.
pattern FilterSet_FormatsItem_FORMATUNSPECIFIED :: FilterSet_FormatsItem
pattern FilterSet_FormatsItem_FORMATUNSPECIFIED = FilterSet_FormatsItem "FORMAT_UNSPECIFIED"

-- | The ad impression is a native ad, and display (for example, image) format.
pattern FilterSet_FormatsItem_NATIVEDISPLAY :: FilterSet_FormatsItem
pattern FilterSet_FormatsItem_NATIVEDISPLAY = FilterSet_FormatsItem "NATIVE_DISPLAY"

-- | The ad impression is a native ad, and video format.
pattern FilterSet_FormatsItem_NATIVEVIDEO :: FilterSet_FormatsItem
pattern FilterSet_FormatsItem_NATIVEVIDEO = FilterSet_FormatsItem "NATIVE_VIDEO"

-- | The ad impression is not a native ad, and display (for example, image) format.
pattern FilterSet_FormatsItem_NONNATIVEDISPLAY :: FilterSet_FormatsItem
pattern FilterSet_FormatsItem_NONNATIVEDISPLAY = FilterSet_FormatsItem "NON_NATIVE_DISPLAY"

-- | The ad impression is not a native ad, and video format.
pattern FilterSet_FormatsItem_NONNATIVEVIDEO :: FilterSet_FormatsItem
pattern FilterSet_FormatsItem_NONNATIVEVIDEO = FilterSet_FormatsItem "NON_NATIVE_VIDEO"

{-# COMPLETE
  FilterSet_FormatsItem_FORMATUNSPECIFIED,
  FilterSet_FormatsItem_NATIVEDISPLAY,
  FilterSet_FormatsItem_NATIVEVIDEO,
  FilterSet_FormatsItem_NONNATIVEDISPLAY,
  FilterSet_FormatsItem_NONNATIVEVIDEO,
  FilterSet_FormatsItem
  #-}

newtype FilterSet_PlatformsItem = FilterSet_PlatformsItem {fromFilterSet_PlatformsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined platform; indicates that no platform filter will be applied.
pattern FilterSet_PlatformsItem_PLATFORMUNSPECIFIED :: FilterSet_PlatformsItem
pattern FilterSet_PlatformsItem_PLATFORMUNSPECIFIED = FilterSet_PlatformsItem "PLATFORM_UNSPECIFIED"

-- | The ad impression appears on a desktop.
pattern FilterSet_PlatformsItem_Desktop :: FilterSet_PlatformsItem
pattern FilterSet_PlatformsItem_Desktop = FilterSet_PlatformsItem "DESKTOP"

-- | The ad impression appears on a tablet.
pattern FilterSet_PlatformsItem_Tablet :: FilterSet_PlatformsItem
pattern FilterSet_PlatformsItem_Tablet = FilterSet_PlatformsItem "TABLET"

-- | The ad impression appears on a mobile device.
pattern FilterSet_PlatformsItem_Mobile :: FilterSet_PlatformsItem
pattern FilterSet_PlatformsItem_Mobile = FilterSet_PlatformsItem "MOBILE"

{-# COMPLETE
  FilterSet_PlatformsItem_PLATFORMUNSPECIFIED,
  FilterSet_PlatformsItem_Desktop,
  FilterSet_PlatformsItem_Tablet,
  FilterSet_PlatformsItem_Mobile,
  FilterSet_PlatformsItem
  #-}

-- | The granularity of time intervals if a time series breakdown is preferred; optional.
newtype FilterSet_TimeSeriesGranularity = FilterSet_TimeSeriesGranularity {fromFilterSet_TimeSeriesGranularity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an unspecified interval; no time series is applied. All rows in response will contain data for the entire requested time range.
pattern FilterSet_TimeSeriesGranularity_TIMESERIESGRANULARITYUNSPECIFIED :: FilterSet_TimeSeriesGranularity
pattern FilterSet_TimeSeriesGranularity_TIMESERIESGRANULARITYUNSPECIFIED = FilterSet_TimeSeriesGranularity "TIME_SERIES_GRANULARITY_UNSPECIFIED"

-- | Indicates that data will be broken down by the hour.
pattern FilterSet_TimeSeriesGranularity_Hourly :: FilterSet_TimeSeriesGranularity
pattern FilterSet_TimeSeriesGranularity_Hourly = FilterSet_TimeSeriesGranularity "HOURLY"

-- | Indicates that data will be broken down by the day.
pattern FilterSet_TimeSeriesGranularity_Daily :: FilterSet_TimeSeriesGranularity
pattern FilterSet_TimeSeriesGranularity_Daily = FilterSet_TimeSeriesGranularity "DAILY"

{-# COMPLETE
  FilterSet_TimeSeriesGranularity_TIMESERIESGRANULARITYUNSPECIFIED,
  FilterSet_TimeSeriesGranularity_Hourly,
  FilterSet_TimeSeriesGranularity_Daily,
  FilterSet_TimeSeriesGranularity
  #-}

-- | The time unit. Along with num/time/units defines the amount of time over which impressions per user are counted and capped.
newtype FrequencyCap_TimeUnitType = FrequencyCap_TimeUnitType {fromFrequencyCap_TimeUnitType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined time unit type. This just indicates the variable with this value hasn\'t been initialized.
pattern FrequencyCap_TimeUnitType_TIMEUNITTYPEUNSPECIFIED :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_TIMEUNITTYPEUNSPECIFIED = FrequencyCap_TimeUnitType "TIME_UNIT_TYPE_UNSPECIFIED"

-- | Minute
pattern FrequencyCap_TimeUnitType_Minute :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_Minute = FrequencyCap_TimeUnitType "MINUTE"

-- | Hour
pattern FrequencyCap_TimeUnitType_Hour :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_Hour = FrequencyCap_TimeUnitType "HOUR"

-- | Day
pattern FrequencyCap_TimeUnitType_Day :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_Day = FrequencyCap_TimeUnitType "DAY"

-- | Week
pattern FrequencyCap_TimeUnitType_Week :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_Week = FrequencyCap_TimeUnitType "WEEK"

-- | Month
pattern FrequencyCap_TimeUnitType_Month :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_Month = FrequencyCap_TimeUnitType "MONTH"

-- | Lifetime
pattern FrequencyCap_TimeUnitType_Lifetime :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_Lifetime = FrequencyCap_TimeUnitType "LIFETIME"

-- | Pod
pattern FrequencyCap_TimeUnitType_Pod :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_Pod = FrequencyCap_TimeUnitType "POD"

-- | Stream
pattern FrequencyCap_TimeUnitType_Stream :: FrequencyCap_TimeUnitType
pattern FrequencyCap_TimeUnitType_Stream = FrequencyCap_TimeUnitType "STREAM"

{-# COMPLETE
  FrequencyCap_TimeUnitType_TIMEUNITTYPEUNSPECIFIED,
  FrequencyCap_TimeUnitType_Minute,
  FrequencyCap_TimeUnitType_Hour,
  FrequencyCap_TimeUnitType_Day,
  FrequencyCap_TimeUnitType_Week,
  FrequencyCap_TimeUnitType_Month,
  FrequencyCap_TimeUnitType_Lifetime,
  FrequencyCap_TimeUnitType_Pod,
  FrequencyCap_TimeUnitType_Stream,
  FrequencyCap_TimeUnitType
  #-}

-- | The reservation type for a Programmatic Guaranteed deal. This indicates whether the number of impressions is fixed, or a percent of available impressions. If not specified, the default reservation type is STANDARD.
newtype GuaranteedFixedPriceTerms_ReservationType = GuaranteedFixedPriceTerms_ReservationType {fromGuaranteedFixedPriceTerms_ReservationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | An unspecified reservation type.
pattern GuaranteedFixedPriceTerms_ReservationType_RESERVATIONTYPEUNSPECIFIED :: GuaranteedFixedPriceTerms_ReservationType
pattern GuaranteedFixedPriceTerms_ReservationType_RESERVATIONTYPEUNSPECIFIED = GuaranteedFixedPriceTerms_ReservationType "RESERVATION_TYPE_UNSPECIFIED"

-- | Non-sponsorship deal.
pattern GuaranteedFixedPriceTerms_ReservationType_Standard :: GuaranteedFixedPriceTerms_ReservationType
pattern GuaranteedFixedPriceTerms_ReservationType_Standard = GuaranteedFixedPriceTerms_ReservationType "STANDARD"

-- | Sponsorship deals don\'t have impression goal (guaranteed/looks) and they are served based on the flight dates. For CPM Sponsorship deals, impression/cap is the lifetime impression limit.
pattern GuaranteedFixedPriceTerms_ReservationType_Sponsorship :: GuaranteedFixedPriceTerms_ReservationType
pattern GuaranteedFixedPriceTerms_ReservationType_Sponsorship = GuaranteedFixedPriceTerms_ReservationType "SPONSORSHIP"

{-# COMPLETE
  GuaranteedFixedPriceTerms_ReservationType_RESERVATIONTYPEUNSPECIFIED,
  GuaranteedFixedPriceTerms_ReservationType_Standard,
  GuaranteedFixedPriceTerms_ReservationType_Sponsorship,
  GuaranteedFixedPriceTerms_ReservationType
  #-}

-- | The type of detail that the detail IDs represent.
newtype ListCreativeStatusBreakdownByDetailResponse_DetailType = ListCreativeStatusBreakdownByDetailResponse_DetailType {fromListCreativeStatusBreakdownByDetailResponse_DetailType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined status. This value will never be returned in responses.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_DETAILTYPEUNSPECIFIED :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_DETAILTYPEUNSPECIFIED = ListCreativeStatusBreakdownByDetailResponse_DetailType "DETAIL_TYPE_UNSPECIFIED"

-- | Indicates that the detail ID refers to a creative attribute; see <https://developers.google.com/authorized-buyers/rtb/downloads/publisher-excludable-creative-attributes publisher-excludable-creative-attributes>.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_CREATIVEATTRIBUTE :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_CREATIVEATTRIBUTE = ListCreativeStatusBreakdownByDetailResponse_DetailType "CREATIVE_ATTRIBUTE"

-- | Indicates that the detail ID refers to a vendor; see <https://developers.google.com/authorized-buyers/rtb/downloads/vendors vendors>. This namespace is different from that of the @ATP_VENDOR@ detail type.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_Vendor :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_Vendor = ListCreativeStatusBreakdownByDetailResponse_DetailType "VENDOR"

-- | Indicates that the detail ID refers to a sensitive category; see <https://developers.google.com/authorized-buyers/rtb/downloads/ad-sensitive-categories ad-sensitive-categories>.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_SENSITIVECATEGORY :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_SENSITIVECATEGORY = ListCreativeStatusBreakdownByDetailResponse_DetailType "SENSITIVE_CATEGORY"

-- | Indicates that the detail ID refers to a product category; see <https://developers.google.com/authorized-buyers/rtb/downloads/ad-product-categories ad-product-categories>.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_PRODUCTCATEGORY :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_PRODUCTCATEGORY = ListCreativeStatusBreakdownByDetailResponse_DetailType "PRODUCT_CATEGORY"

-- | Indicates that the detail ID refers to a disapproval reason; see DisapprovalReason enum in <https://developers.google.com/authorized-buyers/rtb/downloads/snippet-status-report-proto snippet-status-report-proto>.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_DISAPPROVALREASON :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_DISAPPROVALREASON = ListCreativeStatusBreakdownByDetailResponse_DetailType "DISAPPROVAL_REASON"

-- | Indicates that the detail ID refers to a policy topic.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_POLICYTOPIC :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_POLICYTOPIC = ListCreativeStatusBreakdownByDetailResponse_DetailType "POLICY_TOPIC"

-- | Indicates that the detail ID refers to an ad technology provider (ATP); see [providers] (https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/providers.csv). This namespace is different from the @VENDOR@ detail type; see <https://support.google.com/admanager/answer/9012903 ad technology providers> for more information.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_ATPVENDOR :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_ATPVENDOR = ListCreativeStatusBreakdownByDetailResponse_DetailType "ATP_VENDOR"

-- | Indicates that the detail string refers the domain of an unknown vendor.
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_VENDORDOMAIN :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_VENDORDOMAIN = ListCreativeStatusBreakdownByDetailResponse_DetailType "VENDOR_DOMAIN"

-- | Indicates that the detail ID refers an IAB GVL ID which Google did not detect in the latest TCF Vendor List. See [Global Vendor List] (https:\/\/vendor-list.consensu.org\/v2\/vendor-list.json)
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_GVLID :: ListCreativeStatusBreakdownByDetailResponse_DetailType
pattern ListCreativeStatusBreakdownByDetailResponse_DetailType_GVLID = ListCreativeStatusBreakdownByDetailResponse_DetailType "GVL_ID"

{-# COMPLETE
  ListCreativeStatusBreakdownByDetailResponse_DetailType_DETAILTYPEUNSPECIFIED,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_CREATIVEATTRIBUTE,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_Vendor,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_SENSITIVECATEGORY,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_PRODUCTCATEGORY,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_DISAPPROVALREASON,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_POLICYTOPIC,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_ATPVENDOR,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_VENDORDOMAIN,
  ListCreativeStatusBreakdownByDetailResponse_DetailType_GVLID,
  ListCreativeStatusBreakdownByDetailResponse_DetailType
  #-}

-- | The status specifying why the winning bids were not billed.
newtype NonBillableWinningBidStatusRow_Status = NonBillableWinningBidStatusRow_Status {fromNonBillableWinningBidStatusRow_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined status. This value will never be returned in responses.
pattern NonBillableWinningBidStatusRow_Status_STATUSUNSPECIFIED :: NonBillableWinningBidStatusRow_Status
pattern NonBillableWinningBidStatusRow_Status_STATUSUNSPECIFIED = NonBillableWinningBidStatusRow_Status "STATUS_UNSPECIFIED"

-- | The buyer was not billed because the ad was not rendered by the publisher.
pattern NonBillableWinningBidStatusRow_Status_ADNOTRENDERED :: NonBillableWinningBidStatusRow_Status
pattern NonBillableWinningBidStatusRow_Status_ADNOTRENDERED = NonBillableWinningBidStatusRow_Status "AD_NOT_RENDERED"

-- | The buyer was not billed because the impression won by the bid was determined to be invalid.
pattern NonBillableWinningBidStatusRow_Status_INVALIDIMPRESSION :: NonBillableWinningBidStatusRow_Status
pattern NonBillableWinningBidStatusRow_Status_INVALIDIMPRESSION = NonBillableWinningBidStatusRow_Status "INVALID_IMPRESSION"

-- | A video impression was served but a fatal error was reported from the client during playback.
pattern NonBillableWinningBidStatusRow_Status_FATALVASTERROR :: NonBillableWinningBidStatusRow_Status
pattern NonBillableWinningBidStatusRow_Status_FATALVASTERROR = NonBillableWinningBidStatusRow_Status "FATAL_VAST_ERROR"

-- | The buyer was not billed because the ad was outplaced in the mediation waterfall.
pattern NonBillableWinningBidStatusRow_Status_LOSTINMEDIATION :: NonBillableWinningBidStatusRow_Status
pattern NonBillableWinningBidStatusRow_Status_LOSTINMEDIATION = NonBillableWinningBidStatusRow_Status "LOST_IN_MEDIATION"

{-# COMPLETE
  NonBillableWinningBidStatusRow_Status_STATUSUNSPECIFIED,
  NonBillableWinningBidStatusRow_Status_ADNOTRENDERED,
  NonBillableWinningBidStatusRow_Status_INVALIDIMPRESSION,
  NonBillableWinningBidStatusRow_Status_FATALVASTERROR,
  NonBillableWinningBidStatusRow_Status_LOSTINMEDIATION,
  NonBillableWinningBidStatusRow_Status
  #-}

-- | Output only. The role of the person (buyer\/seller) creating the note.
newtype Note_CreatorRole = Note_CreatorRole {fromNote_CreatorRole :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined buyer\/seller role.
pattern Note_CreatorRole_BUYERSELLERROLEUNSPECIFIED :: Note_CreatorRole
pattern Note_CreatorRole_BUYERSELLERROLEUNSPECIFIED = Note_CreatorRole "BUYER_SELLER_ROLE_UNSPECIFIED"

-- | Specifies the role as buyer.
pattern Note_CreatorRole_Buyer :: Note_CreatorRole
pattern Note_CreatorRole_Buyer = Note_CreatorRole "BUYER"

-- | Specifies the role as seller.
pattern Note_CreatorRole_Seller :: Note_CreatorRole
pattern Note_CreatorRole_Seller = Note_CreatorRole "SELLER"

{-# COMPLETE
  Note_CreatorRole_BUYERSELLERROLEUNSPECIFIED,
  Note_CreatorRole_Buyer,
  Note_CreatorRole_Seller,
  Note_CreatorRole
  #-}

newtype PlatformContext_PlatformsItem = PlatformContext_PlatformsItem {fromPlatformContext_PlatformsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Desktop platform.
pattern PlatformContext_PlatformsItem_Desktop :: PlatformContext_PlatformsItem
pattern PlatformContext_PlatformsItem_Desktop = PlatformContext_PlatformsItem "DESKTOP"

-- | Android platform.
pattern PlatformContext_PlatformsItem_Android :: PlatformContext_PlatformsItem
pattern PlatformContext_PlatformsItem_Android = PlatformContext_PlatformsItem "ANDROID"

-- | iOS platform.
pattern PlatformContext_PlatformsItem_Ios :: PlatformContext_PlatformsItem
pattern PlatformContext_PlatformsItem_Ios = PlatformContext_PlatformsItem "IOS"

{-# COMPLETE
  PlatformContext_PlatformsItem_Desktop,
  PlatformContext_PlatformsItem_Android,
  PlatformContext_PlatformsItem_Ios,
  PlatformContext_PlatformsItem
  #-}

-- | The pricing type for the deal\/product. (default: CPM)
newtype Price_PricingType = Price_PricingType {fromPrice_PricingType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined pricing type. If the pricing type is unpsecified, @COST_PER_MILLE@ will be used instead.
pattern Price_PricingType_PRICINGTYPEUNSPECIFIED :: Price_PricingType
pattern Price_PricingType_PRICINGTYPEUNSPECIFIED = Price_PricingType "PRICING_TYPE_UNSPECIFIED"

-- | Cost per thousand impressions.
pattern Price_PricingType_COSTPERMILLE :: Price_PricingType
pattern Price_PricingType_COSTPERMILLE = Price_PricingType "COST_PER_MILLE"

-- | Cost per day
pattern Price_PricingType_COSTPERDAY :: Price_PricingType
pattern Price_PricingType_COSTPERDAY = Price_PricingType "COST_PER_DAY"

{-# COMPLETE
  Price_PricingType_PRICINGTYPEUNSPECIFIED,
  Price_PricingType_COSTPERMILLE,
  Price_PricingType_COSTPERDAY,
  Price_PricingType
  #-}

-- | The syndication product associated with the deal.
newtype Product_SyndicationProduct = Product_SyndicationProduct {fromProduct_SyndicationProduct :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined syndication product.
pattern Product_SyndicationProduct_SYNDICATIONPRODUCTUNSPECIFIED :: Product_SyndicationProduct
pattern Product_SyndicationProduct_SYNDICATIONPRODUCTUNSPECIFIED = Product_SyndicationProduct "SYNDICATION_PRODUCT_UNSPECIFIED"

-- | This typically represents a web page.
pattern Product_SyndicationProduct_Content :: Product_SyndicationProduct
pattern Product_SyndicationProduct_Content = Product_SyndicationProduct "CONTENT"

-- | This represents a mobile property.
pattern Product_SyndicationProduct_Mobile :: Product_SyndicationProduct
pattern Product_SyndicationProduct_Mobile = Product_SyndicationProduct "MOBILE"

-- | This represents video ad formats.
pattern Product_SyndicationProduct_Video :: Product_SyndicationProduct
pattern Product_SyndicationProduct_Video = Product_SyndicationProduct "VIDEO"

-- | This represents ads shown within games.
pattern Product_SyndicationProduct_Games :: Product_SyndicationProduct
pattern Product_SyndicationProduct_Games = Product_SyndicationProduct "GAMES"

{-# COMPLETE
  Product_SyndicationProduct_SYNDICATIONPRODUCTUNSPECIFIED,
  Product_SyndicationProduct_Content,
  Product_SyndicationProduct_Mobile,
  Product_SyndicationProduct_Video,
  Product_SyndicationProduct_Games,
  Product_SyndicationProduct
  #-}

-- | Output only. The role of the last user that either updated the proposal or left a comment.
newtype Proposal_LastUpdaterOrCommentorRole = Proposal_LastUpdaterOrCommentorRole {fromProposal_LastUpdaterOrCommentorRole :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined buyer\/seller role.
pattern Proposal_LastUpdaterOrCommentorRole_BUYERSELLERROLEUNSPECIFIED :: Proposal_LastUpdaterOrCommentorRole
pattern Proposal_LastUpdaterOrCommentorRole_BUYERSELLERROLEUNSPECIFIED = Proposal_LastUpdaterOrCommentorRole "BUYER_SELLER_ROLE_UNSPECIFIED"

-- | Specifies the role as buyer.
pattern Proposal_LastUpdaterOrCommentorRole_Buyer :: Proposal_LastUpdaterOrCommentorRole
pattern Proposal_LastUpdaterOrCommentorRole_Buyer = Proposal_LastUpdaterOrCommentorRole "BUYER"

-- | Specifies the role as seller.
pattern Proposal_LastUpdaterOrCommentorRole_Seller :: Proposal_LastUpdaterOrCommentorRole
pattern Proposal_LastUpdaterOrCommentorRole_Seller = Proposal_LastUpdaterOrCommentorRole "SELLER"

{-# COMPLETE
  Proposal_LastUpdaterOrCommentorRole_BUYERSELLERROLEUNSPECIFIED,
  Proposal_LastUpdaterOrCommentorRole_Buyer,
  Proposal_LastUpdaterOrCommentorRole_Seller,
  Proposal_LastUpdaterOrCommentorRole
  #-}

-- | Output only. Indicates whether the buyer\/seller created the proposal.
newtype Proposal_OriginatorRole = Proposal_OriginatorRole {fromProposal_OriginatorRole :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined buyer\/seller role.
pattern Proposal_OriginatorRole_BUYERSELLERROLEUNSPECIFIED :: Proposal_OriginatorRole
pattern Proposal_OriginatorRole_BUYERSELLERROLEUNSPECIFIED = Proposal_OriginatorRole "BUYER_SELLER_ROLE_UNSPECIFIED"

-- | Specifies the role as buyer.
pattern Proposal_OriginatorRole_Buyer :: Proposal_OriginatorRole
pattern Proposal_OriginatorRole_Buyer = Proposal_OriginatorRole "BUYER"

-- | Specifies the role as seller.
pattern Proposal_OriginatorRole_Seller :: Proposal_OriginatorRole
pattern Proposal_OriginatorRole_Seller = Proposal_OriginatorRole "SELLER"

{-# COMPLETE
  Proposal_OriginatorRole_BUYERSELLERROLEUNSPECIFIED,
  Proposal_OriginatorRole_Buyer,
  Proposal_OriginatorRole_Seller,
  Proposal_OriginatorRole
  #-}

-- | Output only. The current state of the proposal.
newtype Proposal_ProposalState = Proposal_ProposalState {fromProposal_ProposalState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined proposal state.
pattern Proposal_ProposalState_PROPOSALSTATEUNSPECIFIED :: Proposal_ProposalState
pattern Proposal_ProposalState_PROPOSALSTATEUNSPECIFIED = Proposal_ProposalState "PROPOSAL_STATE_UNSPECIFIED"

-- | The proposal is under negotiation or renegotiation.
pattern Proposal_ProposalState_Proposed :: Proposal_ProposalState
pattern Proposal_ProposalState_Proposed = Proposal_ProposalState "PROPOSED"

-- | The proposal has been accepted by the buyer.
pattern Proposal_ProposalState_BUYERACCEPTED :: Proposal_ProposalState
pattern Proposal_ProposalState_BUYERACCEPTED = Proposal_ProposalState "BUYER_ACCEPTED"

-- | The proposal has been accepted by the seller.
pattern Proposal_ProposalState_SELLERACCEPTED :: Proposal_ProposalState
pattern Proposal_ProposalState_SELLERACCEPTED = Proposal_ProposalState "SELLER_ACCEPTED"

-- | The negotiations on the proposal were canceled and the proposal was never finalized.
pattern Proposal_ProposalState_Canceled :: Proposal_ProposalState
pattern Proposal_ProposalState_Canceled = Proposal_ProposalState "CANCELED"

-- | The proposal is finalized. During renegotiation, the proposal may not be in this state.
pattern Proposal_ProposalState_Finalized :: Proposal_ProposalState
pattern Proposal_ProposalState_Finalized = Proposal_ProposalState "FINALIZED"

{-# COMPLETE
  Proposal_ProposalState_PROPOSALSTATEUNSPECIFIED,
  Proposal_ProposalState_Proposed,
  Proposal_ProposalState_BUYERACCEPTED,
  Proposal_ProposalState_SELLERACCEPTED,
  Proposal_ProposalState_Canceled,
  Proposal_ProposalState_Finalized,
  Proposal_ProposalState
  #-}

-- | The app store the app belongs to.
newtype PublisherProfileMobileApplication_AppStore = PublisherProfileMobileApplication_AppStore {fromPublisherProfileMobileApplication_AppStore :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an unknown app store.
pattern PublisherProfileMobileApplication_AppStore_APPSTORETYPEUNSPECIFIED :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_APPSTORETYPEUNSPECIFIED = PublisherProfileMobileApplication_AppStore "APP_STORE_TYPE_UNSPECIFIED"

-- | Apple iTunes
pattern PublisherProfileMobileApplication_AppStore_APPLEITUNES :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_APPLEITUNES = PublisherProfileMobileApplication_AppStore "APPLE_ITUNES"

-- | Google Play
pattern PublisherProfileMobileApplication_AppStore_GOOGLEPLAY :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_GOOGLEPLAY = PublisherProfileMobileApplication_AppStore "GOOGLE_PLAY"

-- | Roku
pattern PublisherProfileMobileApplication_AppStore_Roku :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_Roku = PublisherProfileMobileApplication_AppStore "ROKU"

-- | Amazon Fire TV
pattern PublisherProfileMobileApplication_AppStore_AMAZONFIRETV :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_AMAZONFIRETV = PublisherProfileMobileApplication_AppStore "AMAZON_FIRETV"

-- | Playstation
pattern PublisherProfileMobileApplication_AppStore_Playstation :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_Playstation = PublisherProfileMobileApplication_AppStore "PLAYSTATION"

-- | Xbox
pattern PublisherProfileMobileApplication_AppStore_Xbox :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_Xbox = PublisherProfileMobileApplication_AppStore "XBOX"

-- | Samsung TV
pattern PublisherProfileMobileApplication_AppStore_SAMSUNGTV :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_SAMSUNGTV = PublisherProfileMobileApplication_AppStore "SAMSUNG_TV"

-- | Amazon Appstore
pattern PublisherProfileMobileApplication_AppStore_Amazon :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_Amazon = PublisherProfileMobileApplication_AppStore "AMAZON"

-- | OPPO App Market
pattern PublisherProfileMobileApplication_AppStore_Oppo :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_Oppo = PublisherProfileMobileApplication_AppStore "OPPO"

-- | Samsung Galaxy Store
pattern PublisherProfileMobileApplication_AppStore_Samsung :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_Samsung = PublisherProfileMobileApplication_AppStore "SAMSUNG"

-- | VIVO App Store
pattern PublisherProfileMobileApplication_AppStore_Vivo :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_Vivo = PublisherProfileMobileApplication_AppStore "VIVO"

-- | Xiaomi GetApps
pattern PublisherProfileMobileApplication_AppStore_Xiaomi :: PublisherProfileMobileApplication_AppStore
pattern PublisherProfileMobileApplication_AppStore_Xiaomi = PublisherProfileMobileApplication_AppStore "XIAOMI"

{-# COMPLETE
  PublisherProfileMobileApplication_AppStore_APPSTORETYPEUNSPECIFIED,
  PublisherProfileMobileApplication_AppStore_APPLEITUNES,
  PublisherProfileMobileApplication_AppStore_GOOGLEPLAY,
  PublisherProfileMobileApplication_AppStore_Roku,
  PublisherProfileMobileApplication_AppStore_AMAZONFIRETV,
  PublisherProfileMobileApplication_AppStore_Playstation,
  PublisherProfileMobileApplication_AppStore_Xbox,
  PublisherProfileMobileApplication_AppStore_SAMSUNGTV,
  PublisherProfileMobileApplication_AppStore_Amazon,
  PublisherProfileMobileApplication_AppStore_Oppo,
  PublisherProfileMobileApplication_AppStore_Samsung,
  PublisherProfileMobileApplication_AppStore_Vivo,
  PublisherProfileMobileApplication_AppStore_Xiaomi,
  PublisherProfileMobileApplication_AppStore
  #-}

newtype SecurityContext_SecuritiesItem = SecurityContext_SecuritiesItem {fromSecurityContext_SecuritiesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Matches impressions that require insecure compatibility.
pattern SecurityContext_SecuritiesItem_Insecure :: SecurityContext_SecuritiesItem
pattern SecurityContext_SecuritiesItem_Insecure = SecurityContext_SecuritiesItem "INSECURE"

-- | Matches impressions that require SSL compatibility.
pattern SecurityContext_SecuritiesItem_Ssl :: SecurityContext_SecuritiesItem
pattern SecurityContext_SecuritiesItem_Ssl = SecurityContext_SecuritiesItem "SSL"

{-# COMPLETE
  SecurityContext_SecuritiesItem_Insecure,
  SecurityContext_SecuritiesItem_Ssl,
  SecurityContext_SecuritiesItem
  #-}

-- | Matches all contexts.
newtype ServingContext_All = ServingContext_All {fromServingContext_All :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A simple context.
pattern ServingContext_All_SIMPLECONTEXT :: ServingContext_All
pattern ServingContext_All_SIMPLECONTEXT = ServingContext_All "SIMPLE_CONTEXT"

{-# COMPLETE
  ServingContext_All_SIMPLECONTEXT,
  ServingContext_All
  #-}

-- | The status of the creative in this context (for example, it has been explicitly disapproved or is pending review).
newtype ServingRestriction_Status = ServingRestriction_Status {fromServingRestriction_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The status is not known.
pattern ServingRestriction_Status_STATUSUNSPECIFIED :: ServingRestriction_Status
pattern ServingRestriction_Status_STATUSUNSPECIFIED = ServingRestriction_Status "STATUS_UNSPECIFIED"

-- | The ad was disapproved in this context.
pattern ServingRestriction_Status_Disapproval :: ServingRestriction_Status
pattern ServingRestriction_Status_Disapproval = ServingRestriction_Status "DISAPPROVAL"

-- | The ad is pending review in this context.
pattern ServingRestriction_Status_PENDINGREVIEW :: ServingRestriction_Status
pattern ServingRestriction_Status_PENDINGREVIEW = ServingRestriction_Status "PENDING_REVIEW"

{-# COMPLETE
  ServingRestriction_Status_STATUSUNSPECIFIED,
  ServingRestriction_Status_Disapproval,
  ServingRestriction_Status_PENDINGREVIEW,
  ServingRestriction_Status
  #-}

newtype VideoTargeting_ExcludedPositionTypesItem = VideoTargeting_ExcludedPositionTypesItem {fromVideoTargeting_ExcludedPositionTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined video position.
pattern VideoTargeting_ExcludedPositionTypesItem_POSITIONTYPEUNSPECIFIED :: VideoTargeting_ExcludedPositionTypesItem
pattern VideoTargeting_ExcludedPositionTypesItem_POSITIONTYPEUNSPECIFIED = VideoTargeting_ExcludedPositionTypesItem "POSITION_TYPE_UNSPECIFIED"

-- | Ad is played before the video.
pattern VideoTargeting_ExcludedPositionTypesItem_Preroll :: VideoTargeting_ExcludedPositionTypesItem
pattern VideoTargeting_ExcludedPositionTypesItem_Preroll = VideoTargeting_ExcludedPositionTypesItem "PREROLL"

-- | Ad is played during the video.
pattern VideoTargeting_ExcludedPositionTypesItem_Midroll :: VideoTargeting_ExcludedPositionTypesItem
pattern VideoTargeting_ExcludedPositionTypesItem_Midroll = VideoTargeting_ExcludedPositionTypesItem "MIDROLL"

-- | Ad is played after the video.
pattern VideoTargeting_ExcludedPositionTypesItem_Postroll :: VideoTargeting_ExcludedPositionTypesItem
pattern VideoTargeting_ExcludedPositionTypesItem_Postroll = VideoTargeting_ExcludedPositionTypesItem "POSTROLL"

{-# COMPLETE
  VideoTargeting_ExcludedPositionTypesItem_POSITIONTYPEUNSPECIFIED,
  VideoTargeting_ExcludedPositionTypesItem_Preroll,
  VideoTargeting_ExcludedPositionTypesItem_Midroll,
  VideoTargeting_ExcludedPositionTypesItem_Postroll,
  VideoTargeting_ExcludedPositionTypesItem
  #-}

newtype VideoTargeting_TargetedPositionTypesItem = VideoTargeting_TargetedPositionTypesItem {fromVideoTargeting_TargetedPositionTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined video position.
pattern VideoTargeting_TargetedPositionTypesItem_POSITIONTYPEUNSPECIFIED :: VideoTargeting_TargetedPositionTypesItem
pattern VideoTargeting_TargetedPositionTypesItem_POSITIONTYPEUNSPECIFIED = VideoTargeting_TargetedPositionTypesItem "POSITION_TYPE_UNSPECIFIED"

-- | Ad is played before the video.
pattern VideoTargeting_TargetedPositionTypesItem_Preroll :: VideoTargeting_TargetedPositionTypesItem
pattern VideoTargeting_TargetedPositionTypesItem_Preroll = VideoTargeting_TargetedPositionTypesItem "PREROLL"

-- | Ad is played during the video.
pattern VideoTargeting_TargetedPositionTypesItem_Midroll :: VideoTargeting_TargetedPositionTypesItem
pattern VideoTargeting_TargetedPositionTypesItem_Midroll = VideoTargeting_TargetedPositionTypesItem "MIDROLL"

-- | Ad is played after the video.
pattern VideoTargeting_TargetedPositionTypesItem_Postroll :: VideoTargeting_TargetedPositionTypesItem
pattern VideoTargeting_TargetedPositionTypesItem_Postroll = VideoTargeting_TargetedPositionTypesItem "POSTROLL"

{-# COMPLETE
  VideoTargeting_TargetedPositionTypesItem_POSITIONTYPEUNSPECIFIED,
  VideoTargeting_TargetedPositionTypesItem_Preroll,
  VideoTargeting_TargetedPositionTypesItem_Midroll,
  VideoTargeting_TargetedPositionTypesItem_Postroll,
  VideoTargeting_TargetedPositionTypesItem
  #-}

-- | Indicates if multiple creatives can share an ID or not. Default is NO_DUPLICATES (one ID per creative).
newtype AccountsCreativesCreateDuplicateIdMode = AccountsCreativesCreateDuplicateIdMode {fromAccountsCreativesCreateDuplicateIdMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Recommended. This means that an ID will be unique to a single creative. Multiple creatives will not share an ID.
pattern AccountsCreativesCreateDuplicateIdMode_NODUPLICATES :: AccountsCreativesCreateDuplicateIdMode
pattern AccountsCreativesCreateDuplicateIdMode_NODUPLICATES = AccountsCreativesCreateDuplicateIdMode "NO_DUPLICATES"

-- | Not recommended. Using this option will allow multiple creatives to share the same ID. Get and Update requests will not be possible for any ID that has more than one creative associated. (List will still function.) This is only intended for backwards compatibility in cases where a single ID is already shared by multiple creatives from previous APIs.
pattern AccountsCreativesCreateDuplicateIdMode_FORCEENABLEDUPLICATEIDS :: AccountsCreativesCreateDuplicateIdMode
pattern AccountsCreativesCreateDuplicateIdMode_FORCEENABLEDUPLICATEIDS = AccountsCreativesCreateDuplicateIdMode "FORCE_ENABLE_DUPLICATE_IDS"

{-# COMPLETE
  AccountsCreativesCreateDuplicateIdMode_NODUPLICATES,
  AccountsCreativesCreateDuplicateIdMode_FORCEENABLEDUPLICATEIDS,
  AccountsCreativesCreateDuplicateIdMode
  #-}

-- | Syntax the filter is written in. Current implementation defaults to PQL but in the future it will be LIST_FILTER.
newtype AccountsFinalizedProposalsListFilterSyntax = AccountsFinalizedProposalsListFilterSyntax {fromAccountsFinalizedProposalsListFilterSyntax :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined filter syntax.
pattern AccountsFinalizedProposalsListFilterSyntax_FILTERSYNTAXUNSPECIFIED :: AccountsFinalizedProposalsListFilterSyntax
pattern AccountsFinalizedProposalsListFilterSyntax_FILTERSYNTAXUNSPECIFIED = AccountsFinalizedProposalsListFilterSyntax "FILTER_SYNTAX_UNSPECIFIED"

-- | PQL query syntax. Visit https:\/\/developers.google.com\/ad-manager\/api\/pqlreference for PQL documentation and examples.
pattern AccountsFinalizedProposalsListFilterSyntax_Pql :: AccountsFinalizedProposalsListFilterSyntax
pattern AccountsFinalizedProposalsListFilterSyntax_Pql = AccountsFinalizedProposalsListFilterSyntax "PQL"

-- | API list filtering syntax. Read about syntax and usage at https:\/\/developers.google.com\/authorized-buyers\/apis\/guides\/v2\/list-filters.
pattern AccountsFinalizedProposalsListFilterSyntax_LISTFILTER :: AccountsFinalizedProposalsListFilterSyntax
pattern AccountsFinalizedProposalsListFilterSyntax_LISTFILTER = AccountsFinalizedProposalsListFilterSyntax "LIST_FILTER"

{-# COMPLETE
  AccountsFinalizedProposalsListFilterSyntax_FILTERSYNTAXUNSPECIFIED,
  AccountsFinalizedProposalsListFilterSyntax_Pql,
  AccountsFinalizedProposalsListFilterSyntax_LISTFILTER,
  AccountsFinalizedProposalsListFilterSyntax
  #-}

-- | Syntax the filter is written in. Current implementation defaults to PQL but in the future it will be LIST_FILTER.
newtype AccountsProposalsListFilterSyntax = AccountsProposalsListFilterSyntax {fromAccountsProposalsListFilterSyntax :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A placeholder for an undefined filter syntax.
pattern AccountsProposalsListFilterSyntax_FILTERSYNTAXUNSPECIFIED :: AccountsProposalsListFilterSyntax
pattern AccountsProposalsListFilterSyntax_FILTERSYNTAXUNSPECIFIED = AccountsProposalsListFilterSyntax "FILTER_SYNTAX_UNSPECIFIED"

-- | PQL query syntax. Visit https:\/\/developers.google.com\/ad-manager\/api\/pqlreference for PQL documentation and examples.
pattern AccountsProposalsListFilterSyntax_Pql :: AccountsProposalsListFilterSyntax
pattern AccountsProposalsListFilterSyntax_Pql = AccountsProposalsListFilterSyntax "PQL"

-- | API list filtering syntax. Read about syntax and usage at https:\/\/developers.google.com\/authorized-buyers\/apis\/guides\/v2\/list-filters.
pattern AccountsProposalsListFilterSyntax_LISTFILTER :: AccountsProposalsListFilterSyntax
pattern AccountsProposalsListFilterSyntax_LISTFILTER = AccountsProposalsListFilterSyntax "LIST_FILTER"

{-# COMPLETE
  AccountsProposalsListFilterSyntax_FILTERSYNTAXUNSPECIFIED,
  AccountsProposalsListFilterSyntax_Pql,
  AccountsProposalsListFilterSyntax_LISTFILTER,
  AccountsProposalsListFilterSyntax
  #-}
