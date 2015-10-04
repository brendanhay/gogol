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

-- | Order of sorted results, default is ASCENDING.
data DfareportingContentCategoriesListSortOrder
    = Ascending
      -- ^ @ASCENDING@
    | Descending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingContentCategoriesListSortOrder

instance FromText DfareportingContentCategoriesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText DfareportingContentCategoriesListSortOrder where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON DfareportingContentCategoriesListSortOrder where
    parseJSON = parseJSONText "DfareportingContentCategoriesListSortOrder"

instance ToJSON DfareportingContentCategoriesListSortOrder where
    toJSON = toJSONText

-- | Counting method for conversions for this floodlight activity. This is a
-- required field.
data CountingMethod
    = ItemsSoldCounting
      -- ^ @ITEMS_SOLD_COUNTING@
    | SessionCounting
      -- ^ @SESSION_COUNTING@
    | StandardCounting
      -- ^ @STANDARD_COUNTING@
    | TransactionsCounting
      -- ^ @TRANSACTIONS_COUNTING@
    | UniqueCounting
      -- ^ @UNIQUE_COUNTING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CountingMethod

instance FromText CountingMethod where
    fromText = \case
        "ITEMS_SOLD_COUNTING" -> Just ItemsSoldCounting
        "SESSION_COUNTING" -> Just SessionCounting
        "STANDARD_COUNTING" -> Just StandardCounting
        "TRANSACTIONS_COUNTING" -> Just TransactionsCounting
        "UNIQUE_COUNTING" -> Just UniqueCounting
        _ -> Nothing

instance ToText CountingMethod where
    toText = \case
        ItemsSoldCounting -> "ITEMS_SOLD_COUNTING"
        SessionCounting -> "SESSION_COUNTING"
        StandardCounting -> "STANDARD_COUNTING"
        TransactionsCounting -> "TRANSACTIONS_COUNTING"
        UniqueCounting -> "UNIQUE_COUNTING"

instance FromJSON CountingMethod where
    parseJSON = parseJSONText "CountingMethod"

instance ToJSON CountingMethod where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingFloodlightActivitiesListSortField
    = DFALSFID
      -- ^ @ID@
    | DFALSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFloodlightActivitiesListSortField

instance FromText DfareportingFloodlightActivitiesListSortField where
    fromText = \case
        "ID" -> Just DFALSFID
        "NAME" -> Just DFALSFName
        _ -> Nothing

instance ToText DfareportingFloodlightActivitiesListSortField where
    toText = \case
        DFALSFID -> "ID"
        DFALSFName -> "NAME"

instance FromJSON DfareportingFloodlightActivitiesListSortField where
    parseJSON = parseJSONText "DfareportingFloodlightActivitiesListSortField"

instance ToJSON DfareportingFloodlightActivitiesListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingCreativeGroupsListSortOrder
    = DCGLSOAscending
      -- ^ @ASCENDING@
    | DCGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCreativeGroupsListSortOrder

instance FromText DfareportingCreativeGroupsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DCGLSOAscending
        "DESCENDING" -> Just DCGLSODescending
        _ -> Nothing

instance ToText DfareportingCreativeGroupsListSortOrder where
    toText = \case
        DCGLSOAscending -> "ASCENDING"
        DCGLSODescending -> "DESCENDING"

instance FromJSON DfareportingCreativeGroupsListSortOrder where
    parseJSON = parseJSONText "DfareportingCreativeGroupsListSortOrder"

instance ToJSON DfareportingCreativeGroupsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingCampaignCreativeAssociationsListSortOrder
    = DCCALSOAscending
      -- ^ @ASCENDING@
    | DCCALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCampaignCreativeAssociationsListSortOrder

instance FromText DfareportingCampaignCreativeAssociationsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DCCALSOAscending
        "DESCENDING" -> Just DCCALSODescending
        _ -> Nothing

instance ToText DfareportingCampaignCreativeAssociationsListSortOrder where
    toText = \case
        DCCALSOAscending -> "ASCENDING"
        DCCALSODescending -> "DESCENDING"

instance FromJSON DfareportingCampaignCreativeAssociationsListSortOrder where
    parseJSON = parseJSONText "DfareportingCampaignCreativeAssociationsListSortOrder"

instance ToJSON DfareportingCampaignCreativeAssociationsListSortOrder where
    toJSON = toJSONText

-- | Select only advertisers with the specified status.
data Status
    = SApproved
      -- ^ @APPROVED@
    | SOnHold
      -- ^ @ON_HOLD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Status

instance FromText Status where
    fromText = \case
        "APPROVED" -> Just SApproved
        "ON_HOLD" -> Just SOnHold
        _ -> Nothing

instance ToText Status where
    toText = \case
        SApproved -> "APPROVED"
        SOnHold -> "ON_HOLD"

instance FromJSON Status where
    parseJSON = parseJSONText "Status"

instance ToJSON Status where
    toJSON = toJSONText

data DetectedFeaturesItem
    = ApplicationCache
      -- ^ @APPLICATION_CACHE@
    | Audio
      -- ^ @AUDIO@
    | Canvas
      -- ^ @CANVAS@
    | CanvasText
      -- ^ @CANVAS_TEXT@
    | CssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CssColumns
      -- ^ @CSS_COLUMNS@
    | CssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CssFontFace
      -- ^ @CSS_FONT_FACE@
    | CssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CssGradients
      -- ^ @CSS_GRADIENTS@
    | CssHsla
      -- ^ @CSS_HSLA@
    | CssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CssOpacity
      -- ^ @CSS_OPACITY@
    | CssReflections
      -- ^ @CSS_REFLECTIONS@
    | CssRgba
      -- ^ @CSS_RGBA@
    | CssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CssTransitions
      -- ^ @CSS_TRANSITIONS@
    | DragAndDrop
      -- ^ @DRAG_AND_DROP@
    | GeoLocation
      -- ^ @GEO_LOCATION@
    | HashChange
      -- ^ @HASH_CHANGE@
    | History
      -- ^ @HISTORY@
    | IndexedDB
      -- ^ @INDEXED_DB@
    | InlineSvg
      -- ^ @INLINE_SVG@
    | InputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | InputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | InputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | InputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | InputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | InputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | InputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | InputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | InputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | InputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | InputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | InputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | InputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | InputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | InputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | InputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | InputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | InputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | InputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | InputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | InputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | InputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | InputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | LocalStorage
      -- ^ @LOCAL_STORAGE@
    | PostMessage
      -- ^ @POST_MESSAGE@
    | SessionStorage
      -- ^ @SESSION_STORAGE@
    | Smil
      -- ^ @SMIL@
    | SvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | SvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | SvgFilters
      -- ^ @SVG_FILTERS@
    | SvgHref
      -- ^ @SVG_HREF@
    | Touch
      -- ^ @TOUCH@
    | Video
      -- ^ @VIDEO@
    | Webgl
      -- ^ @WEBGL@
    | WebSockets
      -- ^ @WEB_SOCKETS@
    | WebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | WebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DetectedFeaturesItem

instance FromText DetectedFeaturesItem where
    fromText = \case
        "APPLICATION_CACHE" -> Just ApplicationCache
        "AUDIO" -> Just Audio
        "CANVAS" -> Just Canvas
        "CANVAS_TEXT" -> Just CanvasText
        "CSS_ANIMATIONS" -> Just CssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Just CssBOrderImage
        "CSS_BORDER_RADIUS" -> Just CssBOrderRadius
        "CSS_BOX_SHADOW" -> Just CssBoxShadow
        "CSS_COLUMNS" -> Just CssColumns
        "CSS_FLEX_BOX" -> Just CssFlexBox
        "CSS_FONT_FACE" -> Just CssFontFace
        "CSS_GENERATED_CONTENT" -> Just CssGeneratedContent
        "CSS_GRADIENTS" -> Just CssGradients
        "CSS_HSLA" -> Just CssHsla
        "CSS_MULTIPLE_BGS" -> Just CssMultipleBgs
        "CSS_OPACITY" -> Just CssOpacity
        "CSS_REFLECTIONS" -> Just CssReflections
        "CSS_RGBA" -> Just CssRgba
        "CSS_TEXT_SHADOW" -> Just CssTextShadow
        "CSS_TRANSFORMS" -> Just CssTransforms
        "CSS_TRANSFORMS3D" -> Just CssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CssTransitions
        "DRAG_AND_DROP" -> Just DragAndDrop
        "GEO_LOCATION" -> Just GeoLocation
        "HASH_CHANGE" -> Just HashChange
        "HISTORY" -> Just History
        "INDEXED_DB" -> Just IndexedDB
        "INLINE_SVG" -> Just InlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just InputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just InputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just InputAttrList
        "INPUT_ATTR_MAX" -> Just InputAttrMax
        "INPUT_ATTR_MIN" -> Just InputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just InputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just InputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just InputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just InputAttrRequired
        "INPUT_ATTR_STEP" -> Just InputAttrStep
        "INPUT_TYPE_COLOR" -> Just InputTypeColor
        "INPUT_TYPE_DATE" -> Just InputTypeDate
        "INPUT_TYPE_DATETIME" -> Just InputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just InputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just InputTypeEmail
        "INPUT_TYPE_MONTH" -> Just InputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just InputTypeNumber
        "INPUT_TYPE_RANGE" -> Just InputTypeRange
        "INPUT_TYPE_SEARCH" -> Just InputTypeSearch
        "INPUT_TYPE_TEL" -> Just InputTypeTel
        "INPUT_TYPE_TIME" -> Just InputTypeTime
        "INPUT_TYPE_URL" -> Just InputTypeURL
        "INPUT_TYPE_WEEK" -> Just InputTypeWeek
        "LOCAL_STORAGE" -> Just LocalStorage
        "POST_MESSAGE" -> Just PostMessage
        "SESSION_STORAGE" -> Just SessionStorage
        "SMIL" -> Just Smil
        "SVG_CLIP_PATHS" -> Just SvgClipPaths
        "SVG_FE_IMAGE" -> Just SvgFeImage
        "SVG_FILTERS" -> Just SvgFilters
        "SVG_HREF" -> Just SvgHref
        "TOUCH" -> Just Touch
        "VIDEO" -> Just Video
        "WEBGL" -> Just Webgl
        "WEB_SOCKETS" -> Just WebSockets
        "WEB_SQL_DATABASE" -> Just WebSQLDatabase
        "WEB_WORKERS" -> Just WebWorkers
        _ -> Nothing

instance ToText DetectedFeaturesItem where
    toText = \case
        ApplicationCache -> "APPLICATION_CACHE"
        Audio -> "AUDIO"
        Canvas -> "CANVAS"
        CanvasText -> "CANVAS_TEXT"
        CssAnimations -> "CSS_ANIMATIONS"
        CssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CssBOrderImage -> "CSS_BORDER_IMAGE"
        CssBOrderRadius -> "CSS_BORDER_RADIUS"
        CssBoxShadow -> "CSS_BOX_SHADOW"
        CssColumns -> "CSS_COLUMNS"
        CssFlexBox -> "CSS_FLEX_BOX"
        CssFontFace -> "CSS_FONT_FACE"
        CssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CssGradients -> "CSS_GRADIENTS"
        CssHsla -> "CSS_HSLA"
        CssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CssOpacity -> "CSS_OPACITY"
        CssReflections -> "CSS_REFLECTIONS"
        CssRgba -> "CSS_RGBA"
        CssTextShadow -> "CSS_TEXT_SHADOW"
        CssTransforms -> "CSS_TRANSFORMS"
        CssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CssTransitions -> "CSS_TRANSITIONS"
        DragAndDrop -> "DRAG_AND_DROP"
        GeoLocation -> "GEO_LOCATION"
        HashChange -> "HASH_CHANGE"
        History -> "HISTORY"
        IndexedDB -> "INDEXED_DB"
        InlineSvg -> "INLINE_SVG"
        InputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        InputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        InputAttrList -> "INPUT_ATTR_LIST"
        InputAttrMax -> "INPUT_ATTR_MAX"
        InputAttrMin -> "INPUT_ATTR_MIN"
        InputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        InputAttrPattern -> "INPUT_ATTR_PATTERN"
        InputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        InputAttrRequired -> "INPUT_ATTR_REQUIRED"
        InputAttrStep -> "INPUT_ATTR_STEP"
        InputTypeColor -> "INPUT_TYPE_COLOR"
        InputTypeDate -> "INPUT_TYPE_DATE"
        InputTypeDatetime -> "INPUT_TYPE_DATETIME"
        InputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        InputTypeEmail -> "INPUT_TYPE_EMAIL"
        InputTypeMonth -> "INPUT_TYPE_MONTH"
        InputTypeNumber -> "INPUT_TYPE_NUMBER"
        InputTypeRange -> "INPUT_TYPE_RANGE"
        InputTypeSearch -> "INPUT_TYPE_SEARCH"
        InputTypeTel -> "INPUT_TYPE_TEL"
        InputTypeTime -> "INPUT_TYPE_TIME"
        InputTypeURL -> "INPUT_TYPE_URL"
        InputTypeWeek -> "INPUT_TYPE_WEEK"
        LocalStorage -> "LOCAL_STORAGE"
        PostMessage -> "POST_MESSAGE"
        SessionStorage -> "SESSION_STORAGE"
        Smil -> "SMIL"
        SvgClipPaths -> "SVG_CLIP_PATHS"
        SvgFeImage -> "SVG_FE_IMAGE"
        SvgFilters -> "SVG_FILTERS"
        SvgHref -> "SVG_HREF"
        Touch -> "TOUCH"
        Video -> "VIDEO"
        Webgl -> "WEBGL"
        WebSockets -> "WEB_SOCKETS"
        WebSQLDatabase -> "WEB_SQL_DATABASE"
        WebWorkers -> "WEB_WORKERS"

instance FromJSON DetectedFeaturesItem where
    parseJSON = parseJSONText "DetectedFeaturesItem"

instance ToJSON DetectedFeaturesItem where
    toJSON = toJSONText

-- | Placement compatibility. WEB and WEB_INTERSTITIAL refer to rendering
-- either on desktop or on mobile devices for regular or interstitial ads,
-- respectively. APP and APP_INTERSTITIAL are for rendering in mobile
-- apps.IN_STREAM_VIDEO refers to rendering in in-stream video ads
-- developed with the VAST standard. This field is required on insertion.
data PlacementCompatibility
    = App
      -- ^ @APP@
    | AppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | InStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | Web
      -- ^ @WEB@
    | WebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementCompatibility

instance FromText PlacementCompatibility where
    fromText = \case
        "APP" -> Just App
        "APP_INTERSTITIAL" -> Just AppInterstitial
        "IN_STREAM_VIDEO" -> Just InStreamVideo
        "WEB" -> Just Web
        "WEB_INTERSTITIAL" -> Just WebInterstitial
        _ -> Nothing

instance ToText PlacementCompatibility where
    toText = \case
        App -> "APP"
        AppInterstitial -> "APP_INTERSTITIAL"
        InStreamVideo -> "IN_STREAM_VIDEO"
        Web -> "WEB"
        WebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON PlacementCompatibility where
    parseJSON = parseJSONText "PlacementCompatibility"

instance ToJSON PlacementCompatibility where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingAccountUserProfilesListSortField
    = DAUPLSFID
      -- ^ @ID@
    | DAUPLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAccountUserProfilesListSortField

instance FromText DfareportingAccountUserProfilesListSortField where
    fromText = \case
        "ID" -> Just DAUPLSFID
        "NAME" -> Just DAUPLSFName
        _ -> Nothing

instance ToText DfareportingAccountUserProfilesListSortField where
    toText = \case
        DAUPLSFID -> "ID"
        DAUPLSFName -> "NAME"

instance FromJSON DfareportingAccountUserProfilesListSortField where
    parseJSON = parseJSONText "DfareportingAccountUserProfilesListSortField"

instance ToJSON DfareportingAccountUserProfilesListSortField where
    toJSON = toJSONText

-- | Creative group number of the creative group assignment.
data CreativeGroupNumber
    = CreativeGroupOne
      -- ^ @CREATIVE_GROUP_ONE@
    | CreativeGroupTwo
      -- ^ @CREATIVE_GROUP_TWO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeGroupNumber

instance FromText CreativeGroupNumber where
    fromText = \case
        "CREATIVE_GROUP_ONE" -> Just CreativeGroupOne
        "CREATIVE_GROUP_TWO" -> Just CreativeGroupTwo
        _ -> Nothing

instance ToText CreativeGroupNumber where
    toText = \case
        CreativeGroupOne -> "CREATIVE_GROUP_ONE"
        CreativeGroupTwo -> "CREATIVE_GROUP_TWO"

instance FromJSON CreativeGroupNumber where
    parseJSON = parseJSONText "CreativeGroupNumber"

instance ToJSON CreativeGroupNumber where
    toJSON = toJSONText

-- | Payment source type of this ad slot.
data PaymentSourceType
    = PlanningPaymentSourceTypeAgencyPaid
      -- ^ @PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID@
    | PlanningPaymentSourceTypePublisherPaid
      -- ^ @PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PaymentSourceType

instance FromText PaymentSourceType where
    fromText = \case
        "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID" -> Just PlanningPaymentSourceTypeAgencyPaid
        "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID" -> Just PlanningPaymentSourceTypePublisherPaid
        _ -> Nothing

instance ToText PaymentSourceType where
    toText = \case
        PlanningPaymentSourceTypeAgencyPaid -> "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID"
        PlanningPaymentSourceTypePublisherPaid -> "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID"

instance FromJSON PaymentSourceType where
    parseJSON = parseJSONText "PaymentSourceType"

instance ToJSON PaymentSourceType where
    toJSON = toJSONText

-- | Ad slot compatibility. WEB and WEB_INTERSTITIAL refer to rendering
-- either on desktop or on mobile devices for regular or interstitial ads
-- respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps.
-- IN_STREAM_VIDEO refers to rendering in in-stream video ads developed
-- with the VAST standard.
data AdSlotCompatibility
    = PlanningRenderingEnvironmentTypeApp
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_APP@
    | PlanningRenderingEnvironmentTypeAppInterstitial
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_APP_INTERSTITIAL@
    | PlanningRenderingEnvironmentTypeInStreamVideo
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_IN_STREAM_VIDEO@
    | PlanningRenderingEnvironmentTypeWeb
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB@
    | PlanningRenderingEnvironmentTypeWebInterstitial
      -- ^ @PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdSlotCompatibility

instance FromText AdSlotCompatibility where
    fromText = \case
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_APP" -> Just PlanningRenderingEnvironmentTypeApp
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_APP_INTERSTITIAL" -> Just PlanningRenderingEnvironmentTypeAppInterstitial
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_IN_STREAM_VIDEO" -> Just PlanningRenderingEnvironmentTypeInStreamVideo
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB" -> Just PlanningRenderingEnvironmentTypeWeb
        "PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB_INTERSTITIAL" -> Just PlanningRenderingEnvironmentTypeWebInterstitial
        _ -> Nothing

instance ToText AdSlotCompatibility where
    toText = \case
        PlanningRenderingEnvironmentTypeApp -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_APP"
        PlanningRenderingEnvironmentTypeAppInterstitial -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_APP_INTERSTITIAL"
        PlanningRenderingEnvironmentTypeInStreamVideo -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_IN_STREAM_VIDEO"
        PlanningRenderingEnvironmentTypeWeb -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB"
        PlanningRenderingEnvironmentTypeWebInterstitial -> "PLANNING_RENDERING_ENVIRONMENT_TYPE_WEB_INTERSTITIAL"

instance FromJSON AdSlotCompatibility where
    parseJSON = parseJSONText "AdSlotCompatibility"

instance ToJSON AdSlotCompatibility where
    toJSON = toJSONText

-- | Window mode options for flash assets. Applicable to the following
-- creative types: FLASH_INPAGE, RICH_MEDIA_EXPANDING,
-- RICH_MEDIA_IM_EXPAND, RICH_MEDIA_INPAGE, and RICH_MEDIA_INPAGE_FLOATING.
data WindowMode
    = Opaque
      -- ^ @OPAQUE@
    | Transparent
      -- ^ @TRANSPARENT@
    | Window
      -- ^ @WINDOW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WindowMode

instance FromText WindowMode where
    fromText = \case
        "OPAQUE" -> Just Opaque
        "TRANSPARENT" -> Just Transparent
        "WINDOW" -> Just Window
        _ -> Nothing

instance ToText WindowMode where
    toText = \case
        Opaque -> "OPAQUE"
        Transparent -> "TRANSPARENT"
        Window -> "WINDOW"

instance FromJSON WindowMode where
    parseJSON = parseJSONText "WindowMode"

instance ToJSON WindowMode where
    toJSON = toJSONText

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

instance FromJSON CreativeAssetRole where
    parseJSON = parseJSONText "CreativeAssetRole"

instance ToJSON CreativeAssetRole where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingCreativesListSortField
    = DCLSFID
      -- ^ @ID@
    | DCLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCreativesListSortField

instance FromText DfareportingCreativesListSortField where
    fromText = \case
        "ID" -> Just DCLSFID
        "NAME" -> Just DCLSFName
        _ -> Nothing

instance ToText DfareportingCreativesListSortField where
    toText = \case
        DCLSFID -> "ID"
        DCLSFName -> "NAME"

instance FromJSON DfareportingCreativesListSortField where
    parseJSON = parseJSONText "DfareportingCreativesListSortField"

instance ToJSON DfareportingCreativesListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingPlacementStrategiesListSortOrder
    = DPSLSOAscending
      -- ^ @ASCENDING@
    | DPSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementStrategiesListSortOrder

instance FromText DfareportingPlacementStrategiesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DPSLSOAscending
        "DESCENDING" -> Just DPSLSODescending
        _ -> Nothing

instance ToText DfareportingPlacementStrategiesListSortOrder where
    toText = \case
        DPSLSOAscending -> "ASCENDING"
        DPSLSODescending -> "DESCENDING"

instance FromJSON DfareportingPlacementStrategiesListSortOrder where
    parseJSON = parseJSONText "DfareportingPlacementStrategiesListSortOrder"

instance ToJSON DfareportingPlacementStrategiesListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingEventTagsListSortField
    = DETLSFID
      -- ^ @ID@
    | DETLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingEventTagsListSortField

instance FromText DfareportingEventTagsListSortField where
    fromText = \case
        "ID" -> Just DETLSFID
        "NAME" -> Just DETLSFName
        _ -> Nothing

instance ToText DfareportingEventTagsListSortField where
    toText = \case
        DETLSFID -> "ID"
        DETLSFName -> "NAME"

instance FromJSON DfareportingEventTagsListSortField where
    parseJSON = parseJSONText "DfareportingEventTagsListSortField"

instance ToJSON DfareportingEventTagsListSortField where
    toJSON = toJSONText

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

instance FromJSON FileStatus where
    parseJSON = parseJSONText "FileStatus"

instance ToJSON FileStatus where
    toJSON = toJSONText

-- | Option specifying how keywords are embedded in ad tags. This setting can
-- be used to specify whether keyword placeholders are inserted in
-- placement tags for this site. Publishers can then add keywords to those
-- placeholders.
data KeywordOption
    = GenerateSeparateTagForEachKeyword
      -- ^ @GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD@
    | Ignore
      -- ^ @IGNORE@
    | PlaceholderWithListOfKeywords
      -- ^ @PLACEHOLDER_WITH_LIST_OF_KEYWORDS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable KeywordOption

instance FromText KeywordOption where
    fromText = \case
        "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD" -> Just GenerateSeparateTagForEachKeyword
        "IGNORE" -> Just Ignore
        "PLACEHOLDER_WITH_LIST_OF_KEYWORDS" -> Just PlaceholderWithListOfKeywords
        _ -> Nothing

instance ToText KeywordOption where
    toText = \case
        GenerateSeparateTagForEachKeyword -> "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD"
        Ignore -> "IGNORE"
        PlaceholderWithListOfKeywords -> "PLACEHOLDER_WITH_LIST_OF_KEYWORDS"

instance FromJSON KeywordOption where
    parseJSON = parseJSONText "KeywordOption"

instance ToJSON KeywordOption where
    toJSON = toJSONText

-- | The field by which to sort the list.
data DfareportingFilesListSortField
    = DFLSFID
      -- ^ @ID@
      -- Sort by file ID.
    | DFLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastmodifiedAt\' field.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFilesListSortField

instance FromText DfareportingFilesListSortField where
    fromText = \case
        "ID" -> Just DFLSFID
        "LAST_MODIFIED_TIME" -> Just DFLSFLastModifiedTime
        _ -> Nothing

instance ToText DfareportingFilesListSortField where
    toText = \case
        DFLSFID -> "ID"
        DFLSFLastModifiedTime -> "LAST_MODIFIED_TIME"

instance FromJSON DfareportingFilesListSortField where
    parseJSON = parseJSONText "DfareportingFilesListSortField"

instance ToJSON DfareportingFilesListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingTargetableRemarketingListsListSortOrder
    = DTRLLSOAscending
      -- ^ @ASCENDING@
    | DTRLLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingTargetableRemarketingListsListSortOrder

instance FromText DfareportingTargetableRemarketingListsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DTRLLSOAscending
        "DESCENDING" -> Just DTRLLSODescending
        _ -> Nothing

instance ToText DfareportingTargetableRemarketingListsListSortOrder where
    toText = \case
        DTRLLSOAscending -> "ASCENDING"
        DTRLLSODescending -> "DESCENDING"

instance FromJSON DfareportingTargetableRemarketingListsListSortOrder where
    parseJSON = parseJSONText "DfareportingTargetableRemarketingListsListSortOrder"

instance ToJSON DfareportingTargetableRemarketingListsListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingPlacementGroupsListSortField
    = DPGLSFID
      -- ^ @ID@
    | DPGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementGroupsListSortField

instance FromText DfareportingPlacementGroupsListSortField where
    fromText = \case
        "ID" -> Just DPGLSFID
        "NAME" -> Just DPGLSFName
        _ -> Nothing

instance ToText DfareportingPlacementGroupsListSortField where
    toText = \case
        DPGLSFID -> "ID"
        DPGLSFName -> "NAME"

instance FromJSON DfareportingPlacementGroupsListSortField where
    parseJSON = parseJSONText "DfareportingPlacementGroupsListSortField"

instance ToJSON DfareportingPlacementGroupsListSortField where
    toJSON = toJSONText

-- | Position in the browser where the window will open.
data PositionOption
    = Centered
      -- ^ @CENTERED@
    | DistanceFromTopLeftCorner
      -- ^ @DISTANCE_FROM_TOP_LEFT_CORNER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PositionOption

instance FromText PositionOption where
    fromText = \case
        "CENTERED" -> Just Centered
        "DISTANCE_FROM_TOP_LEFT_CORNER" -> Just DistanceFromTopLeftCorner
        _ -> Nothing

instance ToText PositionOption where
    toText = \case
        Centered -> "CENTERED"
        DistanceFromTopLeftCorner -> "DISTANCE_FROM_TOP_LEFT_CORNER"

instance FromJSON PositionOption where
    parseJSON = parseJSONText "PositionOption"

instance ToJSON PositionOption where
    toJSON = toJSONText

-- | Type of the event. This is a read-only field.
data AdvertiserCustomEventType
    = AdvertiserEventCounter
      -- ^ @ADVERTISER_EVENT_COUNTER@
    | AdvertiserEventExit
      -- ^ @ADVERTISER_EVENT_EXIT@
    | AdvertiserEventTimer
      -- ^ @ADVERTISER_EVENT_TIMER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertiserCustomEventType

instance FromText AdvertiserCustomEventType where
    fromText = \case
        "ADVERTISER_EVENT_COUNTER" -> Just AdvertiserEventCounter
        "ADVERTISER_EVENT_EXIT" -> Just AdvertiserEventExit
        "ADVERTISER_EVENT_TIMER" -> Just AdvertiserEventTimer
        _ -> Nothing

