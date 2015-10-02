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

-- | Tag format type for the floodlight activity. If left blank, the tag
-- format will default to HTML.
data FloodlightActivityTagFormat
    = HTML
      -- ^ @HTML@
    | Xhtml
      -- ^ @XHTML@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityTagFormat

instance FromText FloodlightActivityTagFormat where
    fromText = \case
        "HTML" -> Just HTML
        "XHTML" -> Just Xhtml
        _ -> Nothing

instance ToText FloodlightActivityTagFormat where
    toText = \case
        HTML -> "HTML"
        Xhtml -> "XHTML"

instance FromJSON FloodlightActivityTagFormat where
    parseJSON = parseJSONText "FloodlightActivityTagFormat"

instance ToJSON FloodlightActivityTagFormat where
    toJSON = toJSONText

-- | The date range relative to the date of when the report is run.
data DateRangeRelativeDateRange
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

instance Hashable DateRangeRelativeDateRange

instance FromText DateRangeRelativeDateRange where
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

instance ToText DateRangeRelativeDateRange where
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

instance FromJSON DateRangeRelativeDateRange where
    parseJSON = parseJSONText "DateRangeRelativeDateRange"

instance ToJSON DateRangeRelativeDateRange where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingFloodlightActivitiesListSortField
    = ID
      -- ^ @ID@
    | Name
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFloodlightActivitiesListSortField

instance FromText DfareportingFloodlightActivitiesListSortField where
    fromText = \case
        "ID" -> Just ID
        "NAME" -> Just Name
        _ -> Nothing

instance ToText DfareportingFloodlightActivitiesListSortField where
    toText = \case
        ID -> "ID"
        Name -> "NAME"

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

-- | Select only placement groups belonging with this group type. A package
-- is a simple group of placements that acts as a single pricing point for
-- a group of tags. A roadblock is a group of placements that not only acts
-- as a single pricing point but also assumes that all the tags in it will
-- be served at the same time. A roadblock requires one of its assigned
-- placements to be marked as primary for reporting.
data DfareportingPlacementGroupsListPlacementGroupType
    = PlacementPackage
      -- ^ @PLACEMENT_PACKAGE@
    | PlacementRoadblock
      -- ^ @PLACEMENT_ROADBLOCK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementGroupsListPlacementGroupType

instance FromText DfareportingPlacementGroupsListPlacementGroupType where
    fromText = \case
        "PLACEMENT_PACKAGE" -> Just PlacementPackage
        "PLACEMENT_ROADBLOCK" -> Just PlacementRoadblock
        _ -> Nothing

instance ToText DfareportingPlacementGroupsListPlacementGroupType where
    toText = \case
        PlacementPackage -> "PLACEMENT_PACKAGE"
        PlacementRoadblock -> "PLACEMENT_ROADBLOCK"

instance FromJSON DfareportingPlacementGroupsListPlacementGroupType where
    parseJSON = parseJSONText "DfareportingPlacementGroupsListPlacementGroupType"

instance ToJSON DfareportingPlacementGroupsListPlacementGroupType where
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

-- | Comparison operator of this term. This field is only relevant when type
-- is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
data ListPopulationTermOperator
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

instance Hashable ListPopulationTermOperator

instance FromText ListPopulationTermOperator where
    fromText = \case
        "NUM_EQUALS" -> Just NumEquals
        "NUM_GREATER_THAN" -> Just NumGreaterThan
        "NUM_GREATER_THAN_EQUAL" -> Just NumGreaterThanEqual
        "NUM_LESS_THAN" -> Just NumLessThan
        "NUM_LESS_THAN_EQUAL" -> Just NumLessThanEqual
        "STRING_CONTAINS" -> Just StringContains
        "STRING_EQUALS" -> Just StringEquals
        _ -> Nothing

instance ToText ListPopulationTermOperator where
    toText = \case
        NumEquals -> "NUM_EQUALS"
        NumGreaterThan -> "NUM_GREATER_THAN"
        NumGreaterThanEqual -> "NUM_GREATER_THAN_EQUAL"
        NumLessThan -> "NUM_LESS_THAN"
        NumLessThanEqual -> "NUM_LESS_THAN_EQUAL"
        StringContains -> "STRING_CONTAINS"
        StringEquals -> "STRING_EQUALS"

instance FromJSON ListPopulationTermOperator where
    parseJSON = parseJSONText "ListPopulationTermOperator"

instance ToJSON ListPopulationTermOperator where
    toJSON = toJSONText

-- | Offset left unit for an asset. This is a read-only field. Applicable to
-- the following creative types: all RICH_MEDIA.
data CreativeAssetPositionLeftUnit
    = OffsetUnitPercent
      -- ^ @OFFSET_UNIT_PERCENT@
    | OffsetUnitPixel
      -- ^ @OFFSET_UNIT_PIXEL@
    | OffsetUnitPixelFromCenter
      -- ^ @OFFSET_UNIT_PIXEL_FROM_CENTER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetPositionLeftUnit

instance FromText CreativeAssetPositionLeftUnit where
    fromText = \case
        "OFFSET_UNIT_PERCENT" -> Just OffsetUnitPercent
        "OFFSET_UNIT_PIXEL" -> Just OffsetUnitPixel
        "OFFSET_UNIT_PIXEL_FROM_CENTER" -> Just OffsetUnitPixelFromCenter
        _ -> Nothing

instance ToText CreativeAssetPositionLeftUnit where
    toText = \case
        OffsetUnitPercent -> "OFFSET_UNIT_PERCENT"
        OffsetUnitPixel -> "OFFSET_UNIT_PIXEL"
        OffsetUnitPixelFromCenter -> "OFFSET_UNIT_PIXEL_FROM_CENTER"

instance FromJSON CreativeAssetPositionLeftUnit where
    parseJSON = parseJSONText "CreativeAssetPositionLeftUnit"

instance ToJSON CreativeAssetPositionLeftUnit where
    toJSON = toJSONText

-- | The delivery type for the recipient.
data RecipientDeliveryType
    = Attachment
      -- ^ @ATTACHMENT@
    | Link
      -- ^ @LINK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RecipientDeliveryType

instance FromText RecipientDeliveryType where
    fromText = \case
        "ATTACHMENT" -> Just Attachment
        "LINK" -> Just Link
        _ -> Nothing

instance ToText RecipientDeliveryType where
    toText = \case
        Attachment -> "ATTACHMENT"
        Link -> "LINK"

instance FromJSON RecipientDeliveryType where
    parseJSON = parseJSONText "RecipientDeliveryType"

instance ToJSON RecipientDeliveryType where
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

-- | Placement cap cost option.
data PricingScheduleCapCostOption
    = CapCostCumulative
      -- ^ @CAP_COST_CUMULATIVE@
    | CapCostMonthly
      -- ^ @CAP_COST_MONTHLY@
    | CapCostNone
      -- ^ @CAP_COST_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingScheduleCapCostOption

instance FromText PricingScheduleCapCostOption where
    fromText = \case
        "CAP_COST_CUMULATIVE" -> Just CapCostCumulative
        "CAP_COST_MONTHLY" -> Just CapCostMonthly
        "CAP_COST_NONE" -> Just CapCostNone
        _ -> Nothing

instance ToText PricingScheduleCapCostOption where
    toText = \case
        CapCostCumulative -> "CAP_COST_CUMULATIVE"
        CapCostMonthly -> "CAP_COST_MONTHLY"
        CapCostNone -> "CAP_COST_NONE"

instance FromJSON PricingScheduleCapCostOption where
    parseJSON = parseJSONText "PricingScheduleCapCostOption"

instance ToJSON PricingScheduleCapCostOption where
    toJSON = toJSONText

-- | Levels of availability for a user role permission.
data UserRolePermissionAvailability
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

instance Hashable UserRolePermissionAvailability

instance FromText UserRolePermissionAvailability where
    fromText = \case
        "ACCOUNT_ALWAYS" -> Just AccountAlways
        "ACCOUNT_BY_DEFAULT" -> Just AccountByDefault
        "NOT_AVAILABLE_BY_DEFAULT" -> Just NotAvailableByDefault
        "SUBACCOUNT_AND_ACCOUNT_ALWAYS" -> Just SubAccountAndAccountAlways
        "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT" -> Just SubAccountAndAccountByDefault
        _ -> Nothing

instance ToText UserRolePermissionAvailability where
    toText = \case
        AccountAlways -> "ACCOUNT_ALWAYS"
        AccountByDefault -> "ACCOUNT_BY_DEFAULT"
        NotAvailableByDefault -> "NOT_AVAILABLE_BY_DEFAULT"
        SubAccountAndAccountAlways -> "SUBACCOUNT_AND_ACCOUNT_ALWAYS"
        SubAccountAndAccountByDefault -> "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT"

instance FromJSON UserRolePermissionAvailability where
    parseJSON = parseJSONText "UserRolePermissionAvailability"

instance ToJSON UserRolePermissionAvailability where
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

-- | Visibility of this directory site contact assignment. When set to PUBLIC
-- this contact assignment is visible to all account and agency users; when
-- set to PRIVATE it is visible only to the site.
data DirectorySiteContactAssignmentVisibility
    = Private
      -- ^ @PRIVATE@
    | Public
      -- ^ @PUBLIC@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactAssignmentVisibility

instance FromText DirectorySiteContactAssignmentVisibility where
    fromText = \case
        "PRIVATE" -> Just Private
        "PUBLIC" -> Just Public
        _ -> Nothing

instance ToText DirectorySiteContactAssignmentVisibility where
    toText = \case
        Private -> "PRIVATE"
        Public -> "PUBLIC"

instance FromJSON DirectorySiteContactAssignmentVisibility where
    parseJSON = parseJSONText "DirectorySiteContactAssignmentVisibility"

instance ToJSON DirectorySiteContactAssignmentVisibility where
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

-- | Tag formats to generate for these placements.
data DfareportingPlacementsGeneratetagsTagFormats
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

instance Hashable DfareportingPlacementsGeneratetagsTagFormats

instance FromText DfareportingPlacementsGeneratetagsTagFormats where
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

instance ToText DfareportingPlacementsGeneratetagsTagFormats where
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

instance FromJSON DfareportingPlacementsGeneratetagsTagFormats where
    parseJSON = parseJSONText "DfareportingPlacementsGeneratetagsTagFormats"

instance ToJSON DfareportingPlacementsGeneratetagsTagFormats where
    toJSON = toJSONText

-- | Third-party URL type for in-stream video creatives.
data ThirdPartyTrackingURLThirdPartyURLType
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

instance Hashable ThirdPartyTrackingURLThirdPartyURLType

instance FromText ThirdPartyTrackingURLThirdPartyURLType where
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

instance ToText ThirdPartyTrackingURLThirdPartyURLType where
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

instance FromJSON ThirdPartyTrackingURLThirdPartyURLType where
    parseJSON = parseJSONText "ThirdPartyTrackingURLThirdPartyURLType"

instance ToJSON ThirdPartyTrackingURLThirdPartyURLType where
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
    = AdditionalFlash
      -- ^ @ADDITIONAL_FLASH@
    | AdditionalImage
      -- ^ @ADDITIONAL_IMAGE@
    | AlternateVideo
      -- ^ @ALTERNATE_VIDEO@
    | BackupImage
      -- ^ @BACKUP_IMAGE@
    | Other
      -- ^ @OTHER@
    | ParentVideo
      -- ^ @PARENT_VIDEO@
    | Primary
      -- ^ @PRIMARY@
    | TranscodedVideo
      -- ^ @TRANSCODED_VIDEO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetRole

instance FromText CreativeAssetRole where
    fromText = \case
        "ADDITIONAL_FLASH" -> Just AdditionalFlash
        "ADDITIONAL_IMAGE" -> Just AdditionalImage
        "ALTERNATE_VIDEO" -> Just AlternateVideo
        "BACKUP_IMAGE" -> Just BackupImage
        "OTHER" -> Just Other
        "PARENT_VIDEO" -> Just ParentVideo
        "PRIMARY" -> Just Primary
        "TRANSCODED_VIDEO" -> Just TranscodedVideo
        _ -> Nothing

instance ToText CreativeAssetRole where
    toText = \case
        AdditionalFlash -> "ADDITIONAL_FLASH"
        AdditionalImage -> "ADDITIONAL_IMAGE"
        AlternateVideo -> "ALTERNATE_VIDEO"
        BackupImage -> "BACKUP_IMAGE"
        Other -> "OTHER"
        ParentVideo -> "PARENT_VIDEO"
        Primary -> "PRIMARY"
        TranscodedVideo -> "TRANSCODED_VIDEO"

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

-- | Trafficker type of this user profile.
data AccountUserProfileTraffickerType
    = ExternalTrafficker
      -- ^ @EXTERNAL_TRAFFICKER@
    | InternalNonTrafficker
      -- ^ @INTERNAL_NON_TRAFFICKER@
    | InternalTrafficker
      -- ^ @INTERNAL_TRAFFICKER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProfileTraffickerType

instance FromText AccountUserProfileTraffickerType where
    fromText = \case
        "EXTERNAL_TRAFFICKER" -> Just ExternalTrafficker
        "INTERNAL_NON_TRAFFICKER" -> Just InternalNonTrafficker
        "INTERNAL_TRAFFICKER" -> Just InternalTrafficker
        _ -> Nothing

instance ToText AccountUserProfileTraffickerType where
    toText = \case
        ExternalTrafficker -> "EXTERNAL_TRAFFICKER"
        InternalNonTrafficker -> "INTERNAL_NON_TRAFFICKER"
        InternalTrafficker -> "INTERNAL_TRAFFICKER"

instance FromJSON AccountUserProfileTraffickerType where
    parseJSON = parseJSONText "AccountUserProfileTraffickerType"

instance ToJSON AccountUserProfileTraffickerType where
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

data DirectorySiteInterstitialTagFormats
    = IframeJavascriptInterstitial
      -- ^ @IFRAME_JAVASCRIPT_INTERSTITIAL@
    | InternalRedirectInterstitial
      -- ^ @INTERNAL_REDIRECT_INTERSTITIAL@
    | JavascriptInterstitial
      -- ^ @JAVASCRIPT_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteInterstitialTagFormats

instance FromText DirectorySiteInterstitialTagFormats where
    fromText = \case
        "IFRAME_JAVASCRIPT_INTERSTITIAL" -> Just IframeJavascriptInterstitial
        "INTERNAL_REDIRECT_INTERSTITIAL" -> Just InternalRedirectInterstitial
        "JAVASCRIPT_INTERSTITIAL" -> Just JavascriptInterstitial
        _ -> Nothing

instance ToText DirectorySiteInterstitialTagFormats where
    toText = \case
        IframeJavascriptInterstitial -> "IFRAME_JAVASCRIPT_INTERSTITIAL"
        InternalRedirectInterstitial -> "INTERNAL_REDIRECT_INTERSTITIAL"
        JavascriptInterstitial -> "JAVASCRIPT_INTERSTITIAL"

instance FromJSON DirectorySiteInterstitialTagFormats where
    parseJSON = parseJSONText "DirectorySiteInterstitialTagFormats"

instance ToJSON DirectorySiteInterstitialTagFormats where
    toJSON = toJSONText

-- | The status of the report file.
data FileStatus
    = Cancelled
      -- ^ @CANCELLED@
    | Failed
      -- ^ @FAILED@
    | Processing
      -- ^ @PROCESSING@
    | ReportAvailable
      -- ^ @REPORT_AVAILABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FileStatus

instance FromText FileStatus where
    fromText = \case
        "CANCELLED" -> Just Cancelled
        "FAILED" -> Just Failed
        "PROCESSING" -> Just Processing
        "REPORT_AVAILABLE" -> Just ReportAvailable
        _ -> Nothing

instance ToText FileStatus where
    toText = \case
        Cancelled -> "CANCELLED"
        Failed -> "FAILED"
        Processing -> "PROCESSING"
        ReportAvailable -> "REPORT_AVAILABLE"

instance FromJSON FileStatus where
    parseJSON = parseJSONText "FileStatus"

instance ToJSON FileStatus where
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

-- | Artwork type used by the creative.This is a read-only field.
data CreativeCustomEventArtworkType
    = ArtworkTypeFlash
      -- ^ @ARTWORK_TYPE_FLASH@
    | ArtworkTypeHTML5
      -- ^ @ARTWORK_TYPE_HTML5@
    | ArtworkTypeMixed
      -- ^ @ARTWORK_TYPE_MIXED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeCustomEventArtworkType

instance FromText CreativeCustomEventArtworkType where
    fromText = \case
        "ARTWORK_TYPE_FLASH" -> Just ArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Just ArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Just ArtworkTypeMixed
        _ -> Nothing

instance ToText CreativeCustomEventArtworkType where
    toText = \case
        ArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        ArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        ArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"

instance FromJSON CreativeCustomEventArtworkType where
    parseJSON = parseJSONText "CreativeCustomEventArtworkType"

instance ToJSON CreativeCustomEventArtworkType where
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

-- | Select only placements with this payment source.
data DfareportingPlacementsListPaymentSource
    = PlacementAgencyPaid
      -- ^ @PLACEMENT_AGENCY_PAID@
    | PlacementPublisherPaid
      -- ^ @PLACEMENT_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementsListPaymentSource

instance FromText DfareportingPlacementsListPaymentSource where
    fromText = \case
        "PLACEMENT_AGENCY_PAID" -> Just PlacementAgencyPaid
        "PLACEMENT_PUBLISHER_PAID" -> Just PlacementPublisherPaid
        _ -> Nothing

instance ToText DfareportingPlacementsListPaymentSource where
    toText = \case
        PlacementAgencyPaid -> "PLACEMENT_AGENCY_PAID"
        PlacementPublisherPaid -> "PLACEMENT_PUBLISHER_PAID"

instance FromJSON DfareportingPlacementsListPaymentSource where
    parseJSON = parseJSONText "DfareportingPlacementsListPaymentSource"

instance ToJSON DfareportingPlacementsListPaymentSource where
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

-- | Status of this event tag. Must be ENABLED for this event tag to fire.
-- This is a required field.
data EventTagStatus
    = Disabled
      -- ^ @DISABLED@
    | Enabled
      -- ^ @ENABLED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagStatus

instance FromText EventTagStatus where
    fromText = \case
        "DISABLED" -> Just Disabled
        "ENABLED" -> Just Enabled
        _ -> Nothing

instance ToText EventTagStatus where
    toText = \case
        Disabled -> "DISABLED"
        Enabled -> "ENABLED"

instance FromJSON EventTagStatus where
    parseJSON = parseJSONText "EventTagStatus"

instance ToJSON EventTagStatus where
    toJSON = toJSONText

data CreativeAssetDetectedFeatures
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

instance Hashable CreativeAssetDetectedFeatures

instance FromText CreativeAssetDetectedFeatures where
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

instance ToText CreativeAssetDetectedFeatures where
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

instance FromJSON CreativeAssetDetectedFeatures where
    parseJSON = parseJSONText "CreativeAssetDetectedFeatures"

instance ToJSON CreativeAssetDetectedFeatures where
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

-- | Types of attribution options for natural search conversions.
data FloodlightConfigurationNATuralSearchConversionAttributionOption
    = ExcludeNATuralSearchConversionAttribution
      -- ^ @EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION@
    | IncludeNATuralSearchConversionAttribution
      -- ^ @INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION@
    | IncludeNATuralSearchTieredConversionAttribution
      -- ^ @INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationNATuralSearchConversionAttributionOption

instance FromText FloodlightConfigurationNATuralSearchConversionAttributionOption where
    fromText = \case
        "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Just ExcludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Just IncludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION" -> Just IncludeNATuralSearchTieredConversionAttribution
        _ -> Nothing

instance ToText FloodlightConfigurationNATuralSearchConversionAttributionOption where
    toText = \case
        ExcludeNATuralSearchConversionAttribution -> "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        IncludeNATuralSearchConversionAttribution -> "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        IncludeNATuralSearchTieredConversionAttribution -> "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION"

instance FromJSON FloodlightConfigurationNATuralSearchConversionAttributionOption where
    parseJSON = parseJSONText "FloodlightConfigurationNATuralSearchConversionAttributionOption"

instance ToJSON FloodlightConfigurationNATuralSearchConversionAttributionOption where
    toJSON = toJSONText

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

instance FromJSON CreativeAssetArtworkType where
    parseJSON = parseJSONText "CreativeAssetArtworkType"

instance ToJSON CreativeAssetArtworkType where
    toJSON = toJSONText

-- | Placement pricing type. This field is required on insertion.
data PricingSchedulePricingType
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

instance Hashable PricingSchedulePricingType

instance FromText PricingSchedulePricingType where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just PricingTypeCpa
        "PRICING_TYPE_CPC" -> Just PricingTypeCpc
        "PRICING_TYPE_CPM" -> Just PricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText PricingSchedulePricingType where
    toText = \case
        PricingTypeCpa -> "PRICING_TYPE_CPA"
        PricingTypeCpc -> "PRICING_TYPE_CPC"
        PricingTypeCpm -> "PRICING_TYPE_CPM"
        PricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON PricingSchedulePricingType where
    parseJSON = parseJSONText "PricingSchedulePricingType"

instance ToJSON PricingSchedulePricingType where
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

-- | Target type used by the event.
data CreativeCustomEventTargetType
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

instance Hashable CreativeCustomEventTargetType

instance FromText CreativeCustomEventTargetType where
    fromText = \case
        "TARGET_BLANK" -> Just TargetBlank
        "TARGET_PARENT" -> Just TargetParent
        "TARGET_POPUP" -> Just TargetPopup
        "TARGET_SELF" -> Just TargetSelf
        "TARGET_TOP" -> Just TargetTop
        _ -> Nothing

instance ToText CreativeCustomEventTargetType where
    toText = \case
        TargetBlank -> "TARGET_BLANK"
        TargetParent -> "TARGET_PARENT"
        TargetPopup -> "TARGET_POPUP"
        TargetSelf -> "TARGET_SELF"
        TargetTop -> "TARGET_TOP"

instance FromJSON CreativeCustomEventTargetType where
    parseJSON = parseJSONText "CreativeCustomEventTargetType"

instance ToJSON CreativeCustomEventTargetType where
    toJSON = toJSONText

-- | Select only placements that are associated with these compatibilities.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO refers
-- to rendering in in-stream video ads developed with the VAST standard.
data DfareportingPlacementsListCompatibilities
    = DPLCApp
      -- ^ @APP@
    | DPLCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | DPLCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | DPLCWeb
      -- ^ @WEB@
    | DPLCWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementsListCompatibilities

instance FromText DfareportingPlacementsListCompatibilities where
    fromText = \case
        "APP" -> Just DPLCApp
        "APP_INTERSTITIAL" -> Just DPLCAppInterstitial
        "IN_STREAM_VIDEO" -> Just DPLCInStreamVideo
        "WEB" -> Just DPLCWeb
        "WEB_INTERSTITIAL" -> Just DPLCWebInterstitial
        _ -> Nothing

instance ToText DfareportingPlacementsListCompatibilities where
    toText = \case
        DPLCApp -> "APP"
        DPLCAppInterstitial -> "APP_INTERSTITIAL"
        DPLCInStreamVideo -> "IN_STREAM_VIDEO"
        DPLCWeb -> "WEB"
        DPLCWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON DfareportingPlacementsListCompatibilities where
    parseJSON = parseJSONText "DfareportingPlacementsListCompatibilities"

instance ToJSON DfareportingPlacementsListCompatibilities where
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

data ReportScheduleRepeatsOnWeekDays
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

instance Hashable ReportScheduleRepeatsOnWeekDays

instance FromText ReportScheduleRepeatsOnWeekDays where
    fromText = \case
        "FRIDAY" -> Just Friday
        "MONDAY" -> Just Monday
        "SATURDAY" -> Just Saturday
        "SUNDAY" -> Just Sunday
        "THURSDAY" -> Just Thursday
        "TUESDAY" -> Just Tuesday
        "WEDNESDAY" -> Just Wednesday
        _ -> Nothing

instance ToText ReportScheduleRepeatsOnWeekDays where
    toText = \case
        Friday -> "FRIDAY"
        Monday -> "MONDAY"
        Saturday -> "SATURDAY"
        Sunday -> "SUNDAY"
        Thursday -> "THURSDAY"
        Tuesday -> "TUESDAY"
        Wednesday -> "WEDNESDAY"

instance FromJSON ReportScheduleRepeatsOnWeekDays where
    parseJSON = parseJSONText "ReportScheduleRepeatsOnWeekDays"

instance ToJSON ReportScheduleRepeatsOnWeekDays where
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

-- | Duration type for which an asset will be displayed. Applicable to the
-- following creative types: all RICH_MEDIA.
data CreativeAssetDurationType
    = AssetDurationTypeAuto
      -- ^ @ASSET_DURATION_TYPE_AUTO@
    | AssetDurationTypeCustom
      -- ^ @ASSET_DURATION_TYPE_CUSTOM@
    | AssetDurationTypeNone
      -- ^ @ASSET_DURATION_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetDurationType

instance FromText CreativeAssetDurationType where
    fromText = \case
        "ASSET_DURATION_TYPE_AUTO" -> Just AssetDurationTypeAuto
        "ASSET_DURATION_TYPE_CUSTOM" -> Just AssetDurationTypeCustom
        "ASSET_DURATION_TYPE_NONE" -> Just AssetDurationTypeNone
        _ -> Nothing

instance ToText CreativeAssetDurationType where
    toText = \case
        AssetDurationTypeAuto -> "ASSET_DURATION_TYPE_AUTO"
        AssetDurationTypeCustom -> "ASSET_DURATION_TYPE_CUSTOM"
        AssetDurationTypeNone -> "ASSET_DURATION_TYPE_NONE"

instance FromJSON CreativeAssetDurationType where
    parseJSON = parseJSONText "CreativeAssetDurationType"

instance ToJSON CreativeAssetDurationType where
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

-- | Variable name in the tag. This is a required field.
data UserDefinedVariableConfigurationVariableType
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

instance Hashable UserDefinedVariableConfigurationVariableType

instance FromText UserDefinedVariableConfigurationVariableType where
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

instance ToText UserDefinedVariableConfigurationVariableType where
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

instance FromJSON UserDefinedVariableConfigurationVariableType where
    parseJSON = parseJSONText "UserDefinedVariableConfigurationVariableType"

instance ToJSON UserDefinedVariableConfigurationVariableType where
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

-- | Position in the browser where the window will open.
data FsCommandPositionOption
    = Centered
      -- ^ @CENTERED@
    | DistanceFromTopLeftCorner
      -- ^ @DISTANCE_FROM_TOP_LEFT_CORNER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FsCommandPositionOption

instance FromText FsCommandPositionOption where
    fromText = \case
        "CENTERED" -> Just Centered
        "DISTANCE_FROM_TOP_LEFT_CORNER" -> Just DistanceFromTopLeftCorner
        _ -> Nothing

instance ToText FsCommandPositionOption where
    toText = \case
        Centered -> "CENTERED"
        DistanceFromTopLeftCorner -> "DISTANCE_FROM_TOP_LEFT_CORNER"

instance FromJSON FsCommandPositionOption where
    parseJSON = parseJSONText "FsCommandPositionOption"

instance ToJSON FsCommandPositionOption where
    toJSON = toJSONText

data DayPartTargetingDaysOfWeek
    = DPTDOWFriday
      -- ^ @FRIDAY@
    | DPTDOWMonday
      -- ^ @MONDAY@
    | DPTDOWSaturday
      -- ^ @SATURDAY@
    | DPTDOWSunday
      -- ^ @SUNDAY@
    | DPTDOWThursday
      -- ^ @THURSDAY@
    | DPTDOWTuesday
      -- ^ @TUESDAY@
    | DPTDOWWednesday
      -- ^ @WEDNESDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DayPartTargetingDaysOfWeek

instance FromText DayPartTargetingDaysOfWeek where
    fromText = \case
        "FRIDAY" -> Just DPTDOWFriday
        "MONDAY" -> Just DPTDOWMonday
        "SATURDAY" -> Just DPTDOWSaturday
        "SUNDAY" -> Just DPTDOWSunday
        "THURSDAY" -> Just DPTDOWThursday
        "TUESDAY" -> Just DPTDOWTuesday
        "WEDNESDAY" -> Just DPTDOWWednesday
        _ -> Nothing

