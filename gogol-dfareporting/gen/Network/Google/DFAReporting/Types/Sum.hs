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
data PlacementsListSortOrder
    = Ascending
      -- ^ @ASCENDING@
    | Descending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsListSortOrder

instance FromText PlacementsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText PlacementsListSortOrder where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON PlacementsListSortOrder where
    parseJSON = parseJSONText "PlacementsListSortOrder"

instance ToJSON PlacementsListSortOrder where
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
data AdvertisersListSortField
    = ID
      -- ^ @ID@
    | Name
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersListSortField

instance FromText AdvertisersListSortField where
    fromText = \case
        "ID" -> Just ID
        "NAME" -> Just Name
        _ -> Nothing

instance ToText AdvertisersListSortField where
    toText = \case
        ID -> "ID"
        Name -> "NAME"

instance FromJSON AdvertisersListSortField where
    parseJSON = parseJSONText "AdvertisersListSortField"

instance ToJSON AdvertisersListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data CreativeFieldsListSortOrder
    = CFLSOAscending
      -- ^ @ASCENDING@
    | CFLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeFieldsListSortOrder

instance FromText CreativeFieldsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just CFLSOAscending
        "DESCENDING" -> Just CFLSODescending
        _ -> Nothing

instance ToText CreativeFieldsListSortOrder where
    toText = \case
        CFLSOAscending -> "ASCENDING"
        CFLSODescending -> "DESCENDING"

instance FromJSON CreativeFieldsListSortOrder where
    parseJSON = parseJSONText "CreativeFieldsListSortOrder"

instance ToJSON CreativeFieldsListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data UserRolesListSortField
    = URLSFID
      -- ^ @ID@
    | URLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserRolesListSortField

instance FromText UserRolesListSortField where
    fromText = \case
        "ID" -> Just URLSFID
        "NAME" -> Just URLSFName
        _ -> Nothing

instance ToText UserRolesListSortField where
    toText = \case
        URLSFID -> "ID"
        URLSFName -> "NAME"

instance FromJSON UserRolesListSortField where
    parseJSON = parseJSONText "UserRolesListSortField"

instance ToJSON UserRolesListSortField where
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

-- | Order of sorted results, default is ASCENDING.
data OrderDocumentsListSortOrder
    = ODLSOAscending
      -- ^ @ASCENDING@
    | ODLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderDocumentsListSortOrder

instance FromText OrderDocumentsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just ODLSOAscending
        "DESCENDING" -> Just ODLSODescending
        _ -> Nothing

instance ToText OrderDocumentsListSortOrder where
    toText = \case
        ODLSOAscending -> "ASCENDING"
        ODLSODescending -> "DESCENDING"

instance FromJSON OrderDocumentsListSortOrder where
    parseJSON = parseJSONText "OrderDocumentsListSortOrder"

instance ToJSON OrderDocumentsListSortOrder where
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

-- | Order of sorted results, default is ASCENDING.
data TargetableRemarketingListsListSortOrder
    = TRLLSOAscending
      -- ^ @ASCENDING@
    | TRLLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetableRemarketingListsListSortOrder

instance FromText TargetableRemarketingListsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just TRLLSOAscending
        "DESCENDING" -> Just TRLLSODescending
        _ -> Nothing

instance ToText TargetableRemarketingListsListSortOrder where
    toText = \case
        TRLLSOAscending -> "ASCENDING"
        TRLLSODescending -> "DESCENDING"

instance FromJSON TargetableRemarketingListsListSortOrder where
    parseJSON = parseJSONText "TargetableRemarketingListsListSortOrder"

instance ToJSON TargetableRemarketingListsListSortOrder where
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

-- | Select only placements with this payment source.
data PlacementsListPaymentSource
    = PlacementAgencyPaid
      -- ^ @PLACEMENT_AGENCY_PAID@
    | PlacementPublisherPaid
      -- ^ @PLACEMENT_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsListPaymentSource

instance FromText PlacementsListPaymentSource where
    fromText = \case
        "PLACEMENT_AGENCY_PAID" -> Just PlacementAgencyPaid
        "PLACEMENT_PUBLISHER_PAID" -> Just PlacementPublisherPaid
        _ -> Nothing

instance ToText PlacementsListPaymentSource where
    toText = \case
        PlacementAgencyPaid -> "PLACEMENT_AGENCY_PAID"
        PlacementPublisherPaid -> "PLACEMENT_PUBLISHER_PAID"

instance FromJSON PlacementsListPaymentSource where
    parseJSON = parseJSONText "PlacementsListPaymentSource"

instance ToJSON PlacementsListPaymentSource where
    toJSON = toJSONText

-- | The field by which to sort the list.
data ReportsListSortField
    = RLSFID
      -- ^ @ID@
      -- Sort by report ID.
    | RLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastModifiedTime\' field.
    | RLSFName
      -- ^ @NAME@
      -- Sort by name of reports.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsListSortField

instance FromText ReportsListSortField where
    fromText = \case
        "ID" -> Just RLSFID
        "LAST_MODIFIED_TIME" -> Just RLSFLastModifiedTime
        "NAME" -> Just RLSFName
        _ -> Nothing

instance ToText ReportsListSortField where
    toText = \case
        RLSFID -> "ID"
        RLSFLastModifiedTime -> "LAST_MODIFIED_TIME"
        RLSFName -> "NAME"

instance FromJSON ReportsListSortField where
    parseJSON = parseJSONText "ReportsListSortField"

instance ToJSON ReportsListSortField where
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

-- | Field by which to sort the list.
data CampaignsListSortField
    = CLSFID
      -- ^ @ID@
    | CLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CampaignsListSortField

instance FromText CampaignsListSortField where
    fromText = \case
        "ID" -> Just CLSFID
        "NAME" -> Just CLSFName
        _ -> Nothing

instance ToText CampaignsListSortField where
    toText = \case
        CLSFID -> "ID"
        CLSFName -> "NAME"

instance FromJSON CampaignsListSortField where
    parseJSON = parseJSONText "CampaignsListSortField"

instance ToJSON CampaignsListSortField where
    toJSON = toJSONText

-- | Trafficker type of this user profile.
data AccountUserProFileTraffickerType
    = ExternalTrafficker
      -- ^ @EXTERNAL_TRAFFICKER@
    | InternalNonTrafficker
      -- ^ @INTERNAL_NON_TRAFFICKER@
    | InternalTrafficker
      -- ^ @INTERNAL_TRAFFICKER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProFileTraffickerType

instance FromText AccountUserProFileTraffickerType where
    fromText = \case
        "EXTERNAL_TRAFFICKER" -> Just ExternalTrafficker
        "INTERNAL_NON_TRAFFICKER" -> Just InternalNonTrafficker
        "INTERNAL_TRAFFICKER" -> Just InternalTrafficker
        _ -> Nothing

instance ToText AccountUserProFileTraffickerType where
    toText = \case
        ExternalTrafficker -> "EXTERNAL_TRAFFICKER"
        InternalNonTrafficker -> "INTERNAL_NON_TRAFFICKER"
        InternalTrafficker -> "INTERNAL_TRAFFICKER"

instance FromJSON AccountUserProFileTraffickerType where
    parseJSON = parseJSONText "AccountUserProFileTraffickerType"

instance ToJSON AccountUserProFileTraffickerType where
    toJSON = toJSONText

data CreativeAssetMetadataDetectedFeaturesItem
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

instance Hashable CreativeAssetMetadataDetectedFeaturesItem

instance FromText CreativeAssetMetadataDetectedFeaturesItem where
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

instance ToText CreativeAssetMetadataDetectedFeaturesItem where
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

instance FromJSON CreativeAssetMetadataDetectedFeaturesItem where
    parseJSON = parseJSONText "CreativeAssetMetadataDetectedFeaturesItem"

instance ToJSON CreativeAssetMetadataDetectedFeaturesItem where
    toJSON = toJSONText

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. WEB and WEB_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
data AdsListCompatibility
    = ALCApp
      -- ^ @APP@
    | ALCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | ALCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | ALCWeb
      -- ^ @WEB@
    | ALCWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdsListCompatibility

instance FromText AdsListCompatibility where
    fromText = \case
        "APP" -> Just ALCApp
        "APP_INTERSTITIAL" -> Just ALCAppInterstitial
        "IN_STREAM_VIDEO" -> Just ALCInStreamVideo
        "WEB" -> Just ALCWeb
        "WEB_INTERSTITIAL" -> Just ALCWebInterstitial
        _ -> Nothing

instance ToText AdsListCompatibility where
    toText = \case
        ALCApp -> "APP"
        ALCAppInterstitial -> "APP_INTERSTITIAL"
        ALCInStreamVideo -> "IN_STREAM_VIDEO"
        ALCWeb -> "WEB"
        ALCWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON AdsListCompatibility where
    parseJSON = parseJSONText "AdsListCompatibility"

instance ToJSON AdsListCompatibility where
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

-- | Field by which to sort the list.
data SitesListSortField
    = SLSFID
      -- ^ @ID@
    | SLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SitesListSortField

instance FromText SitesListSortField where
    fromText = \case
        "ID" -> Just SLSFID
        "NAME" -> Just SLSFName
        _ -> Nothing

instance ToText SitesListSortField where
    toText = \case
        SLSFID -> "ID"
        SLSFName -> "NAME"

instance FromJSON SitesListSortField where
    parseJSON = parseJSONText "SitesListSortField"

instance ToJSON SitesListSortField where
    toJSON = toJSONText

-- | Select only event tags with the specified event tag types. Event tag
-- types can be used to specify whether to use a third-party pixel, a
-- third-party JavaScript URL, or a third-party click-through URL for
-- either impression or click tracking.
data EventTagsListEventTagTypes
    = ClickThroughEventTag
      -- ^ @CLICK_THROUGH_EVENT_TAG@
    | ImpressionImageEventTag
      -- ^ @IMPRESSION_IMAGE_EVENT_TAG@
    | ImpressionJavascriptEventTag
      -- ^ @IMPRESSION_JAVASCRIPT_EVENT_TAG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagsListEventTagTypes

instance FromText EventTagsListEventTagTypes where
    fromText = \case
        "CLICK_THROUGH_EVENT_TAG" -> Just ClickThroughEventTag
        "IMPRESSION_IMAGE_EVENT_TAG" -> Just ImpressionImageEventTag
        "IMPRESSION_JAVASCRIPT_EVENT_TAG" -> Just ImpressionJavascriptEventTag
        _ -> Nothing

instance ToText EventTagsListEventTagTypes where
    toText = \case
        ClickThroughEventTag -> "CLICK_THROUGH_EVENT_TAG"
        ImpressionImageEventTag -> "IMPRESSION_IMAGE_EVENT_TAG"
        ImpressionJavascriptEventTag -> "IMPRESSION_JAVASCRIPT_EVENT_TAG"

instance FromJSON EventTagsListEventTagTypes where
    parseJSON = parseJSONText "EventTagsListEventTagTypes"

instance ToJSON EventTagsListEventTagTypes where
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

-- | Order of sorted results, default is ASCENDING.
data FloodlightActivitiesListSortOrder
    = FALSOAscending
      -- ^ @ASCENDING@
    | FALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivitiesListSortOrder

instance FromText FloodlightActivitiesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just FALSOAscending
        "DESCENDING" -> Just FALSODescending
        _ -> Nothing

instance ToText FloodlightActivitiesListSortOrder where
    toText = \case
        FALSOAscending -> "ASCENDING"
        FALSODescending -> "DESCENDING"

instance FromJSON FloodlightActivitiesListSortOrder where
    parseJSON = parseJSONText "FloodlightActivitiesListSortOrder"

instance ToJSON FloodlightActivitiesListSortOrder where
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

-- | The scope that defines which results are returned, default is \'MINE\'.
data ReportsListScope
    = All
      -- ^ @ALL@
      -- All reports in account.
    | Mine
      -- ^ @MINE@
      -- My reports.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsListScope

instance FromText ReportsListScope where
    fromText = \case
        "ALL" -> Just All
        "MINE" -> Just Mine
        _ -> Nothing

instance ToText ReportsListScope where
    toText = \case
        All -> "ALL"
        Mine -> "MINE"

instance FromJSON ReportsListScope where
    parseJSON = parseJSONText "ReportsListScope"

instance ToJSON ReportsListScope where
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
data CreativeGroupsListSortField
    = CGLSFID
      -- ^ @ID@
    | CGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeGroupsListSortField

instance FromText CreativeGroupsListSortField where
    fromText = \case
        "ID" -> Just CGLSFID
        "NAME" -> Just CGLSFName
        _ -> Nothing

instance ToText CreativeGroupsListSortField where
    toText = \case
        CGLSFID -> "ID"
        CGLSFName -> "NAME"

instance FromJSON CreativeGroupsListSortField where
    parseJSON = parseJSONText "CreativeGroupsListSortField"

