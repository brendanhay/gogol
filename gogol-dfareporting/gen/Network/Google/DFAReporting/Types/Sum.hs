{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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

data AccountPermissionItemAccountProfiles
    = APIAPAccountProfileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | APIAPAccountProfileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountPermissionItemAccountProfiles

-- | Administrative level required to enable this account permission.
data AccountPermissionLevel
    = APLAdministrator
      -- ^ @ADMINISTRATOR@
    | APLUser
      -- ^ @USER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountPermissionLevel

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

-- | Payment source type of this ad slot.
data AdSlotPaymentSourceType
    = ASPSTPlanningPaymentSourceTypeAgencyPaid
      -- ^ @PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID@
    | ASPSTPlanningPaymentSourceTypePublisherPaid
      -- ^ @PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdSlotPaymentSourceType

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

-- | Status of this advertiser.
data AdvertiserStatus
    = ASApproved
      -- ^ @APPROVED@
    | ASOnHold
      -- ^ @ON_HOLD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertiserStatus

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

-- | Initial wait time type before making the asset visible. Applicable to
-- the following creative types: all RICH_MEDIA.
data CreativeAssetStartTimeType
    = CASTTAssetStartTimeTypeCustom
      -- ^ @ASSET_START_TIME_TYPE_CUSTOM@
    | CASTTAssetStartTimeTypeNone
      -- ^ @ASSET_START_TIME_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetStartTimeType

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

-- | Authoring tool for HTML5 banner creatives. This is a read-only field.
-- Applicable to the following creative types: HTML5_BANNER.
data CreativeAuthoringTool
    = CATNinja
      -- ^ @NINJA@
    | CATSwiffy
      -- ^ @SWIFFY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAuthoringTool

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

-- | Creative group number of the creative group assignment.
data CreativeGroupAssignmentCreativeGroupNumber
    = CGACGNCreativeGroupOne
      -- ^ @CREATIVE_GROUP_ONE@
    | CGACGNCreativeGroupTwo
      -- ^ @CREATIVE_GROUP_TWO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeGroupAssignmentCreativeGroupNumber

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

-- | Type of creative rotation. Can be used to specify whether to use
-- sequential or random rotation.
data CreativeRotationType
    = CRTCreativeRotationTypeRandom
      -- ^ @CREATIVE_ROTATION_TYPE_RANDOM@
    | CRTCreativeRotationTypeSequential
      -- ^ @CREATIVE_ROTATION_TYPE_SEQUENTIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeRotationType

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

data DirectorySiteItemInterstitialTagFormats
    = DSIITFIframeJavascriptInterstitial
      -- ^ @IFRAME_JAVASCRIPT_INTERSTITIAL@
    | DSIITFInternalRedirectInterstitial
      -- ^ @INTERNAL_REDIRECT_INTERSTITIAL@
    | DSIITFJavascriptInterstitial
      -- ^ @JAVASCRIPT_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteItemInterstitialTagFormats

-- | Site filter type for this event tag. If no type is specified then the
-- event tag will be applied to all sites.
data EventTagSiteFilterType
    = ETSFTBlacklist
      -- ^ @BLACKLIST@
    | ETSFTWhitelist
      -- ^ @WHITELIST@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagSiteFilterType

-- | Status of this event tag. Must be ENABLED for this event tag to fire.
-- This is a required field.
data EventTagStatus
    = ETSDisabled
      -- ^ @DISABLED@
    | ETSEnabled
      -- ^ @ENABLED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagStatus

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

-- | The output format of the report. Only available once the file is
-- available.
data FileFormat
    = FFCSV
      -- ^ @CSV@
    | FFExcel
      -- ^ @EXCEL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FileFormat

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

-- | Type of the associated floodlight activity group. This is a read-only
-- field.
data FloodlightActivityFloodlightActivityGroupType
    = FAFAGTCounter
      -- ^ @COUNTER@
    | FAFAGTSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityFloodlightActivityGroupType

-- | Type of the floodlight activity group. This is a required field that is
-- read-only after insertion.
data FloodlightActivityGroupType
    = FAGTCounter
      -- ^ @COUNTER@
    | FAGTSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupType

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

-- | Tag format type for the floodlight activity. If left blank, the tag
-- format will default to HTML.
data FloodlightActivityTagFormat
    = FATFHTML
      -- ^ @HTML@
    | FATFXhtml
      -- ^ @XHTML@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityTagFormat

-- | Day that will be counted as the first day of the week in reports. This
-- is a required field.
data FloodlightConfigurationFirstDayOfWeek
    = FCFDOWMonday
      -- ^ @MONDAY@
    | FCFDOWSunday
      -- ^ @SUNDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationFirstDayOfWeek

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

-- | Position in the browser where the window will open.
data FsCommandPositionOption
    = FCPOCentered
      -- ^ @CENTERED@
    | FCPODistanceFromTopLeftCorner
      -- ^ @DISTANCE_FROM_TOP_LEFT_CORNER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FsCommandPositionOption

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

-- | Type of this order document
data OrderDocumentType
    = ODTPlanningOrderTypeChangeOrder
      -- ^ @PLANNING_ORDER_TYPE_CHANGE_ORDER@
    | ODTPlanningOrderTypeInsertionOrder
      -- ^ @PLANNING_ORDER_TYPE_INSERTION_ORDER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderDocumentType

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

-- | Payment source for this placement. This is a required field that is
-- read-only after insertion.
data PlacementPaymentSource
    = PPSPlacementAgencyPaid
      -- ^ @PLACEMENT_AGENCY_PAID@
    | PPSPlacementPublisherPaid
      -- ^ @PLACEMENT_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementPaymentSource

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

-- | Popup window position either centered or at specific coordinate.
data PopupWindowPropertiesPositionType
    = PWPPTCenter
      -- ^ @CENTER@
    | PWPPTCoordinates
      -- ^ @COORDINATES@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PopupWindowPropertiesPositionType

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

-- | Audience gender of this project.
data ProjectAudienceGender
    = PAGPlanningAudienceGenderFemale
      -- ^ @PLANNING_AUDIENCE_GENDER_FEMALE@
    | PAGPlanningAudienceGenderMale
      -- ^ @PLANNING_AUDIENCE_GENDER_MALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProjectAudienceGender

-- | The delivery type for the recipient.
data RecipientDeliveryType
    = RDTAttachment
      -- ^ @ATTACHMENT@
    | RDTLink
      -- ^ @LINK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RecipientDeliveryType

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

-- | The type of delivery for the owner to receive, if enabled.
data ReportEmailOwnerDeliveryTypeDelivery
    = REODTDAttachment
      -- ^ @ATTACHMENT@
    | REODTDLink
      -- ^ @LINK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportEmailOwnerDeliveryTypeDelivery

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

-- | Site contact type.
data SiteContactContactType
    = SCCTSalesPerson
      -- ^ @SALES_PERSON@
    | SCCTTrafficker
      -- ^ @TRAFFICKER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SiteContactContactType

-- | An optional sort order for the dimension column.
data SortedDimensionSortOrder
    = SDSOAscending
      -- ^ @ASCENDING@
    | SDSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SortedDimensionSortOrder

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

-- | Data type for the variable. This is a required field.
data UserDefinedVariableConfigurationDataType
    = UDVCDTNumber
      -- ^ @NUMBER@
    | UDVCDTString
      -- ^ @STRING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserDefinedVariableConfigurationDataType

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