instance ToText AdvertiserCustomEventType where
    toText = \case
        AdvertiserEventCounter -> "ADVERTISER_EVENT_COUNTER"
        AdvertiserEventExit -> "ADVERTISER_EVENT_EXIT"
        AdvertiserEventTimer -> "ADVERTISER_EVENT_TIMER"

instance FromJSON AdvertiserCustomEventType where
    parseJSON = parseJSONText "AdvertiserCustomEventType"

instance ToJSON AdvertiserCustomEventType where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingDirectorySiteContactsListSortOrder
    = DDSCLSOAscending
      -- ^ @ASCENDING@
    | DDSCLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingDirectorySiteContactsListSortOrder

instance FromText DfareportingDirectorySiteContactsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DDSCLSOAscending
        "DESCENDING" -> Just DDSCLSODescending
        _ -> Nothing

instance ToText DfareportingDirectorySiteContactsListSortOrder where
    toText = \case
        DDSCLSOAscending -> "ASCENDING"
        DDSCLSODescending -> "DESCENDING"

instance FromJSON DfareportingDirectorySiteContactsListSortOrder where
    parseJSON = parseJSONText "DfareportingDirectorySiteContactsListSortOrder"

instance ToJSON DfareportingDirectorySiteContactsListSortOrder where
    toJSON = toJSONText

-- | Strategy for calculating weights. Used with
-- CREATIVE_ROTATION_TYPE_RANDOM.
data WeightCalculationStrategy
    = WeightStrategyCustom
      -- ^ @WEIGHT_STRATEGY_CUSTOM@
    | WeightStrategyEqual
      -- ^ @WEIGHT_STRATEGY_EQUAL@
    | WeightStrategyHighestCtr
      -- ^ @WEIGHT_STRATEGY_HIGHEST_CTR@
    | WeightStrategyOptimized
      -- ^ @WEIGHT_STRATEGY_OPTIMIZED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WeightCalculationStrategy

instance FromText WeightCalculationStrategy where
    fromText = \case
        "WEIGHT_STRATEGY_CUSTOM" -> Just WeightStrategyCustom
        "WEIGHT_STRATEGY_EQUAL" -> Just WeightStrategyEqual
        "WEIGHT_STRATEGY_HIGHEST_CTR" -> Just WeightStrategyHighestCtr
        "WEIGHT_STRATEGY_OPTIMIZED" -> Just WeightStrategyOptimized
        _ -> Nothing

instance ToText WeightCalculationStrategy where
    toText = \case
        WeightStrategyCustom -> "WEIGHT_STRATEGY_CUSTOM"
        WeightStrategyEqual -> "WEIGHT_STRATEGY_EQUAL"
        WeightStrategyHighestCtr -> "WEIGHT_STRATEGY_HIGHEST_CTR"
        WeightStrategyOptimized -> "WEIGHT_STRATEGY_OPTIMIZED"

instance FromJSON WeightCalculationStrategy where
    parseJSON = parseJSONText "WeightCalculationStrategy"

instance ToJSON WeightCalculationStrategy where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingCreativeFieldValuesListSortOrder
    = DCFVLSOAscending
      -- ^ @ASCENDING@
    | DCFVLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCreativeFieldValuesListSortOrder

instance FromText DfareportingCreativeFieldValuesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DCFVLSOAscending
        "DESCENDING" -> Just DCFVLSODescending
        _ -> Nothing

instance ToText DfareportingCreativeFieldValuesListSortOrder where
    toText = \case
        DCFVLSOAscending -> "ASCENDING"
        DCFVLSODescending -> "DESCENDING"

instance FromJSON DfareportingCreativeFieldValuesListSortOrder where
    parseJSON = parseJSONText "DfareportingCreativeFieldValuesListSortOrder"

instance ToJSON DfareportingCreativeFieldValuesListSortOrder where
    toJSON = toJSONText

data CreativeAssetMetadataDetectedFeaturesItem
    = CAMDFIApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CAMDFIAudio
      -- ^ @AUDIO@
    | CAMDFICanvas
      -- ^ @CANVAS@
    | CAMDFICanvasText
      -- ^ @CANVAS_TEXT@
    | CAMDFICssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CAMDFICssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CAMDFICssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CAMDFICssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CAMDFICssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CAMDFICssColumns
      -- ^ @CSS_COLUMNS@
    | CAMDFICssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CAMDFICssFontFace
      -- ^ @CSS_FONT_FACE@
    | CAMDFICssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CAMDFICssGradients
      -- ^ @CSS_GRADIENTS@
    | CAMDFICssHsla
      -- ^ @CSS_HSLA@
    | CAMDFICssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CAMDFICssOpacity
      -- ^ @CSS_OPACITY@
    | CAMDFICssReflections
      -- ^ @CSS_REFLECTIONS@
    | CAMDFICssRgba
      -- ^ @CSS_RGBA@
    | CAMDFICssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CAMDFICssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CAMDFICssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CAMDFICssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CAMDFIDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CAMDFIGeoLocation
      -- ^ @GEO_LOCATION@
    | CAMDFIHashChange
      -- ^ @HASH_CHANGE@
    | CAMDFIHistory
      -- ^ @HISTORY@
    | CAMDFIIndexedDB
      -- ^ @INDEXED_DB@
    | CAMDFIInlineSvg
      -- ^ @INLINE_SVG@
    | CAMDFIInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CAMDFIInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CAMDFIInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CAMDFIInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CAMDFIInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CAMDFIInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CAMDFIInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CAMDFIInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CAMDFIInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CAMDFIInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CAMDFIInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CAMDFIInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CAMDFIInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CAMDFIInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CAMDFIInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CAMDFIInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CAMDFIInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CAMDFIInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CAMDFIInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CAMDFIInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CAMDFIInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CAMDFIInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CAMDFIInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CAMDFILocalStorage
      -- ^ @LOCAL_STORAGE@
    | CAMDFIPostMessage
      -- ^ @POST_MESSAGE@
    | CAMDFISessionStorage
      -- ^ @SESSION_STORAGE@
    | CAMDFISmil
      -- ^ @SMIL@
    | CAMDFISvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CAMDFISvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | CAMDFISvgFilters
      -- ^ @SVG_FILTERS@
    | CAMDFISvgHref
      -- ^ @SVG_HREF@
    | CAMDFITouch
      -- ^ @TOUCH@
    | CAMDFIVideo
      -- ^ @VIDEO@
    | CAMDFIWebgl
      -- ^ @WEBGL@
    | CAMDFIWebSockets
      -- ^ @WEB_SOCKETS@
    | CAMDFIWebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CAMDFIWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetMetadataDetectedFeaturesItem

instance FromText CreativeAssetMetadataDetectedFeaturesItem where
    fromText = \case
        "APPLICATION_CACHE" -> Just CAMDFIApplicationCache
        "AUDIO" -> Just CAMDFIAudio
        "CANVAS" -> Just CAMDFICanvas
        "CANVAS_TEXT" -> Just CAMDFICanvasText
        "CSS_ANIMATIONS" -> Just CAMDFICssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CAMDFICssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Just CAMDFICssBOrderImage
        "CSS_BORDER_RADIUS" -> Just CAMDFICssBOrderRadius
        "CSS_BOX_SHADOW" -> Just CAMDFICssBoxShadow
        "CSS_COLUMNS" -> Just CAMDFICssColumns
        "CSS_FLEX_BOX" -> Just CAMDFICssFlexBox
        "CSS_FONT_FACE" -> Just CAMDFICssFontFace
        "CSS_GENERATED_CONTENT" -> Just CAMDFICssGeneratedContent
        "CSS_GRADIENTS" -> Just CAMDFICssGradients
        "CSS_HSLA" -> Just CAMDFICssHsla
        "CSS_MULTIPLE_BGS" -> Just CAMDFICssMultipleBgs
        "CSS_OPACITY" -> Just CAMDFICssOpacity
        "CSS_REFLECTIONS" -> Just CAMDFICssReflections
        "CSS_RGBA" -> Just CAMDFICssRgba
        "CSS_TEXT_SHADOW" -> Just CAMDFICssTextShadow
        "CSS_TRANSFORMS" -> Just CAMDFICssTransforms
        "CSS_TRANSFORMS3D" -> Just CAMDFICssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CAMDFICssTransitions
        "DRAG_AND_DROP" -> Just CAMDFIDragAndDrop
        "GEO_LOCATION" -> Just CAMDFIGeoLocation
        "HASH_CHANGE" -> Just CAMDFIHashChange
        "HISTORY" -> Just CAMDFIHistory
        "INDEXED_DB" -> Just CAMDFIIndexedDB
        "INLINE_SVG" -> Just CAMDFIInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just CAMDFIInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just CAMDFIInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just CAMDFIInputAttrList
        "INPUT_ATTR_MAX" -> Just CAMDFIInputAttrMax
        "INPUT_ATTR_MIN" -> Just CAMDFIInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just CAMDFIInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just CAMDFIInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just CAMDFIInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just CAMDFIInputAttrRequired
        "INPUT_ATTR_STEP" -> Just CAMDFIInputAttrStep
        "INPUT_TYPE_COLOR" -> Just CAMDFIInputTypeColor
        "INPUT_TYPE_DATE" -> Just CAMDFIInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just CAMDFIInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just CAMDFIInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just CAMDFIInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just CAMDFIInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just CAMDFIInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just CAMDFIInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just CAMDFIInputTypeSearch
        "INPUT_TYPE_TEL" -> Just CAMDFIInputTypeTel
        "INPUT_TYPE_TIME" -> Just CAMDFIInputTypeTime
        "INPUT_TYPE_URL" -> Just CAMDFIInputTypeURL
        "INPUT_TYPE_WEEK" -> Just CAMDFIInputTypeWeek
        "LOCAL_STORAGE" -> Just CAMDFILocalStorage
        "POST_MESSAGE" -> Just CAMDFIPostMessage
        "SESSION_STORAGE" -> Just CAMDFISessionStorage
        "SMIL" -> Just CAMDFISmil
        "SVG_CLIP_PATHS" -> Just CAMDFISvgClipPaths
        "SVG_FE_IMAGE" -> Just CAMDFISvgFeImage
        "SVG_FILTERS" -> Just CAMDFISvgFilters
        "SVG_HREF" -> Just CAMDFISvgHref
        "TOUCH" -> Just CAMDFITouch
        "VIDEO" -> Just CAMDFIVideo
        "WEBGL" -> Just CAMDFIWebgl
        "WEB_SOCKETS" -> Just CAMDFIWebSockets
        "WEB_SQL_DATABASE" -> Just CAMDFIWebSQLDatabase
        "WEB_WORKERS" -> Just CAMDFIWebWorkers
        _ -> Nothing

instance ToText CreativeAssetMetadataDetectedFeaturesItem where
    toText = \case
        CAMDFIApplicationCache -> "APPLICATION_CACHE"
        CAMDFIAudio -> "AUDIO"
        CAMDFICanvas -> "CANVAS"
        CAMDFICanvasText -> "CANVAS_TEXT"
        CAMDFICssAnimations -> "CSS_ANIMATIONS"
        CAMDFICssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CAMDFICssBOrderImage -> "CSS_BORDER_IMAGE"
        CAMDFICssBOrderRadius -> "CSS_BORDER_RADIUS"
        CAMDFICssBoxShadow -> "CSS_BOX_SHADOW"
        CAMDFICssColumns -> "CSS_COLUMNS"
        CAMDFICssFlexBox -> "CSS_FLEX_BOX"
        CAMDFICssFontFace -> "CSS_FONT_FACE"
        CAMDFICssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CAMDFICssGradients -> "CSS_GRADIENTS"
        CAMDFICssHsla -> "CSS_HSLA"
        CAMDFICssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CAMDFICssOpacity -> "CSS_OPACITY"
        CAMDFICssReflections -> "CSS_REFLECTIONS"
        CAMDFICssRgba -> "CSS_RGBA"
        CAMDFICssTextShadow -> "CSS_TEXT_SHADOW"
        CAMDFICssTransforms -> "CSS_TRANSFORMS"
        CAMDFICssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CAMDFICssTransitions -> "CSS_TRANSITIONS"
        CAMDFIDragAndDrop -> "DRAG_AND_DROP"
        CAMDFIGeoLocation -> "GEO_LOCATION"
        CAMDFIHashChange -> "HASH_CHANGE"
        CAMDFIHistory -> "HISTORY"
        CAMDFIIndexedDB -> "INDEXED_DB"
        CAMDFIInlineSvg -> "INLINE_SVG"
        CAMDFIInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CAMDFIInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CAMDFIInputAttrList -> "INPUT_ATTR_LIST"
        CAMDFIInputAttrMax -> "INPUT_ATTR_MAX"
        CAMDFIInputAttrMin -> "INPUT_ATTR_MIN"
        CAMDFIInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CAMDFIInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CAMDFIInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CAMDFIInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CAMDFIInputAttrStep -> "INPUT_ATTR_STEP"
        CAMDFIInputTypeColor -> "INPUT_TYPE_COLOR"
        CAMDFIInputTypeDate -> "INPUT_TYPE_DATE"
        CAMDFIInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CAMDFIInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CAMDFIInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CAMDFIInputTypeMonth -> "INPUT_TYPE_MONTH"
        CAMDFIInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CAMDFIInputTypeRange -> "INPUT_TYPE_RANGE"
        CAMDFIInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CAMDFIInputTypeTel -> "INPUT_TYPE_TEL"
        CAMDFIInputTypeTime -> "INPUT_TYPE_TIME"
        CAMDFIInputTypeURL -> "INPUT_TYPE_URL"
        CAMDFIInputTypeWeek -> "INPUT_TYPE_WEEK"
        CAMDFILocalStorage -> "LOCAL_STORAGE"
        CAMDFIPostMessage -> "POST_MESSAGE"
        CAMDFISessionStorage -> "SESSION_STORAGE"
        CAMDFISmil -> "SMIL"
        CAMDFISvgClipPaths -> "SVG_CLIP_PATHS"
        CAMDFISvgFeImage -> "SVG_FE_IMAGE"
        CAMDFISvgFilters -> "SVG_FILTERS"
        CAMDFISvgHref -> "SVG_HREF"
        CAMDFITouch -> "TOUCH"
        CAMDFIVideo -> "VIDEO"
        CAMDFIWebgl -> "WEBGL"
        CAMDFIWebSockets -> "WEB_SOCKETS"
        CAMDFIWebSQLDatabase -> "WEB_SQL_DATABASE"
        CAMDFIWebWorkers -> "WEB_WORKERS"

instance FromJSON CreativeAssetMetadataDetectedFeaturesItem where
    parseJSON = parseJSONText "CreativeAssetMetadataDetectedFeaturesItem"

instance ToJSON CreativeAssetMetadataDetectedFeaturesItem where
    toJSON = toJSONText

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

instance FromJSON EventTagStatus where
    parseJSON = parseJSONText "EventTagStatus"

instance ToJSON EventTagStatus where
    toJSON = toJSONText

-- | Serving priority of an ad, with respect to other ads. The lower the
-- priority number, the greater the priority with which it is served.
data Priority
    = AdPriority01
      -- ^ @AD_PRIORITY_01@
    | AdPriority02
      -- ^ @AD_PRIORITY_02@
    | AdPriority03
      -- ^ @AD_PRIORITY_03@
    | AdPriority04
      -- ^ @AD_PRIORITY_04@
    | AdPriority05
      -- ^ @AD_PRIORITY_05@
    | AdPriority06
      -- ^ @AD_PRIORITY_06@
    | AdPriority07
      -- ^ @AD_PRIORITY_07@
    | AdPriority08
      -- ^ @AD_PRIORITY_08@
    | AdPriority09
      -- ^ @AD_PRIORITY_09@
    | AdPriority10
      -- ^ @AD_PRIORITY_10@
    | AdPriority11
      -- ^ @AD_PRIORITY_11@
    | AdPriority12
      -- ^ @AD_PRIORITY_12@
    | AdPriority13
      -- ^ @AD_PRIORITY_13@
    | AdPriority14
      -- ^ @AD_PRIORITY_14@
    | AdPriority15
      -- ^ @AD_PRIORITY_15@
    | AdPriority16
      -- ^ @AD_PRIORITY_16@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Priority

instance FromText Priority where
    fromText = \case
        "AD_PRIORITY_01" -> Just AdPriority01
        "AD_PRIORITY_02" -> Just AdPriority02
        "AD_PRIORITY_03" -> Just AdPriority03
        "AD_PRIORITY_04" -> Just AdPriority04
        "AD_PRIORITY_05" -> Just AdPriority05
        "AD_PRIORITY_06" -> Just AdPriority06
        "AD_PRIORITY_07" -> Just AdPriority07
        "AD_PRIORITY_08" -> Just AdPriority08
        "AD_PRIORITY_09" -> Just AdPriority09
        "AD_PRIORITY_10" -> Just AdPriority10
        "AD_PRIORITY_11" -> Just AdPriority11
        "AD_PRIORITY_12" -> Just AdPriority12
        "AD_PRIORITY_13" -> Just AdPriority13
        "AD_PRIORITY_14" -> Just AdPriority14
        "AD_PRIORITY_15" -> Just AdPriority15
        "AD_PRIORITY_16" -> Just AdPriority16
        _ -> Nothing

instance ToText Priority where
    toText = \case
        AdPriority01 -> "AD_PRIORITY_01"
        AdPriority02 -> "AD_PRIORITY_02"
        AdPriority03 -> "AD_PRIORITY_03"
        AdPriority04 -> "AD_PRIORITY_04"
        AdPriority05 -> "AD_PRIORITY_05"
        AdPriority06 -> "AD_PRIORITY_06"
        AdPriority07 -> "AD_PRIORITY_07"
        AdPriority08 -> "AD_PRIORITY_08"
        AdPriority09 -> "AD_PRIORITY_09"
        AdPriority10 -> "AD_PRIORITY_10"
        AdPriority11 -> "AD_PRIORITY_11"
        AdPriority12 -> "AD_PRIORITY_12"
        AdPriority13 -> "AD_PRIORITY_13"
        AdPriority14 -> "AD_PRIORITY_14"
        AdPriority15 -> "AD_PRIORITY_15"
        AdPriority16 -> "AD_PRIORITY_16"

instance FromJSON Priority where
    parseJSON = parseJSONText "Priority"

instance ToJSON Priority where
    toJSON = toJSONText

-- | Tag formats to generate for these placements.
data TagFormats
    = PlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | PlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | PlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | PlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | PlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | PlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | PlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | PlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | PlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | PlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | PlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | PlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | PlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | PlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | PlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | PlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | PlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | PlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TagFormats

instance FromText TagFormats where
    fromText = \case
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Just PlacementTagClickCommands
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Just PlacementTagIframeIlayer
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Just PlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Just PlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Just PlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Just PlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Just PlacementTagInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Just PlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Just PlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Just PlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Just PlacementTagInterstitialJavascript
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Just PlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT" -> Just PlacementTagJavascript
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Just PlacementTagJavascriptLegacy
        "PLACEMENT_TAG_STANDARD" -> Just PlacementTagStandard
        "PLACEMENT_TAG_TRACKING" -> Just PlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Just PlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Just PlacementTagTrackingJavascript
        _ -> Nothing

instance ToText TagFormats where
    toText = \case
        PlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        PlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        PlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        PlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        PlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        PlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        PlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        PlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        PlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        PlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        PlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        PlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        PlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        PlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        PlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        PlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        PlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        PlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

instance FromJSON TagFormats where
    parseJSON = parseJSONText "TagFormats"

instance ToJSON TagFormats where
    toJSON = toJSONText

-- | The output format of the report. Only available once the file is
-- available.
data FileFormat
    = CSV
      -- ^ @CSV@
    | Excel
      -- ^ @EXCEL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FileFormat

instance FromText FileFormat where
    fromText = \case
        "CSV" -> Just CSV
        "EXCEL" -> Just Excel
        _ -> Nothing

instance ToText FileFormat where
    toText = \case
        CSV -> "CSV"
        Excel -> "EXCEL"

instance FromJSON FileFormat where
    parseJSON = parseJSONText "FileFormat"

instance ToJSON FileFormat where
    toJSON = toJSONText

-- | Artwork type of rich media creative. This is a read-only field.
-- Applicable to the following creative types: all RICH_MEDIA.
data CreativeAssetArtworkType
    = ArtworkTypeFlash
      -- ^ @ARTWORK_TYPE_FLASH@
    | ArtworkTypeHTML5
      -- ^ @ARTWORK_TYPE_HTML5@
    | ArtworkTypeMixed
      -- ^ @ARTWORK_TYPE_MIXED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetArtworkType

instance FromText CreativeAssetArtworkType where
    fromText = \case
        "ARTWORK_TYPE_FLASH" -> Just ArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Just ArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Just ArtworkTypeMixed
        _ -> Nothing

instance ToText CreativeAssetArtworkType where
    toText = \case
        ArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        ArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        ArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"

instance FromJSON CreativeAssetArtworkType where
    parseJSON = parseJSONText "CreativeAssetArtworkType"

instance ToJSON CreativeAssetArtworkType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingPlacementsListSortField
    = DPLSFID
      -- ^ @ID@
    | DPLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementsListSortField

instance FromText DfareportingPlacementsListSortField where
    fromText = \case
        "ID" -> Just DPLSFID
        "NAME" -> Just DPLSFName
        _ -> Nothing

instance ToText DfareportingPlacementsListSortField where
    toText = \case
        DPLSFID -> "ID"
        DPLSFName -> "NAME"

instance FromJSON DfareportingPlacementsListSortField where
    parseJSON = parseJSONText "DfareportingPlacementsListSortField"

instance ToJSON DfareportingPlacementsListSortField where
    toJSON = toJSONText

-- | Select only change logs with the specified object type.
data ObjectType
    = ObjectAccount
      -- ^ @OBJECT_ACCOUNT@
    | ObjectAccountBillingFeature
      -- ^ @OBJECT_ACCOUNT_BILLING_FEATURE@
    | ObjectAd
      -- ^ @OBJECT_AD@
    | ObjectAdvertiser
      -- ^ @OBJECT_ADVERTISER@
    | ObjectAdvertiserGroup
      -- ^ @OBJECT_ADVERTISER_GROUP@
    | ObjectBillingAccountGroup
      -- ^ @OBJECT_BILLING_ACCOUNT_GROUP@
    | ObjectBillingFeature
      -- ^ @OBJECT_BILLING_FEATURE@
    | ObjectBillingMinimumFee
      -- ^ @OBJECT_BILLING_MINIMUM_FEE@
    | ObjectBillingProfile
      -- ^ @OBJECT_BILLING_PROFILE@
    | ObjectCampaign
      -- ^ @OBJECT_CAMPAIGN@
    | ObjectContentCategory
      -- ^ @OBJECT_CONTENT_CATEGORY@
    | ObjectCreative
      -- ^ @OBJECT_CREATIVE@
    | ObjectCreativeAsset
      -- ^ @OBJECT_CREATIVE_ASSET@
    | ObjectCreativeBundle
      -- ^ @OBJECT_CREATIVE_BUNDLE@
    | ObjectCreativeField
      -- ^ @OBJECT_CREATIVE_FIELD@
    | ObjectCreativeGroup
      -- ^ @OBJECT_CREATIVE_GROUP@
    | ObjectDfaSite
      -- ^ @OBJECT_DFA_SITE@
    | ObjectEventTag
      -- ^ @OBJECT_EVENT_TAG@
    | ObjectFloodlightActivityGroup
      -- ^ @OBJECT_FLOODLIGHT_ACTIVITY_GROUP@
    | ObjectFloodlightActvity
      -- ^ @OBJECT_FLOODLIGHT_ACTVITY@
    | ObjectFloodlightConfiguration
      -- ^ @OBJECT_FLOODLIGHT_CONFIGURATION@
    | ObjectInstreamCreative
      -- ^ @OBJECT_INSTREAM_CREATIVE@
    | ObjectLandingPage
      -- ^ @OBJECT_LANDING_PAGE@
    | ObjectMediaOrder
      -- ^ @OBJECT_MEDIA_ORDER@
    | ObjectPlacement
      -- ^ @OBJECT_PLACEMENT@
    | ObjectPlacementStrategy
      -- ^ @OBJECT_PLACEMENT_STRATEGY@
    | ObjectProvidedListClient
      -- ^ @OBJECT_PROVIDED_LIST_CLIENT@
    | ObjectRateCard
      -- ^ @OBJECT_RATE_CARD@
    | ObjectRemarketingList
      -- ^ @OBJECT_REMARKETING_LIST@
    | ObjectRichmediaCreative
      -- ^ @OBJECT_RICHMEDIA_CREATIVE@
    | ObjectSdSite
      -- ^ @OBJECT_SD_SITE@
    | ObjectSize
      -- ^ @OBJECT_SIZE@
    | ObjectSubAccount
      -- ^ @OBJECT_SUBACCOUNT@
    | ObjectUserProfile
      -- ^ @OBJECT_USER_PROFILE@
    | ObjectUserProfileFilter
      -- ^ @OBJECT_USER_PROFILE_FILTER@
    | ObjectUserRole
      -- ^ @OBJECT_USER_ROLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectType

instance FromText ObjectType where
    fromText = \case
        "OBJECT_ACCOUNT" -> Just ObjectAccount
        "OBJECT_ACCOUNT_BILLING_FEATURE" -> Just ObjectAccountBillingFeature
        "OBJECT_AD" -> Just ObjectAd
        "OBJECT_ADVERTISER" -> Just ObjectAdvertiser
        "OBJECT_ADVERTISER_GROUP" -> Just ObjectAdvertiserGroup
        "OBJECT_BILLING_ACCOUNT_GROUP" -> Just ObjectBillingAccountGroup
        "OBJECT_BILLING_FEATURE" -> Just ObjectBillingFeature
        "OBJECT_BILLING_MINIMUM_FEE" -> Just ObjectBillingMinimumFee
        "OBJECT_BILLING_PROFILE" -> Just ObjectBillingProfile
        "OBJECT_CAMPAIGN" -> Just ObjectCampaign
        "OBJECT_CONTENT_CATEGORY" -> Just ObjectContentCategory
        "OBJECT_CREATIVE" -> Just ObjectCreative
        "OBJECT_CREATIVE_ASSET" -> Just ObjectCreativeAsset
        "OBJECT_CREATIVE_BUNDLE" -> Just ObjectCreativeBundle
        "OBJECT_CREATIVE_FIELD" -> Just ObjectCreativeField
        "OBJECT_CREATIVE_GROUP" -> Just ObjectCreativeGroup
        "OBJECT_DFA_SITE" -> Just ObjectDfaSite
        "OBJECT_EVENT_TAG" -> Just ObjectEventTag
        "OBJECT_FLOODLIGHT_ACTIVITY_GROUP" -> Just ObjectFloodlightActivityGroup
        "OBJECT_FLOODLIGHT_ACTVITY" -> Just ObjectFloodlightActvity
        "OBJECT_FLOODLIGHT_CONFIGURATION" -> Just ObjectFloodlightConfiguration
        "OBJECT_INSTREAM_CREATIVE" -> Just ObjectInstreamCreative
        "OBJECT_LANDING_PAGE" -> Just ObjectLandingPage
        "OBJECT_MEDIA_ORDER" -> Just ObjectMediaOrder
        "OBJECT_PLACEMENT" -> Just ObjectPlacement
        "OBJECT_PLACEMENT_STRATEGY" -> Just ObjectPlacementStrategy
        "OBJECT_PROVIDED_LIST_CLIENT" -> Just ObjectProvidedListClient
        "OBJECT_RATE_CARD" -> Just ObjectRateCard
        "OBJECT_REMARKETING_LIST" -> Just ObjectRemarketingList
        "OBJECT_RICHMEDIA_CREATIVE" -> Just ObjectRichmediaCreative
        "OBJECT_SD_SITE" -> Just ObjectSdSite
        "OBJECT_SIZE" -> Just ObjectSize
        "OBJECT_SUBACCOUNT" -> Just ObjectSubAccount
        "OBJECT_USER_PROFILE" -> Just ObjectUserProfile
        "OBJECT_USER_PROFILE_FILTER" -> Just ObjectUserProfileFilter
        "OBJECT_USER_ROLE" -> Just ObjectUserRole
        _ -> Nothing