instance ToText DayPartTargetingDaysOfWeek where
    toText = \case
        DPTDOWFriday -> "FRIDAY"
        DPTDOWMonday -> "MONDAY"
        DPTDOWSaturday -> "SATURDAY"
        DPTDOWSunday -> "SUNDAY"
        DPTDOWThursday -> "THURSDAY"
        DPTDOWTuesday -> "TUESDAY"
        DPTDOWWednesday -> "WEDNESDAY"

instance FromJSON DayPartTargetingDaysOfWeek where
    parseJSON = parseJSONText "DayPartTargetingDaysOfWeek"

instance ToJSON DayPartTargetingDaysOfWeek where
    toJSON = toJSONText

-- | Select only change logs with the specified action.
data DfareportingChangeLogsListAction
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

instance Hashable DfareportingChangeLogsListAction

instance FromText DfareportingChangeLogsListAction where
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

instance ToText DfareportingChangeLogsListAction where
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

instance FromJSON DfareportingChangeLogsListAction where
    parseJSON = parseJSONText "DfareportingChangeLogsListAction"

instance ToJSON DfareportingChangeLogsListAction where
    toJSON = toJSONText

data FloodlightActivityUserDefinedVariableTypes
    = FAUDVTU1
      -- ^ @U1@
    | FAUDVTU10
      -- ^ @U10@
    | FAUDVTU11
      -- ^ @U11@
    | FAUDVTU12
      -- ^ @U12@
    | FAUDVTU13
      -- ^ @U13@
    | FAUDVTU14
      -- ^ @U14@
    | FAUDVTU15
      -- ^ @U15@
    | FAUDVTU16
      -- ^ @U16@
    | FAUDVTU17
      -- ^ @U17@
    | FAUDVTU18
      -- ^ @U18@
    | FAUDVTU19
      -- ^ @U19@
    | FAUDVTU2
      -- ^ @U2@
    | FAUDVTU20
      -- ^ @U20@
    | FAUDVTU3
      -- ^ @U3@
    | FAUDVTU4
      -- ^ @U4@
    | FAUDVTU5
      -- ^ @U5@
    | FAUDVTU6
      -- ^ @U6@
    | FAUDVTU7
      -- ^ @U7@
    | FAUDVTU8
      -- ^ @U8@
    | FAUDVTU9
      -- ^ @U9@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityUserDefinedVariableTypes

instance FromText FloodlightActivityUserDefinedVariableTypes where
    fromText = \case
        "U1" -> Just FAUDVTU1
        "U10" -> Just FAUDVTU10
        "U11" -> Just FAUDVTU11
        "U12" -> Just FAUDVTU12
        "U13" -> Just FAUDVTU13
        "U14" -> Just FAUDVTU14
        "U15" -> Just FAUDVTU15
        "U16" -> Just FAUDVTU16
        "U17" -> Just FAUDVTU17
        "U18" -> Just FAUDVTU18
        "U19" -> Just FAUDVTU19
        "U2" -> Just FAUDVTU2
        "U20" -> Just FAUDVTU20
        "U3" -> Just FAUDVTU3
        "U4" -> Just FAUDVTU4
        "U5" -> Just FAUDVTU5
        "U6" -> Just FAUDVTU6
        "U7" -> Just FAUDVTU7
        "U8" -> Just FAUDVTU8
        "U9" -> Just FAUDVTU9
        _ -> Nothing

instance ToText FloodlightActivityUserDefinedVariableTypes where
    toText = \case
        FAUDVTU1 -> "U1"
        FAUDVTU10 -> "U10"
        FAUDVTU11 -> "U11"
        FAUDVTU12 -> "U12"
        FAUDVTU13 -> "U13"
        FAUDVTU14 -> "U14"
        FAUDVTU15 -> "U15"
        FAUDVTU16 -> "U16"
        FAUDVTU17 -> "U17"
        FAUDVTU18 -> "U18"
        FAUDVTU19 -> "U19"
        FAUDVTU2 -> "U2"
        FAUDVTU20 -> "U20"
        FAUDVTU3 -> "U3"
        FAUDVTU4 -> "U4"
        FAUDVTU5 -> "U5"
        FAUDVTU6 -> "U6"
        FAUDVTU7 -> "U7"
        FAUDVTU8 -> "U8"
        FAUDVTU9 -> "U9"

instance FromJSON FloodlightActivityUserDefinedVariableTypes where
    parseJSON = parseJSONText "FloodlightActivityUserDefinedVariableTypes"

instance ToJSON FloodlightActivityUserDefinedVariableTypes where
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

-- | The type of delivery for the owner to receive, if enabled.
data ReportDeliveryEmailOwnerDeliveryType
    = RDEODTAttachment
      -- ^ @ATTACHMENT@
    | RDEODTLink
      -- ^ @LINK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportDeliveryEmailOwnerDeliveryType

instance FromText ReportDeliveryEmailOwnerDeliveryType where
    fromText = \case
        "ATTACHMENT" -> Just RDEODTAttachment
        "LINK" -> Just RDEODTLink
        _ -> Nothing

instance ToText ReportDeliveryEmailOwnerDeliveryType where
    toText = \case
        RDEODTAttachment -> "ATTACHMENT"
        RDEODTLink -> "LINK"

instance FromJSON ReportDeliveryEmailOwnerDeliveryType where
    parseJSON = parseJSONText "ReportDeliveryEmailOwnerDeliveryType"

instance ToJSON ReportDeliveryEmailOwnerDeliveryType where
    toJSON = toJSONText

-- | Site contact type.
data SiteContactContactType
    = SalesPerson
      -- ^ @SALES_PERSON@
    | Trafficker
      -- ^ @TRAFFICKER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SiteContactContactType

instance FromText SiteContactContactType where
    fromText = \case
        "SALES_PERSON" -> Just SalesPerson
        "TRAFFICKER" -> Just Trafficker
        _ -> Nothing

instance ToText SiteContactContactType where
    toText = \case
        SalesPerson -> "SALES_PERSON"
        Trafficker -> "TRAFFICKER"

instance FromJSON SiteContactContactType where
    parseJSON = parseJSONText "SiteContactContactType"

instance ToJSON SiteContactContactType where
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

instance FromJSON FloodlightConfigurationFirstDayOfWeek where
    parseJSON = parseJSONText "FloodlightConfigurationFirstDayOfWeek"

instance ToJSON FloodlightConfigurationFirstDayOfWeek where
    toJSON = toJSONText

-- | Serving priority of an ad, with respect to other ads. The lower the
-- priority number, the greater the priority with which it is served.
data DeliverySchedulePriority
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

instance Hashable DeliverySchedulePriority

instance FromText DeliverySchedulePriority where
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

instance ToText DeliverySchedulePriority where
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

instance FromJSON DeliverySchedulePriority where
    parseJSON = parseJSONText "DeliverySchedulePriority"

instance ToJSON DeliverySchedulePriority where
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

-- | Initial wait time type before making the asset visible. Applicable to
-- the following creative types: all RICH_MEDIA.
data CreativeAssetStartTimeType
    = AssetStartTimeTypeCustom
      -- ^ @ASSET_START_TIME_TYPE_CUSTOM@
    | AssetStartTimeTypeNone
      -- ^ @ASSET_START_TIME_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetStartTimeType

instance FromText CreativeAssetStartTimeType where
    fromText = \case
        "ASSET_START_TIME_TYPE_CUSTOM" -> Just AssetStartTimeTypeCustom
        "ASSET_START_TIME_TYPE_NONE" -> Just AssetStartTimeTypeNone
        _ -> Nothing

instance ToText CreativeAssetStartTimeType where
    toText = \case
        AssetStartTimeTypeCustom -> "ASSET_START_TIME_TYPE_CUSTOM"
        AssetStartTimeTypeNone -> "ASSET_START_TIME_TYPE_NONE"

instance FromJSON CreativeAssetStartTimeType where
    parseJSON = parseJSONText "CreativeAssetStartTimeType"

instance ToJSON CreativeAssetStartTimeType where
    toJSON = toJSONText

-- | Directory site contact role.
data DirectorySiteContactRole
    = Admin
      -- ^ @ADMIN@
    | Edit
      -- ^ @EDIT@
    | View
      -- ^ @VIEW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactRole

instance FromText DirectorySiteContactRole where
    fromText = \case
        "ADMIN" -> Just Admin
        "EDIT" -> Just Edit
        "VIEW" -> Just View
        _ -> Nothing

instance ToText DirectorySiteContactRole where
    toText = \case
        Admin -> "ADMIN"
        Edit -> "EDIT"
        View -> "VIEW"

instance FromJSON DirectorySiteContactRole where
    parseJSON = parseJSONText "DirectorySiteContactRole"

instance ToJSON DirectorySiteContactRole where
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

instance FromJSON RemarketingListListSource where
    parseJSON = parseJSONText "RemarketingListListSource"

instance ToJSON RemarketingListListSource where
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

-- | Popup window position either centered or at specific coordinate.
data PopupWindowPropertiesPositionType
    = Center
      -- ^ @CENTER@
    | Coordinates
      -- ^ @COORDINATES@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PopupWindowPropertiesPositionType

instance FromText PopupWindowPropertiesPositionType where
    fromText = \case
        "CENTER" -> Just Center
        "COORDINATES" -> Just Coordinates
        _ -> Nothing

instance ToText PopupWindowPropertiesPositionType where
    toText = \case
        Center -> "CENTER"
        Coordinates -> "COORDINATES"

instance FromJSON PopupWindowPropertiesPositionType where
    parseJSON = parseJSONText "PopupWindowPropertiesPositionType"

instance ToJSON PopupWindowPropertiesPositionType where
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

-- | User type of the user profile. This is a read-only field that can be
-- left blank.
data AccountUserProfileUserAccessType
    = InternalAdministrator
      -- ^ @INTERNAL_ADMINISTRATOR@
    | NormalUser
      -- ^ @NORMAL_USER@
    | SuperUser
      -- ^ @SUPER_USER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProfileUserAccessType

instance FromText AccountUserProfileUserAccessType where
    fromText = \case
        "INTERNAL_ADMINISTRATOR" -> Just InternalAdministrator
        "NORMAL_USER" -> Just NormalUser
        "SUPER_USER" -> Just SuperUser
        _ -> Nothing

instance ToText AccountUserProfileUserAccessType where
    toText = \case
        InternalAdministrator -> "INTERNAL_ADMINISTRATOR"
        NormalUser -> "NORMAL_USER"
        SuperUser -> "SUPER_USER"

instance FromJSON AccountUserProfileUserAccessType where
    parseJSON = parseJSONText "AccountUserProfileUserAccessType"

instance ToJSON AccountUserProfileUserAccessType where
    toJSON = toJSONText

-- | Event tag type. Can be used to specify whether to use a third-party
-- pixel, a third-party JavaScript URL, or a third-party click-through URL
-- for either impression or click tracking. This is a required field.
data EventTagType
    = ClickThroughEventTag
      -- ^ @CLICK_THROUGH_EVENT_TAG@
    | ImpressionImageEventTag
      -- ^ @IMPRESSION_IMAGE_EVENT_TAG@
    | ImpressionJavascriptEventTag
      -- ^ @IMPRESSION_JAVASCRIPT_EVENT_TAG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagType

instance FromText EventTagType where
    fromText = \case
        "CLICK_THROUGH_EVENT_TAG" -> Just ClickThroughEventTag
        "IMPRESSION_IMAGE_EVENT_TAG" -> Just ImpressionImageEventTag
        "IMPRESSION_JAVASCRIPT_EVENT_TAG" -> Just ImpressionJavascriptEventTag
        _ -> Nothing

instance ToText EventTagType where
    toText = \case
        ClickThroughEventTag -> "CLICK_THROUGH_EVENT_TAG"
        ImpressionImageEventTag -> "IMPRESSION_IMAGE_EVENT_TAG"
        ImpressionJavascriptEventTag -> "IMPRESSION_JAVASCRIPT_EVENT_TAG"

instance FromJSON EventTagType where
    parseJSON = parseJSONText "EventTagType"

instance ToJSON EventTagType where
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

-- | Audience gender of this project.
data ProjectAudienceGender
    = PlanningAudienceGenderFemale
      -- ^ @PLANNING_AUDIENCE_GENDER_FEMALE@
    | PlanningAudienceGenderMale
      -- ^ @PLANNING_AUDIENCE_GENDER_MALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProjectAudienceGender

instance FromText ProjectAudienceGender where
    fromText = \case
        "PLANNING_AUDIENCE_GENDER_FEMALE" -> Just PlanningAudienceGenderFemale
        "PLANNING_AUDIENCE_GENDER_MALE" -> Just PlanningAudienceGenderMale
        _ -> Nothing

instance ToText ProjectAudienceGender where
    toText = \case
        PlanningAudienceGenderFemale -> "PLANNING_AUDIENCE_GENDER_FEMALE"
        PlanningAudienceGenderMale -> "PLANNING_AUDIENCE_GENDER_MALE"

instance FromJSON ProjectAudienceGender where
    parseJSON = parseJSONText "ProjectAudienceGender"

instance ToJSON ProjectAudienceGender where
    toJSON = toJSONText

-- | Authoring tool for HTML5 banner creatives. This is a read-only field.
-- Applicable to the following creative types: HTML5_BANNER.
data CreativeAuthoringTool
    = Ninja
      -- ^ @NINJA@
    | Swiffy
      -- ^ @SWIFFY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAuthoringTool

instance FromText CreativeAuthoringTool where
    fromText = \case
        "NINJA" -> Just Ninja
        "SWIFFY" -> Just Swiffy
        _ -> Nothing

instance ToText CreativeAuthoringTool where
    toText = \case
        Ninja -> "NINJA"
        Swiffy -> "SWIFFY"

instance FromJSON CreativeAuthoringTool where
    parseJSON = parseJSONText "CreativeAuthoringTool"

instance ToJSON CreativeAuthoringTool where
    toJSON = toJSONText

-- | Data type for the variable. This is a required field.
data UserDefinedVariableConfigurationDataType
    = Number
      -- ^ @NUMBER@
    | String
      -- ^ @STRING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserDefinedVariableConfigurationDataType

instance FromText UserDefinedVariableConfigurationDataType where
    fromText = \case
        "NUMBER" -> Just Number
        "STRING" -> Just String
        _ -> Nothing

instance ToText UserDefinedVariableConfigurationDataType where
    toText = \case
        Number -> "NUMBER"
        String -> "STRING"

instance FromJSON UserDefinedVariableConfigurationDataType where
    parseJSON = parseJSONText "UserDefinedVariableConfigurationDataType"

instance ToJSON UserDefinedVariableConfigurationDataType where
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

data FloodlightConfigurationStandardVariableTypes
    = Num
      -- ^ @NUM@
    | Ord
      -- ^ @ORD@
    | Tran
      -- ^ @TRAN@
    | U
      -- ^ @U@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationStandardVariableTypes

instance FromText FloodlightConfigurationStandardVariableTypes where
    fromText = \case
        "NUM" -> Just Num
        "ORD" -> Just Ord
        "TRAN" -> Just Tran
        "U" -> Just U
        _ -> Nothing

instance ToText FloodlightConfigurationStandardVariableTypes where
    toText = \case
        Num -> "NUM"
        Ord -> "ORD"
        Tran -> "TRAN"
        U -> "U"

instance FromJSON FloodlightConfigurationStandardVariableTypes where
    parseJSON = parseJSONText "FloodlightConfigurationStandardVariableTypes"

instance ToJSON FloodlightConfigurationStandardVariableTypes where
    toJSON = toJSONText

-- | Option specifying how keywords are embedded in ad tags. This setting can
-- be used to specify whether keyword placeholders are inserted in
-- placement tags for this site. Publishers can then add keywords to those
-- placeholders.
data TagSettingKeywordOption
    = GenerateSeparateTagForEachKeyword
      -- ^ @GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD@
    | Ignore
      -- ^ @IGNORE@
    | PlaceholderWithListOfKeywords
      -- ^ @PLACEHOLDER_WITH_LIST_OF_KEYWORDS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TagSettingKeywordOption

instance FromText TagSettingKeywordOption where
    fromText = \case
        "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD" -> Just GenerateSeparateTagForEachKeyword
        "IGNORE" -> Just Ignore
        "PLACEHOLDER_WITH_LIST_OF_KEYWORDS" -> Just PlaceholderWithListOfKeywords
        _ -> Nothing

instance ToText TagSettingKeywordOption where
    toText = \case
        GenerateSeparateTagForEachKeyword -> "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD"
        Ignore -> "IGNORE"
        PlaceholderWithListOfKeywords -> "PLACEHOLDER_WITH_LIST_OF_KEYWORDS"

instance FromJSON TagSettingKeywordOption where
    parseJSON = parseJSONText "TagSettingKeywordOption"

instance ToJSON TagSettingKeywordOption where
    toJSON = toJSONText

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

instance FromJSON TagDataFormat where
    parseJSON = parseJSONText "TagDataFormat"

instance ToJSON TagDataFormat where
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

-- | Code type used for cache busting in the generated tag.
data FloodlightActivityCacheBustingType
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

instance Hashable FloodlightActivityCacheBustingType

instance FromText FloodlightActivityCacheBustingType where
    fromText = \case
        "ACTIVE_SERVER_PAGE" -> Just ActiveServerPage
        "COLD_FUSION" -> Just ColdFusion
        "JAVASCRIPT" -> Just Javascript
        "JSP" -> Just Jsp
        "PHP" -> Just Php
        _ -> Nothing

instance ToText FloodlightActivityCacheBustingType where
    toText = \case
        ActiveServerPage -> "ACTIVE_SERVER_PAGE"
        ColdFusion -> "COLD_FUSION"
        Javascript -> "JAVASCRIPT"
        Jsp -> "JSP"
        Php -> "PHP"

instance FromJSON FloodlightActivityCacheBustingType where
    parseJSON = parseJSONText "FloodlightActivityCacheBustingType"

instance ToJSON FloodlightActivityCacheBustingType where
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

-- | Rich media child asset type. This is a read-only field. Applicable to
-- the following creative types: all VPAID.
data CreativeAssetChildAssetType
    = ChildAssetTypeData
      -- ^ @CHILD_ASSET_TYPE_DATA@
    | ChildAssetTypeFlash
      -- ^ @CHILD_ASSET_TYPE_FLASH@
    | ChildAssetTypeImage
      -- ^ @CHILD_ASSET_TYPE_IMAGE@
    | ChildAssetTypeVideo
      -- ^ @CHILD_ASSET_TYPE_VIDEO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetChildAssetType

instance FromText CreativeAssetChildAssetType where
    fromText = \case
        "CHILD_ASSET_TYPE_DATA" -> Just ChildAssetTypeData
        "CHILD_ASSET_TYPE_FLASH" -> Just ChildAssetTypeFlash
        "CHILD_ASSET_TYPE_IMAGE" -> Just ChildAssetTypeImage
        "CHILD_ASSET_TYPE_VIDEO" -> Just ChildAssetTypeVideo
        _ -> Nothing

instance ToText CreativeAssetChildAssetType where
    toText = \case
        ChildAssetTypeData -> "CHILD_ASSET_TYPE_DATA"
        ChildAssetTypeFlash -> "CHILD_ASSET_TYPE_FLASH"
        ChildAssetTypeImage -> "CHILD_ASSET_TYPE_IMAGE"
        ChildAssetTypeVideo -> "CHILD_ASSET_TYPE_VIDEO"

instance FromJSON CreativeAssetChildAssetType where
    parseJSON = parseJSONText "CreativeAssetChildAssetType"

instance ToJSON CreativeAssetChildAssetType where
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

-- | Optimization model for this configuration.
data CreativeOptimizationConfigurationOptimizationModel
    = Click
      -- ^ @CLICK@
    | PostClick
      -- ^ @POST_CLICK@
    | PostClickAndImpression
      -- ^ @POST_CLICK_AND_IMPRESSION@
    | PostImpression
      -- ^ @POST_IMPRESSION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeOptimizationConfigurationOptimizationModel

instance FromText CreativeOptimizationConfigurationOptimizationModel where
    fromText = \case
        "CLICK" -> Just Click
        "POST_CLICK" -> Just PostClick
        "POST_CLICK_AND_IMPRESSION" -> Just PostClickAndImpression
        "POST_IMPRESSION" -> Just PostImpression
        _ -> Nothing

instance ToText CreativeOptimizationConfigurationOptimizationModel where
    toText = \case
        Click -> "CLICK"
        PostClick -> "POST_CLICK"
        PostClickAndImpression -> "POST_CLICK_AND_IMPRESSION"
        PostImpression -> "POST_IMPRESSION"

instance FromJSON CreativeOptimizationConfigurationOptimizationModel where
    parseJSON = parseJSONText "CreativeOptimizationConfigurationOptimizationModel"

instance ToJSON CreativeOptimizationConfigurationOptimizationModel where
    toJSON = toJSONText

-- | Administrative level required to enable this account permission.
data AccountPermissionLevel
    = Administrator
      -- ^ @ADMINISTRATOR@
    | User
      -- ^ @USER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountPermissionLevel

instance FromText AccountPermissionLevel where
    fromText = \case
        "ADMINISTRATOR" -> Just Administrator
        "USER" -> Just User
        _ -> Nothing

instance ToText AccountPermissionLevel where
    toText = \case
        Administrator -> "ADMINISTRATOR"
        User -> "USER"

instance FromJSON AccountPermissionLevel where
    parseJSON = parseJSONText "AccountPermissionLevel"

instance ToJSON AccountPermissionLevel where
    toJSON = toJSONText

-- | Possible alignments for an asset. This is a read-only field. Applicable
-- to the following creative types: RICH_MEDIA_MULTI_FLOATING.
data CreativeAssetAlignment
    = AlignmentBottom
      -- ^ @ALIGNMENT_BOTTOM@
    | AlignmentLeft
      -- ^ @ALIGNMENT_LEFT@
    | AlignmentRight
      -- ^ @ALIGNMENT_RIGHT@
    | AlignmentTop
      -- ^ @ALIGNMENT_TOP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetAlignment

instance FromText CreativeAssetAlignment where
    fromText = \case
        "ALIGNMENT_BOTTOM" -> Just AlignmentBottom
        "ALIGNMENT_LEFT" -> Just AlignmentLeft
        "ALIGNMENT_RIGHT" -> Just AlignmentRight
        "ALIGNMENT_TOP" -> Just AlignmentTop
        _ -> Nothing

instance ToText CreativeAssetAlignment where
    toText = \case
        AlignmentBottom -> "ALIGNMENT_BOTTOM"
        AlignmentLeft -> "ALIGNMENT_LEFT"
        AlignmentRight -> "ALIGNMENT_RIGHT"
        AlignmentTop -> "ALIGNMENT_TOP"

instance FromJSON CreativeAssetAlignment where
    parseJSON = parseJSONText "CreativeAssetAlignment"

instance ToJSON CreativeAssetAlignment where
    toJSON = toJSONText

-- | Window mode options for flash assets. Applicable to the following
-- creative types: FLASH_INPAGE, RICH_MEDIA_EXPANDING,
-- RICH_MEDIA_IM_EXPAND, RICH_MEDIA_INPAGE, and RICH_MEDIA_INPAGE_FLOATING.
data CreativeAssetWindowMode
    = Opaque
      -- ^ @OPAQUE@
    | Transparent
      -- ^ @TRANSPARENT@
    | Window
      -- ^ @WINDOW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetWindowMode

instance FromText CreativeAssetWindowMode where
    fromText = \case
        "OPAQUE" -> Just Opaque
        "TRANSPARENT" -> Just Transparent
        "WINDOW" -> Just Window
        _ -> Nothing

instance ToText CreativeAssetWindowMode where
    toText = \case
        Opaque -> "OPAQUE"
        Transparent -> "TRANSPARENT"
        Window -> "WINDOW"

instance FromJSON CreativeAssetWindowMode where
    parseJSON = parseJSONText "CreativeAssetWindowMode"

instance ToJSON CreativeAssetWindowMode where
    toJSON = toJSONText

data DirectorySiteInpageTagFormats
    = IframeJavascriptInpage
      -- ^ @IFRAME_JAVASCRIPT_INPAGE@
    | InternalRedirectInpage
      -- ^ @INTERNAL_REDIRECT_INPAGE@
    | JavascriptInpage
      -- ^ @JAVASCRIPT_INPAGE@
    | Standard
      -- ^ @STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteInpageTagFormats

instance FromText DirectorySiteInpageTagFormats where
    fromText = \case
        "IFRAME_JAVASCRIPT_INPAGE" -> Just IframeJavascriptInpage
        "INTERNAL_REDIRECT_INPAGE" -> Just InternalRedirectInpage
        "JAVASCRIPT_INPAGE" -> Just JavascriptInpage
        "STANDARD" -> Just Standard
        _ -> Nothing

instance ToText DirectorySiteInpageTagFormats where
    toText = \case
        IframeJavascriptInpage -> "IFRAME_JAVASCRIPT_INPAGE"
        InternalRedirectInpage -> "INTERNAL_REDIRECT_INPAGE"
        JavascriptInpage -> "JAVASCRIPT_INPAGE"
        Standard -> "STANDARD"

instance FromJSON DirectorySiteInpageTagFormats where
    parseJSON = parseJSONText "DirectorySiteInpageTagFormats"

instance ToJSON DirectorySiteInpageTagFormats where
    toJSON = toJSONText

-- | Select only creatives with these creative types.
data DfareportingCreativesListTypes
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

instance Hashable DfareportingCreativesListTypes

instance FromText DfareportingCreativesListTypes where
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

instance ToText DfareportingCreativesListTypes where
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

instance FromJSON DfareportingCreativesListTypes where
    parseJSON = parseJSONText "DfareportingCreativesListTypes"

instance ToJSON DfareportingCreativesListTypes where
    toJSON = toJSONText

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

instance FromJSON AccountActiveAdsLimitTier where
    parseJSON = parseJSONText "AccountActiveAdsLimitTier"

instance ToJSON AccountActiveAdsLimitTier where
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

-- | Select only event tags with the specified event tag types. Event tag
-- types can be used to specify whether to use a third-party pixel, a
-- third-party JavaScript URL, or a third-party click-through URL for
-- either impression or click tracking.
data DfareportingEventTagsListEventTagTypes
    = DETLETTClickThroughEventTag
      -- ^ @CLICK_THROUGH_EVENT_TAG@
    | DETLETTImpressionImageEventTag
      -- ^ @IMPRESSION_IMAGE_EVENT_TAG@
    | DETLETTImpressionJavascriptEventTag
      -- ^ @IMPRESSION_JAVASCRIPT_EVENT_TAG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingEventTagsListEventTagTypes

instance FromText DfareportingEventTagsListEventTagTypes where
    fromText = \case
        "CLICK_THROUGH_EVENT_TAG" -> Just DETLETTClickThroughEventTag
        "IMPRESSION_IMAGE_EVENT_TAG" -> Just DETLETTImpressionImageEventTag
        "IMPRESSION_JAVASCRIPT_EVENT_TAG" -> Just DETLETTImpressionJavascriptEventTag
        _ -> Nothing

instance ToText DfareportingEventTagsListEventTagTypes where
    toText = \case
        DETLETTClickThroughEventTag -> "CLICK_THROUGH_EVENT_TAG"
        DETLETTImpressionImageEventTag -> "IMPRESSION_IMAGE_EVENT_TAG"
        DETLETTImpressionJavascriptEventTag -> "IMPRESSION_JAVASCRIPT_EVENT_TAG"

instance FromJSON DfareportingEventTagsListEventTagTypes where
    parseJSON = parseJSONText "DfareportingEventTagsListEventTagTypes"

instance ToJSON DfareportingEventTagsListEventTagTypes where
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

-- | Order of sorted results, default is ASCENDING.
data DfareportingInventoryItemsListSortOrder
    = DIILSOAscending
      -- ^ @ASCENDING@
    | DIILSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingInventoryItemsListSortOrder

instance FromText DfareportingInventoryItemsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DIILSOAscending
        "DESCENDING" -> Just DIILSODescending
        _ -> Nothing

instance ToText DfareportingInventoryItemsListSortOrder where
    toText = \case
        DIILSOAscending -> "ASCENDING"
        DIILSODescending -> "DESCENDING"