instance ToJSON CreativeGroupsListSortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data PlacementsListSortField
    = PLSFID
      -- ^ @ID@
    | PLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsListSortField

instance FromText PlacementsListSortField where
    fromText = \case
        "ID" -> Just PLSFID
        "NAME" -> Just PLSFName
        _ -> Nothing

instance ToText PlacementsListSortField where
    toText = \case
        PLSFID -> "ID"
        PLSFName -> "NAME"

instance FromJSON PlacementsListSortField where
    parseJSON = parseJSONText "PlacementsListSortField"

instance ToJSON PlacementsListSortField where
    toJSON = toJSONText

data CreativeBackupImageFeaturesItem
    = CBIFIApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CBIFIAudio
      -- ^ @AUDIO@
    | CBIFICanvas
      -- ^ @CANVAS@
    | CBIFICanvasText
      -- ^ @CANVAS_TEXT@
    | CBIFICssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CBIFICssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CBIFICssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CBIFICssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CBIFICssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CBIFICssColumns
      -- ^ @CSS_COLUMNS@
    | CBIFICssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CBIFICssFontFace
      -- ^ @CSS_FONT_FACE@
    | CBIFICssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CBIFICssGradients
      -- ^ @CSS_GRADIENTS@
    | CBIFICssHsla
      -- ^ @CSS_HSLA@
    | CBIFICssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CBIFICssOpacity
      -- ^ @CSS_OPACITY@
    | CBIFICssReflections
      -- ^ @CSS_REFLECTIONS@
    | CBIFICssRgba
      -- ^ @CSS_RGBA@
    | CBIFICssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CBIFICssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CBIFICssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CBIFICssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CBIFIDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CBIFIGeoLocation
      -- ^ @GEO_LOCATION@
    | CBIFIHashChange
      -- ^ @HASH_CHANGE@
    | CBIFIHistory
      -- ^ @HISTORY@
    | CBIFIIndexedDB
      -- ^ @INDEXED_DB@
    | CBIFIInlineSvg
      -- ^ @INLINE_SVG@
    | CBIFIInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CBIFIInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CBIFIInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CBIFIInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CBIFIInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CBIFIInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CBIFIInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CBIFIInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CBIFIInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CBIFIInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CBIFIInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CBIFIInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CBIFIInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CBIFIInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CBIFIInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CBIFIInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CBIFIInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CBIFIInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CBIFIInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CBIFIInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CBIFIInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CBIFIInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CBIFIInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CBIFILocalStorage
      -- ^ @LOCAL_STORAGE@
    | CBIFIPostMessage
      -- ^ @POST_MESSAGE@
    | CBIFISessionStorage
      -- ^ @SESSION_STORAGE@
    | CBIFISmil
      -- ^ @SMIL@
    | CBIFISvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CBIFISvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | CBIFISvgFilters
      -- ^ @SVG_FILTERS@
    | CBIFISvgHref
      -- ^ @SVG_HREF@
    | CBIFITouch
      -- ^ @TOUCH@
    | CBIFIVideo
      -- ^ @VIDEO@
    | CBIFIWebgl
      -- ^ @WEBGL@
    | CBIFIWebSockets
      -- ^ @WEB_SOCKETS@
    | CBIFIWebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CBIFIWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeBackupImageFeaturesItem

instance FromText CreativeBackupImageFeaturesItem where
    fromText = \case
        "APPLICATION_CACHE" -> Just CBIFIApplicationCache
        "AUDIO" -> Just CBIFIAudio
        "CANVAS" -> Just CBIFICanvas
        "CANVAS_TEXT" -> Just CBIFICanvasText
        "CSS_ANIMATIONS" -> Just CBIFICssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CBIFICssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Just CBIFICssBOrderImage
        "CSS_BORDER_RADIUS" -> Just CBIFICssBOrderRadius
        "CSS_BOX_SHADOW" -> Just CBIFICssBoxShadow
        "CSS_COLUMNS" -> Just CBIFICssColumns
        "CSS_FLEX_BOX" -> Just CBIFICssFlexBox
        "CSS_FONT_FACE" -> Just CBIFICssFontFace
        "CSS_GENERATED_CONTENT" -> Just CBIFICssGeneratedContent
        "CSS_GRADIENTS" -> Just CBIFICssGradients
        "CSS_HSLA" -> Just CBIFICssHsla
        "CSS_MULTIPLE_BGS" -> Just CBIFICssMultipleBgs
        "CSS_OPACITY" -> Just CBIFICssOpacity
        "CSS_REFLECTIONS" -> Just CBIFICssReflections
        "CSS_RGBA" -> Just CBIFICssRgba
        "CSS_TEXT_SHADOW" -> Just CBIFICssTextShadow
        "CSS_TRANSFORMS" -> Just CBIFICssTransforms
        "CSS_TRANSFORMS3D" -> Just CBIFICssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CBIFICssTransitions
        "DRAG_AND_DROP" -> Just CBIFIDragAndDrop
        "GEO_LOCATION" -> Just CBIFIGeoLocation
        "HASH_CHANGE" -> Just CBIFIHashChange
        "HISTORY" -> Just CBIFIHistory
        "INDEXED_DB" -> Just CBIFIIndexedDB
        "INLINE_SVG" -> Just CBIFIInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just CBIFIInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just CBIFIInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just CBIFIInputAttrList
        "INPUT_ATTR_MAX" -> Just CBIFIInputAttrMax
        "INPUT_ATTR_MIN" -> Just CBIFIInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just CBIFIInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just CBIFIInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just CBIFIInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just CBIFIInputAttrRequired
        "INPUT_ATTR_STEP" -> Just CBIFIInputAttrStep
        "INPUT_TYPE_COLOR" -> Just CBIFIInputTypeColor
        "INPUT_TYPE_DATE" -> Just CBIFIInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just CBIFIInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just CBIFIInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just CBIFIInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just CBIFIInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just CBIFIInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just CBIFIInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just CBIFIInputTypeSearch
        "INPUT_TYPE_TEL" -> Just CBIFIInputTypeTel
        "INPUT_TYPE_TIME" -> Just CBIFIInputTypeTime
        "INPUT_TYPE_URL" -> Just CBIFIInputTypeURL
        "INPUT_TYPE_WEEK" -> Just CBIFIInputTypeWeek
        "LOCAL_STORAGE" -> Just CBIFILocalStorage
        "POST_MESSAGE" -> Just CBIFIPostMessage
        "SESSION_STORAGE" -> Just CBIFISessionStorage
        "SMIL" -> Just CBIFISmil
        "SVG_CLIP_PATHS" -> Just CBIFISvgClipPaths
        "SVG_FE_IMAGE" -> Just CBIFISvgFeImage
        "SVG_FILTERS" -> Just CBIFISvgFilters
        "SVG_HREF" -> Just CBIFISvgHref
        "TOUCH" -> Just CBIFITouch
        "VIDEO" -> Just CBIFIVideo
        "WEBGL" -> Just CBIFIWebgl
        "WEB_SOCKETS" -> Just CBIFIWebSockets
        "WEB_SQL_DATABASE" -> Just CBIFIWebSQLDatabase
        "WEB_WORKERS" -> Just CBIFIWebWorkers
        _ -> Nothing

instance ToText CreativeBackupImageFeaturesItem where
    toText = \case
        CBIFIApplicationCache -> "APPLICATION_CACHE"
        CBIFIAudio -> "AUDIO"
        CBIFICanvas -> "CANVAS"
        CBIFICanvasText -> "CANVAS_TEXT"
        CBIFICssAnimations -> "CSS_ANIMATIONS"
        CBIFICssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CBIFICssBOrderImage -> "CSS_BORDER_IMAGE"
        CBIFICssBOrderRadius -> "CSS_BORDER_RADIUS"
        CBIFICssBoxShadow -> "CSS_BOX_SHADOW"
        CBIFICssColumns -> "CSS_COLUMNS"
        CBIFICssFlexBox -> "CSS_FLEX_BOX"
        CBIFICssFontFace -> "CSS_FONT_FACE"
        CBIFICssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CBIFICssGradients -> "CSS_GRADIENTS"
        CBIFICssHsla -> "CSS_HSLA"
        CBIFICssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CBIFICssOpacity -> "CSS_OPACITY"
        CBIFICssReflections -> "CSS_REFLECTIONS"
        CBIFICssRgba -> "CSS_RGBA"
        CBIFICssTextShadow -> "CSS_TEXT_SHADOW"
        CBIFICssTransforms -> "CSS_TRANSFORMS"
        CBIFICssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CBIFICssTransitions -> "CSS_TRANSITIONS"
        CBIFIDragAndDrop -> "DRAG_AND_DROP"
        CBIFIGeoLocation -> "GEO_LOCATION"
        CBIFIHashChange -> "HASH_CHANGE"
        CBIFIHistory -> "HISTORY"
        CBIFIIndexedDB -> "INDEXED_DB"
        CBIFIInlineSvg -> "INLINE_SVG"
        CBIFIInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CBIFIInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CBIFIInputAttrList -> "INPUT_ATTR_LIST"
        CBIFIInputAttrMax -> "INPUT_ATTR_MAX"
        CBIFIInputAttrMin -> "INPUT_ATTR_MIN"
        CBIFIInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CBIFIInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CBIFIInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CBIFIInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CBIFIInputAttrStep -> "INPUT_ATTR_STEP"
        CBIFIInputTypeColor -> "INPUT_TYPE_COLOR"
        CBIFIInputTypeDate -> "INPUT_TYPE_DATE"
        CBIFIInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CBIFIInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CBIFIInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CBIFIInputTypeMonth -> "INPUT_TYPE_MONTH"
        CBIFIInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CBIFIInputTypeRange -> "INPUT_TYPE_RANGE"
        CBIFIInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CBIFIInputTypeTel -> "INPUT_TYPE_TEL"
        CBIFIInputTypeTime -> "INPUT_TYPE_TIME"
        CBIFIInputTypeURL -> "INPUT_TYPE_URL"
        CBIFIInputTypeWeek -> "INPUT_TYPE_WEEK"
        CBIFILocalStorage -> "LOCAL_STORAGE"
        CBIFIPostMessage -> "POST_MESSAGE"
        CBIFISessionStorage -> "SESSION_STORAGE"
        CBIFISmil -> "SMIL"
        CBIFISvgClipPaths -> "SVG_CLIP_PATHS"
        CBIFISvgFeImage -> "SVG_FE_IMAGE"
        CBIFISvgFilters -> "SVG_FILTERS"
        CBIFISvgHref -> "SVG_HREF"
        CBIFITouch -> "TOUCH"
        CBIFIVideo -> "VIDEO"
        CBIFIWebgl -> "WEBGL"
        CBIFIWebSockets -> "WEB_SOCKETS"
        CBIFIWebSQLDatabase -> "WEB_SQL_DATABASE"
        CBIFIWebWorkers -> "WEB_WORKERS"

instance FromJSON CreativeBackupImageFeaturesItem where
    parseJSON = parseJSONText "CreativeBackupImageFeaturesItem"

instance ToJSON CreativeBackupImageFeaturesItem where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data AdvertisersListSortOrder
    = ALSOAscending
      -- ^ @ASCENDING@
    | ALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersListSortOrder

instance FromText AdvertisersListSortOrder where
    fromText = \case
        "ASCENDING" -> Just ALSOAscending
        "DESCENDING" -> Just ALSODescending
        _ -> Nothing

instance ToText AdvertisersListSortOrder where
    toText = \case
        ALSOAscending -> "ASCENDING"
        ALSODescending -> "DESCENDING"

instance FromJSON AdvertisersListSortOrder where
    parseJSON = parseJSONText "AdvertisersListSortOrder"

instance ToJSON AdvertisersListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data CreativeFieldsListSortField
    = CFLSFID
      -- ^ @ID@
    | CFLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeFieldsListSortField

instance FromText CreativeFieldsListSortField where
    fromText = \case
        "ID" -> Just CFLSFID
        "NAME" -> Just CFLSFName
        _ -> Nothing

instance ToText CreativeFieldsListSortField where
    toText = \case
        CFLSFID -> "ID"
        CFLSFName -> "NAME"

instance FromJSON CreativeFieldsListSortField where
    parseJSON = parseJSONText "CreativeFieldsListSortField"

instance ToJSON CreativeFieldsListSortField where
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

-- | Order of sorted results, default is ASCENDING.
data UserRolesListSortOrder
    = URLSOAscending
      -- ^ @ASCENDING@
    | URLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserRolesListSortOrder

instance FromText UserRolesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just URLSOAscending
        "DESCENDING" -> Just URLSODescending
        _ -> Nothing

instance ToText UserRolesListSortOrder where
    toText = \case
        URLSOAscending -> "ASCENDING"
        URLSODescending -> "DESCENDING"