instance ToText ObjectType where
    toText = \case
        ObjectAccount -> "OBJECT_ACCOUNT"
        ObjectAccountBillingFeature -> "OBJECT_ACCOUNT_BILLING_FEATURE"
        ObjectAd -> "OBJECT_AD"
        ObjectAdvertiser -> "OBJECT_ADVERTISER"
        ObjectAdvertiserGroup -> "OBJECT_ADVERTISER_GROUP"
        ObjectBillingAccountGroup -> "OBJECT_BILLING_ACCOUNT_GROUP"
        ObjectBillingFeature -> "OBJECT_BILLING_FEATURE"
        ObjectBillingMinimumFee -> "OBJECT_BILLING_MINIMUM_FEE"
        ObjectBillingProfile -> "OBJECT_BILLING_PROFILE"
        ObjectCampaign -> "OBJECT_CAMPAIGN"
        ObjectContentCategory -> "OBJECT_CONTENT_CATEGORY"
        ObjectCreative -> "OBJECT_CREATIVE"
        ObjectCreativeAsset -> "OBJECT_CREATIVE_ASSET"
        ObjectCreativeBundle -> "OBJECT_CREATIVE_BUNDLE"
        ObjectCreativeField -> "OBJECT_CREATIVE_FIELD"
        ObjectCreativeGroup -> "OBJECT_CREATIVE_GROUP"
        ObjectDfaSite -> "OBJECT_DFA_SITE"
        ObjectEventTag -> "OBJECT_EVENT_TAG"
        ObjectFloodlightActivityGroup -> "OBJECT_FLOODLIGHT_ACTIVITY_GROUP"
        ObjectFloodlightActvity -> "OBJECT_FLOODLIGHT_ACTVITY"
        ObjectFloodlightConfiguration -> "OBJECT_FLOODLIGHT_CONFIGURATION"
        ObjectInstreamCreative -> "OBJECT_INSTREAM_CREATIVE"
        ObjectLandingPage -> "OBJECT_LANDING_PAGE"
        ObjectMediaOrder -> "OBJECT_MEDIA_ORDER"
        ObjectPlacement -> "OBJECT_PLACEMENT"
        ObjectPlacementStrategy -> "OBJECT_PLACEMENT_STRATEGY"
        ObjectProvidedListClient -> "OBJECT_PROVIDED_LIST_CLIENT"
        ObjectRateCard -> "OBJECT_RATE_CARD"
        ObjectRemarketingList -> "OBJECT_REMARKETING_LIST"
        ObjectRichmediaCreative -> "OBJECT_RICHMEDIA_CREATIVE"
        ObjectSdSite -> "OBJECT_SD_SITE"
        ObjectSize -> "OBJECT_SIZE"
        ObjectSubAccount -> "OBJECT_SUBACCOUNT"
        ObjectUserProfile -> "OBJECT_USER_PROFILE"
        ObjectUserProfileFilter -> "OBJECT_USER_PROFILE_FILTER"
        ObjectUserRole -> "OBJECT_USER_ROLE"

instance FromJSON ObjectType where
    parseJSON = parseJSONText "ObjectType"

instance ToJSON ObjectType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingCreativeFieldsListSortField
    = DCFLSFID
      -- ^ @ID@
    | DCFLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCreativeFieldsListSortField

instance FromText DfareportingCreativeFieldsListSortField where
    fromText = \case
        "ID" -> Just DCFLSFID
        "NAME" -> Just DCFLSFName
        _ -> Nothing

instance ToText DfareportingCreativeFieldsListSortField where
    toText = \case
        DCFLSFID -> "ID"
        DCFLSFName -> "NAME"

instance FromJSON DfareportingCreativeFieldsListSortField where
    parseJSON = parseJSONText "DfareportingCreativeFieldsListSortField"

instance ToJSON DfareportingCreativeFieldsListSortField where
    toJSON = toJSONText

-- | Authoring tool for HTML5 banner creatives. This is a read-only field.
-- Applicable to the following creative types: HTML5_BANNER.
data AuthoringTool
    = Ninja
      -- ^ @NINJA@
    | Swiffy
      -- ^ @SWIFFY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AuthoringTool

instance FromText AuthoringTool where
    fromText = \case
        "NINJA" -> Just Ninja
        "SWIFFY" -> Just Swiffy
        _ -> Nothing

instance ToText AuthoringTool where
    toText = \case
        Ninja -> "NINJA"
        Swiffy -> "SWIFFY"

instance FromJSON AuthoringTool where
    parseJSON = parseJSONText "AuthoringTool"

instance ToJSON AuthoringTool where
    toJSON = toJSONText

-- | Select only event tags with the specified event tag types. Event tag
-- types can be used to specify whether to use a third-party pixel, a
-- third-party JavaScript URL, or a third-party click-through URL for
-- either impression or click tracking.
data EventTagTypes
    = ClickThroughEventTag
      -- ^ @CLICK_THROUGH_EVENT_TAG@
    | ImpressionImageEventTag
      -- ^ @IMPRESSION_IMAGE_EVENT_TAG@
    | ImpressionJavascriptEventTag
      -- ^ @IMPRESSION_JAVASCRIPT_EVENT_TAG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagTypes

instance FromText EventTagTypes where
    fromText = \case
        "CLICK_THROUGH_EVENT_TAG" -> Just ClickThroughEventTag
        "IMPRESSION_IMAGE_EVENT_TAG" -> Just ImpressionImageEventTag
        "IMPRESSION_JAVASCRIPT_EVENT_TAG" -> Just ImpressionJavascriptEventTag
        _ -> Nothing

instance ToText EventTagTypes where
    toText = \case
        ClickThroughEventTag -> "CLICK_THROUGH_EVENT_TAG"
        ImpressionImageEventTag -> "IMPRESSION_IMAGE_EVENT_TAG"
        ImpressionJavascriptEventTag -> "IMPRESSION_JAVASCRIPT_EVENT_TAG"

instance FromJSON EventTagTypes where
    parseJSON = parseJSONText "EventTagTypes"

instance ToJSON EventTagTypes where
    toJSON = toJSONText

-- | Product from which this targetable remarketing list was originated.
data TargetableRemarketingListListSource
    = RemarketingListSourceDBm
      -- ^ @REMARKETING_LIST_SOURCE_DBM@
    | RemarketingListSourceDfa
      -- ^ @REMARKETING_LIST_SOURCE_DFA@
    | RemarketingListSourceDmp
      -- ^ @REMARKETING_LIST_SOURCE_DMP@
    | RemarketingListSourceGa
      -- ^ @REMARKETING_LIST_SOURCE_GA@
    | RemarketingListSourceOther
      -- ^ @REMARKETING_LIST_SOURCE_OTHER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetableRemarketingListListSource

instance FromText TargetableRemarketingListListSource where
    fromText = \case
        "REMARKETING_LIST_SOURCE_DBM" -> Just RemarketingListSourceDBm
        "REMARKETING_LIST_SOURCE_DFA" -> Just RemarketingListSourceDfa
        "REMARKETING_LIST_SOURCE_DMP" -> Just RemarketingListSourceDmp
        "REMARKETING_LIST_SOURCE_GA" -> Just RemarketingListSourceGa
        "REMARKETING_LIST_SOURCE_OTHER" -> Just RemarketingListSourceOther
        _ -> Nothing

instance ToText TargetableRemarketingListListSource where
    toText = \case
        RemarketingListSourceDBm -> "REMARKETING_LIST_SOURCE_DBM"
        RemarketingListSourceDfa -> "REMARKETING_LIST_SOURCE_DFA"
        RemarketingListSourceDmp -> "REMARKETING_LIST_SOURCE_DMP"
        RemarketingListSourceGa -> "REMARKETING_LIST_SOURCE_GA"
        RemarketingListSourceOther -> "REMARKETING_LIST_SOURCE_OTHER"

instance FromJSON TargetableRemarketingListListSource where
    parseJSON = parseJSONText "TargetableRemarketingListListSource"

instance ToJSON TargetableRemarketingListListSource where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingOrderDocumentsListSortField
    = DODLSFID
      -- ^ @ID@
    | DODLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingOrderDocumentsListSortField

instance FromText DfareportingOrderDocumentsListSortField where
    fromText = \case
        "ID" -> Just DODLSFID
        "NAME" -> Just DODLSFName
        _ -> Nothing

instance ToText DfareportingOrderDocumentsListSortField where
    toText = \case
        DODLSFID -> "ID"
        DODLSFName -> "NAME"

instance FromJSON DfareportingOrderDocumentsListSortField where
    parseJSON = parseJSONText "DfareportingOrderDocumentsListSortField"

instance ToJSON DfareportingOrderDocumentsListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingSubAccountsListSortOrder
    = DSALSOAscending
      -- ^ @ASCENDING@
    | DSALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingSubAccountsListSortOrder

instance FromText DfareportingSubAccountsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DSALSOAscending
        "DESCENDING" -> Just DSALSODescending
        _ -> Nothing

instance ToText DfareportingSubAccountsListSortOrder where
    toText = \case
        DSALSOAscending -> "ASCENDING"
        DSALSODescending -> "DESCENDING"

instance FromJSON DfareportingSubAccountsListSortOrder where
    parseJSON = parseJSONText "DfareportingSubAccountsListSortOrder"

instance ToJSON DfareportingSubAccountsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingAdsListSortOrder
    = DALSOAscending
      -- ^ @ASCENDING@
    | DALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdsListSortOrder

instance FromText DfareportingAdsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DALSOAscending
        "DESCENDING" -> Just DALSODescending
        _ -> Nothing

instance ToText DfareportingAdsListSortOrder where
    toText = \case
        DALSOAscending -> "ASCENDING"
        DALSODescending -> "DESCENDING"

instance FromJSON DfareportingAdsListSortOrder where
    parseJSON = parseJSONText "DfareportingAdsListSortOrder"

instance ToJSON DfareportingAdsListSortOrder where
    toJSON = toJSONText

-- | Comparison operator of this term. This field is only relevant when type
-- is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
data Operator
    = NumEquals
      -- ^ @NUM_EQUALS@
    | NumGreaterThan
      -- ^ @NUM_GREATER_THAN@
    | NumGreaterThanEqual
      -- ^ @NUM_GREATER_THAN_EQUAL@
    | NumLessThan
      -- ^ @NUM_LESS_THAN@
    | NumLessThanEqual
      -- ^ @NUM_LESS_THAN_EQUAL@
    | StringContains
      -- ^ @STRING_CONTAINS@
    | StringEquals
      -- ^ @STRING_EQUALS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Operator

instance FromText Operator where
    fromText = \case
        "NUM_EQUALS" -> Just NumEquals
        "NUM_GREATER_THAN" -> Just NumGreaterThan
        "NUM_GREATER_THAN_EQUAL" -> Just NumGreaterThanEqual
        "NUM_LESS_THAN" -> Just NumLessThan
        "NUM_LESS_THAN_EQUAL" -> Just NumLessThanEqual
        "STRING_CONTAINS" -> Just StringContains
        "STRING_EQUALS" -> Just StringEquals
        _ -> Nothing

instance ToText Operator where
    toText = \case
        NumEquals -> "NUM_EQUALS"
        NumGreaterThan -> "NUM_GREATER_THAN"
        NumGreaterThanEqual -> "NUM_GREATER_THAN_EQUAL"
        NumLessThan -> "NUM_LESS_THAN"
        NumLessThanEqual -> "NUM_LESS_THAN_EQUAL"
        StringContains -> "STRING_CONTAINS"
        StringEquals -> "STRING_EQUALS"

instance FromJSON Operator where
    parseJSON = parseJSONText "Operator"

instance ToJSON Operator where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingContentCategoriesListSortField
    = DCCLSFID
      -- ^ @ID@
    | DCCLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingContentCategoriesListSortField

instance FromText DfareportingContentCategoriesListSortField where
    fromText = \case
        "ID" -> Just DCCLSFID
        "NAME" -> Just DCCLSFName
        _ -> Nothing

instance ToText DfareportingContentCategoriesListSortField where
    toText = \case
        DCCLSFID -> "ID"
        DCCLSFName -> "NAME"

instance FromJSON DfareportingContentCategoriesListSortField where
    parseJSON = parseJSONText "DfareportingContentCategoriesListSortField"

instance ToJSON DfareportingContentCategoriesListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingFloodlightActivitiesListSortOrder
    = DFALSOAscending
      -- ^ @ASCENDING@
    | DFALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFloodlightActivitiesListSortOrder

instance FromText DfareportingFloodlightActivitiesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DFALSOAscending
        "DESCENDING" -> Just DFALSODescending
        _ -> Nothing

instance ToText DfareportingFloodlightActivitiesListSortOrder where
    toText = \case
        DFALSOAscending -> "ASCENDING"
        DFALSODescending -> "DESCENDING"

instance FromJSON DfareportingFloodlightActivitiesListSortOrder where
    parseJSON = parseJSONText "DfareportingFloodlightActivitiesListSortOrder"

instance ToJSON DfareportingFloodlightActivitiesListSortOrder where
    toJSON = toJSONText

data UserDefinedVariableTypesItem
    = U1
      -- ^ @U1@
    | U10
      -- ^ @U10@
    | U11
      -- ^ @U11@
    | U12
      -- ^ @U12@
    | U13
      -- ^ @U13@
    | U14
      -- ^ @U14@
    | U15
      -- ^ @U15@
    | U16
      -- ^ @U16@
    | U17
      -- ^ @U17@
    | U18
      -- ^ @U18@
    | U19
      -- ^ @U19@
    | U2
      -- ^ @U2@
    | U20
      -- ^ @U20@
    | U3
      -- ^ @U3@
    | U4
      -- ^ @U4@
    | U5
      -- ^ @U5@
    | U6
      -- ^ @U6@
    | U7
      -- ^ @U7@
    | U8
      -- ^ @U8@
    | U9
      -- ^ @U9@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserDefinedVariableTypesItem

instance FromText UserDefinedVariableTypesItem where
    fromText = \case
        "U1" -> Just U1
        "U10" -> Just U10
        "U11" -> Just U11
        "U12" -> Just U12
        "U13" -> Just U13
        "U14" -> Just U14
        "U15" -> Just U15
        "U16" -> Just U16
        "U17" -> Just U17
        "U18" -> Just U18
        "U19" -> Just U19
        "U2" -> Just U2
        "U20" -> Just U20
        "U3" -> Just U3
        "U4" -> Just U4
        "U5" -> Just U5
        "U6" -> Just U6
        "U7" -> Just U7
        "U8" -> Just U8
        "U9" -> Just U9
        _ -> Nothing

instance ToText UserDefinedVariableTypesItem where
    toText = \case
        U1 -> "U1"
        U10 -> "U10"
        U11 -> "U11"
        U12 -> "U12"
        U13 -> "U13"
        U14 -> "U14"
        U15 -> "U15"
        U16 -> "U16"
        U17 -> "U17"
        U18 -> "U18"
        U19 -> "U19"
        U2 -> "U2"
        U20 -> "U20"
        U3 -> "U3"
        U4 -> "U4"
        U5 -> "U5"
        U6 -> "U6"
        U7 -> "U7"
        U8 -> "U8"
        U9 -> "U9"

instance FromJSON UserDefinedVariableTypesItem where
    parseJSON = parseJSONText "UserDefinedVariableTypesItem"

instance ToJSON UserDefinedVariableTypesItem where
    toJSON = toJSONText

data CreativeCompatibilityItem
    = CCIApp
      -- ^ @APP@
    | CCIAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | CCIInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | CCIWeb
      -- ^ @WEB@
    | CCIWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeCompatibilityItem

instance FromText CreativeCompatibilityItem where
    fromText = \case
        "APP" -> Just CCIApp
        "APP_INTERSTITIAL" -> Just CCIAppInterstitial
        "IN_STREAM_VIDEO" -> Just CCIInStreamVideo
        "WEB" -> Just CCIWeb
        "WEB_INTERSTITIAL" -> Just CCIWebInterstitial
        _ -> Nothing

instance ToText CreativeCompatibilityItem where
    toText = \case
        CCIApp -> "APP"
        CCIAppInterstitial -> "APP_INTERSTITIAL"
        CCIInStreamVideo -> "IN_STREAM_VIDEO"
        CCIWeb -> "WEB"
        CCIWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON CreativeCompatibilityItem where
    parseJSON = parseJSONText "CreativeCompatibilityItem"

instance ToJSON CreativeCompatibilityItem where
    toJSON = toJSONText

data WarnedValidationRulesItem
    = ADMobReferenced
      -- ^ @ADMOB_REFERENCED@
    | AssetFormatUnsupportedDcm
      -- ^ @ASSET_FORMAT_UNSUPPORTED_DCM@
    | AssetInvalid
      -- ^ @ASSET_INVALID@
    | ClickTagInvalid
      -- ^ @CLICK_TAG_INVALID@
    | ClickTagMissing
      -- ^ @CLICK_TAG_MISSING@
    | ClickTagMoreThanOne
      -- ^ @CLICK_TAG_MORE_THAN_ONE@
    | ClickTagNonTopLevel
      -- ^ @CLICK_TAG_NON_TOP_LEVEL@
    | ComponentUnsupportedDcm
      -- ^ @COMPONENT_UNSUPPORTED_DCM@
    | EnablerUnsupportedMethodDcm
      -- ^ @ENABLER_UNSUPPORTED_METHOD_DCM@
    | ExternalFileReferenced
      -- ^ @EXTERNAL_FILE_REFERENCED@
    | FileDetailEmpty
      -- ^ @FILE_DETAIL_EMPTY@
    | FileTypeInvalid
      -- ^ @FILE_TYPE_INVALID@
    | GwdPropertiesInvalid
      -- ^ @GWD_PROPERTIES_INVALID@
    | HTML5FeatureUnsupported
      -- ^ @HTML5_FEATURE_UNSUPPORTED@
    | LinkedFileNotFound
      -- ^ @LINKED_FILE_NOT_FOUND@
    | MaxFlashVersion11
      -- ^ @MAX_FLASH_VERSION_11@
    | MraidReferenced
      -- ^ @MRAID_REFERENCED@
    | NotSSLCompliant
      -- ^ @NOT_SSL_COMPLIANT@
    | OrphanedAsset
      -- ^ @ORPHANED_ASSET@
    | PrimaryHTMLMissing
      -- ^ @PRIMARY_HTML_MISSING@
    | ZipInvalid
      -- ^ @ZIP_INVALID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WarnedValidationRulesItem

instance FromText WarnedValidationRulesItem where
    fromText = \case
        "ADMOB_REFERENCED" -> Just ADMobReferenced
        "ASSET_FORMAT_UNSUPPORTED_DCM" -> Just AssetFormatUnsupportedDcm
        "ASSET_INVALID" -> Just AssetInvalid
        "CLICK_TAG_INVALID" -> Just ClickTagInvalid
        "CLICK_TAG_MISSING" -> Just ClickTagMissing
        "CLICK_TAG_MORE_THAN_ONE" -> Just ClickTagMoreThanOne
        "CLICK_TAG_NON_TOP_LEVEL" -> Just ClickTagNonTopLevel
        "COMPONENT_UNSUPPORTED_DCM" -> Just ComponentUnsupportedDcm
        "ENABLER_UNSUPPORTED_METHOD_DCM" -> Just EnablerUnsupportedMethodDcm
        "EXTERNAL_FILE_REFERENCED" -> Just ExternalFileReferenced
        "FILE_DETAIL_EMPTY" -> Just FileDetailEmpty
        "FILE_TYPE_INVALID" -> Just FileTypeInvalid
        "GWD_PROPERTIES_INVALID" -> Just GwdPropertiesInvalid
        "HTML5_FEATURE_UNSUPPORTED" -> Just HTML5FeatureUnsupported
        "LINKED_FILE_NOT_FOUND" -> Just LinkedFileNotFound
        "MAX_FLASH_VERSION_11" -> Just MaxFlashVersion11
        "MRAID_REFERENCED" -> Just MraidReferenced
        "NOT_SSL_COMPLIANT" -> Just NotSSLCompliant
        "ORPHANED_ASSET" -> Just OrphanedAsset
        "PRIMARY_HTML_MISSING" -> Just PrimaryHTMLMissing
        "ZIP_INVALID" -> Just ZipInvalid
        _ -> Nothing

instance ToText WarnedValidationRulesItem where
    toText = \case
        ADMobReferenced -> "ADMOB_REFERENCED"
        AssetFormatUnsupportedDcm -> "ASSET_FORMAT_UNSUPPORTED_DCM"
        AssetInvalid -> "ASSET_INVALID"
        ClickTagInvalid -> "CLICK_TAG_INVALID"
        ClickTagMissing -> "CLICK_TAG_MISSING"
        ClickTagMoreThanOne -> "CLICK_TAG_MORE_THAN_ONE"
        ClickTagNonTopLevel -> "CLICK_TAG_NON_TOP_LEVEL"
        ComponentUnsupportedDcm -> "COMPONENT_UNSUPPORTED_DCM"
        EnablerUnsupportedMethodDcm -> "ENABLER_UNSUPPORTED_METHOD_DCM"
        ExternalFileReferenced -> "EXTERNAL_FILE_REFERENCED"
        FileDetailEmpty -> "FILE_DETAIL_EMPTY"
        FileTypeInvalid -> "FILE_TYPE_INVALID"
        GwdPropertiesInvalid -> "GWD_PROPERTIES_INVALID"
        HTML5FeatureUnsupported -> "HTML5_FEATURE_UNSUPPORTED"
        LinkedFileNotFound -> "LINKED_FILE_NOT_FOUND"
        MaxFlashVersion11 -> "MAX_FLASH_VERSION_11"
        MraidReferenced -> "MRAID_REFERENCED"
        NotSSLCompliant -> "NOT_SSL_COMPLIANT"
        OrphanedAsset -> "ORPHANED_ASSET"
        PrimaryHTMLMissing -> "PRIMARY_HTML_MISSING"
        ZipInvalid -> "ZIP_INVALID"

instance FromJSON WarnedValidationRulesItem where
    parseJSON = parseJSONText "WarnedValidationRulesItem"

instance ToJSON WarnedValidationRulesItem where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingCreativeGroupsListSortField
    = DCGLSFID
      -- ^ @ID@
    | DCGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCreativeGroupsListSortField

instance FromText DfareportingCreativeGroupsListSortField where
    fromText = \case
        "ID" -> Just DCGLSFID
        "NAME" -> Just DCGLSFName
        _ -> Nothing

instance ToText DfareportingCreativeGroupsListSortField where
    toText = \case
        DCGLSFID -> "ID"
        DCGLSFName -> "NAME"

instance FromJSON DfareportingCreativeGroupsListSortField where
    parseJSON = parseJSONText "DfareportingCreativeGroupsListSortField"

instance ToJSON DfareportingCreativeGroupsListSortField where
    toJSON = toJSONText

-- | The dimension option.
data Dimension
    = DAdvertiser
      -- ^ @ADVERTISER@
    | DCampaign
      -- ^ @CAMPAIGN@
    | DSiteByAdvertiser
      -- ^ @SITE_BY_ADVERTISER@
    | DSiteByCampaign
      -- ^ @SITE_BY_CAMPAIGN@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Dimension

instance FromText Dimension where
    fromText = \case
        "ADVERTISER" -> Just DAdvertiser
        "CAMPAIGN" -> Just DCampaign
        "SITE_BY_ADVERTISER" -> Just DSiteByAdvertiser
        "SITE_BY_CAMPAIGN" -> Just DSiteByCampaign
        _ -> Nothing

instance ToText Dimension where
    toText = \case
        DAdvertiser -> "ADVERTISER"
        DCampaign -> "CAMPAIGN"
        DSiteByAdvertiser -> "SITE_BY_ADVERTISER"
        DSiteByCampaign -> "SITE_BY_CAMPAIGN"

instance FromJSON Dimension where
    parseJSON = parseJSONText "Dimension"

instance ToJSON Dimension where
    toJSON = toJSONText

-- | The scope that defines which results are returned, default is \'MINE\'.
data DfareportingFilesListScope
    = All
      -- ^ @ALL@
      -- All files in account.
    | Mine
      -- ^ @MINE@
      -- My files.
    | SharedWithMe
      -- ^ @SHARED_WITH_ME@
      -- Files shared with me.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFilesListScope

instance FromText DfareportingFilesListScope where
    fromText = \case
        "ALL" -> Just All
        "MINE" -> Just Mine
        "SHARED_WITH_ME" -> Just SharedWithMe
        _ -> Nothing

instance ToText DfareportingFilesListScope where
    toText = \case
        All -> "ALL"
        Mine -> "MINE"
        SharedWithMe -> "SHARED_WITH_ME"

instance FromJSON DfareportingFilesListScope where
    parseJSON = parseJSONText "DfareportingFilesListScope"

instance ToJSON DfareportingFilesListScope where
    toJSON = toJSONText

data InpageTagFormatsItem
    = IframeJavascriptInpage
      -- ^ @IFRAME_JAVASCRIPT_INPAGE@
    | InternalRedirectInpage
      -- ^ @INTERNAL_REDIRECT_INPAGE@
    | JavascriptInpage
      -- ^ @JAVASCRIPT_INPAGE@
    | Standard
      -- ^ @STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InpageTagFormatsItem

instance FromText InpageTagFormatsItem where
    fromText = \case
        "IFRAME_JAVASCRIPT_INPAGE" -> Just IframeJavascriptInpage
        "INTERNAL_REDIRECT_INPAGE" -> Just InternalRedirectInpage
        "JAVASCRIPT_INPAGE" -> Just JavascriptInpage
        "STANDARD" -> Just Standard
        _ -> Nothing

instance ToText InpageTagFormatsItem where
    toText = \case
        IframeJavascriptInpage -> "IFRAME_JAVASCRIPT_INPAGE"
        InternalRedirectInpage -> "INTERNAL_REDIRECT_INPAGE"
        JavascriptInpage -> "JAVASCRIPT_INPAGE"
        Standard -> "STANDARD"

instance FromJSON InpageTagFormatsItem where
    parseJSON = parseJSONText "InpageTagFormatsItem"

instance ToJSON InpageTagFormatsItem where
    toJSON = toJSONText

-- | Select only placements with these pricing types.
data PricingTypes
    = PricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | PricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | PricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | PricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | PricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingTypes

instance FromText PricingTypes where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just PricingTypeCpa
        "PRICING_TYPE_CPC" -> Just PricingTypeCpc
        "PRICING_TYPE_CPM" -> Just PricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText PricingTypes where
    toText = \case
        PricingTypeCpa -> "PRICING_TYPE_CPA"
        PricingTypeCpc -> "PRICING_TYPE_CPC"
        PricingTypeCpm -> "PRICING_TYPE_CPM"
        PricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON PricingTypes where
    parseJSON = parseJSONText "PricingTypes"