instance FromJSON DfareportingInventoryItemsListSortOrder where
    parseJSON = parseJSONText "DfareportingInventoryItemsListSortOrder"

instance ToJSON DfareportingInventoryItemsListSortOrder where
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

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. WEB and WEB_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
data DfareportingAdsListCompatibility
    = DALCApp
      -- ^ @APP@
    | DALCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | DALCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | DALCWeb
      -- ^ @WEB@
    | DALCWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdsListCompatibility

instance FromText DfareportingAdsListCompatibility where
    fromText = \case
        "APP" -> Just DALCApp
        "APP_INTERSTITIAL" -> Just DALCAppInterstitial
        "IN_STREAM_VIDEO" -> Just DALCInStreamVideo
        "WEB" -> Just DALCWeb
        "WEB_INTERSTITIAL" -> Just DALCWebInterstitial
        _ -> Nothing

instance ToText DfareportingAdsListCompatibility where
    toText = \case
        DALCApp -> "APP"
        DALCAppInterstitial -> "APP_INTERSTITIAL"
        DALCInStreamVideo -> "IN_STREAM_VIDEO"
        DALCWeb -> "WEB"
        DALCWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON DfareportingAdsListCompatibility where
    parseJSON = parseJSONText "DfareportingAdsListCompatibility"

instance ToJSON DfareportingAdsListCompatibility where
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

-- | Group type of this inventory item if it represents a placement group. Is
-- null otherwise. There are two type of placement groups:
-- PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE is a simple group of inventory
-- items that acts as a single pricing point for a group of tags.
-- PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK is a group of inventory items
-- that not only acts as a single pricing point, but also assumes that all
-- the tags in it will be served at the same time. A roadblock requires one
-- of its assigned inventory items to be marked as primary.
data PricingGroupType
    = PlanningPlacementGroupTypePackage
      -- ^ @PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE@
    | PlanningPlacementGroupTypeRoadblock
      -- ^ @PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingGroupType

instance FromText PricingGroupType where
    fromText = \case
        "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE" -> Just PlanningPlacementGroupTypePackage
        "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK" -> Just PlanningPlacementGroupTypeRoadblock
        _ -> Nothing

instance ToText PricingGroupType where
    toText = \case
        PlanningPlacementGroupTypePackage -> "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE"
        PlanningPlacementGroupTypeRoadblock -> "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK"

instance FromJSON PricingGroupType where
    parseJSON = parseJSONText "PricingGroupType"

instance ToJSON PricingGroupType where
    toJSON = toJSONText

data CreativeAssetMetadataDetectedFeatures
    = CAMDFApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CAMDFAudio
      -- ^ @AUDIO@
    | CAMDFCanvas
      -- ^ @CANVAS@
    | CAMDFCanvasText
      -- ^ @CANVAS_TEXT@
    | CAMDFCssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CAMDFCssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CAMDFCssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CAMDFCssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CAMDFCssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CAMDFCssColumns
      -- ^ @CSS_COLUMNS@
    | CAMDFCssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CAMDFCssFontFace
      -- ^ @CSS_FONT_FACE@
    | CAMDFCssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CAMDFCssGradients
      -- ^ @CSS_GRADIENTS@
    | CAMDFCssHsla
      -- ^ @CSS_HSLA@
    | CAMDFCssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CAMDFCssOpacity
      -- ^ @CSS_OPACITY@
    | CAMDFCssReflections
      -- ^ @CSS_REFLECTIONS@
    | CAMDFCssRgba
      -- ^ @CSS_RGBA@
    | CAMDFCssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CAMDFCssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CAMDFCssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CAMDFCssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CAMDFDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CAMDFGeoLocation
      -- ^ @GEO_LOCATION@
    | CAMDFHashChange
      -- ^ @HASH_CHANGE@
    | CAMDFHistory
      -- ^ @HISTORY@
    | CAMDFIndexedDB
      -- ^ @INDEXED_DB@
    | CAMDFInlineSvg
      -- ^ @INLINE_SVG@
    | CAMDFInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CAMDFInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CAMDFInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CAMDFInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CAMDFInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CAMDFInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CAMDFInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CAMDFInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CAMDFInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CAMDFInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CAMDFInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CAMDFInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CAMDFInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CAMDFInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CAMDFInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CAMDFInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CAMDFInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CAMDFInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CAMDFInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CAMDFInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CAMDFInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CAMDFInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CAMDFInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CAMDFLocalStorage
      -- ^ @LOCAL_STORAGE@
    | CAMDFPostMessage
      -- ^ @POST_MESSAGE@
    | CAMDFSessionStorage
      -- ^ @SESSION_STORAGE@
    | CAMDFSmil
      -- ^ @SMIL@
    | CAMDFSvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CAMDFSvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | CAMDFSvgFilters
      -- ^ @SVG_FILTERS@
    | CAMDFSvgHref
      -- ^ @SVG_HREF@
    | CAMDFTouch
      -- ^ @TOUCH@
    | CAMDFVideo
      -- ^ @VIDEO@
    | CAMDFWebgl
      -- ^ @WEBGL@
    | CAMDFWebSockets
      -- ^ @WEB_SOCKETS@
    | CAMDFWebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CAMDFWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetMetadataDetectedFeatures

instance FromText CreativeAssetMetadataDetectedFeatures where
    fromText = \case
        "APPLICATION_CACHE" -> Just CAMDFApplicationCache
        "AUDIO" -> Just CAMDFAudio
        "CANVAS" -> Just CAMDFCanvas
        "CANVAS_TEXT" -> Just CAMDFCanvasText
        "CSS_ANIMATIONS" -> Just CAMDFCssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CAMDFCssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Just CAMDFCssBOrderImage
        "CSS_BORDER_RADIUS" -> Just CAMDFCssBOrderRadius
        "CSS_BOX_SHADOW" -> Just CAMDFCssBoxShadow
        "CSS_COLUMNS" -> Just CAMDFCssColumns
        "CSS_FLEX_BOX" -> Just CAMDFCssFlexBox
        "CSS_FONT_FACE" -> Just CAMDFCssFontFace
        "CSS_GENERATED_CONTENT" -> Just CAMDFCssGeneratedContent
        "CSS_GRADIENTS" -> Just CAMDFCssGradients
        "CSS_HSLA" -> Just CAMDFCssHsla
        "CSS_MULTIPLE_BGS" -> Just CAMDFCssMultipleBgs
        "CSS_OPACITY" -> Just CAMDFCssOpacity
        "CSS_REFLECTIONS" -> Just CAMDFCssReflections
        "CSS_RGBA" -> Just CAMDFCssRgba
        "CSS_TEXT_SHADOW" -> Just CAMDFCssTextShadow
        "CSS_TRANSFORMS" -> Just CAMDFCssTransforms
        "CSS_TRANSFORMS3D" -> Just CAMDFCssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CAMDFCssTransitions
        "DRAG_AND_DROP" -> Just CAMDFDragAndDrop
        "GEO_LOCATION" -> Just CAMDFGeoLocation
        "HASH_CHANGE" -> Just CAMDFHashChange
        "HISTORY" -> Just CAMDFHistory
        "INDEXED_DB" -> Just CAMDFIndexedDB
        "INLINE_SVG" -> Just CAMDFInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just CAMDFInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just CAMDFInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just CAMDFInputAttrList
        "INPUT_ATTR_MAX" -> Just CAMDFInputAttrMax
        "INPUT_ATTR_MIN" -> Just CAMDFInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just CAMDFInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just CAMDFInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just CAMDFInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just CAMDFInputAttrRequired
        "INPUT_ATTR_STEP" -> Just CAMDFInputAttrStep
        "INPUT_TYPE_COLOR" -> Just CAMDFInputTypeColor
        "INPUT_TYPE_DATE" -> Just CAMDFInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just CAMDFInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just CAMDFInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just CAMDFInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just CAMDFInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just CAMDFInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just CAMDFInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just CAMDFInputTypeSearch
        "INPUT_TYPE_TEL" -> Just CAMDFInputTypeTel
        "INPUT_TYPE_TIME" -> Just CAMDFInputTypeTime
        "INPUT_TYPE_URL" -> Just CAMDFInputTypeURL
        "INPUT_TYPE_WEEK" -> Just CAMDFInputTypeWeek
        "LOCAL_STORAGE" -> Just CAMDFLocalStorage
        "POST_MESSAGE" -> Just CAMDFPostMessage
        "SESSION_STORAGE" -> Just CAMDFSessionStorage
        "SMIL" -> Just CAMDFSmil
        "SVG_CLIP_PATHS" -> Just CAMDFSvgClipPaths
        "SVG_FE_IMAGE" -> Just CAMDFSvgFeImage
        "SVG_FILTERS" -> Just CAMDFSvgFilters
        "SVG_HREF" -> Just CAMDFSvgHref
        "TOUCH" -> Just CAMDFTouch
        "VIDEO" -> Just CAMDFVideo
        "WEBGL" -> Just CAMDFWebgl
        "WEB_SOCKETS" -> Just CAMDFWebSockets
        "WEB_SQL_DATABASE" -> Just CAMDFWebSQLDatabase
        "WEB_WORKERS" -> Just CAMDFWebWorkers
        _ -> Nothing

instance ToText CreativeAssetMetadataDetectedFeatures where
    toText = \case
        CAMDFApplicationCache -> "APPLICATION_CACHE"
        CAMDFAudio -> "AUDIO"
        CAMDFCanvas -> "CANVAS"
        CAMDFCanvasText -> "CANVAS_TEXT"
        CAMDFCssAnimations -> "CSS_ANIMATIONS"
        CAMDFCssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CAMDFCssBOrderImage -> "CSS_BORDER_IMAGE"
        CAMDFCssBOrderRadius -> "CSS_BORDER_RADIUS"
        CAMDFCssBoxShadow -> "CSS_BOX_SHADOW"
        CAMDFCssColumns -> "CSS_COLUMNS"
        CAMDFCssFlexBox -> "CSS_FLEX_BOX"
        CAMDFCssFontFace -> "CSS_FONT_FACE"
        CAMDFCssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CAMDFCssGradients -> "CSS_GRADIENTS"
        CAMDFCssHsla -> "CSS_HSLA"
        CAMDFCssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CAMDFCssOpacity -> "CSS_OPACITY"
        CAMDFCssReflections -> "CSS_REFLECTIONS"
        CAMDFCssRgba -> "CSS_RGBA"
        CAMDFCssTextShadow -> "CSS_TEXT_SHADOW"
        CAMDFCssTransforms -> "CSS_TRANSFORMS"
        CAMDFCssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CAMDFCssTransitions -> "CSS_TRANSITIONS"
        CAMDFDragAndDrop -> "DRAG_AND_DROP"
        CAMDFGeoLocation -> "GEO_LOCATION"
        CAMDFHashChange -> "HASH_CHANGE"
        CAMDFHistory -> "HISTORY"
        CAMDFIndexedDB -> "INDEXED_DB"
        CAMDFInlineSvg -> "INLINE_SVG"
        CAMDFInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CAMDFInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CAMDFInputAttrList -> "INPUT_ATTR_LIST"
        CAMDFInputAttrMax -> "INPUT_ATTR_MAX"
        CAMDFInputAttrMin -> "INPUT_ATTR_MIN"
        CAMDFInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CAMDFInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CAMDFInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CAMDFInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CAMDFInputAttrStep -> "INPUT_ATTR_STEP"
        CAMDFInputTypeColor -> "INPUT_TYPE_COLOR"
        CAMDFInputTypeDate -> "INPUT_TYPE_DATE"
        CAMDFInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CAMDFInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CAMDFInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CAMDFInputTypeMonth -> "INPUT_TYPE_MONTH"
        CAMDFInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CAMDFInputTypeRange -> "INPUT_TYPE_RANGE"
        CAMDFInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CAMDFInputTypeTel -> "INPUT_TYPE_TEL"
        CAMDFInputTypeTime -> "INPUT_TYPE_TIME"
        CAMDFInputTypeURL -> "INPUT_TYPE_URL"
        CAMDFInputTypeWeek -> "INPUT_TYPE_WEEK"
        CAMDFLocalStorage -> "LOCAL_STORAGE"
        CAMDFPostMessage -> "POST_MESSAGE"
        CAMDFSessionStorage -> "SESSION_STORAGE"
        CAMDFSmil -> "SMIL"
        CAMDFSvgClipPaths -> "SVG_CLIP_PATHS"
        CAMDFSvgFeImage -> "SVG_FE_IMAGE"
        CAMDFSvgFilters -> "SVG_FILTERS"
        CAMDFSvgHref -> "SVG_HREF"
        CAMDFTouch -> "TOUCH"
        CAMDFVideo -> "VIDEO"
        CAMDFWebgl -> "WEBGL"
        CAMDFWebSockets -> "WEB_SOCKETS"
        CAMDFWebSQLDatabase -> "WEB_SQL_DATABASE"
        CAMDFWebWorkers -> "WEB_WORKERS"

instance FromJSON CreativeAssetMetadataDetectedFeatures where
    parseJSON = parseJSONText "CreativeAssetMetadataDetectedFeatures"

instance ToJSON CreativeAssetMetadataDetectedFeatures where
    toJSON = toJSONText

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

instance FromJSON CreativeAssetPositionTopUnit where
    parseJSON = parseJSONText "CreativeAssetPositionTopUnit"

instance ToJSON CreativeAssetPositionTopUnit where
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