instance FromJSON UserRolesListSortOrder where
    parseJSON = parseJSONText "UserRolesListSortOrder"

instance ToJSON UserRolesListSortOrder where
    toJSON = toJSONText

-- | Select only placements that are associated with these compatibilities.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO refers
-- to rendering in in-stream video ads developed with the VAST standard.
data PlacementsListCompatibilities
    = PLCApp
      -- ^ @APP@
    | PLCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | PLCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | PLCWeb
      -- ^ @WEB@
    | PLCWebInterstitial
      -- ^ @WEB_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsListCompatibilities

instance FromText PlacementsListCompatibilities where
    fromText = \case
        "APP" -> Just PLCApp
        "APP_INTERSTITIAL" -> Just PLCAppInterstitial
        "IN_STREAM_VIDEO" -> Just PLCInStreamVideo
        "WEB" -> Just PLCWeb
        "WEB_INTERSTITIAL" -> Just PLCWebInterstitial
        _ -> Nothing

instance ToText PlacementsListCompatibilities where
    toText = \case
        PLCApp -> "APP"
        PLCAppInterstitial -> "APP_INTERSTITIAL"
        PLCInStreamVideo -> "IN_STREAM_VIDEO"
        PLCWeb -> "WEB"
        PLCWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON PlacementsListCompatibilities where
    parseJSON = parseJSONText "PlacementsListCompatibilities"

instance ToJSON PlacementsListCompatibilities where
    toJSON = toJSONText

-- | Field by which to sort the list.
data OrderDocumentsListSortField
    = ODLSFID
      -- ^ @ID@
    | ODLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderDocumentsListSortField

instance FromText OrderDocumentsListSortField where
    fromText = \case
        "ID" -> Just ODLSFID
        "NAME" -> Just ODLSFName
        _ -> Nothing

instance ToText OrderDocumentsListSortField where
    toText = \case
        ODLSFID -> "ID"
        ODLSFName -> "NAME"

instance FromJSON OrderDocumentsListSortField where
    parseJSON = parseJSONText "OrderDocumentsListSortField"

instance ToJSON OrderDocumentsListSortField where
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

-- | Order of sorted results, default is \'DESCENDING\'.
data ReportsListSortOrder
    = RLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | RLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsListSortOrder

instance FromText ReportsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just RLSOAscending
        "DESCENDING" -> Just RLSODescending
        _ -> Nothing

instance ToText ReportsListSortOrder where
    toText = \case
        RLSOAscending -> "ASCENDING"
        RLSODescending -> "DESCENDING"

instance FromJSON ReportsListSortOrder where
    parseJSON = parseJSONText "ReportsListSortOrder"

instance ToJSON ReportsListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data TargetableRemarketingListsListSortField
    = TRLLSFID
      -- ^ @ID@
    | TRLLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetableRemarketingListsListSortField

instance FromText TargetableRemarketingListsListSortField where
    fromText = \case
        "ID" -> Just TRLLSFID
        "NAME" -> Just TRLLSFName
        _ -> Nothing

instance ToText TargetableRemarketingListsListSortField where
    toText = \case
        TRLLSFID -> "ID"
        TRLLSFName -> "NAME"

instance FromJSON TargetableRemarketingListsListSortField where
    parseJSON = parseJSONText "TargetableRemarketingListsListSortField"

instance ToJSON TargetableRemarketingListsListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data CampaignsListSortOrder
    = CLSOAscending
      -- ^ @ASCENDING@
    | CLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CampaignsListSortOrder

instance FromText CampaignsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just CLSOAscending
        "DESCENDING" -> Just CLSODescending
        _ -> Nothing

instance ToText CampaignsListSortOrder where
    toText = \case
        CLSOAscending -> "ASCENDING"
        CLSODescending -> "DESCENDING"

instance FromJSON CampaignsListSortOrder where
    parseJSON = parseJSONText "CampaignsListSortOrder"

instance ToJSON CampaignsListSortOrder where
    toJSON = toJSONText

-- | Select only floodlight activity groups with the specified floodlight
-- activity group type.
data FloodlightActivityGroupsListType
    = Counter
      -- ^ @COUNTER@
    | Sale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupsListType

instance FromText FloodlightActivityGroupsListType where
    fromText = \case
        "COUNTER" -> Just Counter
        "SALE" -> Just Sale
        _ -> Nothing

instance ToText FloodlightActivityGroupsListType where
    toText = \case
        Counter -> "COUNTER"
        Sale -> "SALE"

instance FromJSON FloodlightActivityGroupsListType where
    parseJSON = parseJSONText "FloodlightActivityGroupsListType"

instance ToJSON FloodlightActivityGroupsListType where
    toJSON = toJSONText

-- | Day that will be counted as the first day of the week in reports. This
-- is a required field.
data FloodlightConfigurationFirstDayOfWeek
    = Monday
      -- ^ @MONDAY@
    | Sunday
      -- ^ @SUNDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationFirstDayOfWeek

instance FromText FloodlightConfigurationFirstDayOfWeek where
    fromText = \case
        "MONDAY" -> Just Monday
        "SUNDAY" -> Just Sunday
        _ -> Nothing

instance ToText FloodlightConfigurationFirstDayOfWeek where
    toText = \case
        Monday -> "MONDAY"
        Sunday -> "SUNDAY"

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

-- | Select only floodlight activities with the specified floodlight activity
-- group type.
data FloodlightActivitiesListFloodlightActivityGroupType
    = FALFAGTCounter
      -- ^ @COUNTER@
    | FALFAGTSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivitiesListFloodlightActivityGroupType

instance FromText FloodlightActivitiesListFloodlightActivityGroupType where
    fromText = \case
        "COUNTER" -> Just FALFAGTCounter
        "SALE" -> Just FALFAGTSale
        _ -> Nothing

instance ToText FloodlightActivitiesListFloodlightActivityGroupType where
    toText = \case
        FALFAGTCounter -> "COUNTER"
        FALFAGTSale -> "SALE"

instance FromJSON FloodlightActivitiesListFloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivitiesListFloodlightActivityGroupType"

instance ToJSON FloodlightActivitiesListFloodlightActivityGroupType where
    toJSON = toJSONText

data FloodlightConfigurationStandardVariableTypesItem
    = Num
      -- ^ @NUM@
    | Ord
      -- ^ @ORD@
    | Tran
      -- ^ @TRAN@
    | U
      -- ^ @U@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationStandardVariableTypesItem

instance FromText FloodlightConfigurationStandardVariableTypesItem where
    fromText = \case
        "NUM" -> Just Num
        "ORD" -> Just Ord
        "TRAN" -> Just Tran
        "U" -> Just U
        _ -> Nothing

instance ToText FloodlightConfigurationStandardVariableTypesItem where
    toText = \case
        Num -> "NUM"
        Ord -> "ORD"
        Tran -> "TRAN"
        U -> "U"

instance FromJSON FloodlightConfigurationStandardVariableTypesItem where
    parseJSON = parseJSONText "FloodlightConfigurationStandardVariableTypesItem"

instance ToJSON FloodlightConfigurationStandardVariableTypesItem where
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

-- | Order of sorted results, default is \'DESCENDING\'.
data ReportsFilesListSortOrder
    = RFLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | RFLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsFilesListSortOrder

instance FromText ReportsFilesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just RFLSOAscending
        "DESCENDING" -> Just RFLSODescending
        _ -> Nothing

instance ToText ReportsFilesListSortOrder where
    toText = \case
        RFLSOAscending -> "ASCENDING"
        RFLSODescending -> "DESCENDING"

instance FromJSON ReportsFilesListSortOrder where
    parseJSON = parseJSONText "ReportsFilesListSortOrder"

instance ToJSON ReportsFilesListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data InventoryItemsListSortField
    = IILSFID
      -- ^ @ID@
    | IILSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InventoryItemsListSortField

instance FromText InventoryItemsListSortField where
    fromText = \case
        "ID" -> Just IILSFID
        "NAME" -> Just IILSFName
        _ -> Nothing

instance ToText InventoryItemsListSortField where
    toText = \case
        IILSFID -> "ID"
        IILSFName -> "NAME"

instance FromJSON InventoryItemsListSortField where
    parseJSON = parseJSONText "InventoryItemsListSortField"

instance ToJSON InventoryItemsListSortField where
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

-- | Order of sorted results, default is ASCENDING.
data CreativesListSortOrder
    = CAscending
      -- ^ @ASCENDING@
    | CDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesListSortOrder

instance FromText CreativesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just CAscending
        "DESCENDING" -> Just CDescending
        _ -> Nothing

instance ToText CreativesListSortOrder where
    toText = \case
        CAscending -> "ASCENDING"
        CDescending -> "DESCENDING"

instance FromJSON CreativesListSortOrder where
    parseJSON = parseJSONText "CreativesListSortOrder"

instance ToJSON CreativesListSortOrder where
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

-- | Order of sorted results, default is ASCENDING.
data AccountUserProFilesListSortOrder
    = AUPFLSOAscending
      -- ^ @ASCENDING@
    | AUPFLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProFilesListSortOrder

instance FromText AccountUserProFilesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just AUPFLSOAscending
        "DESCENDING" -> Just AUPFLSODescending
        _ -> Nothing

instance ToText AccountUserProFilesListSortOrder where
    toText = \case
        AUPFLSOAscending -> "ASCENDING"
        AUPFLSODescending -> "DESCENDING"

instance FromJSON AccountUserProFilesListSortOrder where
    parseJSON = parseJSONText "AccountUserProFilesListSortOrder"

instance ToJSON AccountUserProFilesListSortOrder where
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

-- | User type of the user profile. This is a read-only field that can be
-- left blank.
data AccountUserProFileUserAccessType
    = InternalAdministrator
      -- ^ @INTERNAL_ADMINISTRATOR@
    | NormalUser
      -- ^ @NORMAL_USER@
    | SuperUser
      -- ^ @SUPER_USER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProFileUserAccessType

instance FromText AccountUserProFileUserAccessType where
    fromText = \case
        "INTERNAL_ADMINISTRATOR" -> Just InternalAdministrator
        "NORMAL_USER" -> Just NormalUser
        "SUPER_USER" -> Just SuperUser
        _ -> Nothing

instance ToText AccountUserProFileUserAccessType where
    toText = \case
        InternalAdministrator -> "INTERNAL_ADMINISTRATOR"
        NormalUser -> "NORMAL_USER"
        SuperUser -> "SUPER_USER"

instance FromJSON AccountUserProFileUserAccessType where
    parseJSON = parseJSONText "AccountUserProFileUserAccessType"

instance ToJSON AccountUserProFileUserAccessType where
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

-- | Field by which to sort the list.
data PlacementStrategiesListSortField
    = PSLSFID
      -- ^ @ID@
    | PSLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementStrategiesListSortField

instance FromText PlacementStrategiesListSortField where
    fromText = \case
        "ID" -> Just PSLSFID
        "NAME" -> Just PSLSFName
        _ -> Nothing

instance ToText PlacementStrategiesListSortField where
    toText = \case
        PSLSFID -> "ID"
        PSLSFName -> "NAME"

instance FromJSON PlacementStrategiesListSortField where
    parseJSON = parseJSONText "PlacementStrategiesListSortField"

instance ToJSON PlacementStrategiesListSortField where
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

-- | Order of sorted results, default is ASCENDING.
data CreativeGroupsListSortOrder
    = CGLSOAscending
      -- ^ @ASCENDING@
    | CGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeGroupsListSortOrder

instance FromText CreativeGroupsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just CGLSOAscending
        "DESCENDING" -> Just CGLSODescending
        _ -> Nothing

instance ToText CreativeGroupsListSortOrder where
    toText = \case
        CGLSOAscending -> "ASCENDING"
        CGLSODescending -> "DESCENDING"

instance FromJSON CreativeGroupsListSortOrder where
    parseJSON = parseJSONText "CreativeGroupsListSortOrder"

instance ToJSON CreativeGroupsListSortOrder where
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

-- | TagData tag format of this tag.
data TagDataFormat
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

instance Hashable TagDataFormat

instance FromText TagDataFormat where
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

instance ToText TagDataFormat where
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

instance FromJSON TagDataFormat where
    parseJSON = parseJSONText "TagDataFormat"

instance ToJSON TagDataFormat where
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

-- | Select only placement groups belonging with this group type. A package
-- is a simple group of placements that acts as a single pricing point for
-- a group of tags. A roadblock is a group of placements that not only acts
-- as a single pricing point but also assumes that all the tags in it will
-- be served at the same time. A roadblock requires one of its assigned
-- placements to be marked as primary for reporting.
data PlacementGroupsListPlacementGroupType
    = PlacementPackage
      -- ^ @PLACEMENT_PACKAGE@
    | PlacementRoadblock
      -- ^ @PLACEMENT_ROADBLOCK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupsListPlacementGroupType

instance FromText PlacementGroupsListPlacementGroupType where
    fromText = \case
        "PLACEMENT_PACKAGE" -> Just PlacementPackage
        "PLACEMENT_ROADBLOCK" -> Just PlacementRoadblock
        _ -> Nothing

instance ToText PlacementGroupsListPlacementGroupType where
    toText = \case
        PlacementPackage -> "PLACEMENT_PACKAGE"
        PlacementRoadblock -> "PLACEMENT_ROADBLOCK"

instance FromJSON PlacementGroupsListPlacementGroupType where
    parseJSON = parseJSONText "PlacementGroupsListPlacementGroupType"

instance ToJSON PlacementGroupsListPlacementGroupType where
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

-- | Order of sorted results, default is ASCENDING.
data CampaignCreativeAssociationsListSortOrder
    = CCALSOAscending
      -- ^ @ASCENDING@
    | CCALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CampaignCreativeAssociationsListSortOrder

instance FromText CampaignCreativeAssociationsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just CCALSOAscending
        "DESCENDING" -> Just CCALSODescending
        _ -> Nothing

instance ToText CampaignCreativeAssociationsListSortOrder where
    toText = \case
        CCALSOAscending -> "ASCENDING"
        CCALSODescending -> "DESCENDING"

instance FromJSON CampaignCreativeAssociationsListSortOrder where
    parseJSON = parseJSONText "CampaignCreativeAssociationsListSortOrder"

instance ToJSON CampaignCreativeAssociationsListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data FloodlightActivitiesListSortField
    = FALSFID
      -- ^ @ID@
    | FALSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivitiesListSortField

instance FromText FloodlightActivitiesListSortField where
    fromText = \case
        "ID" -> Just FALSFID
        "NAME" -> Just FALSFName
        _ -> Nothing

instance ToText FloodlightActivitiesListSortField where
    toText = \case
        FALSFID -> "ID"
        FALSFName -> "NAME"

instance FromJSON FloodlightActivitiesListSortField where
    parseJSON = parseJSONText "FloodlightActivitiesListSortField"

instance ToJSON FloodlightActivitiesListSortField where
    toJSON = toJSONText

-- | Select only creatives with these creative types.
data CreativesListTypes
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

instance Hashable CreativesListTypes

instance FromText CreativesListTypes where
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

instance ToText CreativesListTypes where
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

instance FromJSON CreativesListTypes where
    parseJSON = parseJSONText "CreativesListTypes"

instance ToJSON CreativesListTypes where
    toJSON = toJSONText

data DirectorySiteInpageTagFormatsItem
    = IframeJavascriptInpage
      -- ^ @IFRAME_JAVASCRIPT_INPAGE@
    | InternalRedirectInpage
      -- ^ @INTERNAL_REDIRECT_INPAGE@
    | JavascriptInpage
      -- ^ @JAVASCRIPT_INPAGE@
    | Standard
      -- ^ @STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteInpageTagFormatsItem

instance FromText DirectorySiteInpageTagFormatsItem where
    fromText = \case
        "IFRAME_JAVASCRIPT_INPAGE" -> Just IframeJavascriptInpage
        "INTERNAL_REDIRECT_INPAGE" -> Just InternalRedirectInpage
        "JAVASCRIPT_INPAGE" -> Just JavascriptInpage
        "STANDARD" -> Just Standard
        _ -> Nothing

instance ToText DirectorySiteInpageTagFormatsItem where
    toText = \case
        IframeJavascriptInpage -> "IFRAME_JAVASCRIPT_INPAGE"
        InternalRedirectInpage -> "INTERNAL_REDIRECT_INPAGE"
        JavascriptInpage -> "JAVASCRIPT_INPAGE"
        Standard -> "STANDARD"

instance FromJSON DirectorySiteInpageTagFormatsItem where
    parseJSON = parseJSONText "DirectorySiteInpageTagFormatsItem"

instance ToJSON DirectorySiteInpageTagFormatsItem where
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

-- | Order of sorted results, default is ASCENDING.
data RemarketingListsListSortOrder
    = RLLSOAscending
      -- ^ @ASCENDING@
    | RLLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RemarketingListsListSortOrder

instance FromText RemarketingListsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just RLLSOAscending
        "DESCENDING" -> Just RLLSODescending
        _ -> Nothing

instance ToText RemarketingListsListSortOrder where
    toText = \case
        RLLSOAscending -> "ASCENDING"
        RLLSODescending -> "DESCENDING"

instance FromJSON RemarketingListsListSortOrder where
    parseJSON = parseJSONText "RemarketingListsListSortOrder"

instance ToJSON RemarketingListsListSortOrder where
    toJSON = toJSONText

-- | Select only placement groups with these pricing types.
data PlacementGroupsListPricingTypes
    = PGLPTPricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | PGLPTPricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | PGLPTPricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | PGLPTPricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | PGLPTPricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupsListPricingTypes

instance FromText PlacementGroupsListPricingTypes where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just PGLPTPricingTypeCpa
        "PRICING_TYPE_CPC" -> Just PGLPTPricingTypeCpc
        "PRICING_TYPE_CPM" -> Just PGLPTPricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PGLPTPricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PGLPTPricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText PlacementGroupsListPricingTypes where
    toText = \case
        PGLPTPricingTypeCpa -> "PRICING_TYPE_CPA"
        PGLPTPricingTypeCpc -> "PRICING_TYPE_CPC"
        PGLPTPricingTypeCpm -> "PRICING_TYPE_CPM"
        PGLPTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PGLPTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON PlacementGroupsListPricingTypes where
    parseJSON = parseJSONText "PlacementGroupsListPricingTypes"

instance ToJSON PlacementGroupsListPricingTypes where
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

-- | Order of sorted results, default is ASCENDING.
data AccountsListSortOrder
    = AAscending
      -- ^ @ASCENDING@
    | ADescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountsListSortOrder

instance FromText AccountsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just AAscending
        "DESCENDING" -> Just ADescending
        _ -> Nothing

instance ToText AccountsListSortOrder where
    toText = \case
        AAscending -> "ASCENDING"
        ADescending -> "DESCENDING"

instance FromJSON AccountsListSortOrder where
    parseJSON = parseJSONText "AccountsListSortOrder"

instance ToJSON AccountsListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data SubAccountsListSortField
    = SALSFID
      -- ^ @ID@
    | SALSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubAccountsListSortField

instance FromText SubAccountsListSortField where
    fromText = \case
        "ID" -> Just SALSFID
        "NAME" -> Just SALSFName
        _ -> Nothing

instance ToText SubAccountsListSortField where
    toText = \case
        SALSFID -> "ID"
        SALSFName -> "NAME"

instance FromJSON SubAccountsListSortField where
    parseJSON = parseJSONText "SubAccountsListSortField"

instance ToJSON SubAccountsListSortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AdsListSortField
    = ALSFID
      -- ^ @ID@
    | ALSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdsListSortField

instance FromText AdsListSortField where
    fromText = \case
        "ID" -> Just ALSFID
        "NAME" -> Just ALSFName
        _ -> Nothing

instance ToText AdsListSortField where
    toText = \case
        ALSFID -> "ID"
        ALSFName -> "NAME"

instance FromJSON AdsListSortField where
    parseJSON = parseJSONText "AdsListSortField"

instance ToJSON AdsListSortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data ProjectsListSortField
    = PID
      -- ^ @ID@
    | PName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProjectsListSortField

instance FromText ProjectsListSortField where
    fromText = \case
        "ID" -> Just PID
        "NAME" -> Just PName
        _ -> Nothing

instance ToText ProjectsListSortField where
    toText = \case
        PID -> "ID"
        PName -> "NAME"

instance FromJSON ProjectsListSortField where
    parseJSON = parseJSONText "ProjectsListSortField"

instance ToJSON ProjectsListSortField where
    toJSON = toJSONText

-- | Select only ads with these types.
data AdsListType
    = AdServingClickTracker
      -- ^ @AD_SERVING_CLICK_TRACKER@
    | AdServingDefaultAd
      -- ^ @AD_SERVING_DEFAULT_AD@
    | AdServingStandardAd
      -- ^ @AD_SERVING_STANDARD_AD@
    | AdServingTracking
      -- ^ @AD_SERVING_TRACKING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdsListType

instance FromText AdsListType where
    fromText = \case
        "AD_SERVING_CLICK_TRACKER" -> Just AdServingClickTracker
        "AD_SERVING_DEFAULT_AD" -> Just AdServingDefaultAd
        "AD_SERVING_STANDARD_AD" -> Just AdServingStandardAd
        "AD_SERVING_TRACKING" -> Just AdServingTracking
        _ -> Nothing

instance ToText AdsListType where
    toText = \case
        AdServingClickTracker -> "AD_SERVING_CLICK_TRACKER"
        AdServingDefaultAd -> "AD_SERVING_DEFAULT_AD"
        AdServingStandardAd -> "AD_SERVING_STANDARD_AD"
        AdServingTracking -> "AD_SERVING_TRACKING"

instance FromJSON AdsListType where
    parseJSON = parseJSONText "AdsListType"

instance ToJSON AdsListType where
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
data AdvertiserGroupsListSortOrder
    = AGLSOAscending
      -- ^ @ASCENDING@
    | AGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertiserGroupsListSortOrder

instance FromText AdvertiserGroupsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just AGLSOAscending
        "DESCENDING" -> Just AGLSODescending
        _ -> Nothing

instance ToText AdvertiserGroupsListSortOrder where
    toText = \case
        AGLSOAscending -> "ASCENDING"
        AGLSODescending -> "DESCENDING"

instance FromJSON AdvertiserGroupsListSortOrder where
    parseJSON = parseJSONText "AdvertiserGroupsListSortOrder"

instance ToJSON AdvertiserGroupsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data CreativeFieldValuesListSortOrder
    = CFVLSOAscending
      -- ^ @ASCENDING@
    | CFVLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeFieldValuesListSortOrder

instance FromText CreativeFieldValuesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just CFVLSOAscending
        "DESCENDING" -> Just CFVLSODescending
        _ -> Nothing

instance ToText CreativeFieldValuesListSortOrder where
    toText = \case
        CFVLSOAscending -> "ASCENDING"
        CFVLSODescending -> "DESCENDING"

instance FromJSON CreativeFieldValuesListSortOrder where
    parseJSON = parseJSONText "CreativeFieldValuesListSortOrder"

instance ToJSON CreativeFieldValuesListSortOrder where
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

-- | The field by which to sort the list.
data FilesListSortField
    = FLSFID
      -- ^ @ID@
      -- Sort by file ID.
    | FLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastmodifiedAt\' field.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesListSortField

instance FromText FilesListSortField where
    fromText = \case
        "ID" -> Just FLSFID
        "LAST_MODIFIED_TIME" -> Just FLSFLastModifiedTime
        _ -> Nothing

instance ToText FilesListSortField where
    toText = \case
        FLSFID -> "ID"
        FLSFLastModifiedTime -> "LAST_MODIFIED_TIME"

instance FromJSON FilesListSortField where
    parseJSON = parseJSONText "FilesListSortField"

instance ToJSON FilesListSortField where
    toJSON = toJSONText

data DirectorySiteInterstitialTagFormatsItem
    = IframeJavascriptInterstitial
      -- ^ @IFRAME_JAVASCRIPT_INTERSTITIAL@
    | InternalRedirectInterstitial
      -- ^ @INTERNAL_REDIRECT_INTERSTITIAL@
    | JavascriptInterstitial
      -- ^ @JAVASCRIPT_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteInterstitialTagFormatsItem

instance FromText DirectorySiteInterstitialTagFormatsItem where
    fromText = \case
        "IFRAME_JAVASCRIPT_INTERSTITIAL" -> Just IframeJavascriptInterstitial
        "INTERNAL_REDIRECT_INTERSTITIAL" -> Just InternalRedirectInterstitial
        "JAVASCRIPT_INTERSTITIAL" -> Just JavascriptInterstitial
        _ -> Nothing

instance ToText DirectorySiteInterstitialTagFormatsItem where
    toText = \case
        IframeJavascriptInterstitial -> "IFRAME_JAVASCRIPT_INTERSTITIAL"
        InternalRedirectInterstitial -> "INTERNAL_REDIRECT_INTERSTITIAL"
        JavascriptInterstitial -> "JAVASCRIPT_INTERSTITIAL"

instance FromJSON DirectorySiteInterstitialTagFormatsItem where
    parseJSON = parseJSONText "DirectorySiteInterstitialTagFormatsItem"

instance ToJSON DirectorySiteInterstitialTagFormatsItem where
    toJSON = toJSONText

-- | Field by which to sort the list.
data EventTagsListSortField
    = ETLSFID
      -- ^ @ID@
    | ETLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagsListSortField

instance FromText EventTagsListSortField where
    fromText = \case
        "ID" -> Just ETLSFID
        "NAME" -> Just ETLSFName
        _ -> Nothing