instance ToJSON PricingTypes where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingPlacementStrategiesListSortField
    = DPSLSFID
      -- ^ @ID@
    | DPSLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementStrategiesListSortField

instance FromText DfareportingPlacementStrategiesListSortField where
    fromText = \case
        "ID" -> Just DPSLSFID
        "NAME" -> Just DPSLSFName
        _ -> Nothing

instance ToText DfareportingPlacementStrategiesListSortField where
    toText = \case
        DPSLSFID -> "ID"
        DPSLSFName -> "NAME"

instance FromJSON DfareportingPlacementStrategiesListSortField where
    parseJSON = parseJSONText "DfareportingPlacementStrategiesListSortField"

instance ToJSON DfareportingPlacementStrategiesListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingCreativesListSortOrder
    = DCLSOAscending
      -- ^ @ASCENDING@
    | DCLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCreativesListSortOrder

instance FromText DfareportingCreativesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DCLSOAscending
        "DESCENDING" -> Just DCLSODescending
        _ -> Nothing

instance ToText DfareportingCreativesListSortOrder where
    toText = \case
        DCLSOAscending -> "ASCENDING"
        DCLSODescending -> "DESCENDING"

instance FromJSON DfareportingCreativesListSortOrder where
    parseJSON = parseJSONText "DfareportingCreativesListSortOrder"

instance ToJSON DfareportingCreativesListSortOrder where
    toJSON = toJSONText