-- | Select only ads with the specified creativeType.
data DfareportingAdsListCreativeType
    = DALCTBrandSafeDefaultInstreamVideo
      -- ^ @BRAND_SAFE_DEFAULT_INSTREAM_VIDEO@
    | DALCTCustomInpage
      -- ^ @CUSTOM_INPAGE@
    | DALCTCustomInterstitial
      -- ^ @CUSTOM_INTERSTITIAL@
    | DALCTEnhancedBanner
      -- ^ @ENHANCED_BANNER@
    | DALCTEnhancedImage
      -- ^ @ENHANCED_IMAGE@
    | DALCTFlashInpage
      -- ^ @FLASH_INPAGE@
    | DALCTHTML5Banner
      -- ^ @HTML5_BANNER@
    | DALCTImage
      -- ^ @IMAGE@
    | DALCTInstreamVideo
      -- ^ @INSTREAM_VIDEO@
    | DALCTInternalRedirect
      -- ^ @INTERNAL_REDIRECT@
    | DALCTInterstitialInternalRedirect
      -- ^ @INTERSTITIAL_INTERNAL_REDIRECT@
    | DALCTRedirect
      -- ^ @REDIRECT@
    | DALCTRichMediaExpanding
      -- ^ @RICH_MEDIA_EXPANDING@
    | DALCTRichMediaImExpand
      -- ^ @RICH_MEDIA_IM_EXPAND@
    | DALCTRichMediaInpage
      -- ^ @RICH_MEDIA_INPAGE@
    | DALCTRichMediaInpageFloating
      -- ^ @RICH_MEDIA_INPAGE_FLOATING@
    | DALCTRichMediaInterstitialFloat
      -- ^ @RICH_MEDIA_INTERSTITIAL_FLOAT@
    | DALCTRichMediaMobileInApp
      -- ^ @RICH_MEDIA_MOBILE_IN_APP@
    | DALCTRichMediaMultiFloating
      -- ^ @RICH_MEDIA_MULTI_FLOATING@
    | DALCTRichMediaPeelDown
      -- ^ @RICH_MEDIA_PEEL_DOWN@
    | DALCTTrackingText
      -- ^ @TRACKING_TEXT@
    | DALCTVastRedirect
      -- ^ @VAST_REDIRECT@
    | DALCTVpaidLinear
      -- ^ @VPAID_LINEAR@
    | DALCTVpaidNonLinear
      -- ^ @VPAID_NON_LINEAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdsListCreativeType

instance FromText DfareportingAdsListCreativeType where
    fromText = \case
        "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO" -> Just DALCTBrandSafeDefaultInstreamVideo
        "CUSTOM_INPAGE" -> Just DALCTCustomInpage
        "CUSTOM_INTERSTITIAL" -> Just DALCTCustomInterstitial
        "ENHANCED_BANNER" -> Just DALCTEnhancedBanner
        "ENHANCED_IMAGE" -> Just DALCTEnhancedImage
        "FLASH_INPAGE" -> Just DALCTFlashInpage
        "HTML5_BANNER" -> Just DALCTHTML5Banner
        "IMAGE" -> Just DALCTImage
        "INSTREAM_VIDEO" -> Just DALCTInstreamVideo
        "INTERNAL_REDIRECT" -> Just DALCTInternalRedirect
        "INTERSTITIAL_INTERNAL_REDIRECT" -> Just DALCTInterstitialInternalRedirect
        "REDIRECT" -> Just DALCTRedirect
        "RICH_MEDIA_EXPANDING" -> Just DALCTRichMediaExpanding
        "RICH_MEDIA_IM_EXPAND" -> Just DALCTRichMediaImExpand
        "RICH_MEDIA_INPAGE" -> Just DALCTRichMediaInpage
        "RICH_MEDIA_INPAGE_FLOATING" -> Just DALCTRichMediaInpageFloating
        "RICH_MEDIA_INTERSTITIAL_FLOAT" -> Just DALCTRichMediaInterstitialFloat
        "RICH_MEDIA_MOBILE_IN_APP" -> Just DALCTRichMediaMobileInApp
        "RICH_MEDIA_MULTI_FLOATING" -> Just DALCTRichMediaMultiFloating
        "RICH_MEDIA_PEEL_DOWN" -> Just DALCTRichMediaPeelDown
        "TRACKING_TEXT" -> Just DALCTTrackingText
        "VAST_REDIRECT" -> Just DALCTVastRedirect
        "VPAID_LINEAR" -> Just DALCTVpaidLinear
        "VPAID_NON_LINEAR" -> Just DALCTVpaidNonLinear
        _ -> Nothing

instance ToText DfareportingAdsListCreativeType where
    toText = \case
        DALCTBrandSafeDefaultInstreamVideo -> "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
        DALCTCustomInpage -> "CUSTOM_INPAGE"
        DALCTCustomInterstitial -> "CUSTOM_INTERSTITIAL"
        DALCTEnhancedBanner -> "ENHANCED_BANNER"
        DALCTEnhancedImage -> "ENHANCED_IMAGE"
        DALCTFlashInpage -> "FLASH_INPAGE"
        DALCTHTML5Banner -> "HTML5_BANNER"
        DALCTImage -> "IMAGE"
        DALCTInstreamVideo -> "INSTREAM_VIDEO"
        DALCTInternalRedirect -> "INTERNAL_REDIRECT"
        DALCTInterstitialInternalRedirect -> "INTERSTITIAL_INTERNAL_REDIRECT"
        DALCTRedirect -> "REDIRECT"
        DALCTRichMediaExpanding -> "RICH_MEDIA_EXPANDING"
        DALCTRichMediaImExpand -> "RICH_MEDIA_IM_EXPAND"
        DALCTRichMediaInpage -> "RICH_MEDIA_INPAGE"
        DALCTRichMediaInpageFloating -> "RICH_MEDIA_INPAGE_FLOATING"
        DALCTRichMediaInterstitialFloat -> "RICH_MEDIA_INTERSTITIAL_FLOAT"
        DALCTRichMediaMobileInApp -> "RICH_MEDIA_MOBILE_IN_APP"
        DALCTRichMediaMultiFloating -> "RICH_MEDIA_MULTI_FLOATING"
        DALCTRichMediaPeelDown -> "RICH_MEDIA_PEEL_DOWN"
        DALCTTrackingText -> "TRACKING_TEXT"
        DALCTVastRedirect -> "VAST_REDIRECT"
        DALCTVpaidLinear -> "VPAID_LINEAR"
        DALCTVpaidNonLinear -> "VPAID_NON_LINEAR"

instance FromJSON DfareportingAdsListCreativeType where
    parseJSON = parseJSONText "DfareportingAdsListCreativeType"

instance ToJSON DfareportingAdsListCreativeType where
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

instance FromJSON FloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivityGroupType"

instance ToJSON FloodlightActivityGroupType where
    toJSON = toJSONText

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

-- | Site filter type for this event tag. If no type is specified then the
-- event tag will be applied to all sites.
data EventTagSiteFilterType
    = BlackList
      -- ^ @BLACKLIST@
    | WhiteList
      -- ^ @WHITELIST@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagSiteFilterType

instance FromText EventTagSiteFilterType where
    fromText = \case
        "BLACKLIST" -> Just BlackList
        "WHITELIST" -> Just WhiteList
        _ -> Nothing

instance ToText EventTagSiteFilterType where
    toText = \case
        BlackList -> "BLACKLIST"
        WhiteList -> "WHITELIST"

instance FromJSON EventTagSiteFilterType where
    parseJSON = parseJSONText "EventTagSiteFilterType"

instance ToJSON EventTagSiteFilterType where
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

data CreativeCompatibility
    = CCApp
      -- ^ @APP@
    | CCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | CCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | CCWeb
      -- ^ @WEB@
    | CCWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeCompatibility

instance FromText CreativeCompatibility where
    fromText = \case
        "APP" -> Just CCApp
        "APP_INTERSTITIAL" -> Just CCAppInterstitial
        "IN_STREAM_VIDEO" -> Just CCInStreamVideo
        "WEB" -> Just CCWeb
        "WEB_INTERSTITIAL" -> Just CCWebInterstitial
        _ -> Nothing

instance ToText CreativeCompatibility where
    toText = \case
        CCApp -> "APP"
        CCAppInterstitial -> "APP_INTERSTITIAL"
        CCInStreamVideo -> "IN_STREAM_VIDEO"
        CCWeb -> "WEB"
        CCWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON CreativeCompatibility where
    parseJSON = parseJSONText "CreativeCompatibility"

instance ToJSON CreativeCompatibility where
    toJSON = toJSONText

-- | Enum to define for \"MONTHLY\" scheduled reports whether reports should
-- be repeated on the same day of the month as \"startDate\" or the same
-- day of the week of the month. Example: If \'startDate\' is Monday, April
-- 2nd 2012 (2012-04-02), \"DAY_OF_MONTH\" would run subsequent reports on
-- the 2nd of every Month, and \"WEEK_OF_MONTH\" would run subsequent
-- reports on the first Monday of the month.
data ReportScheduleRunsOnDayOfMonth
    = DayOfMonth
      -- ^ @DAY_OF_MONTH@
    | WeekOfMonth
      -- ^ @WEEK_OF_MONTH@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportScheduleRunsOnDayOfMonth

instance FromText ReportScheduleRunsOnDayOfMonth where
    fromText = \case
        "DAY_OF_MONTH" -> Just DayOfMonth
        "WEEK_OF_MONTH" -> Just WeekOfMonth
        _ -> Nothing

instance ToText ReportScheduleRunsOnDayOfMonth where
    toText = \case
        DayOfMonth -> "DAY_OF_MONTH"
        WeekOfMonth -> "WEEK_OF_MONTH"

instance FromJSON ReportScheduleRunsOnDayOfMonth where
    parseJSON = parseJSONText "ReportScheduleRunsOnDayOfMonth"

instance ToJSON ReportScheduleRunsOnDayOfMonth where
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

-- | Audience age group of this project.
data ProjectAudienceAgeGroup
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

instance Hashable ProjectAudienceAgeGroup

instance FromText ProjectAudienceAgeGroup where
    fromText = \case
        "PLANNING_AUDIENCE_AGE_18_24" -> Just PlanningAudienceAge1824
        "PLANNING_AUDIENCE_AGE_25_34" -> Just PlanningAudienceAge2534
        "PLANNING_AUDIENCE_AGE_35_44" -> Just PlanningAudienceAge3544
        "PLANNING_AUDIENCE_AGE_45_54" -> Just PlanningAudienceAge4554
        "PLANNING_AUDIENCE_AGE_55_64" -> Just PlanningAudienceAge5564
        "PLANNING_AUDIENCE_AGE_65_OR_MORE" -> Just PlanningAudienceAge65OrMore
        "PLANNING_AUDIENCE_AGE_UNKNOWN" -> Just PlanningAudienceAgeUnknown
        _ -> Nothing

instance ToText ProjectAudienceAgeGroup where
    toText = \case
        PlanningAudienceAge1824 -> "PLANNING_AUDIENCE_AGE_18_24"
        PlanningAudienceAge2534 -> "PLANNING_AUDIENCE_AGE_25_34"
        PlanningAudienceAge3544 -> "PLANNING_AUDIENCE_AGE_35_44"
        PlanningAudienceAge4554 -> "PLANNING_AUDIENCE_AGE_45_54"
        PlanningAudienceAge5564 -> "PLANNING_AUDIENCE_AGE_55_64"
        PlanningAudienceAge65OrMore -> "PLANNING_AUDIENCE_AGE_65_OR_MORE"
        PlanningAudienceAgeUnknown -> "PLANNING_AUDIENCE_AGE_UNKNOWN"

instance FromJSON ProjectAudienceAgeGroup where
    parseJSON = parseJSONText "ProjectAudienceAgeGroup"

instance ToJSON ProjectAudienceAgeGroup where
    toJSON = toJSONText

-- | Select only advertisers with the specified status.
data DfareportingAdvertisersListStatus
    = Approved
      -- ^ @APPROVED@
    | OnHold
      -- ^ @ON_HOLD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdvertisersListStatus

instance FromText DfareportingAdvertisersListStatus where
    fromText = \case
        "APPROVED" -> Just Approved
        "ON_HOLD" -> Just OnHold
        _ -> Nothing

instance ToText DfareportingAdvertisersListStatus where
    toText = \case
        Approved -> "APPROVED"
        OnHold -> "ON_HOLD"

instance FromJSON DfareportingAdvertisersListStatus where
    parseJSON = parseJSONText "DfareportingAdvertisersListStatus"

instance ToJSON DfareportingAdvertisersListStatus where
    toJSON = toJSONText

data CreativeBackupImageFeatures
    = CBIFApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CBIFAudio
      -- ^ @AUDIO@
    | CBIFCanvas
      -- ^ @CANVAS@
    | CBIFCanvasText
      -- ^ @CANVAS_TEXT@
    | CBIFCssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CBIFCssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CBIFCssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CBIFCssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CBIFCssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CBIFCssColumns
      -- ^ @CSS_COLUMNS@
    | CBIFCssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CBIFCssFontFace
      -- ^ @CSS_FONT_FACE@
    | CBIFCssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CBIFCssGradients
      -- ^ @CSS_GRADIENTS@
    | CBIFCssHsla
      -- ^ @CSS_HSLA@
    | CBIFCssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CBIFCssOpacity
      -- ^ @CSS_OPACITY@
    | CBIFCssReflections
      -- ^ @CSS_REFLECTIONS@
    | CBIFCssRgba
      -- ^ @CSS_RGBA@
    | CBIFCssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CBIFCssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CBIFCssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CBIFCssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CBIFDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CBIFGeoLocation
      -- ^ @GEO_LOCATION@
    | CBIFHashChange
      -- ^ @HASH_CHANGE@
    | CBIFHistory
      -- ^ @HISTORY@
    | CBIFIndexedDB
      -- ^ @INDEXED_DB@
    | CBIFInlineSvg
      -- ^ @INLINE_SVG@
    | CBIFInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CBIFInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CBIFInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CBIFInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CBIFInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CBIFInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CBIFInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CBIFInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CBIFInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CBIFInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CBIFInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CBIFInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CBIFInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CBIFInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CBIFInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CBIFInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CBIFInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CBIFInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CBIFInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CBIFInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CBIFInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CBIFInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CBIFInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CBIFLocalStorage
      -- ^ @LOCAL_STORAGE@
    | CBIFPostMessage
      -- ^ @POST_MESSAGE@
    | CBIFSessionStorage
      -- ^ @SESSION_STORAGE@
    | CBIFSmil
      -- ^ @SMIL@
    | CBIFSvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CBIFSvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | CBIFSvgFilters
      -- ^ @SVG_FILTERS@
    | CBIFSvgHref
      -- ^ @SVG_HREF@
    | CBIFTouch
      -- ^ @TOUCH@
    | CBIFVideo
      -- ^ @VIDEO@
    | CBIFWebgl
      -- ^ @WEBGL@
    | CBIFWebSockets
      -- ^ @WEB_SOCKETS@
    | CBIFWebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CBIFWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeBackupImageFeatures

instance FromText CreativeBackupImageFeatures where
    fromText = \case
        "APPLICATION_CACHE" -> Just CBIFApplicationCache
        "AUDIO" -> Just CBIFAudio
        "CANVAS" -> Just CBIFCanvas
        "CANVAS_TEXT" -> Just CBIFCanvasText
        "CSS_ANIMATIONS" -> Just CBIFCssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CBIFCssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Just CBIFCssBOrderImage
        "CSS_BORDER_RADIUS" -> Just CBIFCssBOrderRadius
        "CSS_BOX_SHADOW" -> Just CBIFCssBoxShadow
        "CSS_COLUMNS" -> Just CBIFCssColumns
        "CSS_FLEX_BOX" -> Just CBIFCssFlexBox
        "CSS_FONT_FACE" -> Just CBIFCssFontFace
        "CSS_GENERATED_CONTENT" -> Just CBIFCssGeneratedContent
        "CSS_GRADIENTS" -> Just CBIFCssGradients
        "CSS_HSLA" -> Just CBIFCssHsla
        "CSS_MULTIPLE_BGS" -> Just CBIFCssMultipleBgs
        "CSS_OPACITY" -> Just CBIFCssOpacity
        "CSS_REFLECTIONS" -> Just CBIFCssReflections
        "CSS_RGBA" -> Just CBIFCssRgba
        "CSS_TEXT_SHADOW" -> Just CBIFCssTextShadow
        "CSS_TRANSFORMS" -> Just CBIFCssTransforms
        "CSS_TRANSFORMS3D" -> Just CBIFCssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CBIFCssTransitions
        "DRAG_AND_DROP" -> Just CBIFDragAndDrop
        "GEO_LOCATION" -> Just CBIFGeoLocation
        "HASH_CHANGE" -> Just CBIFHashChange
        "HISTORY" -> Just CBIFHistory
        "INDEXED_DB" -> Just CBIFIndexedDB
        "INLINE_SVG" -> Just CBIFInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just CBIFInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just CBIFInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just CBIFInputAttrList
        "INPUT_ATTR_MAX" -> Just CBIFInputAttrMax
        "INPUT_ATTR_MIN" -> Just CBIFInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just CBIFInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just CBIFInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just CBIFInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just CBIFInputAttrRequired
        "INPUT_ATTR_STEP" -> Just CBIFInputAttrStep
        "INPUT_TYPE_COLOR" -> Just CBIFInputTypeColor
        "INPUT_TYPE_DATE" -> Just CBIFInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just CBIFInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just CBIFInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just CBIFInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just CBIFInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just CBIFInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just CBIFInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just CBIFInputTypeSearch
        "INPUT_TYPE_TEL" -> Just CBIFInputTypeTel
        "INPUT_TYPE_TIME" -> Just CBIFInputTypeTime
        "INPUT_TYPE_URL" -> Just CBIFInputTypeURL
        "INPUT_TYPE_WEEK" -> Just CBIFInputTypeWeek
        "LOCAL_STORAGE" -> Just CBIFLocalStorage
        "POST_MESSAGE" -> Just CBIFPostMessage
        "SESSION_STORAGE" -> Just CBIFSessionStorage
        "SMIL" -> Just CBIFSmil
        "SVG_CLIP_PATHS" -> Just CBIFSvgClipPaths
        "SVG_FE_IMAGE" -> Just CBIFSvgFeImage
        "SVG_FILTERS" -> Just CBIFSvgFilters
        "SVG_HREF" -> Just CBIFSvgHref
        "TOUCH" -> Just CBIFTouch
        "VIDEO" -> Just CBIFVideo
        "WEBGL" -> Just CBIFWebgl
        "WEB_SOCKETS" -> Just CBIFWebSockets
        "WEB_SQL_DATABASE" -> Just CBIFWebSQLDatabase
        "WEB_WORKERS" -> Just CBIFWebWorkers
        _ -> Nothing

instance ToText CreativeBackupImageFeatures where
    toText = \case
        CBIFApplicationCache -> "APPLICATION_CACHE"
        CBIFAudio -> "AUDIO"
        CBIFCanvas -> "CANVAS"
        CBIFCanvasText -> "CANVAS_TEXT"
        CBIFCssAnimations -> "CSS_ANIMATIONS"
        CBIFCssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CBIFCssBOrderImage -> "CSS_BORDER_IMAGE"
        CBIFCssBOrderRadius -> "CSS_BORDER_RADIUS"
        CBIFCssBoxShadow -> "CSS_BOX_SHADOW"
        CBIFCssColumns -> "CSS_COLUMNS"
        CBIFCssFlexBox -> "CSS_FLEX_BOX"
        CBIFCssFontFace -> "CSS_FONT_FACE"
        CBIFCssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CBIFCssGradients -> "CSS_GRADIENTS"
        CBIFCssHsla -> "CSS_HSLA"
        CBIFCssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CBIFCssOpacity -> "CSS_OPACITY"
        CBIFCssReflections -> "CSS_REFLECTIONS"
        CBIFCssRgba -> "CSS_RGBA"
        CBIFCssTextShadow -> "CSS_TEXT_SHADOW"
        CBIFCssTransforms -> "CSS_TRANSFORMS"
        CBIFCssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CBIFCssTransitions -> "CSS_TRANSITIONS"
        CBIFDragAndDrop -> "DRAG_AND_DROP"
        CBIFGeoLocation -> "GEO_LOCATION"
        CBIFHashChange -> "HASH_CHANGE"
        CBIFHistory -> "HISTORY"
        CBIFIndexedDB -> "INDEXED_DB"
        CBIFInlineSvg -> "INLINE_SVG"
        CBIFInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CBIFInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CBIFInputAttrList -> "INPUT_ATTR_LIST"
        CBIFInputAttrMax -> "INPUT_ATTR_MAX"
        CBIFInputAttrMin -> "INPUT_ATTR_MIN"
        CBIFInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CBIFInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CBIFInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CBIFInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CBIFInputAttrStep -> "INPUT_ATTR_STEP"
        CBIFInputTypeColor -> "INPUT_TYPE_COLOR"
        CBIFInputTypeDate -> "INPUT_TYPE_DATE"
        CBIFInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CBIFInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CBIFInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CBIFInputTypeMonth -> "INPUT_TYPE_MONTH"
        CBIFInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CBIFInputTypeRange -> "INPUT_TYPE_RANGE"
        CBIFInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CBIFInputTypeTel -> "INPUT_TYPE_TEL"
        CBIFInputTypeTime -> "INPUT_TYPE_TIME"
        CBIFInputTypeURL -> "INPUT_TYPE_URL"
        CBIFInputTypeWeek -> "INPUT_TYPE_WEEK"
        CBIFLocalStorage -> "LOCAL_STORAGE"
        CBIFPostMessage -> "POST_MESSAGE"
        CBIFSessionStorage -> "SESSION_STORAGE"
        CBIFSmil -> "SMIL"
        CBIFSvgClipPaths -> "SVG_CLIP_PATHS"
        CBIFSvgFeImage -> "SVG_FE_IMAGE"
        CBIFSvgFilters -> "SVG_FILTERS"
        CBIFSvgHref -> "SVG_HREF"
        CBIFTouch -> "TOUCH"
        CBIFVideo -> "VIDEO"
        CBIFWebgl -> "WEBGL"
        CBIFWebSockets -> "WEB_SOCKETS"
        CBIFWebSQLDatabase -> "WEB_SQL_DATABASE"
        CBIFWebWorkers -> "WEB_WORKERS"

instance FromJSON CreativeBackupImageFeatures where
    parseJSON = parseJSONText "CreativeBackupImageFeatures"

instance ToJSON CreativeBackupImageFeatures where
    toJSON = toJSONText

-- | Strategy for calculating weights. Used with
-- CREATIVE_ROTATION_TYPE_RANDOM.
data CreativeRotationWeightCalculationStrategy
    = WeightStrategyCustom
      -- ^ @WEIGHT_STRATEGY_CUSTOM@
    | WeightStrategyEqual
      -- ^ @WEIGHT_STRATEGY_EQUAL@
    | WeightStrategyHighestCtr
      -- ^ @WEIGHT_STRATEGY_HIGHEST_CTR@
    | WeightStrategyOptimized
      -- ^ @WEIGHT_STRATEGY_OPTIMIZED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeRotationWeightCalculationStrategy

instance FromText CreativeRotationWeightCalculationStrategy where
    fromText = \case
        "WEIGHT_STRATEGY_CUSTOM" -> Just WeightStrategyCustom
        "WEIGHT_STRATEGY_EQUAL" -> Just WeightStrategyEqual
        "WEIGHT_STRATEGY_HIGHEST_CTR" -> Just WeightStrategyHighestCtr
        "WEIGHT_STRATEGY_OPTIMIZED" -> Just WeightStrategyOptimized
        _ -> Nothing

instance ToText CreativeRotationWeightCalculationStrategy where
    toText = \case
        WeightStrategyCustom -> "WEIGHT_STRATEGY_CUSTOM"
        WeightStrategyEqual -> "WEIGHT_STRATEGY_EQUAL"
        WeightStrategyHighestCtr -> "WEIGHT_STRATEGY_HIGHEST_CTR"
        WeightStrategyOptimized -> "WEIGHT_STRATEGY_OPTIMIZED"

instance FromJSON CreativeRotationWeightCalculationStrategy where
    parseJSON = parseJSONText "CreativeRotationWeightCalculationStrategy"

instance ToJSON CreativeRotationWeightCalculationStrategy where
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