instance ToText EventTagsListSortField where
    toText = \case
        ETLSFID -> "ID"
        ETLSFName -> "NAME"

instance FromJSON EventTagsListSortField where
    parseJSON = parseJSONText "EventTagsListSortField"

instance ToJSON EventTagsListSortField where
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

-- | Order of sorted results, default is ASCENDING.
data DirectorySiteContactsListSortOrder
    = DSCLSOAscending
      -- ^ @ASCENDING@
    | DSCLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactsListSortOrder

instance FromText DirectorySiteContactsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DSCLSOAscending
        "DESCENDING" -> Just DSCLSODescending
        _ -> Nothing

instance ToText DirectorySiteContactsListSortOrder where
    toText = \case
        DSCLSOAscending -> "ASCENDING"
        DSCLSODescending -> "DESCENDING"

instance FromJSON DirectorySiteContactsListSortOrder where
    parseJSON = parseJSONText "DirectorySiteContactsListSortOrder"

instance ToJSON DirectorySiteContactsListSortOrder where
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

-- | Select only ads with the specified creativeType.
data AdsListCreativeType
    = ALCTBrandSafeDefaultInstreamVideo
      -- ^ @BRAND_SAFE_DEFAULT_INSTREAM_VIDEO@
    | ALCTCustomInpage
      -- ^ @CUSTOM_INPAGE@
    | ALCTCustomInterstitial
      -- ^ @CUSTOM_INTERSTITIAL@
    | ALCTEnhancedBanner
      -- ^ @ENHANCED_BANNER@
    | ALCTEnhancedImage
      -- ^ @ENHANCED_IMAGE@
    | ALCTFlashInpage
      -- ^ @FLASH_INPAGE@
    | ALCTHTML5Banner
      -- ^ @HTML5_BANNER@
    | ALCTImage
      -- ^ @IMAGE@
    | ALCTInstreamVideo
      -- ^ @INSTREAM_VIDEO@
    | ALCTInternalRedirect
      -- ^ @INTERNAL_REDIRECT@
    | ALCTInterstitialInternalRedirect
      -- ^ @INTERSTITIAL_INTERNAL_REDIRECT@
    | ALCTRedirect
      -- ^ @REDIRECT@
    | ALCTRichMediaExpanding
      -- ^ @RICH_MEDIA_EXPANDING@
    | ALCTRichMediaImExpand
      -- ^ @RICH_MEDIA_IM_EXPAND@
    | ALCTRichMediaInpage
      -- ^ @RICH_MEDIA_INPAGE@
    | ALCTRichMediaInpageFloating
      -- ^ @RICH_MEDIA_INPAGE_FLOATING@
    | ALCTRichMediaInterstitialFloat
      -- ^ @RICH_MEDIA_INTERSTITIAL_FLOAT@
    | ALCTRichMediaMobileInApp
      -- ^ @RICH_MEDIA_MOBILE_IN_APP@
    | ALCTRichMediaMultiFloating
      -- ^ @RICH_MEDIA_MULTI_FLOATING@
    | ALCTRichMediaPeelDown
      -- ^ @RICH_MEDIA_PEEL_DOWN@
    | ALCTTrackingText
      -- ^ @TRACKING_TEXT@
    | ALCTVastRedirect
      -- ^ @VAST_REDIRECT@
    | ALCTVpaidLinear
      -- ^ @VPAID_LINEAR@
    | ALCTVpaidNonLinear
      -- ^ @VPAID_NON_LINEAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdsListCreativeType

instance FromText AdsListCreativeType where
    fromText = \case
        "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO" -> Just ALCTBrandSafeDefaultInstreamVideo
        "CUSTOM_INPAGE" -> Just ALCTCustomInpage
        "CUSTOM_INTERSTITIAL" -> Just ALCTCustomInterstitial
        "ENHANCED_BANNER" -> Just ALCTEnhancedBanner
        "ENHANCED_IMAGE" -> Just ALCTEnhancedImage
        "FLASH_INPAGE" -> Just ALCTFlashInpage
        "HTML5_BANNER" -> Just ALCTHTML5Banner
        "IMAGE" -> Just ALCTImage
        "INSTREAM_VIDEO" -> Just ALCTInstreamVideo
        "INTERNAL_REDIRECT" -> Just ALCTInternalRedirect
        "INTERSTITIAL_INTERNAL_REDIRECT" -> Just ALCTInterstitialInternalRedirect
        "REDIRECT" -> Just ALCTRedirect
        "RICH_MEDIA_EXPANDING" -> Just ALCTRichMediaExpanding
        "RICH_MEDIA_IM_EXPAND" -> Just ALCTRichMediaImExpand
        "RICH_MEDIA_INPAGE" -> Just ALCTRichMediaInpage
        "RICH_MEDIA_INPAGE_FLOATING" -> Just ALCTRichMediaInpageFloating
        "RICH_MEDIA_INTERSTITIAL_FLOAT" -> Just ALCTRichMediaInterstitialFloat
        "RICH_MEDIA_MOBILE_IN_APP" -> Just ALCTRichMediaMobileInApp
        "RICH_MEDIA_MULTI_FLOATING" -> Just ALCTRichMediaMultiFloating
        "RICH_MEDIA_PEEL_DOWN" -> Just ALCTRichMediaPeelDown
        "TRACKING_TEXT" -> Just ALCTTrackingText
        "VAST_REDIRECT" -> Just ALCTVastRedirect
        "VPAID_LINEAR" -> Just ALCTVpaidLinear
        "VPAID_NON_LINEAR" -> Just ALCTVpaidNonLinear
        _ -> Nothing

instance ToText AdsListCreativeType where
    toText = \case
        ALCTBrandSafeDefaultInstreamVideo -> "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
        ALCTCustomInpage -> "CUSTOM_INPAGE"
        ALCTCustomInterstitial -> "CUSTOM_INTERSTITIAL"
        ALCTEnhancedBanner -> "ENHANCED_BANNER"
        ALCTEnhancedImage -> "ENHANCED_IMAGE"
        ALCTFlashInpage -> "FLASH_INPAGE"
        ALCTHTML5Banner -> "HTML5_BANNER"
        ALCTImage -> "IMAGE"
        ALCTInstreamVideo -> "INSTREAM_VIDEO"
        ALCTInternalRedirect -> "INTERNAL_REDIRECT"
        ALCTInterstitialInternalRedirect -> "INTERSTITIAL_INTERNAL_REDIRECT"
        ALCTRedirect -> "REDIRECT"
        ALCTRichMediaExpanding -> "RICH_MEDIA_EXPANDING"
        ALCTRichMediaImExpand -> "RICH_MEDIA_IM_EXPAND"
        ALCTRichMediaInpage -> "RICH_MEDIA_INPAGE"
        ALCTRichMediaInpageFloating -> "RICH_MEDIA_INPAGE_FLOATING"
        ALCTRichMediaInterstitialFloat -> "RICH_MEDIA_INTERSTITIAL_FLOAT"
        ALCTRichMediaMobileInApp -> "RICH_MEDIA_MOBILE_IN_APP"
        ALCTRichMediaMultiFloating -> "RICH_MEDIA_MULTI_FLOATING"
        ALCTRichMediaPeelDown -> "RICH_MEDIA_PEEL_DOWN"
        ALCTTrackingText -> "TRACKING_TEXT"
        ALCTVastRedirect -> "VAST_REDIRECT"
        ALCTVpaidLinear -> "VPAID_LINEAR"
        ALCTVpaidNonLinear -> "VPAID_NON_LINEAR"

instance FromJSON AdsListCreativeType where
    parseJSON = parseJSONText "AdsListCreativeType"

instance ToJSON AdsListCreativeType where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data FloodlightActivityGroupsListSortOrder
    = FAGLSOAscending
      -- ^ @ASCENDING@
    | FAGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupsListSortOrder

instance FromText FloodlightActivityGroupsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just FAGLSOAscending
        "DESCENDING" -> Just FAGLSODescending
        _ -> Nothing

instance ToText FloodlightActivityGroupsListSortOrder where
    toText = \case
        FAGLSOAscending -> "ASCENDING"
        FAGLSODescending -> "DESCENDING"

instance FromJSON FloodlightActivityGroupsListSortOrder where
    parseJSON = parseJSONText "FloodlightActivityGroupsListSortOrder"

instance ToJSON FloodlightActivityGroupsListSortOrder where
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

-- | Field by which to sort the list.
data OrdersListSortField
    = OLSFID
      -- ^ @ID@
    | OLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrdersListSortField

instance FromText OrdersListSortField where
    fromText = \case
        "ID" -> Just OLSFID
        "NAME" -> Just OLSFName
        _ -> Nothing

instance ToText OrdersListSortField where
    toText = \case
        OLSFID -> "ID"
        OLSFName -> "NAME"

instance FromJSON OrdersListSortField where
    parseJSON = parseJSONText "OrdersListSortField"

instance ToJSON OrdersListSortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data PlacementGroupsListSortField
    = PGLSFID
      -- ^ @ID@
    | PGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupsListSortField

instance FromText PlacementGroupsListSortField where
    fromText = \case
        "ID" -> Just PGLSFID
        "NAME" -> Just PGLSFName
        _ -> Nothing

instance ToText PlacementGroupsListSortField where
    toText = \case
        PGLSFID -> "ID"
        PGLSFName -> "NAME"

instance FromJSON PlacementGroupsListSortField where
    parseJSON = parseJSONText "PlacementGroupsListSortField"

instance ToJSON PlacementGroupsListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DirectorySitesListSortOrder
    = DSLSOAscending
      -- ^ @ASCENDING@
    | DSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySitesListSortOrder

instance FromText DirectorySitesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DSLSOAscending
        "DESCENDING" -> Just DSLSODescending
        _ -> Nothing

instance ToText DirectorySitesListSortOrder where
    toText = \case
        DSLSOAscending -> "ASCENDING"
        DSLSODescending -> "DESCENDING"

instance FromJSON DirectorySitesListSortOrder where
    parseJSON = parseJSONText "DirectorySitesListSortOrder"

instance ToJSON DirectorySitesListSortOrder where
    toJSON = toJSONText

data CreativeAssetDetectedFeaturesItem
    = CADFIApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CADFIAudio
      -- ^ @AUDIO@
    | CADFICanvas
      -- ^ @CANVAS@
    | CADFICanvasText
      -- ^ @CANVAS_TEXT@
    | CADFICssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CADFICssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CADFICssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CADFICssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CADFICssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CADFICssColumns
      -- ^ @CSS_COLUMNS@
    | CADFICssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CADFICssFontFace
      -- ^ @CSS_FONT_FACE@
    | CADFICssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CADFICssGradients
      -- ^ @CSS_GRADIENTS@
    | CADFICssHsla
      -- ^ @CSS_HSLA@
    | CADFICssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CADFICssOpacity
      -- ^ @CSS_OPACITY@
    | CADFICssReflections
      -- ^ @CSS_REFLECTIONS@
    | CADFICssRgba
      -- ^ @CSS_RGBA@
    | CADFICssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CADFICssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CADFICssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CADFICssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CADFIDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CADFIGeoLocation
      -- ^ @GEO_LOCATION@
    | CADFIHashChange
      -- ^ @HASH_CHANGE@
    | CADFIHistory
      -- ^ @HISTORY@
    | CADFIIndexedDB
      -- ^ @INDEXED_DB@
    | CADFIInlineSvg
      -- ^ @INLINE_SVG@
    | CADFIInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CADFIInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CADFIInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CADFIInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CADFIInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CADFIInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CADFIInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CADFIInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CADFIInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CADFIInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CADFIInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CADFIInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CADFIInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CADFIInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CADFIInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CADFIInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CADFIInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CADFIInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CADFIInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CADFIInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CADFIInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CADFIInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CADFIInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CADFILocalStorage
      -- ^ @LOCAL_STORAGE@
    | CADFIPostMessage
      -- ^ @POST_MESSAGE@
    | CADFISessionStorage
      -- ^ @SESSION_STORAGE@
    | CADFISmil
      -- ^ @SMIL@
    | CADFISvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CADFISvgFeImage
      -- ^ @SVG_FE_IMAGE@
    | CADFISvgFilters
      -- ^ @SVG_FILTERS@
    | CADFISvgHref
      -- ^ @SVG_HREF@
    | CADFITouch
      -- ^ @TOUCH@
    | CADFIVideo
      -- ^ @VIDEO@
    | CADFIWebgl
      -- ^ @WEBGL@
    | CADFIWebSockets
      -- ^ @WEB_SOCKETS@
    | CADFIWebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CADFIWebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetDetectedFeaturesItem

instance FromText CreativeAssetDetectedFeaturesItem where
    fromText = \case
        "APPLICATION_CACHE" -> Just CADFIApplicationCache
        "AUDIO" -> Just CADFIAudio
        "CANVAS" -> Just CADFICanvas
        "CANVAS_TEXT" -> Just CADFICanvasText
        "CSS_ANIMATIONS" -> Just CADFICssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CADFICssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Just CADFICssBOrderImage
        "CSS_BORDER_RADIUS" -> Just CADFICssBOrderRadius
        "CSS_BOX_SHADOW" -> Just CADFICssBoxShadow
        "CSS_COLUMNS" -> Just CADFICssColumns
        "CSS_FLEX_BOX" -> Just CADFICssFlexBox
        "CSS_FONT_FACE" -> Just CADFICssFontFace
        "CSS_GENERATED_CONTENT" -> Just CADFICssGeneratedContent
        "CSS_GRADIENTS" -> Just CADFICssGradients
        "CSS_HSLA" -> Just CADFICssHsla
        "CSS_MULTIPLE_BGS" -> Just CADFICssMultipleBgs
        "CSS_OPACITY" -> Just CADFICssOpacity
        "CSS_REFLECTIONS" -> Just CADFICssReflections
        "CSS_RGBA" -> Just CADFICssRgba
        "CSS_TEXT_SHADOW" -> Just CADFICssTextShadow
        "CSS_TRANSFORMS" -> Just CADFICssTransforms
        "CSS_TRANSFORMS3D" -> Just CADFICssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Just CADFICssTransitions
        "DRAG_AND_DROP" -> Just CADFIDragAndDrop
        "GEO_LOCATION" -> Just CADFIGeoLocation
        "HASH_CHANGE" -> Just CADFIHashChange
        "HISTORY" -> Just CADFIHistory
        "INDEXED_DB" -> Just CADFIIndexedDB
        "INLINE_SVG" -> Just CADFIInlineSvg
        "INPUT_ATTR_AUTOCOMPLETE" -> Just CADFIInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Just CADFIInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Just CADFIInputAttrList
        "INPUT_ATTR_MAX" -> Just CADFIInputAttrMax
        "INPUT_ATTR_MIN" -> Just CADFIInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Just CADFIInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Just CADFIInputAttrPattern
        "INPUT_ATTR_PLACEHOLDER" -> Just CADFIInputAttrPlaceholder
        "INPUT_ATTR_REQUIRED" -> Just CADFIInputAttrRequired
        "INPUT_ATTR_STEP" -> Just CADFIInputAttrStep
        "INPUT_TYPE_COLOR" -> Just CADFIInputTypeColor
        "INPUT_TYPE_DATE" -> Just CADFIInputTypeDate
        "INPUT_TYPE_DATETIME" -> Just CADFIInputTypeDatetime
        "INPUT_TYPE_DATETIME_LOCAL" -> Just CADFIInputTypeDatetimeLocal
        "INPUT_TYPE_EMAIL" -> Just CADFIInputTypeEmail
        "INPUT_TYPE_MONTH" -> Just CADFIInputTypeMonth
        "INPUT_TYPE_NUMBER" -> Just CADFIInputTypeNumber
        "INPUT_TYPE_RANGE" -> Just CADFIInputTypeRange
        "INPUT_TYPE_SEARCH" -> Just CADFIInputTypeSearch
        "INPUT_TYPE_TEL" -> Just CADFIInputTypeTel
        "INPUT_TYPE_TIME" -> Just CADFIInputTypeTime
        "INPUT_TYPE_URL" -> Just CADFIInputTypeURL
        "INPUT_TYPE_WEEK" -> Just CADFIInputTypeWeek
        "LOCAL_STORAGE" -> Just CADFILocalStorage
        "POST_MESSAGE" -> Just CADFIPostMessage
        "SESSION_STORAGE" -> Just CADFISessionStorage
        "SMIL" -> Just CADFISmil
        "SVG_CLIP_PATHS" -> Just CADFISvgClipPaths
        "SVG_FE_IMAGE" -> Just CADFISvgFeImage
        "SVG_FILTERS" -> Just CADFISvgFilters
        "SVG_HREF" -> Just CADFISvgHref
        "TOUCH" -> Just CADFITouch
        "VIDEO" -> Just CADFIVideo
        "WEBGL" -> Just CADFIWebgl
        "WEB_SOCKETS" -> Just CADFIWebSockets
        "WEB_SQL_DATABASE" -> Just CADFIWebSQLDatabase
        "WEB_WORKERS" -> Just CADFIWebWorkers
        _ -> Nothing

instance ToText CreativeAssetDetectedFeaturesItem where
    toText = \case
        CADFIApplicationCache -> "APPLICATION_CACHE"
        CADFIAudio -> "AUDIO"
        CADFICanvas -> "CANVAS"
        CADFICanvasText -> "CANVAS_TEXT"
        CADFICssAnimations -> "CSS_ANIMATIONS"
        CADFICssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CADFICssBOrderImage -> "CSS_BORDER_IMAGE"
        CADFICssBOrderRadius -> "CSS_BORDER_RADIUS"
        CADFICssBoxShadow -> "CSS_BOX_SHADOW"
        CADFICssColumns -> "CSS_COLUMNS"
        CADFICssFlexBox -> "CSS_FLEX_BOX"
        CADFICssFontFace -> "CSS_FONT_FACE"
        CADFICssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CADFICssGradients -> "CSS_GRADIENTS"
        CADFICssHsla -> "CSS_HSLA"
        CADFICssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CADFICssOpacity -> "CSS_OPACITY"
        CADFICssReflections -> "CSS_REFLECTIONS"
        CADFICssRgba -> "CSS_RGBA"
        CADFICssTextShadow -> "CSS_TEXT_SHADOW"
        CADFICssTransforms -> "CSS_TRANSFORMS"
        CADFICssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CADFICssTransitions -> "CSS_TRANSITIONS"
        CADFIDragAndDrop -> "DRAG_AND_DROP"
        CADFIGeoLocation -> "GEO_LOCATION"
        CADFIHashChange -> "HASH_CHANGE"
        CADFIHistory -> "HISTORY"
        CADFIIndexedDB -> "INDEXED_DB"
        CADFIInlineSvg -> "INLINE_SVG"
        CADFIInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CADFIInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CADFIInputAttrList -> "INPUT_ATTR_LIST"
        CADFIInputAttrMax -> "INPUT_ATTR_MAX"
        CADFIInputAttrMin -> "INPUT_ATTR_MIN"
        CADFIInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CADFIInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CADFIInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CADFIInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CADFIInputAttrStep -> "INPUT_ATTR_STEP"
        CADFIInputTypeColor -> "INPUT_TYPE_COLOR"
        CADFIInputTypeDate -> "INPUT_TYPE_DATE"
        CADFIInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CADFIInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CADFIInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CADFIInputTypeMonth -> "INPUT_TYPE_MONTH"
        CADFIInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CADFIInputTypeRange -> "INPUT_TYPE_RANGE"
        CADFIInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CADFIInputTypeTel -> "INPUT_TYPE_TEL"
        CADFIInputTypeTime -> "INPUT_TYPE_TIME"
        CADFIInputTypeURL -> "INPUT_TYPE_URL"
        CADFIInputTypeWeek -> "INPUT_TYPE_WEEK"
        CADFILocalStorage -> "LOCAL_STORAGE"
        CADFIPostMessage -> "POST_MESSAGE"
        CADFISessionStorage -> "SESSION_STORAGE"
        CADFISmil -> "SMIL"
        CADFISvgClipPaths -> "SVG_CLIP_PATHS"
        CADFISvgFeImage -> "SVG_FE_IMAGE"
        CADFISvgFilters -> "SVG_FILTERS"
        CADFISvgHref -> "SVG_HREF"
        CADFITouch -> "TOUCH"
        CADFIVideo -> "VIDEO"
        CADFIWebgl -> "WEBGL"
        CADFIWebSockets -> "WEB_SOCKETS"
        CADFIWebSQLDatabase -> "WEB_SQL_DATABASE"
        CADFIWebWorkers -> "WEB_WORKERS"

instance FromJSON CreativeAssetDetectedFeaturesItem where
    parseJSON = parseJSONText "CreativeAssetDetectedFeaturesItem"

instance ToJSON CreativeAssetDetectedFeaturesItem where
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

-- | Tag formats to generate for these placements.
data PlacementsGeneratetagsTagFormats
    = PGTFPlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | PGTFPlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | PGTFPlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | PGTFPlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | PGTFPlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | PGTFPlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | PGTFPlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | PGTFPlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | PGTFPlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | PGTFPlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | PGTFPlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | PGTFPlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | PGTFPlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | PGTFPlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | PGTFPlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | PGTFPlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | PGTFPlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | PGTFPlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsGeneratetagsTagFormats

instance FromText PlacementsGeneratetagsTagFormats where
    fromText = \case
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Just PGTFPlacementTagClickCommands
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Just PGTFPlacementTagIframeIlayer
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Just PGTFPlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Just PGTFPlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Just PGTFPlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Just PGTFPlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Just PGTFPlacementTagInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Just PGTFPlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Just PGTFPlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Just PGTFPlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Just PGTFPlacementTagInterstitialJavascript
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Just PGTFPlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT" -> Just PGTFPlacementTagJavascript
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Just PGTFPlacementTagJavascriptLegacy
        "PLACEMENT_TAG_STANDARD" -> Just PGTFPlacementTagStandard
        "PLACEMENT_TAG_TRACKING" -> Just PGTFPlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Just PGTFPlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Just PGTFPlacementTagTrackingJavascript
        _ -> Nothing

instance ToText PlacementsGeneratetagsTagFormats where
    toText = \case
        PGTFPlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        PGTFPlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        PGTFPlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        PGTFPlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        PGTFPlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        PGTFPlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        PGTFPlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        PGTFPlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        PGTFPlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        PGTFPlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        PGTFPlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        PGTFPlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        PGTFPlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        PGTFPlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        PGTFPlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        PGTFPlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        PGTFPlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        PGTFPlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"

instance FromJSON PlacementsGeneratetagsTagFormats where
    parseJSON = parseJSONText "PlacementsGeneratetagsTagFormats"

instance ToJSON PlacementsGeneratetagsTagFormats where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AccountUserProFilesListSortField
    = AUPFLSFID
      -- ^ @ID@
    | AUPFLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProFilesListSortField

instance FromText AccountUserProFilesListSortField where
    fromText = \case
        "ID" -> Just AUPFLSFID
        "NAME" -> Just AUPFLSFName
        _ -> Nothing

instance ToText AccountUserProFilesListSortField where
    toText = \case
        AUPFLSFID -> "ID"
        AUPFLSFName -> "NAME"

instance FromJSON AccountUserProFilesListSortField where
    parseJSON = parseJSONText "AccountUserProFilesListSortField"

instance ToJSON AccountUserProFilesListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data InventoryItemsListSortOrder
    = IILSOAscending
      -- ^ @ASCENDING@
    | IILSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InventoryItemsListSortOrder

instance FromText InventoryItemsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just IILSOAscending
        "DESCENDING" -> Just IILSODescending
        _ -> Nothing

instance ToText InventoryItemsListSortOrder where
    toText = \case
        IILSOAscending -> "ASCENDING"
        IILSODescending -> "DESCENDING"

instance FromJSON InventoryItemsListSortOrder where
    parseJSON = parseJSONText "InventoryItemsListSortOrder"

instance ToJSON InventoryItemsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data PlacementStrategiesListSortOrder
    = PSLSOAscending
      -- ^ @ASCENDING@
    | PSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementStrategiesListSortOrder

instance FromText PlacementStrategiesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just PSLSOAscending
        "DESCENDING" -> Just PSLSODescending
        _ -> Nothing

instance ToText PlacementStrategiesListSortOrder where
    toText = \case
        PSLSOAscending -> "ASCENDING"
        PSLSODescending -> "DESCENDING"

instance FromJSON PlacementStrategiesListSortOrder where
    parseJSON = parseJSONText "PlacementStrategiesListSortOrder"

instance ToJSON PlacementStrategiesListSortOrder where
    toJSON = toJSONText

-- | The field by which to sort the list.
data ReportsFilesListSortField
    = RFLSFID
      -- ^ @ID@
      -- Sort by file ID.
    | RFLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastmodifiedAt\' field.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsFilesListSortField

instance FromText ReportsFilesListSortField where
    fromText = \case
        "ID" -> Just RFLSFID
        "LAST_MODIFIED_TIME" -> Just RFLSFLastModifiedTime
        _ -> Nothing

instance ToText ReportsFilesListSortField where
    toText = \case
        RFLSFID -> "ID"
        RFLSFLastModifiedTime -> "LAST_MODIFIED_TIME"

instance FromJSON ReportsFilesListSortField where
    parseJSON = parseJSONText "ReportsFilesListSortField"

instance ToJSON ReportsFilesListSortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data CreativesListSortField
    = CID
      -- ^ @ID@
    | CName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesListSortField

instance FromText CreativesListSortField where
    fromText = \case
        "ID" -> Just CID
        "NAME" -> Just CName
        _ -> Nothing

instance ToText CreativesListSortField where
    toText = \case
        CID -> "ID"
        CName -> "NAME"

instance FromJSON CreativesListSortField where
    parseJSON = parseJSONText "CreativesListSortField"

instance ToJSON CreativesListSortField where
    toJSON = toJSONText

data DayPartTargetingDaysOfWeekItem
    = DPTDOWIFriday
      -- ^ @FRIDAY@
    | DPTDOWIMonday
      -- ^ @MONDAY@
    | DPTDOWISaturday
      -- ^ @SATURDAY@
    | DPTDOWISunday
      -- ^ @SUNDAY@
    | DPTDOWIThursday
      -- ^ @THURSDAY@
    | DPTDOWITuesday
      -- ^ @TUESDAY@
    | DPTDOWIWednesday
      -- ^ @WEDNESDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DayPartTargetingDaysOfWeekItem

instance FromText DayPartTargetingDaysOfWeekItem where
    fromText = \case
        "FRIDAY" -> Just DPTDOWIFriday
        "MONDAY" -> Just DPTDOWIMonday
        "SATURDAY" -> Just DPTDOWISaturday
        "SUNDAY" -> Just DPTDOWISunday
        "THURSDAY" -> Just DPTDOWIThursday
        "TUESDAY" -> Just DPTDOWITuesday
        "WEDNESDAY" -> Just DPTDOWIWednesday
        _ -> Nothing

instance ToText DayPartTargetingDaysOfWeekItem where
    toText = \case
        DPTDOWIFriday -> "FRIDAY"
        DPTDOWIMonday -> "MONDAY"
        DPTDOWISaturday -> "SATURDAY"
        DPTDOWISunday -> "SUNDAY"
        DPTDOWIThursday -> "THURSDAY"
        DPTDOWITuesday -> "TUESDAY"
        DPTDOWIWednesday -> "WEDNESDAY"

instance FromJSON DayPartTargetingDaysOfWeekItem where
    parseJSON = parseJSONText "DayPartTargetingDaysOfWeekItem"

instance ToJSON DayPartTargetingDaysOfWeekItem where
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

-- | The scope that defines which results are returned, default is \'MINE\'.
data FilesListScope
    = FLSAll
      -- ^ @ALL@
      -- All files in account.
    | FLSMine
      -- ^ @MINE@
      -- My files.
    | FLSSharedWithMe
      -- ^ @SHARED_WITH_ME@
      -- Files shared with me.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesListScope

instance FromText FilesListScope where
    fromText = \case
        "ALL" -> Just FLSAll
        "MINE" -> Just FLSMine
        "SHARED_WITH_ME" -> Just FLSSharedWithMe
        _ -> Nothing

instance ToText FilesListScope where
    toText = \case
        FLSAll -> "ALL"
        FLSMine -> "MINE"
        FLSSharedWithMe -> "SHARED_WITH_ME"

instance FromJSON FilesListScope where
    parseJSON = parseJSONText "FilesListScope"

instance ToJSON FilesListScope where
    toJSON = toJSONText

-- | Field by which to sort the list.
data ContentCategoriesListSortField
    = CCLSFID
      -- ^ @ID@
    | CCLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentCategoriesListSortField

instance FromText ContentCategoriesListSortField where
    fromText = \case
        "ID" -> Just CCLSFID
        "NAME" -> Just CCLSFName
        _ -> Nothing

instance ToText ContentCategoriesListSortField where
    toText = \case
        CCLSFID -> "ID"
        CCLSFName -> "NAME"

instance FromJSON ContentCategoriesListSortField where
    parseJSON = parseJSONText "ContentCategoriesListSortField"

instance ToJSON ContentCategoriesListSortField where
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

instance FromJSON AdType where
    parseJSON = parseJSONText "AdType"

instance ToJSON AdType where
    toJSON = toJSONText

-- | Select only change logs with the specified action.
data ChangeLogsListAction
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

instance Hashable ChangeLogsListAction

instance FromText ChangeLogsListAction where
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

instance ToText ChangeLogsListAction where
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

instance FromJSON ChangeLogsListAction where
    parseJSON = parseJSONText "ChangeLogsListAction"

instance ToJSON ChangeLogsListAction where
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

data FloodlightActivityUserDefinedVariableTypesItem
    = FAUDVTIU1
      -- ^ @U1@
    | FAUDVTIU10
      -- ^ @U10@
    | FAUDVTIU11
      -- ^ @U11@
    | FAUDVTIU12
      -- ^ @U12@
    | FAUDVTIU13
      -- ^ @U13@
    | FAUDVTIU14
      -- ^ @U14@
    | FAUDVTIU15
      -- ^ @U15@
    | FAUDVTIU16
      -- ^ @U16@
    | FAUDVTIU17
      -- ^ @U17@
    | FAUDVTIU18
      -- ^ @U18@
    | FAUDVTIU19
      -- ^ @U19@
    | FAUDVTIU2
      -- ^ @U2@
    | FAUDVTIU20
      -- ^ @U20@
    | FAUDVTIU3
      -- ^ @U3@
    | FAUDVTIU4
      -- ^ @U4@
    | FAUDVTIU5
      -- ^ @U5@
    | FAUDVTIU6
      -- ^ @U6@
    | FAUDVTIU7
      -- ^ @U7@
    | FAUDVTIU8
      -- ^ @U8@
    | FAUDVTIU9
      -- ^ @U9@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityUserDefinedVariableTypesItem

instance FromText FloodlightActivityUserDefinedVariableTypesItem where
    fromText = \case
        "U1" -> Just FAUDVTIU1
        "U10" -> Just FAUDVTIU10
        "U11" -> Just FAUDVTIU11
        "U12" -> Just FAUDVTIU12
        "U13" -> Just FAUDVTIU13
        "U14" -> Just FAUDVTIU14
        "U15" -> Just FAUDVTIU15
        "U16" -> Just FAUDVTIU16
        "U17" -> Just FAUDVTIU17
        "U18" -> Just FAUDVTIU18
        "U19" -> Just FAUDVTIU19
        "U2" -> Just FAUDVTIU2
        "U20" -> Just FAUDVTIU20
        "U3" -> Just FAUDVTIU3
        "U4" -> Just FAUDVTIU4
        "U5" -> Just FAUDVTIU5
        "U6" -> Just FAUDVTIU6
        "U7" -> Just FAUDVTIU7
        "U8" -> Just FAUDVTIU8
        "U9" -> Just FAUDVTIU9
        _ -> Nothing

instance ToText FloodlightActivityUserDefinedVariableTypesItem where
    toText = \case
        FAUDVTIU1 -> "U1"
        FAUDVTIU10 -> "U10"
        FAUDVTIU11 -> "U11"
        FAUDVTIU12 -> "U12"
        FAUDVTIU13 -> "U13"
        FAUDVTIU14 -> "U14"
        FAUDVTIU15 -> "U15"
        FAUDVTIU16 -> "U16"
        FAUDVTIU17 -> "U17"
        FAUDVTIU18 -> "U18"
        FAUDVTIU19 -> "U19"
        FAUDVTIU2 -> "U2"
        FAUDVTIU20 -> "U20"
        FAUDVTIU3 -> "U3"
        FAUDVTIU4 -> "U4"
        FAUDVTIU5 -> "U5"
        FAUDVTIU6 -> "U6"
        FAUDVTIU7 -> "U7"
        FAUDVTIU8 -> "U8"
        FAUDVTIU9 -> "U9"

instance FromJSON FloodlightActivityUserDefinedVariableTypesItem where
    parseJSON = parseJSONText "FloodlightActivityUserDefinedVariableTypesItem"

instance ToJSON FloodlightActivityUserDefinedVariableTypesItem where
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

-- | Order of sorted results, default is ASCENDING.
data SubAccountsListSortOrder
    = SALSOAscending
      -- ^ @ASCENDING@
    | SALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubAccountsListSortOrder

instance FromText SubAccountsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just SALSOAscending
        "DESCENDING" -> Just SALSODescending
        _ -> Nothing

instance ToText SubAccountsListSortOrder where
    toText = \case
        SALSOAscending -> "ASCENDING"
        SALSODescending -> "DESCENDING"

instance FromJSON SubAccountsListSortOrder where
    parseJSON = parseJSONText "SubAccountsListSortOrder"

instance ToJSON SubAccountsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data AdsListSortOrder
    = ADSAscending
      -- ^ @ASCENDING@
    | ADSDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdsListSortOrder

instance FromText AdsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just ADSAscending
        "DESCENDING" -> Just ADSDescending
        _ -> Nothing

instance ToText AdsListSortOrder where
    toText = \case
        ADSAscending -> "ASCENDING"
        ADSDescending -> "DESCENDING"

instance FromJSON AdsListSortOrder where
    parseJSON = parseJSONText "AdsListSortOrder"

instance ToJSON AdsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data ProjectsListSortOrder
    = PLSOAscending
      -- ^ @ASCENDING@
    | PLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProjectsListSortOrder

instance FromText ProjectsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just PLSOAscending
        "DESCENDING" -> Just PLSODescending
        _ -> Nothing

instance ToText ProjectsListSortOrder where
    toText = \case
        PLSOAscending -> "ASCENDING"
        PLSODescending -> "DESCENDING"

instance FromJSON ProjectsListSortOrder where
    parseJSON = parseJSONText "ProjectsListSortOrder"

instance ToJSON ProjectsListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data RemarketingListsListSortField
    = RLLSFID
      -- ^ @ID@
    | RLLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RemarketingListsListSortField

instance FromText RemarketingListsListSortField where
    fromText = \case
        "ID" -> Just RLLSFID
        "NAME" -> Just RLLSFName
        _ -> Nothing

instance ToText RemarketingListsListSortField where
    toText = \case
        RLLSFID -> "ID"
        RLLSFName -> "NAME"

instance FromJSON RemarketingListsListSortField where
    parseJSON = parseJSONText "RemarketingListsListSortField"

instance ToJSON RemarketingListsListSortField where
    toJSON = toJSONText

data ReportScheduleRepeatsOnWeekDaysItem
    = RSROWDIFriday
      -- ^ @FRIDAY@
    | RSROWDIMonday
      -- ^ @MONDAY@
    | RSROWDISaturday
      -- ^ @SATURDAY@
    | RSROWDISunday
      -- ^ @SUNDAY@
    | RSROWDIThursday
      -- ^ @THURSDAY@
    | RSROWDITuesday
      -- ^ @TUESDAY@
    | RSROWDIWednesday
      -- ^ @WEDNESDAY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportScheduleRepeatsOnWeekDaysItem

instance FromText ReportScheduleRepeatsOnWeekDaysItem where
    fromText = \case
        "FRIDAY" -> Just RSROWDIFriday
        "MONDAY" -> Just RSROWDIMonday
        "SATURDAY" -> Just RSROWDISaturday
        "SUNDAY" -> Just RSROWDISunday
        "THURSDAY" -> Just RSROWDIThursday
        "TUESDAY" -> Just RSROWDITuesday
        "WEDNESDAY" -> Just RSROWDIWednesday
        _ -> Nothing

instance ToText ReportScheduleRepeatsOnWeekDaysItem where
    toText = \case
        RSROWDIFriday -> "FRIDAY"
        RSROWDIMonday -> "MONDAY"
        RSROWDISaturday -> "SATURDAY"
        RSROWDISunday -> "SUNDAY"
        RSROWDIThursday -> "THURSDAY"
        RSROWDITuesday -> "TUESDAY"
        RSROWDIWednesday -> "WEDNESDAY"

instance FromJSON ReportScheduleRepeatsOnWeekDaysItem where
    parseJSON = parseJSONText "ReportScheduleRepeatsOnWeekDaysItem"

instance ToJSON ReportScheduleRepeatsOnWeekDaysItem where
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

-- | Field by which to sort the list.
data AccountsListSortField
    = AID
      -- ^ @ID@
    | AName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountsListSortField

instance FromText AccountsListSortField where
    fromText = \case
        "ID" -> Just AID
        "NAME" -> Just AName
        _ -> Nothing

instance ToText AccountsListSortField where
    toText = \case
        AID -> "ID"
        AName -> "NAME"

instance FromJSON AccountsListSortField where
    parseJSON = parseJSONText "AccountsListSortField"

instance ToJSON AccountsListSortField where
    toJSON = toJSONText

-- | Select only advertisers with the specified status.
data AdvertisersListStatus
    = Approved
      -- ^ @APPROVED@
    | OnHold
      -- ^ @ON_HOLD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersListStatus

instance FromText AdvertisersListStatus where
    fromText = \case
        "APPROVED" -> Just Approved
        "ON_HOLD" -> Just OnHold
        _ -> Nothing