-- | Determines how the \'value\' field is matched when filtering. If not
-- specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'*\' is
-- allowed as a placeholder for variable length character sequences, and it
-- can be escaped with a backslash. Note, only paid search dimensions
-- (\'dfa:paidSearch*\') allow a matchType other than EXACT.
data MatchType
    = MTBeginsWith
      -- ^ @BEGINS_WITH@
    | MTContains
      -- ^ @CONTAINS@
    | MTExact
      -- ^ @EXACT@
    | MTWildcardExpression
      -- ^ @WILDCARD_EXPRESSION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MatchType

instance FromText MatchType where
    fromText = \case
        "BEGINS_WITH" -> Just MTBeginsWith
        "CONTAINS" -> Just MTContains
        "EXACT" -> Just MTExact
        "WILDCARD_EXPRESSION" -> Just MTWildcardExpression
        _ -> Nothing

instance ToText MatchType where
    toText = \case
        MTBeginsWith -> "BEGINS_WITH"
        MTContains -> "CONTAINS"
        MTExact -> "EXACT"
        MTWildcardExpression -> "WILDCARD_EXPRESSION"

instance FromJSON MatchType where
    parseJSON = parseJSONText "MatchType"

instance ToJSON MatchType where
    toJSON = toJSONText

-- | TagData tag format of this tag.
data Format
    = FPlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | FPlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | FPlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | FPlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | FPlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | FPlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | FPlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | FPlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | FPlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | FPlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | FPlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | FPlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | FPlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | FPlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | FPlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | FPlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | FPlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | FPlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Format

instance FromText Format where
    fromText = \case
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Just FPlacementTagClickCommands
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Just FPlacementTagIframeIlayer
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Just FPlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Just FPlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Just FPlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Just FPlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Just FPlacementTagInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Just FPlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Just FPlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Just FPlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Just FPlacementTagInterstitialJavascript
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Just FPlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT" -> Just FPlacementTagJavascript
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Just FPlacementTagJavascriptLegacy
        "PLACEMENT_TAG_STANDARD" -> Just FPlacementTagStandard
        "PLACEMENT_TAG_TRACKING" -> Just FPlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Just FPlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Just FPlacementTagTrackingJavascript
        _ -> Nothing

instance ToText Format where
    toText = \case
        FPlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        FPlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        FPlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        FPlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        FPlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        FPlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        FPlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        FPlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        FPlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        FPlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        FPlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        FPlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        FPlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        FPlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        FPlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        FPlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        FPlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        FPlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

instance FromJSON Format where
    parseJSON = parseJSONText "Format"

instance ToJSON Format where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingAccountUserProfilesListSortOrder
    = DAUPLSOAscending
      -- ^ @ASCENDING@
    | DAUPLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAccountUserProfilesListSortOrder

instance FromText DfareportingAccountUserProfilesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DAUPLSOAscending
        "DESCENDING" -> Just DAUPLSODescending
        _ -> Nothing

instance ToText DfareportingAccountUserProfilesListSortOrder where
    toText = \case
        DAUPLSOAscending -> "ASCENDING"
        DAUPLSODescending -> "DESCENDING"

instance FromJSON DfareportingAccountUserProfilesListSortOrder where
    parseJSON = parseJSONText "DfareportingAccountUserProfilesListSortOrder"

instance ToJSON DfareportingAccountUserProfilesListSortOrder where
    toJSON = toJSONText

-- | Select only creatives with these creative types.
data Types
    = BrandSafeDefaultInstreamVideo
      -- ^ @BRAND_SAFE_DEFAULT_INSTREAM_VIDEO@
    | CustomInpage
      -- ^ @CUSTOM_INPAGE@
    | CustomInterstitial
      -- ^ @CUSTOM_INTERSTITIAL@
    | EnhancedBanner
      -- ^ @ENHANCED_BANNER@
    | EnhancedImage
      -- ^ @ENHANCED_IMAGE@
    | FlashInpage
      -- ^ @FLASH_INPAGE@
    | HTML5Banner
      -- ^ @HTML5_BANNER@
    | Image
      -- ^ @IMAGE@
    | InstreamVideo
      -- ^ @INSTREAM_VIDEO@
    | InternalRedirect
      -- ^ @INTERNAL_REDIRECT@
    | InterstitialInternalRedirect
      -- ^ @INTERSTITIAL_INTERNAL_REDIRECT@
    | Redirect
      -- ^ @REDIRECT@
    | RichMediaExpanding
      -- ^ @RICH_MEDIA_EXPANDING@
    | RichMediaImExpand
      -- ^ @RICH_MEDIA_IM_EXPAND@
    | RichMediaInpage
      -- ^ @RICH_MEDIA_INPAGE@
    | RichMediaInpageFloating
      -- ^ @RICH_MEDIA_INPAGE_FLOATING@
    | RichMediaInterstitialFloat
      -- ^ @RICH_MEDIA_INTERSTITIAL_FLOAT@
    | RichMediaMobileInApp
      -- ^ @RICH_MEDIA_MOBILE_IN_APP@
    | RichMediaMultiFloating
      -- ^ @RICH_MEDIA_MULTI_FLOATING@
    | RichMediaPeelDown
      -- ^ @RICH_MEDIA_PEEL_DOWN@
    | TrackingText
      -- ^ @TRACKING_TEXT@
    | VastRedirect
      -- ^ @VAST_REDIRECT@
    | VpaidLinear
      -- ^ @VPAID_LINEAR@
    | VpaidNonLinear
      -- ^ @VPAID_NON_LINEAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Types

instance FromText Types where
    fromText = \case
        "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO" -> Just BrandSafeDefaultInstreamVideo
        "CUSTOM_INPAGE" -> Just CustomInpage
        "CUSTOM_INTERSTITIAL" -> Just CustomInterstitial
        "ENHANCED_BANNER" -> Just EnhancedBanner
        "ENHANCED_IMAGE" -> Just EnhancedImage
        "FLASH_INPAGE" -> Just FlashInpage
        "HTML5_BANNER" -> Just HTML5Banner
        "IMAGE" -> Just Image
        "INSTREAM_VIDEO" -> Just InstreamVideo
        "INTERNAL_REDIRECT" -> Just InternalRedirect
        "INTERSTITIAL_INTERNAL_REDIRECT" -> Just InterstitialInternalRedirect
        "REDIRECT" -> Just Redirect
        "RICH_MEDIA_EXPANDING" -> Just RichMediaExpanding
        "RICH_MEDIA_IM_EXPAND" -> Just RichMediaImExpand
        "RICH_MEDIA_INPAGE" -> Just RichMediaInpage
        "RICH_MEDIA_INPAGE_FLOATING" -> Just RichMediaInpageFloating
        "RICH_MEDIA_INTERSTITIAL_FLOAT" -> Just RichMediaInterstitialFloat
        "RICH_MEDIA_MOBILE_IN_APP" -> Just RichMediaMobileInApp
        "RICH_MEDIA_MULTI_FLOATING" -> Just RichMediaMultiFloating
        "RICH_MEDIA_PEEL_DOWN" -> Just RichMediaPeelDown
        "TRACKING_TEXT" -> Just TrackingText
        "VAST_REDIRECT" -> Just VastRedirect
        "VPAID_LINEAR" -> Just VpaidLinear
        "VPAID_NON_LINEAR" -> Just VpaidNonLinear
        _ -> Nothing

instance ToText Types where
    toText = \case
        BrandSafeDefaultInstreamVideo -> "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
        CustomInpage -> "CUSTOM_INPAGE"
        CustomInterstitial -> "CUSTOM_INTERSTITIAL"
        EnhancedBanner -> "ENHANCED_BANNER"
        EnhancedImage -> "ENHANCED_IMAGE"
        FlashInpage -> "FLASH_INPAGE"
        HTML5Banner -> "HTML5_BANNER"
        Image -> "IMAGE"
        InstreamVideo -> "INSTREAM_VIDEO"
        InternalRedirect -> "INTERNAL_REDIRECT"
        InterstitialInternalRedirect -> "INTERSTITIAL_INTERNAL_REDIRECT"
        Redirect -> "REDIRECT"
        RichMediaExpanding -> "RICH_MEDIA_EXPANDING"
        RichMediaImExpand -> "RICH_MEDIA_IM_EXPAND"
        RichMediaInpage -> "RICH_MEDIA_INPAGE"
        RichMediaInpageFloating -> "RICH_MEDIA_INPAGE_FLOATING"
        RichMediaInterstitialFloat -> "RICH_MEDIA_INTERSTITIAL_FLOAT"
        RichMediaMobileInApp -> "RICH_MEDIA_MOBILE_IN_APP"
        RichMediaMultiFloating -> "RICH_MEDIA_MULTI_FLOATING"
        RichMediaPeelDown -> "RICH_MEDIA_PEEL_DOWN"
        TrackingText -> "TRACKING_TEXT"
        VastRedirect -> "VAST_REDIRECT"
        VpaidLinear -> "VPAID_LINEAR"
        VpaidNonLinear -> "VPAID_NON_LINEAR"

instance FromJSON Types where
    parseJSON = parseJSONText "Types"

instance ToJSON Types where
    toJSON = toJSONText

-- | Type of this contact.
data OrderContactContactType
    = PlanningOrderContactBuyerBillingContact
      -- ^ @PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT@
    | PlanningOrderContactBuyerContact
      -- ^ @PLANNING_ORDER_CONTACT_BUYER_CONTACT@
    | PlanningOrderContactSellerContact
      -- ^ @PLANNING_ORDER_CONTACT_SELLER_CONTACT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderContactContactType

instance FromText OrderContactContactType where
    fromText = \case
        "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT" -> Just PlanningOrderContactBuyerBillingContact
        "PLANNING_ORDER_CONTACT_BUYER_CONTACT" -> Just PlanningOrderContactBuyerContact
        "PLANNING_ORDER_CONTACT_SELLER_CONTACT" -> Just PlanningOrderContactSellerContact
        _ -> Nothing

instance ToText OrderContactContactType where
    toText = \case
        PlanningOrderContactBuyerBillingContact -> "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT"
        PlanningOrderContactBuyerContact -> "PLANNING_ORDER_CONTACT_BUYER_CONTACT"
        PlanningOrderContactSellerContact -> "PLANNING_ORDER_CONTACT_SELLER_CONTACT"

instance FromJSON OrderContactContactType where
    parseJSON = parseJSONText "OrderContactContactType"

instance ToJSON OrderContactContactType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingDirectorySitesListSortField
    = DDSLSFID
      -- ^ @ID@
    | DDSLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingDirectorySitesListSortField

instance FromText DfareportingDirectorySitesListSortField where
    fromText = \case
        "ID" -> Just DDSLSFID
        "NAME" -> Just DDSLSFName
        _ -> Nothing

instance ToText DfareportingDirectorySitesListSortField where
    toText = \case
        DDSLSFID -> "ID"
        DDSLSFName -> "NAME"

instance FromJSON DfareportingDirectorySitesListSortField where
    parseJSON = parseJSONText "DfareportingDirectorySitesListSortField"

instance ToJSON DfareportingDirectorySitesListSortField where
    toJSON = toJSONText

-- | Payment source for this placement. This is a required field that is
-- read-only after insertion.
data PlacementPaymentSource
    = PlacementAgencyPaid
      -- ^ @PLACEMENT_AGENCY_PAID@
    | PlacementPublisherPaid
      -- ^ @PLACEMENT_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementPaymentSource

instance FromText PlacementPaymentSource where
    fromText = \case
        "PLACEMENT_AGENCY_PAID" -> Just PlacementAgencyPaid
        "PLACEMENT_PUBLISHER_PAID" -> Just PlacementPublisherPaid
        _ -> Nothing

instance ToText PlacementPaymentSource where
    toText = \case
        PlacementAgencyPaid -> "PLACEMENT_AGENCY_PAID"
        PlacementPublisherPaid -> "PLACEMENT_PUBLISHER_PAID"

instance FromJSON PlacementPaymentSource where
    parseJSON = parseJSONText "PlacementPaymentSource"

instance ToJSON PlacementPaymentSource where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingOrdersListSortOrder
    = DOLSOAscending
      -- ^ @ASCENDING@
    | DOLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingOrdersListSortOrder

instance FromText DfareportingOrdersListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DOLSOAscending
        "DESCENDING" -> Just DOLSODescending
        _ -> Nothing

instance ToText DfareportingOrdersListSortOrder where
    toText = \case
        DOLSOAscending -> "ASCENDING"
        DOLSODescending -> "DESCENDING"

instance FromJSON DfareportingOrdersListSortOrder where
    parseJSON = parseJSONText "DfareportingOrdersListSortOrder"

instance ToJSON DfareportingOrdersListSortOrder where
    toJSON = toJSONText

-- | Duration type for which an asset will be displayed. Applicable to the
-- following creative types: all RICH_MEDIA.
data DurationType
    = AssetDurationTypeAuto
      -- ^ @ASSET_DURATION_TYPE_AUTO@
    | AssetDurationTypeCustom
      -- ^ @ASSET_DURATION_TYPE_CUSTOM@
    | AssetDurationTypeNone
      -- ^ @ASSET_DURATION_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DurationType

instance FromText DurationType where
    fromText = \case
        "ASSET_DURATION_TYPE_AUTO" -> Just AssetDurationTypeAuto
        "ASSET_DURATION_TYPE_CUSTOM" -> Just AssetDurationTypeCustom
        "ASSET_DURATION_TYPE_NONE" -> Just AssetDurationTypeNone
        _ -> Nothing

instance ToText DurationType where
    toText = \case
        AssetDurationTypeAuto -> "ASSET_DURATION_TYPE_AUTO"
        AssetDurationTypeCustom -> "ASSET_DURATION_TYPE_CUSTOM"
        AssetDurationTypeNone -> "ASSET_DURATION_TYPE_NONE"

instance FromJSON DurationType where
    parseJSON = parseJSONText "DurationType"

instance ToJSON DurationType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingFloodlightActivityGroupsListSortField
    = DFAGLSFID
      -- ^ @ID@
    | DFAGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFloodlightActivityGroupsListSortField

instance FromText DfareportingFloodlightActivityGroupsListSortField where
    fromText = \case
        "ID" -> Just DFAGLSFID
        "NAME" -> Just DFAGLSFName
        _ -> Nothing

instance ToText DfareportingFloodlightActivityGroupsListSortField where
    toText = \case
        DFAGLSFID -> "ID"
        DFAGLSFName -> "NAME"

instance FromJSON DfareportingFloodlightActivityGroupsListSortField where
    parseJSON = parseJSONText "DfareportingFloodlightActivityGroupsListSortField"

instance ToJSON DfareportingFloodlightActivityGroupsListSortField where
    toJSON = toJSONText

-- | Select only floodlight activity groups with the specified floodlight
-- activity group type.
data DfareportingFloodlightActivityGroupsListType
    = Counter
      -- ^ @COUNTER@
    | Sale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFloodlightActivityGroupsListType

instance FromText DfareportingFloodlightActivityGroupsListType where
    fromText = \case
        "COUNTER" -> Just Counter
        "SALE" -> Just Sale
        _ -> Nothing

instance ToText DfareportingFloodlightActivityGroupsListType where
    toText = \case
        Counter -> "COUNTER"
        Sale -> "SALE"

instance FromJSON DfareportingFloodlightActivityGroupsListType where
    parseJSON = parseJSONText "DfareportingFloodlightActivityGroupsListType"

instance ToJSON DfareportingFloodlightActivityGroupsListType where
    toJSON = toJSONText

-- | Visibility of this directory site contact assignment. When set to PUBLIC
-- this contact assignment is visible to all account and agency users; when
-- set to PRIVATE it is visible only to the site.
data Visibility
    = Private
      -- ^ @PRIVATE@
    | Public
      -- ^ @PUBLIC@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Visibility

instance FromText Visibility where
    fromText = \case
        "PRIVATE" -> Just Private
        "PUBLIC" -> Just Public
        _ -> Nothing

instance ToText Visibility where
    toText = \case
        Private -> "PRIVATE"
        Public -> "PUBLIC"

instance FromJSON Visibility where
    parseJSON = parseJSONText "Visibility"

instance ToJSON Visibility where
    toJSON = toJSONText

-- | Optimization model for this configuration.
data OptimizationModel
    = Click
      -- ^ @CLICK@
    | PostClick
      -- ^ @POST_CLICK@
    | PostClickAndImpression
      -- ^ @POST_CLICK_AND_IMPRESSION@
    | PostImpression
      -- ^ @POST_IMPRESSION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OptimizationModel

instance FromText OptimizationModel where
    fromText = \case
        "CLICK" -> Just Click
        "POST_CLICK" -> Just PostClick
        "POST_CLICK_AND_IMPRESSION" -> Just PostClickAndImpression
        "POST_IMPRESSION" -> Just PostImpression
        _ -> Nothing

instance ToText OptimizationModel where
    toText = \case
        Click -> "CLICK"
        PostClick -> "POST_CLICK"
        PostClickAndImpression -> "POST_CLICK_AND_IMPRESSION"
        PostImpression -> "POST_IMPRESSION"

instance FromJSON OptimizationModel where
    parseJSON = parseJSONText "OptimizationModel"

instance ToJSON OptimizationModel where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingCampaignsListSortOrder
    = DAscending
      -- ^ @ASCENDING@
    | DDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCampaignsListSortOrder

instance FromText DfareportingCampaignsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DAscending
        "DESCENDING" -> Just DDescending
        _ -> Nothing

instance ToText DfareportingCampaignsListSortOrder where
    toText = \case
        DAscending -> "ASCENDING"
        DDescending -> "DESCENDING"

instance FromJSON DfareportingCampaignsListSortOrder where
    parseJSON = parseJSONText "DfareportingCampaignsListSortOrder"

instance ToJSON DfareportingCampaignsListSortOrder where
    toJSON = toJSONText

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

instance FromJSON EventTagType where
    parseJSON = parseJSONText "EventTagType"

instance ToJSON EventTagType where
    toJSON = toJSONText

-- | Select only change logs with the specified action.
data Action
    = ActionAdd
      -- ^ @ACTION_ADD@
    | ActionAssign
      -- ^ @ACTION_ASSIGN@
    | ActionAssociate
      -- ^ @ACTION_ASSOCIATE@
    | ActionCreate
      -- ^ @ACTION_CREATE@
    | ActionDelete
      -- ^ @ACTION_DELETE@
    | ActionDisable
      -- ^ @ACTION_DISABLE@
    | ActionEmailTags
      -- ^ @ACTION_EMAIL_TAGS@
    | ActionEnable
      -- ^ @ACTION_ENABLE@
    | ActionLink
      -- ^ @ACTION_LINK@
    | ActionMarkAsDefault
      -- ^ @ACTION_MARK_AS_DEFAULT@
    | ActionPush
      -- ^ @ACTION_PUSH@
    | ActionRemove
      -- ^ @ACTION_REMOVE@
    | ActionSend
      -- ^ @ACTION_SEND@
    | ActionShare
      -- ^ @ACTION_SHARE@
    | ActionUnassign
      -- ^ @ACTION_UNASSIGN@
    | ActionUnlink
      -- ^ @ACTION_UNLINK@
    | ActionUpdate
      -- ^ @ACTION_UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Action

instance FromText Action where
    fromText = \case
        "ACTION_ADD" -> Just ActionAdd
        "ACTION_ASSIGN" -> Just ActionAssign
        "ACTION_ASSOCIATE" -> Just ActionAssociate
        "ACTION_CREATE" -> Just ActionCreate
        "ACTION_DELETE" -> Just ActionDelete
        "ACTION_DISABLE" -> Just ActionDisable
        "ACTION_EMAIL_TAGS" -> Just ActionEmailTags
        "ACTION_ENABLE" -> Just ActionEnable
        "ACTION_LINK" -> Just ActionLink
        "ACTION_MARK_AS_DEFAULT" -> Just ActionMarkAsDefault
        "ACTION_PUSH" -> Just ActionPush
        "ACTION_REMOVE" -> Just ActionRemove
        "ACTION_SEND" -> Just ActionSend
        "ACTION_SHARE" -> Just ActionShare
        "ACTION_UNASSIGN" -> Just ActionUnassign
        "ACTION_UNLINK" -> Just ActionUnlink
        "ACTION_UPDATE" -> Just ActionUpdate
        _ -> Nothing

instance ToText Action where
    toText = \case
        ActionAdd -> "ACTION_ADD"
        ActionAssign -> "ACTION_ASSIGN"
        ActionAssociate -> "ACTION_ASSOCIATE"
        ActionCreate -> "ACTION_CREATE"
        ActionDelete -> "ACTION_DELETE"
        ActionDisable -> "ACTION_DISABLE"
        ActionEmailTags -> "ACTION_EMAIL_TAGS"
        ActionEnable -> "ACTION_ENABLE"
        ActionLink -> "ACTION_LINK"
        ActionMarkAsDefault -> "ACTION_MARK_AS_DEFAULT"
        ActionPush -> "ACTION_PUSH"
        ActionRemove -> "ACTION_REMOVE"
        ActionSend -> "ACTION_SEND"
        ActionShare -> "ACTION_SHARE"
        ActionUnassign -> "ACTION_UNASSIGN"
        ActionUnlink -> "ACTION_UNLINK"
        ActionUpdate -> "ACTION_UPDATE"

instance FromJSON Action where
    parseJSON = parseJSONText "Action"

instance ToJSON Action where
    toJSON = toJSONText

-- | Order of sorted results, default is \'DESCENDING\'.
data DfareportingReportsListSortOrder
    = DRLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | DRLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingReportsListSortOrder

instance FromText DfareportingReportsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DRLSOAscending
        "DESCENDING" -> Just DRLSODescending
        _ -> Nothing

instance ToText DfareportingReportsListSortOrder where
    toText = \case
        DRLSOAscending -> "ASCENDING"
        DRLSODescending -> "DESCENDING"

instance FromJSON DfareportingReportsListSortOrder where
    parseJSON = parseJSONText "DfareportingReportsListSortOrder"

instance ToJSON DfareportingReportsListSortOrder where
    toJSON = toJSONText

-- | Select only placement groups belonging with this group type. A package
-- is a simple group of placements that acts as a single pricing point for
-- a group of tags. A roadblock is a group of placements that not only acts
-- as a single pricing point but also assumes that all the tags in it will
-- be served at the same time. A roadblock requires one of its assigned
-- placements to be marked as primary for reporting.
data PlacementGroupType
    = PlacementPackage
      -- ^ @PLACEMENT_PACKAGE@
    | PlacementRoadblock
      -- ^ @PLACEMENT_ROADBLOCK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupType

instance FromText PlacementGroupType where
    fromText = \case
        "PLACEMENT_PACKAGE" -> Just PlacementPackage
        "PLACEMENT_ROADBLOCK" -> Just PlacementRoadblock
        _ -> Nothing

instance ToText PlacementGroupType where
    toText = \case
        PlacementPackage -> "PLACEMENT_PACKAGE"
        PlacementRoadblock -> "PLACEMENT_ROADBLOCK"

instance FromJSON PlacementGroupType where
    parseJSON = parseJSONText "PlacementGroupType"

instance ToJSON PlacementGroupType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingAdvertiserGroupsListSortField
    = DAGLSFID
      -- ^ @ID@
    | DAGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdvertiserGroupsListSortField

instance FromText DfareportingAdvertiserGroupsListSortField where
    fromText = \case
        "ID" -> Just DAGLSFID
        "NAME" -> Just DAGLSFName
        _ -> Nothing

instance ToText DfareportingAdvertiserGroupsListSortField where
    toText = \case
        DAGLSFID -> "ID"
        DAGLSFName -> "NAME"

instance FromJSON DfareportingAdvertiserGroupsListSortField where
    parseJSON = parseJSONText "DfareportingAdvertiserGroupsListSortField"

instance ToJSON DfareportingAdvertiserGroupsListSortField where
    toJSON = toJSONText

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

instance FromJSON CreativeAssetIdType where
    parseJSON = parseJSONText "CreativeAssetIdType"

instance ToJSON CreativeAssetIdType where
    toJSON = toJSONText

-- | Type of this order document
data OrderDocumentType
    = PlanningOrderTypeChangeOrder
      -- ^ @PLANNING_ORDER_TYPE_CHANGE_ORDER@
    | PlanningOrderTypeInsertionOrder
      -- ^ @PLANNING_ORDER_TYPE_INSERTION_ORDER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderDocumentType

instance FromText OrderDocumentType where
    fromText = \case
        "PLANNING_ORDER_TYPE_CHANGE_ORDER" -> Just PlanningOrderTypeChangeOrder
        "PLANNING_ORDER_TYPE_INSERTION_ORDER" -> Just PlanningOrderTypeInsertionOrder
        _ -> Nothing

instance ToText OrderDocumentType where
    toText = \case
        PlanningOrderTypeChangeOrder -> "PLANNING_ORDER_TYPE_CHANGE_ORDER"
        PlanningOrderTypeInsertionOrder -> "PLANNING_ORDER_TYPE_INSERTION_ORDER"

instance FromJSON OrderDocumentType where
    parseJSON = parseJSONText "OrderDocumentType"

instance ToJSON OrderDocumentType where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingCreativeFieldsListSortOrder
    = DCFLSOAscending
      -- ^ @ASCENDING@
    | DCFLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCreativeFieldsListSortOrder

instance FromText DfareportingCreativeFieldsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DCFLSOAscending
        "DESCENDING" -> Just DCFLSODescending
        _ -> Nothing

instance ToText DfareportingCreativeFieldsListSortOrder where
    toText = \case
        DCFLSOAscending -> "ASCENDING"
        DCFLSODescending -> "DESCENDING"

instance FromJSON DfareportingCreativeFieldsListSortOrder where
    parseJSON = parseJSONText "DfareportingCreativeFieldsListSortOrder"

instance ToJSON DfareportingCreativeFieldsListSortOrder where
    toJSON = toJSONText

-- | Target type used by the event.
data TargetType
    = TargetBlank
      -- ^ @TARGET_BLANK@
    | TargetParent
      -- ^ @TARGET_PARENT@
    | TargetPopup
      -- ^ @TARGET_POPUP@
    | TargetSelf
      -- ^ @TARGET_SELF@
    | TargetTop
      -- ^ @TARGET_TOP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetType

instance FromText TargetType where
    fromText = \case
        "TARGET_BLANK" -> Just TargetBlank
        "TARGET_PARENT" -> Just TargetParent
        "TARGET_POPUP" -> Just TargetPopup
        "TARGET_SELF" -> Just TargetSelf
        "TARGET_TOP" -> Just TargetTop
        _ -> Nothing

instance ToText TargetType where
    toText = \case
        TargetBlank -> "TARGET_BLANK"
        TargetParent -> "TARGET_PARENT"
        TargetPopup -> "TARGET_POPUP"
        TargetSelf -> "TARGET_SELF"
        TargetTop -> "TARGET_TOP"

instance FromJSON TargetType where
    parseJSON = parseJSONText "TargetType"

instance ToJSON TargetType where
    toJSON = toJSONText

-- | Levels of availability for a user role permission.
data Availability
    = AccountAlways
      -- ^ @ACCOUNT_ALWAYS@
    | AccountByDefault
      -- ^ @ACCOUNT_BY_DEFAULT@
    | NotAvailableByDefault
      -- ^ @NOT_AVAILABLE_BY_DEFAULT@
    | SubAccountAndAccountAlways
      -- ^ @SUBACCOUNT_AND_ACCOUNT_ALWAYS@
    | SubAccountAndAccountByDefault
      -- ^ @SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Availability

instance FromText Availability where
    fromText = \case
        "ACCOUNT_ALWAYS" -> Just AccountAlways
        "ACCOUNT_BY_DEFAULT" -> Just AccountByDefault
        "NOT_AVAILABLE_BY_DEFAULT" -> Just NotAvailableByDefault
        "SUBACCOUNT_AND_ACCOUNT_ALWAYS" -> Just SubAccountAndAccountAlways
        "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT" -> Just SubAccountAndAccountByDefault
        _ -> Nothing

instance ToText Availability where
    toText = \case
        AccountAlways -> "ACCOUNT_ALWAYS"
        AccountByDefault -> "ACCOUNT_BY_DEFAULT"
        NotAvailableByDefault -> "NOT_AVAILABLE_BY_DEFAULT"
        SubAccountAndAccountAlways -> "SUBACCOUNT_AND_ACCOUNT_ALWAYS"
        SubAccountAndAccountByDefault -> "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT"

instance FromJSON Availability where
    parseJSON = parseJSONText "Availability"

instance ToJSON Availability where
    toJSON = toJSONText

-- | Maximum number of active ads allowed for the account.
data AccountActiveAdSummaryActiveAdsLimitTier
    = ActiveAdsTier100K
      -- ^ @ACTIVE_ADS_TIER_100K@
    | ActiveAdsTier200K
      -- ^ @ACTIVE_ADS_TIER_200K@
    | ActiveAdsTier300K
      -- ^ @ACTIVE_ADS_TIER_300K@
    | ActiveAdsTier40K
      -- ^ @ACTIVE_ADS_TIER_40K@
    | ActiveAdsTier75K
      -- ^ @ACTIVE_ADS_TIER_75K@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountActiveAdSummaryActiveAdsLimitTier

instance FromText AccountActiveAdSummaryActiveAdsLimitTier where
    fromText = \case
        "ACTIVE_ADS_TIER_100K" -> Just ActiveAdsTier100K
        "ACTIVE_ADS_TIER_200K" -> Just ActiveAdsTier200K
        "ACTIVE_ADS_TIER_300K" -> Just ActiveAdsTier300K
        "ACTIVE_ADS_TIER_40K" -> Just ActiveAdsTier40K
        "ACTIVE_ADS_TIER_75K" -> Just ActiveAdsTier75K
        _ -> Nothing

instance ToText AccountActiveAdSummaryActiveAdsLimitTier where
    toText = \case
        ActiveAdsTier100K -> "ACTIVE_ADS_TIER_100K"
        ActiveAdsTier200K -> "ACTIVE_ADS_TIER_200K"
        ActiveAdsTier300K -> "ACTIVE_ADS_TIER_300K"
        ActiveAdsTier40K -> "ACTIVE_ADS_TIER_40K"
        ActiveAdsTier75K -> "ACTIVE_ADS_TIER_75K"

instance FromJSON AccountActiveAdSummaryActiveAdsLimitTier where
    parseJSON = parseJSONText "AccountActiveAdSummaryActiveAdsLimitTier"

instance ToJSON AccountActiveAdSummaryActiveAdsLimitTier where
    toJSON = toJSONText

-- | Trafficker type of this user profile.
data TraffickerType
    = ExternalTrafficker
      -- ^ @EXTERNAL_TRAFFICKER@
    | InternalNonTrafficker
      -- ^ @INTERNAL_NON_TRAFFICKER@
    | InternalTrafficker
      -- ^ @INTERNAL_TRAFFICKER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TraffickerType

instance FromText TraffickerType where
    fromText = \case
        "EXTERNAL_TRAFFICKER" -> Just ExternalTrafficker
        "INTERNAL_NON_TRAFFICKER" -> Just InternalNonTrafficker
        "INTERNAL_TRAFFICKER" -> Just InternalTrafficker
        _ -> Nothing

instance ToText TraffickerType where
    toText = \case
        ExternalTrafficker -> "EXTERNAL_TRAFFICKER"
        InternalNonTrafficker -> "INTERNAL_NON_TRAFFICKER"
        InternalTrafficker -> "INTERNAL_TRAFFICKER"

instance FromJSON TraffickerType where
    parseJSON = parseJSONText "TraffickerType"

instance ToJSON TraffickerType where
    toJSON = toJSONText

-- | Popup window position either centered or at specific coordinate.
data PositionType
    = Center
      -- ^ @CENTER@
    | Coordinates
      -- ^ @COORDINATES@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PositionType

instance FromText PositionType where
    fromText = \case
        "CENTER" -> Just Center
        "COORDINATES" -> Just Coordinates
        _ -> Nothing

instance ToText PositionType where
    toText = \case
        Center -> "CENTER"
        Coordinates -> "COORDINATES"

instance FromJSON PositionType where
    parseJSON = parseJSONText "PositionType"

instance ToJSON PositionType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingSubAccountsListSortField
    = DSALSFID
      -- ^ @ID@
    | DSALSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingSubAccountsListSortField

instance FromText DfareportingSubAccountsListSortField where
    fromText = \case
        "ID" -> Just DSALSFID
        "NAME" -> Just DSALSFName
        _ -> Nothing

instance ToText DfareportingSubAccountsListSortField where
    toText = \case
        DSALSFID -> "ID"
        DSALSFName -> "NAME"

instance FromJSON DfareportingSubAccountsListSortField where
    parseJSON = parseJSONText "DfareportingSubAccountsListSortField"

instance ToJSON DfareportingSubAccountsListSortField where
    toJSON = toJSONText

-- | Tag format type for the floodlight activity. If left blank, the tag
-- format will default to HTML.
data TagFormat
    = HTML
      -- ^ @HTML@
    | Xhtml
      -- ^ @XHTML@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TagFormat

instance FromText TagFormat where
    fromText = \case
        "HTML" -> Just HTML
        "XHTML" -> Just Xhtml
        _ -> Nothing

instance ToText TagFormat where
    toText = \case
        HTML -> "HTML"
        Xhtml -> "XHTML"

instance FromJSON TagFormat where
    parseJSON = parseJSONText "TagFormat"

instance ToJSON TagFormat where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingOrderDocumentsListSortOrder
    = DODLSOAscending
      -- ^ @ASCENDING@
    | DODLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingOrderDocumentsListSortOrder

instance FromText DfareportingOrderDocumentsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DODLSOAscending
        "DESCENDING" -> Just DODLSODescending
        _ -> Nothing

instance ToText DfareportingOrderDocumentsListSortOrder where
    toText = \case
        DODLSOAscending -> "ASCENDING"
        DODLSODescending -> "DESCENDING"

instance FromJSON DfareportingOrderDocumentsListSortOrder where
    parseJSON = parseJSONText "DfareportingOrderDocumentsListSortOrder"

instance ToJSON DfareportingOrderDocumentsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingPlacementsListSortOrder
    = DPLSOAscending
      -- ^ @ASCENDING@
    | DPLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementsListSortOrder

instance FromText DfareportingPlacementsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DPLSOAscending
        "DESCENDING" -> Just DPLSODescending
        _ -> Nothing

instance ToText DfareportingPlacementsListSortOrder where
    toText = \case
        DPLSOAscending -> "ASCENDING"
        DPLSODescending -> "DESCENDING"

instance FromJSON DfareportingPlacementsListSortOrder where
    parseJSON = parseJSONText "DfareportingPlacementsListSortOrder"

instance ToJSON DfareportingPlacementsListSortOrder where
    toJSON = toJSONText

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

instance FromJSON ObjectFilterStatus where
    parseJSON = parseJSONText "ObjectFilterStatus"

instance ToJSON ObjectFilterStatus where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingAdsListSortField
    = DALSFID
      -- ^ @ID@
    | DALSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdsListSortField

instance FromText DfareportingAdsListSortField where
    fromText = \case
        "ID" -> Just DALSFID
        "NAME" -> Just DALSFName
        _ -> Nothing

instance ToText DfareportingAdsListSortField where
    toText = \case
        DALSFID -> "ID"
        DALSFName -> "NAME"

instance FromJSON DfareportingAdsListSortField where
    parseJSON = parseJSONText "DfareportingAdsListSortField"

instance ToJSON DfareportingAdsListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data SortOrder
    = SOAscending
      -- ^ @ASCENDING@
    | SODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SortOrder

instance FromText SortOrder where
    fromText = \case
        "ASCENDING" -> Just SOAscending
        "DESCENDING" -> Just SODescending
        _ -> Nothing

instance ToText SortOrder where
    toText = \case
        SOAscending -> "ASCENDING"
        SODescending -> "DESCENDING"

instance FromJSON SortOrder where
    parseJSON = parseJSONText "SortOrder"

instance ToJSON SortOrder where
    toJSON = toJSONText

data AccountProfilesItem
    = AccountProfileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | AccountProfileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountProfilesItem

instance FromText AccountProfilesItem where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just AccountProfileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just AccountProfileStandard
        _ -> Nothing

instance ToText AccountProfilesItem where
    toText = \case
        AccountProfileBasic -> "ACCOUNT_PROFILE_BASIC"
        AccountProfileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountProfilesItem where
    parseJSON = parseJSONText "AccountProfilesItem"

instance ToJSON AccountProfilesItem where
    toJSON = toJSONText

-- | Directory site contact role.
data Role
    = Admin
      -- ^ @ADMIN@
    | Edit
      -- ^ @EDIT@
    | View
      -- ^ @VIEW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Role

instance FromText Role where
    fromText = \case
        "ADMIN" -> Just Admin
        "EDIT" -> Just Edit
        "VIEW" -> Just View
        _ -> Nothing

instance ToText Role where
    toText = \case
        Admin -> "ADMIN"
        Edit -> "EDIT"
        View -> "VIEW"

instance FromJSON Role where
    parseJSON = parseJSONText "Role"

instance ToJSON Role where
    toJSON = toJSONText

-- | Offset top unit for an asset. This is a read-only field if the asset
-- displayType is ASSET_DISPLAY_TYPE_OVERLAY. Applicable to the following
-- creative types: all RICH_MEDIA.
data PositionTopUnit
    = OffsetUnitPercent
      -- ^ @OFFSET_UNIT_PERCENT@
    | OffsetUnitPixel
      -- ^ @OFFSET_UNIT_PIXEL@
    | OffsetUnitPixelFromCenter
      -- ^ @OFFSET_UNIT_PIXEL_FROM_CENTER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PositionTopUnit

instance FromText PositionTopUnit where
    fromText = \case
        "OFFSET_UNIT_PERCENT" -> Just OffsetUnitPercent
        "OFFSET_UNIT_PIXEL" -> Just OffsetUnitPixel
        "OFFSET_UNIT_PIXEL_FROM_CENTER" -> Just OffsetUnitPixelFromCenter
        _ -> Nothing

instance ToText PositionTopUnit where
    toText = \case
        OffsetUnitPercent -> "OFFSET_UNIT_PERCENT"
        OffsetUnitPixel -> "OFFSET_UNIT_PIXEL"
        OffsetUnitPixelFromCenter -> "OFFSET_UNIT_PIXEL_FROM_CENTER"

instance FromJSON PositionTopUnit where
    parseJSON = parseJSONText "PositionTopUnit"

instance ToJSON PositionTopUnit where
    toJSON = toJSONText

-- | Code type used for cache busting in the generated tag.
data CacheBustingType
    = ActiveServerPage
      -- ^ @ACTIVE_SERVER_PAGE@
    | ColdFusion
      -- ^ @COLD_FUSION@
    | Javascript
      -- ^ @JAVASCRIPT@
    | Jsp
      -- ^ @JSP@
    | Php
      -- ^ @PHP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CacheBustingType

instance FromText CacheBustingType where
    fromText = \case
        "ACTIVE_SERVER_PAGE" -> Just ActiveServerPage
        "COLD_FUSION" -> Just ColdFusion
        "JAVASCRIPT" -> Just Javascript
        "JSP" -> Just Jsp
        "PHP" -> Just Php
        _ -> Nothing

instance ToText CacheBustingType where
    toText = \case
        ActiveServerPage -> "ACTIVE_SERVER_PAGE"
        ColdFusion -> "COLD_FUSION"
        Javascript -> "JAVASCRIPT"
        Jsp -> "JSP"
        Php -> "PHP"

instance FromJSON CacheBustingType where
    parseJSON = parseJSONText "CacheBustingType"

instance ToJSON CacheBustingType where
    toJSON = toJSONText

-- | The delivery type for the recipient.
data DeliveryType
    = Attachment
      -- ^ @ATTACHMENT@
    | Link
      -- ^ @LINK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeliveryType

instance FromText DeliveryType where
    fromText = \case
        "ATTACHMENT" -> Just Attachment
        "LINK" -> Just Link
        _ -> Nothing

instance ToText DeliveryType where
    toText = \case
        Attachment -> "ATTACHMENT"
        Link -> "LINK"

instance FromJSON DeliveryType where
    parseJSON = parseJSONText "DeliveryType"

instance ToJSON DeliveryType where
    toJSON = toJSONText

-- | Offset left unit for an asset. This is a read-only field. Applicable to
-- the following creative types: all RICH_MEDIA.
data PositionLeftUnit
    = PLUOffsetUnitPercent
      -- ^ @OFFSET_UNIT_PERCENT@
    | PLUOffsetUnitPixel
      -- ^ @OFFSET_UNIT_PIXEL@
    | PLUOffsetUnitPixelFromCenter
      -- ^ @OFFSET_UNIT_PIXEL_FROM_CENTER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PositionLeftUnit

instance FromText PositionLeftUnit where
    fromText = \case
        "OFFSET_UNIT_PERCENT" -> Just PLUOffsetUnitPercent
        "OFFSET_UNIT_PIXEL" -> Just PLUOffsetUnitPixel
        "OFFSET_UNIT_PIXEL_FROM_CENTER" -> Just PLUOffsetUnitPixelFromCenter
        _ -> Nothing

instance ToText PositionLeftUnit where
    toText = \case
        PLUOffsetUnitPercent -> "OFFSET_UNIT_PERCENT"
        PLUOffsetUnitPixel -> "OFFSET_UNIT_PIXEL"
        PLUOffsetUnitPixelFromCenter -> "OFFSET_UNIT_PIXEL_FROM_CENTER"

instance FromJSON PositionLeftUnit where
    parseJSON = parseJSONText "PositionLeftUnit"

instance ToJSON PositionLeftUnit where
    toJSON = toJSONText

-- | Select only placements with this payment source.
data PaymentSource
    = PSPlacementAgencyPaid
      -- ^ @PLACEMENT_AGENCY_PAID@
    | PSPlacementPublisherPaid
      -- ^ @PLACEMENT_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PaymentSource

instance FromText PaymentSource where
    fromText = \case
        "PLACEMENT_AGENCY_PAID" -> Just PSPlacementAgencyPaid
        "PLACEMENT_PUBLISHER_PAID" -> Just PSPlacementPublisherPaid
        _ -> Nothing

instance ToText PaymentSource where
    toText = \case
        PSPlacementAgencyPaid -> "PLACEMENT_AGENCY_PAID"
        PSPlacementPublisherPaid -> "PLACEMENT_PUBLISHER_PAID"

instance FromJSON PaymentSource where
    parseJSON = parseJSONText "PaymentSource"

instance ToJSON PaymentSource where
    toJSON = toJSONText

-- | Type of creative rotation. Can be used to specify whether to use
-- sequential or random rotation.
data CreativeRotationType
    = CreativeRotationTypeRandom
      -- ^ @CREATIVE_ROTATION_TYPE_RANDOM@
    | CreativeRotationTypeSequential
      -- ^ @CREATIVE_ROTATION_TYPE_SEQUENTIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeRotationType

instance FromText CreativeRotationType where
    fromText = \case
        "CREATIVE_ROTATION_TYPE_RANDOM" -> Just CreativeRotationTypeRandom
        "CREATIVE_ROTATION_TYPE_SEQUENTIAL" -> Just CreativeRotationTypeSequential
        _ -> Nothing

instance ToText CreativeRotationType where
    toText = \case
        CreativeRotationTypeRandom -> "CREATIVE_ROTATION_TYPE_RANDOM"
        CreativeRotationTypeSequential -> "CREATIVE_ROTATION_TYPE_SEQUENTIAL"

instance FromJSON CreativeRotationType where
    parseJSON = parseJSONText "CreativeRotationType"

instance ToJSON CreativeRotationType where
    toJSON = toJSONText

-- | Possible alignments for an asset. This is a read-only field. Applicable
-- to the following creative types: RICH_MEDIA_MULTI_FLOATING.
data Alignment
    = AlignmentBottom
      -- ^ @ALIGNMENT_BOTTOM@
    | AlignmentLeft
      -- ^ @ALIGNMENT_LEFT@
    | AlignmentRight
      -- ^ @ALIGNMENT_RIGHT@
    | AlignmentTop
      -- ^ @ALIGNMENT_TOP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alignment

instance FromText Alignment where
    fromText = \case
        "ALIGNMENT_BOTTOM" -> Just AlignmentBottom
        "ALIGNMENT_LEFT" -> Just AlignmentLeft
        "ALIGNMENT_RIGHT" -> Just AlignmentRight
        "ALIGNMENT_TOP" -> Just AlignmentTop
        _ -> Nothing

instance ToText Alignment where
    toText = \case
        AlignmentBottom -> "ALIGNMENT_BOTTOM"
        AlignmentLeft -> "ALIGNMENT_LEFT"
        AlignmentRight -> "ALIGNMENT_RIGHT"
        AlignmentTop -> "ALIGNMENT_TOP"

instance FromJSON Alignment where
    parseJSON = parseJSONText "Alignment"

instance ToJSON Alignment where
    toJSON = toJSONText

-- | Product from which this remarketing list was originated.
data ListSource
    = LSRemarketingListSourceDBm
      -- ^ @REMARKETING_LIST_SOURCE_DBM@
    | LSRemarketingListSourceDfa
      -- ^ @REMARKETING_LIST_SOURCE_DFA@
    | LSRemarketingListSourceDmp
      -- ^ @REMARKETING_LIST_SOURCE_DMP@
    | LSRemarketingListSourceGa
      -- ^ @REMARKETING_LIST_SOURCE_GA@
    | LSRemarketingListSourceOther
      -- ^ @REMARKETING_LIST_SOURCE_OTHER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ListSource

instance FromText ListSource where
    fromText = \case
        "REMARKETING_LIST_SOURCE_DBM" -> Just LSRemarketingListSourceDBm
        "REMARKETING_LIST_SOURCE_DFA" -> Just LSRemarketingListSourceDfa
        "REMARKETING_LIST_SOURCE_DMP" -> Just LSRemarketingListSourceDmp
        "REMARKETING_LIST_SOURCE_GA" -> Just LSRemarketingListSourceGa
        "REMARKETING_LIST_SOURCE_OTHER" -> Just LSRemarketingListSourceOther
        _ -> Nothing

instance ToText ListSource where
    toText = \case
        LSRemarketingListSourceDBm -> "REMARKETING_LIST_SOURCE_DBM"
        LSRemarketingListSourceDfa -> "REMARKETING_LIST_SOURCE_DFA"
        LSRemarketingListSourceDmp -> "REMARKETING_LIST_SOURCE_DMP"
        LSRemarketingListSourceGa -> "REMARKETING_LIST_SOURCE_GA"
        LSRemarketingListSourceOther -> "REMARKETING_LIST_SOURCE_OTHER"

instance FromJSON ListSource where
    parseJSON = parseJSONText "ListSource"

instance ToJSON ListSource where
    toJSON = toJSONText

-- | List population term type determines the applicable fields in this
-- object. If left unset or set to CUSTOM_VARIABLE_TERM, then variableName,
-- variableFriendlyName, operator, value, and negation are applicable. If
-- set to LIST_MEMBERSHIP_TERM then remarketingListId and contains are
-- applicable. If set to REFERRER_TERM then operator, value, and negation
-- are applicable.
data ListPopulationTermType
    = CustomVariableTerm
      -- ^ @CUSTOM_VARIABLE_TERM@
    | ListMembershipTerm
      -- ^ @LIST_MEMBERSHIP_TERM@
    | ReferrerTerm
      -- ^ @REFERRER_TERM@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ListPopulationTermType

instance FromText ListPopulationTermType where
    fromText = \case
        "CUSTOM_VARIABLE_TERM" -> Just CustomVariableTerm
        "LIST_MEMBERSHIP_TERM" -> Just ListMembershipTerm
        "REFERRER_TERM" -> Just ReferrerTerm
        _ -> Nothing

instance ToText ListPopulationTermType where
    toText = \case
        CustomVariableTerm -> "CUSTOM_VARIABLE_TERM"
        ListMembershipTerm -> "LIST_MEMBERSHIP_TERM"
        ReferrerTerm -> "REFERRER_TERM"

instance FromJSON ListPopulationTermType where
    parseJSON = parseJSONText "ListPopulationTermType"

instance ToJSON ListPopulationTermType where
    toJSON = toJSONText

data DaysOfWeekItem
    = Friday
      -- ^ @FRIDAY@
    | Monday
      -- ^ @MONDAY@
    | Saturday
      -- ^ @SATURDAY@
    | Sunday
      -- ^ @SUNDAY@
    | Thursday
      -- ^ @THURSDAY@
    | Tuesday
      -- ^ @TUESDAY@
    | Wednesday
      -- ^ @WEDNESDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DaysOfWeekItem

instance FromText DaysOfWeekItem where
    fromText = \case
        "FRIDAY" -> Just Friday
        "MONDAY" -> Just Monday
        "SATURDAY" -> Just Saturday
        "SUNDAY" -> Just Sunday
        "THURSDAY" -> Just Thursday
        "TUESDAY" -> Just Tuesday
        "WEDNESDAY" -> Just Wednesday
        _ -> Nothing

instance ToText DaysOfWeekItem where
    toText = \case
        Friday -> "FRIDAY"
        Monday -> "MONDAY"
        Saturday -> "SATURDAY"
        Sunday -> "SUNDAY"
        Thursday -> "THURSDAY"
        Tuesday -> "TUESDAY"
        Wednesday -> "WEDNESDAY"

instance FromJSON DaysOfWeekItem where
    parseJSON = parseJSONText "DaysOfWeekItem"

instance ToJSON DaysOfWeekItem where
    toJSON = toJSONText

-- | Group type of this inventory item if it represents a placement group. Is
-- null otherwise. There are two type of placement groups:
-- PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE is a simple group of inventory
-- items that acts as a single pricing point for a group of tags.
-- PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK is a group of inventory items
-- that not only acts as a single pricing point, but also assumes that all
-- the tags in it will be served at the same time. A roadblock requires one
-- of its assigned inventory items to be marked as primary.
data GroupType
    = PlanningPlacementGroupTypePackage
      -- ^ @PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE@
    | PlanningPlacementGroupTypeRoadblock
      -- ^ @PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GroupType

instance FromText GroupType where
    fromText = \case
        "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE" -> Just PlanningPlacementGroupTypePackage
        "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK" -> Just PlanningPlacementGroupTypeRoadblock
        _ -> Nothing

instance ToText GroupType where
    toText = \case
        PlanningPlacementGroupTypePackage -> "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE"
        PlanningPlacementGroupTypeRoadblock -> "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK"

instance FromJSON GroupType where
    parseJSON = parseJSONText "GroupType"

instance ToJSON GroupType where
    toJSON = toJSONText

-- | The field by which to sort the list.
data DfareportingReportsFilesListSortField
    = DRFLSFID
      -- ^ @ID@
      -- Sort by file ID.
    | DRFLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastmodifiedAt\' field.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingReportsFilesListSortField

instance FromText DfareportingReportsFilesListSortField where
    fromText = \case
        "ID" -> Just DRFLSFID
        "LAST_MODIFIED_TIME" -> Just DRFLSFLastModifiedTime
        _ -> Nothing

instance ToText DfareportingReportsFilesListSortField where
    toText = \case
        DRFLSFID -> "ID"
        DRFLSFLastModifiedTime -> "LAST_MODIFIED_TIME"

instance FromJSON DfareportingReportsFilesListSortField where
    parseJSON = parseJSONText "DfareportingReportsFilesListSortField"

instance ToJSON DfareportingReportsFilesListSortField where
    toJSON = toJSONText

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

instance FromJSON FloodlightActivityFloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivityFloodlightActivityGroupType"

instance ToJSON FloodlightActivityFloodlightActivityGroupType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingSitesListSortField
    = DSLSFID
      -- ^ @ID@
    | DSLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingSitesListSortField

instance FromText DfareportingSitesListSortField where
    fromText = \case
        "ID" -> Just DSLSFID
        "NAME" -> Just DSLSFName
        _ -> Nothing

instance ToText DfareportingSitesListSortField where
    toText = \case
        DSLSFID -> "ID"
        DSLSFName -> "NAME"

instance FromJSON DfareportingSitesListSortField where
    parseJSON = parseJSONText "DfareportingSitesListSortField"

instance ToJSON DfareportingSitesListSortField where
    toJSON = toJSONText

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

instance FromJSON SortedDimensionSortOrder where
    parseJSON = parseJSONText "SortedDimensionSortOrder"

instance ToJSON SortedDimensionSortOrder where
    toJSON = toJSONText

-- | The date range relative to the date of when the report is run.
data RelativeDateRange
    = Last24Months
      -- ^ @LAST_24_MONTHS@
    | Last30Days
      -- ^ @LAST_30_DAYS@
    | Last365Days
      -- ^ @LAST_365_DAYS@
    | Last7Days
      -- ^ @LAST_7_DAYS@
    | Last90Days
      -- ^ @LAST_90_DAYS@
    | MonthToDate
      -- ^ @MONTH_TO_DATE@
    | PreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | PreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | PreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | PreviousYear
      -- ^ @PREVIOUS_YEAR@
    | QuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | Today
      -- ^ @TODAY@
    | WeekToDate
      -- ^ @WEEK_TO_DATE@
    | YearToDate
      -- ^ @YEAR_TO_DATE@
    | Yesterday
      -- ^ @YESTERDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RelativeDateRange

instance FromText RelativeDateRange where
    fromText = \case
        "LAST_24_MONTHS" -> Just Last24Months
        "LAST_30_DAYS" -> Just Last30Days
        "LAST_365_DAYS" -> Just Last365Days
        "LAST_7_DAYS" -> Just Last7Days
        "LAST_90_DAYS" -> Just Last90Days
        "MONTH_TO_DATE" -> Just MonthToDate
        "PREVIOUS_MONTH" -> Just PreviousMonth
        "PREVIOUS_QUARTER" -> Just PreviousQuarter
        "PREVIOUS_WEEK" -> Just PreviousWeek
        "PREVIOUS_YEAR" -> Just PreviousYear
        "QUARTER_TO_DATE" -> Just QuarterToDate
        "TODAY" -> Just Today
        "WEEK_TO_DATE" -> Just WeekToDate
        "YEAR_TO_DATE" -> Just YearToDate
        "YESTERDAY" -> Just Yesterday
        _ -> Nothing

instance ToText RelativeDateRange where
    toText = \case
        Last24Months -> "LAST_24_MONTHS"
        Last30Days -> "LAST_30_DAYS"
        Last365Days -> "LAST_365_DAYS"
        Last7Days -> "LAST_7_DAYS"
        Last90Days -> "LAST_90_DAYS"
        MonthToDate -> "MONTH_TO_DATE"
        PreviousMonth -> "PREVIOUS_MONTH"
        PreviousQuarter -> "PREVIOUS_QUARTER"
        PreviousWeek -> "PREVIOUS_WEEK"
        PreviousYear -> "PREVIOUS_YEAR"
        QuarterToDate -> "QUARTER_TO_DATE"
        Today -> "TODAY"
        WeekToDate -> "WEEK_TO_DATE"
        YearToDate -> "YEAR_TO_DATE"
        Yesterday -> "YESTERDAY"

instance FromJSON RelativeDateRange where
    parseJSON = parseJSONText "RelativeDateRange"

instance ToJSON RelativeDateRange where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingCampaignsListSortField
    = DID
      -- ^ @ID@
    | DName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCampaignsListSortField

instance FromText DfareportingCampaignsListSortField where
    fromText = \case
        "ID" -> Just DID
        "NAME" -> Just DName
        _ -> Nothing

instance ToText DfareportingCampaignsListSortField where
    toText = \case
        DID -> "ID"
        DName -> "NAME"

instance FromJSON DfareportingCampaignsListSortField where
    parseJSON = parseJSONText "DfareportingCampaignsListSortField"

instance ToJSON DfareportingCampaignsListSortField where
    toJSON = toJSONText

-- | Placement cap cost option.
data CapCostOption
    = CapCostCumulative
      -- ^ @CAP_COST_CUMULATIVE@
    | CapCostMonthly
      -- ^ @CAP_COST_MONTHLY@
    | CapCostNone
      -- ^ @CAP_COST_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CapCostOption

instance FromText CapCostOption where
    fromText = \case
        "CAP_COST_CUMULATIVE" -> Just CapCostCumulative
        "CAP_COST_MONTHLY" -> Just CapCostMonthly
        "CAP_COST_NONE" -> Just CapCostNone
        _ -> Nothing

instance ToText CapCostOption where
    toText = \case
        CapCostCumulative -> "CAP_COST_CUMULATIVE"
        CapCostMonthly -> "CAP_COST_MONTHLY"
        CapCostNone -> "CAP_COST_NONE"

instance FromJSON CapCostOption where
    parseJSON = parseJSONText "CapCostOption"

instance ToJSON CapCostOption where
    toJSON = toJSONText

-- | The scope that defines which results are returned, default is \'MINE\'.
data Scope
    = SAll
      -- ^ @ALL@
      -- All reports in account.
    | SMine
      -- ^ @MINE@
      -- My reports.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Scope

instance FromText Scope where
    fromText = \case
        "ALL" -> Just SAll
        "MINE" -> Just SMine
        _ -> Nothing

instance ToText Scope where
    toText = \case
        SAll -> "ALL"
        SMine -> "MINE"

instance FromJSON Scope where
    parseJSON = parseJSONText "Scope"

instance ToJSON Scope where
    toJSON = toJSONText

-- | The field by which to sort the list.
data DfareportingReportsListSortField
    = DRLSFID
      -- ^ @ID@
      -- Sort by report ID.
    | DRLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastModifiedTime\' field.
    | DRLSFName
      -- ^ @NAME@
      -- Sort by name of reports.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingReportsListSortField

instance FromText DfareportingReportsListSortField where
    fromText = \case
        "ID" -> Just DRLSFID
        "LAST_MODIFIED_TIME" -> Just DRLSFLastModifiedTime
        "NAME" -> Just DRLSFName
        _ -> Nothing

instance ToText DfareportingReportsListSortField where
    toText = \case
        DRLSFID -> "ID"
        DRLSFLastModifiedTime -> "LAST_MODIFIED_TIME"
        DRLSFName -> "NAME"

instance FromJSON DfareportingReportsListSortField where
    parseJSON = parseJSONText "DfareportingReportsListSortField"

instance ToJSON DfareportingReportsListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingFloodlightActivityGroupsListSortOrder
    = DFAGLSOAscending
      -- ^ @ASCENDING@
    | DFAGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFloodlightActivityGroupsListSortOrder

instance FromText DfareportingFloodlightActivityGroupsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DFAGLSOAscending
        "DESCENDING" -> Just DFAGLSODescending
        _ -> Nothing

instance ToText DfareportingFloodlightActivityGroupsListSortOrder where
    toText = \case
        DFAGLSOAscending -> "ASCENDING"
        DFAGLSODescending -> "DESCENDING"

instance FromJSON DfareportingFloodlightActivityGroupsListSortOrder where
    parseJSON = parseJSONText "DfareportingFloodlightActivityGroupsListSortOrder"

instance ToJSON DfareportingFloodlightActivityGroupsListSortOrder where
    toJSON = toJSONText

-- | Select only floodlight activities with the specified floodlight activity
-- group type.
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

instance FromJSON FloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivityGroupType"

instance ToJSON FloodlightActivityGroupType where
    toJSON = toJSONText

-- | Type of the floodlight activity group. This is a required field that is
-- read-only after insertion.
data FloodlightActivityGroupType
    = FCounter
      -- ^ @COUNTER@
    | FSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupType

instance FromText FloodlightActivityGroupType where
    fromText = \case
        "COUNTER" -> Just FCounter
        "SALE" -> Just FSale
        _ -> Nothing

instance ToText FloodlightActivityGroupType where
    toText = \case
        FCounter -> "COUNTER"
        FSale -> "SALE"

instance FromJSON FloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivityGroupType"

instance ToJSON FloodlightActivityGroupType where
    toJSON = toJSONText

-- | Profile for this account. This is a read-only field that can be left
-- blank.
data AccountProfile
    = APAccountProfileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | APAccountProfileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountProfile

instance FromText AccountProfile where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just APAccountProfileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just APAccountProfileStandard
        _ -> Nothing

instance ToText AccountProfile where
    toText = \case
        APAccountProfileBasic -> "ACCOUNT_PROFILE_BASIC"
        APAccountProfileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountProfile where
    parseJSON = parseJSONText "AccountProfile"

instance ToJSON AccountProfile where
    toJSON = toJSONText

-- | Type of rich media asset. This is a read-only field. Applicable to the
-- following creative types: all RICH_MEDIA.
data DisplayType
    = AssetDisplayTypeExpanding
      -- ^ @ASSET_DISPLAY_TYPE_EXPANDING@
    | AssetDisplayTypeFlashInFlash
      -- ^ @ASSET_DISPLAY_TYPE_FLASH_IN_FLASH@
    | AssetDisplayTypeFlashInFlashExpanding
      -- ^ @ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING@
    | AssetDisplayTypeFloating
      -- ^ @ASSET_DISPLAY_TYPE_FLOATING@
    | AssetDisplayTypeInpage
      -- ^ @ASSET_DISPLAY_TYPE_INPAGE@
    | AssetDisplayTypeOverlay
      -- ^ @ASSET_DISPLAY_TYPE_OVERLAY@
    | AssetDisplayTypePeelDown
      -- ^ @ASSET_DISPLAY_TYPE_PEEL_DOWN@
    | AssetDisplayTypeVpaidLinear
      -- ^ @ASSET_DISPLAY_TYPE_VPAID_LINEAR@
    | AssetDisplayTypeVpaidNonLinear
      -- ^ @ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DisplayType

instance FromText DisplayType where
    fromText = \case
        "ASSET_DISPLAY_TYPE_EXPANDING" -> Just AssetDisplayTypeExpanding
        "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH" -> Just AssetDisplayTypeFlashInFlash
        "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING" -> Just AssetDisplayTypeFlashInFlashExpanding
        "ASSET_DISPLAY_TYPE_FLOATING" -> Just AssetDisplayTypeFloating
        "ASSET_DISPLAY_TYPE_INPAGE" -> Just AssetDisplayTypeInpage
        "ASSET_DISPLAY_TYPE_OVERLAY" -> Just AssetDisplayTypeOverlay
        "ASSET_DISPLAY_TYPE_PEEL_DOWN" -> Just AssetDisplayTypePeelDown
        "ASSET_DISPLAY_TYPE_VPAID_LINEAR" -> Just AssetDisplayTypeVpaidLinear
        "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR" -> Just AssetDisplayTypeVpaidNonLinear
        _ -> Nothing

instance ToText DisplayType where
    toText = \case
        AssetDisplayTypeExpanding -> "ASSET_DISPLAY_TYPE_EXPANDING"
        AssetDisplayTypeFlashInFlash -> "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH"
        AssetDisplayTypeFlashInFlashExpanding -> "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING"
        AssetDisplayTypeFloating -> "ASSET_DISPLAY_TYPE_FLOATING"
        AssetDisplayTypeInpage -> "ASSET_DISPLAY_TYPE_INPAGE"
        AssetDisplayTypeOverlay -> "ASSET_DISPLAY_TYPE_OVERLAY"
        AssetDisplayTypePeelDown -> "ASSET_DISPLAY_TYPE_PEEL_DOWN"
        AssetDisplayTypeVpaidLinear -> "ASSET_DISPLAY_TYPE_VPAID_LINEAR"
        AssetDisplayTypeVpaidNonLinear -> "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR"

instance FromJSON DisplayType where
    parseJSON = parseJSONText "DisplayType"

instance ToJSON DisplayType where
    toJSON = toJSONText

-- | Directory site contact type.
data DirectorySiteContactType
    = Billing
      -- ^ @BILLING@
    | Other
      -- ^ @OTHER@
    | Sales
      -- ^ @SALES@
    | Technical
      -- ^ @TECHNICAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactType

instance FromText DirectorySiteContactType where
    fromText = \case
        "BILLING" -> Just Billing
        "OTHER" -> Just Other
        "SALES" -> Just Sales
        "TECHNICAL" -> Just Technical
        _ -> Nothing

instance ToText DirectorySiteContactType where
    toText = \case
        Billing -> "BILLING"
        Other -> "OTHER"
        Sales -> "SALES"
        Technical -> "TECHNICAL"

instance FromJSON DirectorySiteContactType where
    parseJSON = parseJSONText "DirectorySiteContactType"

instance ToJSON DirectorySiteContactType where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingDirectorySitesListSortOrder
    = DDSLSOAscending
      -- ^ @ASCENDING@
    | DDSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingDirectorySitesListSortOrder

instance FromText DfareportingDirectorySitesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DDSLSOAscending
        "DESCENDING" -> Just DDSLSODescending
        _ -> Nothing

instance ToText DfareportingDirectorySitesListSortOrder where
    toText = \case
        DDSLSOAscending -> "ASCENDING"
        DDSLSODescending -> "DESCENDING"

instance FromJSON DfareportingDirectorySitesListSortOrder where
    parseJSON = parseJSONText "DfareportingDirectorySitesListSortOrder"

instance ToJSON DfareportingDirectorySitesListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingOrdersListSortField
    = DOLSFID
      -- ^ @ID@
    | DOLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingOrdersListSortField

instance FromText DfareportingOrdersListSortField where
    fromText = \case
        "ID" -> Just DOLSFID
        "NAME" -> Just DOLSFName
        _ -> Nothing

instance ToText DfareportingOrdersListSortField where
    toText = \case
        DOLSFID -> "ID"
        DOLSFName -> "NAME"

instance FromJSON DfareportingOrdersListSortField where
    parseJSON = parseJSONText "DfareportingOrdersListSortField"

instance ToJSON DfareportingOrdersListSortField where
    toJSON = toJSONText

-- | Rich media child asset type. This is a read-only field. Applicable to
-- the following creative types: all VPAID.
data ChildAssetType
    = ChildAssetTypeData
      -- ^ @CHILD_ASSET_TYPE_DATA@
    | ChildAssetTypeFlash
      -- ^ @CHILD_ASSET_TYPE_FLASH@
    | ChildAssetTypeImage
      -- ^ @CHILD_ASSET_TYPE_IMAGE@
    | ChildAssetTypeVideo
      -- ^ @CHILD_ASSET_TYPE_VIDEO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChildAssetType

instance FromText ChildAssetType where
    fromText = \case
        "CHILD_ASSET_TYPE_DATA" -> Just ChildAssetTypeData
        "CHILD_ASSET_TYPE_FLASH" -> Just ChildAssetTypeFlash
        "CHILD_ASSET_TYPE_IMAGE" -> Just ChildAssetTypeImage
        "CHILD_ASSET_TYPE_VIDEO" -> Just ChildAssetTypeVideo
        _ -> Nothing

instance ToText ChildAssetType where
    toText = \case
        ChildAssetTypeData -> "CHILD_ASSET_TYPE_DATA"
        ChildAssetTypeFlash -> "CHILD_ASSET_TYPE_FLASH"
        ChildAssetTypeImage -> "CHILD_ASSET_TYPE_IMAGE"
        ChildAssetTypeVideo -> "CHILD_ASSET_TYPE_VIDEO"

instance FromJSON ChildAssetType where
    parseJSON = parseJSONText "ChildAssetType"

instance ToJSON ChildAssetType where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingAdvertiserGroupsListSortOrder
    = DAGLSOAscending
      -- ^ @ASCENDING@
    | DAGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdvertiserGroupsListSortOrder

instance FromText DfareportingAdvertiserGroupsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DAGLSOAscending
        "DESCENDING" -> Just DAGLSODescending
        _ -> Nothing

instance ToText DfareportingAdvertiserGroupsListSortOrder where
    toText = \case
        DAGLSOAscending -> "ASCENDING"
        DAGLSODescending -> "DESCENDING"

instance FromJSON DfareportingAdvertiserGroupsListSortOrder where
    parseJSON = parseJSONText "DfareportingAdvertiserGroupsListSortOrder"

instance ToJSON DfareportingAdvertiserGroupsListSortOrder where
    toJSON = toJSONText

-- | Third-party placement status.
data PlacementStatus
    = AcknowledgeAcceptance
      -- ^ @ACKNOWLEDGE_ACCEPTANCE@
    | AcknowledgeRejection
      -- ^ @ACKNOWLEDGE_REJECTION@
    | Draft
      -- ^ @DRAFT@
    | PaymentAccepted
      -- ^ @PAYMENT_ACCEPTED@
    | PaymentRejected
      -- ^ @PAYMENT_REJECTED@
    | PendingReview
      -- ^ @PENDING_REVIEW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementStatus

instance FromText PlacementStatus where
    fromText = \case
        "ACKNOWLEDGE_ACCEPTANCE" -> Just AcknowledgeAcceptance
        "ACKNOWLEDGE_REJECTION" -> Just AcknowledgeRejection
        "DRAFT" -> Just Draft
        "PAYMENT_ACCEPTED" -> Just PaymentAccepted
        "PAYMENT_REJECTED" -> Just PaymentRejected
        "PENDING_REVIEW" -> Just PendingReview
        _ -> Nothing

instance ToText PlacementStatus where
    toText = \case
        AcknowledgeAcceptance -> "ACKNOWLEDGE_ACCEPTANCE"
        AcknowledgeRejection -> "ACKNOWLEDGE_REJECTION"
        Draft -> "DRAFT"
        PaymentAccepted -> "PAYMENT_ACCEPTED"
        PaymentRejected -> "PAYMENT_REJECTED"
        PendingReview -> "PENDING_REVIEW"

instance FromJSON PlacementStatus where
    parseJSON = parseJSONText "PlacementStatus"

instance ToJSON PlacementStatus where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingAccountsListSortField
    = DFAID
      -- ^ @ID@
    | DFAName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAccountsListSortField

instance FromText DfareportingAccountsListSortField where
    fromText = \case
        "ID" -> Just DFAID
        "NAME" -> Just DFAName
        _ -> Nothing

instance ToText DfareportingAccountsListSortField where
    toText = \case
        DFAID -> "ID"
        DFAName -> "NAME"

instance FromJSON DfareportingAccountsListSortField where
    parseJSON = parseJSONText "DfareportingAccountsListSortField"

instance ToJSON DfareportingAccountsListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingProjectsListSortOrder
    = DFAAscending
      -- ^ @ASCENDING@
    | DFADescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingProjectsListSortOrder

instance FromText DfareportingProjectsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DFAAscending
        "DESCENDING" -> Just DFADescending
        _ -> Nothing

instance ToText DfareportingProjectsListSortOrder where
    toText = \case
        DFAAscending -> "ASCENDING"
        DFADescending -> "DESCENDING"

instance FromJSON DfareportingProjectsListSortOrder where
    parseJSON = parseJSONText "DfareportingProjectsListSortOrder"

instance ToJSON DfareportingProjectsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingAdvertisersListSortOrder
    = DALSOAAscending
      -- ^ @ASCENDING@
    | DALSOADescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdvertisersListSortOrder

instance FromText DfareportingAdvertisersListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DALSOAAscending
        "DESCENDING" -> Just DALSOADescending
        _ -> Nothing

instance ToText DfareportingAdvertisersListSortOrder where
    toText = \case
        DALSOAAscending -> "ASCENDING"
        DALSOADescending -> "DESCENDING"

instance FromJSON DfareportingAdvertisersListSortOrder where
    parseJSON = parseJSONText "DfareportingAdvertisersListSortOrder"

instance ToJSON DfareportingAdvertisersListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingUserRolesListSortOrder
    = DURLSOAscending
      -- ^ @ASCENDING@
    | DURLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingUserRolesListSortOrder

instance FromText DfareportingUserRolesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DURLSOAscending
        "DESCENDING" -> Just DURLSODescending
        _ -> Nothing

instance ToText DfareportingUserRolesListSortOrder where
    toText = \case
        DURLSOAscending -> "ASCENDING"
        DURLSODescending -> "DESCENDING"

instance FromJSON DfareportingUserRolesListSortOrder where
    parseJSON = parseJSONText "DfareportingUserRolesListSortOrder"

instance ToJSON DfareportingUserRolesListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingRemarketingListsListSortField
    = DRLLSFID
      -- ^ @ID@
    | DRLLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingRemarketingListsListSortField

instance FromText DfareportingRemarketingListsListSortField where
    fromText = \case
        "ID" -> Just DRLLSFID
        "NAME" -> Just DRLLSFName
        _ -> Nothing

instance ToText DfareportingRemarketingListsListSortField where
    toText = \case
        DRLLSFID -> "ID"
        DRLLSFName -> "NAME"

instance FromJSON DfareportingRemarketingListsListSortField where
    parseJSON = parseJSONText "DfareportingRemarketingListsListSortField"

instance ToJSON DfareportingRemarketingListsListSortField where
    toJSON = toJSONText

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

instance FromJSON ReportFormat where
    parseJSON = parseJSONText "ReportFormat"

instance ToJSON ReportFormat where
    toJSON = toJSONText

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

instance FromJSON CreativeArtworkType where
    parseJSON = parseJSONText "CreativeArtworkType"

instance ToJSON CreativeArtworkType where
    toJSON = toJSONText

-- | Types of attribution options for natural search conversions.
data NATuralSearchConversionAttributionOption
    = ExcludeNATuralSearchConversionAttribution
      -- ^ @EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION@
    | IncludeNATuralSearchConversionAttribution
      -- ^ @INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION@
    | IncludeNATuralSearchTieredConversionAttribution
      -- ^ @INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable NATuralSearchConversionAttributionOption

instance FromText NATuralSearchConversionAttributionOption where
    fromText = \case
        "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Just ExcludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Just IncludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION" -> Just IncludeNATuralSearchTieredConversionAttribution
        _ -> Nothing

instance ToText NATuralSearchConversionAttributionOption where
    toText = \case
        ExcludeNATuralSearchConversionAttribution -> "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        IncludeNATuralSearchConversionAttribution -> "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        IncludeNATuralSearchTieredConversionAttribution -> "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION"

instance FromJSON NATuralSearchConversionAttributionOption where
    parseJSON = parseJSONText "NATuralSearchConversionAttributionOption"

instance ToJSON NATuralSearchConversionAttributionOption where
    toJSON = toJSONText

data InterstitialTagFormatsItem
    = IframeJavascriptInterstitial
      -- ^ @IFRAME_JAVASCRIPT_INTERSTITIAL@
    | InternalRedirectInterstitial
      -- ^ @INTERNAL_REDIRECT_INTERSTITIAL@
    | JavascriptInterstitial
      -- ^ @JAVASCRIPT_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InterstitialTagFormatsItem

instance FromText InterstitialTagFormatsItem where
    fromText = \case
        "IFRAME_JAVASCRIPT_INTERSTITIAL" -> Just IframeJavascriptInterstitial
        "INTERNAL_REDIRECT_INTERSTITIAL" -> Just InternalRedirectInterstitial
        "JAVASCRIPT_INTERSTITIAL" -> Just JavascriptInterstitial
        _ -> Nothing

instance ToText InterstitialTagFormatsItem where
    toText = \case
        IframeJavascriptInterstitial -> "IFRAME_JAVASCRIPT_INTERSTITIAL"
        InternalRedirectInterstitial -> "INTERNAL_REDIRECT_INTERSTITIAL"
        JavascriptInterstitial -> "JAVASCRIPT_INTERSTITIAL"

instance FromJSON InterstitialTagFormatsItem where
    parseJSON = parseJSONText "InterstitialTagFormatsItem"

instance ToJSON InterstitialTagFormatsItem where
    toJSON = toJSONText

-- | User type of the user profile. This is a read-only field that can be
-- left blank.
data UserAccessType
    = InternalAdministrator
      -- ^ @INTERNAL_ADMINISTRATOR@
    | NormalUser
      -- ^ @NORMAL_USER@
    | SuperUser
      -- ^ @SUPER_USER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserAccessType

instance FromText UserAccessType where
    fromText = \case
        "INTERNAL_ADMINISTRATOR" -> Just InternalAdministrator
        "NORMAL_USER" -> Just NormalUser
        "SUPER_USER" -> Just SuperUser
        _ -> Nothing

instance ToText UserAccessType where
    toText = \case
        InternalAdministrator -> "INTERNAL_ADMINISTRATOR"
        NormalUser -> "NORMAL_USER"
        SuperUser -> "SUPER_USER"

instance FromJSON UserAccessType where
    parseJSON = parseJSONText "UserAccessType"

instance ToJSON UserAccessType where
    toJSON = toJSONText

-- | Initial wait time type before making the asset visible. Applicable to
-- the following creative types: all RICH_MEDIA.
data StartTimeType
    = AssetStartTimeTypeCustom
      -- ^ @ASSET_START_TIME_TYPE_CUSTOM@
    | AssetStartTimeTypeNone
      -- ^ @ASSET_START_TIME_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StartTimeType

instance FromText StartTimeType where
    fromText = \case
        "ASSET_START_TIME_TYPE_CUSTOM" -> Just AssetStartTimeTypeCustom
        "ASSET_START_TIME_TYPE_NONE" -> Just AssetStartTimeTypeNone
        _ -> Nothing

instance ToText StartTimeType where
    toText = \case
        AssetStartTimeTypeCustom -> "ASSET_START_TIME_TYPE_CUSTOM"
        AssetStartTimeTypeNone -> "ASSET_START_TIME_TYPE_NONE"

instance FromJSON StartTimeType where
    parseJSON = parseJSONText "StartTimeType"

instance ToJSON StartTimeType where
    toJSON = toJSONText

-- | Maximum number of active ads allowed for this account.
data ActiveAdsLimitTier
    = AALTActiveAdsTier100K
      -- ^ @ACTIVE_ADS_TIER_100K@
    | AALTActiveAdsTier200K
      -- ^ @ACTIVE_ADS_TIER_200K@
    | AALTActiveAdsTier300K
      -- ^ @ACTIVE_ADS_TIER_300K@
    | AALTActiveAdsTier40K
      -- ^ @ACTIVE_ADS_TIER_40K@
    | AALTActiveAdsTier75K
      -- ^ @ACTIVE_ADS_TIER_75K@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActiveAdsLimitTier

instance FromText ActiveAdsLimitTier where
    fromText = \case
        "ACTIVE_ADS_TIER_100K" -> Just AALTActiveAdsTier100K
        "ACTIVE_ADS_TIER_200K" -> Just AALTActiveAdsTier200K
        "ACTIVE_ADS_TIER_300K" -> Just AALTActiveAdsTier300K
        "ACTIVE_ADS_TIER_40K" -> Just AALTActiveAdsTier40K
        "ACTIVE_ADS_TIER_75K" -> Just AALTActiveAdsTier75K
        _ -> Nothing

instance ToText ActiveAdsLimitTier where
    toText = \case
        AALTActiveAdsTier100K -> "ACTIVE_ADS_TIER_100K"
        AALTActiveAdsTier200K -> "ACTIVE_ADS_TIER_200K"
        AALTActiveAdsTier300K -> "ACTIVE_ADS_TIER_300K"
        AALTActiveAdsTier40K -> "ACTIVE_ADS_TIER_40K"
        AALTActiveAdsTier75K -> "ACTIVE_ADS_TIER_75K"

instance FromJSON ActiveAdsLimitTier where
    parseJSON = parseJSONText "ActiveAdsLimitTier"

instance ToJSON ActiveAdsLimitTier where
    toJSON = toJSONText

-- | Type of ad. This is a required field on insertion. Note that default ads
-- (AD_SERVING_DEFAULT_AD) cannot be created directly (see Creative
-- resource).
data AdType
    = AdServingClickTracker
      -- ^ @AD_SERVING_CLICK_TRACKER@
    | AdServingDefaultAd
      -- ^ @AD_SERVING_DEFAULT_AD@
    | AdServingStandardAd
      -- ^ @AD_SERVING_STANDARD_AD@
    | AdServingTracking
      -- ^ @AD_SERVING_TRACKING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdType

instance FromText AdType where
    fromText = \case
        "AD_SERVING_CLICK_TRACKER" -> Just AdServingClickTracker
        "AD_SERVING_DEFAULT_AD" -> Just AdServingDefaultAd
        "AD_SERVING_STANDARD_AD" -> Just AdServingStandardAd
        "AD_SERVING_TRACKING" -> Just AdServingTracking
        _ -> Nothing

instance ToText AdType where
    toText = \case
        AdServingClickTracker -> "AD_SERVING_CLICK_TRACKER"
        AdServingDefaultAd -> "AD_SERVING_DEFAULT_AD"
        AdServingStandardAd -> "AD_SERVING_STANDARD_AD"
        AdServingTracking -> "AD_SERVING_TRACKING"

instance FromJSON AdType where
    parseJSON = parseJSONText "AdType"

instance ToJSON AdType where
    toJSON = toJSONText

-- | Placement pricing type. This field is required on insertion.
data PricingType
    = PTPricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | PTPricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | PTPricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | PTPricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | PTPricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingType

instance FromText PricingType where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just PTPricingTypeCpa
        "PRICING_TYPE_CPC" -> Just PTPricingTypeCpc
        "PRICING_TYPE_CPM" -> Just PTPricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PTPricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PTPricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText PricingType where
    toText = \case
        PTPricingTypeCpa -> "PRICING_TYPE_CPA"
        PTPricingTypeCpc -> "PRICING_TYPE_CPC"
        PTPricingTypeCpm -> "PRICING_TYPE_CPM"
        PTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON PricingType where
    parseJSON = parseJSONText "PricingType"

instance ToJSON PricingType where
    toJSON = toJSONText

-- | Data type for the variable. This is a required field.
data DataType
    = Number
      -- ^ @NUMBER@
    | String
      -- ^ @STRING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataType

instance FromText DataType where
    fromText = \case
        "NUMBER" -> Just Number
        "STRING" -> Just String
        _ -> Nothing

instance ToText DataType where
    toText = \case
        Number -> "NUMBER"
        String -> "STRING"

instance FromJSON DataType where
    parseJSON = parseJSONText "DataType"

instance ToJSON DataType where
    toJSON = toJSONText

-- | Audience age group of this project.
data AudienceAgeGroup
    = PlanningAudienceAge1824
      -- ^ @PLANNING_AUDIENCE_AGE_18_24@
    | PlanningAudienceAge2534
      -- ^ @PLANNING_AUDIENCE_AGE_25_34@
    | PlanningAudienceAge3544
      -- ^ @PLANNING_AUDIENCE_AGE_35_44@
    | PlanningAudienceAge4554
      -- ^ @PLANNING_AUDIENCE_AGE_45_54@
    | PlanningAudienceAge5564
      -- ^ @PLANNING_AUDIENCE_AGE_55_64@
    | PlanningAudienceAge65OrMore
      -- ^ @PLANNING_AUDIENCE_AGE_65_OR_MORE@
    | PlanningAudienceAgeUnknown
      -- ^ @PLANNING_AUDIENCE_AGE_UNKNOWN@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AudienceAgeGroup

instance FromText AudienceAgeGroup where
    fromText = \case
        "PLANNING_AUDIENCE_AGE_18_24" -> Just PlanningAudienceAge1824
        "PLANNING_AUDIENCE_AGE_25_34" -> Just PlanningAudienceAge2534
        "PLANNING_AUDIENCE_AGE_35_44" -> Just PlanningAudienceAge3544
        "PLANNING_AUDIENCE_AGE_45_54" -> Just PlanningAudienceAge4554
        "PLANNING_AUDIENCE_AGE_55_64" -> Just PlanningAudienceAge5564
        "PLANNING_AUDIENCE_AGE_65_OR_MORE" -> Just PlanningAudienceAge65OrMore
        "PLANNING_AUDIENCE_AGE_UNKNOWN" -> Just PlanningAudienceAgeUnknown
        _ -> Nothing

instance ToText AudienceAgeGroup where
    toText = \case
        PlanningAudienceAge1824 -> "PLANNING_AUDIENCE_AGE_18_24"
        PlanningAudienceAge2534 -> "PLANNING_AUDIENCE_AGE_25_34"
        PlanningAudienceAge3544 -> "PLANNING_AUDIENCE_AGE_35_44"
        PlanningAudienceAge4554 -> "PLANNING_AUDIENCE_AGE_45_54"
        PlanningAudienceAge5564 -> "PLANNING_AUDIENCE_AGE_55_64"
        PlanningAudienceAge65OrMore -> "PLANNING_AUDIENCE_AGE_65_OR_MORE"
        PlanningAudienceAgeUnknown -> "PLANNING_AUDIENCE_AGE_UNKNOWN"

instance FromJSON AudienceAgeGroup where
    parseJSON = parseJSONText "AudienceAgeGroup"

instance ToJSON AudienceAgeGroup where
    toJSON = toJSONText

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

instance FromJSON PlacementGroupPlacementGroupType where
    parseJSON = parseJSONText "PlacementGroupPlacementGroupType"

instance ToJSON PlacementGroupPlacementGroupType where
    toJSON = toJSONText

-- | Pricing type of this inventory item.
data PricingPricingType
    = PlanningPlacementPricingTypeClicks
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CLICKS@
    | PlanningPlacementPricingTypeCpa
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPA@
    | PlanningPlacementPricingTypeCpc
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPC@
    | PlanningPlacementPricingTypeCpm
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPM@
    | PlanningPlacementPricingTypeFlatRateClicks
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS@
    | PlanningPlacementPricingTypeFlatRateImpressions
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
    | PlanningPlacementPricingTypeImpressions
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingPricingType

instance FromText PricingPricingType where
    fromText = \case
        "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS" -> Just PlanningPlacementPricingTypeClicks
        "PLANNING_PLACEMENT_PRICING_TYPE_CPA" -> Just PlanningPlacementPricingTypeCpa
        "PLANNING_PLACEMENT_PRICING_TYPE_CPC" -> Just PlanningPlacementPricingTypeCpc
        "PLANNING_PLACEMENT_PRICING_TYPE_CPM" -> Just PlanningPlacementPricingTypeCpm
        "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PlanningPlacementPricingTypeFlatRateClicks
        "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PlanningPlacementPricingTypeFlatRateImpressions
        "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS" -> Just PlanningPlacementPricingTypeImpressions
        _ -> Nothing

instance ToText PricingPricingType where
    toText = \case
        PlanningPlacementPricingTypeClicks -> "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS"
        PlanningPlacementPricingTypeCpa -> "PLANNING_PLACEMENT_PRICING_TYPE_CPA"
        PlanningPlacementPricingTypeCpc -> "PLANNING_PLACEMENT_PRICING_TYPE_CPC"
        PlanningPlacementPricingTypeCpm -> "PLANNING_PLACEMENT_PRICING_TYPE_CPM"
        PlanningPlacementPricingTypeFlatRateClicks -> "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS"
        PlanningPlacementPricingTypeFlatRateImpressions -> "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS"
        PlanningPlacementPricingTypeImpressions -> "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS"

instance FromJSON PricingPricingType where
    parseJSON = parseJSONText "PricingPricingType"

instance ToJSON PricingPricingType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data SortField
    = SFID
      -- ^ @ID@
    | SFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SortField

instance FromText SortField where
    fromText = \case
        "ID" -> Just SFID
        "NAME" -> Just SFName
        _ -> Nothing

instance ToText SortField where
    toText = \case
        SFID -> "ID"
        SFName -> "NAME"

instance FromJSON SortField where
    parseJSON = parseJSONText "SortField"

instance ToJSON SortField where
    toJSON = toJSONText

-- | Select only ads with these types.
data Type
    = TAdServingClickTracker
      -- ^ @AD_SERVING_CLICK_TRACKER@
    | TAdServingDefaultAd
      -- ^ @AD_SERVING_DEFAULT_AD@
    | TAdServingStandardAd
      -- ^ @AD_SERVING_STANDARD_AD@
    | TAdServingTracking
      -- ^ @AD_SERVING_TRACKING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Type

instance FromText Type where
    fromText = \case
        "AD_SERVING_CLICK_TRACKER" -> Just TAdServingClickTracker
        "AD_SERVING_DEFAULT_AD" -> Just TAdServingDefaultAd
        "AD_SERVING_STANDARD_AD" -> Just TAdServingStandardAd
        "AD_SERVING_TRACKING" -> Just TAdServingTracking
        _ -> Nothing

instance ToText Type where
    toText = \case
        TAdServingClickTracker -> "AD_SERVING_CLICK_TRACKER"
        TAdServingDefaultAd -> "AD_SERVING_DEFAULT_AD"
        TAdServingStandardAd -> "AD_SERVING_STANDARD_AD"
        TAdServingTracking -> "AD_SERVING_TRACKING"

instance FromJSON Type where
    parseJSON = parseJSONText "Type"

instance ToJSON Type where
    toJSON = toJSONText

-- | Select only placements that are associated with these compatibilities.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO refers
-- to rendering in in-stream video ads developed with the VAST standard.
data Compatibilities
    = CApp
      -- ^ @APP@
    | CAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | CInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | CWeb
      -- ^ @WEB@
    | CWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Compatibilities

instance FromText Compatibilities where
    fromText = \case
        "APP" -> Just CApp
        "APP_INTERSTITIAL" -> Just CAppInterstitial
        "IN_STREAM_VIDEO" -> Just CInStreamVideo
        "WEB" -> Just CWeb
        "WEB_INTERSTITIAL" -> Just CWebInterstitial
        _ -> Nothing

instance ToText Compatibilities where
    toText = \case
        CApp -> "APP"
        CAppInterstitial -> "APP_INTERSTITIAL"
        CInStreamVideo -> "IN_STREAM_VIDEO"
        CWeb -> "WEB"
        CWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON Compatibilities where
    parseJSON = parseJSONText "Compatibilities"

instance ToJSON Compatibilities where
    toJSON = toJSONText

-- | Site contact type.
data ContactType
    = SalesPerson
      -- ^ @SALES_PERSON@
    | Trafficker
      -- ^ @TRAFFICKER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContactType

instance FromText ContactType where
    fromText = \case
        "SALES_PERSON" -> Just SalesPerson
        "TRAFFICKER" -> Just Trafficker
        _ -> Nothing

instance ToText ContactType where
    toText = \case
        SalesPerson -> "SALES_PERSON"
        Trafficker -> "TRAFFICKER"

instance FromJSON ContactType where
    parseJSON = parseJSONText "ContactType"

instance ToJSON ContactType where
    toJSON = toJSONText

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

instance FromJSON CreativeType where
    parseJSON = parseJSONText "CreativeType"

instance ToJSON CreativeType where
    toJSON = toJSONText

data BackupImageFeaturesItem
    = BIFIApplicationCache
      -- ^ @APPLICATION_CACHE@
    | BIFIAudio
      -- ^ @AUDIO@
    | BIFICanvas
      -- ^ @CANVAS@
    | BIFICanvasText
      -- ^ @CANVAS_TEXT@
    | BIFICssAnimations
      -- ^ @CSS_ANIMATIONS@
    | BIFICssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | BIFICssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | BIFICssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | BIFICssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | BIFICssColumns
      -- ^ @CSS_COLUMNS@
    | BIFICssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | BIFICssFontFace
      -- ^ @CSS_FONT_FACE@
    | BIFICssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | BIFICssGradients
      -- ^ @CSS_GRADIENTS@
    | BIFICssHsla
      -- ^ @CSS_HSLA@
    | BIFICssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | BIFICssOpacity
      -- ^ @CSS_OPACITY@
    | BIFICssReflections
      -- ^ @CSS_REFLECTIONS@
    | BIFICssRgba
      -- ^ @CSS_RGBA@
    | BIFICssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | BIFICssTransforms
      -- ^ @CSS_TRANSFORMS@
    | BIFICssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | BIFICssTransitions
      -- ^ @CSS_TRANSITIONS@
    | BIFIDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | BIFIGeoLocation
      -- ^ @GEO_LOCATION@
    | BIFIHashChange
      -- ^ @HASH_CHANGE@
    | BIFIHistory
      -- ^ @HISTORY@
    | BIFIIndexedDB
      -- ^ @INDEXED_DB@
    | BIFIInlineSvg
      -- ^ @INLINE_SVG@
    | BIFIInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | BIFIInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | BIFIInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | BIFIInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | BIFIInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | BIFIInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | BIFIInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | BIFIInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | BIFIInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | BIFIInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | BIFIInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | BIFIInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | BIFIInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | BIFIInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | BIFIInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | BIFIInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | BIFIInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | BIFIInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | BIFIInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | BIFIInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | BIFIInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | BIFIInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | BIFIInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | BIFILocalStorage
      -- ^ @LOCAL_STORAGE@
    | BIFIPostMessage
      -- ^ @POST_MESSAGE@
    | BIFISessionStorage
      -- ^ @SESSION_STORAGE@
    | BIFISmil
      -- ^ @SMIL@
    | BIFISvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | BIFISvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | BIFISvgFilters
      -- ^ @SVG_FILTERS@
    | BIFISvgHref
      -- ^ @SVG_HREF@
    | BIFITouch
      -- ^ @TOUCH@
    | BIFIVideo
      -- ^ @VIDEO@
    | BIFIWebgl
      -- ^ @WEBGL@
    | BIFIWebSockets
      -- ^ @WEB_SOCKETS@
    | BIFIWebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | BIFIWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BackupImageFeaturesItem

instance FromText BackupImageFeaturesItem where
    fromText = \case
        "APPLICATION_CACHE" -> Just BIFIApplicationCache
        "AUDIO" -> Just BIFIAudio
        "CANVAS" -> Just BIFICanvas
        "CANVAS_TEXT" -> Just BIFICanvasText
        "CSS_ANIMATIONS" -> Just BIFICssAnimations
        "CSS_BACKGROUND_SIZE" -> Just BIFICssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Just BIFICssBOrderImage
        "CSS_BORDER_RADIUS" -> Just BIFICssBOrderRadius
        "CSS_BOX_SHADOW" -> Just BIFICssBoxShadow
        "CSS_COLUMNS" -> Just BIFICssColumns
        "CSS_FLEX_BOX" -> Just BIFICssFlexBox
        "CSS_FONT_FACE" -> Just BIFICssFontFace
        "CSS_GENERATED_CONTENT" -> Just BIFICssGeneratedContent
        "CSS_GRADIENTS" -> Just BIFICssGradients
        "CSS_HSLA" -> Just BIFICssHsla
        "CSS_MULTIPLE_BGS" -> Just BIFICssMultipleBgs
        "CSS_OPACITY" -> Just BIFICssOpacity
        "CSS_REFLECTIONS" -> Just BIFICssReflections
        "CSS_RGBA" -> Just BIFICssRgba
        "CSS_TEXT_SHADOW" -> Just BIFICssTextShadow
        "CSS_TRANSFORMS" -> Just BIFICssTransforms
        "CSS_TRANSFORMS3D" -> Just BIFICssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just BIFICssTransitions
        "DRAG_AND_DROP" -> Just BIFIDragAndDrop
        "GEO_LOCATION" -> Just BIFIGeoLocation
        "HASH_CHANGE" -> Just BIFIHashChange
        "HISTORY" -> Just BIFIHistory
        "INDEXED_DB" -> Just BIFIIndexedDB
        "INLINE_SVG" -> Just BIFIInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just BIFIInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just BIFIInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just BIFIInputAttrList
        "INPUT_ATTR_MAX" -> Just BIFIInputAttrMax
        "INPUT_ATTR_MIN" -> Just BIFIInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just BIFIInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just BIFIInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just BIFIInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just BIFIInputAttrRequired
        "INPUT_ATTR_STEP" -> Just BIFIInputAttrStep
        "INPUT_TYPE_COLOR" -> Just BIFIInputTypeColor
        "INPUT_TYPE_DATE" -> Just BIFIInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just BIFIInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just BIFIInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just BIFIInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just BIFIInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just BIFIInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just BIFIInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just BIFIInputTypeSearch
        "INPUT_TYPE_TEL" -> Just BIFIInputTypeTel
        "INPUT_TYPE_TIME" -> Just BIFIInputTypeTime
        "INPUT_TYPE_URL" -> Just BIFIInputTypeURL
        "INPUT_TYPE_WEEK" -> Just BIFIInputTypeWeek
        "LOCAL_STORAGE" -> Just BIFILocalStorage
        "POST_MESSAGE" -> Just BIFIPostMessage
        "SESSION_STORAGE" -> Just BIFISessionStorage
        "SMIL" -> Just BIFISmil
        "SVG_CLIP_PATHS" -> Just BIFISvgClipPaths
        "SVG_FE_IMAGE" -> Just BIFISvgFeImage
        "SVG_FILTERS" -> Just BIFISvgFilters
        "SVG_HREF" -> Just BIFISvgHref
        "TOUCH" -> Just BIFITouch
        "VIDEO" -> Just BIFIVideo
        "WEBGL" -> Just BIFIWebgl
        "WEB_SOCKETS" -> Just BIFIWebSockets
        "WEB_SQL_DATABASE" -> Just BIFIWebSQLDatabase
        "WEB_WORKERS" -> Just BIFIWebWorkers
        _ -> Nothing

instance ToText BackupImageFeaturesItem where
    toText = \case
        BIFIApplicationCache -> "APPLICATION_CACHE"
        BIFIAudio -> "AUDIO"
        BIFICanvas -> "CANVAS"
        BIFICanvasText -> "CANVAS_TEXT"
        BIFICssAnimations -> "CSS_ANIMATIONS"
        BIFICssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        BIFICssBOrderImage -> "CSS_BORDER_IMAGE"
        BIFICssBOrderRadius -> "CSS_BORDER_RADIUS"
        BIFICssBoxShadow -> "CSS_BOX_SHADOW"
        BIFICssColumns -> "CSS_COLUMNS"
        BIFICssFlexBox -> "CSS_FLEX_BOX"
        BIFICssFontFace -> "CSS_FONT_FACE"
        BIFICssGeneratedContent -> "CSS_GENERATED_CONTENT"
        BIFICssGradients -> "CSS_GRADIENTS"
        BIFICssHsla -> "CSS_HSLA"
        BIFICssMultipleBgs -> "CSS_MULTIPLE_BGS"
        BIFICssOpacity -> "CSS_OPACITY"
        BIFICssReflections -> "CSS_REFLECTIONS"
        BIFICssRgba -> "CSS_RGBA"
        BIFICssTextShadow -> "CSS_TEXT_SHADOW"
        BIFICssTransforms -> "CSS_TRANSFORMS"
        BIFICssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        BIFICssTransitions -> "CSS_TRANSITIONS"
        BIFIDragAndDrop -> "DRAG_AND_DROP"
        BIFIGeoLocation -> "GEO_LOCATION"
        BIFIHashChange -> "HASH_CHANGE"
        BIFIHistory -> "HISTORY"
        BIFIIndexedDB -> "INDEXED_DB"
        BIFIInlineSvg -> "INLINE_SVG"
        BIFIInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        BIFIInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        BIFIInputAttrList -> "INPUT_ATTR_LIST"
        BIFIInputAttrMax -> "INPUT_ATTR_MAX"
        BIFIInputAttrMin -> "INPUT_ATTR_MIN"
        BIFIInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        BIFIInputAttrPattern -> "INPUT_ATTR_PATTERN"
        BIFIInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        BIFIInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        BIFIInputAttrStep -> "INPUT_ATTR_STEP"
        BIFIInputTypeColor -> "INPUT_TYPE_COLOR"
        BIFIInputTypeDate -> "INPUT_TYPE_DATE"
        BIFIInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        BIFIInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        BIFIInputTypeEmail -> "INPUT_TYPE_EMAIL"
        BIFIInputTypeMonth -> "INPUT_TYPE_MONTH"
        BIFIInputTypeNumber -> "INPUT_TYPE_NUMBER"
        BIFIInputTypeRange -> "INPUT_TYPE_RANGE"
        BIFIInputTypeSearch -> "INPUT_TYPE_SEARCH"
        BIFIInputTypeTel -> "INPUT_TYPE_TEL"
        BIFIInputTypeTime -> "INPUT_TYPE_TIME"
        BIFIInputTypeURL -> "INPUT_TYPE_URL"
        BIFIInputTypeWeek -> "INPUT_TYPE_WEEK"
        BIFILocalStorage -> "LOCAL_STORAGE"
        BIFIPostMessage -> "POST_MESSAGE"
        BIFISessionStorage -> "SESSION_STORAGE"
        BIFISmil -> "SMIL"
        BIFISvgClipPaths -> "SVG_CLIP_PATHS"
        BIFISvgFeImage -> "SVG_FE_IMAGE"
        BIFISvgFilters -> "SVG_FILTERS"
        BIFISvgHref -> "SVG_HREF"
        BIFITouch -> "TOUCH"
        BIFIVideo -> "VIDEO"
        BIFIWebgl -> "WEBGL"
        BIFIWebSockets -> "WEB_SOCKETS"
        BIFIWebSQLDatabase -> "WEB_SQL_DATABASE"
        BIFIWebWorkers -> "WEB_WORKERS"

instance FromJSON BackupImageFeaturesItem where
    parseJSON = parseJSONText "BackupImageFeaturesItem"

instance ToJSON BackupImageFeaturesItem where
    toJSON = toJSONText

-- | Day that will be counted as the first day of the week in reports. This
-- is a required field.
data FirstDayOfWeek
    = FDOWMonday
      -- ^ @MONDAY@
    | FDOWSunday
      -- ^ @SUNDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FirstDayOfWeek

instance FromText FirstDayOfWeek where
    fromText = \case
        "MONDAY" -> Just FDOWMonday
        "SUNDAY" -> Just FDOWSunday
        _ -> Nothing

instance ToText FirstDayOfWeek where
    toText = \case
        FDOWMonday -> "MONDAY"
        FDOWSunday -> "SUNDAY"

instance FromJSON FirstDayOfWeek where
    parseJSON = parseJSONText "FirstDayOfWeek"

instance ToJSON FirstDayOfWeek where
    toJSON = toJSONText

-- | Site filter type for this event tag. If no type is specified then the
-- event tag will be applied to all sites.
data SiteFilterType
    = BlackList
      -- ^ @BLACKLIST@
    | WhiteList
      -- ^ @WHITELIST@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SiteFilterType

instance FromText SiteFilterType where
    fromText = \case
        "BLACKLIST" -> Just BlackList
        "WHITELIST" -> Just WhiteList
        _ -> Nothing

instance ToText SiteFilterType where
    toText = \case
        BlackList -> "BLACKLIST"
        WhiteList -> "WHITELIST"

instance FromJSON SiteFilterType where
    parseJSON = parseJSONText "SiteFilterType"

instance ToJSON SiteFilterType where
    toJSON = toJSONText

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

instance FromJSON AdCompatibility where
    parseJSON = parseJSONText "AdCompatibility"

instance ToJSON AdCompatibility where
    toJSON = toJSONText

data RepeatsOnWeekDaysItem
    = ROWDIFriday
      -- ^ @FRIDAY@
    | ROWDIMonday
      -- ^ @MONDAY@
    | ROWDISaturday
      -- ^ @SATURDAY@
    | ROWDISunday
      -- ^ @SUNDAY@
    | ROWDIThursday
      -- ^ @THURSDAY@
    | ROWDITuesday
      -- ^ @TUESDAY@
    | ROWDIWednesday
      -- ^ @WEDNESDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RepeatsOnWeekDaysItem

instance FromText RepeatsOnWeekDaysItem where
    fromText = \case
        "FRIDAY" -> Just ROWDIFriday
        "MONDAY" -> Just ROWDIMonday
        "SATURDAY" -> Just ROWDISaturday
        "SUNDAY" -> Just ROWDISunday
        "THURSDAY" -> Just ROWDIThursday
        "TUESDAY" -> Just ROWDITuesday
        "WEDNESDAY" -> Just ROWDIWednesday
        _ -> Nothing

instance ToText RepeatsOnWeekDaysItem where
    toText = \case
        ROWDIFriday -> "FRIDAY"
        ROWDIMonday -> "MONDAY"
        ROWDISaturday -> "SATURDAY"
        ROWDISunday -> "SUNDAY"
        ROWDIThursday -> "THURSDAY"
        ROWDITuesday -> "TUESDAY"
        ROWDIWednesday -> "WEDNESDAY"

instance FromJSON RepeatsOnWeekDaysItem where
    parseJSON = parseJSONText "RepeatsOnWeekDaysItem"

instance ToJSON RepeatsOnWeekDaysItem where
    toJSON = toJSONText

-- | Select only ads with the specified creativeType.
data CreativeType
    = CBrandSafeDefaultInstreamVideo
      -- ^ @BRAND_SAFE_DEFAULT_INSTREAM_VIDEO@
    | CCustomInpage
      -- ^ @CUSTOM_INPAGE@
    | CCustomInterstitial
      -- ^ @CUSTOM_INTERSTITIAL@
    | CEnhancedBanner
      -- ^ @ENHANCED_BANNER@
    | CEnhancedImage
      -- ^ @ENHANCED_IMAGE@
    | CFlashInpage
      -- ^ @FLASH_INPAGE@
    | CHTML5Banner
      -- ^ @HTML5_BANNER@
    | CImage
      -- ^ @IMAGE@
    | CInstreamVideo
      -- ^ @INSTREAM_VIDEO@
    | CInternalRedirect
      -- ^ @INTERNAL_REDIRECT@
    | CInterstitialInternalRedirect
      -- ^ @INTERSTITIAL_INTERNAL_REDIRECT@
    | CRedirect
      -- ^ @REDIRECT@
    | CRichMediaExpanding
      -- ^ @RICH_MEDIA_EXPANDING@
    | CRichMediaImExpand
      -- ^ @RICH_MEDIA_IM_EXPAND@
    | CRichMediaInpage
      -- ^ @RICH_MEDIA_INPAGE@
    | CRichMediaInpageFloating
      -- ^ @RICH_MEDIA_INPAGE_FLOATING@
    | CRichMediaInterstitialFloat
      -- ^ @RICH_MEDIA_INTERSTITIAL_FLOAT@
    | CRichMediaMobileInApp
      -- ^ @RICH_MEDIA_MOBILE_IN_APP@
    | CRichMediaMultiFloating
      -- ^ @RICH_MEDIA_MULTI_FLOATING@
    | CRichMediaPeelDown
      -- ^ @RICH_MEDIA_PEEL_DOWN@
    | CTrackingText
      -- ^ @TRACKING_TEXT@
    | CVastRedirect
      -- ^ @VAST_REDIRECT@
    | CVpaidLinear
      -- ^ @VPAID_LINEAR@
    | CVpaidNonLinear
      -- ^ @VPAID_NON_LINEAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeType

instance FromText CreativeType where
    fromText = \case
        "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO" -> Just CBrandSafeDefaultInstreamVideo
        "CUSTOM_INPAGE" -> Just CCustomInpage
        "CUSTOM_INTERSTITIAL" -> Just CCustomInterstitial
        "ENHANCED_BANNER" -> Just CEnhancedBanner
        "ENHANCED_IMAGE" -> Just CEnhancedImage
        "FLASH_INPAGE" -> Just CFlashInpage
        "HTML5_BANNER" -> Just CHTML5Banner
        "IMAGE" -> Just CImage
        "INSTREAM_VIDEO" -> Just CInstreamVideo
        "INTERNAL_REDIRECT" -> Just CInternalRedirect
        "INTERSTITIAL_INTERNAL_REDIRECT" -> Just CInterstitialInternalRedirect
        "REDIRECT" -> Just CRedirect
        "RICH_MEDIA_EXPANDING" -> Just CRichMediaExpanding
        "RICH_MEDIA_IM_EXPAND" -> Just CRichMediaImExpand
        "RICH_MEDIA_INPAGE" -> Just CRichMediaInpage
        "RICH_MEDIA_INPAGE_FLOATING" -> Just CRichMediaInpageFloating
        "RICH_MEDIA_INTERSTITIAL_FLOAT" -> Just CRichMediaInterstitialFloat
        "RICH_MEDIA_MOBILE_IN_APP" -> Just CRichMediaMobileInApp
        "RICH_MEDIA_MULTI_FLOATING" -> Just CRichMediaMultiFloating
        "RICH_MEDIA_PEEL_DOWN" -> Just CRichMediaPeelDown
        "TRACKING_TEXT" -> Just CTrackingText
        "VAST_REDIRECT" -> Just CVastRedirect
        "VPAID_LINEAR" -> Just CVpaidLinear
        "VPAID_NON_LINEAR" -> Just CVpaidNonLinear
        _ -> Nothing

instance ToText CreativeType where
    toText = \case
        CBrandSafeDefaultInstreamVideo -> "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
        CCustomInpage -> "CUSTOM_INPAGE"
        CCustomInterstitial -> "CUSTOM_INTERSTITIAL"
        CEnhancedBanner -> "ENHANCED_BANNER"
        CEnhancedImage -> "ENHANCED_IMAGE"
        CFlashInpage -> "FLASH_INPAGE"
        CHTML5Banner -> "HTML5_BANNER"
        CImage -> "IMAGE"
        CInstreamVideo -> "INSTREAM_VIDEO"
        CInternalRedirect -> "INTERNAL_REDIRECT"
        CInterstitialInternalRedirect -> "INTERSTITIAL_INTERNAL_REDIRECT"
        CRedirect -> "REDIRECT"
        CRichMediaExpanding -> "RICH_MEDIA_EXPANDING"
        CRichMediaImExpand -> "RICH_MEDIA_IM_EXPAND"
        CRichMediaInpage -> "RICH_MEDIA_INPAGE"
        CRichMediaInpageFloating -> "RICH_MEDIA_INPAGE_FLOATING"
        CRichMediaInterstitialFloat -> "RICH_MEDIA_INTERSTITIAL_FLOAT"
        CRichMediaMobileInApp -> "RICH_MEDIA_MOBILE_IN_APP"
        CRichMediaMultiFloating -> "RICH_MEDIA_MULTI_FLOATING"
        CRichMediaPeelDown -> "RICH_MEDIA_PEEL_DOWN"
        CTrackingText -> "TRACKING_TEXT"
        CVastRedirect -> "VAST_REDIRECT"
        CVpaidLinear -> "VPAID_LINEAR"
        CVpaidNonLinear -> "VPAID_NON_LINEAR"

instance FromJSON CreativeType where
    parseJSON = parseJSONText "CreativeType"

instance ToJSON CreativeType where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingSitesListSortOrder
    = DSLSOAscending
      -- ^ @ASCENDING@
    | DSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingSitesListSortOrder

instance FromText DfareportingSitesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DSLSOAscending
        "DESCENDING" -> Just DSLSODescending
        _ -> Nothing

instance ToText DfareportingSitesListSortOrder where
    toText = \case
        DSLSOAscending -> "ASCENDING"
        DSLSODescending -> "DESCENDING"

instance FromJSON DfareportingSitesListSortOrder where
    parseJSON = parseJSONText "DfareportingSitesListSortOrder"

instance ToJSON DfareportingSitesListSortOrder where
    toJSON = toJSONText

data StandardVariableTypesItem
    = Num
      -- ^ @NUM@
    | Ord
      -- ^ @ORD@
    | Tran
      -- ^ @TRAN@
    | U
      -- ^ @U@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StandardVariableTypesItem

instance FromText StandardVariableTypesItem where
    fromText = \case
        "NUM" -> Just Num
        "ORD" -> Just Ord
        "TRAN" -> Just Tran
        "U" -> Just U
        _ -> Nothing

instance ToText StandardVariableTypesItem where
    toText = \case
        Num -> "NUM"
        Ord -> "ORD"
        Tran -> "TRAN"
        U -> "U"

instance FromJSON StandardVariableTypesItem where
    parseJSON = parseJSONText "StandardVariableTypesItem"

instance ToJSON StandardVariableTypesItem where
    toJSON = toJSONText

-- | Order of sorted results, default is \'DESCENDING\'.
data DfareportingReportsFilesListSortOrder
    = DRFLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | DRFLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingReportsFilesListSortOrder

instance FromText DfareportingReportsFilesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DRFLSOAscending
        "DESCENDING" -> Just DRFLSODescending
        _ -> Nothing

instance ToText DfareportingReportsFilesListSortOrder where
    toText = \case
        DRFLSOAscending -> "ASCENDING"
        DRFLSODescending -> "DESCENDING"

instance FromJSON DfareportingReportsFilesListSortOrder where
    parseJSON = parseJSONText "DfareportingReportsFilesListSortOrder"

instance ToJSON DfareportingReportsFilesListSortOrder where
    toJSON = toJSONText

-- | Audience gender of this project.
data AudienceGender
    = PlanningAudienceGenderFemale
      -- ^ @PLANNING_AUDIENCE_GENDER_FEMALE@
    | PlanningAudienceGenderMale
      -- ^ @PLANNING_AUDIENCE_GENDER_MALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AudienceGender

instance FromText AudienceGender where
    fromText = \case
        "PLANNING_AUDIENCE_GENDER_FEMALE" -> Just PlanningAudienceGenderFemale
        "PLANNING_AUDIENCE_GENDER_MALE" -> Just PlanningAudienceGenderMale
        _ -> Nothing

instance ToText AudienceGender where
    toText = \case
        PlanningAudienceGenderFemale -> "PLANNING_AUDIENCE_GENDER_FEMALE"
        PlanningAudienceGenderMale -> "PLANNING_AUDIENCE_GENDER_MALE"

instance FromJSON AudienceGender where
    parseJSON = parseJSONText "AudienceGender"

instance ToJSON AudienceGender where
    toJSON = toJSONText

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

instance FromJSON ReportType where
    parseJSON = parseJSONText "ReportType"

instance ToJSON ReportType where
    toJSON = toJSONText

-- | Enum to define for \"MONTHLY\" scheduled reports whether reports should
-- be repeated on the same day of the month as \"startDate\" or the same
-- day of the week of the month. Example: If \'startDate\' is Monday, April
-- 2nd 2012 (2012-04-02), \"DAY_OF_MONTH\" would run subsequent reports on
-- the 2nd of every Month, and \"WEEK_OF_MONTH\" would run subsequent
-- reports on the first Monday of the month.
data RunsOnDayOfMonth
    = DayOfMonth
      -- ^ @DAY_OF_MONTH@
    | WeekOfMonth
      -- ^ @WEEK_OF_MONTH@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RunsOnDayOfMonth

instance FromText RunsOnDayOfMonth where
    fromText = \case
        "DAY_OF_MONTH" -> Just DayOfMonth
        "WEEK_OF_MONTH" -> Just WeekOfMonth
        _ -> Nothing

instance ToText RunsOnDayOfMonth where
    toText = \case
        DayOfMonth -> "DAY_OF_MONTH"
        WeekOfMonth -> "WEEK_OF_MONTH"

instance FromJSON RunsOnDayOfMonth where
    parseJSON = parseJSONText "RunsOnDayOfMonth"

instance ToJSON RunsOnDayOfMonth where
    toJSON = toJSONText

-- | Type of browser window for which the backup image of the flash creative
-- can be displayed.
data TargetWindowOption
    = CurrentWindow
      -- ^ @CURRENT_WINDOW@
    | Custom
      -- ^ @CUSTOM@
    | NewWindow
      -- ^ @NEW_WINDOW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetWindowOption

instance FromText TargetWindowOption where
    fromText = \case
        "CURRENT_WINDOW" -> Just CurrentWindow
        "CUSTOM" -> Just Custom
        "NEW_WINDOW" -> Just NewWindow
        _ -> Nothing

instance ToText TargetWindowOption where
    toText = \case
        CurrentWindow -> "CURRENT_WINDOW"
        Custom -> "CUSTOM"
        NewWindow -> "NEW_WINDOW"

instance FromJSON TargetWindowOption where
    parseJSON = parseJSONText "TargetWindowOption"

instance ToJSON TargetWindowOption where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingEventTagsListSortOrder
    = DETLSOAscending
      -- ^ @ASCENDING@
    | DETLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingEventTagsListSortOrder

instance FromText DfareportingEventTagsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DETLSOAscending
        "DESCENDING" -> Just DETLSODescending
        _ -> Nothing

instance ToText DfareportingEventTagsListSortOrder where
    toText = \case
        DETLSOAscending -> "ASCENDING"
        DETLSODescending -> "DESCENDING"

instance FromJSON DfareportingEventTagsListSortOrder where
    parseJSON = parseJSONText "DfareportingEventTagsListSortOrder"

instance ToJSON DfareportingEventTagsListSortOrder where
    toJSON = toJSONText

-- | Variable name in the tag. This is a required field.
data VariableType
    = VTU1
      -- ^ @U1@
    | VTU10
      -- ^ @U10@
    | VTU11
      -- ^ @U11@
    | VTU12
      -- ^ @U12@
    | VTU13
      -- ^ @U13@
    | VTU14
      -- ^ @U14@
    | VTU15
      -- ^ @U15@
    | VTU16
      -- ^ @U16@
    | VTU17
      -- ^ @U17@
    | VTU18
      -- ^ @U18@
    | VTU19
      -- ^ @U19@
    | VTU2
      -- ^ @U2@
    | VTU20
      -- ^ @U20@
    | VTU3
      -- ^ @U3@
    | VTU4
      -- ^ @U4@
    | VTU5
      -- ^ @U5@
    | VTU6
      -- ^ @U6@
    | VTU7
      -- ^ @U7@
    | VTU8
      -- ^ @U8@
    | VTU9
      -- ^ @U9@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VariableType

instance FromText VariableType where
    fromText = \case
        "U1" -> Just VTU1
        "U10" -> Just VTU10
        "U11" -> Just VTU11
        "U12" -> Just VTU12
        "U13" -> Just VTU13
        "U14" -> Just VTU14
        "U15" -> Just VTU15
        "U16" -> Just VTU16
        "U17" -> Just VTU17
        "U18" -> Just VTU18
        "U19" -> Just VTU19
        "U2" -> Just VTU2
        "U20" -> Just VTU20
        "U3" -> Just VTU3
        "U4" -> Just VTU4
        "U5" -> Just VTU5
        "U6" -> Just VTU6
        "U7" -> Just VTU7
        "U8" -> Just VTU8
        "U9" -> Just VTU9
        _ -> Nothing

instance ToText VariableType where
    toText = \case
        VTU1 -> "U1"
        VTU10 -> "U10"
        VTU11 -> "U11"
        VTU12 -> "U12"
        VTU13 -> "U13"
        VTU14 -> "U14"
        VTU15 -> "U15"
        VTU16 -> "U16"
        VTU17 -> "U17"
        VTU18 -> "U18"
        VTU19 -> "U19"
        VTU2 -> "U2"
        VTU20 -> "U20"
        VTU3 -> "U3"
        VTU4 -> "U4"
        VTU5 -> "U5"
        VTU6 -> "U6"
        VTU7 -> "U7"
        VTU8 -> "U8"
        VTU9 -> "U9"

instance FromJSON VariableType where
    parseJSON = parseJSONText "VariableType"

instance ToJSON VariableType where
    toJSON = toJSONText

-- | Administrative level required to enable this account permission.
data Level
    = Administrator
      -- ^ @ADMINISTRATOR@
    | User
      -- ^ @USER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Level

instance FromText Level where
    fromText = \case
        "ADMINISTRATOR" -> Just Administrator
        "USER" -> Just User
        _ -> Nothing

instance ToText Level where
    toText = \case
        Administrator -> "ADMINISTRATOR"
        User -> "USER"

instance FromJSON Level where
    parseJSON = parseJSONText "Level"

instance ToJSON Level where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingTargetableRemarketingListsListSortField
    = DTRLLSFID
      -- ^ @ID@
    | DTRLLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingTargetableRemarketingListsListSortField

instance FromText DfareportingTargetableRemarketingListsListSortField where
    fromText = \case
        "ID" -> Just DTRLLSFID
        "NAME" -> Just DTRLLSFName
        _ -> Nothing

instance ToText DfareportingTargetableRemarketingListsListSortField where
    toText = \case
        DTRLLSFID -> "ID"
        DTRLLSFName -> "NAME"

instance FromJSON DfareportingTargetableRemarketingListsListSortField where
    parseJSON = parseJSONText "DfareportingTargetableRemarketingListsListSortField"

instance ToJSON DfareportingTargetableRemarketingListsListSortField where
    toJSON = toJSONText

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. WEB and WEB_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
data Compatibility
    = COMApp
      -- ^ @APP@
    | COMAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | COMInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | COMWeb
      -- ^ @WEB@
    | COMWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Compatibility

instance FromText Compatibility where
    fromText = \case
        "APP" -> Just COMApp
        "APP_INTERSTITIAL" -> Just COMAppInterstitial
        "IN_STREAM_VIDEO" -> Just COMInStreamVideo
        "WEB" -> Just COMWeb
        "WEB_INTERSTITIAL" -> Just COMWebInterstitial
        _ -> Nothing

instance ToText Compatibility where
    toText = \case
        COMApp -> "APP"
        COMAppInterstitial -> "APP_INTERSTITIAL"
        COMInStreamVideo -> "IN_STREAM_VIDEO"
        COMWeb -> "WEB"
        COMWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON Compatibility where
    parseJSON = parseJSONText "Compatibility"

instance ToJSON Compatibility where
    toJSON = toJSONText

-- | Artwork type used by the creative.This is a read-only field.
data ArtworkType
    = ATArtworkTypeFlash
      -- ^ @ARTWORK_TYPE_FLASH@
    | ATArtworkTypeHTML5
      -- ^ @ARTWORK_TYPE_HTML5@
    | ATArtworkTypeMixed
      -- ^ @ARTWORK_TYPE_MIXED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ArtworkType

instance FromText ArtworkType where
    fromText = \case
        "ARTWORK_TYPE_FLASH" -> Just ATArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Just ATArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Just ATArtworkTypeMixed
        _ -> Nothing

instance ToText ArtworkType where
    toText = \case
        ATArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        ATArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        ATArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"

instance FromJSON ArtworkType where
    parseJSON = parseJSONText "ArtworkType"

instance ToJSON ArtworkType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingDirectorySiteContactsListSortField
    = DDSCLSFID
      -- ^ @ID@
    | DDSCLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingDirectorySiteContactsListSortField

instance FromText DfareportingDirectorySiteContactsListSortField where
    fromText = \case
        "ID" -> Just DDSCLSFID
        "NAME" -> Just DDSCLSFName
        _ -> Nothing

instance ToText DfareportingDirectorySiteContactsListSortField where
    toText = \case
        DDSCLSFID -> "ID"
        DDSCLSFName -> "NAME"

instance FromJSON DfareportingDirectorySiteContactsListSortField where
    parseJSON = parseJSONText "DfareportingDirectorySiteContactsListSortField"

instance ToJSON DfareportingDirectorySiteContactsListSortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingCreativeFieldValuesListSortField
    = DCFVLSFID
      -- ^ @ID@
    | DCFVLSFValue
      -- ^ @VALUE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingCreativeFieldValuesListSortField

instance FromText DfareportingCreativeFieldValuesListSortField where
    fromText = \case
        "ID" -> Just DCFVLSFID
        "VALUE" -> Just DCFVLSFValue
        _ -> Nothing

instance ToText DfareportingCreativeFieldValuesListSortField where
    toText = \case
        DCFVLSFID -> "ID"
        DCFVLSFValue -> "VALUE"

instance FromJSON DfareportingCreativeFieldValuesListSortField where
    parseJSON = parseJSONText "DfareportingCreativeFieldValuesListSortField"

instance ToJSON DfareportingCreativeFieldValuesListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is \'DESCENDING\'.
data DfareportingFilesListSortOrder
    = DFLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | DFLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFilesListSortOrder

instance FromText DfareportingFilesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DFLSOAscending
        "DESCENDING" -> Just DFLSODescending
        _ -> Nothing

instance ToText DfareportingFilesListSortOrder where
    toText = \case
        DFLSOAscending -> "ASCENDING"
        DFLSODescending -> "DESCENDING"

instance FromJSON DfareportingFilesListSortOrder where
    parseJSON = parseJSONText "DfareportingFilesListSortOrder"

instance ToJSON DfareportingFilesListSortOrder where
    toJSON = toJSONText

-- | Third-party URL type for in-stream video creatives.
data ThirdPartyURLType
    = ClickTracking
      -- ^ @CLICK_TRACKING@
    | Impression
      -- ^ @IMPRESSION@
    | RichMediaBackupImpression
      -- ^ @RICH_MEDIA_BACKUP_IMPRESSION@
    | RichMediaImpression
      -- ^ @RICH_MEDIA_IMPRESSION@
    | RichMediaRmImpression
      -- ^ @RICH_MEDIA_RM_IMPRESSION@
    | Survey
      -- ^ @SURVEY@
    | VideoComplete
      -- ^ @VIDEO_COMPLETE@
    | VideoCustom
      -- ^ @VIDEO_CUSTOM@
    | VideoFirstQuartile
      -- ^ @VIDEO_FIRST_QUARTILE@
    | VideoFullscreen
      -- ^ @VIDEO_FULLSCREEN@
    | VideoMidpoint
      -- ^ @VIDEO_MIDPOINT@
    | VideoMute
      -- ^ @VIDEO_MUTE@
    | VideoPause
      -- ^ @VIDEO_PAUSE@
    | VideoRewind
      -- ^ @VIDEO_REWIND@
    | VideoStart
      -- ^ @VIDEO_START@
    | VideoStop
      -- ^ @VIDEO_STOP@
    | VideoThirdQuartile
      -- ^ @VIDEO_THIRD_QUARTILE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ThirdPartyURLType

instance FromText ThirdPartyURLType where
    fromText = \case
        "CLICK_TRACKING" -> Just ClickTracking
        "IMPRESSION" -> Just Impression
        "RICH_MEDIA_BACKUP_IMPRESSION" -> Just RichMediaBackupImpression
        "RICH_MEDIA_IMPRESSION" -> Just RichMediaImpression
        "RICH_MEDIA_RM_IMPRESSION" -> Just RichMediaRmImpression
        "SURVEY" -> Just Survey
        "VIDEO_COMPLETE" -> Just VideoComplete
        "VIDEO_CUSTOM" -> Just VideoCustom
        "VIDEO_FIRST_QUARTILE" -> Just VideoFirstQuartile
        "VIDEO_FULLSCREEN" -> Just VideoFullscreen
        "VIDEO_MIDPOINT" -> Just VideoMidpoint
        "VIDEO_MUTE" -> Just VideoMute
        "VIDEO_PAUSE" -> Just VideoPause
        "VIDEO_REWIND" -> Just VideoRewind
        "VIDEO_START" -> Just VideoStart
        "VIDEO_STOP" -> Just VideoStop
        "VIDEO_THIRD_QUARTILE" -> Just VideoThirdQuartile
        _ -> Nothing

instance ToText ThirdPartyURLType where
    toText = \case
        ClickTracking -> "CLICK_TRACKING"
        Impression -> "IMPRESSION"
        RichMediaBackupImpression -> "RICH_MEDIA_BACKUP_IMPRESSION"
        RichMediaImpression -> "RICH_MEDIA_IMPRESSION"
        RichMediaRmImpression -> "RICH_MEDIA_RM_IMPRESSION"
        Survey -> "SURVEY"
        VideoComplete -> "VIDEO_COMPLETE"
        VideoCustom -> "VIDEO_CUSTOM"
        VideoFirstQuartile -> "VIDEO_FIRST_QUARTILE"
        VideoFullscreen -> "VIDEO_FULLSCREEN"
        VideoMidpoint -> "VIDEO_MIDPOINT"
        VideoMute -> "VIDEO_MUTE"
        VideoPause -> "VIDEO_PAUSE"
        VideoRewind -> "VIDEO_REWIND"
        VideoStart -> "VIDEO_START"
        VideoStop -> "VIDEO_STOP"
        VideoThirdQuartile -> "VIDEO_THIRD_QUARTILE"

instance FromJSON ThirdPartyURLType where
    parseJSON = parseJSONText "ThirdPartyURLType"

instance ToJSON ThirdPartyURLType where
    toJSON = toJSONText

data PlacementTagFormatsItem
    = PTFIPlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | PTFIPlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | PTFIPlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | PTFIPlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | PTFIPlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | PTFIPlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | PTFIPlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | PTFIPlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | PTFIPlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | PTFIPlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | PTFIPlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | PTFIPlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | PTFIPlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | PTFIPlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | PTFIPlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | PTFIPlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | PTFIPlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | PTFIPlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementTagFormatsItem

instance FromText PlacementTagFormatsItem where
    fromText = \case
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Just PTFIPlacementTagClickCommands
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Just PTFIPlacementTagIframeIlayer
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Just PTFIPlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Just PTFIPlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Just PTFIPlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Just PTFIPlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Just PTFIPlacementTagInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Just PTFIPlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Just PTFIPlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Just PTFIPlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Just PTFIPlacementTagInterstitialJavascript
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Just PTFIPlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT" -> Just PTFIPlacementTagJavascript
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Just PTFIPlacementTagJavascriptLegacy
        "PLACEMENT_TAG_STANDARD" -> Just PTFIPlacementTagStandard
        "PLACEMENT_TAG_TRACKING" -> Just PTFIPlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Just PTFIPlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Just PTFIPlacementTagTrackingJavascript
        _ -> Nothing

instance ToText PlacementTagFormatsItem where
    toText = \case
        PTFIPlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        PTFIPlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        PTFIPlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        PTFIPlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        PTFIPlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        PTFIPlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        PTFIPlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        PTFIPlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        PTFIPlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        PTFIPlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        PTFIPlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        PTFIPlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        PTFIPlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        PTFIPlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        PTFIPlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        PTFIPlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        PTFIPlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        PTFIPlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

instance FromJSON PlacementTagFormatsItem where
    parseJSON = parseJSONText "PlacementTagFormatsItem"

instance ToJSON PlacementTagFormatsItem where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingPlacementGroupsListSortOrder
    = DPGLSOAscending
      -- ^ @ASCENDING@
    | DPGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementGroupsListSortOrder

instance FromText DfareportingPlacementGroupsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DPGLSOAscending
        "DESCENDING" -> Just DPGLSODescending
        _ -> Nothing

instance ToText DfareportingPlacementGroupsListSortOrder where
    toText = \case
        DPGLSOAscending -> "ASCENDING"
        DPGLSODescending -> "DESCENDING"

instance FromJSON DfareportingPlacementGroupsListSortOrder where
    parseJSON = parseJSONText "DfareportingPlacementGroupsListSortOrder"

instance ToJSON DfareportingPlacementGroupsListSortOrder where
    toJSON = toJSONText

-- | The type of delivery for the owner to receive, if enabled.
data EmailOwnerDeliveryType
    = EODTAttachment
      -- ^ @ATTACHMENT@
    | EODTLink
      -- ^ @LINK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EmailOwnerDeliveryType

instance FromText EmailOwnerDeliveryType where
    fromText = \case
        "ATTACHMENT" -> Just EODTAttachment
        "LINK" -> Just EODTLink
        _ -> Nothing

instance ToText EmailOwnerDeliveryType where
    toText = \case
        EODTAttachment -> "ATTACHMENT"
        EODTLink -> "LINK"

instance FromJSON EmailOwnerDeliveryType where
    parseJSON = parseJSONText "EmailOwnerDeliveryType"

instance ToJSON EmailOwnerDeliveryType where
    toJSON = toJSONText

-- | Cap cost type of this inventory item.
data CapCostType
    = PlanningPlacementCapCostTypeCumulative
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE@
    | PlanningPlacementCapCostTypeMonthly
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY@
    | PlanningPlacementCapCostTypeNone
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CapCostType

instance FromText CapCostType where
    fromText = \case
        "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE" -> Just PlanningPlacementCapCostTypeCumulative
        "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY" -> Just PlanningPlacementCapCostTypeMonthly
        "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE" -> Just PlanningPlacementCapCostTypeNone
        _ -> Nothing

instance ToText CapCostType where
    toText = \case
        PlanningPlacementCapCostTypeCumulative -> "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE"
        PlanningPlacementCapCostTypeMonthly -> "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY"
        PlanningPlacementCapCostTypeNone -> "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE"

instance FromJSON CapCostType where
    parseJSON = parseJSONText "CapCostType"

instance ToJSON CapCostType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingAdvertisersListSortField
    = DALSFAID
      -- ^ @ID@
    | DALSFAName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdvertisersListSortField

instance FromText DfareportingAdvertisersListSortField where
    fromText = \case
        "ID" -> Just DALSFAID
        "NAME" -> Just DALSFAName
        _ -> Nothing

instance ToText DfareportingAdvertisersListSortField where
    toText = \case
        DALSFAID -> "ID"
        DALSFAName -> "NAME"

instance FromJSON DfareportingAdvertisersListSortField where
    parseJSON = parseJSONText "DfareportingAdvertisersListSortField"

instance ToJSON DfareportingAdvertisersListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingAccountsListSortOrder
    = DDAscending
      -- ^ @ASCENDING@
    | DDDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAccountsListSortOrder

instance FromText DfareportingAccountsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DDAscending
        "DESCENDING" -> Just DDDescending
        _ -> Nothing

instance ToText DfareportingAccountsListSortOrder where
    toText = \case
        DDAscending -> "ASCENDING"
        DDDescending -> "DESCENDING"

instance FromJSON DfareportingAccountsListSortOrder where
    parseJSON = parseJSONText "DfareportingAccountsListSortOrder"

instance ToJSON DfareportingAccountsListSortOrder where
    toJSON = toJSONText

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

instance FromJSON AdvertiserStatus where
    parseJSON = parseJSONText "AdvertiserStatus"

instance ToJSON AdvertiserStatus where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingProjectsListSortField
    = DPLSFPID
      -- ^ @ID@
    | DPLSFPName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingProjectsListSortField

instance FromText DfareportingProjectsListSortField where
    fromText = \case
        "ID" -> Just DPLSFPID
        "NAME" -> Just DPLSFPName
        _ -> Nothing

instance ToText DfareportingProjectsListSortField where
    toText = \case
        DPLSFPID -> "ID"
        DPLSFPName -> "NAME"

instance FromJSON DfareportingProjectsListSortField where
    parseJSON = parseJSONText "DfareportingProjectsListSortField"

instance ToJSON DfareportingProjectsListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DfareportingRemarketingListsListSortOrder
    = DRLLSOAscending
      -- ^ @ASCENDING@
    | DRLLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingRemarketingListsListSortOrder

instance FromText DfareportingRemarketingListsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DRLLSOAscending
        "DESCENDING" -> Just DRLLSODescending
        _ -> Nothing

instance ToText DfareportingRemarketingListsListSortOrder where
    toText = \case
        DRLLSOAscending -> "ASCENDING"
        DRLLSODescending -> "DESCENDING"

instance FromJSON DfareportingRemarketingListsListSortOrder where
    parseJSON = parseJSONText "DfareportingRemarketingListsListSortOrder"

instance ToJSON DfareportingRemarketingListsListSortOrder where
    toJSON = toJSONText

-- | Select only placement groups with these pricing types.
data DfareportingPlacementGroupsListPricingTypes
    = DPGLPTPricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | DPGLPTPricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | DPGLPTPricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | DPGLPTPricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | DPGLPTPricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementGroupsListPricingTypes

instance FromText DfareportingPlacementGroupsListPricingTypes where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just DPGLPTPricingTypeCpa
        "PRICING_TYPE_CPC" -> Just DPGLPTPricingTypeCpc
        "PRICING_TYPE_CPM" -> Just DPGLPTPricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just DPGLPTPricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just DPGLPTPricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText DfareportingPlacementGroupsListPricingTypes where
    toText = \case
        DPGLPTPricingTypeCpa -> "PRICING_TYPE_CPA"
        DPGLPTPricingTypeCpc -> "PRICING_TYPE_CPC"
        DPGLPTPricingTypeCpm -> "PRICING_TYPE_CPM"
        DPGLPTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        DPGLPTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON DfareportingPlacementGroupsListPricingTypes where
    parseJSON = parseJSONText "DfareportingPlacementGroupsListPricingTypes"

instance ToJSON DfareportingPlacementGroupsListPricingTypes where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingUserRolesListSortField
    = DURLSFID
      -- ^ @ID@
    | DURLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingUserRolesListSortField

instance FromText DfareportingUserRolesListSortField where
    fromText = \case
        "ID" -> Just DURLSFID
        "NAME" -> Just DURLSFName
        _ -> Nothing

instance ToText DfareportingUserRolesListSortField where
    toText = \case
        DURLSFID -> "ID"
        DURLSFName -> "NAME"

instance FromJSON DfareportingUserRolesListSortField where
    parseJSON = parseJSONText "DfareportingUserRolesListSortField"

instance ToJSON DfareportingUserRolesListSortField where
    toJSON = toJSONText