-- | Determines how the \'value\' field is matched when filtering. If not
-- specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'*\' is
-- allowed as a placeholder for variable length character sequences, and it
-- can be escaped with a backslash. Note, only paid search dimensions
-- (\'dfa:paidSearch*\') allow a matchType other than EXACT.
data DimensionValueMatchType
    = BeginsWith
      -- ^ @BEGINS_WITH@
    | Contains
      -- ^ @CONTAINS@
    | Exact
      -- ^ @EXACT@
    | WildcardExpression
      -- ^ @WILDCARD_EXPRESSION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DimensionValueMatchType

instance FromText DimensionValueMatchType where
    fromText = \case
        "BEGINS_WITH" -> Just BeginsWith
        "CONTAINS" -> Just Contains
        "EXACT" -> Just Exact
        "WILDCARD_EXPRESSION" -> Just WildcardExpression
        _ -> Nothing

instance ToText DimensionValueMatchType where
    toText = \case
        BeginsWith -> "BEGINS_WITH"
        Contains -> "CONTAINS"
        Exact -> "EXACT"
        WildcardExpression -> "WILDCARD_EXPRESSION"

instance FromJSON DimensionValueMatchType where
    parseJSON = parseJSONText "DimensionValueMatchType"

instance ToJSON DimensionValueMatchType where
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

-- | The scope that defines which results are returned, default is \'MINE\'.
data DfareportingReportsListScope
    = DRLSAll
      -- ^ @ALL@
      -- All reports in account.
    | DRLSMine
      -- ^ @MINE@
      -- My reports.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingReportsListScope

instance FromText DfareportingReportsListScope where
    fromText = \case
        "ALL" -> Just DRLSAll
        "MINE" -> Just DRLSMine
        _ -> Nothing

instance ToText DfareportingReportsListScope where
    toText = \case
        DRLSAll -> "ALL"
        DRLSMine -> "MINE"

instance FromJSON DfareportingReportsListScope where
    parseJSON = parseJSONText "DfareportingReportsListScope"

instance ToJSON DfareportingReportsListScope where
    toJSON = toJSONText

-- | Creative group number of the creative group assignment.
data CreativeGroupAssignmentCreativeGroupNumber
    = CreativeGroupOne
      -- ^ @CREATIVE_GROUP_ONE@
    | CreativeGroupTwo
      -- ^ @CREATIVE_GROUP_TWO@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeGroupAssignmentCreativeGroupNumber

instance FromText CreativeGroupAssignmentCreativeGroupNumber where
    fromText = \case
        "CREATIVE_GROUP_ONE" -> Just CreativeGroupOne
        "CREATIVE_GROUP_TWO" -> Just CreativeGroupTwo
        _ -> Nothing

instance ToText CreativeGroupAssignmentCreativeGroupNumber where
    toText = \case
        CreativeGroupOne -> "CREATIVE_GROUP_ONE"
        CreativeGroupTwo -> "CREATIVE_GROUP_TWO"

instance FromJSON CreativeGroupAssignmentCreativeGroupNumber where
    parseJSON = parseJSONText "CreativeGroupAssignmentCreativeGroupNumber"

instance ToJSON CreativeGroupAssignmentCreativeGroupNumber where
    toJSON = toJSONText

data CreativeAssetMetadataWarnedValidationRules
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

instance Hashable CreativeAssetMetadataWarnedValidationRules

instance FromText CreativeAssetMetadataWarnedValidationRules where
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

instance ToText CreativeAssetMetadataWarnedValidationRules where
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

instance FromJSON CreativeAssetMetadataWarnedValidationRules where
    parseJSON = parseJSONText "CreativeAssetMetadataWarnedValidationRules"

instance ToJSON CreativeAssetMetadataWarnedValidationRules where
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

-- | Profile for this account. This is a read-only field that can be left
-- blank.
data AccountAccountProfile
    = AccountProfileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | AccountProfileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountAccountProfile

instance FromText AccountAccountProfile where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just AccountProfileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just AccountProfileStandard
        _ -> Nothing

instance ToText AccountAccountProfile where
    toText = \case
        AccountProfileBasic -> "ACCOUNT_PROFILE_BASIC"
        AccountProfileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountAccountProfile where
    parseJSON = parseJSONText "AccountAccountProfile"

instance ToJSON AccountAccountProfile where
    toJSON = toJSONText

data PlacementTagFormats
    = PTFPlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | PTFPlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | PTFPlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | PTFPlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | PTFPlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | PTFPlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | PTFPlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | PTFPlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | PTFPlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | PTFPlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | PTFPlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | PTFPlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | PTFPlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | PTFPlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | PTFPlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | PTFPlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | PTFPlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | PTFPlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementTagFormats

instance FromText PlacementTagFormats where
    fromText = \case
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Just PTFPlacementTagClickCommands
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Just PTFPlacementTagIframeIlayer
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Just PTFPlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Just PTFPlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Just PTFPlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Just PTFPlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Just PTFPlacementTagInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Just PTFPlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Just PTFPlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Just PTFPlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Just PTFPlacementTagInterstitialJavascript
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Just PTFPlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT" -> Just PTFPlacementTagJavascript
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Just PTFPlacementTagJavascriptLegacy
        "PLACEMENT_TAG_STANDARD" -> Just PTFPlacementTagStandard
        "PLACEMENT_TAG_TRACKING" -> Just PTFPlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Just PTFPlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Just PTFPlacementTagTrackingJavascript
        _ -> Nothing

instance ToText PlacementTagFormats where
    toText = \case
        PTFPlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        PTFPlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        PTFPlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        PTFPlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        PTFPlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        PTFPlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        PTFPlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        PTFPlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        PTFPlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        PTFPlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        PTFPlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        PTFPlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        PTFPlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        PTFPlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        PTFPlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        PTFPlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        PTFPlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        PTFPlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

instance FromJSON PlacementTagFormats where
    parseJSON = parseJSONText "PlacementTagFormats"

instance ToJSON PlacementTagFormats where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DfareportingInventoryItemsListSortField
    = DIILSFID
      -- ^ @ID@
    | DIILSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingInventoryItemsListSortField

instance FromText DfareportingInventoryItemsListSortField where
    fromText = \case
        "ID" -> Just DIILSFID
        "NAME" -> Just DIILSFName
        _ -> Nothing

instance ToText DfareportingInventoryItemsListSortField where
    toText = \case
        DIILSFID -> "ID"
        DIILSFName -> "NAME"

instance FromJSON DfareportingInventoryItemsListSortField where
    parseJSON = parseJSONText "DfareportingInventoryItemsListSortField"

instance ToJSON DfareportingInventoryItemsListSortField where
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

data AccountPermissionAccountProfiles
    = APAPAccountProfileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | APAPAccountProfileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountPermissionAccountProfiles

instance FromText AccountPermissionAccountProfiles where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just APAPAccountProfileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just APAPAccountProfileStandard
        _ -> Nothing

instance ToText AccountPermissionAccountProfiles where
    toText = \case
        APAPAccountProfileBasic -> "ACCOUNT_PROFILE_BASIC"
        APAPAccountProfileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountPermissionAccountProfiles where
    parseJSON = parseJSONText "AccountPermissionAccountProfiles"

instance ToJSON AccountPermissionAccountProfiles where
    toJSON = toJSONText

-- | Type of browser window for which the backup image of the flash creative
-- can be displayed.
data TargetWindowTargetWindowOption
    = CurrentWindow
      -- ^ @CURRENT_WINDOW@
    | Custom
      -- ^ @CUSTOM@
    | NewWindow
      -- ^ @NEW_WINDOW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetWindowTargetWindowOption

instance FromText TargetWindowTargetWindowOption where
    fromText = \case
        "CURRENT_WINDOW" -> Just CurrentWindow
        "CUSTOM" -> Just Custom
        "NEW_WINDOW" -> Just NewWindow
        _ -> Nothing

instance ToText TargetWindowTargetWindowOption where
    toText = \case
        CurrentWindow -> "CURRENT_WINDOW"
        Custom -> "CUSTOM"
        NewWindow -> "NEW_WINDOW"

instance FromJSON TargetWindowTargetWindowOption where
    parseJSON = parseJSONText "TargetWindowTargetWindowOption"

instance ToJSON TargetWindowTargetWindowOption where
    toJSON = toJSONText

-- | Select only change logs with the specified object type.
data DfareportingChangeLogsListObjectType
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

instance Hashable DfareportingChangeLogsListObjectType

instance FromText DfareportingChangeLogsListObjectType where
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

instance ToText DfareportingChangeLogsListObjectType where
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

instance FromJSON DfareportingChangeLogsListObjectType where
    parseJSON = parseJSONText "DfareportingChangeLogsListObjectType"

instance ToJSON DfareportingChangeLogsListObjectType where
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

-- | Type of the event. This is a read-only field.
data CreativeCustomEventAdvertiserCustomEventType
    = AdvertiserEventCounter
      -- ^ @ADVERTISER_EVENT_COUNTER@
    | AdvertiserEventExit
      -- ^ @ADVERTISER_EVENT_EXIT@
    | AdvertiserEventTimer
      -- ^ @ADVERTISER_EVENT_TIMER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeCustomEventAdvertiserCustomEventType

instance FromText CreativeCustomEventAdvertiserCustomEventType where
    fromText = \case
        "ADVERTISER_EVENT_COUNTER" -> Just AdvertiserEventCounter
        "ADVERTISER_EVENT_EXIT" -> Just AdvertiserEventExit
        "ADVERTISER_EVENT_TIMER" -> Just AdvertiserEventTimer
        _ -> Nothing

instance ToText CreativeCustomEventAdvertiserCustomEventType where
    toText = \case
        AdvertiserEventCounter -> "ADVERTISER_EVENT_COUNTER"
        AdvertiserEventExit -> "ADVERTISER_EVENT_EXIT"
        AdvertiserEventTimer -> "ADVERTISER_EVENT_TIMER"

instance FromJSON CreativeCustomEventAdvertiserCustomEventType where
    parseJSON = parseJSONText "CreativeCustomEventAdvertiserCustomEventType"

instance ToJSON CreativeCustomEventAdvertiserCustomEventType where
    toJSON = toJSONText

-- | The dimension option.
data ReportCrossDimensionReachCriteriaDimension
    = RCDRCDAdvertiser
      -- ^ @ADVERTISER@
    | RCDRCDCampaign
      -- ^ @CAMPAIGN@
    | RCDRCDSiteByAdvertiser
      -- ^ @SITE_BY_ADVERTISER@
    | RCDRCDSiteByCampaign
      -- ^ @SITE_BY_CAMPAIGN@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportCrossDimensionReachCriteriaDimension

instance FromText ReportCrossDimensionReachCriteriaDimension where
    fromText = \case
        "ADVERTISER" -> Just RCDRCDAdvertiser
        "CAMPAIGN" -> Just RCDRCDCampaign
        "SITE_BY_ADVERTISER" -> Just RCDRCDSiteByAdvertiser
        "SITE_BY_CAMPAIGN" -> Just RCDRCDSiteByCampaign
        _ -> Nothing

instance ToText ReportCrossDimensionReachCriteriaDimension where
    toText = \case
        RCDRCDAdvertiser -> "ADVERTISER"
        RCDRCDCampaign -> "CAMPAIGN"
        RCDRCDSiteByAdvertiser -> "SITE_BY_ADVERTISER"
        RCDRCDSiteByCampaign -> "SITE_BY_CAMPAIGN"

instance FromJSON ReportCrossDimensionReachCriteriaDimension where
    parseJSON = parseJSONText "ReportCrossDimensionReachCriteriaDimension"

instance ToJSON ReportCrossDimensionReachCriteriaDimension where
    toJSON = toJSONText

-- | Select only placements with these pricing types.
data DfareportingPlacementsListPricingTypes
    = DPLPTPricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | DPLPTPricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | DPLPTPricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | DPLPTPricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | DPLPTPricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingPlacementsListPricingTypes

instance FromText DfareportingPlacementsListPricingTypes where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just DPLPTPricingTypeCpa
        "PRICING_TYPE_CPC" -> Just DPLPTPricingTypeCpc
        "PRICING_TYPE_CPM" -> Just DPLPTPricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just DPLPTPricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just DPLPTPricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText DfareportingPlacementsListPricingTypes where
    toText = \case
        DPLPTPricingTypeCpa -> "PRICING_TYPE_CPA"
        DPLPTPricingTypeCpc -> "PRICING_TYPE_CPC"
        DPLPTPricingTypeCpm -> "PRICING_TYPE_CPM"
        DPLPTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        DPLPTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON DfareportingPlacementsListPricingTypes where
    parseJSON = parseJSONText "DfareportingPlacementsListPricingTypes"

instance ToJSON DfareportingPlacementsListPricingTypes where
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

-- | Select only floodlight activities with the specified floodlight activity
-- group type.
data DfareportingFloodlightActivitiesListFloodlightActivityGroupType
    = DFALFAGTCounter
      -- ^ @COUNTER@
    | DFALFAGTSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingFloodlightActivitiesListFloodlightActivityGroupType

instance FromText DfareportingFloodlightActivitiesListFloodlightActivityGroupType where
    fromText = \case
        "COUNTER" -> Just DFALFAGTCounter
        "SALE" -> Just DFALFAGTSale
        _ -> Nothing

instance ToText DfareportingFloodlightActivitiesListFloodlightActivityGroupType where
    toText = \case
        DFALFAGTCounter -> "COUNTER"
        DFALFAGTSale -> "SALE"

instance FromJSON DfareportingFloodlightActivitiesListFloodlightActivityGroupType where
    parseJSON = parseJSONText "DfareportingFloodlightActivitiesListFloodlightActivityGroupType"

instance ToJSON DfareportingFloodlightActivitiesListFloodlightActivityGroupType where
    toJSON = toJSONText

-- | Payment source type of this ad slot.
data AdSlotPaymentSourceType
    = PlanningPaymentSourceTypeAgencyPaid
      -- ^ @PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID@
    | PlanningPaymentSourceTypePublisherPaid
      -- ^ @PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdSlotPaymentSourceType

instance FromText AdSlotPaymentSourceType where
    fromText = \case
        "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID" -> Just PlanningPaymentSourceTypeAgencyPaid
        "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID" -> Just PlanningPaymentSourceTypePublisherPaid
        _ -> Nothing

instance ToText AdSlotPaymentSourceType where
    toText = \case
        PlanningPaymentSourceTypeAgencyPaid -> "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID"
        PlanningPaymentSourceTypePublisherPaid -> "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID"

instance FromJSON AdSlotPaymentSourceType where
    parseJSON = parseJSONText "AdSlotPaymentSourceType"

instance ToJSON AdSlotPaymentSourceType where
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

-- | Cap cost type of this inventory item.
data PricingCapCostType
    = PlanningPlacementCapCostTypeCumulative
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE@
    | PlanningPlacementCapCostTypeMonthly
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY@
    | PlanningPlacementCapCostTypeNone
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PricingCapCostType

instance FromText PricingCapCostType where
    fromText = \case
        "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE" -> Just PlanningPlacementCapCostTypeCumulative
        "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY" -> Just PlanningPlacementCapCostTypeMonthly
        "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE" -> Just PlanningPlacementCapCostTypeNone
        _ -> Nothing

instance ToText PricingCapCostType where
    toText = \case
        PlanningPlacementCapCostTypeCumulative -> "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE"
        PlanningPlacementCapCostTypeMonthly -> "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY"
        PlanningPlacementCapCostTypeNone -> "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE"

instance FromJSON PricingCapCostType where
    parseJSON = parseJSONText "PricingCapCostType"

instance ToJSON PricingCapCostType where
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

-- | Counting method for conversions for this floodlight activity. This is a
-- required field.
data FloodlightActivityCountingMethod
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

instance Hashable FloodlightActivityCountingMethod

instance FromText FloodlightActivityCountingMethod where
    fromText = \case
        "ITEMS_SOLD_COUNTING" -> Just ItemsSoldCounting
        "SESSION_COUNTING" -> Just SessionCounting
        "STANDARD_COUNTING" -> Just StandardCounting
        "TRANSACTIONS_COUNTING" -> Just TransactionsCounting
        "UNIQUE_COUNTING" -> Just UniqueCounting
        _ -> Nothing

instance ToText FloodlightActivityCountingMethod where
    toText = \case
        ItemsSoldCounting -> "ITEMS_SOLD_COUNTING"
        SessionCounting -> "SESSION_COUNTING"
        StandardCounting -> "STANDARD_COUNTING"
        TransactionsCounting -> "TRANSACTIONS_COUNTING"
        UniqueCounting -> "UNIQUE_COUNTING"

instance FromJSON FloodlightActivityCountingMethod where
    parseJSON = parseJSONText "FloodlightActivityCountingMethod"

instance ToJSON FloodlightActivityCountingMethod where
    toJSON = toJSONText

-- | Select only ads with these types.
data DfareportingAdsListType
    = DALTAdServingClickTracker
      -- ^ @AD_SERVING_CLICK_TRACKER@
    | DALTAdServingDefaultAd
      -- ^ @AD_SERVING_DEFAULT_AD@
    | DALTAdServingStandardAd
      -- ^ @AD_SERVING_STANDARD_AD@
    | DALTAdServingTracking
      -- ^ @AD_SERVING_TRACKING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DfareportingAdsListType

instance FromText DfareportingAdsListType where
    fromText = \case
        "AD_SERVING_CLICK_TRACKER" -> Just DALTAdServingClickTracker
        "AD_SERVING_DEFAULT_AD" -> Just DALTAdServingDefaultAd
        "AD_SERVING_STANDARD_AD" -> Just DALTAdServingStandardAd
        "AD_SERVING_TRACKING" -> Just DALTAdServingTracking
        _ -> Nothing

instance ToText DfareportingAdsListType where
    toText = \case
        DALTAdServingClickTracker -> "AD_SERVING_CLICK_TRACKER"
        DALTAdServingDefaultAd -> "AD_SERVING_DEFAULT_AD"
        DALTAdServingStandardAd -> "AD_SERVING_STANDARD_AD"
        DALTAdServingTracking -> "AD_SERVING_TRACKING"

instance FromJSON DfareportingAdsListType where
    parseJSON = parseJSONText "DfareportingAdsListType"

instance ToJSON DfareportingAdsListType where
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

-- | Type of rich media asset. This is a read-only field. Applicable to the
-- following creative types: all RICH_MEDIA.
data CreativeAssetDisplayType
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

instance Hashable CreativeAssetDisplayType

instance FromText CreativeAssetDisplayType where
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

instance ToText CreativeAssetDisplayType where
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

instance FromJSON CreativeAssetDisplayType where
    parseJSON = parseJSONText "CreativeAssetDisplayType"

instance ToJSON CreativeAssetDisplayType where
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