instance ToText AdvertisersListStatus where
    toText = \case
        Approved -> "APPROVED"
        OnHold -> "ON_HOLD"

instance FromJSON AdvertisersListStatus where
    parseJSON = parseJSONText "AdvertisersListStatus"

instance ToJSON AdvertisersListStatus where
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

-- | Order of sorted results, default is ASCENDING.
data PlacementGroupsListSortOrder
    = PGLSOAscending
      -- ^ @ASCENDING@
    | PGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupsListSortOrder

instance FromText PlacementGroupsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just PGLSOAscending
        "DESCENDING" -> Just PGLSODescending
        _ -> Nothing

instance ToText PlacementGroupsListSortOrder where
    toText = \case
        PGLSOAscending -> "ASCENDING"
        PGLSODescending -> "DESCENDING"

instance FromJSON PlacementGroupsListSortOrder where
    parseJSON = parseJSONText "PlacementGroupsListSortOrder"

instance ToJSON PlacementGroupsListSortOrder where
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

-- | Field by which to sort the list.
data CreativeFieldValuesListSortField
    = CFVLSFID
      -- ^ @ID@
    | CFVLSFValue
      -- ^ @VALUE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeFieldValuesListSortField

instance FromText CreativeFieldValuesListSortField where
    fromText = \case
        "ID" -> Just CFVLSFID
        "VALUE" -> Just CFVLSFValue
        _ -> Nothing

instance ToText CreativeFieldValuesListSortField where
    toText = \case
        CFVLSFID -> "ID"
        CFVLSFValue -> "VALUE"

instance FromJSON CreativeFieldValuesListSortField where
    parseJSON = parseJSONText "CreativeFieldValuesListSortField"

instance ToJSON CreativeFieldValuesListSortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data FloodlightActivityGroupsListSortField
    = FAGLSFID
      -- ^ @ID@
    | FAGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupsListSortField

instance FromText FloodlightActivityGroupsListSortField where
    fromText = \case
        "ID" -> Just FAGLSFID
        "NAME" -> Just FAGLSFName
        _ -> Nothing

instance ToText FloodlightActivityGroupsListSortField where
    toText = \case
        FAGLSFID -> "ID"
        FAGLSFName -> "NAME"

instance FromJSON FloodlightActivityGroupsListSortField where
    parseJSON = parseJSONText "FloodlightActivityGroupsListSortField"

instance ToJSON FloodlightActivityGroupsListSortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data OrdersListSortOrder
    = OLSOAscending
      -- ^ @ASCENDING@
    | OLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrdersListSortOrder

instance FromText OrdersListSortOrder where
    fromText = \case
        "ASCENDING" -> Just OLSOAscending
        "DESCENDING" -> Just OLSODescending
        _ -> Nothing

instance ToText OrdersListSortOrder where
    toText = \case
        OLSOAscending -> "ASCENDING"
        OLSODescending -> "DESCENDING"

instance FromJSON OrdersListSortOrder where
    parseJSON = parseJSONText "OrdersListSortOrder"

instance ToJSON OrdersListSortOrder where
    toJSON = toJSONText

-- | Profile for this account. This is a read-only field that can be left
-- blank.
data AccountAccountProFile
    = AccountProFileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | AccountProFileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountAccountProFile

instance FromText AccountAccountProFile where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just AccountProFileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just AccountProFileStandard
        _ -> Nothing

instance ToText AccountAccountProFile where
    toText = \case
        AccountProFileBasic -> "ACCOUNT_PROFILE_BASIC"
        AccountProFileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountAccountProFile where
    parseJSON = parseJSONText "AccountAccountProFile"

instance ToJSON AccountAccountProFile where
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

-- | Order of sorted results, default is \'DESCENDING\'.
data FilesListSortOrder
    = FLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | FLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesListSortOrder

instance FromText FilesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just FLSOAscending
        "DESCENDING" -> Just FLSODescending
        _ -> Nothing

instance ToText FilesListSortOrder where
    toText = \case
        FLSOAscending -> "ASCENDING"
        FLSODescending -> "DESCENDING"

instance FromJSON FilesListSortOrder where
    parseJSON = parseJSONText "FilesListSortOrder"

instance ToJSON FilesListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AdvertiserGroupsListSortField
    = AGLSFID
      -- ^ @ID@
    | AGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertiserGroupsListSortField

instance FromText AdvertiserGroupsListSortField where
    fromText = \case
        "ID" -> Just AGLSFID
        "NAME" -> Just AGLSFName
        _ -> Nothing

instance ToText AdvertiserGroupsListSortField where
    toText = \case
        AGLSFID -> "ID"
        AGLSFName -> "NAME"

instance FromJSON AdvertiserGroupsListSortField where
    parseJSON = parseJSONText "AdvertiserGroupsListSortField"

instance ToJSON AdvertiserGroupsListSortField where
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

-- | Field by which to sort the list.
data DirectorySiteContactsListSortField
    = DSCLSFID
      -- ^ @ID@
    | DSCLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactsListSortField

instance FromText DirectorySiteContactsListSortField where
    fromText = \case
        "ID" -> Just DSCLSFID
        "NAME" -> Just DSCLSFName
        _ -> Nothing

instance ToText DirectorySiteContactsListSortField where
    toText = \case
        DSCLSFID -> "ID"
        DSCLSFName -> "NAME"

instance FromJSON DirectorySiteContactsListSortField where
    parseJSON = parseJSONText "DirectorySiteContactsListSortField"

instance ToJSON DirectorySiteContactsListSortField where
    toJSON = toJSONText

-- | Select only placements with these pricing types.
data PlacementsListPricingTypes
    = PLPTPricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | PLPTPricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | PLPTPricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | PLPTPricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | PLPTPricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsListPricingTypes

instance FromText PlacementsListPricingTypes where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just PLPTPricingTypeCpa
        "PRICING_TYPE_CPC" -> Just PLPTPricingTypeCpc
        "PRICING_TYPE_CPM" -> Just PLPTPricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PLPTPricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PLPTPricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText PlacementsListPricingTypes where
    toText = \case
        PLPTPricingTypeCpa -> "PRICING_TYPE_CPA"
        PLPTPricingTypeCpc -> "PRICING_TYPE_CPC"
        PLPTPricingTypeCpm -> "PRICING_TYPE_CPM"
        PLPTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PLPTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON PlacementsListPricingTypes where
    parseJSON = parseJSONText "PlacementsListPricingTypes"

instance ToJSON PlacementsListPricingTypes where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data EventTagsListSortOrder
    = ETLSOAscending
      -- ^ @ASCENDING@
    | ETLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagsListSortOrder

instance FromText EventTagsListSortOrder where
    fromText = \case
        "ASCENDING" -> Just ETLSOAscending
        "DESCENDING" -> Just ETLSODescending
        _ -> Nothing

instance ToText EventTagsListSortOrder where
    toText = \case
        ETLSOAscending -> "ASCENDING"
        ETLSODescending -> "DESCENDING"

instance FromJSON EventTagsListSortOrder where
    parseJSON = parseJSONText "EventTagsListSortOrder"

instance ToJSON EventTagsListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DirectorySitesListSortField
    = DSLSFID
      -- ^ @ID@
    | DSLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySitesListSortField

instance FromText DirectorySitesListSortField where
    fromText = \case
        "ID" -> Just DSLSFID
        "NAME" -> Just DSLSFName
        _ -> Nothing

instance ToText DirectorySitesListSortField where
    toText = \case
        DSLSFID -> "ID"
        DSLSFName -> "NAME"

instance FromJSON DirectorySitesListSortField where
    parseJSON = parseJSONText "DirectorySitesListSortField"

instance ToJSON DirectorySitesListSortField where
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

-- | Order of sorted results, default is ASCENDING.
data SitesListSortOrder
    = SLSOAscending
      -- ^ @ASCENDING@
    | SLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SitesListSortOrder

instance FromText SitesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just SLSOAscending
        "DESCENDING" -> Just SLSODescending
        _ -> Nothing

instance ToText SitesListSortOrder where
    toText = \case
        SLSOAscending -> "ASCENDING"
        SLSODescending -> "DESCENDING"

instance FromJSON SitesListSortOrder where
    parseJSON = parseJSONText "SitesListSortOrder"

instance ToJSON SitesListSortOrder where
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

data CreativeAssetMetadataWarnedValidationRulesItem
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

instance Hashable CreativeAssetMetadataWarnedValidationRulesItem

instance FromText CreativeAssetMetadataWarnedValidationRulesItem where
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

instance ToText CreativeAssetMetadataWarnedValidationRulesItem where
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

instance FromJSON CreativeAssetMetadataWarnedValidationRulesItem where
    parseJSON = parseJSONText "CreativeAssetMetadataWarnedValidationRulesItem"

instance ToJSON CreativeAssetMetadataWarnedValidationRulesItem where
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

data AccountPermissionAccountProFilesItem
    = APAPFIAccountProFileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | APAPFIAccountProFileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountPermissionAccountProFilesItem

instance FromText AccountPermissionAccountProFilesItem where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just APAPFIAccountProFileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just APAPFIAccountProFileStandard
        _ -> Nothing

instance ToText AccountPermissionAccountProFilesItem where
    toText = \case
        APAPFIAccountProFileBasic -> "ACCOUNT_PROFILE_BASIC"
        APAPFIAccountProFileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountPermissionAccountProFilesItem where
    parseJSON = parseJSONText "AccountPermissionAccountProFilesItem"

instance ToJSON AccountPermissionAccountProFilesItem where
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

-- | Select only change logs with the specified object type.
data ChangeLogsListObjectType
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
    | ObjectBillingProFile
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
    | ObjectUserProFile
      -- ^ @OBJECT_USER_PROFILE@
    | ObjectUserProFileFilter
      -- ^ @OBJECT_USER_PROFILE_FILTER@
    | ObjectUserRole
      -- ^ @OBJECT_USER_ROLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChangeLogsListObjectType

instance FromText ChangeLogsListObjectType where
    fromText = \case
        "OBJECT_ACCOUNT" -> Just ObjectAccount
        "OBJECT_ACCOUNT_BILLING_FEATURE" -> Just ObjectAccountBillingFeature
        "OBJECT_AD" -> Just ObjectAd
        "OBJECT_ADVERTISER" -> Just ObjectAdvertiser
        "OBJECT_ADVERTISER_GROUP" -> Just ObjectAdvertiserGroup
        "OBJECT_BILLING_ACCOUNT_GROUP" -> Just ObjectBillingAccountGroup
        "OBJECT_BILLING_FEATURE" -> Just ObjectBillingFeature
        "OBJECT_BILLING_MINIMUM_FEE" -> Just ObjectBillingMinimumFee
        "OBJECT_BILLING_PROFILE" -> Just ObjectBillingProFile
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
        "OBJECT_USER_PROFILE" -> Just ObjectUserProFile
        "OBJECT_USER_PROFILE_FILTER" -> Just ObjectUserProFileFilter
        "OBJECT_USER_ROLE" -> Just ObjectUserRole
        _ -> Nothing

instance ToText ChangeLogsListObjectType where
    toText = \case
        ObjectAccount -> "OBJECT_ACCOUNT"
        ObjectAccountBillingFeature -> "OBJECT_ACCOUNT_BILLING_FEATURE"
        ObjectAd -> "OBJECT_AD"
        ObjectAdvertiser -> "OBJECT_ADVERTISER"
        ObjectAdvertiserGroup -> "OBJECT_ADVERTISER_GROUP"
        ObjectBillingAccountGroup -> "OBJECT_BILLING_ACCOUNT_GROUP"
        ObjectBillingFeature -> "OBJECT_BILLING_FEATURE"
        ObjectBillingMinimumFee -> "OBJECT_BILLING_MINIMUM_FEE"
        ObjectBillingProFile -> "OBJECT_BILLING_PROFILE"
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
        ObjectUserProFile -> "OBJECT_USER_PROFILE"
        ObjectUserProFileFilter -> "OBJECT_USER_PROFILE_FILTER"
        ObjectUserRole -> "OBJECT_USER_ROLE"

instance FromJSON ChangeLogsListObjectType where
    parseJSON = parseJSONText "ChangeLogsListObjectType"

instance ToJSON ChangeLogsListObjectType where
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

-- | Order of sorted results, default is ASCENDING.
data ContentCategoriesListSortOrder
    = CCLSOAscending
      -- ^ @ASCENDING@
    | CCLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentCategoriesListSortOrder

instance FromText ContentCategoriesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just CCLSOAscending
        "DESCENDING" -> Just CCLSODescending
        _ -> Nothing

instance ToText ContentCategoriesListSortOrder where
    toText = \case
        CCLSOAscending -> "ASCENDING"
        CCLSODescending -> "DESCENDING"

instance FromJSON ContentCategoriesListSortOrder where
    parseJSON = parseJSONText "ContentCategoriesListSortOrder"

instance ToJSON ContentCategoriesListSortOrder where
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
