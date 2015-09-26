{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DFAReporting.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DFAReporting.Types.Sum where

import           Network.Google.Prelude

-- | Profile for this account. This is a read-only field that can be left
-- blank.
data AccountAccountProfile
    = AAPAccountProfileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | AAPAccountProfileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountAccountProfile

instance FromText AccountAccountProfile where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just AAPAccountProfileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just AAPAccountProfileStandard
        _ -> Nothing

instance ToText AccountAccountProfile where
    toText = \case
        AAPAccountProfileBasic -> "ACCOUNT_PROFILE_BASIC"
        AAPAccountProfileStandard -> "ACCOUNT_PROFILE_STANDARD"

-- | Maximum number of active ads allowed for the account.
data AccountActiveAdSummaryActiveAdsLimitTier
    = AAASAALTActiveAdsTier100K
      -- ^ @ACTIVE_ADS_TIER_100K@
    | AAASAALTActiveAdsTier200K
      -- ^ @ACTIVE_ADS_TIER_200K@
    | AAASAALTActiveAdsTier300K
      -- ^ @ACTIVE_ADS_TIER_300K@
    | AAASAALTActiveAdsTier40K
      -- ^ @ACTIVE_ADS_TIER_40K@
    | AAASAALTActiveAdsTier75K
      -- ^ @ACTIVE_ADS_TIER_75K@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountActiveAdSummaryActiveAdsLimitTier

instance FromText AccountActiveAdSummaryActiveAdsLimitTier where
    fromText = \case
        "ACTIVE_ADS_TIER_100K" -> Just AAASAALTActiveAdsTier100K
        "ACTIVE_ADS_TIER_200K" -> Just AAASAALTActiveAdsTier200K
        "ACTIVE_ADS_TIER_300K" -> Just AAASAALTActiveAdsTier300K
        "ACTIVE_ADS_TIER_40K" -> Just AAASAALTActiveAdsTier40K
        "ACTIVE_ADS_TIER_75K" -> Just AAASAALTActiveAdsTier75K
        _ -> Nothing

instance ToText AccountActiveAdSummaryActiveAdsLimitTier where
    toText = \case
        AAASAALTActiveAdsTier100K -> "ACTIVE_ADS_TIER_100K"
        AAASAALTActiveAdsTier200K -> "ACTIVE_ADS_TIER_200K"
        AAASAALTActiveAdsTier300K -> "ACTIVE_ADS_TIER_300K"
        AAASAALTActiveAdsTier40K -> "ACTIVE_ADS_TIER_40K"
        AAASAALTActiveAdsTier75K -> "ACTIVE_ADS_TIER_75K"

-- | Maximum number of active ads allowed for this account.
data AccountActiveAdsLimitTier
    = AAALTActiveAdsTier100K
      -- ^ @ACTIVE_ADS_TIER_100K@
    | AAALTActiveAdsTier200K
      -- ^ @ACTIVE_ADS_TIER_200K@
    | AAALTActiveAdsTier300K
      -- ^ @ACTIVE_ADS_TIER_300K@
    | AAALTActiveAdsTier40K
      -- ^ @ACTIVE_ADS_TIER_40K@
    | AAALTActiveAdsTier75K
      -- ^ @ACTIVE_ADS_TIER_75K@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountActiveAdsLimitTier

instance FromText AccountActiveAdsLimitTier where
    fromText = \case
        "ACTIVE_ADS_TIER_100K" -> Just AAALTActiveAdsTier100K
        "ACTIVE_ADS_TIER_200K" -> Just AAALTActiveAdsTier200K
        "ACTIVE_ADS_TIER_300K" -> Just AAALTActiveAdsTier300K
        "ACTIVE_ADS_TIER_40K" -> Just AAALTActiveAdsTier40K
        "ACTIVE_ADS_TIER_75K" -> Just AAALTActiveAdsTier75K
        _ -> Nothing

instance ToText AccountActiveAdsLimitTier where
    toText = \case
        AAALTActiveAdsTier100K -> "ACTIVE_ADS_TIER_100K"
        AAALTActiveAdsTier200K -> "ACTIVE_ADS_TIER_200K"
        AAALTActiveAdsTier300K -> "ACTIVE_ADS_TIER_300K"
        AAALTActiveAdsTier40K -> "ACTIVE_ADS_TIER_40K"
        AAALTActiveAdsTier75K -> "ACTIVE_ADS_TIER_75K"

data AccountPermissionItemAccountProfiles
    = APIAPAccountProfileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | APIAPAccountProfileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountPermissionItemAccountProfiles

instance FromText AccountPermissionItemAccountProfiles where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just APIAPAccountProfileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just APIAPAccountProfileStandard
        _ -> Nothing

instance ToText AccountPermissionItemAccountProfiles where
    toText = \case
        APIAPAccountProfileBasic -> "ACCOUNT_PROFILE_BASIC"
        APIAPAccountProfileStandard -> "ACCOUNT_PROFILE_STANDARD"

-- | Administrative level required to enable this account permission.
data AccountPermissionLevel
    = APLAdministrator
      -- ^ @ADMINISTRATOR@
    | APLUser
      -- ^ @USER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountPermissionLevel

instance FromText AccountPermissionLevel where
    fromText = \case
        "ADMINISTRATOR" -> Just APLAdministrator
        "USER" -> Just APLUser
        _ -> Nothing

instance ToText AccountPermissionLevel where
    toText = \case
        APLAdministrator -> "ADMINISTRATOR"
        APLUser -> "USER"

-- | Trafficker type of this user profile.
data AccountUserProfileTraffickerType
    = AUPTTExternalTrafficker
      -- ^ @EXTERNAL_TRAFFICKER@
    | AUPTTInternalNonTrafficker
      -- ^ @INTERNAL_NON_TRAFFICKER@
    | AUPTTInternalTrafficker
      -- ^ @INTERNAL_TRAFFICKER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProfileTraffickerType

instance FromText AccountUserProfileTraffickerType where
    fromText = \case
        "EXTERNAL_TRAFFICKER" -> Just AUPTTExternalTrafficker
        "INTERNAL_NON_TRAFFICKER" -> Just AUPTTInternalNonTrafficker
        "INTERNAL_TRAFFICKER" -> Just AUPTTInternalTrafficker
        _ -> Nothing

instance ToText AccountUserProfileTraffickerType where
    toText = \case
        AUPTTExternalTrafficker -> "EXTERNAL_TRAFFICKER"
        AUPTTInternalNonTrafficker -> "INTERNAL_NON_TRAFFICKER"
        AUPTTInternalTrafficker -> "INTERNAL_TRAFFICKER"

-- | User type of the user profile. This is a read-only field that can be
-- left blank.
data AccountUserProfileUserAccessType
    = AUPUATInternalAdministrator
      -- ^ @INTERNAL_ADMINISTRATOR@
    | AUPUATNormalUser
      -- ^ @NORMAL_USER@
    | AUPUATSuperUser
      -- ^ @SUPER_USER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProfileUserAccessType

instance FromText AccountUserProfileUserAccessType where
    fromText = \case
        "INTERNAL_ADMINISTRATOR" -> Just AUPUATInternalAdministrator
        "NORMAL_USER" -> Just AUPUATNormalUser
        "SUPER_USER" -> Just AUPUATSuperUser
        _ -> Nothing

instance ToText AccountUserProfileUserAccessType where
    toText = \case
        AUPUATInternalAdministrator -> "INTERNAL_ADMINISTRATOR"
        AUPUATNormalUser -> "NORMAL_USER"
        AUPUATSuperUser -> "SUPER_USER"

-- | Compatibility of this ad. Applicable when type is AD_SERVING_DEFAULT_AD.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads, respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO
-- refers to rendering an in-stream video ads developed with the VAST
-- standard.
data AdCompatibility
    = ACApp
      -- ^ @APP@
    | ACAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | ACInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | ACWeb
      -- ^ @WEB@
    | ACWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdCompatibility

instance FromText AdCompatibility where
    fromText = \case
        "APP" -> Just ACApp
        "APP_INTERSTITIAL" -> Just ACAppInterstitial
        "IN_STREAM_VIDEO" -> Just ACInStreamVideo
        "WEB" -> Just ACWeb
        "WEB_INTERSTITIAL" -> Just ACWebInterstitial
        _ -> Nothing

instance ToText AdCompatibility where
    toText = \case
        ACApp -> "APP"
        ACAppInterstitial -> "APP_INTERSTITIAL"
        ACInStreamVideo -> "IN_STREAM_VIDEO"
        ACWeb -> "WEB"
        ACWebInterstitial -> "WEB_INTERSTITIAL"

-- | Ad slot compatibility. WEB and WEB_INTERSTITIAL refer to rendering
-- either on desktop or on mobile devices for regular or interstitial ads
-- respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps.
-- IN_STREAM_VIDEO refers to rendering in in-stream video ads developed
-- with the VAST standard.
data AdSlotCompatibility
    = ASCPlanningRenderingEnvironmentTypeApp
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_APP@
    | ASCPlanningRenderingEnvironmentTypeAppInterstitial
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_APP_INTERSTITIAL@
    | ASCPlanningRenderingEnvironmentTypeInStreamVideo
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_IN_STREAM_VIDEO@
    | ASCPlanningRenderingEnvironmentTypeWeb
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB@
    | ASCPlanningRenderingEnvironmentTypeWebInterstitial
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdSlotCompatibility

instance FromText AdSlotCompatibility where
    fromText = \case
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_APP" -> Just ASCPlanningRenderingEnvironmentTypeApp
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_APP_INTERSTITIAL" -> Just ASCPlanningRenderingEnvironmentTypeAppInterstitial
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_IN_STREAM_VIDEO" -> Just ASCPlanningRenderingEnvironmentTypeInStreamVideo
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB" -> Just ASCPlanningRenderingEnvironmentTypeWeb
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB_INTERSTITIAL" -> Just ASCPlanningRenderingEnvironmentTypeWebInterstitial
        _ -> Nothing

instance ToText AdSlotCompatibility where
    toText = \case
        ASCPlanningRenderingEnvironmentTypeApp -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_APP"
        ASCPlanningRenderingEnvironmentTypeAppInterstitial -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_APP_INTERSTITIAL"
        ASCPlanningRenderingEnvironmentTypeInStreamVideo -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_IN_STREAM_VIDEO"
        ASCPlanningRenderingEnvironmentTypeWeb -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB"
        ASCPlanningRenderingEnvironmentTypeWebInterstitial -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB_INTERSTITIAL"

-- | Payment source type of this ad slot.
data AdSlotPaymentSourceType
    = ASPSTPlanningPaymentSourceTypeAgencyPaid
      -- ^ @PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID@
    | ASPSTPlanningPaymentSourceTypePublisherPaid
      -- ^ @PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdSlotPaymentSourceType

instance FromText AdSlotPaymentSourceType where
    fromText = \case
        "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID" -> Just ASPSTPlanningPaymentSourceTypeAgencyPaid
        "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID" -> Just ASPSTPlanningPaymentSourceTypePublisherPaid
        _ -> Nothing

instance ToText AdSlotPaymentSourceType where
    toText = \case
        ASPSTPlanningPaymentSourceTypeAgencyPaid -> "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID"
        ASPSTPlanningPaymentSourceTypePublisherPaid -> "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID"

-- | Type of ad. This is a required field on insertion. Note that default ads
-- (AD_SERVING_DEFAULT_AD) cannot be created directly (see Creative
-- resource).
data AdType
    = ATAdServingClickTracker
      -- ^ @AD_SERVING_CLICK_TRACKER@
    | ATAdServingDefaultAd
      -- ^ @AD_SERVING_DEFAULT_AD@
    | ATAdServingStandardAd
      -- ^ @AD_SERVING_STANDARD_AD@
    | ATAdServingTracking
      -- ^ @AD_SERVING_TRACKING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdType

instance FromText AdType where
    fromText = \case
        "AD_SERVING_CLICK_TRACKER" -> Just ATAdServingClickTracker
        "AD_SERVING_DEFAULT_AD" -> Just ATAdServingDefaultAd
        "AD_SERVING_STANDARD_AD" -> Just ATAdServingStandardAd
        "AD_SERVING_TRACKING" -> Just ATAdServingTracking
        _ -> Nothing

instance ToText AdType where
    toText = \case
        ATAdServingClickTracker -> "AD_SERVING_CLICK_TRACKER"
        ATAdServingDefaultAd -> "AD_SERVING_DEFAULT_AD"
        ATAdServingStandardAd -> "AD_SERVING_STANDARD_AD"
        ATAdServingTracking -> "AD_SERVING_TRACKING"

-- | Status of this advertiser.
data AdvertiserStatus
    = ASApproved
      -- ^ @APPROVED@
    | ASOnHold
      -- ^ @ON_HOLD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertiserStatus

instance FromText AdvertiserStatus where
    fromText = \case
        "APPROVED" -> Just ASApproved
        "ON_HOLD" -> Just ASOnHold
        _ -> Nothing

instance ToText AdvertiserStatus where
    toText = \case
        ASApproved -> "APPROVED"
        ASOnHold -> "ON_HOLD"

-- | Type of artwork used for the creative. This is a read-only field.
-- Applicable to the following creative types: all RICH_MEDIA, and all
-- VPAID.
data CreativeArtworkType
    = CATArtworkTypeFlash
      -- ^ @ARTWORK_TYPE_FLASH@
    | CATArtworkTypeHTML5
      -- ^ @ARTWORK_TYPE_HTML5@
    | CATArtworkTypeMixed
      -- ^ @ARTWORK_TYPE_MIXED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeArtworkType

instance FromText CreativeArtworkType where
    fromText = \case
        "ARTWORK_TYPE_FLASH" -> Just CATArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Just CATArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Just CATArtworkTypeMixed
        _ -> Nothing

instance ToText CreativeArtworkType where
    toText = \case
        CATArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        CATArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        CATArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"

-- | Possible alignments for an asset. This is a read-only field. Applicable
-- to the following creative types: RICH_MEDIA_MULTI_FLOATING.
data CreativeAssetAlignment
    = CAAAlignmentBottom
      -- ^ @ALIGNMENT_BOTTOM@
    | CAAAlignmentLeft
      -- ^ @ALIGNMENT_LEFT@
    | CAAAlignmentRight
      -- ^ @ALIGNMENT_RIGHT@
    | CAAAlignmentTop
      -- ^ @ALIGNMENT_TOP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetAlignment

instance FromText CreativeAssetAlignment where
    fromText = \case
        "ALIGNMENT_BOTTOM" -> Just CAAAlignmentBottom
        "ALIGNMENT_LEFT" -> Just CAAAlignmentLeft
        "ALIGNMENT_RIGHT" -> Just CAAAlignmentRight
        "ALIGNMENT_TOP" -> Just CAAAlignmentTop
        _ -> Nothing

instance ToText CreativeAssetAlignment where
    toText = \case
        CAAAlignmentBottom -> "ALIGNMENT_BOTTOM"
        CAAAlignmentLeft -> "ALIGNMENT_LEFT"
        CAAAlignmentRight -> "ALIGNMENT_RIGHT"
        CAAAlignmentTop -> "ALIGNMENT_TOP"

-- | Artwork type of rich media creative. This is a read-only field.
-- Applicable to the following creative types: all RICH_MEDIA.
data CreativeAssetArtworkType
    = CAATArtworkTypeFlash
      -- ^ @ARTWORK_TYPE_FLASH@
    | CAATArtworkTypeHTML5
      -- ^ @ARTWORK_TYPE_HTML5@
    | CAATArtworkTypeMixed
      -- ^ @ARTWORK_TYPE_MIXED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetArtworkType

instance FromText CreativeAssetArtworkType where
    fromText = \case
        "ARTWORK_TYPE_FLASH" -> Just CAATArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Just CAATArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Just CAATArtworkTypeMixed
        _ -> Nothing

instance ToText CreativeAssetArtworkType where
    toText = \case
        CAATArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        CAATArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        CAATArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"

-- | Rich media child asset type. This is a read-only field. Applicable to
-- the following creative types: all VPAID.
data CreativeAssetChildAssetType
    = CACATChildAssetTypeData
      -- ^ @CHILD_ASSET_TYPE_DATA@
    | CACATChildAssetTypeFlash
      -- ^ @CHILD_ASSET_TYPE_FLASH@
    | CACATChildAssetTypeImage
      -- ^ @CHILD_ASSET_TYPE_IMAGE@
    | CACATChildAssetTypeVideo
      -- ^ @CHILD_ASSET_TYPE_VIDEO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetChildAssetType

instance FromText CreativeAssetChildAssetType where
    fromText = \case
        "CHILD_ASSET_TYPE_DATA" -> Just CACATChildAssetTypeData
        "CHILD_ASSET_TYPE_FLASH" -> Just CACATChildAssetTypeFlash
        "CHILD_ASSET_TYPE_IMAGE" -> Just CACATChildAssetTypeImage
        "CHILD_ASSET_TYPE_VIDEO" -> Just CACATChildAssetTypeVideo
        _ -> Nothing

instance ToText CreativeAssetChildAssetType where
    toText = \case
        CACATChildAssetTypeData -> "CHILD_ASSET_TYPE_DATA"
        CACATChildAssetTypeFlash -> "CHILD_ASSET_TYPE_FLASH"
        CACATChildAssetTypeImage -> "CHILD_ASSET_TYPE_IMAGE"
        CACATChildAssetTypeVideo -> "CHILD_ASSET_TYPE_VIDEO"

-- | Type of rich media asset. This is a read-only field. Applicable to the
-- following creative types: all RICH_MEDIA.
data CreativeAssetDisplayType
    = CADTAssetDisplayTypeExpanding
      -- ^ @ASSET_DISPLAY_TYPE_EXPANDING@
    | CADTAssetDisplayTypeFlashInFlash
      -- ^ @ASSET_DISPLAY_TYPE_FLASH_IN_FLASH@
    | CADTAssetDisplayTypeFlashInFlashExpanding
      -- ^ @ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING@
    | CADTAssetDisplayTypeFloating
      -- ^ @ASSET_DISPLAY_TYPE_FLOATING@
    | CADTAssetDisplayTypeInpage
      -- ^ @ASSET_DISPLAY_TYPE_INPAGE@
    | CADTAssetDisplayTypeOverlay
      -- ^ @ASSET_DISPLAY_TYPE_OVERLAY@
    | CADTAssetDisplayTypePeelDown
      -- ^ @ASSET_DISPLAY_TYPE_PEEL_DOWN@
    | CADTAssetDisplayTypeVpaidLinear
      -- ^ @ASSET_DISPLAY_TYPE_VPAID_LINEAR@
    | CADTAssetDisplayTypeVpaidNonLinear
      -- ^ @ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetDisplayType

instance FromText CreativeAssetDisplayType where
    fromText = \case
        "ASSET_DISPLAY_TYPE_EXPANDING" -> Just CADTAssetDisplayTypeExpanding
        "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH" -> Just CADTAssetDisplayTypeFlashInFlash
        "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING" -> Just CADTAssetDisplayTypeFlashInFlashExpanding
        "ASSET_DISPLAY_TYPE_FLOATING" -> Just CADTAssetDisplayTypeFloating
        "ASSET_DISPLAY_TYPE_INPAGE" -> Just CADTAssetDisplayTypeInpage
        "ASSET_DISPLAY_TYPE_OVERLAY" -> Just CADTAssetDisplayTypeOverlay
        "ASSET_DISPLAY_TYPE_PEEL_DOWN" -> Just CADTAssetDisplayTypePeelDown
        "ASSET_DISPLAY_TYPE_VPAID_LINEAR" -> Just CADTAssetDisplayTypeVpaidLinear
        "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR" -> Just CADTAssetDisplayTypeVpaidNonLinear
        _ -> Nothing

instance ToText CreativeAssetDisplayType where
    toText = \case
        CADTAssetDisplayTypeExpanding -> "ASSET_DISPLAY_TYPE_EXPANDING"
        CADTAssetDisplayTypeFlashInFlash -> "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH"
        CADTAssetDisplayTypeFlashInFlashExpanding -> "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING"
        CADTAssetDisplayTypeFloating -> "ASSET_DISPLAY_TYPE_FLOATING"
        CADTAssetDisplayTypeInpage -> "ASSET_DISPLAY_TYPE_INPAGE"
        CADTAssetDisplayTypeOverlay -> "ASSET_DISPLAY_TYPE_OVERLAY"
        CADTAssetDisplayTypePeelDown -> "ASSET_DISPLAY_TYPE_PEEL_DOWN"
        CADTAssetDisplayTypeVpaidLinear -> "ASSET_DISPLAY_TYPE_VPAID_LINEAR"
        CADTAssetDisplayTypeVpaidNonLinear -> "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR"

-- | Duration type for which an asset will be displayed. Applicable to the
-- following creative types: all RICH_MEDIA.
data CreativeAssetDurationType
    = CADTAssetDurationTypeAuto
      -- ^ @ASSET_DURATION_TYPE_AUTO@
    | CADTAssetDurationTypeCustom
      -- ^ @ASSET_DURATION_TYPE_CUSTOM@
    | CADTAssetDurationTypeNone
      -- ^ @ASSET_DURATION_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetDurationType

instance FromText CreativeAssetDurationType where
    fromText = \case
        "ASSET_DURATION_TYPE_AUTO" -> Just CADTAssetDurationTypeAuto
        "ASSET_DURATION_TYPE_CUSTOM" -> Just CADTAssetDurationTypeCustom
        "ASSET_DURATION_TYPE_NONE" -> Just CADTAssetDurationTypeNone
        _ -> Nothing

instance ToText CreativeAssetDurationType where
    toText = \case
        CADTAssetDurationTypeAuto -> "ASSET_DURATION_TYPE_AUTO"
        CADTAssetDurationTypeCustom -> "ASSET_DURATION_TYPE_CUSTOM"
        CADTAssetDurationTypeNone -> "ASSET_DURATION_TYPE_NONE"

-- | Type of asset to upload. This is a required field. IMAGE is solely used
-- for IMAGE creatives. Other image assets should use HTML_IMAGE.
data CreativeAssetIdType
    = CAITFlash
      -- ^ @FLASH@
    | CAITHTML
      -- ^ @HTML@
    | CAITHTMLImage
      -- ^ @HTML_IMAGE@
    | CAITImage
      -- ^ @IMAGE@
    | CAITVideo
      -- ^ @VIDEO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetIdType

instance FromText CreativeAssetIdType where
    fromText = \case
        "FLASH" -> Just CAITFlash
        "HTML" -> Just CAITHTML
        "HTML_IMAGE" -> Just CAITHTMLImage
        "IMAGE" -> Just CAITImage
        "VIDEO" -> Just CAITVideo
        _ -> Nothing

instance ToText CreativeAssetIdType where
    toText = \case
        CAITFlash -> "FLASH"
        CAITHTML -> "HTML"
        CAITHTMLImage -> "HTML_IMAGE"
        CAITImage -> "IMAGE"
        CAITVideo -> "VIDEO"

data CreativeAssetItemDetectedFeatures
    = CAIDFApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CAIDFAudio
      -- ^ @AUDIO@
    | CAIDFCanvas
      -- ^ @CANVAS@
    | CAIDFCanvasText
      -- ^ @CANVAS_TEXT@
    | CAIDFCssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CAIDFCssBackgroundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CAIDFCssBorderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CAIDFCssBorderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CAIDFCssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CAIDFCssColumns
      -- ^ @CSS_COLUMNS@
    | CAIDFCssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CAIDFCssFontFace
      -- ^ @CSS_FONT_FACE@
    | CAIDFCssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CAIDFCssGradients
      -- ^ @CSS_GRADIENTS@
    | CAIDFCssHsla
      -- ^ @CSS_HSLA@
    | CAIDFCssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CAIDFCssOpacity
      -- ^ @CSS_OPACITY@
    | CAIDFCssReflections
      -- ^ @CSS_REFLECTIONS@
    | CAIDFCssRgba
      -- ^ @CSS_RGBA@
    | CAIDFCssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CAIDFCssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CAIDFCssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CAIDFCssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CAIDFDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CAIDFGeoLocation
      -- ^ @GEO_LOCATION@
    | CAIDFHashChange
      -- ^ @HASH_CHANGE@
    | CAIDFHistory
      -- ^ @HISTORY@
    | CAIDFIndexedDB
      -- ^ @INDEXED_DB@
    | CAIDFInlineSvg
      -- ^ @INLINE_SVG@
    | CAIDFInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CAIDFInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CAIDFInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CAIDFInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CAIDFInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CAIDFInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CAIDFInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CAIDFInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CAIDFInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CAIDFInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CAIDFInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CAIDFInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CAIDFInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CAIDFInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CAIDFInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CAIDFInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CAIDFInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CAIDFInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CAIDFInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CAIDFInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CAIDFInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CAIDFInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CAIDFInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CAIDFLocalStorage
      -- ^ @LOCAL_STORAGE@
    | CAIDFPostMessage
      -- ^ @POST_MESSAGE@
    | CAIDFSessionStorage
      -- ^ @SESSION_STORAGE@
    | CAIDFSmil
      -- ^ @SMIL@
    | CAIDFSvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CAIDFSvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | CAIDFSvgFilters
      -- ^ @SVG_FILTERS@
    | CAIDFSvgHref
      -- ^ @SVG_HREF@
    | CAIDFTouch
      -- ^ @TOUCH@
    | CAIDFVideo
      -- ^ @VIDEO@
    | CAIDFWebgl
      -- ^ @WEBGL@
    | CAIDFWebSockets
      -- ^ @WEB_SOCKETS@
    | CAIDFWebSqlDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CAIDFWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetItemDetectedFeatures

instance FromText CreativeAssetItemDetectedFeatures where
    fromText = \case
        "APPLICATION_CACHE" -> Just CAIDFApplicationCache
        "AUDIO" -> Just CAIDFAudio
        "CANVAS" -> Just CAIDFCanvas
        "CANVAS_TEXT" -> Just CAIDFCanvasText
        "CSS_ANIMATIONS" -> Just CAIDFCssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CAIDFCssBackgroundSize
        "CSS_BORDER_IMAGE" -> Just CAIDFCssBorderImage
        "CSS_BORDER_RADIUS" -> Just CAIDFCssBorderRadius
        "CSS_BOX_SHADOW" -> Just CAIDFCssBoxShadow
        "CSS_COLUMNS" -> Just CAIDFCssColumns
        "CSS_FLEX_BOX" -> Just CAIDFCssFlexBox
        "CSS_FONT_FACE" -> Just CAIDFCssFontFace
        "CSS_GENERATED_CONTENT" -> Just CAIDFCssGeneratedContent
        "CSS_GRADIENTS" -> Just CAIDFCssGradients
        "CSS_HSLA" -> Just CAIDFCssHsla
        "CSS_MULTIPLE_BGS" -> Just CAIDFCssMultipleBgs
        "CSS_OPACITY" -> Just CAIDFCssOpacity
        "CSS_REFLECTIONS" -> Just CAIDFCssReflections
        "CSS_RGBA" -> Just CAIDFCssRgba
        "CSS_TEXT_SHADOW" -> Just CAIDFCssTextShadow
        "CSS_TRANSFORMS" -> Just CAIDFCssTransforms
        "CSS_TRANSFORMS3D" -> Just CAIDFCssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CAIDFCssTransitions
        "DRAG_AND_DROP" -> Just CAIDFDragAndDrop
        "GEO_LOCATION" -> Just CAIDFGeoLocation
        "HASH_CHANGE" -> Just CAIDFHashChange
        "HISTORY" -> Just CAIDFHistory
        "INDEXED_DB" -> Just CAIDFIndexedDB
        "INLINE_SVG" -> Just CAIDFInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just CAIDFInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just CAIDFInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just CAIDFInputAttrList
        "INPUT_ATTR_MAX" -> Just CAIDFInputAttrMax
        "INPUT_ATTR_MIN" -> Just CAIDFInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just CAIDFInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just CAIDFInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just CAIDFInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just CAIDFInputAttrRequired
        "INPUT_ATTR_STEP" -> Just CAIDFInputAttrStep
        "INPUT_TYPE_COLOR" -> Just CAIDFInputTypeColor
        "INPUT_TYPE_DATE" -> Just CAIDFInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just CAIDFInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just CAIDFInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just CAIDFInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just CAIDFInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just CAIDFInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just CAIDFInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just CAIDFInputTypeSearch
        "INPUT_TYPE_TEL" -> Just CAIDFInputTypeTel
        "INPUT_TYPE_TIME" -> Just CAIDFInputTypeTime
        "INPUT_TYPE_URL" -> Just CAIDFInputTypeURL
        "INPUT_TYPE_WEEK" -> Just CAIDFInputTypeWeek
        "LOCAL_STORAGE" -> Just CAIDFLocalStorage
        "POST_MESSAGE" -> Just CAIDFPostMessage
        "SESSION_STORAGE" -> Just CAIDFSessionStorage
        "SMIL" -> Just CAIDFSmil
        "SVG_CLIP_PATHS" -> Just CAIDFSvgClipPaths
        "SVG_FE_IMAGE" -> Just CAIDFSvgFeImage
        "SVG_FILTERS" -> Just CAIDFSvgFilters
        "SVG_HREF" -> Just CAIDFSvgHref
        "TOUCH" -> Just CAIDFTouch
        "VIDEO" -> Just CAIDFVideo
        "WEBGL" -> Just CAIDFWebgl
        "WEB_SOCKETS" -> Just CAIDFWebSockets
        "WEB_SQL_DATABASE" -> Just CAIDFWebSqlDatabase
        "WEB_WORKERS" -> Just CAIDFWebWorkers
        _ -> Nothing

instance ToText CreativeAssetItemDetectedFeatures where
    toText = \case
        CAIDFApplicationCache -> "APPLICATION_CACHE"
        CAIDFAudio -> "AUDIO"
        CAIDFCanvas -> "CANVAS"
        CAIDFCanvasText -> "CANVAS_TEXT"
        CAIDFCssAnimations -> "CSS_ANIMATIONS"
        CAIDFCssBackgroundSize -> "CSS_BACKGROUND_SIZE"
        CAIDFCssBorderImage -> "CSS_BORDER_IMAGE"
        CAIDFCssBorderRadius -> "CSS_BORDER_RADIUS"
        CAIDFCssBoxShadow -> "CSS_BOX_SHADOW"
        CAIDFCssColumns -> "CSS_COLUMNS"
        CAIDFCssFlexBox -> "CSS_FLEX_BOX"
        CAIDFCssFontFace -> "CSS_FONT_FACE"
        CAIDFCssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CAIDFCssGradients -> "CSS_GRADIENTS"
        CAIDFCssHsla -> "CSS_HSLA"
        CAIDFCssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CAIDFCssOpacity -> "CSS_OPACITY"
        CAIDFCssReflections -> "CSS_REFLECTIONS"
        CAIDFCssRgba -> "CSS_RGBA"
        CAIDFCssTextShadow -> "CSS_TEXT_SHADOW"
        CAIDFCssTransforms -> "CSS_TRANSFORMS"
        CAIDFCssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CAIDFCssTransitions -> "CSS_TRANSITIONS"
        CAIDFDragAndDrop -> "DRAG_AND_DROP"
        CAIDFGeoLocation -> "GEO_LOCATION"
        CAIDFHashChange -> "HASH_CHANGE"
        CAIDFHistory -> "HISTORY"
        CAIDFIndexedDB -> "INDEXED_DB"
        CAIDFInlineSvg -> "INLINE_SVG"
        CAIDFInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CAIDFInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CAIDFInputAttrList -> "INPUT_ATTR_LIST"
        CAIDFInputAttrMax -> "INPUT_ATTR_MAX"
        CAIDFInputAttrMin -> "INPUT_ATTR_MIN"
        CAIDFInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CAIDFInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CAIDFInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CAIDFInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CAIDFInputAttrStep -> "INPUT_ATTR_STEP"
        CAIDFInputTypeColor -> "INPUT_TYPE_COLOR"
        CAIDFInputTypeDate -> "INPUT_TYPE_DATE"
        CAIDFInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CAIDFInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CAIDFInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CAIDFInputTypeMonth -> "INPUT_TYPE_MONTH"
        CAIDFInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CAIDFInputTypeRange -> "INPUT_TYPE_RANGE"
        CAIDFInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CAIDFInputTypeTel -> "INPUT_TYPE_TEL"
        CAIDFInputTypeTime -> "INPUT_TYPE_TIME"
        CAIDFInputTypeURL -> "INPUT_TYPE_URL"
        CAIDFInputTypeWeek -> "INPUT_TYPE_WEEK"
        CAIDFLocalStorage -> "LOCAL_STORAGE"
        CAIDFPostMessage -> "POST_MESSAGE"
        CAIDFSessionStorage -> "SESSION_STORAGE"
        CAIDFSmil -> "SMIL"
        CAIDFSvgClipPaths -> "SVG_CLIP_PATHS"
        CAIDFSvgFeImage -> "SVG_FE_IMAGE"
        CAIDFSvgFilters -> "SVG_FILTERS"
        CAIDFSvgHref -> "SVG_HREF"
        CAIDFTouch -> "TOUCH"
        CAIDFVideo -> "VIDEO"
        CAIDFWebgl -> "WEBGL"
        CAIDFWebSockets -> "WEB_SOCKETS"
        CAIDFWebSqlDatabase -> "WEB_SQL_DATABASE"
        CAIDFWebWorkers -> "WEB_WORKERS"

data CreativeAssetMetadataItemDetectedFeatures
    = CAMIDFApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CAMIDFAudio
      -- ^ @AUDIO@
    | CAMIDFCanvas
      -- ^ @CANVAS@
    | CAMIDFCanvasText
      -- ^ @CANVAS_TEXT@
    | CAMIDFCssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CAMIDFCssBackgroundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CAMIDFCssBorderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CAMIDFCssBorderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CAMIDFCssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CAMIDFCssColumns
      -- ^ @CSS_COLUMNS@
    | CAMIDFCssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CAMIDFCssFontFace
      -- ^ @CSS_FONT_FACE@
    | CAMIDFCssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CAMIDFCssGradients
      -- ^ @CSS_GRADIENTS@
    | CAMIDFCssHsla
      -- ^ @CSS_HSLA@
    | CAMIDFCssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CAMIDFCssOpacity
      -- ^ @CSS_OPACITY@
    | CAMIDFCssReflections
      -- ^ @CSS_REFLECTIONS@
    | CAMIDFCssRgba
      -- ^ @CSS_RGBA@
    | CAMIDFCssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CAMIDFCssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CAMIDFCssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CAMIDFCssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CAMIDFDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CAMIDFGeoLocation
      -- ^ @GEO_LOCATION@
    | CAMIDFHashChange
      -- ^ @HASH_CHANGE@
    | CAMIDFHistory
      -- ^ @HISTORY@
    | CAMIDFIndexedDB
      -- ^ @INDEXED_DB@
    | CAMIDFInlineSvg
      -- ^ @INLINE_SVG@
    | CAMIDFInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CAMIDFInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CAMIDFInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CAMIDFInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CAMIDFInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CAMIDFInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CAMIDFInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CAMIDFInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CAMIDFInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CAMIDFInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CAMIDFInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CAMIDFInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CAMIDFInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CAMIDFInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CAMIDFInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CAMIDFInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CAMIDFInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CAMIDFInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CAMIDFInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CAMIDFInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CAMIDFInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CAMIDFInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CAMIDFInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CAMIDFLocalStorage
      -- ^ @LOCAL_STORAGE@
    | CAMIDFPostMessage
      -- ^ @POST_MESSAGE@
    | CAMIDFSessionStorage
      -- ^ @SESSION_STORAGE@
    | CAMIDFSmil
      -- ^ @SMIL@
    | CAMIDFSvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CAMIDFSvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | CAMIDFSvgFilters
      -- ^ @SVG_FILTERS@
    | CAMIDFSvgHref
      -- ^ @SVG_HREF@
    | CAMIDFTouch
      -- ^ @TOUCH@
    | CAMIDFVideo
      -- ^ @VIDEO@
    | CAMIDFWebgl
      -- ^ @WEBGL@
    | CAMIDFWebSockets
      -- ^ @WEB_SOCKETS@
    | CAMIDFWebSqlDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CAMIDFWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetMetadataItemDetectedFeatures

instance FromText CreativeAssetMetadataItemDetectedFeatures where
    fromText = \case
        "APPLICATION_CACHE" -> Just CAMIDFApplicationCache
        "AUDIO" -> Just CAMIDFAudio
        "CANVAS" -> Just CAMIDFCanvas
        "CANVAS_TEXT" -> Just CAMIDFCanvasText
        "CSS_ANIMATIONS" -> Just CAMIDFCssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CAMIDFCssBackgroundSize
        "CSS_BORDER_IMAGE" -> Just CAMIDFCssBorderImage
        "CSS_BORDER_RADIUS" -> Just CAMIDFCssBorderRadius
        "CSS_BOX_SHADOW" -> Just CAMIDFCssBoxShadow
        "CSS_COLUMNS" -> Just CAMIDFCssColumns
        "CSS_FLEX_BOX" -> Just CAMIDFCssFlexBox
        "CSS_FONT_FACE" -> Just CAMIDFCssFontFace
        "CSS_GENERATED_CONTENT" -> Just CAMIDFCssGeneratedContent
        "CSS_GRADIENTS" -> Just CAMIDFCssGradients
        "CSS_HSLA" -> Just CAMIDFCssHsla
        "CSS_MULTIPLE_BGS" -> Just CAMIDFCssMultipleBgs
        "CSS_OPACITY" -> Just CAMIDFCssOpacity
        "CSS_REFLECTIONS" -> Just CAMIDFCssReflections
        "CSS_RGBA" -> Just CAMIDFCssRgba
        "CSS_TEXT_SHADOW" -> Just CAMIDFCssTextShadow
        "CSS_TRANSFORMS" -> Just CAMIDFCssTransforms
        "CSS_TRANSFORMS3D" -> Just CAMIDFCssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CAMIDFCssTransitions
        "DRAG_AND_DROP" -> Just CAMIDFDragAndDrop
        "GEO_LOCATION" -> Just CAMIDFGeoLocation
        "HASH_CHANGE" -> Just CAMIDFHashChange
        "HISTORY" -> Just CAMIDFHistory
        "INDEXED_DB" -> Just CAMIDFIndexedDB
        "INLINE_SVG" -> Just CAMIDFInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just CAMIDFInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just CAMIDFInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just CAMIDFInputAttrList
        "INPUT_ATTR_MAX" -> Just CAMIDFInputAttrMax
        "INPUT_ATTR_MIN" -> Just CAMIDFInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just CAMIDFInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just CAMIDFInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just CAMIDFInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just CAMIDFInputAttrRequired
        "INPUT_ATTR_STEP" -> Just CAMIDFInputAttrStep
        "INPUT_TYPE_COLOR" -> Just CAMIDFInputTypeColor
        "INPUT_TYPE_DATE" -> Just CAMIDFInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just CAMIDFInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just CAMIDFInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just CAMIDFInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just CAMIDFInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just CAMIDFInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just CAMIDFInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just CAMIDFInputTypeSearch
        "INPUT_TYPE_TEL" -> Just CAMIDFInputTypeTel
        "INPUT_TYPE_TIME" -> Just CAMIDFInputTypeTime
        "INPUT_TYPE_URL" -> Just CAMIDFInputTypeURL
        "INPUT_TYPE_WEEK" -> Just CAMIDFInputTypeWeek
        "LOCAL_STORAGE" -> Just CAMIDFLocalStorage
        "POST_MESSAGE" -> Just CAMIDFPostMessage
        "SESSION_STORAGE" -> Just CAMIDFSessionStorage
        "SMIL" -> Just CAMIDFSmil
        "SVG_CLIP_PATHS" -> Just CAMIDFSvgClipPaths
        "SVG_FE_IMAGE" -> Just CAMIDFSvgFeImage
        "SVG_FILTERS" -> Just CAMIDFSvgFilters
        "SVG_HREF" -> Just CAMIDFSvgHref
        "TOUCH" -> Just CAMIDFTouch
        "VIDEO" -> Just CAMIDFVideo
        "WEBGL" -> Just CAMIDFWebgl
        "WEB_SOCKETS" -> Just CAMIDFWebSockets
        "WEB_SQL_DATABASE" -> Just CAMIDFWebSqlDatabase
        "WEB_WORKERS" -> Just CAMIDFWebWorkers
        _ -> Nothing

instance ToText CreativeAssetMetadataItemDetectedFeatures where
    toText = \case
        CAMIDFApplicationCache -> "APPLICATION_CACHE"
        CAMIDFAudio -> "AUDIO"
        CAMIDFCanvas -> "CANVAS"
        CAMIDFCanvasText -> "CANVAS_TEXT"
        CAMIDFCssAnimations -> "CSS_ANIMATIONS"
        CAMIDFCssBackgroundSize -> "CSS_BACKGROUND_SIZE"
        CAMIDFCssBorderImage -> "CSS_BORDER_IMAGE"
        CAMIDFCssBorderRadius -> "CSS_BORDER_RADIUS"
        CAMIDFCssBoxShadow -> "CSS_BOX_SHADOW"
        CAMIDFCssColumns -> "CSS_COLUMNS"
        CAMIDFCssFlexBox -> "CSS_FLEX_BOX"
        CAMIDFCssFontFace -> "CSS_FONT_FACE"
        CAMIDFCssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CAMIDFCssGradients -> "CSS_GRADIENTS"
        CAMIDFCssHsla -> "CSS_HSLA"
        CAMIDFCssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CAMIDFCssOpacity -> "CSS_OPACITY"
        CAMIDFCssReflections -> "CSS_REFLECTIONS"
        CAMIDFCssRgba -> "CSS_RGBA"
        CAMIDFCssTextShadow -> "CSS_TEXT_SHADOW"
        CAMIDFCssTransforms -> "CSS_TRANSFORMS"
        CAMIDFCssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CAMIDFCssTransitions -> "CSS_TRANSITIONS"
        CAMIDFDragAndDrop -> "DRAG_AND_DROP"
        CAMIDFGeoLocation -> "GEO_LOCATION"
        CAMIDFHashChange -> "HASH_CHANGE"
        CAMIDFHistory -> "HISTORY"
        CAMIDFIndexedDB -> "INDEXED_DB"
        CAMIDFInlineSvg -> "INLINE_SVG"
        CAMIDFInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CAMIDFInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CAMIDFInputAttrList -> "INPUT_ATTR_LIST"
        CAMIDFInputAttrMax -> "INPUT_ATTR_MAX"
        CAMIDFInputAttrMin -> "INPUT_ATTR_MIN"
        CAMIDFInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CAMIDFInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CAMIDFInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CAMIDFInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CAMIDFInputAttrStep -> "INPUT_ATTR_STEP"
        CAMIDFInputTypeColor -> "INPUT_TYPE_COLOR"
        CAMIDFInputTypeDate -> "INPUT_TYPE_DATE"
        CAMIDFInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CAMIDFInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CAMIDFInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CAMIDFInputTypeMonth -> "INPUT_TYPE_MONTH"
        CAMIDFInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CAMIDFInputTypeRange -> "INPUT_TYPE_RANGE"
        CAMIDFInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CAMIDFInputTypeTel -> "INPUT_TYPE_TEL"
        CAMIDFInputTypeTime -> "INPUT_TYPE_TIME"
        CAMIDFInputTypeURL -> "INPUT_TYPE_URL"
        CAMIDFInputTypeWeek -> "INPUT_TYPE_WEEK"
        CAMIDFLocalStorage -> "LOCAL_STORAGE"
        CAMIDFPostMessage -> "POST_MESSAGE"
        CAMIDFSessionStorage -> "SESSION_STORAGE"
        CAMIDFSmil -> "SMIL"
        CAMIDFSvgClipPaths -> "SVG_CLIP_PATHS"
        CAMIDFSvgFeImage -> "SVG_FE_IMAGE"
        CAMIDFSvgFilters -> "SVG_FILTERS"
        CAMIDFSvgHref -> "SVG_HREF"
        CAMIDFTouch -> "TOUCH"
        CAMIDFVideo -> "VIDEO"
        CAMIDFWebgl -> "WEBGL"
        CAMIDFWebSockets -> "WEB_SOCKETS"
        CAMIDFWebSqlDatabase -> "WEB_SQL_DATABASE"
        CAMIDFWebWorkers -> "WEB_WORKERS"

data CreativeAssetMetadataItemWarnedValidationRules
    = CAMIWVRADMobReferenced
      -- ^ @ADMOB_REFERENCED@
    | CAMIWVRAssetFormatUnsupportedDcm
      -- ^ @ASSET_FORMAT_UNSUPPORTED_DCM@
    | CAMIWVRAssetInvalid
      -- ^ @ASSET_INVALID@
    | CAMIWVRClickTagInvalid
      -- ^ @CLICK_TAG_INVALID@
    | CAMIWVRClickTagMissing
      -- ^ @CLICK_TAG_MISSING@
    | CAMIWVRClickTagMoreThanOne
      -- ^ @CLICK_TAG_MORE_THAN_ONE@
    | CAMIWVRClickTagNonTopLevel
      -- ^ @CLICK_TAG_NON_TOP_LEVEL@
    | CAMIWVRComponentUnsupportedDcm
      -- ^ @COMPONENT_UNSUPPORTED_DCM@
    | CAMIWVREnablerUnsupportedMethodDcm
      -- ^ @ENABLER_UNSUPPORTED_METHOD_DCM@
    | CAMIWVRExternalFileReferenced
      -- ^ @EXTERNAL_FILE_REFERENCED@
    | CAMIWVRFileDetailEmpty
      -- ^ @FILE_DETAIL_EMPTY@
    | CAMIWVRFileTypeInvalid
      -- ^ @FILE_TYPE_INVALID@
    | CAMIWVRGwdPropertiesInvalid
      -- ^ @GWD_PROPERTIES_INVALID@
    | CAMIWVRHTML5FeatureUnsupported
      -- ^ @HTML5_FEATURE_UNSUPPORTED@
    | CAMIWVRLinkedFileNotFound
      -- ^ @LINKED_FILE_NOT_FOUND@
    | CAMIWVRMaxFlashVersion11
      -- ^ @MAX_FLASH_VERSION_11@
    | CAMIWVRMraidReferenced
      -- ^ @MRAID_REFERENCED@
    | CAMIWVRNotSSLCompliant
      -- ^ @NOT_SSL_COMPLIANT@
    | CAMIWVROrphanedAsset
      -- ^ @ORPHANED_ASSET@
    | CAMIWVRPrimaryHTMLMissing
      -- ^ @PRIMARY_HTML_MISSING@
    | CAMIWVRZipInvalid
      -- ^ @ZIP_INVALID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetMetadataItemWarnedValidationRules

instance FromText CreativeAssetMetadataItemWarnedValidationRules where
    fromText = \case
        "ADMOB_REFERENCED" -> Just CAMIWVRADMobReferenced
        "ASSET_FORMAT_UNSUPPORTED_DCM" -> Just CAMIWVRAssetFormatUnsupportedDcm
        "ASSET_INVALID" -> Just CAMIWVRAssetInvalid
        "CLICK_TAG_INVALID" -> Just CAMIWVRClickTagInvalid
        "CLICK_TAG_MISSING" -> Just CAMIWVRClickTagMissing
        "CLICK_TAG_MORE_THAN_ONE" -> Just CAMIWVRClickTagMoreThanOne
        "CLICK_TAG_NON_TOP_LEVEL" -> Just CAMIWVRClickTagNonTopLevel
        "COMPONENT_UNSUPPORTED_DCM" -> Just CAMIWVRComponentUnsupportedDcm
        "ENABLER_UNSUPPORTED_METHOD_DCM" -> Just CAMIWVREnablerUnsupportedMethodDcm
        "EXTERNAL_FILE_REFERENCED" -> Just CAMIWVRExternalFileReferenced
        "FILE_DETAIL_EMPTY" -> Just CAMIWVRFileDetailEmpty
        "FILE_TYPE_INVALID" -> Just CAMIWVRFileTypeInvalid
        "GWD_PROPERTIES_INVALID" -> Just CAMIWVRGwdPropertiesInvalid
        "HTML5_FEATURE_UNSUPPORTED" -> Just CAMIWVRHTML5FeatureUnsupported
        "LINKED_FILE_NOT_FOUND" -> Just CAMIWVRLinkedFileNotFound
        "MAX_FLASH_VERSION_11" -> Just CAMIWVRMaxFlashVersion11
        "MRAID_REFERENCED" -> Just CAMIWVRMraidReferenced
        "NOT_SSL_COMPLIANT" -> Just CAMIWVRNotSSLCompliant
        "ORPHANED_ASSET" -> Just CAMIWVROrphanedAsset
        "PRIMARY_HTML_MISSING" -> Just CAMIWVRPrimaryHTMLMissing
        "ZIP_INVALID" -> Just CAMIWVRZipInvalid
        _ -> Nothing

instance ToText CreativeAssetMetadataItemWarnedValidationRules where
    toText = \case
        CAMIWVRADMobReferenced -> "ADMOB_REFERENCED"
        CAMIWVRAssetFormatUnsupportedDcm -> "ASSET_FORMAT_UNSUPPORTED_DCM"
        CAMIWVRAssetInvalid -> "ASSET_INVALID"
        CAMIWVRClickTagInvalid -> "CLICK_TAG_INVALID"
        CAMIWVRClickTagMissing -> "CLICK_TAG_MISSING"
        CAMIWVRClickTagMoreThanOne -> "CLICK_TAG_MORE_THAN_ONE"
        CAMIWVRClickTagNonTopLevel -> "CLICK_TAG_NON_TOP_LEVEL"
        CAMIWVRComponentUnsupportedDcm -> "COMPONENT_UNSUPPORTED_DCM"
        CAMIWVREnablerUnsupportedMethodDcm -> "ENABLER_UNSUPPORTED_METHOD_DCM"
        CAMIWVRExternalFileReferenced -> "EXTERNAL_FILE_REFERENCED"
        CAMIWVRFileDetailEmpty -> "FILE_DETAIL_EMPTY"
        CAMIWVRFileTypeInvalid -> "FILE_TYPE_INVALID"
        CAMIWVRGwdPropertiesInvalid -> "GWD_PROPERTIES_INVALID"
        CAMIWVRHTML5FeatureUnsupported -> "HTML5_FEATURE_UNSUPPORTED"
        CAMIWVRLinkedFileNotFound -> "LINKED_FILE_NOT_FOUND"
        CAMIWVRMaxFlashVersion11 -> "MAX_FLASH_VERSION_11"
        CAMIWVRMraidReferenced -> "MRAID_REFERENCED"
        CAMIWVRNotSSLCompliant -> "NOT_SSL_COMPLIANT"
        CAMIWVROrphanedAsset -> "ORPHANED_ASSET"
        CAMIWVRPrimaryHTMLMissing -> "PRIMARY_HTML_MISSING"
        CAMIWVRZipInvalid -> "ZIP_INVALID"

-- | Offset left unit for an asset. This is a read-only field. Applicable to
-- the following creative types: all RICH_MEDIA.
data CreativeAssetPositionLeftUnit
    = CAPLUOffsetUnitPercent
      -- ^ @OFFSET_UNIT_PERCENT@
    | CAPLUOffsetUnitPixel
      -- ^ @OFFSET_UNIT_PIXEL@
    | CAPLUOffsetUnitPixelFromCenter
      -- ^ @OFFSET_UNIT_PIXEL_FROM_CENTER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetPositionLeftUnit

instance FromText CreativeAssetPositionLeftUnit where
    fromText = \case
        "OFFSET_UNIT_PERCENT" -> Just CAPLUOffsetUnitPercent
        "OFFSET_UNIT_PIXEL" -> Just CAPLUOffsetUnitPixel
        "OFFSET_UNIT_PIXEL_FROM_CENTER" -> Just CAPLUOffsetUnitPixelFromCenter
        _ -> Nothing

instance ToText CreativeAssetPositionLeftUnit where
    toText = \case
        CAPLUOffsetUnitPercent -> "OFFSET_UNIT_PERCENT"
        CAPLUOffsetUnitPixel -> "OFFSET_UNIT_PIXEL"
        CAPLUOffsetUnitPixelFromCenter -> "OFFSET_UNIT_PIXEL_FROM_CENTER"

-- | Offset top unit for an asset. This is a read-only field if the asset
-- displayType is ASSET_DISPLAY_TYPE_OVERLAY. Applicable to the following
-- creative types: all RICH_MEDIA.
data CreativeAssetPositionTopUnit
    = CAPTUOffsetUnitPercent
      -- ^ @OFFSET_UNIT_PERCENT@
    | CAPTUOffsetUnitPixel
      -- ^ @OFFSET_UNIT_PIXEL@
    | CAPTUOffsetUnitPixelFromCenter
      -- ^ @OFFSET_UNIT_PIXEL_FROM_CENTER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetPositionTopUnit

instance FromText CreativeAssetPositionTopUnit where
    fromText = \case
        "OFFSET_UNIT_PERCENT" -> Just CAPTUOffsetUnitPercent
        "OFFSET_UNIT_PIXEL" -> Just CAPTUOffsetUnitPixel
        "OFFSET_UNIT_PIXEL_FROM_CENTER" -> Just CAPTUOffsetUnitPixelFromCenter
        _ -> Nothing

instance ToText CreativeAssetPositionTopUnit where
    toText = \case
        CAPTUOffsetUnitPercent -> "OFFSET_UNIT_PERCENT"
        CAPTUOffsetUnitPixel -> "OFFSET_UNIT_PIXEL"
        CAPTUOffsetUnitPixelFromCenter -> "OFFSET_UNIT_PIXEL_FROM_CENTER"

-- | Role of the asset in relation to creative. Applicable to all but the
-- following creative types: all REDIRECT and TRACKING_TEXT. This is a
-- required field. PRIMARY applies to ENHANCED_BANNER, FLASH_INPAGE,
-- HTML5_BANNER, IMAGE, IMAGE_GALLERY, all RICH_MEDIA (which may contain
-- multiple primary assets), and all VPAID creatives. BACKUP_IMAGE applies
-- to ENHANCED_BANNER, FLASH_INPAGE, HTML5_BANNER, all RICH_MEDIA, and all
-- VPAID creatives. ADDITIONAL_IMAGE and ADDITIONAL_FLASH apply to
-- FLASH_INPAGE creatives. OTHER refers to assets from sources other than
-- DCM, such as Studio uploaded assets, applicable to all RICH_MEDIA and
-- all VPAID creatives. PARENT_VIDEO refers to videos uploaded by the user
-- in DCM and is applicable to INSTREAM_VIDEO and VPAID_LINEAR creatives.
-- TRANSCODED_VIDEO refers to videos transcoded by DCM from PARENT_VIDEO
-- assets and is applicable to INSTREAM_VIDEO and VPAID_LINEAR creatives.
-- ALTERNATE_VIDEO refers to the DCM representation of child asset videos
-- from Studio, and is applicable to VPAID_LINEAR creatives. These cannot
-- be added or removed within DCM. For VPAID_LINEAR creatives,
-- PARENT_VIDEO, TRANSCODED_VIDEO and ALTERNATE_VIDEO assets that are
-- marked active serve as backup in case the VPAID creative cannot be
-- served. Only PARENT_VIDEO assets can be added or removed for an
-- INSTREAM_VIDEO or VPAID_LINEAR creative.
data CreativeAssetRole
    = CARAdditionalFlash
      -- ^ @ADDITIONAL_FLASH@
    | CARAdditionalImage
      -- ^ @ADDITIONAL_IMAGE@
    | CARAlternateVideo
      -- ^ @ALTERNATE_VIDEO@
    | CARBackupImage
      -- ^ @BACKUP_IMAGE@
    | CAROther
      -- ^ @OTHER@
    | CARParentVideo
      -- ^ @PARENT_VIDEO@
    | CARPrimary
      -- ^ @PRIMARY@
    | CARTranscodedVideo
      -- ^ @TRANSCODED_VIDEO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetRole

instance FromText CreativeAssetRole where
    fromText = \case
        "ADDITIONAL_FLASH" -> Just CARAdditionalFlash
        "ADDITIONAL_IMAGE" -> Just CARAdditionalImage
        "ALTERNATE_VIDEO" -> Just CARAlternateVideo
        "BACKUP_IMAGE" -> Just CARBackupImage
        "OTHER" -> Just CAROther
        "PARENT_VIDEO" -> Just CARParentVideo
        "PRIMARY" -> Just CARPrimary
        "TRANSCODED_VIDEO" -> Just CARTranscodedVideo
        _ -> Nothing

instance ToText CreativeAssetRole where
    toText = \case
        CARAdditionalFlash -> "ADDITIONAL_FLASH"
        CARAdditionalImage -> "ADDITIONAL_IMAGE"
        CARAlternateVideo -> "ALTERNATE_VIDEO"
        CARBackupImage -> "BACKUP_IMAGE"
        CAROther -> "OTHER"
        CARParentVideo -> "PARENT_VIDEO"
        CARPrimary -> "PRIMARY"
        CARTranscodedVideo -> "TRANSCODED_VIDEO"

-- | Initial wait time type before making the asset visible. Applicable to
-- the following creative types: all RICH_MEDIA.
data CreativeAssetStartTimeType
    = CASTTAssetStartTimeTypeCustom
      -- ^ @ASSET_START_TIME_TYPE_CUSTOM@
    | CASTTAssetStartTimeTypeNone
      -- ^ @ASSET_START_TIME_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetStartTimeType

instance FromText CreativeAssetStartTimeType where
    fromText = \case
        "ASSET_START_TIME_TYPE_CUSTOM" -> Just CASTTAssetStartTimeTypeCustom
        "ASSET_START_TIME_TYPE_NONE" -> Just CASTTAssetStartTimeTypeNone
        _ -> Nothing

instance ToText CreativeAssetStartTimeType where
    toText = \case
        CASTTAssetStartTimeTypeCustom -> "ASSET_START_TIME_TYPE_CUSTOM"
        CASTTAssetStartTimeTypeNone -> "ASSET_START_TIME_TYPE_NONE"

-- | Window mode options for flash assets. Applicable to the following
-- creative types: FLASH_INPAGE, RICH_MEDIA_EXPANDING,
-- RICH_MEDIA_IM_EXPAND, RICH_MEDIA_INPAGE, and RICH_MEDIA_INPAGE_FLOATING.
data CreativeAssetWindowMode
    = CAWMOpaque
      -- ^ @OPAQUE@
    | CAWMTransparent
      -- ^ @TRANSPARENT@
    | CAWMWindow
      -- ^ @WINDOW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetWindowMode

instance FromText CreativeAssetWindowMode where
    fromText = \case
        "OPAQUE" -> Just CAWMOpaque
        "TRANSPARENT" -> Just CAWMTransparent
        "WINDOW" -> Just CAWMWindow
        _ -> Nothing

instance ToText CreativeAssetWindowMode where
    toText = \case
        CAWMOpaque -> "OPAQUE"
        CAWMTransparent -> "TRANSPARENT"
        CAWMWindow -> "WINDOW"

-- | Authoring tool for HTML5 banner creatives. This is a read-only field.
-- Applicable to the following creative types: HTML5_BANNER.
data CreativeAuthoringTool
    = CATNinja
      -- ^ @NINJA@
    | CATSwiffy
      -- ^ @SWIFFY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAuthoringTool

instance FromText CreativeAuthoringTool where
    fromText = \case
        "NINJA" -> Just CATNinja
        "SWIFFY" -> Just CATSwiffy
        _ -> Nothing

instance ToText CreativeAuthoringTool where
    toText = \case
        CATNinja -> "NINJA"
        CATSwiffy -> "SWIFFY"

-- | Type of the event. This is a read-only field.
data CreativeCustomEventAdvertiserCustomEventType
    = CCEACETAdvertiserEventCounter
      -- ^ @ADVERTISER_EVENT_COUNTER@
    | CCEACETAdvertiserEventExit
      -- ^ @ADVERTISER_EVENT_EXIT@
    | CCEACETAdvertiserEventTimer
      -- ^ @ADVERTISER_EVENT_TIMER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeCustomEventAdvertiserCustomEventType

instance FromText CreativeCustomEventAdvertiserCustomEventType where
    fromText = \case
        "ADVERTISER_EVENT_COUNTER" -> Just CCEACETAdvertiserEventCounter
        "ADVERTISER_EVENT_EXIT" -> Just CCEACETAdvertiserEventExit
        "ADVERTISER_EVENT_TIMER" -> Just CCEACETAdvertiserEventTimer
        _ -> Nothing

instance ToText CreativeCustomEventAdvertiserCustomEventType where
    toText = \case
        CCEACETAdvertiserEventCounter -> "ADVERTISER_EVENT_COUNTER"
        CCEACETAdvertiserEventExit -> "ADVERTISER_EVENT_EXIT"
        CCEACETAdvertiserEventTimer -> "ADVERTISER_EVENT_TIMER"

-- | Artwork type used by the creative.This is a read-only field.
data CreativeCustomEventArtworkType
    = CCEATArtworkTypeFlash
      -- ^ @ARTWORK_TYPE_FLASH@
    | CCEATArtworkTypeHTML5
      -- ^ @ARTWORK_TYPE_HTML5@
    | CCEATArtworkTypeMixed
      -- ^ @ARTWORK_TYPE_MIXED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeCustomEventArtworkType

instance FromText CreativeCustomEventArtworkType where
    fromText = \case
        "ARTWORK_TYPE_FLASH" -> Just CCEATArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Just CCEATArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Just CCEATArtworkTypeMixed
        _ -> Nothing

instance ToText CreativeCustomEventArtworkType where
    toText = \case
        CCEATArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        CCEATArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        CCEATArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"

-- | Target type used by the event.
data CreativeCustomEventTargetType
    = CCETTTargetBlank
      -- ^ @TARGET_BLANK@
    | CCETTTargetParent
      -- ^ @TARGET_PARENT@
    | CCETTTargetPopup
      -- ^ @TARGET_POPUP@
    | CCETTTargetSelf
      -- ^ @TARGET_SELF@
    | CCETTTargetTop
      -- ^ @TARGET_TOP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeCustomEventTargetType

instance FromText CreativeCustomEventTargetType where
    fromText = \case
        "TARGET_BLANK" -> Just CCETTTargetBlank
        "TARGET_PARENT" -> Just CCETTTargetParent
        "TARGET_POPUP" -> Just CCETTTargetPopup
        "TARGET_SELF" -> Just CCETTTargetSelf
        "TARGET_TOP" -> Just CCETTTargetTop
        _ -> Nothing

instance ToText CreativeCustomEventTargetType where
    toText = \case
        CCETTTargetBlank -> "TARGET_BLANK"
        CCETTTargetParent -> "TARGET_PARENT"
        CCETTTargetPopup -> "TARGET_POPUP"
        CCETTTargetSelf -> "TARGET_SELF"
        CCETTTargetTop -> "TARGET_TOP"

-- | Creative group number of the creative group assignment.
data CreativeGroupAssignmentCreativeGroupNumber
    = CGACGNCreativeGroupOne
      -- ^ @CREATIVE_GROUP_ONE@
    | CGACGNCreativeGroupTwo
      -- ^ @CREATIVE_GROUP_TWO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeGroupAssignmentCreativeGroupNumber

instance FromText CreativeGroupAssignmentCreativeGroupNumber where
    fromText = \case
        "CREATIVE_GROUP_ONE" -> Just CGACGNCreativeGroupOne
        "CREATIVE_GROUP_TWO" -> Just CGACGNCreativeGroupTwo
        _ -> Nothing

instance ToText CreativeGroupAssignmentCreativeGroupNumber where
    toText = \case
        CGACGNCreativeGroupOne -> "CREATIVE_GROUP_ONE"
        CGACGNCreativeGroupTwo -> "CREATIVE_GROUP_TWO"

data CreativeItemBackupImageFeatures
    = CIBIFApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CIBIFAudio
      -- ^ @AUDIO@
    | CIBIFCanvas
      -- ^ @CANVAS@
    | CIBIFCanvasText
      -- ^ @CANVAS_TEXT@
    | CIBIFCssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CIBIFCssBackgroundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CIBIFCssBorderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CIBIFCssBorderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CIBIFCssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CIBIFCssColumns
      -- ^ @CSS_COLUMNS@
    | CIBIFCssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CIBIFCssFontFace
      -- ^ @CSS_FONT_FACE@
    | CIBIFCssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CIBIFCssGradients
      -- ^ @CSS_GRADIENTS@
    | CIBIFCssHsla
      -- ^ @CSS_HSLA@
    | CIBIFCssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CIBIFCssOpacity
      -- ^ @CSS_OPACITY@
    | CIBIFCssReflections
      -- ^ @CSS_REFLECTIONS@
    | CIBIFCssRgba
      -- ^ @CSS_RGBA@
    | CIBIFCssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CIBIFCssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CIBIFCssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CIBIFCssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CIBIFDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CIBIFGeoLocation
      -- ^ @GEO_LOCATION@
    | CIBIFHashChange
      -- ^ @HASH_CHANGE@
    | CIBIFHistory
      -- ^ @HISTORY@
    | CIBIFIndexedDB
      -- ^ @INDEXED_DB@
    | CIBIFInlineSvg
      -- ^ @INLINE_SVG@
    | CIBIFInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CIBIFInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CIBIFInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CIBIFInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CIBIFInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CIBIFInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CIBIFInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CIBIFInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CIBIFInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CIBIFInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CIBIFInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CIBIFInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CIBIFInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CIBIFInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CIBIFInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CIBIFInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CIBIFInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CIBIFInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CIBIFInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CIBIFInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CIBIFInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CIBIFInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CIBIFInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CIBIFLocalStorage
      -- ^ @LOCAL_STORAGE@
    | CIBIFPostMessage
      -- ^ @POST_MESSAGE@
    | CIBIFSessionStorage
      -- ^ @SESSION_STORAGE@
    | CIBIFSmil
      -- ^ @SMIL@
    | CIBIFSvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CIBIFSvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | CIBIFSvgFilters
      -- ^ @SVG_FILTERS@
    | CIBIFSvgHref
      -- ^ @SVG_HREF@
    | CIBIFTouch
      -- ^ @TOUCH@
    | CIBIFVideo
      -- ^ @VIDEO@
    | CIBIFWebgl
      -- ^ @WEBGL@
    | CIBIFWebSockets
      -- ^ @WEB_SOCKETS@
    | CIBIFWebSqlDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CIBIFWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeItemBackupImageFeatures

instance FromText CreativeItemBackupImageFeatures where
    fromText = \case
        "APPLICATION_CACHE" -> Just CIBIFApplicationCache
        "AUDIO" -> Just CIBIFAudio
        "CANVAS" -> Just CIBIFCanvas
        "CANVAS_TEXT" -> Just CIBIFCanvasText
        "CSS_ANIMATIONS" -> Just CIBIFCssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CIBIFCssBackgroundSize
        "CSS_BORDER_IMAGE" -> Just CIBIFCssBorderImage
        "CSS_BORDER_RADIUS" -> Just CIBIFCssBorderRadius
        "CSS_BOX_SHADOW" -> Just CIBIFCssBoxShadow
        "CSS_COLUMNS" -> Just CIBIFCssColumns
        "CSS_FLEX_BOX" -> Just CIBIFCssFlexBox
        "CSS_FONT_FACE" -> Just CIBIFCssFontFace
        "CSS_GENERATED_CONTENT" -> Just CIBIFCssGeneratedContent
        "CSS_GRADIENTS" -> Just CIBIFCssGradients
        "CSS_HSLA" -> Just CIBIFCssHsla
        "CSS_MULTIPLE_BGS" -> Just CIBIFCssMultipleBgs
        "CSS_OPACITY" -> Just CIBIFCssOpacity
        "CSS_REFLECTIONS" -> Just CIBIFCssReflections
        "CSS_RGBA" -> Just CIBIFCssRgba
        "CSS_TEXT_SHADOW" -> Just CIBIFCssTextShadow
        "CSS_TRANSFORMS" -> Just CIBIFCssTransforms
        "CSS_TRANSFORMS3D" -> Just CIBIFCssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CIBIFCssTransitions
        "DRAG_AND_DROP" -> Just CIBIFDragAndDrop
        "GEO_LOCATION" -> Just CIBIFGeoLocation
        "HASH_CHANGE" -> Just CIBIFHashChange
        "HISTORY" -> Just CIBIFHistory
        "INDEXED_DB" -> Just CIBIFIndexedDB
        "INLINE_SVG" -> Just CIBIFInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just CIBIFInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just CIBIFInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just CIBIFInputAttrList
        "INPUT_ATTR_MAX" -> Just CIBIFInputAttrMax
        "INPUT_ATTR_MIN" -> Just CIBIFInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just CIBIFInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just CIBIFInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just CIBIFInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just CIBIFInputAttrRequired
        "INPUT_ATTR_STEP" -> Just CIBIFInputAttrStep
        "INPUT_TYPE_COLOR" -> Just CIBIFInputTypeColor
        "INPUT_TYPE_DATE" -> Just CIBIFInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just CIBIFInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just CIBIFInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just CIBIFInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just CIBIFInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just CIBIFInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just CIBIFInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just CIBIFInputTypeSearch
        "INPUT_TYPE_TEL" -> Just CIBIFInputTypeTel
        "INPUT_TYPE_TIME" -> Just CIBIFInputTypeTime
        "INPUT_TYPE_URL" -> Just CIBIFInputTypeURL
        "INPUT_TYPE_WEEK" -> Just CIBIFInputTypeWeek
        "LOCAL_STORAGE" -> Just CIBIFLocalStorage
        "POST_MESSAGE" -> Just CIBIFPostMessage
        "SESSION_STORAGE" -> Just CIBIFSessionStorage
        "SMIL" -> Just CIBIFSmil
        "SVG_CLIP_PATHS" -> Just CIBIFSvgClipPaths
        "SVG_FE_IMAGE" -> Just CIBIFSvgFeImage
        "SVG_FILTERS" -> Just CIBIFSvgFilters
        "SVG_HREF" -> Just CIBIFSvgHref
        "TOUCH" -> Just CIBIFTouch
        "VIDEO" -> Just CIBIFVideo
        "WEBGL" -> Just CIBIFWebgl
        "WEB_SOCKETS" -> Just CIBIFWebSockets
        "WEB_SQL_DATABASE" -> Just CIBIFWebSqlDatabase
        "WEB_WORKERS" -> Just CIBIFWebWorkers
        _ -> Nothing

instance ToText CreativeItemBackupImageFeatures where
    toText = \case
        CIBIFApplicationCache -> "APPLICATION_CACHE"
        CIBIFAudio -> "AUDIO"
        CIBIFCanvas -> "CANVAS"
        CIBIFCanvasText -> "CANVAS_TEXT"
        CIBIFCssAnimations -> "CSS_ANIMATIONS"
        CIBIFCssBackgroundSize -> "CSS_BACKGROUND_SIZE"
        CIBIFCssBorderImage -> "CSS_BORDER_IMAGE"
        CIBIFCssBorderRadius -> "CSS_BORDER_RADIUS"
        CIBIFCssBoxShadow -> "CSS_BOX_SHADOW"
        CIBIFCssColumns -> "CSS_COLUMNS"
        CIBIFCssFlexBox -> "CSS_FLEX_BOX"
        CIBIFCssFontFace -> "CSS_FONT_FACE"
        CIBIFCssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CIBIFCssGradients -> "CSS_GRADIENTS"
        CIBIFCssHsla -> "CSS_HSLA"
        CIBIFCssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CIBIFCssOpacity -> "CSS_OPACITY"
        CIBIFCssReflections -> "CSS_REFLECTIONS"
        CIBIFCssRgba -> "CSS_RGBA"
        CIBIFCssTextShadow -> "CSS_TEXT_SHADOW"
        CIBIFCssTransforms -> "CSS_TRANSFORMS"
        CIBIFCssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CIBIFCssTransitions -> "CSS_TRANSITIONS"
        CIBIFDragAndDrop -> "DRAG_AND_DROP"
        CIBIFGeoLocation -> "GEO_LOCATION"
        CIBIFHashChange -> "HASH_CHANGE"
        CIBIFHistory -> "HISTORY"
        CIBIFIndexedDB -> "INDEXED_DB"
        CIBIFInlineSvg -> "INLINE_SVG"
        CIBIFInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CIBIFInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CIBIFInputAttrList -> "INPUT_ATTR_LIST"
        CIBIFInputAttrMax -> "INPUT_ATTR_MAX"
        CIBIFInputAttrMin -> "INPUT_ATTR_MIN"
        CIBIFInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CIBIFInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CIBIFInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CIBIFInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CIBIFInputAttrStep -> "INPUT_ATTR_STEP"
        CIBIFInputTypeColor -> "INPUT_TYPE_COLOR"
        CIBIFInputTypeDate -> "INPUT_TYPE_DATE"
        CIBIFInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CIBIFInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CIBIFInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CIBIFInputTypeMonth -> "INPUT_TYPE_MONTH"
        CIBIFInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CIBIFInputTypeRange -> "INPUT_TYPE_RANGE"
        CIBIFInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CIBIFInputTypeTel -> "INPUT_TYPE_TEL"
        CIBIFInputTypeTime -> "INPUT_TYPE_TIME"
        CIBIFInputTypeURL -> "INPUT_TYPE_URL"
        CIBIFInputTypeWeek -> "INPUT_TYPE_WEEK"
        CIBIFLocalStorage -> "LOCAL_STORAGE"
        CIBIFPostMessage -> "POST_MESSAGE"
        CIBIFSessionStorage -> "SESSION_STORAGE"
        CIBIFSmil -> "SMIL"
        CIBIFSvgClipPaths -> "SVG_CLIP_PATHS"
        CIBIFSvgFeImage -> "SVG_FE_IMAGE"
        CIBIFSvgFilters -> "SVG_FILTERS"
        CIBIFSvgHref -> "SVG_HREF"
        CIBIFTouch -> "TOUCH"
        CIBIFVideo -> "VIDEO"
        CIBIFWebgl -> "WEBGL"
        CIBIFWebSockets -> "WEB_SOCKETS"
        CIBIFWebSqlDatabase -> "WEB_SQL_DATABASE"
        CIBIFWebWorkers -> "WEB_WORKERS"

data CreativeItemCompatibility
    = CICApp
      -- ^ @APP@
    | CICAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | CICInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | CICWeb
      -- ^ @WEB@
    | CICWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeItemCompatibility

instance FromText CreativeItemCompatibility where
    fromText = \case
        "APP" -> Just CICApp
        "APP_INTERSTITIAL" -> Just CICAppInterstitial
        "IN_STREAM_VIDEO" -> Just CICInStreamVideo
        "WEB" -> Just CICWeb
        "WEB_INTERSTITIAL" -> Just CICWebInterstitial
        _ -> Nothing

instance ToText CreativeItemCompatibility where
    toText = \case
        CICApp -> "APP"
        CICAppInterstitial -> "APP_INTERSTITIAL"
        CICInStreamVideo -> "IN_STREAM_VIDEO"
        CICWeb -> "WEB"
        CICWebInterstitial -> "WEB_INTERSTITIAL"

-- | Optimization model for this configuration.
data CreativeOptimizationConfigurationOptimizationModel
    = COCOMClick
      -- ^ @CLICK@
    | COCOMPostClick
      -- ^ @POST_CLICK@
    | COCOMPostClickAndImpression
      -- ^ @POST_CLICK_AND_IMPRESSION@
    | COCOMPostImpression
      -- ^ @POST_IMPRESSION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeOptimizationConfigurationOptimizationModel

instance FromText CreativeOptimizationConfigurationOptimizationModel where
    fromText = \case
        "CLICK" -> Just COCOMClick
        "POST_CLICK" -> Just COCOMPostClick
        "POST_CLICK_AND_IMPRESSION" -> Just COCOMPostClickAndImpression
        "POST_IMPRESSION" -> Just COCOMPostImpression
        _ -> Nothing

instance ToText CreativeOptimizationConfigurationOptimizationModel where
    toText = \case
        COCOMClick -> "CLICK"
        COCOMPostClick -> "POST_CLICK"
        COCOMPostClickAndImpression -> "POST_CLICK_AND_IMPRESSION"
        COCOMPostImpression -> "POST_IMPRESSION"

-- | Type of creative rotation. Can be used to specify whether to use
-- sequential or random rotation.
data CreativeRotationType
    = CRTCreativeRotationTypeRandom
      -- ^ @CREATIVE_ROTATION_TYPE_RANDOM@
    | CRTCreativeRotationTypeSequential
      -- ^ @CREATIVE_ROTATION_TYPE_SEQUENTIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeRotationType

instance FromText CreativeRotationType where
    fromText = \case
        "CREATIVE_ROTATION_TYPE_RANDOM" -> Just CRTCreativeRotationTypeRandom
        "CREATIVE_ROTATION_TYPE_SEQUENTIAL" -> Just CRTCreativeRotationTypeSequential
        _ -> Nothing

instance ToText CreativeRotationType where
    toText = \case
        CRTCreativeRotationTypeRandom -> "CREATIVE_ROTATION_TYPE_RANDOM"
        CRTCreativeRotationTypeSequential -> "CREATIVE_ROTATION_TYPE_SEQUENTIAL"

-- | Strategy for calculating weights. Used with
-- CREATIVE_ROTATION_TYPE_RANDOM.
data CreativeRotationWeightCalculationStrategy
    = CRWCSWeightStrategyCustom
      -- ^ @WEIGHT_STRATEGY_CUSTOM@
    | CRWCSWeightStrategyEqual
      -- ^ @WEIGHT_STRATEGY_EQUAL@
    | CRWCSWeightStrategyHighestCtr
      -- ^ @WEIGHT_STRATEGY_HIGHEST_CTR@
    | CRWCSWeightStrategyOptimized
      -- ^ @WEIGHT_STRATEGY_OPTIMIZED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeRotationWeightCalculationStrategy

instance FromText CreativeRotationWeightCalculationStrategy where
    fromText = \case
        "WEIGHT_STRATEGY_CUSTOM" -> Just CRWCSWeightStrategyCustom
        "WEIGHT_STRATEGY_EQUAL" -> Just CRWCSWeightStrategyEqual
        "WEIGHT_STRATEGY_HIGHEST_CTR" -> Just CRWCSWeightStrategyHighestCtr
        "WEIGHT_STRATEGY_OPTIMIZED" -> Just CRWCSWeightStrategyOptimized
        _ -> Nothing

instance ToText CreativeRotationWeightCalculationStrategy where
    toText = \case
        CRWCSWeightStrategyCustom -> "WEIGHT_STRATEGY_CUSTOM"
        CRWCSWeightStrategyEqual -> "WEIGHT_STRATEGY_EQUAL"
        CRWCSWeightStrategyHighestCtr -> "WEIGHT_STRATEGY_HIGHEST_CTR"
        CRWCSWeightStrategyOptimized -> "WEIGHT_STRATEGY_OPTIMIZED"

-- | Type of this creative.This is a required field. Applicable to all
-- creative types.
data CreativeType
    = CTBrandSafeDefaultInstreamVideo
      -- ^ @BRAND_SAFE_DEFAULT_INSTREAM_VIDEO@
    | CTCustomInpage
      -- ^ @CUSTOM_INPAGE@
    | CTCustomInterstitial
      -- ^ @CUSTOM_INTERSTITIAL@
    | CTEnhancedBanner
      -- ^ @ENHANCED_BANNER@
    | CTEnhancedImage
      -- ^ @ENHANCED_IMAGE@
    | CTFlashInpage
      -- ^ @FLASH_INPAGE@
    | CTHTML5Banner
      -- ^ @HTML5_BANNER@
    | CTImage
      -- ^ @IMAGE@
    | CTInstreamVideo
      -- ^ @INSTREAM_VIDEO@
    | CTInternalRedirect
      -- ^ @INTERNAL_REDIRECT@
    | CTInterstitialInternalRedirect
      -- ^ @INTERSTITIAL_INTERNAL_REDIRECT@
    | CTRedirect
      -- ^ @REDIRECT@
    | CTRichMediaExpanding
      -- ^ @RICH_MEDIA_EXPANDING@
    | CTRichMediaImExpand
      -- ^ @RICH_MEDIA_IM_EXPAND@
    | CTRichMediaInpage
      -- ^ @RICH_MEDIA_INPAGE@
    | CTRichMediaInpageFloating
      -- ^ @RICH_MEDIA_INPAGE_FLOATING@
    | CTRichMediaInterstitialFloat
      -- ^ @RICH_MEDIA_INTERSTITIAL_FLOAT@
    | CTRichMediaMobileInApp
      -- ^ @RICH_MEDIA_MOBILE_IN_APP@
    | CTRichMediaMultiFloating
      -- ^ @RICH_MEDIA_MULTI_FLOATING@
    | CTRichMediaPeelDown
      -- ^ @RICH_MEDIA_PEEL_DOWN@
    | CTTrackingText
      -- ^ @TRACKING_TEXT@
    | CTVastRedirect
      -- ^ @VAST_REDIRECT@
    | CTVpaidLinear
      -- ^ @VPAID_LINEAR@
    | CTVpaidNonLinear
      -- ^ @VPAID_NON_LINEAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeType

instance FromText CreativeType where
    fromText = \case
        "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO" -> Just CTBrandSafeDefaultInstreamVideo
        "CUSTOM_INPAGE" -> Just CTCustomInpage
        "CUSTOM_INTERSTITIAL" -> Just CTCustomInterstitial
        "ENHANCED_BANNER" -> Just CTEnhancedBanner
        "ENHANCED_IMAGE" -> Just CTEnhancedImage
        "FLASH_INPAGE" -> Just CTFlashInpage
        "HTML5_BANNER" -> Just CTHTML5Banner
        "IMAGE" -> Just CTImage
        "INSTREAM_VIDEO" -> Just CTInstreamVideo
        "INTERNAL_REDIRECT" -> Just CTInternalRedirect
        "INTERSTITIAL_INTERNAL_REDIRECT" -> Just CTInterstitialInternalRedirect
        "REDIRECT" -> Just CTRedirect
        "RICH_MEDIA_EXPANDING" -> Just CTRichMediaExpanding
        "RICH_MEDIA_IM_EXPAND" -> Just CTRichMediaImExpand
        "RICH_MEDIA_INPAGE" -> Just CTRichMediaInpage
        "RICH_MEDIA_INPAGE_FLOATING" -> Just CTRichMediaInpageFloating
        "RICH_MEDIA_INTERSTITIAL_FLOAT" -> Just CTRichMediaInterstitialFloat
        "RICH_MEDIA_MOBILE_IN_APP" -> Just CTRichMediaMobileInApp
        "RICH_MEDIA_MULTI_FLOATING" -> Just CTRichMediaMultiFloating
        "RICH_MEDIA_PEEL_DOWN" -> Just CTRichMediaPeelDown
        "TRACKING_TEXT" -> Just CTTrackingText
        "VAST_REDIRECT" -> Just CTVastRedirect
        "VPAID_LINEAR" -> Just CTVpaidLinear
        "VPAID_NON_LINEAR" -> Just CTVpaidNonLinear
        _ -> Nothing

instance ToText CreativeType where
    toText = \case
        CTBrandSafeDefaultInstreamVideo -> "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
        CTCustomInpage -> "CUSTOM_INPAGE"
        CTCustomInterstitial -> "CUSTOM_INTERSTITIAL"
        CTEnhancedBanner -> "ENHANCED_BANNER"
        CTEnhancedImage -> "ENHANCED_IMAGE"
        CTFlashInpage -> "FLASH_INPAGE"
        CTHTML5Banner -> "HTML5_BANNER"
        CTImage -> "IMAGE"
        CTInstreamVideo -> "INSTREAM_VIDEO"
        CTInternalRedirect -> "INTERNAL_REDIRECT"
        CTInterstitialInternalRedirect -> "INTERSTITIAL_INTERNAL_REDIRECT"
        CTRedirect -> "REDIRECT"
        CTRichMediaExpanding -> "RICH_MEDIA_EXPANDING"
        CTRichMediaImExpand -> "RICH_MEDIA_IM_EXPAND"
        CTRichMediaInpage -> "RICH_MEDIA_INPAGE"
        CTRichMediaInpageFloating -> "RICH_MEDIA_INPAGE_FLOATING"
        CTRichMediaInterstitialFloat -> "RICH_MEDIA_INTERSTITIAL_FLOAT"
        CTRichMediaMobileInApp -> "RICH_MEDIA_MOBILE_IN_APP"
        CTRichMediaMultiFloating -> "RICH_MEDIA_MULTI_FLOATING"
        CTRichMediaPeelDown -> "RICH_MEDIA_PEEL_DOWN"
        CTTrackingText -> "TRACKING_TEXT"
        CTVastRedirect -> "VAST_REDIRECT"
        CTVpaidLinear -> "VPAID_LINEAR"
        CTVpaidNonLinear -> "VPAID_NON_LINEAR"

-- | The date range relative to the date of when the report is run.
data DateRangeRelativeDateRange
    = DRRDRLast24Months
      -- ^ @LAST_24_MONTHS@
    | DRRDRLast30Days
      -- ^ @LAST_30_DAYS@
    | DRRDRLast365Days
      -- ^ @LAST_365_DAYS@
    | DRRDRLast7Days
      -- ^ @LAST_7_DAYS@
    | DRRDRLast90Days
      -- ^ @LAST_90_DAYS@
    | DRRDRMonthToDate
      -- ^ @MONTH_TO_DATE@
    | DRRDRPreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | DRRDRPreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | DRRDRPreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | DRRDRPreviousYear
      -- ^ @PREVIOUS_YEAR@
    | DRRDRQuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | DRRDRToday
      -- ^ @TODAY@
    | DRRDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | DRRDRYearToDate
      -- ^ @YEAR_TO_DATE@
    | DRRDRYesterday
      -- ^ @YESTERDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DateRangeRelativeDateRange

instance FromText DateRangeRelativeDateRange where
    fromText = \case
        "LAST_24_MONTHS" -> Just DRRDRLast24Months
        "LAST_30_DAYS" -> Just DRRDRLast30Days
        "LAST_365_DAYS" -> Just DRRDRLast365Days
        "LAST_7_DAYS" -> Just DRRDRLast7Days
        "LAST_90_DAYS" -> Just DRRDRLast90Days
        "MONTH_TO_DATE" -> Just DRRDRMonthToDate
        "PREVIOUS_MONTH" -> Just DRRDRPreviousMonth
        "PREVIOUS_QUARTER" -> Just DRRDRPreviousQuarter
        "PREVIOUS_WEEK" -> Just DRRDRPreviousWeek
        "PREVIOUS_YEAR" -> Just DRRDRPreviousYear
        "QUARTER_TO_DATE" -> Just DRRDRQuarterToDate
        "TODAY" -> Just DRRDRToday
        "WEEK_TO_DATE" -> Just DRRDRWeekToDate
        "YEAR_TO_DATE" -> Just DRRDRYearToDate
        "YESTERDAY" -> Just DRRDRYesterday
        _ -> Nothing

instance ToText DateRangeRelativeDateRange where
    toText = \case
        DRRDRLast24Months -> "LAST_24_MONTHS"
        DRRDRLast30Days -> "LAST_30_DAYS"
        DRRDRLast365Days -> "LAST_365_DAYS"
        DRRDRLast7Days -> "LAST_7_DAYS"
        DRRDRLast90Days -> "LAST_90_DAYS"
        DRRDRMonthToDate -> "MONTH_TO_DATE"
        DRRDRPreviousMonth -> "PREVIOUS_MONTH"
        DRRDRPreviousQuarter -> "PREVIOUS_QUARTER"
        DRRDRPreviousWeek -> "PREVIOUS_WEEK"
        DRRDRPreviousYear -> "PREVIOUS_YEAR"
        DRRDRQuarterToDate -> "QUARTER_TO_DATE"
        DRRDRToday -> "TODAY"
        DRRDRWeekToDate -> "WEEK_TO_DATE"
        DRRDRYearToDate -> "YEAR_TO_DATE"
        DRRDRYesterday -> "YESTERDAY"

data DayPartTargetingItemDaysOfWeek
    = DPTIDOWFriday
      -- ^ @FRIDAY@
    | DPTIDOWMonday
      -- ^ @MONDAY@
    | DPTIDOWSaturday
      -- ^ @SATURDAY@
    | DPTIDOWSunday
      -- ^ @SUNDAY@
    | DPTIDOWThursday
      -- ^ @THURSDAY@
    | DPTIDOWTuesday
      -- ^ @TUESDAY@
    | DPTIDOWWednesday
      -- ^ @WEDNESDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DayPartTargetingItemDaysOfWeek

instance FromText DayPartTargetingItemDaysOfWeek where
    fromText = \case
        "FRIDAY" -> Just DPTIDOWFriday
        "MONDAY" -> Just DPTIDOWMonday
        "SATURDAY" -> Just DPTIDOWSaturday
        "SUNDAY" -> Just DPTIDOWSunday
        "THURSDAY" -> Just DPTIDOWThursday
        "TUESDAY" -> Just DPTIDOWTuesday
        "WEDNESDAY" -> Just DPTIDOWWednesday
        _ -> Nothing

instance ToText DayPartTargetingItemDaysOfWeek where
    toText = \case
        DPTIDOWFriday -> "FRIDAY"
        DPTIDOWMonday -> "MONDAY"
        DPTIDOWSaturday -> "SATURDAY"
        DPTIDOWSunday -> "SUNDAY"
        DPTIDOWThursday -> "THURSDAY"
        DPTIDOWTuesday -> "TUESDAY"
        DPTIDOWWednesday -> "WEDNESDAY"

-- | Serving priority of an ad, with respect to other ads. The lower the
-- priority number, the greater the priority with which it is served.
data DeliverySchedulePriority
    = DSPAdPriority01
      -- ^ @AD_PRIORITY_01@
    | DSPAdPriority02
      -- ^ @AD_PRIORITY_02@
    | DSPAdPriority03
      -- ^ @AD_PRIORITY_03@
    | DSPAdPriority04
      -- ^ @AD_PRIORITY_04@
    | DSPAdPriority05
      -- ^ @AD_PRIORITY_05@
    | DSPAdPriority06
      -- ^ @AD_PRIORITY_06@
    | DSPAdPriority07
      -- ^ @AD_PRIORITY_07@
    | DSPAdPriority08
      -- ^ @AD_PRIORITY_08@
    | DSPAdPriority09
      -- ^ @AD_PRIORITY_09@
    | DSPAdPriority10
      -- ^ @AD_PRIORITY_10@
    | DSPAdPriority11
      -- ^ @AD_PRIORITY_11@
    | DSPAdPriority12
      -- ^ @AD_PRIORITY_12@
    | DSPAdPriority13
      -- ^ @AD_PRIORITY_13@
    | DSPAdPriority14
      -- ^ @AD_PRIORITY_14@
    | DSPAdPriority15
      -- ^ @AD_PRIORITY_15@
    | DSPAdPriority16
      -- ^ @AD_PRIORITY_16@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeliverySchedulePriority

instance FromText DeliverySchedulePriority where
    fromText = \case
        "AD_PRIORITY_01" -> Just DSPAdPriority01
        "AD_PRIORITY_02" -> Just DSPAdPriority02
        "AD_PRIORITY_03" -> Just DSPAdPriority03
        "AD_PRIORITY_04" -> Just DSPAdPriority04
        "AD_PRIORITY_05" -> Just DSPAdPriority05
        "AD_PRIORITY_06" -> Just DSPAdPriority06
        "AD_PRIORITY_07" -> Just DSPAdPriority07
        "AD_PRIORITY_08" -> Just DSPAdPriority08
        "AD_PRIORITY_09" -> Just DSPAdPriority09
        "AD_PRIORITY_10" -> Just DSPAdPriority10
        "AD_PRIORITY_11" -> Just DSPAdPriority11
        "AD_PRIORITY_12" -> Just DSPAdPriority12
        "AD_PRIORITY_13" -> Just DSPAdPriority13
        "AD_PRIORITY_14" -> Just DSPAdPriority14
        "AD_PRIORITY_15" -> Just DSPAdPriority15
        "AD_PRIORITY_16" -> Just DSPAdPriority16
        _ -> Nothing

instance ToText DeliverySchedulePriority where
    toText = \case
        DSPAdPriority01 -> "AD_PRIORITY_01"
        DSPAdPriority02 -> "AD_PRIORITY_02"
        DSPAdPriority03 -> "AD_PRIORITY_03"
        DSPAdPriority04 -> "AD_PRIORITY_04"
        DSPAdPriority05 -> "AD_PRIORITY_05"
        DSPAdPriority06 -> "AD_PRIORITY_06"
        DSPAdPriority07 -> "AD_PRIORITY_07"
        DSPAdPriority08 -> "AD_PRIORITY_08"
        DSPAdPriority09 -> "AD_PRIORITY_09"
        DSPAdPriority10 -> "AD_PRIORITY_10"
        DSPAdPriority11 -> "AD_PRIORITY_11"
        DSPAdPriority12 -> "AD_PRIORITY_12"
        DSPAdPriority13 -> "AD_PRIORITY_13"
        DSPAdPriority14 -> "AD_PRIORITY_14"
        DSPAdPriority15 -> "AD_PRIORITY_15"
        DSPAdPriority16 -> "AD_PRIORITY_16"

-- | Determines how the \'value\' field is matched when filtering. If not
-- specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'*\' is
-- allowed as a placeholder for variable length character sequences, and it
-- can be escaped with a backslash. Note, only paid search dimensions
-- (\'dfa:paidSearch*\') allow a matchType other than EXACT.
data DimensionValueMatchType
    = DVMTBeginsWith
      -- ^ @BEGINS_WITH@
    | DVMTContains
      -- ^ @CONTAINS@
    | DVMTExact
      -- ^ @EXACT@
    | DVMTWildcardExpression
      -- ^ @WILDCARD_EXPRESSION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DimensionValueMatchType

instance FromText DimensionValueMatchType where
    fromText = \case
        "BEGINS_WITH" -> Just DVMTBeginsWith
        "CONTAINS" -> Just DVMTContains
        "EXACT" -> Just DVMTExact
        "WILDCARD_EXPRESSION" -> Just DVMTWildcardExpression
        _ -> Nothing

instance ToText DimensionValueMatchType where
    toText = \case
        DVMTBeginsWith -> "BEGINS_WITH"
        DVMTContains -> "CONTAINS"
        DVMTExact -> "EXACT"
        DVMTWildcardExpression -> "WILDCARD_EXPRESSION"

-- | Visibility of this directory site contact assignment. When set to PUBLIC
-- this contact assignment is visible to all account and agency users; when
-- set to PRIVATE it is visible only to the site.
data DirectorySiteContactAssignmentVisibility
    = DSCAVPrivate
      -- ^ @PRIVATE@
    | DSCAVPublic
      -- ^ @PUBLIC@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactAssignmentVisibility

instance FromText DirectorySiteContactAssignmentVisibility where
    fromText = \case
        "PRIVATE" -> Just DSCAVPrivate
        "PUBLIC" -> Just DSCAVPublic
        _ -> Nothing

instance ToText DirectorySiteContactAssignmentVisibility where
    toText = \case
        DSCAVPrivate -> "PRIVATE"
        DSCAVPublic -> "PUBLIC"

-- | Directory site contact role.
data DirectorySiteContactRole
    = DSCRAdmin
      -- ^ @ADMIN@
    | DSCREdit
      -- ^ @EDIT@
    | DSCRView
      -- ^ @VIEW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactRole

instance FromText DirectorySiteContactRole where
    fromText = \case
        "ADMIN" -> Just DSCRAdmin
        "EDIT" -> Just DSCREdit
        "VIEW" -> Just DSCRView
        _ -> Nothing

instance ToText DirectorySiteContactRole where
    toText = \case
        DSCRAdmin -> "ADMIN"
        DSCREdit -> "EDIT"
        DSCRView -> "VIEW"

-- | Directory site contact type.
data DirectorySiteContactType
    = DSCTBilling
      -- ^ @BILLING@
    | DSCTOther
      -- ^ @OTHER@
    | DSCTSales
      -- ^ @SALES@
    | DSCTTechnical
      -- ^ @TECHNICAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactType

instance FromText DirectorySiteContactType where
    fromText = \case
        "BILLING" -> Just DSCTBilling
        "OTHER" -> Just DSCTOther
        "SALES" -> Just DSCTSales
        "TECHNICAL" -> Just DSCTTechnical
        _ -> Nothing

instance ToText DirectorySiteContactType where
    toText = \case
        DSCTBilling -> "BILLING"
        DSCTOther -> "OTHER"
        DSCTSales -> "SALES"
        DSCTTechnical -> "TECHNICAL"

data DirectorySiteItemInpageTagFormats
    = DSIITFIframeJavascriptInpage
      -- ^ @IFRAME_JAVASCRIPT_INPAGE@
    | DSIITFInternalRedirectInpage
      -- ^ @INTERNAL_REDIRECT_INPAGE@
    | DSIITFJavascriptInpage
      -- ^ @JAVASCRIPT_INPAGE@
    | DSIITFStandard
      -- ^ @STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteItemInpageTagFormats

instance FromText DirectorySiteItemInpageTagFormats where
    fromText = \case
        "IFRAME_JAVASCRIPT_INPAGE" -> Just DSIITFIframeJavascriptInpage
        "INTERNAL_REDIRECT_INPAGE" -> Just DSIITFInternalRedirectInpage
        "JAVASCRIPT_INPAGE" -> Just DSIITFJavascriptInpage
        "STANDARD" -> Just DSIITFStandard
        _ -> Nothing

instance ToText DirectorySiteItemInpageTagFormats where
    toText = \case
        DSIITFIframeJavascriptInpage -> "IFRAME_JAVASCRIPT_INPAGE"
        DSIITFInternalRedirectInpage -> "INTERNAL_REDIRECT_INPAGE"
        DSIITFJavascriptInpage -> "JAVASCRIPT_INPAGE"
        DSIITFStandard -> "STANDARD"

data DirectorySiteItemInterstitialTagFormats
    = DSIITFIframeJavascriptInterstitial
      -- ^ @IFRAME_JAVASCRIPT_INTERSTITIAL@
    | DSIITFInternalRedirectInterstitial
      -- ^ @INTERNAL_REDIRECT_INTERSTITIAL@
    | DSIITFJavascriptInterstitial
      -- ^ @JAVASCRIPT_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteItemInterstitialTagFormats

instance FromText DirectorySiteItemInterstitialTagFormats where
    fromText = \case
        "IFRAME_JAVASCRIPT_INTERSTITIAL" -> Just DSIITFIframeJavascriptInterstitial
        "INTERNAL_REDIRECT_INTERSTITIAL" -> Just DSIITFInternalRedirectInterstitial
        "JAVASCRIPT_INTERSTITIAL" -> Just DSIITFJavascriptInterstitial
        _ -> Nothing

instance ToText DirectorySiteItemInterstitialTagFormats where
    toText = \case
        DSIITFIframeJavascriptInterstitial -> "IFRAME_JAVASCRIPT_INTERSTITIAL"
        DSIITFInternalRedirectInterstitial -> "INTERNAL_REDIRECT_INTERSTITIAL"
        DSIITFJavascriptInterstitial -> "JAVASCRIPT_INTERSTITIAL"

-- | Site filter type for this event tag. If no type is specified then the
-- event tag will be applied to all sites.
data EventTagSiteFilterType
    = ETSFTBlacklist
      -- ^ @BLACKLIST@
    | ETSFTWhitelist
      -- ^ @WHITELIST@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagSiteFilterType

instance FromText EventTagSiteFilterType where
    fromText = \case
        "BLACKLIST" -> Just ETSFTBlacklist
        "WHITELIST" -> Just ETSFTWhitelist
        _ -> Nothing

instance ToText EventTagSiteFilterType where
    toText = \case
        ETSFTBlacklist -> "BLACKLIST"
        ETSFTWhitelist -> "WHITELIST"

-- | Status of this event tag. Must be ENABLED for this event tag to fire.
-- This is a required field.
data EventTagStatus
    = ETSDisabled
      -- ^ @DISABLED@
    | ETSEnabled
      -- ^ @ENABLED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagStatus

instance FromText EventTagStatus where
    fromText = \case
        "DISABLED" -> Just ETSDisabled
        "ENABLED" -> Just ETSEnabled
        _ -> Nothing

instance ToText EventTagStatus where
    toText = \case
        ETSDisabled -> "DISABLED"
        ETSEnabled -> "ENABLED"

-- | Event tag type. Can be used to specify whether to use a third-party
-- pixel, a third-party JavaScript URL, or a third-party click-through URL
-- for either impression or click tracking. This is a required field.
data EventTagType
    = ETTClickThroughEventTag
      -- ^ @CLICK_THROUGH_EVENT_TAG@
    | ETTImpressionImageEventTag
      -- ^ @IMPRESSION_IMAGE_EVENT_TAG@
    | ETTImpressionJavascriptEventTag
      -- ^ @IMPRESSION_JAVASCRIPT_EVENT_TAG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagType

instance FromText EventTagType where
    fromText = \case
        "CLICK_THROUGH_EVENT_TAG" -> Just ETTClickThroughEventTag
        "IMPRESSION_IMAGE_EVENT_TAG" -> Just ETTImpressionImageEventTag
        "IMPRESSION_JAVASCRIPT_EVENT_TAG" -> Just ETTImpressionJavascriptEventTag
        _ -> Nothing

instance ToText EventTagType where
    toText = \case
        ETTClickThroughEventTag -> "CLICK_THROUGH_EVENT_TAG"
        ETTImpressionImageEventTag -> "IMPRESSION_IMAGE_EVENT_TAG"
        ETTImpressionJavascriptEventTag -> "IMPRESSION_JAVASCRIPT_EVENT_TAG"

-- | The output format of the report. Only available once the file is
-- available.
data FileFormat
    = FFCSV
      -- ^ @CSV@
    | FFExcel
      -- ^ @EXCEL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FileFormat

instance FromText FileFormat where
    fromText = \case
        "CSV" -> Just FFCSV
        "EXCEL" -> Just FFExcel
        _ -> Nothing

instance ToText FileFormat where
    toText = \case
        FFCSV -> "CSV"
        FFExcel -> "EXCEL"

-- | The status of the report file.
data FileStatus
    = FSCancelled
      -- ^ @CANCELLED@
    | FSFailed
      -- ^ @FAILED@
    | FSProcessing
      -- ^ @PROCESSING@
    | FSReportAvailable
      -- ^ @REPORT_AVAILABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FileStatus

instance FromText FileStatus where
    fromText = \case
        "CANCELLED" -> Just FSCancelled
        "FAILED" -> Just FSFailed
        "PROCESSING" -> Just FSProcessing
        "REPORT_AVAILABLE" -> Just FSReportAvailable
        _ -> Nothing

instance ToText FileStatus where
    toText = \case
        FSCancelled -> "CANCELLED"
        FSFailed -> "FAILED"
        FSProcessing -> "PROCESSING"
        FSReportAvailable -> "REPORT_AVAILABLE"

-- | Code type used for cache busting in the generated tag.
data FloodlightActivityCacheBustingType
    = FACBTActiveServerPage
      -- ^ @ACTIVE_SERVER_PAGE@
    | FACBTColdFusion
      -- ^ @COLD_FUSION@
    | FACBTJavascript
      -- ^ @JAVASCRIPT@
    | FACBTJsp
      -- ^ @JSP@
    | FACBTPhp
      -- ^ @PHP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityCacheBustingType

instance FromText FloodlightActivityCacheBustingType where
    fromText = \case
        "ACTIVE_SERVER_PAGE" -> Just FACBTActiveServerPage
        "COLD_FUSION" -> Just FACBTColdFusion
        "JAVASCRIPT" -> Just FACBTJavascript
        "JSP" -> Just FACBTJsp
        "PHP" -> Just FACBTPhp
        _ -> Nothing

instance ToText FloodlightActivityCacheBustingType where
    toText = \case
        FACBTActiveServerPage -> "ACTIVE_SERVER_PAGE"
        FACBTColdFusion -> "COLD_FUSION"
        FACBTJavascript -> "JAVASCRIPT"
        FACBTJsp -> "JSP"
        FACBTPhp -> "PHP"

-- | Counting method for conversions for this floodlight activity. This is a
-- required field.
data FloodlightActivityCountingMethod
    = FACMItemsSoldCounting
      -- ^ @ITEMS_SOLD_COUNTING@
    | FACMSessionCounting
      -- ^ @SESSION_COUNTING@
    | FACMStandardCounting
      -- ^ @STANDARD_COUNTING@
    | FACMTransactionsCounting
      -- ^ @TRANSACTIONS_COUNTING@
    | FACMUniqueCounting
      -- ^ @UNIQUE_COUNTING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityCountingMethod

instance FromText FloodlightActivityCountingMethod where
    fromText = \case
        "ITEMS_SOLD_COUNTING" -> Just FACMItemsSoldCounting
        "SESSION_COUNTING" -> Just FACMSessionCounting
        "STANDARD_COUNTING" -> Just FACMStandardCounting
        "TRANSACTIONS_COUNTING" -> Just FACMTransactionsCounting
        "UNIQUE_COUNTING" -> Just FACMUniqueCounting
        _ -> Nothing

instance ToText FloodlightActivityCountingMethod where
    toText = \case
        FACMItemsSoldCounting -> "ITEMS_SOLD_COUNTING"
        FACMSessionCounting -> "SESSION_COUNTING"
        FACMStandardCounting -> "STANDARD_COUNTING"
        FACMTransactionsCounting -> "TRANSACTIONS_COUNTING"
        FACMUniqueCounting -> "UNIQUE_COUNTING"

-- | Type of the associated floodlight activity group. This is a read-only
-- field.
data FloodlightActivityFloodlightActivityGroupType
    = FAFAGTCounter
      -- ^ @COUNTER@
    | FAFAGTSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityFloodlightActivityGroupType

instance FromText FloodlightActivityFloodlightActivityGroupType where
    fromText = \case
        "COUNTER" -> Just FAFAGTCounter
        "SALE" -> Just FAFAGTSale
        _ -> Nothing

instance ToText FloodlightActivityFloodlightActivityGroupType where
    toText = \case
        FAFAGTCounter -> "COUNTER"
        FAFAGTSale -> "SALE"

-- | Type of the floodlight activity group. This is a required field that is
-- read-only after insertion.
data FloodlightActivityGroupType
    = FAGTCounter
      -- ^ @COUNTER@
    | FAGTSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupType

instance FromText FloodlightActivityGroupType where
    fromText = \case
        "COUNTER" -> Just FAGTCounter
        "SALE" -> Just FAGTSale
        _ -> Nothing

instance ToText FloodlightActivityGroupType where
    toText = \case
        FAGTCounter -> "COUNTER"
        FAGTSale -> "SALE"

data FloodlightActivityItemUserDefinedVariableTypes
    = FAIUDVTU1
      -- ^ @U1@
    | FAIUDVTU10
      -- ^ @U10@
    | FAIUDVTU11
      -- ^ @U11@
    | FAIUDVTU12
      -- ^ @U12@
    | FAIUDVTU13
      -- ^ @U13@
    | FAIUDVTU14
      -- ^ @U14@
    | FAIUDVTU15
      -- ^ @U15@
    | FAIUDVTU16
      -- ^ @U16@
    | FAIUDVTU17
      -- ^ @U17@
    | FAIUDVTU18
      -- ^ @U18@
    | FAIUDVTU19
      -- ^ @U19@
    | FAIUDVTU2
      -- ^ @U2@
    | FAIUDVTU20
      -- ^ @U20@
    | FAIUDVTU3
      -- ^ @U3@
    | FAIUDVTU4
      -- ^ @U4@
    | FAIUDVTU5
      -- ^ @U5@
    | FAIUDVTU6
      -- ^ @U6@
    | FAIUDVTU7
      -- ^ @U7@
    | FAIUDVTU8
      -- ^ @U8@
    | FAIUDVTU9
      -- ^ @U9@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityItemUserDefinedVariableTypes

instance FromText FloodlightActivityItemUserDefinedVariableTypes where
    fromText = \case
        "U1" -> Just FAIUDVTU1
        "U10" -> Just FAIUDVTU10
        "U11" -> Just FAIUDVTU11
        "U12" -> Just FAIUDVTU12
        "U13" -> Just FAIUDVTU13
        "U14" -> Just FAIUDVTU14
        "U15" -> Just FAIUDVTU15
        "U16" -> Just FAIUDVTU16
        "U17" -> Just FAIUDVTU17
        "U18" -> Just FAIUDVTU18
        "U19" -> Just FAIUDVTU19
        "U2" -> Just FAIUDVTU2
        "U20" -> Just FAIUDVTU20
        "U3" -> Just FAIUDVTU3
        "U4" -> Just FAIUDVTU4
        "U5" -> Just FAIUDVTU5
        "U6" -> Just FAIUDVTU6
        "U7" -> Just FAIUDVTU7
        "U8" -> Just FAIUDVTU8
        "U9" -> Just FAIUDVTU9
        _ -> Nothing

instance ToText FloodlightActivityItemUserDefinedVariableTypes where
    toText = \case
        FAIUDVTU1 -> "U1"
        FAIUDVTU10 -> "U10"
        FAIUDVTU11 -> "U11"
        FAIUDVTU12 -> "U12"
        FAIUDVTU13 -> "U13"
        FAIUDVTU14 -> "U14"
        FAIUDVTU15 -> "U15"
        FAIUDVTU16 -> "U16"
        FAIUDVTU17 -> "U17"
        FAIUDVTU18 -> "U18"
        FAIUDVTU19 -> "U19"
        FAIUDVTU2 -> "U2"
        FAIUDVTU20 -> "U20"
        FAIUDVTU3 -> "U3"
        FAIUDVTU4 -> "U4"
        FAIUDVTU5 -> "U5"
        FAIUDVTU6 -> "U6"
        FAIUDVTU7 -> "U7"
        FAIUDVTU8 -> "U8"
        FAIUDVTU9 -> "U9"

-- | Tag format type for the floodlight activity. If left blank, the tag
-- format will default to HTML.
data FloodlightActivityTagFormat
    = FATFHTML
      -- ^ @HTML@
    | FATFXhtml
      -- ^ @XHTML@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityTagFormat

instance FromText FloodlightActivityTagFormat where
    fromText = \case
        "HTML" -> Just FATFHTML
        "XHTML" -> Just FATFXhtml
        _ -> Nothing

instance ToText FloodlightActivityTagFormat where
    toText = \case
        FATFHTML -> "HTML"
        FATFXhtml -> "XHTML"

-- | Day that will be counted as the first day of the week in reports. This
-- is a required field.
data FloodlightConfigurationFirstDayOfWeek
    = FCFDOWMonday
      -- ^ @MONDAY@
    | FCFDOWSunday
      -- ^ @SUNDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationFirstDayOfWeek

instance FromText FloodlightConfigurationFirstDayOfWeek where
    fromText = \case
        "MONDAY" -> Just FCFDOWMonday
        "SUNDAY" -> Just FCFDOWSunday
        _ -> Nothing

instance ToText FloodlightConfigurationFirstDayOfWeek where
    toText = \case
        FCFDOWMonday -> "MONDAY"
        FCFDOWSunday -> "SUNDAY"

data FloodlightConfigurationItemStandardVariableTypes
    = FCISVTNum
      -- ^ @NUM@
    | FCISVTOrd
      -- ^ @ORD@
    | FCISVTTran
      -- ^ @TRAN@
    | FCISVTU
      -- ^ @U@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationItemStandardVariableTypes

instance FromText FloodlightConfigurationItemStandardVariableTypes where
    fromText = \case
        "NUM" -> Just FCISVTNum
        "ORD" -> Just FCISVTOrd
        "TRAN" -> Just FCISVTTran
        "U" -> Just FCISVTU
        _ -> Nothing

instance ToText FloodlightConfigurationItemStandardVariableTypes where
    toText = \case
        FCISVTNum -> "NUM"
        FCISVTOrd -> "ORD"
        FCISVTTran -> "TRAN"
        FCISVTU -> "U"

-- | Types of attribution options for natural search conversions.
data FloodlightConfigurationNaturalSearchConversionAttributionOption
    = FCNSCAOExcludeNATuralSearchConversionAttribution
      -- ^ @EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION@
    | FCNSCAOIncludeNATuralSearchConversionAttribution
      -- ^ @INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION@
    | FCNSCAOIncludeNATuralSearchTieredConversionAttribution
      -- ^ @INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationNaturalSearchConversionAttributionOption

instance FromText FloodlightConfigurationNaturalSearchConversionAttributionOption where
    fromText = \case
        "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Just FCNSCAOExcludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Just FCNSCAOIncludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION" -> Just FCNSCAOIncludeNATuralSearchTieredConversionAttribution
        _ -> Nothing

instance ToText FloodlightConfigurationNaturalSearchConversionAttributionOption where
    toText = \case
        FCNSCAOExcludeNATuralSearchConversionAttribution -> "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        FCNSCAOIncludeNATuralSearchConversionAttribution -> "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        FCNSCAOIncludeNATuralSearchTieredConversionAttribution -> "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION"

-- | Position in the browser where the window will open.
data FsCommandPositionOption
    = FCPOCentered
      -- ^ @CENTERED@
    | FCPODistanceFromTopLeftCorner
      -- ^ @DISTANCE_FROM_TOP_LEFT_CORNER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FsCommandPositionOption

instance FromText FsCommandPositionOption where
    fromText = \case
        "CENTERED" -> Just FCPOCentered
        "DISTANCE_FROM_TOP_LEFT_CORNER" -> Just FCPODistanceFromTopLeftCorner
        _ -> Nothing

instance ToText FsCommandPositionOption where
    toText = \case
        FCPOCentered -> "CENTERED"
        FCPODistanceFromTopLeftCorner -> "DISTANCE_FROM_TOP_LEFT_CORNER"

-- | Comparison operator of this term. This field is only relevant when type
-- is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
data ListPopulationTermOperator
    = LPTONumEquals
      -- ^ @NUM_EQUALS@
    | LPTONumGreaterThan
      -- ^ @NUM_GREATER_THAN@
    | LPTONumGreaterThanEqual
      -- ^ @NUM_GREATER_THAN_EQUAL@
    | LPTONumLessThan
      -- ^ @NUM_LESS_THAN@
    | LPTONumLessThanEqual
      -- ^ @NUM_LESS_THAN_EQUAL@
    | LPTOStringContains
      -- ^ @STRING_CONTAINS@
    | LPTOStringEquals
      -- ^ @STRING_EQUALS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ListPopulationTermOperator

instance FromText ListPopulationTermOperator where
    fromText = \case
        "NUM_EQUALS" -> Just LPTONumEquals
        "NUM_GREATER_THAN" -> Just LPTONumGreaterThan
        "NUM_GREATER_THAN_EQUAL" -> Just LPTONumGreaterThanEqual
        "NUM_LESS_THAN" -> Just LPTONumLessThan
        "NUM_LESS_THAN_EQUAL" -> Just LPTONumLessThanEqual
        "STRING_CONTAINS" -> Just LPTOStringContains
        "STRING_EQUALS" -> Just LPTOStringEquals
        _ -> Nothing

instance ToText ListPopulationTermOperator where
    toText = \case
        LPTONumEquals -> "NUM_EQUALS"
        LPTONumGreaterThan -> "NUM_GREATER_THAN"
        LPTONumGreaterThanEqual -> "NUM_GREATER_THAN_EQUAL"
        LPTONumLessThan -> "NUM_LESS_THAN"
        LPTONumLessThanEqual -> "NUM_LESS_THAN_EQUAL"
        LPTOStringContains -> "STRING_CONTAINS"
        LPTOStringEquals -> "STRING_EQUALS"

-- | List population term type determines the applicable fields in this
-- object. If left unset or set to CUSTOM_VARIABLE_TERM, then variableName,
-- variableFriendlyName, operator, value, and negation are applicable. If
-- set to LIST_MEMBERSHIP_TERM then remarketingListId and contains are
-- applicable. If set to REFERRER_TERM then operator, value, and negation
-- are applicable.
data ListPopulationTermType
    = LPTTCustomVariableTerm
      -- ^ @CUSTOM_VARIABLE_TERM@
    | LPTTListMembershipTerm
      -- ^ @LIST_MEMBERSHIP_TERM@
    | LPTTReferrerTerm
      -- ^ @REFERRER_TERM@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ListPopulationTermType

instance FromText ListPopulationTermType where
    fromText = \case
        "CUSTOM_VARIABLE_TERM" -> Just LPTTCustomVariableTerm
        "LIST_MEMBERSHIP_TERM" -> Just LPTTListMembershipTerm
        "REFERRER_TERM" -> Just LPTTReferrerTerm
        _ -> Nothing

instance ToText ListPopulationTermType where
    toText = \case
        LPTTCustomVariableTerm -> "CUSTOM_VARIABLE_TERM"
        LPTTListMembershipTerm -> "LIST_MEMBERSHIP_TERM"
        LPTTReferrerTerm -> "REFERRER_TERM"

-- | Status of the filter. NONE means the user has access to none of the
-- objects. ALL means the user has access to all objects. ASSIGNED means
-- the user has access to the objects with IDs in the objectIds list.
data ObjectFilterStatus
    = OFSAll
      -- ^ @ALL@
    | OFSAssigned
      -- ^ @ASSIGNED@
    | OFSNone
      -- ^ @NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectFilterStatus

instance FromText ObjectFilterStatus where
    fromText = \case
        "ALL" -> Just OFSAll
        "ASSIGNED" -> Just OFSAssigned
        "NONE" -> Just OFSNone
        _ -> Nothing

instance ToText ObjectFilterStatus where
    toText = \case
        OFSAll -> "ALL"
        OFSAssigned -> "ASSIGNED"
        OFSNone -> "NONE"

-- | Type of this contact.
data OrderContactContactType
    = OCCTPlanningOrderContactBuyerBillingContact
      -- ^ @PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT@
    | OCCTPlanningOrderContactBuyerContact
      -- ^ @PLANNING_ORDER_CONTACT_BUYER_CONTACT@
    | OCCTPlanningOrderContactSellerContact
      -- ^ @PLANNING_ORDER_CONTACT_SELLER_CONTACT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderContactContactType

instance FromText OrderContactContactType where
    fromText = \case
        "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT" -> Just OCCTPlanningOrderContactBuyerBillingContact
        "PLANNING_ORDER_CONTACT_BUYER_CONTACT" -> Just OCCTPlanningOrderContactBuyerContact
        "PLANNING_ORDER_CONTACT_SELLER_CONTACT" -> Just OCCTPlanningOrderContactSellerContact
        _ -> Nothing

instance ToText OrderContactContactType where
    toText = \case
        OCCTPlanningOrderContactBuyerBillingContact -> "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT"
        OCCTPlanningOrderContactBuyerContact -> "PLANNING_ORDER_CONTACT_BUYER_CONTACT"
        OCCTPlanningOrderContactSellerContact -> "PLANNING_ORDER_CONTACT_SELLER_CONTACT"

-- | Type of this order document
data OrderDocumentType
    = ODTPlanningOrderTypeChangeOrder
      -- ^ @PLANNING_ORDER_TYPE_CHANGE_ORDER@
    | ODTPlanningOrderTypeInsertionOrder
      -- ^ @PLANNING_ORDER_TYPE_INSERTION_ORDER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderDocumentType

instance FromText OrderDocumentType where
    fromText = \case
        "PLANNING_ORDER_TYPE_CHANGE_ORDER" -> Just ODTPlanningOrderTypeChangeOrder
        "PLANNING_ORDER_TYPE_INSERTION_ORDER" -> Just ODTPlanningOrderTypeInsertionOrder
        _ -> Nothing

instance ToText OrderDocumentType where
    toText = \case
        ODTPlanningOrderTypeChangeOrder -> "PLANNING_ORDER_TYPE_CHANGE_ORDER"
        ODTPlanningOrderTypeInsertionOrder -> "PLANNING_ORDER_TYPE_INSERTION_ORDER"

-- | Placement compatibility. WEB and WEB_INTERSTITIAL refer to rendering
-- either on desktop or on mobile devices for regular or interstitial ads,
-- respectively. APP and APP_INTERSTITIAL are for rendering in mobile
-- apps.IN_STREAM_VIDEO refers to rendering in in-stream video ads
-- developed with the VAST standard. This field is required on insertion.
data PlacementCompatibility
    = PCApp
      -- ^ @APP@
    | PCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | PCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | PCWeb
      -- ^ @WEB@
    | PCWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementCompatibility

instance FromText PlacementCompatibility where
    fromText = \case
        "APP" -> Just PCApp
        "APP_INTERSTITIAL" -> Just PCAppInterstitial
        "IN_STREAM_VIDEO" -> Just PCInStreamVideo
        "WEB" -> Just PCWeb
        "WEB_INTERSTITIAL" -> Just PCWebInterstitial
        _ -> Nothing

instance ToText PlacementCompatibility where
    toText = \case
        PCApp -> "APP"
        PCAppInterstitial -> "APP_INTERSTITIAL"
        PCInStreamVideo -> "IN_STREAM_VIDEO"
        PCWeb -> "WEB"
        PCWebInterstitial -> "WEB_INTERSTITIAL"

-- | Type of this placement group. A package is a simple group of placements
-- that acts as a single pricing point for a group of tags. A roadblock is
-- a group of placements that not only acts as a single pricing point, but
-- also assumes that all the tags in it will be served at the same time. A
-- roadblock requires one of its assigned placements to be marked as
-- primary for reporting. This field is required on insertion.
data PlacementGroupPlacementGroupType
    = PGPGTPlacementPackage
      -- ^ @PLACEMENT_PACKAGE@
    | PGPGTPlacementRoadblock
      -- ^ @PLACEMENT_ROADBLOCK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupPlacementGroupType

instance FromText PlacementGroupPlacementGroupType where
    fromText = \case
        "PLACEMENT_PACKAGE" -> Just PGPGTPlacementPackage
        "PLACEMENT_ROADBLOCK" -> Just PGPGTPlacementRoadblock
        _ -> Nothing

instance ToText PlacementGroupPlacementGroupType where
    toText = \case
        PGPGTPlacementPackage -> "PLACEMENT_PACKAGE"
        PGPGTPlacementRoadblock -> "PLACEMENT_ROADBLOCK"

data PlacementItemTagFormats
    = PITFPlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | PITFPlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | PITFPlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | PITFPlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | PITFPlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | PITFPlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | PITFPlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | PITFPlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | PITFPlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | PITFPlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | PITFPlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | PITFPlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | PITFPlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | PITFPlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | PITFPlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | PITFPlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | PITFPlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | PITFPlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementItemTagFormats

instance FromText PlacementItemTagFormats where
    fromText = \case
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Just PITFPlacementTagClickCommands
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Just PITFPlacementTagIframeIlayer
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Just PITFPlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Just PITFPlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Just PITFPlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Just PITFPlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Just PITFPlacementTagInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Just PITFPlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Just PITFPlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Just PITFPlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Just PITFPlacementTagInterstitialJavascript
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Just PITFPlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT" -> Just PITFPlacementTagJavascript
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Just PITFPlacementTagJavascriptLegacy
        "PLACEMENT_TAG_STANDARD" -> Just PITFPlacementTagStandard
        "PLACEMENT_TAG_TRACKING" -> Just PITFPlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Just PITFPlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Just PITFPlacementTagTrackingJavascript
        _ -> Nothing

instance ToText PlacementItemTagFormats where
    toText = \case
        PITFPlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        PITFPlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        PITFPlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        PITFPlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        PITFPlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        PITFPlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        PITFPlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        PITFPlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        PITFPlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        PITFPlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        PITFPlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        PITFPlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        PITFPlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        PITFPlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        PITFPlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        PITFPlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        PITFPlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        PITFPlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

-- | Payment source for this placement. This is a required field that is
-- read-only after insertion.
data PlacementPaymentSource
    = PPSPlacementAgencyPaid
      -- ^ @PLACEMENT_AGENCY_PAID@
    | PPSPlacementPublisherPaid
      -- ^ @PLACEMENT_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementPaymentSource

instance FromText PlacementPaymentSource where
    fromText = \case
        "PLACEMENT_AGENCY_PAID" -> Just PPSPlacementAgencyPaid
        "PLACEMENT_PUBLISHER_PAID" -> Just PPSPlacementPublisherPaid
        _ -> Nothing

instance ToText PlacementPaymentSource where
    toText = \case
        PPSPlacementAgencyPaid -> "PLACEMENT_AGENCY_PAID"
        PPSPlacementPublisherPaid -> "PLACEMENT_PUBLISHER_PAID"

-- | Third-party placement status.
data PlacementStatus
    = PSAcknowledgeAcceptance
      -- ^ @ACKNOWLEDGE_ACCEPTANCE@
    | PSAcknowledgeRejection
      -- ^ @ACKNOWLEDGE_REJECTION@
    | PSDraft
      -- ^ @DRAFT@
    | PSPaymentAccepted
      -- ^ @PAYMENT_ACCEPTED@
    | PSPaymentRejected
      -- ^ @PAYMENT_REJECTED@
    | PSPendingReview
      -- ^ @PENDING_REVIEW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementStatus

instance FromText PlacementStatus where
    fromText = \case
        "ACKNOWLEDGE_ACCEPTANCE" -> Just PSAcknowledgeAcceptance
        "ACKNOWLEDGE_REJECTION" -> Just PSAcknowledgeRejection
        "DRAFT" -> Just PSDraft
        "PAYMENT_ACCEPTED" -> Just PSPaymentAccepted
        "PAYMENT_REJECTED" -> Just PSPaymentRejected
        "PENDING_REVIEW" -> Just PSPendingReview
        _ -> Nothing

instance ToText PlacementStatus where
    toText = \case
        PSAcknowledgeAcceptance -> "ACKNOWLEDGE_ACCEPTANCE"
        PSAcknowledgeRejection -> "ACKNOWLEDGE_REJECTION"
        PSDraft -> "DRAFT"
        PSPaymentAccepted -> "PAYMENT_ACCEPTED"
        PSPaymentRejected -> "PAYMENT_REJECTED"
        PSPendingReview -> "PENDING_REVIEW"

-- | Popup window position either centered or at specific coordinate.
data PopupWindowPropertiesPositionType
    = PWPPTCenter
      -- ^ @CENTER@
    | PWPPTCoordinates
      -- ^ @COORDINATES@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PopupWindowPropertiesPositionType

instance FromText PopupWindowPropertiesPositionType where
    fromText = \case
        "CENTER" -> Just PWPPTCenter
        "COORDINATES" -> Just PWPPTCoordinates
        _ -> Nothing

instance ToText PopupWindowPropertiesPositionType where
    toText = \case
        PWPPTCenter -> "CENTER"
        PWPPTCoordinates -> "COORDINATES"

-- | Cap cost type of this inventory item.
data PricingCapCostType
    = PCCTPlanningPlacementCapCostTypeCumulative
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE@
    | PCCTPlanningPlacementCapCostTypeMonthly
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY@
    | PCCTPlanningPlacementCapCostTypeNone
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingCapCostType

instance FromText PricingCapCostType where
    fromText = \case
        "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE" -> Just PCCTPlanningPlacementCapCostTypeCumulative
        "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY" -> Just PCCTPlanningPlacementCapCostTypeMonthly
        "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE" -> Just PCCTPlanningPlacementCapCostTypeNone
        _ -> Nothing

instance ToText PricingCapCostType where
    toText = \case
        PCCTPlanningPlacementCapCostTypeCumulative -> "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE"
        PCCTPlanningPlacementCapCostTypeMonthly -> "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY"
        PCCTPlanningPlacementCapCostTypeNone -> "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE"

-- | Group type of this inventory item if it represents a placement group. Is
-- null otherwise. There are two type of placement groups:
-- PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE is a simple group of inventory
-- items that acts as a single pricing point for a group of tags.
-- PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK is a group of inventory items
-- that not only acts as a single pricing point, but also assumes that all
-- the tags in it will be served at the same time. A roadblock requires one
-- of its assigned inventory items to be marked as primary.
data PricingGroupType
    = PGTPlanningPlacementGroupTypePackage
      -- ^ @PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE@
    | PGTPlanningPlacementGroupTypeRoadblock
      -- ^ @PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingGroupType

instance FromText PricingGroupType where
    fromText = \case
        "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE" -> Just PGTPlanningPlacementGroupTypePackage
        "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK" -> Just PGTPlanningPlacementGroupTypeRoadblock
        _ -> Nothing

instance ToText PricingGroupType where
    toText = \case
        PGTPlanningPlacementGroupTypePackage -> "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE"
        PGTPlanningPlacementGroupTypeRoadblock -> "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK"

-- | Pricing type of this inventory item.
data PricingPricingType
    = PPTPlanningPlacementPricingTypeClicks
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CLICKS@
    | PPTPlanningPlacementPricingTypeCpa
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPA@
    | PPTPlanningPlacementPricingTypeCpc
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPC@
    | PPTPlanningPlacementPricingTypeCpm
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPM@
    | PPTPlanningPlacementPricingTypeFlatRateClicks
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS@
    | PPTPlanningPlacementPricingTypeFlatRateImpressions
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
    | PPTPlanningPlacementPricingTypeImpressions
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingPricingType

instance FromText PricingPricingType where
    fromText = \case
        "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS" -> Just PPTPlanningPlacementPricingTypeClicks
        "PLANNING_PLACEMENT_PRICING_TYPE_CPA" -> Just PPTPlanningPlacementPricingTypeCpa
        "PLANNING_PLACEMENT_PRICING_TYPE_CPC" -> Just PPTPlanningPlacementPricingTypeCpc
        "PLANNING_PLACEMENT_PRICING_TYPE_CPM" -> Just PPTPlanningPlacementPricingTypeCpm
        "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PPTPlanningPlacementPricingTypeFlatRateClicks
        "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PPTPlanningPlacementPricingTypeFlatRateImpressions
        "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS" -> Just PPTPlanningPlacementPricingTypeImpressions
        _ -> Nothing

instance ToText PricingPricingType where
    toText = \case
        PPTPlanningPlacementPricingTypeClicks -> "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS"
        PPTPlanningPlacementPricingTypeCpa -> "PLANNING_PLACEMENT_PRICING_TYPE_CPA"
        PPTPlanningPlacementPricingTypeCpc -> "PLANNING_PLACEMENT_PRICING_TYPE_CPC"
        PPTPlanningPlacementPricingTypeCpm -> "PLANNING_PLACEMENT_PRICING_TYPE_CPM"
        PPTPlanningPlacementPricingTypeFlatRateClicks -> "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS"
        PPTPlanningPlacementPricingTypeFlatRateImpressions -> "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS"
        PPTPlanningPlacementPricingTypeImpressions -> "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS"

-- | Placement cap cost option.
data PricingScheduleCapCostOption
    = PSCCOCapCostCumulative
      -- ^ @CAP_COST_CUMULATIVE@
    | PSCCOCapCostMonthly
      -- ^ @CAP_COST_MONTHLY@
    | PSCCOCapCostNone
      -- ^ @CAP_COST_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingScheduleCapCostOption

instance FromText PricingScheduleCapCostOption where
    fromText = \case
        "CAP_COST_CUMULATIVE" -> Just PSCCOCapCostCumulative
        "CAP_COST_MONTHLY" -> Just PSCCOCapCostMonthly
        "CAP_COST_NONE" -> Just PSCCOCapCostNone
        _ -> Nothing

instance ToText PricingScheduleCapCostOption where
    toText = \case
        PSCCOCapCostCumulative -> "CAP_COST_CUMULATIVE"
        PSCCOCapCostMonthly -> "CAP_COST_MONTHLY"
        PSCCOCapCostNone -> "CAP_COST_NONE"

-- | Placement pricing type. This field is required on insertion.
data PricingSchedulePricingType
    = PSPTPricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | PSPTPricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | PSPTPricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | PSPTPricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | PSPTPricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingSchedulePricingType

instance FromText PricingSchedulePricingType where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just PSPTPricingTypeCpa
        "PRICING_TYPE_CPC" -> Just PSPTPricingTypeCpc
        "PRICING_TYPE_CPM" -> Just PSPTPricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PSPTPricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PSPTPricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText PricingSchedulePricingType where
    toText = \case
        PSPTPricingTypeCpa -> "PRICING_TYPE_CPA"
        PSPTPricingTypeCpc -> "PRICING_TYPE_CPC"
        PSPTPricingTypeCpm -> "PRICING_TYPE_CPM"
        PSPTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PSPTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

-- | Audience age group of this project.
data ProjectAudienceAgeGroup
    = PAAGPlanningAudienceAge1824
      -- ^ @PLANNING_AUDIENCE_AGE_18_24@
    | PAAGPlanningAudienceAge2534
      -- ^ @PLANNING_AUDIENCE_AGE_25_34@
    | PAAGPlanningAudienceAge3544
      -- ^ @PLANNING_AUDIENCE_AGE_35_44@
    | PAAGPlanningAudienceAge4554
      -- ^ @PLANNING_AUDIENCE_AGE_45_54@
    | PAAGPlanningAudienceAge5564
      -- ^ @PLANNING_AUDIENCE_AGE_55_64@
    | PAAGPlanningAudienceAge65OrMore
      -- ^ @PLANNING_AUDIENCE_AGE_65_OR_MORE@
    | PAAGPlanningAudienceAgeUnknown
      -- ^ @PLANNING_AUDIENCE_AGE_UNKNOWN@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProjectAudienceAgeGroup

instance FromText ProjectAudienceAgeGroup where
    fromText = \case
        "PLANNING_AUDIENCE_AGE_18_24" -> Just PAAGPlanningAudienceAge1824
        "PLANNING_AUDIENCE_AGE_25_34" -> Just PAAGPlanningAudienceAge2534
        "PLANNING_AUDIENCE_AGE_35_44" -> Just PAAGPlanningAudienceAge3544
        "PLANNING_AUDIENCE_AGE_45_54" -> Just PAAGPlanningAudienceAge4554
        "PLANNING_AUDIENCE_AGE_55_64" -> Just PAAGPlanningAudienceAge5564
        "PLANNING_AUDIENCE_AGE_65_OR_MORE" -> Just PAAGPlanningAudienceAge65OrMore
        "PLANNING_AUDIENCE_AGE_UNKNOWN" -> Just PAAGPlanningAudienceAgeUnknown
        _ -> Nothing

instance ToText ProjectAudienceAgeGroup where
    toText = \case
        PAAGPlanningAudienceAge1824 -> "PLANNING_AUDIENCE_AGE_18_24"
        PAAGPlanningAudienceAge2534 -> "PLANNING_AUDIENCE_AGE_25_34"
        PAAGPlanningAudienceAge3544 -> "PLANNING_AUDIENCE_AGE_35_44"
        PAAGPlanningAudienceAge4554 -> "PLANNING_AUDIENCE_AGE_45_54"
        PAAGPlanningAudienceAge5564 -> "PLANNING_AUDIENCE_AGE_55_64"
        PAAGPlanningAudienceAge65OrMore -> "PLANNING_AUDIENCE_AGE_65_OR_MORE"
        PAAGPlanningAudienceAgeUnknown -> "PLANNING_AUDIENCE_AGE_UNKNOWN"

-- | Audience gender of this project.
data ProjectAudienceGender
    = PAGPlanningAudienceGenderFemale
      -- ^ @PLANNING_AUDIENCE_GENDER_FEMALE@
    | PAGPlanningAudienceGenderMale
      -- ^ @PLANNING_AUDIENCE_GENDER_MALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProjectAudienceGender

instance FromText ProjectAudienceGender where
    fromText = \case
        "PLANNING_AUDIENCE_GENDER_FEMALE" -> Just PAGPlanningAudienceGenderFemale
        "PLANNING_AUDIENCE_GENDER_MALE" -> Just PAGPlanningAudienceGenderMale
        _ -> Nothing

instance ToText ProjectAudienceGender where
    toText = \case
        PAGPlanningAudienceGenderFemale -> "PLANNING_AUDIENCE_GENDER_FEMALE"
        PAGPlanningAudienceGenderMale -> "PLANNING_AUDIENCE_GENDER_MALE"

-- | The delivery type for the recipient.
data RecipientDeliveryType
    = RDTAttachment
      -- ^ @ATTACHMENT@
    | RDTLink
      -- ^ @LINK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RecipientDeliveryType

instance FromText RecipientDeliveryType where
    fromText = \case
        "ATTACHMENT" -> Just RDTAttachment
        "LINK" -> Just RDTLink
        _ -> Nothing

instance ToText RecipientDeliveryType where
    toText = \case
        RDTAttachment -> "ATTACHMENT"
        RDTLink -> "LINK"

-- | Product from which this remarketing list was originated.
data RemarketingListListSource
    = RLLSRemarketingListSourceDBm
      -- ^ @REMARKETING_LIST_SOURCE_DBM@
    | RLLSRemarketingListSourceDfa
      -- ^ @REMARKETING_LIST_SOURCE_DFA@
    | RLLSRemarketingListSourceDmp
      -- ^ @REMARKETING_LIST_SOURCE_DMP@
    | RLLSRemarketingListSourceGa
      -- ^ @REMARKETING_LIST_SOURCE_GA@
    | RLLSRemarketingListSourceOther
      -- ^ @REMARKETING_LIST_SOURCE_OTHER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RemarketingListListSource

instance FromText RemarketingListListSource where
    fromText = \case
        "REMARKETING_LIST_SOURCE_DBM" -> Just RLLSRemarketingListSourceDBm
        "REMARKETING_LIST_SOURCE_DFA" -> Just RLLSRemarketingListSourceDfa
        "REMARKETING_LIST_SOURCE_DMP" -> Just RLLSRemarketingListSourceDmp
        "REMARKETING_LIST_SOURCE_GA" -> Just RLLSRemarketingListSourceGa
        "REMARKETING_LIST_SOURCE_OTHER" -> Just RLLSRemarketingListSourceOther
        _ -> Nothing

instance ToText RemarketingListListSource where
    toText = \case
        RLLSRemarketingListSourceDBm -> "REMARKETING_LIST_SOURCE_DBM"
        RLLSRemarketingListSourceDfa -> "REMARKETING_LIST_SOURCE_DFA"
        RLLSRemarketingListSourceDmp -> "REMARKETING_LIST_SOURCE_DMP"
        RLLSRemarketingListSourceGa -> "REMARKETING_LIST_SOURCE_GA"
        RLLSRemarketingListSourceOther -> "REMARKETING_LIST_SOURCE_OTHER"

-- | The dimension option.
data ReportDimensionCrossDimensionReachCriteria
    = RDCDRCAdvertiser
      -- ^ @ADVERTISER@
    | RDCDRCCampaign
      -- ^ @CAMPAIGN@
    | RDCDRCSiteByAdvertiser
      -- ^ @SITE_BY_ADVERTISER@
    | RDCDRCSiteByCampaign
      -- ^ @SITE_BY_CAMPAIGN@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportDimensionCrossDimensionReachCriteria

instance FromText ReportDimensionCrossDimensionReachCriteria where
    fromText = \case
        "ADVERTISER" -> Just RDCDRCAdvertiser
        "CAMPAIGN" -> Just RDCDRCCampaign
        "SITE_BY_ADVERTISER" -> Just RDCDRCSiteByAdvertiser
        "SITE_BY_CAMPAIGN" -> Just RDCDRCSiteByCampaign
        _ -> Nothing

instance ToText ReportDimensionCrossDimensionReachCriteria where
    toText = \case
        RDCDRCAdvertiser -> "ADVERTISER"
        RDCDRCCampaign -> "CAMPAIGN"
        RDCDRCSiteByAdvertiser -> "SITE_BY_ADVERTISER"
        RDCDRCSiteByCampaign -> "SITE_BY_CAMPAIGN"

-- | The type of delivery for the owner to receive, if enabled.
data ReportEmailOwnerDeliveryTypeDelivery
    = REODTDAttachment
      -- ^ @ATTACHMENT@
    | REODTDLink
      -- ^ @LINK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportEmailOwnerDeliveryTypeDelivery

instance FromText ReportEmailOwnerDeliveryTypeDelivery where
    fromText = \case
        "ATTACHMENT" -> Just REODTDAttachment
        "LINK" -> Just REODTDLink
        _ -> Nothing

instance ToText ReportEmailOwnerDeliveryTypeDelivery where
    toText = \case
        REODTDAttachment -> "ATTACHMENT"
        REODTDLink -> "LINK"

-- | The output format of the report. If not specified, default format is
-- \"CSV\". Note that the actual format in the completed report file might
-- differ if for instance the report\'s size exceeds the format\'s
-- capabilities. \"CSV\" will then be the fallback format.
data ReportFormat
    = RFCSV
      -- ^ @CSV@
    | RFExcel
      -- ^ @EXCEL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportFormat

instance FromText ReportFormat where
    fromText = \case
        "CSV" -> Just RFCSV
        "EXCEL" -> Just RFExcel
        _ -> Nothing

instance ToText ReportFormat where
    toText = \case
        RFCSV -> "CSV"
        RFExcel -> "EXCEL"

data ReportItemRepeatsOnWeekDaysSchedule
    = RIROWDSFriday
      -- ^ @FRIDAY@
    | RIROWDSMonday
      -- ^ @MONDAY@
    | RIROWDSSaturday
      -- ^ @SATURDAY@
    | RIROWDSSunday
      -- ^ @SUNDAY@
    | RIROWDSThursday
      -- ^ @THURSDAY@
    | RIROWDSTuesday
      -- ^ @TUESDAY@
    | RIROWDSWednesday
      -- ^ @WEDNESDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportItemRepeatsOnWeekDaysSchedule

instance FromText ReportItemRepeatsOnWeekDaysSchedule where
    fromText = \case
        "FRIDAY" -> Just RIROWDSFriday
        "MONDAY" -> Just RIROWDSMonday
        "SATURDAY" -> Just RIROWDSSaturday
        "SUNDAY" -> Just RIROWDSSunday
        "THURSDAY" -> Just RIROWDSThursday
        "TUESDAY" -> Just RIROWDSTuesday
        "WEDNESDAY" -> Just RIROWDSWednesday
        _ -> Nothing

instance ToText ReportItemRepeatsOnWeekDaysSchedule where
    toText = \case
        RIROWDSFriday -> "FRIDAY"
        RIROWDSMonday -> "MONDAY"
        RIROWDSSaturday -> "SATURDAY"
        RIROWDSSunday -> "SUNDAY"
        RIROWDSThursday -> "THURSDAY"
        RIROWDSTuesday -> "TUESDAY"
        RIROWDSWednesday -> "WEDNESDAY"

-- | Enum to define for \"MONTHLY\" scheduled reports whether reports should
-- be repeated on the same day of the month as \"startDate\" or the same
-- day of the week of the month. Example: If \'startDate\' is Monday, April
-- 2nd 2012 (2012-04-02), \"DAY_OF_MONTH\" would run subsequent reports on
-- the 2nd of every Month, and \"WEEK_OF_MONTH\" would run subsequent
-- reports on the first Monday of the month.
data ReportRunsOnDayOfMonthSchedule
    = RRODOMSDayOfMonth
      -- ^ @DAY_OF_MONTH@
    | RRODOMSWeekOfMonth
      -- ^ @WEEK_OF_MONTH@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportRunsOnDayOfMonthSchedule

instance FromText ReportRunsOnDayOfMonthSchedule where
    fromText = \case
        "DAY_OF_MONTH" -> Just RRODOMSDayOfMonth
        "WEEK_OF_MONTH" -> Just RRODOMSWeekOfMonth
        _ -> Nothing

instance ToText ReportRunsOnDayOfMonthSchedule where
    toText = \case
        RRODOMSDayOfMonth -> "DAY_OF_MONTH"
        RRODOMSWeekOfMonth -> "WEEK_OF_MONTH"

-- | The type of the report.
data ReportType
    = RTCrossDimensionReach
      -- ^ @CROSS_DIMENSION_REACH@
    | RTFloodlight
      -- ^ @FLOODLIGHT@
    | RTPathToConversion
      -- ^ @PATH_TO_CONVERSION@
    | RTReach
      -- ^ @REACH@
    | RTStandard
      -- ^ @STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportType

instance FromText ReportType where
    fromText = \case
        "CROSS_DIMENSION_REACH" -> Just RTCrossDimensionReach
        "FLOODLIGHT" -> Just RTFloodlight
        "PATH_TO_CONVERSION" -> Just RTPathToConversion
        "REACH" -> Just RTReach
        "STANDARD" -> Just RTStandard
        _ -> Nothing

instance ToText ReportType where
    toText = \case
        RTCrossDimensionReach -> "CROSS_DIMENSION_REACH"
        RTFloodlight -> "FLOODLIGHT"
        RTPathToConversion -> "PATH_TO_CONVERSION"
        RTReach -> "REACH"
        RTStandard -> "STANDARD"

-- | Site contact type.
data SiteContactContactType
    = SCCTSalesPerson
      -- ^ @SALES_PERSON@
    | SCCTTrafficker
      -- ^ @TRAFFICKER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SiteContactContactType

instance FromText SiteContactContactType where
    fromText = \case
        "SALES_PERSON" -> Just SCCTSalesPerson
        "TRAFFICKER" -> Just SCCTTrafficker
        _ -> Nothing

instance ToText SiteContactContactType where
    toText = \case
        SCCTSalesPerson -> "SALES_PERSON"
        SCCTTrafficker -> "TRAFFICKER"

-- | An optional sort order for the dimension column.
data SortedDimensionSortOrder
    = SDSOAscending
      -- ^ @ASCENDING@
    | SDSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SortedDimensionSortOrder

instance FromText SortedDimensionSortOrder where
    fromText = \case
        "ASCENDING" -> Just SDSOAscending
        "DESCENDING" -> Just SDSODescending
        _ -> Nothing

instance ToText SortedDimensionSortOrder where
    toText = \case
        SDSOAscending -> "ASCENDING"
        SDSODescending -> "DESCENDING"

-- | TagData tag format of this tag.
data TagDataFormat
    = TDFPlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | TDFPlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | TDFPlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | TDFPlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | TDFPlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | TDFPlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | TDFPlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | TDFPlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | TDFPlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | TDFPlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | TDFPlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | TDFPlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | TDFPlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | TDFPlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | TDFPlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | TDFPlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | TDFPlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | TDFPlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TagDataFormat

instance FromText TagDataFormat where
    fromText = \case
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Just TDFPlacementTagClickCommands
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Just TDFPlacementTagIframeIlayer
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Just TDFPlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Just TDFPlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Just TDFPlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Just TDFPlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Just TDFPlacementTagInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Just TDFPlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Just TDFPlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Just TDFPlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Just TDFPlacementTagInterstitialJavascript
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Just TDFPlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT" -> Just TDFPlacementTagJavascript
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Just TDFPlacementTagJavascriptLegacy
        "PLACEMENT_TAG_STANDARD" -> Just TDFPlacementTagStandard
        "PLACEMENT_TAG_TRACKING" -> Just TDFPlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Just TDFPlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Just TDFPlacementTagTrackingJavascript
        _ -> Nothing

instance ToText TagDataFormat where
    toText = \case
        TDFPlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        TDFPlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        TDFPlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        TDFPlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        TDFPlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        TDFPlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        TDFPlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        TDFPlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        TDFPlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        TDFPlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        TDFPlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        TDFPlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        TDFPlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        TDFPlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        TDFPlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        TDFPlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        TDFPlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        TDFPlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

-- | Option specifying how keywords are embedded in ad tags. This setting can
-- be used to specify whether keyword placeholders are inserted in
-- placement tags for this site. Publishers can then add keywords to those
-- placeholders.
data TagSettingKeywordOption
    = TSKOGenerateSeparateTagForEachKeyword
      -- ^ @GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD@
    | TSKOIgnore
      -- ^ @IGNORE@
    | TSKOPlaceholderWithListOfKeywords
      -- ^ @PLACEHOLDER_WITH_LIST_OF_KEYWORDS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TagSettingKeywordOption

instance FromText TagSettingKeywordOption where
    fromText = \case
        "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD" -> Just TSKOGenerateSeparateTagForEachKeyword
        "IGNORE" -> Just TSKOIgnore
        "PLACEHOLDER_WITH_LIST_OF_KEYWORDS" -> Just TSKOPlaceholderWithListOfKeywords
        _ -> Nothing

instance ToText TagSettingKeywordOption where
    toText = \case
        TSKOGenerateSeparateTagForEachKeyword -> "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD"
        TSKOIgnore -> "IGNORE"
        TSKOPlaceholderWithListOfKeywords -> "PLACEHOLDER_WITH_LIST_OF_KEYWORDS"

-- | Type of browser window for which the backup image of the flash creative
-- can be displayed.
data TargetWindowTargetWindowOption
    = TWTWOCurrentWindow
      -- ^ @CURRENT_WINDOW@
    | TWTWOCustom
      -- ^ @CUSTOM@
    | TWTWONewWindow
      -- ^ @NEW_WINDOW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetWindowTargetWindowOption

instance FromText TargetWindowTargetWindowOption where
    fromText = \case
        "CURRENT_WINDOW" -> Just TWTWOCurrentWindow
        "CUSTOM" -> Just TWTWOCustom
        "NEW_WINDOW" -> Just TWTWONewWindow
        _ -> Nothing

instance ToText TargetWindowTargetWindowOption where
    toText = \case
        TWTWOCurrentWindow -> "CURRENT_WINDOW"
        TWTWOCustom -> "CUSTOM"
        TWTWONewWindow -> "NEW_WINDOW"

-- | Product from which this targetable remarketing list was originated.
data TargetableRemarketingListListSource
    = TRLLSRemarketingListSourceDBm
      -- ^ @REMARKETING_LIST_SOURCE_DBM@
    | TRLLSRemarketingListSourceDfa
      -- ^ @REMARKETING_LIST_SOURCE_DFA@
    | TRLLSRemarketingListSourceDmp
      -- ^ @REMARKETING_LIST_SOURCE_DMP@
    | TRLLSRemarketingListSourceGa
      -- ^ @REMARKETING_LIST_SOURCE_GA@
    | TRLLSRemarketingListSourceOther
      -- ^ @REMARKETING_LIST_SOURCE_OTHER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetableRemarketingListListSource

instance FromText TargetableRemarketingListListSource where
    fromText = \case
        "REMARKETING_LIST_SOURCE_DBM" -> Just TRLLSRemarketingListSourceDBm
        "REMARKETING_LIST_SOURCE_DFA" -> Just TRLLSRemarketingListSourceDfa
        "REMARKETING_LIST_SOURCE_DMP" -> Just TRLLSRemarketingListSourceDmp
        "REMARKETING_LIST_SOURCE_GA" -> Just TRLLSRemarketingListSourceGa
        "REMARKETING_LIST_SOURCE_OTHER" -> Just TRLLSRemarketingListSourceOther
        _ -> Nothing

instance ToText TargetableRemarketingListListSource where
    toText = \case
        TRLLSRemarketingListSourceDBm -> "REMARKETING_LIST_SOURCE_DBM"
        TRLLSRemarketingListSourceDfa -> "REMARKETING_LIST_SOURCE_DFA"
        TRLLSRemarketingListSourceDmp -> "REMARKETING_LIST_SOURCE_DMP"
        TRLLSRemarketingListSourceGa -> "REMARKETING_LIST_SOURCE_GA"
        TRLLSRemarketingListSourceOther -> "REMARKETING_LIST_SOURCE_OTHER"

-- | Third-party URL type for in-stream video creatives.
data ThirdPartyTrackingUrlThirdPartyUrlType
    = TPTUTPUTClickTracking
      -- ^ @CLICK_TRACKING@
    | TPTUTPUTImpression
      -- ^ @IMPRESSION@
    | TPTUTPUTRichMediaBackupImpression
      -- ^ @RICH_MEDIA_BACKUP_IMPRESSION@
    | TPTUTPUTRichMediaImpression
      -- ^ @RICH_MEDIA_IMPRESSION@
    | TPTUTPUTRichMediaRmImpression
      -- ^ @RICH_MEDIA_RM_IMPRESSION@
    | TPTUTPUTSurvey
      -- ^ @SURVEY@
    | TPTUTPUTVideoComplete
      -- ^ @VIDEO_COMPLETE@
    | TPTUTPUTVideoCustom
      -- ^ @VIDEO_CUSTOM@
    | TPTUTPUTVideoFirstQuartile
      -- ^ @VIDEO_FIRST_QUARTILE@
    | TPTUTPUTVideoFullscreen
      -- ^ @VIDEO_FULLSCREEN@
    | TPTUTPUTVideoMidpoint
      -- ^ @VIDEO_MIDPOINT@
    | TPTUTPUTVideoMute
      -- ^ @VIDEO_MUTE@
    | TPTUTPUTVideoPause
      -- ^ @VIDEO_PAUSE@
    | TPTUTPUTVideoRewind
      -- ^ @VIDEO_REWIND@
    | TPTUTPUTVideoStart
      -- ^ @VIDEO_START@
    | TPTUTPUTVideoStop
      -- ^ @VIDEO_STOP@
    | TPTUTPUTVideoThirdQuartile
      -- ^ @VIDEO_THIRD_QUARTILE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ThirdPartyTrackingUrlThirdPartyUrlType

instance FromText ThirdPartyTrackingUrlThirdPartyUrlType where
    fromText = \case
        "CLICK_TRACKING" -> Just TPTUTPUTClickTracking
        "IMPRESSION" -> Just TPTUTPUTImpression
        "RICH_MEDIA_BACKUP_IMPRESSION" -> Just TPTUTPUTRichMediaBackupImpression
        "RICH_MEDIA_IMPRESSION" -> Just TPTUTPUTRichMediaImpression
        "RICH_MEDIA_RM_IMPRESSION" -> Just TPTUTPUTRichMediaRmImpression
        "SURVEY" -> Just TPTUTPUTSurvey
        "VIDEO_COMPLETE" -> Just TPTUTPUTVideoComplete
        "VIDEO_CUSTOM" -> Just TPTUTPUTVideoCustom
        "VIDEO_FIRST_QUARTILE" -> Just TPTUTPUTVideoFirstQuartile
        "VIDEO_FULLSCREEN" -> Just TPTUTPUTVideoFullscreen
        "VIDEO_MIDPOINT" -> Just TPTUTPUTVideoMidpoint
        "VIDEO_MUTE" -> Just TPTUTPUTVideoMute
        "VIDEO_PAUSE" -> Just TPTUTPUTVideoPause
        "VIDEO_REWIND" -> Just TPTUTPUTVideoRewind
        "VIDEO_START" -> Just TPTUTPUTVideoStart
        "VIDEO_STOP" -> Just TPTUTPUTVideoStop
        "VIDEO_THIRD_QUARTILE" -> Just TPTUTPUTVideoThirdQuartile
        _ -> Nothing

instance ToText ThirdPartyTrackingUrlThirdPartyUrlType where
    toText = \case
        TPTUTPUTClickTracking -> "CLICK_TRACKING"
        TPTUTPUTImpression -> "IMPRESSION"
        TPTUTPUTRichMediaBackupImpression -> "RICH_MEDIA_BACKUP_IMPRESSION"
        TPTUTPUTRichMediaImpression -> "RICH_MEDIA_IMPRESSION"
        TPTUTPUTRichMediaRmImpression -> "RICH_MEDIA_RM_IMPRESSION"
        TPTUTPUTSurvey -> "SURVEY"
        TPTUTPUTVideoComplete -> "VIDEO_COMPLETE"
        TPTUTPUTVideoCustom -> "VIDEO_CUSTOM"
        TPTUTPUTVideoFirstQuartile -> "VIDEO_FIRST_QUARTILE"
        TPTUTPUTVideoFullscreen -> "VIDEO_FULLSCREEN"
        TPTUTPUTVideoMidpoint -> "VIDEO_MIDPOINT"
        TPTUTPUTVideoMute -> "VIDEO_MUTE"
        TPTUTPUTVideoPause -> "VIDEO_PAUSE"
        TPTUTPUTVideoRewind -> "VIDEO_REWIND"
        TPTUTPUTVideoStart -> "VIDEO_START"
        TPTUTPUTVideoStop -> "VIDEO_STOP"
        TPTUTPUTVideoThirdQuartile -> "VIDEO_THIRD_QUARTILE"

-- | Data type for the variable. This is a required field.
data UserDefinedVariableConfigurationDataType
    = UDVCDTNumber
      -- ^ @NUMBER@
    | UDVCDTString
      -- ^ @STRING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserDefinedVariableConfigurationDataType

instance FromText UserDefinedVariableConfigurationDataType where
    fromText = \case
        "NUMBER" -> Just UDVCDTNumber
        "STRING" -> Just UDVCDTString
        _ -> Nothing

instance ToText UserDefinedVariableConfigurationDataType where
    toText = \case
        UDVCDTNumber -> "NUMBER"
        UDVCDTString -> "STRING"

-- | Variable name in the tag. This is a required field.
data UserDefinedVariableConfigurationVariableType
    = UDVCVTU1
      -- ^ @U1@
    | UDVCVTU10
      -- ^ @U10@
    | UDVCVTU11
      -- ^ @U11@
    | UDVCVTU12
      -- ^ @U12@
    | UDVCVTU13
      -- ^ @U13@
    | UDVCVTU14
      -- ^ @U14@
    | UDVCVTU15
      -- ^ @U15@
    | UDVCVTU16
      -- ^ @U16@
    | UDVCVTU17
      -- ^ @U17@
    | UDVCVTU18
      -- ^ @U18@
    | UDVCVTU19
      -- ^ @U19@
    | UDVCVTU2
      -- ^ @U2@
    | UDVCVTU20
      -- ^ @U20@
    | UDVCVTU3
      -- ^ @U3@
    | UDVCVTU4
      -- ^ @U4@
    | UDVCVTU5
      -- ^ @U5@
    | UDVCVTU6
      -- ^ @U6@
    | UDVCVTU7
      -- ^ @U7@
    | UDVCVTU8
      -- ^ @U8@
    | UDVCVTU9
      -- ^ @U9@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserDefinedVariableConfigurationVariableType

instance FromText UserDefinedVariableConfigurationVariableType where
    fromText = \case
        "U1" -> Just UDVCVTU1
        "U10" -> Just UDVCVTU10
        "U11" -> Just UDVCVTU11
        "U12" -> Just UDVCVTU12
        "U13" -> Just UDVCVTU13
        "U14" -> Just UDVCVTU14
        "U15" -> Just UDVCVTU15
        "U16" -> Just UDVCVTU16
        "U17" -> Just UDVCVTU17
        "U18" -> Just UDVCVTU18
        "U19" -> Just UDVCVTU19
        "U2" -> Just UDVCVTU2
        "U20" -> Just UDVCVTU20
        "U3" -> Just UDVCVTU3
        "U4" -> Just UDVCVTU4
        "U5" -> Just UDVCVTU5
        "U6" -> Just UDVCVTU6
        "U7" -> Just UDVCVTU7
        "U8" -> Just UDVCVTU8
        "U9" -> Just UDVCVTU9
        _ -> Nothing

instance ToText UserDefinedVariableConfigurationVariableType where
    toText = \case
        UDVCVTU1 -> "U1"
        UDVCVTU10 -> "U10"
        UDVCVTU11 -> "U11"
        UDVCVTU12 -> "U12"
        UDVCVTU13 -> "U13"
        UDVCVTU14 -> "U14"
        UDVCVTU15 -> "U15"
        UDVCVTU16 -> "U16"
        UDVCVTU17 -> "U17"
        UDVCVTU18 -> "U18"
        UDVCVTU19 -> "U19"
        UDVCVTU2 -> "U2"
        UDVCVTU20 -> "U20"
        UDVCVTU3 -> "U3"
        UDVCVTU4 -> "U4"
        UDVCVTU5 -> "U5"
        UDVCVTU6 -> "U6"
        UDVCVTU7 -> "U7"
        UDVCVTU8 -> "U8"
        UDVCVTU9 -> "U9"

-- | Levels of availability for a user role permission.
data UserRolePermissionAvailability
    = URPAAccountAlways
      -- ^ @ACCOUNT_ALWAYS@
    | URPAAccountByDefault
      -- ^ @ACCOUNT_BY_DEFAULT@
    | URPANotAvailableByDefault
      -- ^ @NOT_AVAILABLE_BY_DEFAULT@
    | URPASubaccountAndAccountAlways
      -- ^ @SUBACCOUNT_AND_ACCOUNT_ALWAYS@
    | URPASubaccountAndAccountByDefault
      -- ^ @SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserRolePermissionAvailability

instance FromText UserRolePermissionAvailability where
    fromText = \case
        "ACCOUNT_ALWAYS" -> Just URPAAccountAlways
        "ACCOUNT_BY_DEFAULT" -> Just URPAAccountByDefault
        "NOT_AVAILABLE_BY_DEFAULT" -> Just URPANotAvailableByDefault
        "SUBACCOUNT_AND_ACCOUNT_ALWAYS" -> Just URPASubaccountAndAccountAlways
        "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT" -> Just URPASubaccountAndAccountByDefault
        _ -> Nothing

instance ToText UserRolePermissionAvailability where
    toText = \case
        URPAAccountAlways -> "ACCOUNT_ALWAYS"
        URPAAccountByDefault -> "ACCOUNT_BY_DEFAULT"
        URPANotAvailableByDefault -> "NOT_AVAILABLE_BY_DEFAULT"
        URPASubaccountAndAccountAlways -> "SUBACCOUNT_AND_ACCOUNT_ALWAYS"
        URPASubaccountAndAccountByDefault -> "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT"
