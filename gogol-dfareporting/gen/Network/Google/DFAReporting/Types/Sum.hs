{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DFAReporting.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DFAReporting.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Order of sorted results.
data PlacementsListSortOrder
    = Ascending
      -- ^ @ASCENDING@
    | Descending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementsListSortOrder

instance FromHttpApiData PlacementsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right Ascending
        "DESCENDING" -> Right Descending
        x -> Left ("Unable to parse PlacementsListSortOrder from: " <> x)

instance ToHttpApiData PlacementsListSortOrder where
    toQueryParam = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON PlacementsListSortOrder where
    parseJSON = parseJSONText "PlacementsListSortOrder"

instance ToJSON PlacementsListSortOrder where
    toJSON = toJSONText

-- | The date range relative to the date of when the report is run.
data DateRangeRelativeDateRange
    = Today
      -- ^ @TODAY@
    | Yesterday
      -- ^ @YESTERDAY@
    | WeekToDate
      -- ^ @WEEK_TO_DATE@
    | MonthToDate
      -- ^ @MONTH_TO_DATE@
    | QuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | YearToDate
      -- ^ @YEAR_TO_DATE@
    | PreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | PreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | PreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | PreviousYear
      -- ^ @PREVIOUS_YEAR@
    | Last7Days
      -- ^ @LAST_7_DAYS@
    | Last30Days
      -- ^ @LAST_30_DAYS@
    | Last90Days
      -- ^ @LAST_90_DAYS@
    | Last365Days
      -- ^ @LAST_365_DAYS@
    | Last24Months
      -- ^ @LAST_24_MONTHS@
    | Last14Days
      -- ^ @LAST_14_DAYS@
    | Last60Days
      -- ^ @LAST_60_DAYS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DateRangeRelativeDateRange

instance FromHttpApiData DateRangeRelativeDateRange where
    parseQueryParam = \case
        "TODAY" -> Right Today
        "YESTERDAY" -> Right Yesterday
        "WEEK_TO_DATE" -> Right WeekToDate
        "MONTH_TO_DATE" -> Right MonthToDate
        "QUARTER_TO_DATE" -> Right QuarterToDate
        "YEAR_TO_DATE" -> Right YearToDate
        "PREVIOUS_WEEK" -> Right PreviousWeek
        "PREVIOUS_MONTH" -> Right PreviousMonth
        "PREVIOUS_QUARTER" -> Right PreviousQuarter
        "PREVIOUS_YEAR" -> Right PreviousYear
        "LAST_7_DAYS" -> Right Last7Days
        "LAST_30_DAYS" -> Right Last30Days
        "LAST_90_DAYS" -> Right Last90Days
        "LAST_365_DAYS" -> Right Last365Days
        "LAST_24_MONTHS" -> Right Last24Months
        "LAST_14_DAYS" -> Right Last14Days
        "LAST_60_DAYS" -> Right Last60Days
        x -> Left ("Unable to parse DateRangeRelativeDateRange from: " <> x)

instance ToHttpApiData DateRangeRelativeDateRange where
    toQueryParam = \case
        Today -> "TODAY"
        Yesterday -> "YESTERDAY"
        WeekToDate -> "WEEK_TO_DATE"
        MonthToDate -> "MONTH_TO_DATE"
        QuarterToDate -> "QUARTER_TO_DATE"
        YearToDate -> "YEAR_TO_DATE"
        PreviousWeek -> "PREVIOUS_WEEK"
        PreviousMonth -> "PREVIOUS_MONTH"
        PreviousQuarter -> "PREVIOUS_QUARTER"
        PreviousYear -> "PREVIOUS_YEAR"
        Last7Days -> "LAST_7_DAYS"
        Last30Days -> "LAST_30_DAYS"
        Last90Days -> "LAST_90_DAYS"
        Last365Days -> "LAST_365_DAYS"
        Last24Months -> "LAST_24_MONTHS"
        Last14Days -> "LAST_14_DAYS"
        Last60Days -> "LAST_60_DAYS"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertisersListSortField

instance FromHttpApiData AdvertisersListSortField where
    parseQueryParam = \case
        "ID" -> Right ID
        "NAME" -> Right Name
        x -> Left ("Unable to parse AdvertisersListSortField from: " <> x)

instance ToHttpApiData AdvertisersListSortField where
    toQueryParam = \case
        ID -> "ID"
        Name -> "NAME"

instance FromJSON AdvertisersListSortField where
    parseJSON = parseJSONText "AdvertisersListSortField"

instance ToJSON AdvertisersListSortField where
    toJSON = toJSONText

-- | Order of sorted results.
data CreativeFieldsListSortOrder
    = CFLSOAscending
      -- ^ @ASCENDING@
    | CFLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeFieldsListSortOrder

instance FromHttpApiData CreativeFieldsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right CFLSOAscending
        "DESCENDING" -> Right CFLSODescending
        x -> Left ("Unable to parse CreativeFieldsListSortOrder from: " <> x)

instance ToHttpApiData CreativeFieldsListSortOrder where
    toQueryParam = \case
        CFLSOAscending -> "ASCENDING"
        CFLSODescending -> "DESCENDING"

instance FromJSON CreativeFieldsListSortOrder where
    parseJSON = parseJSONText "CreativeFieldsListSortOrder"

instance ToJSON CreativeFieldsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results.
data TargetingTemplatesListSortOrder
    = TTLSOAscending
      -- ^ @ASCENDING@
    | TTLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetingTemplatesListSortOrder

instance FromHttpApiData TargetingTemplatesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right TTLSOAscending
        "DESCENDING" -> Right TTLSODescending
        x -> Left ("Unable to parse TargetingTemplatesListSortOrder from: " <> x)

instance ToHttpApiData TargetingTemplatesListSortOrder where
    toQueryParam = \case
        TTLSOAscending -> "ASCENDING"
        TTLSODescending -> "DESCENDING"

instance FromJSON TargetingTemplatesListSortOrder where
    parseJSON = parseJSONText "TargetingTemplatesListSortOrder"

instance ToJSON TargetingTemplatesListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results.
data AdvertiserLandingPagesListSortOrder
    = ALPLSOAscending
      -- ^ @ASCENDING@
    | ALPLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertiserLandingPagesListSortOrder

instance FromHttpApiData AdvertiserLandingPagesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right ALPLSOAscending
        "DESCENDING" -> Right ALPLSODescending
        x -> Left ("Unable to parse AdvertiserLandingPagesListSortOrder from: " <> x)

instance ToHttpApiData AdvertiserLandingPagesListSortOrder where
    toQueryParam = \case
        ALPLSOAscending -> "ASCENDING"
        ALPLSODescending -> "DESCENDING"

instance FromJSON AdvertiserLandingPagesListSortOrder where
    parseJSON = parseJSONText "AdvertiserLandingPagesListSortOrder"

instance ToJSON AdvertiserLandingPagesListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data UserRolesListSortField
    = URLSFID
      -- ^ @ID@
    | URLSFName
      -- ^ @NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserRolesListSortField

instance FromHttpApiData UserRolesListSortField where
    parseQueryParam = \case
        "ID" -> Right URLSFID
        "NAME" -> Right URLSFName
        x -> Left ("Unable to parse UserRolesListSortField from: " <> x)

instance ToHttpApiData UserRolesListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityTagFormat

instance FromHttpApiData FloodlightActivityTagFormat where
    parseQueryParam = \case
        "HTML" -> Right HTML
        "XHTML" -> Right Xhtml
        x -> Left ("Unable to parse FloodlightActivityTagFormat from: " <> x)

instance ToHttpApiData FloodlightActivityTagFormat where
    toQueryParam = \case
        HTML -> "HTML"
        Xhtml -> "XHTML"

instance FromJSON FloodlightActivityTagFormat where
    parseJSON = parseJSONText "FloodlightActivityTagFormat"

instance ToJSON FloodlightActivityTagFormat where
    toJSON = toJSONText

-- | Order of sorted results.
data OrderDocumentsListSortOrder
    = ODLSOAscending
      -- ^ @ASCENDING@
    | ODLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderDocumentsListSortOrder

instance FromHttpApiData OrderDocumentsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right ODLSOAscending
        "DESCENDING" -> Right ODLSODescending
        x -> Left ("Unable to parse OrderDocumentsListSortOrder from: " <> x)

instance ToHttpApiData OrderDocumentsListSortOrder where
    toQueryParam = \case
        ODLSOAscending -> "ASCENDING"
        ODLSODescending -> "DESCENDING"

instance FromJSON OrderDocumentsListSortOrder where
    parseJSON = parseJSONText "OrderDocumentsListSortOrder"

instance ToJSON OrderDocumentsListSortOrder where
    toJSON = toJSONText

-- | Role of the asset in relation to creative. Applicable to all but the
-- following creative types: all REDIRECT and TRACKING_TEXT. This is a
-- required field. PRIMARY applies to DISPLAY, FLASH_INPAGE, HTML5_BANNER,
-- IMAGE, DISPLAY_IMAGE_GALLERY, all RICH_MEDIA (which may contain multiple
-- primary assets), and all VPAID creatives. BACKUP_IMAGE applies to
-- FLASH_INPAGE, HTML5_BANNER, all RICH_MEDIA, and all VPAID creatives.
-- Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
-- ADDITIONAL_IMAGE and ADDITIONAL_FLASH apply to FLASH_INPAGE creatives.
-- OTHER refers to assets from sources other than Campaign Manager, such as
-- Studio uploaded assets, applicable to all RICH_MEDIA and all VPAID
-- creatives. PARENT_VIDEO refers to videos uploaded by the user in
-- Campaign Manager and is applicable to INSTREAM_VIDEO and
-- VPAID_LINEAR_VIDEO creatives. TRANSCODED_VIDEO refers to videos
-- transcoded by Campaign Manager from PARENT_VIDEO assets and is
-- applicable to INSTREAM_VIDEO and VPAID_LINEAR_VIDEO creatives.
-- ALTERNATE_VIDEO refers to the Campaign Manager representation of child
-- asset videos from Studio, and is applicable to VPAID_LINEAR_VIDEO
-- creatives. These cannot be added or removed within Campaign Manager. For
-- VPAID_LINEAR_VIDEO creatives, PARENT_VIDEO, TRANSCODED_VIDEO and
-- ALTERNATE_VIDEO assets that are marked active serve as backup in case
-- the VPAID creative cannot be served. Only PARENT_VIDEO assets can be
-- added or removed for an INSTREAM_VIDEO or VPAID_LINEAR_VIDEO creative.
-- PARENT_AUDIO refers to audios uploaded by the user in Campaign Manager
-- and is applicable to INSTREAM_AUDIO creatives. TRANSCODED_AUDIO refers
-- to audios transcoded by Campaign Manager from PARENT_AUDIO assets and is
-- applicable to INSTREAM_AUDIO creatives.
data CreativeAssetRole
    = Primary
      -- ^ @PRIMARY@
    | BackupImage
      -- ^ @BACKUP_IMAGE@
    | AdditionalImage
      -- ^ @ADDITIONAL_IMAGE@
    | AdditionalFlash
      -- ^ @ADDITIONAL_FLASH@
    | ParentVideo
      -- ^ @PARENT_VIDEO@
    | TranscodedVideo
      -- ^ @TRANSCODED_VIDEO@
    | Other
      -- ^ @OTHER@
    | AlternateVideo
      -- ^ @ALTERNATE_VIDEO@
    | ParentAudio
      -- ^ @PARENT_AUDIO@
    | TranscodedAudio
      -- ^ @TRANSCODED_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetRole

instance FromHttpApiData CreativeAssetRole where
    parseQueryParam = \case
        "PRIMARY" -> Right Primary
        "BACKUP_IMAGE" -> Right BackupImage
        "ADDITIONAL_IMAGE" -> Right AdditionalImage
        "ADDITIONAL_FLASH" -> Right AdditionalFlash
        "PARENT_VIDEO" -> Right ParentVideo
        "TRANSCODED_VIDEO" -> Right TranscodedVideo
        "OTHER" -> Right Other
        "ALTERNATE_VIDEO" -> Right AlternateVideo
        "PARENT_AUDIO" -> Right ParentAudio
        "TRANSCODED_AUDIO" -> Right TranscodedAudio
        x -> Left ("Unable to parse CreativeAssetRole from: " <> x)

instance ToHttpApiData CreativeAssetRole where
    toQueryParam = \case
        Primary -> "PRIMARY"
        BackupImage -> "BACKUP_IMAGE"
        AdditionalImage -> "ADDITIONAL_IMAGE"
        AdditionalFlash -> "ADDITIONAL_FLASH"
        ParentVideo -> "PARENT_VIDEO"
        TranscodedVideo -> "TRANSCODED_VIDEO"
        Other -> "OTHER"
        AlternateVideo -> "ALTERNATE_VIDEO"
        ParentAudio -> "PARENT_AUDIO"
        TranscodedAudio -> "TRANSCODED_AUDIO"

instance FromJSON CreativeAssetRole where
    parseJSON = parseJSONText "CreativeAssetRole"

instance ToJSON CreativeAssetRole where
    toJSON = toJSONText

-- | Select only dynamic targeting keys with this object type.
data DynamicTargetingKeysListObjectType
    = ObjectAdvertiser
      -- ^ @OBJECT_ADVERTISER@
    | ObjectAd
      -- ^ @OBJECT_AD@
    | ObjectCreative
      -- ^ @OBJECT_CREATIVE@
    | ObjectPlacement
      -- ^ @OBJECT_PLACEMENT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DynamicTargetingKeysListObjectType

instance FromHttpApiData DynamicTargetingKeysListObjectType where
    parseQueryParam = \case
        "OBJECT_ADVERTISER" -> Right ObjectAdvertiser
        "OBJECT_AD" -> Right ObjectAd
        "OBJECT_CREATIVE" -> Right ObjectCreative
        "OBJECT_PLACEMENT" -> Right ObjectPlacement
        x -> Left ("Unable to parse DynamicTargetingKeysListObjectType from: " <> x)

instance ToHttpApiData DynamicTargetingKeysListObjectType where
    toQueryParam = \case
        ObjectAdvertiser -> "OBJECT_ADVERTISER"
        ObjectAd -> "OBJECT_AD"
        ObjectCreative -> "OBJECT_CREATIVE"
        ObjectPlacement -> "OBJECT_PLACEMENT"

instance FromJSON DynamicTargetingKeysListObjectType where
    parseJSON = parseJSONText "DynamicTargetingKeysListObjectType"

instance ToJSON DynamicTargetingKeysListObjectType where
    toJSON = toJSONText

-- | The delivery type for the recipient.
data RecipientDeliveryType
    = Link
      -- ^ @LINK@
    | Attachment
      -- ^ @ATTACHMENT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RecipientDeliveryType

instance FromHttpApiData RecipientDeliveryType where
    parseQueryParam = \case
        "LINK" -> Right Link
        "ATTACHMENT" -> Right Attachment
        x -> Left ("Unable to parse RecipientDeliveryType from: " <> x)

instance ToHttpApiData RecipientDeliveryType where
    toQueryParam = \case
        Link -> "LINK"
        Attachment -> "ATTACHMENT"

instance FromJSON RecipientDeliveryType where
    parseJSON = parseJSONText "RecipientDeliveryType"

instance ToJSON RecipientDeliveryType where
    toJSON = toJSONText

-- | Third-party URL type for in-stream video and in-stream audio creatives.
data ThirdPartyTrackingURLThirdPartyURLType
    = Impression
      -- ^ @IMPRESSION@
    | ClickTracking
      -- ^ @CLICK_TRACKING@
    | VideoStart
      -- ^ @VIDEO_START@
    | VideoFirstQuartile
      -- ^ @VIDEO_FIRST_QUARTILE@
    | VideoMidpoint
      -- ^ @VIDEO_MIDPOINT@
    | VideoThirdQuartile
      -- ^ @VIDEO_THIRD_QUARTILE@
    | VideoComplete
      -- ^ @VIDEO_COMPLETE@
    | VideoMute
      -- ^ @VIDEO_MUTE@
    | VideoPause
      -- ^ @VIDEO_PAUSE@
    | VideoRewind
      -- ^ @VIDEO_REWIND@
    | VideoFullscreen
      -- ^ @VIDEO_FULLSCREEN@
    | VideoStop
      -- ^ @VIDEO_STOP@
    | VideoCustom
      -- ^ @VIDEO_CUSTOM@
    | Survey
      -- ^ @SURVEY@
    | RichMediaImpression
      -- ^ @RICH_MEDIA_IMPRESSION@
    | RichMediaRmImpression
      -- ^ @RICH_MEDIA_RM_IMPRESSION@
    | RichMediaBackupImpression
      -- ^ @RICH_MEDIA_BACKUP_IMPRESSION@
    | VideoSkip
      -- ^ @VIDEO_SKIP@
    | VideoProgress
      -- ^ @VIDEO_PROGRESS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThirdPartyTrackingURLThirdPartyURLType

instance FromHttpApiData ThirdPartyTrackingURLThirdPartyURLType where
    parseQueryParam = \case
        "IMPRESSION" -> Right Impression
        "CLICK_TRACKING" -> Right ClickTracking
        "VIDEO_START" -> Right VideoStart
        "VIDEO_FIRST_QUARTILE" -> Right VideoFirstQuartile
        "VIDEO_MIDPOINT" -> Right VideoMidpoint
        "VIDEO_THIRD_QUARTILE" -> Right VideoThirdQuartile
        "VIDEO_COMPLETE" -> Right VideoComplete
        "VIDEO_MUTE" -> Right VideoMute
        "VIDEO_PAUSE" -> Right VideoPause
        "VIDEO_REWIND" -> Right VideoRewind
        "VIDEO_FULLSCREEN" -> Right VideoFullscreen
        "VIDEO_STOP" -> Right VideoStop
        "VIDEO_CUSTOM" -> Right VideoCustom
        "SURVEY" -> Right Survey
        "RICH_MEDIA_IMPRESSION" -> Right RichMediaImpression
        "RICH_MEDIA_RM_IMPRESSION" -> Right RichMediaRmImpression
        "RICH_MEDIA_BACKUP_IMPRESSION" -> Right RichMediaBackupImpression
        "VIDEO_SKIP" -> Right VideoSkip
        "VIDEO_PROGRESS" -> Right VideoProgress
        x -> Left ("Unable to parse ThirdPartyTrackingURLThirdPartyURLType from: " <> x)

instance ToHttpApiData ThirdPartyTrackingURLThirdPartyURLType where
    toQueryParam = \case
        Impression -> "IMPRESSION"
        ClickTracking -> "CLICK_TRACKING"
        VideoStart -> "VIDEO_START"
        VideoFirstQuartile -> "VIDEO_FIRST_QUARTILE"
        VideoMidpoint -> "VIDEO_MIDPOINT"
        VideoThirdQuartile -> "VIDEO_THIRD_QUARTILE"
        VideoComplete -> "VIDEO_COMPLETE"
        VideoMute -> "VIDEO_MUTE"
        VideoPause -> "VIDEO_PAUSE"
        VideoRewind -> "VIDEO_REWIND"
        VideoFullscreen -> "VIDEO_FULLSCREEN"
        VideoStop -> "VIDEO_STOP"
        VideoCustom -> "VIDEO_CUSTOM"
        Survey -> "SURVEY"
        RichMediaImpression -> "RICH_MEDIA_IMPRESSION"
        RichMediaRmImpression -> "RICH_MEDIA_RM_IMPRESSION"
        RichMediaBackupImpression -> "RICH_MEDIA_BACKUP_IMPRESSION"
        VideoSkip -> "VIDEO_SKIP"
        VideoProgress -> "VIDEO_PROGRESS"

instance FromJSON ThirdPartyTrackingURLThirdPartyURLType where
    parseJSON = parseJSONText "ThirdPartyTrackingURLThirdPartyURLType"

instance ToJSON ThirdPartyTrackingURLThirdPartyURLType where
    toJSON = toJSONText

-- | Order of sorted results.
data TargetableRemarketingListsListSortOrder
    = TRLLSOAscending
      -- ^ @ASCENDING@
    | TRLLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetableRemarketingListsListSortOrder

instance FromHttpApiData TargetableRemarketingListsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right TRLLSOAscending
        "DESCENDING" -> Right TRLLSODescending
        x -> Left ("Unable to parse TargetableRemarketingListsListSortOrder from: " <> x)

instance ToHttpApiData TargetableRemarketingListsListSortOrder where
    toQueryParam = \case
        TRLLSOAscending -> "ASCENDING"
        TRLLSODescending -> "DESCENDING"

instance FromJSON TargetableRemarketingListsListSortOrder where
    parseJSON = parseJSONText "TargetableRemarketingListsListSortOrder"

instance ToJSON TargetableRemarketingListsListSortOrder where
    toJSON = toJSONText

-- | Offset left unit for an asset. This is a read-only field. Applicable to
-- the following creative types: all RICH_MEDIA.
data CreativeAssetPositionLeftUnit
    = OffSetUnitPixel
      -- ^ @OFFSET_UNIT_PIXEL@
    | OffSetUnitPercent
      -- ^ @OFFSET_UNIT_PERCENT@
    | OffSetUnitPixelFromCenter
      -- ^ @OFFSET_UNIT_PIXEL_FROM_CENTER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetPositionLeftUnit

instance FromHttpApiData CreativeAssetPositionLeftUnit where
    parseQueryParam = \case
        "OFFSET_UNIT_PIXEL" -> Right OffSetUnitPixel
        "OFFSET_UNIT_PERCENT" -> Right OffSetUnitPercent
        "OFFSET_UNIT_PIXEL_FROM_CENTER" -> Right OffSetUnitPixelFromCenter
        x -> Left ("Unable to parse CreativeAssetPositionLeftUnit from: " <> x)

instance ToHttpApiData CreativeAssetPositionLeftUnit where
    toQueryParam = \case
        OffSetUnitPixel -> "OFFSET_UNIT_PIXEL"
        OffSetUnitPercent -> "OFFSET_UNIT_PERCENT"
        OffSetUnitPixelFromCenter -> "OFFSET_UNIT_PIXEL_FROM_CENTER"

instance FromJSON CreativeAssetPositionLeftUnit where
    parseJSON = parseJSONText "CreativeAssetPositionLeftUnit"

instance ToJSON CreativeAssetPositionLeftUnit where
    toJSON = toJSONText

-- | Placement cap cost option.
data PricingScheduleCapCostOption
    = CapCostNone
      -- ^ @CAP_COST_NONE@
    | CapCostMonthly
      -- ^ @CAP_COST_MONTHLY@
    | CapCostCumulative
      -- ^ @CAP_COST_CUMULATIVE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PricingScheduleCapCostOption

instance FromHttpApiData PricingScheduleCapCostOption where
    parseQueryParam = \case
        "CAP_COST_NONE" -> Right CapCostNone
        "CAP_COST_MONTHLY" -> Right CapCostMonthly
        "CAP_COST_CUMULATIVE" -> Right CapCostCumulative
        x -> Left ("Unable to parse PricingScheduleCapCostOption from: " <> x)

instance ToHttpApiData PricingScheduleCapCostOption where
    toQueryParam = \case
        CapCostNone -> "CAP_COST_NONE"
        CapCostMonthly -> "CAP_COST_MONTHLY"
        CapCostCumulative -> "CAP_COST_CUMULATIVE"

instance FromJSON PricingScheduleCapCostOption where
    parseJSON = parseJSONText "PricingScheduleCapCostOption"

instance ToJSON PricingScheduleCapCostOption where
    toJSON = toJSONText

-- | Levels of availability for a user role permission.
data UserRolePermissionAvailability
    = NotAvailableByDefault
      -- ^ @NOT_AVAILABLE_BY_DEFAULT@
    | AccountByDefault
      -- ^ @ACCOUNT_BY_DEFAULT@
    | SubAccountAndAccountByDefault
      -- ^ @SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT@
    | AccountAlways
      -- ^ @ACCOUNT_ALWAYS@
    | SubAccountAndAccountAlways
      -- ^ @SUBACCOUNT_AND_ACCOUNT_ALWAYS@
    | UserProFileOnly
      -- ^ @USER_PROFILE_ONLY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserRolePermissionAvailability

instance FromHttpApiData UserRolePermissionAvailability where
    parseQueryParam = \case
        "NOT_AVAILABLE_BY_DEFAULT" -> Right NotAvailableByDefault
        "ACCOUNT_BY_DEFAULT" -> Right AccountByDefault
        "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT" -> Right SubAccountAndAccountByDefault
        "ACCOUNT_ALWAYS" -> Right AccountAlways
        "SUBACCOUNT_AND_ACCOUNT_ALWAYS" -> Right SubAccountAndAccountAlways
        "USER_PROFILE_ONLY" -> Right UserProFileOnly
        x -> Left ("Unable to parse UserRolePermissionAvailability from: " <> x)

instance ToHttpApiData UserRolePermissionAvailability where
    toQueryParam = \case
        NotAvailableByDefault -> "NOT_AVAILABLE_BY_DEFAULT"
        AccountByDefault -> "ACCOUNT_BY_DEFAULT"
        SubAccountAndAccountByDefault -> "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT"
        AccountAlways -> "ACCOUNT_ALWAYS"
        SubAccountAndAccountAlways -> "SUBACCOUNT_AND_ACCOUNT_ALWAYS"
        UserProFileOnly -> "USER_PROFILE_ONLY"

instance FromJSON UserRolePermissionAvailability where
    parseJSON = parseJSONText "UserRolePermissionAvailability"

instance ToJSON UserRolePermissionAvailability where
    toJSON = toJSONText

-- | VPAID adapter setting for this placement. Controls which VPAID format
-- the measurement adapter will use for in-stream video creatives assigned
-- to this placement. *Note:* Flash is no longer supported. This field now
-- defaults to HTML5 when the following values are provided: FLASH, BOTH.
data PlacementVpaidAdapterChoice
    = Default
      -- ^ @DEFAULT@
    | Flash
      -- ^ @FLASH@
    | HTML5
      -- ^ @HTML5@
    | Both
      -- ^ @BOTH@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementVpaidAdapterChoice

instance FromHttpApiData PlacementVpaidAdapterChoice where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "FLASH" -> Right Flash
        "HTML5" -> Right HTML5
        "BOTH" -> Right Both
        x -> Left ("Unable to parse PlacementVpaidAdapterChoice from: " <> x)

instance ToHttpApiData PlacementVpaidAdapterChoice where
    toQueryParam = \case
        Default -> "DEFAULT"
        Flash -> "FLASH"
        HTML5 -> "HTML5"
        Both -> "BOTH"

instance FromJSON PlacementVpaidAdapterChoice where
    parseJSON = parseJSONText "PlacementVpaidAdapterChoice"

instance ToJSON PlacementVpaidAdapterChoice where
    toJSON = toJSONText

-- | Placement compatibility. DISPLAY and DISPLAY_INTERSTITIAL refer to
-- rendering on desktop, on mobile devices or in mobile apps for regular or
-- interstitial ads respectively. APP and APP_INTERSTITIAL are no longer
-- allowed for new placement insertions. Instead, use DISPLAY or
-- DISPLAY_INTERSTITIAL. IN_STREAM_VIDEO refers to rendering in in-stream
-- video ads developed with the VAST standard. This field is required on
-- insertion.
data PlacementCompatibility
    = Display
      -- ^ @DISPLAY@
    | DisplayInterstitial
      -- ^ @DISPLAY_INTERSTITIAL@
    | App
      -- ^ @APP@
    | AppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | InStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | InStreamAudio
      -- ^ @IN_STREAM_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementCompatibility

instance FromHttpApiData PlacementCompatibility where
    parseQueryParam = \case
        "DISPLAY" -> Right Display
        "DISPLAY_INTERSTITIAL" -> Right DisplayInterstitial
        "APP" -> Right App
        "APP_INTERSTITIAL" -> Right AppInterstitial
        "IN_STREAM_VIDEO" -> Right InStreamVideo
        "IN_STREAM_AUDIO" -> Right InStreamAudio
        x -> Left ("Unable to parse PlacementCompatibility from: " <> x)

instance ToHttpApiData PlacementCompatibility where
    toQueryParam = \case
        Display -> "DISPLAY"
        DisplayInterstitial -> "DISPLAY_INTERSTITIAL"
        App -> "APP"
        AppInterstitial -> "APP_INTERSTITIAL"
        InStreamVideo -> "IN_STREAM_VIDEO"
        InStreamAudio -> "IN_STREAM_AUDIO"

instance FromJSON PlacementCompatibility where
    parseJSON = parseJSONText "PlacementCompatibility"

instance ToJSON PlacementCompatibility where
    toJSON = toJSONText

-- | Comparison operator of this term. This field is only relevant when type
-- is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
data ListPopulationTermOperator
    = NumEquals
      -- ^ @NUM_EQUALS@
    | NumLessThan
      -- ^ @NUM_LESS_THAN@
    | NumLessThanEqual
      -- ^ @NUM_LESS_THAN_EQUAL@
    | NumGreaterThan
      -- ^ @NUM_GREATER_THAN@
    | NumGreaterThanEqual
      -- ^ @NUM_GREATER_THAN_EQUAL@
    | StringEquals
      -- ^ @STRING_EQUALS@
    | StringContains
      -- ^ @STRING_CONTAINS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListPopulationTermOperator

instance FromHttpApiData ListPopulationTermOperator where
    parseQueryParam = \case
        "NUM_EQUALS" -> Right NumEquals
        "NUM_LESS_THAN" -> Right NumLessThan
        "NUM_LESS_THAN_EQUAL" -> Right NumLessThanEqual
        "NUM_GREATER_THAN" -> Right NumGreaterThan
        "NUM_GREATER_THAN_EQUAL" -> Right NumGreaterThanEqual
        "STRING_EQUALS" -> Right StringEquals
        "STRING_CONTAINS" -> Right StringContains
        x -> Left ("Unable to parse ListPopulationTermOperator from: " <> x)

instance ToHttpApiData ListPopulationTermOperator where
    toQueryParam = \case
        NumEquals -> "NUM_EQUALS"
        NumLessThan -> "NUM_LESS_THAN"
        NumLessThanEqual -> "NUM_LESS_THAN_EQUAL"
        NumGreaterThan -> "NUM_GREATER_THAN"
        NumGreaterThanEqual -> "NUM_GREATER_THAN_EQUAL"
        StringEquals -> "STRING_EQUALS"
        StringContains -> "STRING_CONTAINS"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementsListPaymentSource

instance FromHttpApiData PlacementsListPaymentSource where
    parseQueryParam = \case
        "PLACEMENT_AGENCY_PAID" -> Right PlacementAgencyPaid
        "PLACEMENT_PUBLISHER_PAID" -> Right PlacementPublisherPaid
        x -> Left ("Unable to parse PlacementsListPaymentSource from: " <> x)

instance ToHttpApiData PlacementsListPaymentSource where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportsListSortField

instance FromHttpApiData ReportsListSortField where
    parseQueryParam = \case
        "ID" -> Right RLSFID
        "LAST_MODIFIED_TIME" -> Right RLSFLastModifiedTime
        "NAME" -> Right RLSFName
        x -> Left ("Unable to parse ReportsListSortField from: " <> x)

instance ToHttpApiData ReportsListSortField where
    toQueryParam = \case
        RLSFID -> "ID"
        RLSFLastModifiedTime -> "LAST_MODIFIED_TIME"
        RLSFName -> "NAME"

instance FromJSON ReportsListSortField where
    parseJSON = parseJSONText "ReportsListSortField"

instance ToJSON ReportsListSortField where
    toJSON = toJSONText

-- | Ad slot compatibility. DISPLAY and DISPLAY_INTERSTITIAL refer to
-- rendering either on desktop, mobile devices or in mobile apps for
-- regular or interstitial ads respectively. APP and APP_INTERSTITIAL are
-- for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering in
-- in-stream video ads developed with the VAST standard.
data AdSlotCompatibility
    = ASCDisplay
      -- ^ @DISPLAY@
    | ASCDisplayInterstitial
      -- ^ @DISPLAY_INTERSTITIAL@
    | ASCApp
      -- ^ @APP@
    | ASCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | ASCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | ASCInStreamAudio
      -- ^ @IN_STREAM_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdSlotCompatibility

instance FromHttpApiData AdSlotCompatibility where
    parseQueryParam = \case
        "DISPLAY" -> Right ASCDisplay
        "DISPLAY_INTERSTITIAL" -> Right ASCDisplayInterstitial
        "APP" -> Right ASCApp
        "APP_INTERSTITIAL" -> Right ASCAppInterstitial
        "IN_STREAM_VIDEO" -> Right ASCInStreamVideo
        "IN_STREAM_AUDIO" -> Right ASCInStreamAudio
        x -> Left ("Unable to parse AdSlotCompatibility from: " <> x)

instance ToHttpApiData AdSlotCompatibility where
    toQueryParam = \case
        ASCDisplay -> "DISPLAY"
        ASCDisplayInterstitial -> "DISPLAY_INTERSTITIAL"
        ASCApp -> "APP"
        ASCAppInterstitial -> "APP_INTERSTITIAL"
        ASCInStreamVideo -> "IN_STREAM_VIDEO"
        ASCInStreamAudio -> "IN_STREAM_AUDIO"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CampaignsListSortField

instance FromHttpApiData CampaignsListSortField where
    parseQueryParam = \case
        "ID" -> Right CLSFID
        "NAME" -> Right CLSFName
        x -> Left ("Unable to parse CampaignsListSortField from: " <> x)

instance ToHttpApiData CampaignsListSortField where
    toQueryParam = \case
        CLSFID -> "ID"
        CLSFName -> "NAME"

instance FromJSON CampaignsListSortField where
    parseJSON = parseJSONText "CampaignsListSortField"

instance ToJSON CampaignsListSortField where
    toJSON = toJSONText

-- | Orientation of a video placement. If this value is set, placement will
-- return assets matching the specified orientation.
data VideoSettingsOrientation
    = Any
      -- ^ @ANY@
    | Landscape
      -- ^ @LANDSCAPE@
    | Portrait
      -- ^ @PORTRAIT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSettingsOrientation

instance FromHttpApiData VideoSettingsOrientation where
    parseQueryParam = \case
        "ANY" -> Right Any
        "LANDSCAPE" -> Right Landscape
        "PORTRAIT" -> Right Portrait
        x -> Left ("Unable to parse VideoSettingsOrientation from: " <> x)

instance ToHttpApiData VideoSettingsOrientation where
    toQueryParam = \case
        Any -> "ANY"
        Landscape -> "LANDSCAPE"
        Portrait -> "PORTRAIT"

instance FromJSON VideoSettingsOrientation where
    parseJSON = parseJSONText "VideoSettingsOrientation"

instance ToJSON VideoSettingsOrientation where
    toJSON = toJSONText

-- | Trafficker type of this user profile. This is a read-only field.
data AccountUserProFileTraffickerType
    = InternalNonTrafficker
      -- ^ @INTERNAL_NON_TRAFFICKER@
    | InternalTrafficker
      -- ^ @INTERNAL_TRAFFICKER@
    | ExternalTrafficker
      -- ^ @EXTERNAL_TRAFFICKER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountUserProFileTraffickerType

instance FromHttpApiData AccountUserProFileTraffickerType where
    parseQueryParam = \case
        "INTERNAL_NON_TRAFFICKER" -> Right InternalNonTrafficker
        "INTERNAL_TRAFFICKER" -> Right InternalTrafficker
        "EXTERNAL_TRAFFICKER" -> Right ExternalTrafficker
        x -> Left ("Unable to parse AccountUserProFileTraffickerType from: " <> x)

instance ToHttpApiData AccountUserProFileTraffickerType where
    toQueryParam = \case
        InternalNonTrafficker -> "INTERNAL_NON_TRAFFICKER"
        InternalTrafficker -> "INTERNAL_TRAFFICKER"
        ExternalTrafficker -> "EXTERNAL_TRAFFICKER"

instance FromJSON AccountUserProFileTraffickerType where
    parseJSON = parseJSONText "AccountUserProFileTraffickerType"

instance ToJSON AccountUserProFileTraffickerType where
    toJSON = toJSONText

data CreativeAssetMetadataDetectedFeaturesItem
    = CssFontFace
      -- ^ @CSS_FONT_FACE@
    | CssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CssHsla
      -- ^ @CSS_HSLA@
    | CssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CssOpacity
      -- ^ @CSS_OPACITY@
    | CssRgba
      -- ^ @CSS_RGBA@
    | CssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CssColumns
      -- ^ @CSS_COLUMNS@
    | CssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CssGradients
      -- ^ @CSS_GRADIENTS@
    | CssReflections
      -- ^ @CSS_REFLECTIONS@
    | CssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CssTransitions
      -- ^ @CSS_TRANSITIONS@
    | ApplicationCache
      -- ^ @APPLICATION_CACHE@
    | Canvas
      -- ^ @CANVAS@
    | CanvasText
      -- ^ @CANVAS_TEXT@
    | DragAndDrop
      -- ^ @DRAG_AND_DROP@
    | HashChange
      -- ^ @HASH_CHANGE@
    | History
      -- ^ @HISTORY@
    | Audio
      -- ^ @AUDIO@
    | Video
      -- ^ @VIDEO@
    | IndexedDB
      -- ^ @INDEXED_DB@
    | InputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | InputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | InputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | InputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | InputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | InputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | InputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | InputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | InputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | InputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | InputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | InputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | InputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | InputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | InputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | InputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | InputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | InputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | InputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | InputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | InputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | InputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | InputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | LocalStorage
      -- ^ @LOCAL_STORAGE@
    | PostMessage
      -- ^ @POST_MESSAGE@
    | SessionStorage
      -- ^ @SESSION_STORAGE@
    | WebSockets
      -- ^ @WEB_SOCKETS@
    | WebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | WebWorkers
      -- ^ @WEB_WORKERS@
    | GeoLocation
      -- ^ @GEO_LOCATION@
    | InlineSvg
      -- ^ @INLINE_SVG@
    | Smil
      -- ^ @SMIL@
    | SvgHref
      -- ^ @SVG_HREF@
    | SvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | Touch
      -- ^ @TOUCH@
    | Webgl
      -- ^ @WEBGL@
    | SvgFilters
      -- ^ @SVG_FILTERS@
    | SvgFeImage
      -- ^ @SVG_FE_IMAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetMetadataDetectedFeaturesItem

instance FromHttpApiData CreativeAssetMetadataDetectedFeaturesItem where
    parseQueryParam = \case
        "CSS_FONT_FACE" -> Right CssFontFace
        "CSS_BACKGROUND_SIZE" -> Right CssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Right CssBOrderImage
        "CSS_BORDER_RADIUS" -> Right CssBOrderRadius
        "CSS_BOX_SHADOW" -> Right CssBoxShadow
        "CSS_FLEX_BOX" -> Right CssFlexBox
        "CSS_HSLA" -> Right CssHsla
        "CSS_MULTIPLE_BGS" -> Right CssMultipleBgs
        "CSS_OPACITY" -> Right CssOpacity
        "CSS_RGBA" -> Right CssRgba
        "CSS_TEXT_SHADOW" -> Right CssTextShadow
        "CSS_ANIMATIONS" -> Right CssAnimations
        "CSS_COLUMNS" -> Right CssColumns
        "CSS_GENERATED_CONTENT" -> Right CssGeneratedContent
        "CSS_GRADIENTS" -> Right CssGradients
        "CSS_REFLECTIONS" -> Right CssReflections
        "CSS_TRANSFORMS" -> Right CssTransforms
        "CSS_TRANSFORMS3D" -> Right CssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Right CssTransitions
        "APPLICATION_CACHE" -> Right ApplicationCache
        "CANVAS" -> Right Canvas
        "CANVAS_TEXT" -> Right CanvasText
        "DRAG_AND_DROP" -> Right DragAndDrop
        "HASH_CHANGE" -> Right HashChange
        "HISTORY" -> Right History
        "AUDIO" -> Right Audio
        "VIDEO" -> Right Video
        "INDEXED_DB" -> Right IndexedDB
        "INPUT_ATTR_AUTOCOMPLETE" -> Right InputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Right InputAttrAutofocus
        "INPUT_ATTR_LIST" -> Right InputAttrList
        "INPUT_ATTR_PLACEHOLDER" -> Right InputAttrPlaceholder
        "INPUT_ATTR_MAX" -> Right InputAttrMax
        "INPUT_ATTR_MIN" -> Right InputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Right InputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Right InputAttrPattern
        "INPUT_ATTR_REQUIRED" -> Right InputAttrRequired
        "INPUT_ATTR_STEP" -> Right InputAttrStep
        "INPUT_TYPE_SEARCH" -> Right InputTypeSearch
        "INPUT_TYPE_TEL" -> Right InputTypeTel
        "INPUT_TYPE_URL" -> Right InputTypeURL
        "INPUT_TYPE_EMAIL" -> Right InputTypeEmail
        "INPUT_TYPE_DATETIME" -> Right InputTypeDatetime
        "INPUT_TYPE_DATE" -> Right InputTypeDate
        "INPUT_TYPE_MONTH" -> Right InputTypeMonth
        "INPUT_TYPE_WEEK" -> Right InputTypeWeek
        "INPUT_TYPE_TIME" -> Right InputTypeTime
        "INPUT_TYPE_DATETIME_LOCAL" -> Right InputTypeDatetimeLocal
        "INPUT_TYPE_NUMBER" -> Right InputTypeNumber
        "INPUT_TYPE_RANGE" -> Right InputTypeRange
        "INPUT_TYPE_COLOR" -> Right InputTypeColor
        "LOCAL_STORAGE" -> Right LocalStorage
        "POST_MESSAGE" -> Right PostMessage
        "SESSION_STORAGE" -> Right SessionStorage
        "WEB_SOCKETS" -> Right WebSockets
        "WEB_SQL_DATABASE" -> Right WebSQLDatabase
        "WEB_WORKERS" -> Right WebWorkers
        "GEO_LOCATION" -> Right GeoLocation
        "INLINE_SVG" -> Right InlineSvg
        "SMIL" -> Right Smil
        "SVG_HREF" -> Right SvgHref
        "SVG_CLIP_PATHS" -> Right SvgClipPaths
        "TOUCH" -> Right Touch
        "WEBGL" -> Right Webgl
        "SVG_FILTERS" -> Right SvgFilters
        "SVG_FE_IMAGE" -> Right SvgFeImage
        x -> Left ("Unable to parse CreativeAssetMetadataDetectedFeaturesItem from: " <> x)

instance ToHttpApiData CreativeAssetMetadataDetectedFeaturesItem where
    toQueryParam = \case
        CssFontFace -> "CSS_FONT_FACE"
        CssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CssBOrderImage -> "CSS_BORDER_IMAGE"
        CssBOrderRadius -> "CSS_BORDER_RADIUS"
        CssBoxShadow -> "CSS_BOX_SHADOW"
        CssFlexBox -> "CSS_FLEX_BOX"
        CssHsla -> "CSS_HSLA"
        CssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CssOpacity -> "CSS_OPACITY"
        CssRgba -> "CSS_RGBA"
        CssTextShadow -> "CSS_TEXT_SHADOW"
        CssAnimations -> "CSS_ANIMATIONS"
        CssColumns -> "CSS_COLUMNS"
        CssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CssGradients -> "CSS_GRADIENTS"
        CssReflections -> "CSS_REFLECTIONS"
        CssTransforms -> "CSS_TRANSFORMS"
        CssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CssTransitions -> "CSS_TRANSITIONS"
        ApplicationCache -> "APPLICATION_CACHE"
        Canvas -> "CANVAS"
        CanvasText -> "CANVAS_TEXT"
        DragAndDrop -> "DRAG_AND_DROP"
        HashChange -> "HASH_CHANGE"
        History -> "HISTORY"
        Audio -> "AUDIO"
        Video -> "VIDEO"
        IndexedDB -> "INDEXED_DB"
        InputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        InputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        InputAttrList -> "INPUT_ATTR_LIST"
        InputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        InputAttrMax -> "INPUT_ATTR_MAX"
        InputAttrMin -> "INPUT_ATTR_MIN"
        InputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        InputAttrPattern -> "INPUT_ATTR_PATTERN"
        InputAttrRequired -> "INPUT_ATTR_REQUIRED"
        InputAttrStep -> "INPUT_ATTR_STEP"
        InputTypeSearch -> "INPUT_TYPE_SEARCH"
        InputTypeTel -> "INPUT_TYPE_TEL"
        InputTypeURL -> "INPUT_TYPE_URL"
        InputTypeEmail -> "INPUT_TYPE_EMAIL"
        InputTypeDatetime -> "INPUT_TYPE_DATETIME"
        InputTypeDate -> "INPUT_TYPE_DATE"
        InputTypeMonth -> "INPUT_TYPE_MONTH"
        InputTypeWeek -> "INPUT_TYPE_WEEK"
        InputTypeTime -> "INPUT_TYPE_TIME"
        InputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        InputTypeNumber -> "INPUT_TYPE_NUMBER"
        InputTypeRange -> "INPUT_TYPE_RANGE"
        InputTypeColor -> "INPUT_TYPE_COLOR"
        LocalStorage -> "LOCAL_STORAGE"
        PostMessage -> "POST_MESSAGE"
        SessionStorage -> "SESSION_STORAGE"
        WebSockets -> "WEB_SOCKETS"
        WebSQLDatabase -> "WEB_SQL_DATABASE"
        WebWorkers -> "WEB_WORKERS"
        GeoLocation -> "GEO_LOCATION"
        InlineSvg -> "INLINE_SVG"
        Smil -> "SMIL"
        SvgHref -> "SVG_HREF"
        SvgClipPaths -> "SVG_CLIP_PATHS"
        Touch -> "TOUCH"
        Webgl -> "WEBGL"
        SvgFilters -> "SVG_FILTERS"
        SvgFeImage -> "SVG_FE_IMAGE"

instance FromJSON CreativeAssetMetadataDetectedFeaturesItem where
    parseJSON = parseJSONText "CreativeAssetMetadataDetectedFeaturesItem"

instance ToJSON CreativeAssetMetadataDetectedFeaturesItem where
    toJSON = toJSONText

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. DISPLAY and DISPLAY_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
data AdsListCompatibility
    = ALCDisplay
      -- ^ @DISPLAY@
    | ALCDisplayInterstitial
      -- ^ @DISPLAY_INTERSTITIAL@
    | ALCApp
      -- ^ @APP@
    | ALCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | ALCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | ALCInStreamAudio
      -- ^ @IN_STREAM_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdsListCompatibility

instance FromHttpApiData AdsListCompatibility where
    parseQueryParam = \case
        "DISPLAY" -> Right ALCDisplay
        "DISPLAY_INTERSTITIAL" -> Right ALCDisplayInterstitial
        "APP" -> Right ALCApp
        "APP_INTERSTITIAL" -> Right ALCAppInterstitial
        "IN_STREAM_VIDEO" -> Right ALCInStreamVideo
        "IN_STREAM_AUDIO" -> Right ALCInStreamAudio
        x -> Left ("Unable to parse AdsListCompatibility from: " <> x)

instance ToHttpApiData AdsListCompatibility where
    toQueryParam = \case
        ALCDisplay -> "DISPLAY"
        ALCDisplayInterstitial -> "DISPLAY_INTERSTITIAL"
        ALCApp -> "APP"
        ALCAppInterstitial -> "APP_INTERSTITIAL"
        ALCInStreamVideo -> "IN_STREAM_VIDEO"
        ALCInStreamAudio -> "IN_STREAM_AUDIO"

instance FromJSON AdsListCompatibility where
    parseJSON = parseJSONText "AdsListCompatibility"

instance ToJSON AdsListCompatibility where
    toJSON = toJSONText

-- | Status of this event tag. Must be ENABLED for this event tag to fire.
-- This is a required field.
data EventTagStatus
    = Enabled
      -- ^ @ENABLED@
    | Disabled
      -- ^ @DISABLED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventTagStatus

instance FromHttpApiData EventTagStatus where
    parseQueryParam = \case
        "ENABLED" -> Right Enabled
        "DISABLED" -> Right Disabled
        x -> Left ("Unable to parse EventTagStatus from: " <> x)

instance ToHttpApiData EventTagStatus where
    toQueryParam = \case
        Enabled -> "ENABLED"
        Disabled -> "DISABLED"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SitesListSortField

instance FromHttpApiData SitesListSortField where
    parseQueryParam = \case
        "ID" -> Right SLSFID
        "NAME" -> Right SLSFName
        x -> Left ("Unable to parse SitesListSortField from: " <> x)

instance ToHttpApiData SitesListSortField where
    toQueryParam = \case
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
    = ImpressionImageEventTag
      -- ^ @IMPRESSION_IMAGE_EVENT_TAG@
    | ImpressionJavascriptEventTag
      -- ^ @IMPRESSION_JAVASCRIPT_EVENT_TAG@
    | ClickThroughEventTag
      -- ^ @CLICK_THROUGH_EVENT_TAG@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventTagsListEventTagTypes

instance FromHttpApiData EventTagsListEventTagTypes where
    parseQueryParam = \case
        "IMPRESSION_IMAGE_EVENT_TAG" -> Right ImpressionImageEventTag
        "IMPRESSION_JAVASCRIPT_EVENT_TAG" -> Right ImpressionJavascriptEventTag
        "CLICK_THROUGH_EVENT_TAG" -> Right ClickThroughEventTag
        x -> Left ("Unable to parse EventTagsListEventTagTypes from: " <> x)

instance ToHttpApiData EventTagsListEventTagTypes where
    toQueryParam = \case
        ImpressionImageEventTag -> "IMPRESSION_IMAGE_EVENT_TAG"
        ImpressionJavascriptEventTag -> "IMPRESSION_JAVASCRIPT_EVENT_TAG"
        ClickThroughEventTag -> "CLICK_THROUGH_EVENT_TAG"

instance FromJSON EventTagsListEventTagTypes where
    parseJSON = parseJSONText "EventTagsListEventTagTypes"

instance ToJSON EventTagsListEventTagTypes where
    toJSON = toJSONText

-- | The status of the report file.
data FileStatus
    = Processing
      -- ^ @PROCESSING@
    | ReportAvailable
      -- ^ @REPORT_AVAILABLE@
    | Failed
      -- ^ @FAILED@
    | Cancelled
      -- ^ @CANCELLED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FileStatus

instance FromHttpApiData FileStatus where
    parseQueryParam = \case
        "PROCESSING" -> Right Processing
        "REPORT_AVAILABLE" -> Right ReportAvailable
        "FAILED" -> Right Failed
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse FileStatus from: " <> x)

instance ToHttpApiData FileStatus where
    toQueryParam = \case
        Processing -> "PROCESSING"
        ReportAvailable -> "REPORT_AVAILABLE"
        Failed -> "FAILED"
        Cancelled -> "CANCELLED"

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
    | ArtworkTypeImage
      -- ^ @ARTWORK_TYPE_IMAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeCustomEventArtworkType

instance FromHttpApiData CreativeCustomEventArtworkType where
    parseQueryParam = \case
        "ARTWORK_TYPE_FLASH" -> Right ArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Right ArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Right ArtworkTypeMixed
        "ARTWORK_TYPE_IMAGE" -> Right ArtworkTypeImage
        x -> Left ("Unable to parse CreativeCustomEventArtworkType from: " <> x)

instance ToHttpApiData CreativeCustomEventArtworkType where
    toQueryParam = \case
        ArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        ArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        ArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"
        ArtworkTypeImage -> "ARTWORK_TYPE_IMAGE"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightConfigurationNATuralSearchConversionAttributionOption

instance FromHttpApiData FloodlightConfigurationNATuralSearchConversionAttributionOption where
    parseQueryParam = \case
        "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Right ExcludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Right IncludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION" -> Right IncludeNATuralSearchTieredConversionAttribution
        x -> Left ("Unable to parse FloodlightConfigurationNATuralSearchConversionAttributionOption from: " <> x)

instance ToHttpApiData FloodlightConfigurationNATuralSearchConversionAttributionOption where
    toQueryParam = \case
        ExcludeNATuralSearchConversionAttribution -> "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        IncludeNATuralSearchConversionAttribution -> "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        IncludeNATuralSearchTieredConversionAttribution -> "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION"

instance FromJSON FloodlightConfigurationNATuralSearchConversionAttributionOption where
    parseJSON = parseJSONText "FloodlightConfigurationNATuralSearchConversionAttributionOption"

instance ToJSON FloodlightConfigurationNATuralSearchConversionAttributionOption where
    toJSON = toJSONText

-- | Measurement mode for the wrapped placement.
data MeasurementPartnerWrAppingDataTagWrAppingMode
    = None
      -- ^ @NONE@
    | Blocking
      -- ^ @BLOCKING@
    | Monitoring
      -- ^ @MONITORING@
    | MonitoringOnly
      -- ^ @MONITORING_ONLY@
    | VideoPixelMonitoring
      -- ^ @VIDEO_PIXEL_MONITORING@
    | Tracking
      -- ^ @TRACKING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MeasurementPartnerWrAppingDataTagWrAppingMode

instance FromHttpApiData MeasurementPartnerWrAppingDataTagWrAppingMode where
    parseQueryParam = \case
        "NONE" -> Right None
        "BLOCKING" -> Right Blocking
        "MONITORING" -> Right Monitoring
        "MONITORING_ONLY" -> Right MonitoringOnly
        "VIDEO_PIXEL_MONITORING" -> Right VideoPixelMonitoring
        "TRACKING" -> Right Tracking
        x -> Left ("Unable to parse MeasurementPartnerWrAppingDataTagWrAppingMode from: " <> x)

instance ToHttpApiData MeasurementPartnerWrAppingDataTagWrAppingMode where
    toQueryParam = \case
        None -> "NONE"
        Blocking -> "BLOCKING"
        Monitoring -> "MONITORING"
        MonitoringOnly -> "MONITORING_ONLY"
        VideoPixelMonitoring -> "VIDEO_PIXEL_MONITORING"
        Tracking -> "TRACKING"

instance FromJSON MeasurementPartnerWrAppingDataTagWrAppingMode where
    parseJSON = parseJSONText "MeasurementPartnerWrAppingDataTagWrAppingMode"

instance ToJSON MeasurementPartnerWrAppingDataTagWrAppingMode where
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
    | CAATArtworkTypeImage
      -- ^ @ARTWORK_TYPE_IMAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetArtworkType

instance FromHttpApiData CreativeAssetArtworkType where
    parseQueryParam = \case
        "ARTWORK_TYPE_FLASH" -> Right CAATArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Right CAATArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Right CAATArtworkTypeMixed
        "ARTWORK_TYPE_IMAGE" -> Right CAATArtworkTypeImage
        x -> Left ("Unable to parse CreativeAssetArtworkType from: " <> x)

instance ToHttpApiData CreativeAssetArtworkType where
    toQueryParam = \case
        CAATArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        CAATArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        CAATArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"
        CAATArtworkTypeImage -> "ARTWORK_TYPE_IMAGE"

instance FromJSON CreativeAssetArtworkType where
    parseJSON = parseJSONText "CreativeAssetArtworkType"

instance ToJSON CreativeAssetArtworkType where
    toJSON = toJSONText

-- | The type of custom floodlight variable to supply a value for. These map
-- to the \"u[1-20]=\" in the tags.
data CustomFloodlightVariableType
    = U1
      -- ^ @U1@
    | U2
      -- ^ @U2@
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
    | U20
      -- ^ @U20@
    | U21
      -- ^ @U21@
    | U22
      -- ^ @U22@
    | U23
      -- ^ @U23@
    | U24
      -- ^ @U24@
    | U25
      -- ^ @U25@
    | U26
      -- ^ @U26@
    | U27
      -- ^ @U27@
    | U28
      -- ^ @U28@
    | U29
      -- ^ @U29@
    | U30
      -- ^ @U30@
    | U31
      -- ^ @U31@
    | U32
      -- ^ @U32@
    | U33
      -- ^ @U33@
    | U34
      -- ^ @U34@
    | U35
      -- ^ @U35@
    | U36
      -- ^ @U36@
    | U37
      -- ^ @U37@
    | U38
      -- ^ @U38@
    | U39
      -- ^ @U39@
    | U40
      -- ^ @U40@
    | U41
      -- ^ @U41@
    | U42
      -- ^ @U42@
    | U43
      -- ^ @U43@
    | U44
      -- ^ @U44@
    | U45
      -- ^ @U45@
    | U46
      -- ^ @U46@
    | U47
      -- ^ @U47@
    | U48
      -- ^ @U48@
    | U49
      -- ^ @U49@
    | U50
      -- ^ @U50@
    | U51
      -- ^ @U51@
    | U52
      -- ^ @U52@
    | U53
      -- ^ @U53@
    | U54
      -- ^ @U54@
    | U55
      -- ^ @U55@
    | U56
      -- ^ @U56@
    | U57
      -- ^ @U57@
    | U58
      -- ^ @U58@
    | U59
      -- ^ @U59@
    | U60
      -- ^ @U60@
    | U61
      -- ^ @U61@
    | U62
      -- ^ @U62@
    | U63
      -- ^ @U63@
    | U64
      -- ^ @U64@
    | U65
      -- ^ @U65@
    | U66
      -- ^ @U66@
    | U67
      -- ^ @U67@
    | U68
      -- ^ @U68@
    | U69
      -- ^ @U69@
    | U70
      -- ^ @U70@
    | U71
      -- ^ @U71@
    | U72
      -- ^ @U72@
    | U73
      -- ^ @U73@
    | U74
      -- ^ @U74@
    | U75
      -- ^ @U75@
    | U76
      -- ^ @U76@
    | U77
      -- ^ @U77@
    | U78
      -- ^ @U78@
    | U79
      -- ^ @U79@
    | U80
      -- ^ @U80@
    | U81
      -- ^ @U81@
    | U82
      -- ^ @U82@
    | U83
      -- ^ @U83@
    | U84
      -- ^ @U84@
    | U85
      -- ^ @U85@
    | U86
      -- ^ @U86@
    | U87
      -- ^ @U87@
    | U88
      -- ^ @U88@
    | U89
      -- ^ @U89@
    | U90
      -- ^ @U90@
    | U91
      -- ^ @U91@
    | U92
      -- ^ @U92@
    | U93
      -- ^ @U93@
    | U94
      -- ^ @U94@
    | U95
      -- ^ @U95@
    | U96
      -- ^ @U96@
    | U97
      -- ^ @U97@
    | U98
      -- ^ @U98@
    | U99
      -- ^ @U99@
    | U100
      -- ^ @U100@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CustomFloodlightVariableType

instance FromHttpApiData CustomFloodlightVariableType where
    parseQueryParam = \case
        "U1" -> Right U1
        "U2" -> Right U2
        "U3" -> Right U3
        "U4" -> Right U4
        "U5" -> Right U5
        "U6" -> Right U6
        "U7" -> Right U7
        "U8" -> Right U8
        "U9" -> Right U9
        "U10" -> Right U10
        "U11" -> Right U11
        "U12" -> Right U12
        "U13" -> Right U13
        "U14" -> Right U14
        "U15" -> Right U15
        "U16" -> Right U16
        "U17" -> Right U17
        "U18" -> Right U18
        "U19" -> Right U19
        "U20" -> Right U20
        "U21" -> Right U21
        "U22" -> Right U22
        "U23" -> Right U23
        "U24" -> Right U24
        "U25" -> Right U25
        "U26" -> Right U26
        "U27" -> Right U27
        "U28" -> Right U28
        "U29" -> Right U29
        "U30" -> Right U30
        "U31" -> Right U31
        "U32" -> Right U32
        "U33" -> Right U33
        "U34" -> Right U34
        "U35" -> Right U35
        "U36" -> Right U36
        "U37" -> Right U37
        "U38" -> Right U38
        "U39" -> Right U39
        "U40" -> Right U40
        "U41" -> Right U41
        "U42" -> Right U42
        "U43" -> Right U43
        "U44" -> Right U44
        "U45" -> Right U45
        "U46" -> Right U46
        "U47" -> Right U47
        "U48" -> Right U48
        "U49" -> Right U49
        "U50" -> Right U50
        "U51" -> Right U51
        "U52" -> Right U52
        "U53" -> Right U53
        "U54" -> Right U54
        "U55" -> Right U55
        "U56" -> Right U56
        "U57" -> Right U57
        "U58" -> Right U58
        "U59" -> Right U59
        "U60" -> Right U60
        "U61" -> Right U61
        "U62" -> Right U62
        "U63" -> Right U63
        "U64" -> Right U64
        "U65" -> Right U65
        "U66" -> Right U66
        "U67" -> Right U67
        "U68" -> Right U68
        "U69" -> Right U69
        "U70" -> Right U70
        "U71" -> Right U71
        "U72" -> Right U72
        "U73" -> Right U73
        "U74" -> Right U74
        "U75" -> Right U75
        "U76" -> Right U76
        "U77" -> Right U77
        "U78" -> Right U78
        "U79" -> Right U79
        "U80" -> Right U80
        "U81" -> Right U81
        "U82" -> Right U82
        "U83" -> Right U83
        "U84" -> Right U84
        "U85" -> Right U85
        "U86" -> Right U86
        "U87" -> Right U87
        "U88" -> Right U88
        "U89" -> Right U89
        "U90" -> Right U90
        "U91" -> Right U91
        "U92" -> Right U92
        "U93" -> Right U93
        "U94" -> Right U94
        "U95" -> Right U95
        "U96" -> Right U96
        "U97" -> Right U97
        "U98" -> Right U98
        "U99" -> Right U99
        "U100" -> Right U100
        x -> Left ("Unable to parse CustomFloodlightVariableType from: " <> x)

instance ToHttpApiData CustomFloodlightVariableType where
    toQueryParam = \case
        U1 -> "U1"
        U2 -> "U2"
        U3 -> "U3"
        U4 -> "U4"
        U5 -> "U5"
        U6 -> "U6"
        U7 -> "U7"
        U8 -> "U8"
        U9 -> "U9"
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
        U20 -> "U20"
        U21 -> "U21"
        U22 -> "U22"
        U23 -> "U23"
        U24 -> "U24"
        U25 -> "U25"
        U26 -> "U26"
        U27 -> "U27"
        U28 -> "U28"
        U29 -> "U29"
        U30 -> "U30"
        U31 -> "U31"
        U32 -> "U32"
        U33 -> "U33"
        U34 -> "U34"
        U35 -> "U35"
        U36 -> "U36"
        U37 -> "U37"
        U38 -> "U38"
        U39 -> "U39"
        U40 -> "U40"
        U41 -> "U41"
        U42 -> "U42"
        U43 -> "U43"
        U44 -> "U44"
        U45 -> "U45"
        U46 -> "U46"
        U47 -> "U47"
        U48 -> "U48"
        U49 -> "U49"
        U50 -> "U50"
        U51 -> "U51"
        U52 -> "U52"
        U53 -> "U53"
        U54 -> "U54"
        U55 -> "U55"
        U56 -> "U56"
        U57 -> "U57"
        U58 -> "U58"
        U59 -> "U59"
        U60 -> "U60"
        U61 -> "U61"
        U62 -> "U62"
        U63 -> "U63"
        U64 -> "U64"
        U65 -> "U65"
        U66 -> "U66"
        U67 -> "U67"
        U68 -> "U68"
        U69 -> "U69"
        U70 -> "U70"
        U71 -> "U71"
        U72 -> "U72"
        U73 -> "U73"
        U74 -> "U74"
        U75 -> "U75"
        U76 -> "U76"
        U77 -> "U77"
        U78 -> "U78"
        U79 -> "U79"
        U80 -> "U80"
        U81 -> "U81"
        U82 -> "U82"
        U83 -> "U83"
        U84 -> "U84"
        U85 -> "U85"
        U86 -> "U86"
        U87 -> "U87"
        U88 -> "U88"
        U89 -> "U89"
        U90 -> "U90"
        U91 -> "U91"
        U92 -> "U92"
        U93 -> "U93"
        U94 -> "U94"
        U95 -> "U95"
        U96 -> "U96"
        U97 -> "U97"
        U98 -> "U98"
        U99 -> "U99"
        U100 -> "U100"

instance FromJSON CustomFloodlightVariableType where
    parseJSON = parseJSONText "CustomFloodlightVariableType"

instance ToJSON CustomFloodlightVariableType where
    toJSON = toJSONText

-- | The error code.
data ConversionErrorCode
    = InvalidArgument
      -- ^ @INVALID_ARGUMENT@
    | Internal
      -- ^ @INTERNAL@
    | PermissionDenied
      -- ^ @PERMISSION_DENIED@
    | NotFound
      -- ^ @NOT_FOUND@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConversionErrorCode

instance FromHttpApiData ConversionErrorCode where
    parseQueryParam = \case
        "INVALID_ARGUMENT" -> Right InvalidArgument
        "INTERNAL" -> Right Internal
        "PERMISSION_DENIED" -> Right PermissionDenied
        "NOT_FOUND" -> Right NotFound
        x -> Left ("Unable to parse ConversionErrorCode from: " <> x)

instance ToHttpApiData ConversionErrorCode where
    toQueryParam = \case
        InvalidArgument -> "INVALID_ARGUMENT"
        Internal -> "INTERNAL"
        PermissionDenied -> "PERMISSION_DENIED"
        NotFound -> "NOT_FOUND"

instance FromJSON ConversionErrorCode where
    parseJSON = parseJSONText "ConversionErrorCode"

instance ToJSON ConversionErrorCode where
    toJSON = toJSONText

-- | Order of sorted results.
data FloodlightActivitiesListSortOrder
    = FALSOAscending
      -- ^ @ASCENDING@
    | FALSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivitiesListSortOrder

instance FromHttpApiData FloodlightActivitiesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right FALSOAscending
        "DESCENDING" -> Right FALSODescending
        x -> Left ("Unable to parse FloodlightActivitiesListSortOrder from: " <> x)

instance ToHttpApiData FloodlightActivitiesListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FileFormat

instance FromHttpApiData FileFormat where
    parseQueryParam = \case
        "CSV" -> Right CSV
        "EXCEL" -> Right Excel
        x -> Left ("Unable to parse FileFormat from: " <> x)

instance ToHttpApiData FileFormat where
    toQueryParam = \case
        CSV -> "CSV"
        Excel -> "EXCEL"

instance FromJSON FileFormat where
    parseJSON = parseJSONText "FileFormat"

instance ToJSON FileFormat where
    toJSON = toJSONText

-- | The encryption entity type. This should match the encryption
-- configuration for ad serving or Data Transfer.
data EncryptionInfoEncryptionEntityType
    = EncryptionEntityTypeUnknown
      -- ^ @ENCRYPTION_ENTITY_TYPE_UNKNOWN@
    | DcmAccount
      -- ^ @DCM_ACCOUNT@
    | DcmAdvertiser
      -- ^ @DCM_ADVERTISER@
    | DBmPartner
      -- ^ @DBM_PARTNER@
    | DBmAdvertiser
      -- ^ @DBM_ADVERTISER@
    | AdwordsCustomer
      -- ^ @ADWORDS_CUSTOMER@
    | DfpNetworkCode
      -- ^ @DFP_NETWORK_CODE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EncryptionInfoEncryptionEntityType

instance FromHttpApiData EncryptionInfoEncryptionEntityType where
    parseQueryParam = \case
        "ENCRYPTION_ENTITY_TYPE_UNKNOWN" -> Right EncryptionEntityTypeUnknown
        "DCM_ACCOUNT" -> Right DcmAccount
        "DCM_ADVERTISER" -> Right DcmAdvertiser
        "DBM_PARTNER" -> Right DBmPartner
        "DBM_ADVERTISER" -> Right DBmAdvertiser
        "ADWORDS_CUSTOMER" -> Right AdwordsCustomer
        "DFP_NETWORK_CODE" -> Right DfpNetworkCode
        x -> Left ("Unable to parse EncryptionInfoEncryptionEntityType from: " <> x)

instance ToHttpApiData EncryptionInfoEncryptionEntityType where
    toQueryParam = \case
        EncryptionEntityTypeUnknown -> "ENCRYPTION_ENTITY_TYPE_UNKNOWN"
        DcmAccount -> "DCM_ACCOUNT"
        DcmAdvertiser -> "DCM_ADVERTISER"
        DBmPartner -> "DBM_PARTNER"
        DBmAdvertiser -> "DBM_ADVERTISER"
        AdwordsCustomer -> "ADWORDS_CUSTOMER"
        DfpNetworkCode -> "DFP_NETWORK_CODE"

instance FromJSON EncryptionInfoEncryptionEntityType where
    parseJSON = parseJSONText "EncryptionInfoEncryptionEntityType"

instance ToJSON EncryptionInfoEncryptionEntityType where
    toJSON = toJSONText

-- | Placement pricing type. This field is required on insertion.
data PricingSchedulePricingType
    = PricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | PricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | PricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | PricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
    | PricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | PricingTypeCpmActiveview
      -- ^ @PRICING_TYPE_CPM_ACTIVEVIEW@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PricingSchedulePricingType

instance FromHttpApiData PricingSchedulePricingType where
    parseQueryParam = \case
        "PRICING_TYPE_CPM" -> Right PricingTypeCpm
        "PRICING_TYPE_CPC" -> Right PricingTypeCpc
        "PRICING_TYPE_CPA" -> Right PricingTypeCpa
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Right PricingTypeFlatRateImpressions
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Right PricingTypeFlatRateClicks
        "PRICING_TYPE_CPM_ACTIVEVIEW" -> Right PricingTypeCpmActiveview
        x -> Left ("Unable to parse PricingSchedulePricingType from: " <> x)

instance ToHttpApiData PricingSchedulePricingType where
    toQueryParam = \case
        PricingTypeCpm -> "PRICING_TYPE_CPM"
        PricingTypeCpc -> "PRICING_TYPE_CPC"
        PricingTypeCpa -> "PRICING_TYPE_CPA"
        PricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"
        PricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PricingTypeCpmActiveview -> "PRICING_TYPE_CPM_ACTIVEVIEW"

instance FromJSON PricingSchedulePricingType where
    parseJSON = parseJSONText "PricingSchedulePricingType"

instance ToJSON PricingSchedulePricingType where
    toJSON = toJSONText

-- | Target type used by the event.
data CreativeCustomEventTargetType
    = TargetBlank
      -- ^ @TARGET_BLANK@
    | TargetTop
      -- ^ @TARGET_TOP@
    | TargetSelf
      -- ^ @TARGET_SELF@
    | TargetParent
      -- ^ @TARGET_PARENT@
    | TargetPopup
      -- ^ @TARGET_POPUP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeCustomEventTargetType

instance FromHttpApiData CreativeCustomEventTargetType where
    parseQueryParam = \case
        "TARGET_BLANK" -> Right TargetBlank
        "TARGET_TOP" -> Right TargetTop
        "TARGET_SELF" -> Right TargetSelf
        "TARGET_PARENT" -> Right TargetParent
        "TARGET_POPUP" -> Right TargetPopup
        x -> Left ("Unable to parse CreativeCustomEventTargetType from: " <> x)

instance ToHttpApiData CreativeCustomEventTargetType where
    toQueryParam = \case
        TargetBlank -> "TARGET_BLANK"
        TargetTop -> "TARGET_TOP"
        TargetSelf -> "TARGET_SELF"
        TargetParent -> "TARGET_PARENT"
        TargetPopup -> "TARGET_POPUP"

instance FromJSON CreativeCustomEventTargetType where
    parseJSON = parseJSONText "CreativeCustomEventTargetType"

instance ToJSON CreativeCustomEventTargetType where
    toJSON = toJSONText

-- | The scope that defines which results are returned.
data ReportsListScope
    = All
      -- ^ @ALL@
      -- All reports in account.
    | Mine
      -- ^ @MINE@
      -- My reports.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportsListScope

instance FromHttpApiData ReportsListScope where
    parseQueryParam = \case
        "ALL" -> Right All
        "MINE" -> Right Mine
        x -> Left ("Unable to parse ReportsListScope from: " <> x)

instance ToHttpApiData ReportsListScope where
    toQueryParam = \case
        All -> "ALL"
        Mine -> "MINE"

instance FromJSON ReportsListScope where
    parseJSON = parseJSONText "ReportsListScope"

instance ToJSON ReportsListScope where
    toJSON = toJSONText

-- | Orientation of video asset. This is a read-only, auto-generated field.
data CreativeAssetOrientation
    = CAOLandscape
      -- ^ @LANDSCAPE@
    | CAOPortrait
      -- ^ @PORTRAIT@
    | CAOSquare
      -- ^ @SQUARE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetOrientation

instance FromHttpApiData CreativeAssetOrientation where
    parseQueryParam = \case
        "LANDSCAPE" -> Right CAOLandscape
        "PORTRAIT" -> Right CAOPortrait
        "SQUARE" -> Right CAOSquare
        x -> Left ("Unable to parse CreativeAssetOrientation from: " <> x)

instance ToHttpApiData CreativeAssetOrientation where
    toQueryParam = \case
        CAOLandscape -> "LANDSCAPE"
        CAOPortrait -> "PORTRAIT"
        CAOSquare -> "SQUARE"

instance FromJSON CreativeAssetOrientation where
    parseJSON = parseJSONText "CreativeAssetOrientation"

instance ToJSON CreativeAssetOrientation where
    toJSON = toJSONText

-- | Duration type for which an asset will be displayed. Applicable to the
-- following creative types: all RICH_MEDIA.
data CreativeAssetDurationType
    = AssetDurationTypeAuto
      -- ^ @ASSET_DURATION_TYPE_AUTO@
    | AssetDurationTypeNone
      -- ^ @ASSET_DURATION_TYPE_NONE@
    | AssetDurationTypeCustom
      -- ^ @ASSET_DURATION_TYPE_CUSTOM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetDurationType

instance FromHttpApiData CreativeAssetDurationType where
    parseQueryParam = \case
        "ASSET_DURATION_TYPE_AUTO" -> Right AssetDurationTypeAuto
        "ASSET_DURATION_TYPE_NONE" -> Right AssetDurationTypeNone
        "ASSET_DURATION_TYPE_CUSTOM" -> Right AssetDurationTypeCustom
        x -> Left ("Unable to parse CreativeAssetDurationType from: " <> x)

instance ToHttpApiData CreativeAssetDurationType where
    toQueryParam = \case
        AssetDurationTypeAuto -> "ASSET_DURATION_TYPE_AUTO"
        AssetDurationTypeNone -> "ASSET_DURATION_TYPE_NONE"
        AssetDurationTypeCustom -> "ASSET_DURATION_TYPE_CUSTOM"

instance FromJSON CreativeAssetDurationType where
    parseJSON = parseJSONText "CreativeAssetDurationType"

instance ToJSON CreativeAssetDurationType where
    toJSON = toJSONText

-- | Product from which this targetable remarketing list was originated.
data TargetableRemarketingListListSource
    = RemarketingListSourceOther
      -- ^ @REMARKETING_LIST_SOURCE_OTHER@
    | RemarketingListSourceAdx
      -- ^ @REMARKETING_LIST_SOURCE_ADX@
    | RemarketingListSourceDfp
      -- ^ @REMARKETING_LIST_SOURCE_DFP@
    | RemarketingListSourceXfp
      -- ^ @REMARKETING_LIST_SOURCE_XFP@
    | RemarketingListSourceDfa
      -- ^ @REMARKETING_LIST_SOURCE_DFA@
    | RemarketingListSourceGa
      -- ^ @REMARKETING_LIST_SOURCE_GA@
    | RemarketingListSourceYouTube
      -- ^ @REMARKETING_LIST_SOURCE_YOUTUBE@
    | RemarketingListSourceDBm
      -- ^ @REMARKETING_LIST_SOURCE_DBM@
    | RemarketingListSourceGplus
      -- ^ @REMARKETING_LIST_SOURCE_GPLUS@
    | RemarketingListSourceDmp
      -- ^ @REMARKETING_LIST_SOURCE_DMP@
    | RemarketingListSourcePlayStore
      -- ^ @REMARKETING_LIST_SOURCE_PLAY_STORE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetableRemarketingListListSource

instance FromHttpApiData TargetableRemarketingListListSource where
    parseQueryParam = \case
        "REMARKETING_LIST_SOURCE_OTHER" -> Right RemarketingListSourceOther
        "REMARKETING_LIST_SOURCE_ADX" -> Right RemarketingListSourceAdx
        "REMARKETING_LIST_SOURCE_DFP" -> Right RemarketingListSourceDfp
        "REMARKETING_LIST_SOURCE_XFP" -> Right RemarketingListSourceXfp
        "REMARKETING_LIST_SOURCE_DFA" -> Right RemarketingListSourceDfa
        "REMARKETING_LIST_SOURCE_GA" -> Right RemarketingListSourceGa
        "REMARKETING_LIST_SOURCE_YOUTUBE" -> Right RemarketingListSourceYouTube
        "REMARKETING_LIST_SOURCE_DBM" -> Right RemarketingListSourceDBm
        "REMARKETING_LIST_SOURCE_GPLUS" -> Right RemarketingListSourceGplus
        "REMARKETING_LIST_SOURCE_DMP" -> Right RemarketingListSourceDmp
        "REMARKETING_LIST_SOURCE_PLAY_STORE" -> Right RemarketingListSourcePlayStore
        x -> Left ("Unable to parse TargetableRemarketingListListSource from: " <> x)

instance ToHttpApiData TargetableRemarketingListListSource where
    toQueryParam = \case
        RemarketingListSourceOther -> "REMARKETING_LIST_SOURCE_OTHER"
        RemarketingListSourceAdx -> "REMARKETING_LIST_SOURCE_ADX"
        RemarketingListSourceDfp -> "REMARKETING_LIST_SOURCE_DFP"
        RemarketingListSourceXfp -> "REMARKETING_LIST_SOURCE_XFP"
        RemarketingListSourceDfa -> "REMARKETING_LIST_SOURCE_DFA"
        RemarketingListSourceGa -> "REMARKETING_LIST_SOURCE_GA"
        RemarketingListSourceYouTube -> "REMARKETING_LIST_SOURCE_YOUTUBE"
        RemarketingListSourceDBm -> "REMARKETING_LIST_SOURCE_DBM"
        RemarketingListSourceGplus -> "REMARKETING_LIST_SOURCE_GPLUS"
        RemarketingListSourceDmp -> "REMARKETING_LIST_SOURCE_DMP"
        RemarketingListSourcePlayStore -> "REMARKETING_LIST_SOURCE_PLAY_STORE"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeGroupsListSortField

instance FromHttpApiData CreativeGroupsListSortField where
    parseQueryParam = \case
        "ID" -> Right CGLSFID
        "NAME" -> Right CGLSFName
        x -> Left ("Unable to parse CreativeGroupsListSortField from: " <> x)

instance ToHttpApiData CreativeGroupsListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementsListSortField

instance FromHttpApiData PlacementsListSortField where
    parseQueryParam = \case
        "ID" -> Right PLSFID
        "NAME" -> Right PLSFName
        x -> Left ("Unable to parse PlacementsListSortField from: " <> x)

instance ToHttpApiData PlacementsListSortField where
    toQueryParam = \case
        PLSFID -> "ID"
        PLSFName -> "NAME"

instance FromJSON PlacementsListSortField where
    parseJSON = parseJSONText "PlacementsListSortField"

instance ToJSON PlacementsListSortField where
    toJSON = toJSONText

data CreativeBackupImageFeaturesItem
    = CBIFICssFontFace
      -- ^ @CSS_FONT_FACE@
    | CBIFICssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CBIFICssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CBIFICssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CBIFICssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CBIFICssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CBIFICssHsla
      -- ^ @CSS_HSLA@
    | CBIFICssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CBIFICssOpacity
      -- ^ @CSS_OPACITY@
    | CBIFICssRgba
      -- ^ @CSS_RGBA@
    | CBIFICssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CBIFICssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CBIFICssColumns
      -- ^ @CSS_COLUMNS@
    | CBIFICssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CBIFICssGradients
      -- ^ @CSS_GRADIENTS@
    | CBIFICssReflections
      -- ^ @CSS_REFLECTIONS@
    | CBIFICssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CBIFICssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CBIFICssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CBIFIApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CBIFICanvas
      -- ^ @CANVAS@
    | CBIFICanvasText
      -- ^ @CANVAS_TEXT@
    | CBIFIDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CBIFIHashChange
      -- ^ @HASH_CHANGE@
    | CBIFIHistory
      -- ^ @HISTORY@
    | CBIFIAudio
      -- ^ @AUDIO@
    | CBIFIVideo
      -- ^ @VIDEO@
    | CBIFIIndexedDB
      -- ^ @INDEXED_DB@
    | CBIFIInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CBIFIInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CBIFIInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CBIFIInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CBIFIInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CBIFIInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CBIFIInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CBIFIInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CBIFIInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CBIFIInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CBIFIInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CBIFIInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CBIFIInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CBIFIInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CBIFIInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CBIFIInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CBIFIInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CBIFIInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CBIFIInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CBIFIInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CBIFIInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CBIFIInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CBIFIInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CBIFILocalStorage
      -- ^ @LOCAL_STORAGE@
    | CBIFIPostMessage
      -- ^ @POST_MESSAGE@
    | CBIFISessionStorage
      -- ^ @SESSION_STORAGE@
    | CBIFIWebSockets
      -- ^ @WEB_SOCKETS@
    | CBIFIWebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CBIFIWebWorkers
      -- ^ @WEB_WORKERS@
    | CBIFIGeoLocation
      -- ^ @GEO_LOCATION@
    | CBIFIInlineSvg
      -- ^ @INLINE_SVG@
    | CBIFISmil
      -- ^ @SMIL@
    | CBIFISvgHref
      -- ^ @SVG_HREF@
    | CBIFISvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CBIFITouch
      -- ^ @TOUCH@
    | CBIFIWebgl
      -- ^ @WEBGL@
    | CBIFISvgFilters
      -- ^ @SVG_FILTERS@
    | CBIFISvgFeImage
      -- ^ @SVG_FE_IMAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeBackupImageFeaturesItem

instance FromHttpApiData CreativeBackupImageFeaturesItem where
    parseQueryParam = \case
        "CSS_FONT_FACE" -> Right CBIFICssFontFace
        "CSS_BACKGROUND_SIZE" -> Right CBIFICssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Right CBIFICssBOrderImage
        "CSS_BORDER_RADIUS" -> Right CBIFICssBOrderRadius
        "CSS_BOX_SHADOW" -> Right CBIFICssBoxShadow
        "CSS_FLEX_BOX" -> Right CBIFICssFlexBox
        "CSS_HSLA" -> Right CBIFICssHsla
        "CSS_MULTIPLE_BGS" -> Right CBIFICssMultipleBgs
        "CSS_OPACITY" -> Right CBIFICssOpacity
        "CSS_RGBA" -> Right CBIFICssRgba
        "CSS_TEXT_SHADOW" -> Right CBIFICssTextShadow
        "CSS_ANIMATIONS" -> Right CBIFICssAnimations
        "CSS_COLUMNS" -> Right CBIFICssColumns
        "CSS_GENERATED_CONTENT" -> Right CBIFICssGeneratedContent
        "CSS_GRADIENTS" -> Right CBIFICssGradients
        "CSS_REFLECTIONS" -> Right CBIFICssReflections
        "CSS_TRANSFORMS" -> Right CBIFICssTransforms
        "CSS_TRANSFORMS3D" -> Right CBIFICssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Right CBIFICssTransitions
        "APPLICATION_CACHE" -> Right CBIFIApplicationCache
        "CANVAS" -> Right CBIFICanvas
        "CANVAS_TEXT" -> Right CBIFICanvasText
        "DRAG_AND_DROP" -> Right CBIFIDragAndDrop
        "HASH_CHANGE" -> Right CBIFIHashChange
        "HISTORY" -> Right CBIFIHistory
        "AUDIO" -> Right CBIFIAudio
        "VIDEO" -> Right CBIFIVideo
        "INDEXED_DB" -> Right CBIFIIndexedDB
        "INPUT_ATTR_AUTOCOMPLETE" -> Right CBIFIInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Right CBIFIInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Right CBIFIInputAttrList
        "INPUT_ATTR_PLACEHOLDER" -> Right CBIFIInputAttrPlaceholder
        "INPUT_ATTR_MAX" -> Right CBIFIInputAttrMax
        "INPUT_ATTR_MIN" -> Right CBIFIInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Right CBIFIInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Right CBIFIInputAttrPattern
        "INPUT_ATTR_REQUIRED" -> Right CBIFIInputAttrRequired
        "INPUT_ATTR_STEP" -> Right CBIFIInputAttrStep
        "INPUT_TYPE_SEARCH" -> Right CBIFIInputTypeSearch
        "INPUT_TYPE_TEL" -> Right CBIFIInputTypeTel
        "INPUT_TYPE_URL" -> Right CBIFIInputTypeURL
        "INPUT_TYPE_EMAIL" -> Right CBIFIInputTypeEmail
        "INPUT_TYPE_DATETIME" -> Right CBIFIInputTypeDatetime
        "INPUT_TYPE_DATE" -> Right CBIFIInputTypeDate
        "INPUT_TYPE_MONTH" -> Right CBIFIInputTypeMonth
        "INPUT_TYPE_WEEK" -> Right CBIFIInputTypeWeek
        "INPUT_TYPE_TIME" -> Right CBIFIInputTypeTime
        "INPUT_TYPE_DATETIME_LOCAL" -> Right CBIFIInputTypeDatetimeLocal
        "INPUT_TYPE_NUMBER" -> Right CBIFIInputTypeNumber
        "INPUT_TYPE_RANGE" -> Right CBIFIInputTypeRange
        "INPUT_TYPE_COLOR" -> Right CBIFIInputTypeColor
        "LOCAL_STORAGE" -> Right CBIFILocalStorage
        "POST_MESSAGE" -> Right CBIFIPostMessage
        "SESSION_STORAGE" -> Right CBIFISessionStorage
        "WEB_SOCKETS" -> Right CBIFIWebSockets
        "WEB_SQL_DATABASE" -> Right CBIFIWebSQLDatabase
        "WEB_WORKERS" -> Right CBIFIWebWorkers
        "GEO_LOCATION" -> Right CBIFIGeoLocation
        "INLINE_SVG" -> Right CBIFIInlineSvg
        "SMIL" -> Right CBIFISmil
        "SVG_HREF" -> Right CBIFISvgHref
        "SVG_CLIP_PATHS" -> Right CBIFISvgClipPaths
        "TOUCH" -> Right CBIFITouch
        "WEBGL" -> Right CBIFIWebgl
        "SVG_FILTERS" -> Right CBIFISvgFilters
        "SVG_FE_IMAGE" -> Right CBIFISvgFeImage
        x -> Left ("Unable to parse CreativeBackupImageFeaturesItem from: " <> x)

instance ToHttpApiData CreativeBackupImageFeaturesItem where
    toQueryParam = \case
        CBIFICssFontFace -> "CSS_FONT_FACE"
        CBIFICssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CBIFICssBOrderImage -> "CSS_BORDER_IMAGE"
        CBIFICssBOrderRadius -> "CSS_BORDER_RADIUS"
        CBIFICssBoxShadow -> "CSS_BOX_SHADOW"
        CBIFICssFlexBox -> "CSS_FLEX_BOX"
        CBIFICssHsla -> "CSS_HSLA"
        CBIFICssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CBIFICssOpacity -> "CSS_OPACITY"
        CBIFICssRgba -> "CSS_RGBA"
        CBIFICssTextShadow -> "CSS_TEXT_SHADOW"
        CBIFICssAnimations -> "CSS_ANIMATIONS"
        CBIFICssColumns -> "CSS_COLUMNS"
        CBIFICssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CBIFICssGradients -> "CSS_GRADIENTS"
        CBIFICssReflections -> "CSS_REFLECTIONS"
        CBIFICssTransforms -> "CSS_TRANSFORMS"
        CBIFICssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CBIFICssTransitions -> "CSS_TRANSITIONS"
        CBIFIApplicationCache -> "APPLICATION_CACHE"
        CBIFICanvas -> "CANVAS"
        CBIFICanvasText -> "CANVAS_TEXT"
        CBIFIDragAndDrop -> "DRAG_AND_DROP"
        CBIFIHashChange -> "HASH_CHANGE"
        CBIFIHistory -> "HISTORY"
        CBIFIAudio -> "AUDIO"
        CBIFIVideo -> "VIDEO"
        CBIFIIndexedDB -> "INDEXED_DB"
        CBIFIInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CBIFIInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CBIFIInputAttrList -> "INPUT_ATTR_LIST"
        CBIFIInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CBIFIInputAttrMax -> "INPUT_ATTR_MAX"
        CBIFIInputAttrMin -> "INPUT_ATTR_MIN"
        CBIFIInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CBIFIInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CBIFIInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CBIFIInputAttrStep -> "INPUT_ATTR_STEP"
        CBIFIInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CBIFIInputTypeTel -> "INPUT_TYPE_TEL"
        CBIFIInputTypeURL -> "INPUT_TYPE_URL"
        CBIFIInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CBIFIInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CBIFIInputTypeDate -> "INPUT_TYPE_DATE"
        CBIFIInputTypeMonth -> "INPUT_TYPE_MONTH"
        CBIFIInputTypeWeek -> "INPUT_TYPE_WEEK"
        CBIFIInputTypeTime -> "INPUT_TYPE_TIME"
        CBIFIInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CBIFIInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CBIFIInputTypeRange -> "INPUT_TYPE_RANGE"
        CBIFIInputTypeColor -> "INPUT_TYPE_COLOR"
        CBIFILocalStorage -> "LOCAL_STORAGE"
        CBIFIPostMessage -> "POST_MESSAGE"
        CBIFISessionStorage -> "SESSION_STORAGE"
        CBIFIWebSockets -> "WEB_SOCKETS"
        CBIFIWebSQLDatabase -> "WEB_SQL_DATABASE"
        CBIFIWebWorkers -> "WEB_WORKERS"
        CBIFIGeoLocation -> "GEO_LOCATION"
        CBIFIInlineSvg -> "INLINE_SVG"
        CBIFISmil -> "SMIL"
        CBIFISvgHref -> "SVG_HREF"
        CBIFISvgClipPaths -> "SVG_CLIP_PATHS"
        CBIFITouch -> "TOUCH"
        CBIFIWebgl -> "WEBGL"
        CBIFISvgFilters -> "SVG_FILTERS"
        CBIFISvgFeImage -> "SVG_FE_IMAGE"

instance FromJSON CreativeBackupImageFeaturesItem where
    parseJSON = parseJSONText "CreativeBackupImageFeaturesItem"

instance ToJSON CreativeBackupImageFeaturesItem where
    toJSON = toJSONText

-- | Order of sorted results.
data AdvertisersListSortOrder
    = ALSOAscending
      -- ^ @ASCENDING@
    | ALSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertisersListSortOrder

instance FromHttpApiData AdvertisersListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right ALSOAscending
        "DESCENDING" -> Right ALSODescending
        x -> Left ("Unable to parse AdvertisersListSortOrder from: " <> x)

instance ToHttpApiData AdvertisersListSortOrder where
    toQueryParam = \case
        ALSOAscending -> "ASCENDING"
        ALSODescending -> "DESCENDING"

instance FromJSON AdvertisersListSortOrder where
    parseJSON = parseJSONText "AdvertisersListSortOrder"

instance ToJSON AdvertisersListSortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data TargetingTemplatesListSortField
    = TTLSFID
      -- ^ @ID@
    | TTLSFName
      -- ^ @NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetingTemplatesListSortField

instance FromHttpApiData TargetingTemplatesListSortField where
    parseQueryParam = \case
        "ID" -> Right TTLSFID
        "NAME" -> Right TTLSFName
        x -> Left ("Unable to parse TargetingTemplatesListSortField from: " <> x)

instance ToHttpApiData TargetingTemplatesListSortField where
    toQueryParam = \case
        TTLSFID -> "ID"
        TTLSFName -> "NAME"

instance FromJSON TargetingTemplatesListSortField where
    parseJSON = parseJSONText "TargetingTemplatesListSortField"

instance ToJSON TargetingTemplatesListSortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data CreativeFieldsListSortField
    = CFLSFID
      -- ^ @ID@
    | CFLSFName
      -- ^ @NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeFieldsListSortField

instance FromHttpApiData CreativeFieldsListSortField where
    parseQueryParam = \case
        "ID" -> Right CFLSFID
        "NAME" -> Right CFLSFName
        x -> Left ("Unable to parse CreativeFieldsListSortField from: " <> x)

instance ToHttpApiData CreativeFieldsListSortField where
    toQueryParam = \case
        CFLSFID -> "ID"
        CFLSFName -> "NAME"

instance FromJSON CreativeFieldsListSortField where
    parseJSON = parseJSONText "CreativeFieldsListSortField"

instance ToJSON CreativeFieldsListSortField where
    toJSON = toJSONText

-- | Variable name in the tag. This is a required field.
data UserDefinedVariableConfigurationVariableType
    = UDVCVTU1
      -- ^ @U1@
    | UDVCVTU2
      -- ^ @U2@
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
    | UDVCVTU20
      -- ^ @U20@
    | UDVCVTU21
      -- ^ @U21@
    | UDVCVTU22
      -- ^ @U22@
    | UDVCVTU23
      -- ^ @U23@
    | UDVCVTU24
      -- ^ @U24@
    | UDVCVTU25
      -- ^ @U25@
    | UDVCVTU26
      -- ^ @U26@
    | UDVCVTU27
      -- ^ @U27@
    | UDVCVTU28
      -- ^ @U28@
    | UDVCVTU29
      -- ^ @U29@
    | UDVCVTU30
      -- ^ @U30@
    | UDVCVTU31
      -- ^ @U31@
    | UDVCVTU32
      -- ^ @U32@
    | UDVCVTU33
      -- ^ @U33@
    | UDVCVTU34
      -- ^ @U34@
    | UDVCVTU35
      -- ^ @U35@
    | UDVCVTU36
      -- ^ @U36@
    | UDVCVTU37
      -- ^ @U37@
    | UDVCVTU38
      -- ^ @U38@
    | UDVCVTU39
      -- ^ @U39@
    | UDVCVTU40
      -- ^ @U40@
    | UDVCVTU41
      -- ^ @U41@
    | UDVCVTU42
      -- ^ @U42@
    | UDVCVTU43
      -- ^ @U43@
    | UDVCVTU44
      -- ^ @U44@
    | UDVCVTU45
      -- ^ @U45@
    | UDVCVTU46
      -- ^ @U46@
    | UDVCVTU47
      -- ^ @U47@
    | UDVCVTU48
      -- ^ @U48@
    | UDVCVTU49
      -- ^ @U49@
    | UDVCVTU50
      -- ^ @U50@
    | UDVCVTU51
      -- ^ @U51@
    | UDVCVTU52
      -- ^ @U52@
    | UDVCVTU53
      -- ^ @U53@
    | UDVCVTU54
      -- ^ @U54@
    | UDVCVTU55
      -- ^ @U55@
    | UDVCVTU56
      -- ^ @U56@
    | UDVCVTU57
      -- ^ @U57@
    | UDVCVTU58
      -- ^ @U58@
    | UDVCVTU59
      -- ^ @U59@
    | UDVCVTU60
      -- ^ @U60@
    | UDVCVTU61
      -- ^ @U61@
    | UDVCVTU62
      -- ^ @U62@
    | UDVCVTU63
      -- ^ @U63@
    | UDVCVTU64
      -- ^ @U64@
    | UDVCVTU65
      -- ^ @U65@
    | UDVCVTU66
      -- ^ @U66@
    | UDVCVTU67
      -- ^ @U67@
    | UDVCVTU68
      -- ^ @U68@
    | UDVCVTU69
      -- ^ @U69@
    | UDVCVTU70
      -- ^ @U70@
    | UDVCVTU71
      -- ^ @U71@
    | UDVCVTU72
      -- ^ @U72@
    | UDVCVTU73
      -- ^ @U73@
    | UDVCVTU74
      -- ^ @U74@
    | UDVCVTU75
      -- ^ @U75@
    | UDVCVTU76
      -- ^ @U76@
    | UDVCVTU77
      -- ^ @U77@
    | UDVCVTU78
      -- ^ @U78@
    | UDVCVTU79
      -- ^ @U79@
    | UDVCVTU80
      -- ^ @U80@
    | UDVCVTU81
      -- ^ @U81@
    | UDVCVTU82
      -- ^ @U82@
    | UDVCVTU83
      -- ^ @U83@
    | UDVCVTU84
      -- ^ @U84@
    | UDVCVTU85
      -- ^ @U85@
    | UDVCVTU86
      -- ^ @U86@
    | UDVCVTU87
      -- ^ @U87@
    | UDVCVTU88
      -- ^ @U88@
    | UDVCVTU89
      -- ^ @U89@
    | UDVCVTU90
      -- ^ @U90@
    | UDVCVTU91
      -- ^ @U91@
    | UDVCVTU92
      -- ^ @U92@
    | UDVCVTU93
      -- ^ @U93@
    | UDVCVTU94
      -- ^ @U94@
    | UDVCVTU95
      -- ^ @U95@
    | UDVCVTU96
      -- ^ @U96@
    | UDVCVTU97
      -- ^ @U97@
    | UDVCVTU98
      -- ^ @U98@
    | UDVCVTU99
      -- ^ @U99@
    | UDVCVTU100
      -- ^ @U100@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserDefinedVariableConfigurationVariableType

instance FromHttpApiData UserDefinedVariableConfigurationVariableType where
    parseQueryParam = \case
        "U1" -> Right UDVCVTU1
        "U2" -> Right UDVCVTU2
        "U3" -> Right UDVCVTU3
        "U4" -> Right UDVCVTU4
        "U5" -> Right UDVCVTU5
        "U6" -> Right UDVCVTU6
        "U7" -> Right UDVCVTU7
        "U8" -> Right UDVCVTU8
        "U9" -> Right UDVCVTU9
        "U10" -> Right UDVCVTU10
        "U11" -> Right UDVCVTU11
        "U12" -> Right UDVCVTU12
        "U13" -> Right UDVCVTU13
        "U14" -> Right UDVCVTU14
        "U15" -> Right UDVCVTU15
        "U16" -> Right UDVCVTU16
        "U17" -> Right UDVCVTU17
        "U18" -> Right UDVCVTU18
        "U19" -> Right UDVCVTU19
        "U20" -> Right UDVCVTU20
        "U21" -> Right UDVCVTU21
        "U22" -> Right UDVCVTU22
        "U23" -> Right UDVCVTU23
        "U24" -> Right UDVCVTU24
        "U25" -> Right UDVCVTU25
        "U26" -> Right UDVCVTU26
        "U27" -> Right UDVCVTU27
        "U28" -> Right UDVCVTU28
        "U29" -> Right UDVCVTU29
        "U30" -> Right UDVCVTU30
        "U31" -> Right UDVCVTU31
        "U32" -> Right UDVCVTU32
        "U33" -> Right UDVCVTU33
        "U34" -> Right UDVCVTU34
        "U35" -> Right UDVCVTU35
        "U36" -> Right UDVCVTU36
        "U37" -> Right UDVCVTU37
        "U38" -> Right UDVCVTU38
        "U39" -> Right UDVCVTU39
        "U40" -> Right UDVCVTU40
        "U41" -> Right UDVCVTU41
        "U42" -> Right UDVCVTU42
        "U43" -> Right UDVCVTU43
        "U44" -> Right UDVCVTU44
        "U45" -> Right UDVCVTU45
        "U46" -> Right UDVCVTU46
        "U47" -> Right UDVCVTU47
        "U48" -> Right UDVCVTU48
        "U49" -> Right UDVCVTU49
        "U50" -> Right UDVCVTU50
        "U51" -> Right UDVCVTU51
        "U52" -> Right UDVCVTU52
        "U53" -> Right UDVCVTU53
        "U54" -> Right UDVCVTU54
        "U55" -> Right UDVCVTU55
        "U56" -> Right UDVCVTU56
        "U57" -> Right UDVCVTU57
        "U58" -> Right UDVCVTU58
        "U59" -> Right UDVCVTU59
        "U60" -> Right UDVCVTU60
        "U61" -> Right UDVCVTU61
        "U62" -> Right UDVCVTU62
        "U63" -> Right UDVCVTU63
        "U64" -> Right UDVCVTU64
        "U65" -> Right UDVCVTU65
        "U66" -> Right UDVCVTU66
        "U67" -> Right UDVCVTU67
        "U68" -> Right UDVCVTU68
        "U69" -> Right UDVCVTU69
        "U70" -> Right UDVCVTU70
        "U71" -> Right UDVCVTU71
        "U72" -> Right UDVCVTU72
        "U73" -> Right UDVCVTU73
        "U74" -> Right UDVCVTU74
        "U75" -> Right UDVCVTU75
        "U76" -> Right UDVCVTU76
        "U77" -> Right UDVCVTU77
        "U78" -> Right UDVCVTU78
        "U79" -> Right UDVCVTU79
        "U80" -> Right UDVCVTU80
        "U81" -> Right UDVCVTU81
        "U82" -> Right UDVCVTU82
        "U83" -> Right UDVCVTU83
        "U84" -> Right UDVCVTU84
        "U85" -> Right UDVCVTU85
        "U86" -> Right UDVCVTU86
        "U87" -> Right UDVCVTU87
        "U88" -> Right UDVCVTU88
        "U89" -> Right UDVCVTU89
        "U90" -> Right UDVCVTU90
        "U91" -> Right UDVCVTU91
        "U92" -> Right UDVCVTU92
        "U93" -> Right UDVCVTU93
        "U94" -> Right UDVCVTU94
        "U95" -> Right UDVCVTU95
        "U96" -> Right UDVCVTU96
        "U97" -> Right UDVCVTU97
        "U98" -> Right UDVCVTU98
        "U99" -> Right UDVCVTU99
        "U100" -> Right UDVCVTU100
        x -> Left ("Unable to parse UserDefinedVariableConfigurationVariableType from: " <> x)

instance ToHttpApiData UserDefinedVariableConfigurationVariableType where
    toQueryParam = \case
        UDVCVTU1 -> "U1"
        UDVCVTU2 -> "U2"
        UDVCVTU3 -> "U3"
        UDVCVTU4 -> "U4"
        UDVCVTU5 -> "U5"
        UDVCVTU6 -> "U6"
        UDVCVTU7 -> "U7"
        UDVCVTU8 -> "U8"
        UDVCVTU9 -> "U9"
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
        UDVCVTU20 -> "U20"
        UDVCVTU21 -> "U21"
        UDVCVTU22 -> "U22"
        UDVCVTU23 -> "U23"
        UDVCVTU24 -> "U24"
        UDVCVTU25 -> "U25"
        UDVCVTU26 -> "U26"
        UDVCVTU27 -> "U27"
        UDVCVTU28 -> "U28"
        UDVCVTU29 -> "U29"
        UDVCVTU30 -> "U30"
        UDVCVTU31 -> "U31"
        UDVCVTU32 -> "U32"
        UDVCVTU33 -> "U33"
        UDVCVTU34 -> "U34"
        UDVCVTU35 -> "U35"
        UDVCVTU36 -> "U36"
        UDVCVTU37 -> "U37"
        UDVCVTU38 -> "U38"
        UDVCVTU39 -> "U39"
        UDVCVTU40 -> "U40"
        UDVCVTU41 -> "U41"
        UDVCVTU42 -> "U42"
        UDVCVTU43 -> "U43"
        UDVCVTU44 -> "U44"
        UDVCVTU45 -> "U45"
        UDVCVTU46 -> "U46"
        UDVCVTU47 -> "U47"
        UDVCVTU48 -> "U48"
        UDVCVTU49 -> "U49"
        UDVCVTU50 -> "U50"
        UDVCVTU51 -> "U51"
        UDVCVTU52 -> "U52"
        UDVCVTU53 -> "U53"
        UDVCVTU54 -> "U54"
        UDVCVTU55 -> "U55"
        UDVCVTU56 -> "U56"
        UDVCVTU57 -> "U57"
        UDVCVTU58 -> "U58"
        UDVCVTU59 -> "U59"
        UDVCVTU60 -> "U60"
        UDVCVTU61 -> "U61"
        UDVCVTU62 -> "U62"
        UDVCVTU63 -> "U63"
        UDVCVTU64 -> "U64"
        UDVCVTU65 -> "U65"
        UDVCVTU66 -> "U66"
        UDVCVTU67 -> "U67"
        UDVCVTU68 -> "U68"
        UDVCVTU69 -> "U69"
        UDVCVTU70 -> "U70"
        UDVCVTU71 -> "U71"
        UDVCVTU72 -> "U72"
        UDVCVTU73 -> "U73"
        UDVCVTU74 -> "U74"
        UDVCVTU75 -> "U75"
        UDVCVTU76 -> "U76"
        UDVCVTU77 -> "U77"
        UDVCVTU78 -> "U78"
        UDVCVTU79 -> "U79"
        UDVCVTU80 -> "U80"
        UDVCVTU81 -> "U81"
        UDVCVTU82 -> "U82"
        UDVCVTU83 -> "U83"
        UDVCVTU84 -> "U84"
        UDVCVTU85 -> "U85"
        UDVCVTU86 -> "U86"
        UDVCVTU87 -> "U87"
        UDVCVTU88 -> "U88"
        UDVCVTU89 -> "U89"
        UDVCVTU90 -> "U90"
        UDVCVTU91 -> "U91"
        UDVCVTU92 -> "U92"
        UDVCVTU93 -> "U93"
        UDVCVTU94 -> "U94"
        UDVCVTU95 -> "U95"
        UDVCVTU96 -> "U96"
        UDVCVTU97 -> "U97"
        UDVCVTU98 -> "U98"
        UDVCVTU99 -> "U99"
        UDVCVTU100 -> "U100"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FsCommandPositionOption

instance FromHttpApiData FsCommandPositionOption where
    parseQueryParam = \case
        "CENTERED" -> Right Centered
        "DISTANCE_FROM_TOP_LEFT_CORNER" -> Right DistanceFromTopLeftCorner
        x -> Left ("Unable to parse FsCommandPositionOption from: " <> x)

instance ToHttpApiData FsCommandPositionOption where
    toQueryParam = \case
        Centered -> "CENTERED"
        DistanceFromTopLeftCorner -> "DISTANCE_FROM_TOP_LEFT_CORNER"

instance FromJSON FsCommandPositionOption where
    parseJSON = parseJSONText "FsCommandPositionOption"

instance ToJSON FsCommandPositionOption where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AdvertiserLandingPagesListSortField
    = ALPLSFID
      -- ^ @ID@
    | ALPLSFName
      -- ^ @NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertiserLandingPagesListSortField

instance FromHttpApiData AdvertiserLandingPagesListSortField where
    parseQueryParam = \case
        "ID" -> Right ALPLSFID
        "NAME" -> Right ALPLSFName
        x -> Left ("Unable to parse AdvertiserLandingPagesListSortField from: " <> x)

instance ToHttpApiData AdvertiserLandingPagesListSortField where
    toQueryParam = \case
        ALPLSFID -> "ID"
        ALPLSFName -> "NAME"

instance FromJSON AdvertiserLandingPagesListSortField where
    parseJSON = parseJSONText "AdvertiserLandingPagesListSortField"

instance ToJSON AdvertiserLandingPagesListSortField where
    toJSON = toJSONText

-- | Order of sorted results.
data UserRolesListSortOrder
    = URLSOAscending
      -- ^ @ASCENDING@
    | URLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserRolesListSortOrder

instance FromHttpApiData UserRolesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right URLSOAscending
        "DESCENDING" -> Right URLSODescending
        x -> Left ("Unable to parse UserRolesListSortOrder from: " <> x)

instance ToHttpApiData UserRolesListSortOrder where
    toQueryParam = \case
        URLSOAscending -> "ASCENDING"
        URLSODescending -> "DESCENDING"

instance FromJSON UserRolesListSortOrder where
    parseJSON = parseJSONText "UserRolesListSortOrder"

instance ToJSON UserRolesListSortOrder where
    toJSON = toJSONText

-- | Select only placements that are associated with these compatibilities.
-- DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop or
-- on mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO
-- refers to rendering in in-stream video ads developed with the VAST
-- standard.
data PlacementsListCompatibilities
    = PLCDisplay
      -- ^ @DISPLAY@
    | PLCDisplayInterstitial
      -- ^ @DISPLAY_INTERSTITIAL@
    | PLCApp
      -- ^ @APP@
    | PLCAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | PLCInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | PLCInStreamAudio
      -- ^ @IN_STREAM_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementsListCompatibilities

instance FromHttpApiData PlacementsListCompatibilities where
    parseQueryParam = \case
        "DISPLAY" -> Right PLCDisplay
        "DISPLAY_INTERSTITIAL" -> Right PLCDisplayInterstitial
        "APP" -> Right PLCApp
        "APP_INTERSTITIAL" -> Right PLCAppInterstitial
        "IN_STREAM_VIDEO" -> Right PLCInStreamVideo
        "IN_STREAM_AUDIO" -> Right PLCInStreamAudio
        x -> Left ("Unable to parse PlacementsListCompatibilities from: " <> x)

instance ToHttpApiData PlacementsListCompatibilities where
    toQueryParam = \case
        PLCDisplay -> "DISPLAY"
        PLCDisplayInterstitial -> "DISPLAY_INTERSTITIAL"
        PLCApp -> "APP"
        PLCAppInterstitial -> "APP_INTERSTITIAL"
        PLCInStreamVideo -> "IN_STREAM_VIDEO"
        PLCInStreamAudio -> "IN_STREAM_AUDIO"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderDocumentsListSortField

instance FromHttpApiData OrderDocumentsListSortField where
    parseQueryParam = \case
        "ID" -> Right ODLSFID
        "NAME" -> Right ODLSFName
        x -> Left ("Unable to parse OrderDocumentsListSortField from: " <> x)

instance ToHttpApiData OrderDocumentsListSortField where
    toQueryParam = \case
        ODLSFID -> "ID"
        ODLSFName -> "NAME"

instance FromJSON OrderDocumentsListSortField where
    parseJSON = parseJSONText "OrderDocumentsListSortField"

instance ToJSON OrderDocumentsListSortField where
    toJSON = toJSONText

data CreativeCompatibilityItem
    = CCIDisplay
      -- ^ @DISPLAY@
    | CCIDisplayInterstitial
      -- ^ @DISPLAY_INTERSTITIAL@
    | CCIApp
      -- ^ @APP@
    | CCIAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | CCIInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | CCIInStreamAudio
      -- ^ @IN_STREAM_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeCompatibilityItem

instance FromHttpApiData CreativeCompatibilityItem where
    parseQueryParam = \case
        "DISPLAY" -> Right CCIDisplay
        "DISPLAY_INTERSTITIAL" -> Right CCIDisplayInterstitial
        "APP" -> Right CCIApp
        "APP_INTERSTITIAL" -> Right CCIAppInterstitial
        "IN_STREAM_VIDEO" -> Right CCIInStreamVideo
        "IN_STREAM_AUDIO" -> Right CCIInStreamAudio
        x -> Left ("Unable to parse CreativeCompatibilityItem from: " <> x)

instance ToHttpApiData CreativeCompatibilityItem where
    toQueryParam = \case
        CCIDisplay -> "DISPLAY"
        CCIDisplayInterstitial -> "DISPLAY_INTERSTITIAL"
        CCIApp -> "APP"
        CCIAppInterstitial -> "APP_INTERSTITIAL"
        CCIInStreamVideo -> "IN_STREAM_VIDEO"
        CCIInStreamAudio -> "IN_STREAM_AUDIO"

instance FromJSON CreativeCompatibilityItem where
    parseJSON = parseJSONText "CreativeCompatibilityItem"

instance ToJSON CreativeCompatibilityItem where
    toJSON = toJSONText

-- | The type of delivery for the owner to receive, if enabled.
data ReportDeliveryEmailOwnerDeliveryType
    = RDEODTLink
      -- ^ @LINK@
    | RDEODTAttachment
      -- ^ @ATTACHMENT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportDeliveryEmailOwnerDeliveryType

instance FromHttpApiData ReportDeliveryEmailOwnerDeliveryType where
    parseQueryParam = \case
        "LINK" -> Right RDEODTLink
        "ATTACHMENT" -> Right RDEODTAttachment
        x -> Left ("Unable to parse ReportDeliveryEmailOwnerDeliveryType from: " <> x)

instance ToHttpApiData ReportDeliveryEmailOwnerDeliveryType where
    toQueryParam = \case
        RDEODTLink -> "LINK"
        RDEODTAttachment -> "ATTACHMENT"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SiteContactContactType

instance FromHttpApiData SiteContactContactType where
    parseQueryParam = \case
        "SALES_PERSON" -> Right SalesPerson
        "TRAFFICKER" -> Right Trafficker
        x -> Left ("Unable to parse SiteContactContactType from: " <> x)

instance ToHttpApiData SiteContactContactType where
    toQueryParam = \case
        SalesPerson -> "SALES_PERSON"
        Trafficker -> "TRAFFICKER"

instance FromJSON SiteContactContactType where
    parseJSON = parseJSONText "SiteContactContactType"

instance ToJSON SiteContactContactType where
    toJSON = toJSONText

-- | Order of sorted results.
data ReportsListSortOrder
    = RLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | RLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportsListSortOrder

instance FromHttpApiData ReportsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right RLSOAscending
        "DESCENDING" -> Right RLSODescending
        x -> Left ("Unable to parse ReportsListSortOrder from: " <> x)

instance ToHttpApiData ReportsListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetableRemarketingListsListSortField

instance FromHttpApiData TargetableRemarketingListsListSortField where
    parseQueryParam = \case
        "ID" -> Right TRLLSFID
        "NAME" -> Right TRLLSFName
        x -> Left ("Unable to parse TargetableRemarketingListsListSortField from: " <> x)

instance ToHttpApiData TargetableRemarketingListsListSortField where
    toQueryParam = \case
        TRLLSFID -> "ID"
        TRLLSFName -> "NAME"

instance FromJSON TargetableRemarketingListsListSortField where
    parseJSON = parseJSONText "TargetableRemarketingListsListSortField"

instance ToJSON TargetableRemarketingListsListSortField where
    toJSON = toJSONText

-- | Order of sorted results.
data CampaignsListSortOrder
    = CLSOAscending
      -- ^ @ASCENDING@
    | CLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CampaignsListSortOrder

instance FromHttpApiData CampaignsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right CLSOAscending
        "DESCENDING" -> Right CLSODescending
        x -> Left ("Unable to parse CampaignsListSortOrder from: " <> x)

instance ToHttpApiData CampaignsListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityGroupsListType

instance FromHttpApiData FloodlightActivityGroupsListType where
    parseQueryParam = \case
        "COUNTER" -> Right Counter
        "SALE" -> Right Sale
        x -> Left ("Unable to parse FloodlightActivityGroupsListType from: " <> x)

instance ToHttpApiData FloodlightActivityGroupsListType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightConfigurationFirstDayOfWeek

instance FromHttpApiData FloodlightConfigurationFirstDayOfWeek where
    parseQueryParam = \case
        "MONDAY" -> Right Monday
        "SUNDAY" -> Right Sunday
        x -> Left ("Unable to parse FloodlightConfigurationFirstDayOfWeek from: " <> x)

instance ToHttpApiData FloodlightConfigurationFirstDayOfWeek where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeliverySchedulePriority

instance FromHttpApiData DeliverySchedulePriority where
    parseQueryParam = \case
        "AD_PRIORITY_01" -> Right AdPriority01
        "AD_PRIORITY_02" -> Right AdPriority02
        "AD_PRIORITY_03" -> Right AdPriority03
        "AD_PRIORITY_04" -> Right AdPriority04
        "AD_PRIORITY_05" -> Right AdPriority05
        "AD_PRIORITY_06" -> Right AdPriority06
        "AD_PRIORITY_07" -> Right AdPriority07
        "AD_PRIORITY_08" -> Right AdPriority08
        "AD_PRIORITY_09" -> Right AdPriority09
        "AD_PRIORITY_10" -> Right AdPriority10
        "AD_PRIORITY_11" -> Right AdPriority11
        "AD_PRIORITY_12" -> Right AdPriority12
        "AD_PRIORITY_13" -> Right AdPriority13
        "AD_PRIORITY_14" -> Right AdPriority14
        "AD_PRIORITY_15" -> Right AdPriority15
        "AD_PRIORITY_16" -> Right AdPriority16
        x -> Left ("Unable to parse DeliverySchedulePriority from: " <> x)

instance ToHttpApiData DeliverySchedulePriority where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivitiesListFloodlightActivityGroupType

instance FromHttpApiData FloodlightActivitiesListFloodlightActivityGroupType where
    parseQueryParam = \case
        "COUNTER" -> Right FALFAGTCounter
        "SALE" -> Right FALFAGTSale
        x -> Left ("Unable to parse FloodlightActivitiesListFloodlightActivityGroupType from: " <> x)

instance ToHttpApiData FloodlightActivitiesListFloodlightActivityGroupType where
    toQueryParam = \case
        FALFAGTCounter -> "COUNTER"
        FALFAGTSale -> "SALE"

instance FromJSON FloodlightActivitiesListFloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivitiesListFloodlightActivityGroupType"

instance ToJSON FloodlightActivitiesListFloodlightActivityGroupType where
    toJSON = toJSONText

-- | Source application where creative was authored. Presently, only DBM
-- authored creatives will have this field set. Applicable to all creative
-- types.
data CreativeAuthoringSource
    = CreativeAuthoringSourceDcm
      -- ^ @CREATIVE_AUTHORING_SOURCE_DCM@
    | CreativeAuthoringSourceDBm
      -- ^ @CREATIVE_AUTHORING_SOURCE_DBM@
    | CreativeAuthoringSourceStudio
      -- ^ @CREATIVE_AUTHORING_SOURCE_STUDIO@
    | CreativeAuthoringSourceGwd
      -- ^ @CREATIVE_AUTHORING_SOURCE_GWD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAuthoringSource

instance FromHttpApiData CreativeAuthoringSource where
    parseQueryParam = \case
        "CREATIVE_AUTHORING_SOURCE_DCM" -> Right CreativeAuthoringSourceDcm
        "CREATIVE_AUTHORING_SOURCE_DBM" -> Right CreativeAuthoringSourceDBm
        "CREATIVE_AUTHORING_SOURCE_STUDIO" -> Right CreativeAuthoringSourceStudio
        "CREATIVE_AUTHORING_SOURCE_GWD" -> Right CreativeAuthoringSourceGwd
        x -> Left ("Unable to parse CreativeAuthoringSource from: " <> x)

instance ToHttpApiData CreativeAuthoringSource where
    toQueryParam = \case
        CreativeAuthoringSourceDcm -> "CREATIVE_AUTHORING_SOURCE_DCM"
        CreativeAuthoringSourceDBm -> "CREATIVE_AUTHORING_SOURCE_DBM"
        CreativeAuthoringSourceStudio -> "CREATIVE_AUTHORING_SOURCE_STUDIO"
        CreativeAuthoringSourceGwd -> "CREATIVE_AUTHORING_SOURCE_GWD"

instance FromJSON CreativeAuthoringSource where
    parseJSON = parseJSONText "CreativeAuthoringSource"

instance ToJSON CreativeAuthoringSource where
    toJSON = toJSONText

-- | Payment source for this placement. This is a required field that is
-- read-only after insertion.
data PlacementPaymentSource
    = PPSPlacementAgencyPaid
      -- ^ @PLACEMENT_AGENCY_PAID@
    | PPSPlacementPublisherPaid
      -- ^ @PLACEMENT_PUBLISHER_PAID@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementPaymentSource

instance FromHttpApiData PlacementPaymentSource where
    parseQueryParam = \case
        "PLACEMENT_AGENCY_PAID" -> Right PPSPlacementAgencyPaid
        "PLACEMENT_PUBLISHER_PAID" -> Right PPSPlacementPublisherPaid
        x -> Left ("Unable to parse PlacementPaymentSource from: " <> x)

instance ToHttpApiData PlacementPaymentSource where
    toQueryParam = \case
        PPSPlacementAgencyPaid -> "PLACEMENT_AGENCY_PAID"
        PPSPlacementPublisherPaid -> "PLACEMENT_PUBLISHER_PAID"

instance FromJSON PlacementPaymentSource where
    parseJSON = parseJSONText "PlacementPaymentSource"

instance ToJSON PlacementPaymentSource where
    toJSON = toJSONText

-- | Order of sorted results.
data ReportsFilesListSortOrder
    = RFLSOAscending
      -- ^ @ASCENDING@
    | RFLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportsFilesListSortOrder

instance FromHttpApiData ReportsFilesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right RFLSOAscending
        "DESCENDING" -> Right RFLSODescending
        x -> Left ("Unable to parse ReportsFilesListSortOrder from: " <> x)

instance ToHttpApiData ReportsFilesListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InventoryItemsListSortField

instance FromHttpApiData InventoryItemsListSortField where
    parseQueryParam = \case
        "ID" -> Right IILSFID
        "NAME" -> Right IILSFName
        x -> Left ("Unable to parse InventoryItemsListSortField from: " <> x)

instance ToHttpApiData InventoryItemsListSortField where
    toQueryParam = \case
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
    = ETTImpressionImageEventTag
      -- ^ @IMPRESSION_IMAGE_EVENT_TAG@
    | ETTImpressionJavascriptEventTag
      -- ^ @IMPRESSION_JAVASCRIPT_EVENT_TAG@
    | ETTClickThroughEventTag
      -- ^ @CLICK_THROUGH_EVENT_TAG@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventTagType

instance FromHttpApiData EventTagType where
    parseQueryParam = \case
        "IMPRESSION_IMAGE_EVENT_TAG" -> Right ETTImpressionImageEventTag
        "IMPRESSION_JAVASCRIPT_EVENT_TAG" -> Right ETTImpressionJavascriptEventTag
        "CLICK_THROUGH_EVENT_TAG" -> Right ETTClickThroughEventTag
        x -> Left ("Unable to parse EventTagType from: " <> x)

instance ToHttpApiData EventTagType where
    toQueryParam = \case
        ETTImpressionImageEventTag -> "IMPRESSION_IMAGE_EVENT_TAG"
        ETTImpressionJavascriptEventTag -> "IMPRESSION_JAVASCRIPT_EVENT_TAG"
        ETTClickThroughEventTag -> "CLICK_THROUGH_EVENT_TAG"

instance FromJSON EventTagType where
    parseJSON = parseJSONText "EventTagType"

instance ToJSON EventTagType where
    toJSON = toJSONText

-- | Order of sorted results.
data CreativesListSortOrder
    = CAscending
      -- ^ @ASCENDING@
    | CDescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativesListSortOrder

instance FromHttpApiData CreativesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right CAscending
        "DESCENDING" -> Right CDescending
        x -> Left ("Unable to parse CreativesListSortOrder from: " <> x)

instance ToHttpApiData CreativesListSortOrder where
    toQueryParam = \case
        CAscending -> "ASCENDING"
        CDescending -> "DESCENDING"

instance FromJSON CreativesListSortOrder where
    parseJSON = parseJSONText "CreativesListSortOrder"

instance ToJSON CreativesListSortOrder where
    toJSON = toJSONText

-- | Measurement partner used for tag wrapping.
data MeasurementPartnerCampaignLinkMeasurementPartner
    = MPCLMPNone
      -- ^ @NONE@
    | MPCLMPIntegralAdScience
      -- ^ @INTEGRAL_AD_SCIENCE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MeasurementPartnerCampaignLinkMeasurementPartner

instance FromHttpApiData MeasurementPartnerCampaignLinkMeasurementPartner where
    parseQueryParam = \case
        "NONE" -> Right MPCLMPNone
        "INTEGRAL_AD_SCIENCE" -> Right MPCLMPIntegralAdScience
        x -> Left ("Unable to parse MeasurementPartnerCampaignLinkMeasurementPartner from: " <> x)

instance ToHttpApiData MeasurementPartnerCampaignLinkMeasurementPartner where
    toQueryParam = \case
        MPCLMPNone -> "NONE"
        MPCLMPIntegralAdScience -> "INTEGRAL_AD_SCIENCE"

instance FromJSON MeasurementPartnerCampaignLinkMeasurementPartner where
    parseJSON = parseJSONText "MeasurementPartnerCampaignLinkMeasurementPartner"

instance ToJSON MeasurementPartnerCampaignLinkMeasurementPartner where
    toJSON = toJSONText

-- | Select only inventory items with this type.
data InventoryItemsListType
    = PlanningPlacementTypeRegular
      -- ^ @PLANNING_PLACEMENT_TYPE_REGULAR@
    | PlanningPlacementTypeCredit
      -- ^ @PLANNING_PLACEMENT_TYPE_CREDIT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InventoryItemsListType

instance FromHttpApiData InventoryItemsListType where
    parseQueryParam = \case
        "PLANNING_PLACEMENT_TYPE_REGULAR" -> Right PlanningPlacementTypeRegular
        "PLANNING_PLACEMENT_TYPE_CREDIT" -> Right PlanningPlacementTypeCredit
        x -> Left ("Unable to parse InventoryItemsListType from: " <> x)

instance ToHttpApiData InventoryItemsListType where
    toQueryParam = \case
        PlanningPlacementTypeRegular -> "PLANNING_PLACEMENT_TYPE_REGULAR"
        PlanningPlacementTypeCredit -> "PLANNING_PLACEMENT_TYPE_CREDIT"

instance FromJSON InventoryItemsListType where
    parseJSON = parseJSONText "InventoryItemsListType"

instance ToJSON InventoryItemsListType where
    toJSON = toJSONText

-- | Popup window position either centered or at specific coordinate.
data PopupWindowPropertiesPositionType
    = Center
      -- ^ @CENTER@
    | Coordinates
      -- ^ @COORDINATES@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PopupWindowPropertiesPositionType

instance FromHttpApiData PopupWindowPropertiesPositionType where
    parseQueryParam = \case
        "CENTER" -> Right Center
        "COORDINATES" -> Right Coordinates
        x -> Left ("Unable to parse PopupWindowPropertiesPositionType from: " <> x)

instance ToHttpApiData PopupWindowPropertiesPositionType where
    toQueryParam = \case
        Center -> "CENTER"
        Coordinates -> "COORDINATES"

instance FromJSON PopupWindowPropertiesPositionType where
    parseJSON = parseJSONText "PopupWindowPropertiesPositionType"

instance ToJSON PopupWindowPropertiesPositionType where
    toJSON = toJSONText

-- | Option specifying how keywords are embedded in ad tags. This setting can
-- be used to specify whether keyword placeholders are inserted in
-- placement tags for this site. Publishers can then add keywords to those
-- placeholders.
data TagSettingKeywordOption
    = PlaceholderWithListOfKeywords
      -- ^ @PLACEHOLDER_WITH_LIST_OF_KEYWORDS@
    | Ignore
      -- ^ @IGNORE@
    | GenerateSeparateTagForEachKeyword
      -- ^ @GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TagSettingKeywordOption

instance FromHttpApiData TagSettingKeywordOption where
    parseQueryParam = \case
        "PLACEHOLDER_WITH_LIST_OF_KEYWORDS" -> Right PlaceholderWithListOfKeywords
        "IGNORE" -> Right Ignore
        "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD" -> Right GenerateSeparateTagForEachKeyword
        x -> Left ("Unable to parse TagSettingKeywordOption from: " <> x)

instance ToHttpApiData TagSettingKeywordOption where
    toQueryParam = \case
        PlaceholderWithListOfKeywords -> "PLACEHOLDER_WITH_LIST_OF_KEYWORDS"
        Ignore -> "IGNORE"
        GenerateSeparateTagForEachKeyword -> "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAuthoringTool

instance FromHttpApiData CreativeAuthoringTool where
    parseQueryParam = \case
        "NINJA" -> Right Ninja
        "SWIFFY" -> Right Swiffy
        x -> Left ("Unable to parse CreativeAuthoringTool from: " <> x)

instance ToHttpApiData CreativeAuthoringTool where
    toQueryParam = \case
        Ninja -> "NINJA"
        Swiffy -> "SWIFFY"

instance FromJSON CreativeAuthoringTool where
    parseJSON = parseJSONText "CreativeAuthoringTool"

instance ToJSON CreativeAuthoringTool where
    toJSON = toJSONText

-- | Type of this contact.
data OrderContactContactType
    = PlanningOrderContactBuyerContact
      -- ^ @PLANNING_ORDER_CONTACT_BUYER_CONTACT@
    | PlanningOrderContactBuyerBillingContact
      -- ^ @PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT@
    | PlanningOrderContactSellerContact
      -- ^ @PLANNING_ORDER_CONTACT_SELLER_CONTACT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderContactContactType

instance FromHttpApiData OrderContactContactType where
    parseQueryParam = \case
        "PLANNING_ORDER_CONTACT_BUYER_CONTACT" -> Right PlanningOrderContactBuyerContact
        "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT" -> Right PlanningOrderContactBuyerBillingContact
        "PLANNING_ORDER_CONTACT_SELLER_CONTACT" -> Right PlanningOrderContactSellerContact
        x -> Left ("Unable to parse OrderContactContactType from: " <> x)

instance ToHttpApiData OrderContactContactType where
    toQueryParam = \case
        PlanningOrderContactBuyerContact -> "PLANNING_ORDER_CONTACT_BUYER_CONTACT"
        PlanningOrderContactBuyerBillingContact -> "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT"
        PlanningOrderContactSellerContact -> "PLANNING_ORDER_CONTACT_SELLER_CONTACT"

instance FromJSON OrderContactContactType where
    parseJSON = parseJSONText "OrderContactContactType"

instance ToJSON OrderContactContactType where
    toJSON = toJSONText

-- | Type of asset to upload. This is a required field. FLASH and IMAGE are
-- no longer supported for new uploads. All image assets should use
-- HTML_IMAGE.
data CreativeAssetIdType
    = CAITImage
      -- ^ @IMAGE@
    | CAITFlash
      -- ^ @FLASH@
    | CAITVideo
      -- ^ @VIDEO@
    | CAITHTML
      -- ^ @HTML@
    | CAITHTMLImage
      -- ^ @HTML_IMAGE@
    | CAITAudio
      -- ^ @AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetIdType

instance FromHttpApiData CreativeAssetIdType where
    parseQueryParam = \case
        "IMAGE" -> Right CAITImage
        "FLASH" -> Right CAITFlash
        "VIDEO" -> Right CAITVideo
        "HTML" -> Right CAITHTML
        "HTML_IMAGE" -> Right CAITHTMLImage
        "AUDIO" -> Right CAITAudio
        x -> Left ("Unable to parse CreativeAssetIdType from: " <> x)

instance ToHttpApiData CreativeAssetIdType where
    toQueryParam = \case
        CAITImage -> "IMAGE"
        CAITFlash -> "FLASH"
        CAITVideo -> "VIDEO"
        CAITHTML -> "HTML"
        CAITHTMLImage -> "HTML_IMAGE"
        CAITAudio -> "AUDIO"

instance FromJSON CreativeAssetIdType where
    parseJSON = parseJSONText "CreativeAssetIdType"

instance ToJSON CreativeAssetIdType where
    toJSON = toJSONText

-- | Order of sorted results.
data AccountUserProFilesListSortOrder
    = AUPFLSOAscending
      -- ^ @ASCENDING@
    | AUPFLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountUserProFilesListSortOrder

instance FromHttpApiData AccountUserProFilesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right AUPFLSOAscending
        "DESCENDING" -> Right AUPFLSODescending
        x -> Left ("Unable to parse AccountUserProFilesListSortOrder from: " <> x)

instance ToHttpApiData AccountUserProFilesListSortOrder where
    toQueryParam = \case
        AUPFLSOAscending -> "ASCENDING"
        AUPFLSODescending -> "DESCENDING"

instance FromJSON AccountUserProFilesListSortOrder where
    parseJSON = parseJSONText "AccountUserProFilesListSortOrder"

instance ToJSON AccountUserProFilesListSortOrder where
    toJSON = toJSONText

-- | Product from which this remarketing list was originated.
data RemarketingListListSource
    = RLLSRemarketingListSourceOther
      -- ^ @REMARKETING_LIST_SOURCE_OTHER@
    | RLLSRemarketingListSourceAdx
      -- ^ @REMARKETING_LIST_SOURCE_ADX@
    | RLLSRemarketingListSourceDfp
      -- ^ @REMARKETING_LIST_SOURCE_DFP@
    | RLLSRemarketingListSourceXfp
      -- ^ @REMARKETING_LIST_SOURCE_XFP@
    | RLLSRemarketingListSourceDfa
      -- ^ @REMARKETING_LIST_SOURCE_DFA@
    | RLLSRemarketingListSourceGa
      -- ^ @REMARKETING_LIST_SOURCE_GA@
    | RLLSRemarketingListSourceYouTube
      -- ^ @REMARKETING_LIST_SOURCE_YOUTUBE@
    | RLLSRemarketingListSourceDBm
      -- ^ @REMARKETING_LIST_SOURCE_DBM@
    | RLLSRemarketingListSourceGplus
      -- ^ @REMARKETING_LIST_SOURCE_GPLUS@
    | RLLSRemarketingListSourceDmp
      -- ^ @REMARKETING_LIST_SOURCE_DMP@
    | RLLSRemarketingListSourcePlayStore
      -- ^ @REMARKETING_LIST_SOURCE_PLAY_STORE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RemarketingListListSource

instance FromHttpApiData RemarketingListListSource where
    parseQueryParam = \case
        "REMARKETING_LIST_SOURCE_OTHER" -> Right RLLSRemarketingListSourceOther
        "REMARKETING_LIST_SOURCE_ADX" -> Right RLLSRemarketingListSourceAdx
        "REMARKETING_LIST_SOURCE_DFP" -> Right RLLSRemarketingListSourceDfp
        "REMARKETING_LIST_SOURCE_XFP" -> Right RLLSRemarketingListSourceXfp
        "REMARKETING_LIST_SOURCE_DFA" -> Right RLLSRemarketingListSourceDfa
        "REMARKETING_LIST_SOURCE_GA" -> Right RLLSRemarketingListSourceGa
        "REMARKETING_LIST_SOURCE_YOUTUBE" -> Right RLLSRemarketingListSourceYouTube
        "REMARKETING_LIST_SOURCE_DBM" -> Right RLLSRemarketingListSourceDBm
        "REMARKETING_LIST_SOURCE_GPLUS" -> Right RLLSRemarketingListSourceGplus
        "REMARKETING_LIST_SOURCE_DMP" -> Right RLLSRemarketingListSourceDmp
        "REMARKETING_LIST_SOURCE_PLAY_STORE" -> Right RLLSRemarketingListSourcePlayStore
        x -> Left ("Unable to parse RemarketingListListSource from: " <> x)

instance ToHttpApiData RemarketingListListSource where
    toQueryParam = \case
        RLLSRemarketingListSourceOther -> "REMARKETING_LIST_SOURCE_OTHER"
        RLLSRemarketingListSourceAdx -> "REMARKETING_LIST_SOURCE_ADX"
        RLLSRemarketingListSourceDfp -> "REMARKETING_LIST_SOURCE_DFP"
        RLLSRemarketingListSourceXfp -> "REMARKETING_LIST_SOURCE_XFP"
        RLLSRemarketingListSourceDfa -> "REMARKETING_LIST_SOURCE_DFA"
        RLLSRemarketingListSourceGa -> "REMARKETING_LIST_SOURCE_GA"
        RLLSRemarketingListSourceYouTube -> "REMARKETING_LIST_SOURCE_YOUTUBE"
        RLLSRemarketingListSourceDBm -> "REMARKETING_LIST_SOURCE_DBM"
        RLLSRemarketingListSourceGplus -> "REMARKETING_LIST_SOURCE_GPLUS"
        RLLSRemarketingListSourceDmp -> "REMARKETING_LIST_SOURCE_DMP"
        RLLSRemarketingListSourcePlayStore -> "REMARKETING_LIST_SOURCE_PLAY_STORE"

instance FromJSON RemarketingListListSource where
    parseJSON = parseJSONText "RemarketingListListSource"

instance ToJSON RemarketingListListSource where
    toJSON = toJSONText

-- | .
data MeasurementPartnerCampaignLinkLinkStatus
    = MeasurementPartnerUnlinked
      -- ^ @MEASUREMENT_PARTNER_UNLINKED@
    | MeasurementPartnerLinked
      -- ^ @MEASUREMENT_PARTNER_LINKED@
    | MeasurementPartnerLinkPending
      -- ^ @MEASUREMENT_PARTNER_LINK_PENDING@
    | MeasurementPartnerLinkFailure
      -- ^ @MEASUREMENT_PARTNER_LINK_FAILURE@
    | MeasurementPartnerLinkOptOut
      -- ^ @MEASUREMENT_PARTNER_LINK_OPT_OUT@
    | MeasurementPartnerLinkOptOutPending
      -- ^ @MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING@
    | MeasurementPartnerLinkWrAppingPending
      -- ^ @MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING@
    | MeasurementPartnerModeChangePending
      -- ^ @MEASUREMENT_PARTNER_MODE_CHANGE_PENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MeasurementPartnerCampaignLinkLinkStatus

instance FromHttpApiData MeasurementPartnerCampaignLinkLinkStatus where
    parseQueryParam = \case
        "MEASUREMENT_PARTNER_UNLINKED" -> Right MeasurementPartnerUnlinked
        "MEASUREMENT_PARTNER_LINKED" -> Right MeasurementPartnerLinked
        "MEASUREMENT_PARTNER_LINK_PENDING" -> Right MeasurementPartnerLinkPending
        "MEASUREMENT_PARTNER_LINK_FAILURE" -> Right MeasurementPartnerLinkFailure
        "MEASUREMENT_PARTNER_LINK_OPT_OUT" -> Right MeasurementPartnerLinkOptOut
        "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING" -> Right MeasurementPartnerLinkOptOutPending
        "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING" -> Right MeasurementPartnerLinkWrAppingPending
        "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING" -> Right MeasurementPartnerModeChangePending
        x -> Left ("Unable to parse MeasurementPartnerCampaignLinkLinkStatus from: " <> x)

instance ToHttpApiData MeasurementPartnerCampaignLinkLinkStatus where
    toQueryParam = \case
        MeasurementPartnerUnlinked -> "MEASUREMENT_PARTNER_UNLINKED"
        MeasurementPartnerLinked -> "MEASUREMENT_PARTNER_LINKED"
        MeasurementPartnerLinkPending -> "MEASUREMENT_PARTNER_LINK_PENDING"
        MeasurementPartnerLinkFailure -> "MEASUREMENT_PARTNER_LINK_FAILURE"
        MeasurementPartnerLinkOptOut -> "MEASUREMENT_PARTNER_LINK_OPT_OUT"
        MeasurementPartnerLinkOptOutPending -> "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING"
        MeasurementPartnerLinkWrAppingPending -> "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING"
        MeasurementPartnerModeChangePending -> "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING"

instance FromJSON MeasurementPartnerCampaignLinkLinkStatus where
    parseJSON = parseJSONText "MeasurementPartnerCampaignLinkLinkStatus"

instance ToJSON MeasurementPartnerCampaignLinkLinkStatus where
    toJSON = toJSONText

-- | User type of the user profile. This is a read-only field that can be
-- left blank.
data AccountUserProFileUserAccessType
    = NormalUser
      -- ^ @NORMAL_USER@
    | SuperUser
      -- ^ @SUPER_USER@
    | InternalAdministrator
      -- ^ @INTERNAL_ADMINISTRATOR@
    | ReadOnlySuperUser
      -- ^ @READ_ONLY_SUPER_USER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountUserProFileUserAccessType

instance FromHttpApiData AccountUserProFileUserAccessType where
    parseQueryParam = \case
        "NORMAL_USER" -> Right NormalUser
        "SUPER_USER" -> Right SuperUser
        "INTERNAL_ADMINISTRATOR" -> Right InternalAdministrator
        "READ_ONLY_SUPER_USER" -> Right ReadOnlySuperUser
        x -> Left ("Unable to parse AccountUserProFileUserAccessType from: " <> x)

instance ToHttpApiData AccountUserProFileUserAccessType where
    toQueryParam = \case
        NormalUser -> "NORMAL_USER"
        SuperUser -> "SUPER_USER"
        InternalAdministrator -> "INTERNAL_ADMINISTRATOR"
        ReadOnlySuperUser -> "READ_ONLY_SUPER_USER"

instance FromJSON AccountUserProFileUserAccessType where
    parseJSON = parseJSONText "AccountUserProFileUserAccessType"

instance ToJSON AccountUserProFileUserAccessType where
    toJSON = toJSONText

-- | Initial wait time type before making the asset visible. Applicable to
-- the following creative types: all RICH_MEDIA.
data CreativeAssetStartTimeType
    = AssetStartTimeTypeNone
      -- ^ @ASSET_START_TIME_TYPE_NONE@
    | AssetStartTimeTypeCustom
      -- ^ @ASSET_START_TIME_TYPE_CUSTOM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetStartTimeType

instance FromHttpApiData CreativeAssetStartTimeType where
    parseQueryParam = \case
        "ASSET_START_TIME_TYPE_NONE" -> Right AssetStartTimeTypeNone
        "ASSET_START_TIME_TYPE_CUSTOM" -> Right AssetStartTimeTypeCustom
        x -> Left ("Unable to parse CreativeAssetStartTimeType from: " <> x)

instance ToHttpApiData CreativeAssetStartTimeType where
    toQueryParam = \case
        AssetStartTimeTypeNone -> "ASSET_START_TIME_TYPE_NONE"
        AssetStartTimeTypeCustom -> "ASSET_START_TIME_TYPE_CUSTOM"

instance FromJSON CreativeAssetStartTimeType where
    parseJSON = parseJSONText "CreativeAssetStartTimeType"

instance ToJSON CreativeAssetStartTimeType where
    toJSON = toJSONText

-- | Audience gender of this project.
data ProjectAudienceGender
    = PlanningAudienceGenderMale
      -- ^ @PLANNING_AUDIENCE_GENDER_MALE@
    | PlanningAudienceGenderFemale
      -- ^ @PLANNING_AUDIENCE_GENDER_FEMALE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectAudienceGender

instance FromHttpApiData ProjectAudienceGender where
    parseQueryParam = \case
        "PLANNING_AUDIENCE_GENDER_MALE" -> Right PlanningAudienceGenderMale
        "PLANNING_AUDIENCE_GENDER_FEMALE" -> Right PlanningAudienceGenderFemale
        x -> Left ("Unable to parse ProjectAudienceGender from: " <> x)

instance ToHttpApiData ProjectAudienceGender where
    toQueryParam = \case
        PlanningAudienceGenderMale -> "PLANNING_AUDIENCE_GENDER_MALE"
        PlanningAudienceGenderFemale -> "PLANNING_AUDIENCE_GENDER_FEMALE"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementStrategiesListSortField

instance FromHttpApiData PlacementStrategiesListSortField where
    parseQueryParam = \case
        "ID" -> Right PSLSFID
        "NAME" -> Right PSLSFName
        x -> Left ("Unable to parse PlacementStrategiesListSortField from: " <> x)

instance ToHttpApiData PlacementStrategiesListSortField where
    toQueryParam = \case
        PSLSFID -> "ID"
        PSLSFName -> "NAME"

instance FromJSON PlacementStrategiesListSortField where
    parseJSON = parseJSONText "PlacementStrategiesListSortField"

instance ToJSON PlacementStrategiesListSortField where
    toJSON = toJSONText

-- | Data type for the variable. This is a required field.
data UserDefinedVariableConfigurationDataType
    = String
      -- ^ @STRING@
    | Number
      -- ^ @NUMBER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UserDefinedVariableConfigurationDataType

instance FromHttpApiData UserDefinedVariableConfigurationDataType where
    parseQueryParam = \case
        "STRING" -> Right String
        "NUMBER" -> Right Number
        x -> Left ("Unable to parse UserDefinedVariableConfigurationDataType from: " <> x)

instance ToHttpApiData UserDefinedVariableConfigurationDataType where
    toQueryParam = \case
        String -> "STRING"
        Number -> "NUMBER"

instance FromJSON UserDefinedVariableConfigurationDataType where
    parseJSON = parseJSONText "UserDefinedVariableConfigurationDataType"

instance ToJSON UserDefinedVariableConfigurationDataType where
    toJSON = toJSONText

-- | Code type used for cache busting in the generated tag. Applicable only
-- when floodlightActivityGroupType is COUNTER and countingMethod is
-- STANDARD_COUNTING or UNIQUE_COUNTING.
data FloodlightActivityCacheBustingType
    = Javascript
      -- ^ @JAVASCRIPT@
    | ActiveServerPage
      -- ^ @ACTIVE_SERVER_PAGE@
    | Jsp
      -- ^ @JSP@
    | Php
      -- ^ @PHP@
    | ColdFusion
      -- ^ @COLD_FUSION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityCacheBustingType

instance FromHttpApiData FloodlightActivityCacheBustingType where
    parseQueryParam = \case
        "JAVASCRIPT" -> Right Javascript
        "ACTIVE_SERVER_PAGE" -> Right ActiveServerPage
        "JSP" -> Right Jsp
        "PHP" -> Right Php
        "COLD_FUSION" -> Right ColdFusion
        x -> Left ("Unable to parse FloodlightActivityCacheBustingType from: " <> x)

instance ToHttpApiData FloodlightActivityCacheBustingType where
    toQueryParam = \case
        Javascript -> "JAVASCRIPT"
        ActiveServerPage -> "ACTIVE_SERVER_PAGE"
        Jsp -> "JSP"
        Php -> "PHP"
        ColdFusion -> "COLD_FUSION"

instance FromJSON FloodlightActivityCacheBustingType where
    parseJSON = parseJSONText "FloodlightActivityCacheBustingType"

instance ToJSON FloodlightActivityCacheBustingType where
    toJSON = toJSONText

-- | Order of sorted results.
data CreativeGroupsListSortOrder
    = CGLSOAscending
      -- ^ @ASCENDING@
    | CGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeGroupsListSortOrder

instance FromHttpApiData CreativeGroupsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right CGLSOAscending
        "DESCENDING" -> Right CGLSODescending
        x -> Left ("Unable to parse CreativeGroupsListSortOrder from: " <> x)

instance ToHttpApiData CreativeGroupsListSortOrder where
    toQueryParam = \case
        CGLSOAscending -> "ASCENDING"
        CGLSODescending -> "DESCENDING"

instance FromJSON CreativeGroupsListSortOrder where
    parseJSON = parseJSONText "CreativeGroupsListSortOrder"

instance ToJSON CreativeGroupsListSortOrder where
    toJSON = toJSONText

-- | Type of this order document
data OrderDocumentType
    = PlanningOrderTypeInsertionOrder
      -- ^ @PLANNING_ORDER_TYPE_INSERTION_ORDER@
    | PlanningOrderTypeChangeOrder
      -- ^ @PLANNING_ORDER_TYPE_CHANGE_ORDER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderDocumentType

instance FromHttpApiData OrderDocumentType where
    parseQueryParam = \case
        "PLANNING_ORDER_TYPE_INSERTION_ORDER" -> Right PlanningOrderTypeInsertionOrder
        "PLANNING_ORDER_TYPE_CHANGE_ORDER" -> Right PlanningOrderTypeChangeOrder
        x -> Left ("Unable to parse OrderDocumentType from: " <> x)

instance ToHttpApiData OrderDocumentType where
    toQueryParam = \case
        PlanningOrderTypeInsertionOrder -> "PLANNING_ORDER_TYPE_INSERTION_ORDER"
        PlanningOrderTypeChangeOrder -> "PLANNING_ORDER_TYPE_CHANGE_ORDER"

instance FromJSON OrderDocumentType where
    parseJSON = parseJSONText "OrderDocumentType"

instance ToJSON OrderDocumentType where
    toJSON = toJSONText

-- | TagData tag format of this tag.
data TagDataFormat
    = PlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | PlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | PlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | PlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | PlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | PlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | PlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | PlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | PlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | PlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | PlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | PlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | PlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
    | PlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | PlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | PlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | PlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | PlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | PlacementTagInstreamVideoPrefetchVast4
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TagDataFormat

instance FromHttpApiData TagDataFormat where
    parseQueryParam = \case
        "PLACEMENT_TAG_STANDARD" -> Right PlacementTagStandard
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Right PlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Right PlacementTagIframeIlayer
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Right PlacementTagInternalRedirect
        "PLACEMENT_TAG_JAVASCRIPT" -> Right PlacementTagJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Right PlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Right PlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Right PlacementTagInterstitialJavascript
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Right PlacementTagClickCommands
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Right PlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_TRACKING" -> Right PlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Right PlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Right PlacementTagTrackingJavascript
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Right PlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Right PlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Right PlacementTagJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Right PlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Right PlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4" -> Right PlacementTagInstreamVideoPrefetchVast4
        x -> Left ("Unable to parse TagDataFormat from: " <> x)

instance ToHttpApiData TagDataFormat where
    toQueryParam = \case
        PlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        PlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        PlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        PlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        PlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        PlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        PlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        PlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        PlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        PlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        PlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        PlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        PlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"
        PlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        PlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        PlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        PlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        PlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        PlacementTagInstreamVideoPrefetchVast4 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4"

instance FromJSON TagDataFormat where
    parseJSON = parseJSONText "TagDataFormat"

instance ToJSON TagDataFormat where
    toJSON = toJSONText

-- | Maximum number of active ads allowed for the account.
data AccountActiveAdSummaryActiveAdsLimitTier
    = ActiveAdsTier40K
      -- ^ @ACTIVE_ADS_TIER_40K@
    | ActiveAdsTier75K
      -- ^ @ACTIVE_ADS_TIER_75K@
    | ActiveAdsTier100K
      -- ^ @ACTIVE_ADS_TIER_100K@
    | ActiveAdsTier200K
      -- ^ @ACTIVE_ADS_TIER_200K@
    | ActiveAdsTier300K
      -- ^ @ACTIVE_ADS_TIER_300K@
    | ActiveAdsTier500K
      -- ^ @ACTIVE_ADS_TIER_500K@
    | ActiveAdsTier750K
      -- ^ @ACTIVE_ADS_TIER_750K@
    | ActiveAdsTier1M
      -- ^ @ACTIVE_ADS_TIER_1M@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountActiveAdSummaryActiveAdsLimitTier

instance FromHttpApiData AccountActiveAdSummaryActiveAdsLimitTier where
    parseQueryParam = \case
        "ACTIVE_ADS_TIER_40K" -> Right ActiveAdsTier40K
        "ACTIVE_ADS_TIER_75K" -> Right ActiveAdsTier75K
        "ACTIVE_ADS_TIER_100K" -> Right ActiveAdsTier100K
        "ACTIVE_ADS_TIER_200K" -> Right ActiveAdsTier200K
        "ACTIVE_ADS_TIER_300K" -> Right ActiveAdsTier300K
        "ACTIVE_ADS_TIER_500K" -> Right ActiveAdsTier500K
        "ACTIVE_ADS_TIER_750K" -> Right ActiveAdsTier750K
        "ACTIVE_ADS_TIER_1M" -> Right ActiveAdsTier1M
        x -> Left ("Unable to parse AccountActiveAdSummaryActiveAdsLimitTier from: " <> x)

instance ToHttpApiData AccountActiveAdSummaryActiveAdsLimitTier where
    toQueryParam = \case
        ActiveAdsTier40K -> "ACTIVE_ADS_TIER_40K"
        ActiveAdsTier75K -> "ACTIVE_ADS_TIER_75K"
        ActiveAdsTier100K -> "ACTIVE_ADS_TIER_100K"
        ActiveAdsTier200K -> "ACTIVE_ADS_TIER_200K"
        ActiveAdsTier300K -> "ACTIVE_ADS_TIER_300K"
        ActiveAdsTier500K -> "ACTIVE_ADS_TIER_500K"
        ActiveAdsTier750K -> "ACTIVE_ADS_TIER_750K"
        ActiveAdsTier1M -> "ACTIVE_ADS_TIER_1M"

instance FromJSON AccountActiveAdSummaryActiveAdsLimitTier where
    parseJSON = parseJSONText "AccountActiveAdSummaryActiveAdsLimitTier"

instance ToJSON AccountActiveAdSummaryActiveAdsLimitTier where
    toJSON = toJSONText

-- | Rich media child asset type. This is a read-only field. Applicable to
-- the following creative types: all VPAID.
data CreativeAssetChildAssetType
    = ChildAssetTypeFlash
      -- ^ @CHILD_ASSET_TYPE_FLASH@
    | ChildAssetTypeVideo
      -- ^ @CHILD_ASSET_TYPE_VIDEO@
    | ChildAssetTypeImage
      -- ^ @CHILD_ASSET_TYPE_IMAGE@
    | ChildAssetTypeData
      -- ^ @CHILD_ASSET_TYPE_DATA@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetChildAssetType

instance FromHttpApiData CreativeAssetChildAssetType where
    parseQueryParam = \case
        "CHILD_ASSET_TYPE_FLASH" -> Right ChildAssetTypeFlash
        "CHILD_ASSET_TYPE_VIDEO" -> Right ChildAssetTypeVideo
        "CHILD_ASSET_TYPE_IMAGE" -> Right ChildAssetTypeImage
        "CHILD_ASSET_TYPE_DATA" -> Right ChildAssetTypeData
        x -> Left ("Unable to parse CreativeAssetChildAssetType from: " <> x)

instance ToHttpApiData CreativeAssetChildAssetType where
    toQueryParam = \case
        ChildAssetTypeFlash -> "CHILD_ASSET_TYPE_FLASH"
        ChildAssetTypeVideo -> "CHILD_ASSET_TYPE_VIDEO"
        ChildAssetTypeImage -> "CHILD_ASSET_TYPE_IMAGE"
        ChildAssetTypeData -> "CHILD_ASSET_TYPE_DATA"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementGroupsListPlacementGroupType

instance FromHttpApiData PlacementGroupsListPlacementGroupType where
    parseQueryParam = \case
        "PLACEMENT_PACKAGE" -> Right PlacementPackage
        "PLACEMENT_ROADBLOCK" -> Right PlacementRoadblock
        x -> Left ("Unable to parse PlacementGroupsListPlacementGroupType from: " <> x)

instance ToHttpApiData PlacementGroupsListPlacementGroupType where
    toQueryParam = \case
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
    = OFSNone
      -- ^ @NONE@
    | OFSAssigned
      -- ^ @ASSIGNED@
    | OFSAll
      -- ^ @ALL@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ObjectFilterStatus

instance FromHttpApiData ObjectFilterStatus where
    parseQueryParam = \case
        "NONE" -> Right OFSNone
        "ASSIGNED" -> Right OFSAssigned
        "ALL" -> Right OFSAll
        x -> Left ("Unable to parse ObjectFilterStatus from: " <> x)

instance ToHttpApiData ObjectFilterStatus where
    toQueryParam = \case
        OFSNone -> "NONE"
        OFSAssigned -> "ASSIGNED"
        OFSAll -> "ALL"

instance FromJSON ObjectFilterStatus where
    parseJSON = parseJSONText "ObjectFilterStatus"

instance ToJSON ObjectFilterStatus where
    toJSON = toJSONText

-- | Order of sorted results.
data CampaignCreativeAssociationsListSortOrder
    = CCALSOAscending
      -- ^ @ASCENDING@
    | CCALSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CampaignCreativeAssociationsListSortOrder

instance FromHttpApiData CampaignCreativeAssociationsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right CCALSOAscending
        "DESCENDING" -> Right CCALSODescending
        x -> Left ("Unable to parse CampaignCreativeAssociationsListSortOrder from: " <> x)

instance ToHttpApiData CampaignCreativeAssociationsListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivitiesListSortField

instance FromHttpApiData FloodlightActivitiesListSortField where
    parseQueryParam = \case
        "ID" -> Right FALSFID
        "NAME" -> Right FALSFName
        x -> Left ("Unable to parse FloodlightActivitiesListSortField from: " <> x)

instance ToHttpApiData FloodlightActivitiesListSortField where
    toQueryParam = \case
        FALSFID -> "ID"
        FALSFName -> "NAME"

instance FromJSON FloodlightActivitiesListSortField where
    parseJSON = parseJSONText "FloodlightActivitiesListSortField"

instance ToJSON FloodlightActivitiesListSortField where
    toJSON = toJSONText

-- | Select only creatives with these creative types.
data CreativesListTypes
    = CLTImage
      -- ^ @IMAGE@
    | CLTDisplayRedirect
      -- ^ @DISPLAY_REDIRECT@
    | CLTCustomDisplay
      -- ^ @CUSTOM_DISPLAY@
    | CLTInternalRedirect
      -- ^ @INTERNAL_REDIRECT@
    | CLTCustomDisplayInterstitial
      -- ^ @CUSTOM_DISPLAY_INTERSTITIAL@
    | CLTInterstitialInternalRedirect
      -- ^ @INTERSTITIAL_INTERNAL_REDIRECT@
    | CLTTrackingText
      -- ^ @TRACKING_TEXT@
    | CLTRichMediaDisplayBanner
      -- ^ @RICH_MEDIA_DISPLAY_BANNER@
    | CLTRichMediaInpageFloating
      -- ^ @RICH_MEDIA_INPAGE_FLOATING@
    | CLTRichMediaImExpand
      -- ^ @RICH_MEDIA_IM_EXPAND@
    | CLTRichMediaDisplayExpanding
      -- ^ @RICH_MEDIA_DISPLAY_EXPANDING@
    | CLTRichMediaDisplayInterstitial
      -- ^ @RICH_MEDIA_DISPLAY_INTERSTITIAL@
    | CLTRichMediaDisplayMultiFloatingInterstitial
      -- ^ @RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL@
    | CLTRichMediaMobileInApp
      -- ^ @RICH_MEDIA_MOBILE_IN_APP@
    | CLTFlashInpage
      -- ^ @FLASH_INPAGE@
    | CLTInstreamVideo
      -- ^ @INSTREAM_VIDEO@
    | CLTVpaidLinearVideo
      -- ^ @VPAID_LINEAR_VIDEO@
    | CLTVpaidNonLinearVideo
      -- ^ @VPAID_NON_LINEAR_VIDEO@
    | CLTInstreamVideoRedirect
      -- ^ @INSTREAM_VIDEO_REDIRECT@
    | CLTRichMediaPeelDown
      -- ^ @RICH_MEDIA_PEEL_DOWN@
    | CLTHTML5Banner
      -- ^ @HTML5_BANNER@
    | CLTDisplay
      -- ^ @DISPLAY@
    | CLTDisplayImageGallery
      -- ^ @DISPLAY_IMAGE_GALLERY@
    | CLTBrandSafeDefaultInstreamVideo
      -- ^ @BRAND_SAFE_DEFAULT_INSTREAM_VIDEO@
    | CLTInstreamAudio
      -- ^ @INSTREAM_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativesListTypes

instance FromHttpApiData CreativesListTypes where
    parseQueryParam = \case
        "IMAGE" -> Right CLTImage
        "DISPLAY_REDIRECT" -> Right CLTDisplayRedirect
        "CUSTOM_DISPLAY" -> Right CLTCustomDisplay
        "INTERNAL_REDIRECT" -> Right CLTInternalRedirect
        "CUSTOM_DISPLAY_INTERSTITIAL" -> Right CLTCustomDisplayInterstitial
        "INTERSTITIAL_INTERNAL_REDIRECT" -> Right CLTInterstitialInternalRedirect
        "TRACKING_TEXT" -> Right CLTTrackingText
        "RICH_MEDIA_DISPLAY_BANNER" -> Right CLTRichMediaDisplayBanner
        "RICH_MEDIA_INPAGE_FLOATING" -> Right CLTRichMediaInpageFloating
        "RICH_MEDIA_IM_EXPAND" -> Right CLTRichMediaImExpand
        "RICH_MEDIA_DISPLAY_EXPANDING" -> Right CLTRichMediaDisplayExpanding
        "RICH_MEDIA_DISPLAY_INTERSTITIAL" -> Right CLTRichMediaDisplayInterstitial
        "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL" -> Right CLTRichMediaDisplayMultiFloatingInterstitial
        "RICH_MEDIA_MOBILE_IN_APP" -> Right CLTRichMediaMobileInApp
        "FLASH_INPAGE" -> Right CLTFlashInpage
        "INSTREAM_VIDEO" -> Right CLTInstreamVideo
        "VPAID_LINEAR_VIDEO" -> Right CLTVpaidLinearVideo
        "VPAID_NON_LINEAR_VIDEO" -> Right CLTVpaidNonLinearVideo
        "INSTREAM_VIDEO_REDIRECT" -> Right CLTInstreamVideoRedirect
        "RICH_MEDIA_PEEL_DOWN" -> Right CLTRichMediaPeelDown
        "HTML5_BANNER" -> Right CLTHTML5Banner
        "DISPLAY" -> Right CLTDisplay
        "DISPLAY_IMAGE_GALLERY" -> Right CLTDisplayImageGallery
        "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO" -> Right CLTBrandSafeDefaultInstreamVideo
        "INSTREAM_AUDIO" -> Right CLTInstreamAudio
        x -> Left ("Unable to parse CreativesListTypes from: " <> x)

instance ToHttpApiData CreativesListTypes where
    toQueryParam = \case
        CLTImage -> "IMAGE"
        CLTDisplayRedirect -> "DISPLAY_REDIRECT"
        CLTCustomDisplay -> "CUSTOM_DISPLAY"
        CLTInternalRedirect -> "INTERNAL_REDIRECT"
        CLTCustomDisplayInterstitial -> "CUSTOM_DISPLAY_INTERSTITIAL"
        CLTInterstitialInternalRedirect -> "INTERSTITIAL_INTERNAL_REDIRECT"
        CLTTrackingText -> "TRACKING_TEXT"
        CLTRichMediaDisplayBanner -> "RICH_MEDIA_DISPLAY_BANNER"
        CLTRichMediaInpageFloating -> "RICH_MEDIA_INPAGE_FLOATING"
        CLTRichMediaImExpand -> "RICH_MEDIA_IM_EXPAND"
        CLTRichMediaDisplayExpanding -> "RICH_MEDIA_DISPLAY_EXPANDING"
        CLTRichMediaDisplayInterstitial -> "RICH_MEDIA_DISPLAY_INTERSTITIAL"
        CLTRichMediaDisplayMultiFloatingInterstitial -> "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL"
        CLTRichMediaMobileInApp -> "RICH_MEDIA_MOBILE_IN_APP"
        CLTFlashInpage -> "FLASH_INPAGE"
        CLTInstreamVideo -> "INSTREAM_VIDEO"
        CLTVpaidLinearVideo -> "VPAID_LINEAR_VIDEO"
        CLTVpaidNonLinearVideo -> "VPAID_NON_LINEAR_VIDEO"
        CLTInstreamVideoRedirect -> "INSTREAM_VIDEO_REDIRECT"
        CLTRichMediaPeelDown -> "RICH_MEDIA_PEEL_DOWN"
        CLTHTML5Banner -> "HTML5_BANNER"
        CLTDisplay -> "DISPLAY"
        CLTDisplayImageGallery -> "DISPLAY_IMAGE_GALLERY"
        CLTBrandSafeDefaultInstreamVideo -> "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
        CLTInstreamAudio -> "INSTREAM_AUDIO"

instance FromJSON CreativesListTypes where
    parseJSON = parseJSONText "CreativesListTypes"

instance ToJSON CreativesListTypes where
    toJSON = toJSONText

data DirectorySiteInpageTagFormatsItem
    = Standard
      -- ^ @STANDARD@
    | IframeJavascriptInpage
      -- ^ @IFRAME_JAVASCRIPT_INPAGE@
    | InternalRedirectInpage
      -- ^ @INTERNAL_REDIRECT_INPAGE@
    | JavascriptInpage
      -- ^ @JAVASCRIPT_INPAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DirectorySiteInpageTagFormatsItem

instance FromHttpApiData DirectorySiteInpageTagFormatsItem where
    parseQueryParam = \case
        "STANDARD" -> Right Standard
        "IFRAME_JAVASCRIPT_INPAGE" -> Right IframeJavascriptInpage
        "INTERNAL_REDIRECT_INPAGE" -> Right InternalRedirectInpage
        "JAVASCRIPT_INPAGE" -> Right JavascriptInpage
        x -> Left ("Unable to parse DirectorySiteInpageTagFormatsItem from: " <> x)

instance ToHttpApiData DirectorySiteInpageTagFormatsItem where
    toQueryParam = \case
        Standard -> "STANDARD"
        IframeJavascriptInpage -> "IFRAME_JAVASCRIPT_INPAGE"
        InternalRedirectInpage -> "INTERNAL_REDIRECT_INPAGE"
        JavascriptInpage -> "JAVASCRIPT_INPAGE"

instance FromJSON DirectorySiteInpageTagFormatsItem where
    parseJSON = parseJSONText "DirectorySiteInpageTagFormatsItem"

instance ToJSON DirectorySiteInpageTagFormatsItem where
    toJSON = toJSONText

-- | Window mode options for flash assets. Applicable to the following
-- creative types: FLASH_INPAGE, RICH_MEDIA_DISPLAY_EXPANDING,
-- RICH_MEDIA_IM_EXPAND, RICH_MEDIA_DISPLAY_BANNER, and
-- RICH_MEDIA_INPAGE_FLOATING.
data CreativeAssetWindowMode
    = Opaque
      -- ^ @OPAQUE@
    | Window
      -- ^ @WINDOW@
    | Transparent
      -- ^ @TRANSPARENT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetWindowMode

instance FromHttpApiData CreativeAssetWindowMode where
    parseQueryParam = \case
        "OPAQUE" -> Right Opaque
        "WINDOW" -> Right Window
        "TRANSPARENT" -> Right Transparent
        x -> Left ("Unable to parse CreativeAssetWindowMode from: " <> x)

instance ToHttpApiData CreativeAssetWindowMode where
    toQueryParam = \case
        Opaque -> "OPAQUE"
        Window -> "WINDOW"
        Transparent -> "TRANSPARENT"

instance FromJSON CreativeAssetWindowMode where
    parseJSON = parseJSONText "CreativeAssetWindowMode"

instance ToJSON CreativeAssetWindowMode where
    toJSON = toJSONText

-- | Possible alignments for an asset. This is a read-only field. Applicable
-- to the following creative types:
-- RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL .
data CreativeAssetAlignment
    = AlignmentTop
      -- ^ @ALIGNMENT_TOP@
    | AlignmentRight
      -- ^ @ALIGNMENT_RIGHT@
    | AlignmentBottom
      -- ^ @ALIGNMENT_BOTTOM@
    | AlignmentLeft
      -- ^ @ALIGNMENT_LEFT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetAlignment

instance FromHttpApiData CreativeAssetAlignment where
    parseQueryParam = \case
        "ALIGNMENT_TOP" -> Right AlignmentTop
        "ALIGNMENT_RIGHT" -> Right AlignmentRight
        "ALIGNMENT_BOTTOM" -> Right AlignmentBottom
        "ALIGNMENT_LEFT" -> Right AlignmentLeft
        x -> Left ("Unable to parse CreativeAssetAlignment from: " <> x)

instance ToHttpApiData CreativeAssetAlignment where
    toQueryParam = \case
        AlignmentTop -> "ALIGNMENT_TOP"
        AlignmentRight -> "ALIGNMENT_RIGHT"
        AlignmentBottom -> "ALIGNMENT_BOTTOM"
        AlignmentLeft -> "ALIGNMENT_LEFT"

instance FromJSON CreativeAssetAlignment where
    parseJSON = parseJSONText "CreativeAssetAlignment"

instance ToJSON CreativeAssetAlignment where
    toJSON = toJSONText

-- | Order of sorted results.
data RemarketingListsListSortOrder
    = RLLSOAscending
      -- ^ @ASCENDING@
    | RLLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RemarketingListsListSortOrder

instance FromHttpApiData RemarketingListsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right RLLSOAscending
        "DESCENDING" -> Right RLLSODescending
        x -> Left ("Unable to parse RemarketingListsListSortOrder from: " <> x)

instance ToHttpApiData RemarketingListsListSortOrder where
    toQueryParam = \case
        RLLSOAscending -> "ASCENDING"
        RLLSODescending -> "DESCENDING"

instance FromJSON RemarketingListsListSortOrder where
    parseJSON = parseJSONText "RemarketingListsListSortOrder"

instance ToJSON RemarketingListsListSortOrder where
    toJSON = toJSONText

-- | Placement wrapping status.
data MeasurementPartnerWrAppingDataLinkStatus
    = MPWADLSMeasurementPartnerUnlinked
      -- ^ @MEASUREMENT_PARTNER_UNLINKED@
    | MPWADLSMeasurementPartnerLinked
      -- ^ @MEASUREMENT_PARTNER_LINKED@
    | MPWADLSMeasurementPartnerLinkPending
      -- ^ @MEASUREMENT_PARTNER_LINK_PENDING@
    | MPWADLSMeasurementPartnerLinkFailure
      -- ^ @MEASUREMENT_PARTNER_LINK_FAILURE@
    | MPWADLSMeasurementPartnerLinkOptOut
      -- ^ @MEASUREMENT_PARTNER_LINK_OPT_OUT@
    | MPWADLSMeasurementPartnerLinkOptOutPending
      -- ^ @MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING@
    | MPWADLSMeasurementPartnerLinkWrAppingPending
      -- ^ @MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING@
    | MPWADLSMeasurementPartnerModeChangePending
      -- ^ @MEASUREMENT_PARTNER_MODE_CHANGE_PENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MeasurementPartnerWrAppingDataLinkStatus

instance FromHttpApiData MeasurementPartnerWrAppingDataLinkStatus where
    parseQueryParam = \case
        "MEASUREMENT_PARTNER_UNLINKED" -> Right MPWADLSMeasurementPartnerUnlinked
        "MEASUREMENT_PARTNER_LINKED" -> Right MPWADLSMeasurementPartnerLinked
        "MEASUREMENT_PARTNER_LINK_PENDING" -> Right MPWADLSMeasurementPartnerLinkPending
        "MEASUREMENT_PARTNER_LINK_FAILURE" -> Right MPWADLSMeasurementPartnerLinkFailure
        "MEASUREMENT_PARTNER_LINK_OPT_OUT" -> Right MPWADLSMeasurementPartnerLinkOptOut
        "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING" -> Right MPWADLSMeasurementPartnerLinkOptOutPending
        "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING" -> Right MPWADLSMeasurementPartnerLinkWrAppingPending
        "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING" -> Right MPWADLSMeasurementPartnerModeChangePending
        x -> Left ("Unable to parse MeasurementPartnerWrAppingDataLinkStatus from: " <> x)

instance ToHttpApiData MeasurementPartnerWrAppingDataLinkStatus where
    toQueryParam = \case
        MPWADLSMeasurementPartnerUnlinked -> "MEASUREMENT_PARTNER_UNLINKED"
        MPWADLSMeasurementPartnerLinked -> "MEASUREMENT_PARTNER_LINKED"
        MPWADLSMeasurementPartnerLinkPending -> "MEASUREMENT_PARTNER_LINK_PENDING"
        MPWADLSMeasurementPartnerLinkFailure -> "MEASUREMENT_PARTNER_LINK_FAILURE"
        MPWADLSMeasurementPartnerLinkOptOut -> "MEASUREMENT_PARTNER_LINK_OPT_OUT"
        MPWADLSMeasurementPartnerLinkOptOutPending -> "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING"
        MPWADLSMeasurementPartnerLinkWrAppingPending -> "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING"
        MPWADLSMeasurementPartnerModeChangePending -> "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING"

instance FromJSON MeasurementPartnerWrAppingDataLinkStatus where
    parseJSON = parseJSONText "MeasurementPartnerWrAppingDataLinkStatus"

instance ToJSON MeasurementPartnerWrAppingDataLinkStatus where
    toJSON = toJSONText

-- | Select only placement groups with these pricing types.
data PlacementGroupsListPricingTypes
    = PGLPTPricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | PGLPTPricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | PGLPTPricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | PGLPTPricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
    | PGLPTPricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | PGLPTPricingTypeCpmActiveview
      -- ^ @PRICING_TYPE_CPM_ACTIVEVIEW@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementGroupsListPricingTypes

instance FromHttpApiData PlacementGroupsListPricingTypes where
    parseQueryParam = \case
        "PRICING_TYPE_CPM" -> Right PGLPTPricingTypeCpm
        "PRICING_TYPE_CPC" -> Right PGLPTPricingTypeCpc
        "PRICING_TYPE_CPA" -> Right PGLPTPricingTypeCpa
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Right PGLPTPricingTypeFlatRateImpressions
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Right PGLPTPricingTypeFlatRateClicks
        "PRICING_TYPE_CPM_ACTIVEVIEW" -> Right PGLPTPricingTypeCpmActiveview
        x -> Left ("Unable to parse PlacementGroupsListPricingTypes from: " <> x)

instance ToHttpApiData PlacementGroupsListPricingTypes where
    toQueryParam = \case
        PGLPTPricingTypeCpm -> "PRICING_TYPE_CPM"
        PGLPTPricingTypeCpc -> "PRICING_TYPE_CPC"
        PGLPTPricingTypeCpa -> "PRICING_TYPE_CPA"
        PGLPTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"
        PGLPTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PGLPTPricingTypeCpmActiveview -> "PRICING_TYPE_CPM_ACTIVEVIEW"

instance FromJSON PlacementGroupsListPricingTypes where
    parseJSON = parseJSONText "PlacementGroupsListPricingTypes"

instance ToJSON PlacementGroupsListPricingTypes where
    toJSON = toJSONText

-- | Type of the object of this dynamic targeting key. This is a required
-- field.
data DynamicTargetingKeysDeleteObjectType
    = DTKDOTObjectAdvertiser
      -- ^ @OBJECT_ADVERTISER@
    | DTKDOTObjectAd
      -- ^ @OBJECT_AD@
    | DTKDOTObjectCreative
      -- ^ @OBJECT_CREATIVE@
    | DTKDOTObjectPlacement
      -- ^ @OBJECT_PLACEMENT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DynamicTargetingKeysDeleteObjectType

instance FromHttpApiData DynamicTargetingKeysDeleteObjectType where
    parseQueryParam = \case
        "OBJECT_ADVERTISER" -> Right DTKDOTObjectAdvertiser
        "OBJECT_AD" -> Right DTKDOTObjectAd
        "OBJECT_CREATIVE" -> Right DTKDOTObjectCreative
        "OBJECT_PLACEMENT" -> Right DTKDOTObjectPlacement
        x -> Left ("Unable to parse DynamicTargetingKeysDeleteObjectType from: " <> x)

instance ToHttpApiData DynamicTargetingKeysDeleteObjectType where
    toQueryParam = \case
        DTKDOTObjectAdvertiser -> "OBJECT_ADVERTISER"
        DTKDOTObjectAd -> "OBJECT_AD"
        DTKDOTObjectCreative -> "OBJECT_CREATIVE"
        DTKDOTObjectPlacement -> "OBJECT_PLACEMENT"

instance FromJSON DynamicTargetingKeysDeleteObjectType where
    parseJSON = parseJSONText "DynamicTargetingKeysDeleteObjectType"

instance ToJSON DynamicTargetingKeysDeleteObjectType where
    toJSON = toJSONText

-- | Maximum number of active ads allowed for this account.
data AccountActiveAdsLimitTier
    = AAALTActiveAdsTier40K
      -- ^ @ACTIVE_ADS_TIER_40K@
    | AAALTActiveAdsTier75K
      -- ^ @ACTIVE_ADS_TIER_75K@
    | AAALTActiveAdsTier100K
      -- ^ @ACTIVE_ADS_TIER_100K@
    | AAALTActiveAdsTier200K
      -- ^ @ACTIVE_ADS_TIER_200K@
    | AAALTActiveAdsTier300K
      -- ^ @ACTIVE_ADS_TIER_300K@
    | AAALTActiveAdsTier500K
      -- ^ @ACTIVE_ADS_TIER_500K@
    | AAALTActiveAdsTier750K
      -- ^ @ACTIVE_ADS_TIER_750K@
    | AAALTActiveAdsTier1M
      -- ^ @ACTIVE_ADS_TIER_1M@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountActiveAdsLimitTier

instance FromHttpApiData AccountActiveAdsLimitTier where
    parseQueryParam = \case
        "ACTIVE_ADS_TIER_40K" -> Right AAALTActiveAdsTier40K
        "ACTIVE_ADS_TIER_75K" -> Right AAALTActiveAdsTier75K
        "ACTIVE_ADS_TIER_100K" -> Right AAALTActiveAdsTier100K
        "ACTIVE_ADS_TIER_200K" -> Right AAALTActiveAdsTier200K
        "ACTIVE_ADS_TIER_300K" -> Right AAALTActiveAdsTier300K
        "ACTIVE_ADS_TIER_500K" -> Right AAALTActiveAdsTier500K
        "ACTIVE_ADS_TIER_750K" -> Right AAALTActiveAdsTier750K
        "ACTIVE_ADS_TIER_1M" -> Right AAALTActiveAdsTier1M
        x -> Left ("Unable to parse AccountActiveAdsLimitTier from: " <> x)

instance ToHttpApiData AccountActiveAdsLimitTier where
    toQueryParam = \case
        AAALTActiveAdsTier40K -> "ACTIVE_ADS_TIER_40K"
        AAALTActiveAdsTier75K -> "ACTIVE_ADS_TIER_75K"
        AAALTActiveAdsTier100K -> "ACTIVE_ADS_TIER_100K"
        AAALTActiveAdsTier200K -> "ACTIVE_ADS_TIER_200K"
        AAALTActiveAdsTier300K -> "ACTIVE_ADS_TIER_300K"
        AAALTActiveAdsTier500K -> "ACTIVE_ADS_TIER_500K"
        AAALTActiveAdsTier750K -> "ACTIVE_ADS_TIER_750K"
        AAALTActiveAdsTier1M -> "ACTIVE_ADS_TIER_1M"

instance FromJSON AccountActiveAdsLimitTier where
    parseJSON = parseJSONText "AccountActiveAdsLimitTier"

instance ToJSON AccountActiveAdsLimitTier where
    toJSON = toJSONText

-- | Order of sorted results.
data AccountsListSortOrder
    = AAscending
      -- ^ @ASCENDING@
    | ADescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsListSortOrder

instance FromHttpApiData AccountsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right AAscending
        "DESCENDING" -> Right ADescending
        x -> Left ("Unable to parse AccountsListSortOrder from: " <> x)

instance ToHttpApiData AccountsListSortOrder where
    toQueryParam = \case
        AAscending -> "ASCENDING"
        ADescending -> "DESCENDING"

instance FromJSON AccountsListSortOrder where
    parseJSON = parseJSONText "AccountsListSortOrder"

instance ToJSON AccountsListSortOrder where
    toJSON = toJSONText

-- | Measurement partner used for wrapping the placement.
data MeasurementPartnerWrAppingDataMeasurementPartner
    = MPWADMPNone
      -- ^ @NONE@
    | MPWADMPIntegralAdScience
      -- ^ @INTEGRAL_AD_SCIENCE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MeasurementPartnerWrAppingDataMeasurementPartner

instance FromHttpApiData MeasurementPartnerWrAppingDataMeasurementPartner where
    parseQueryParam = \case
        "NONE" -> Right MPWADMPNone
        "INTEGRAL_AD_SCIENCE" -> Right MPWADMPIntegralAdScience
        x -> Left ("Unable to parse MeasurementPartnerWrAppingDataMeasurementPartner from: " <> x)

instance ToHttpApiData MeasurementPartnerWrAppingDataMeasurementPartner where
    toQueryParam = \case
        MPWADMPNone -> "NONE"
        MPWADMPIntegralAdScience -> "INTEGRAL_AD_SCIENCE"

instance FromJSON MeasurementPartnerWrAppingDataMeasurementPartner where
    parseJSON = parseJSONText "MeasurementPartnerWrAppingDataMeasurementPartner"

instance ToJSON MeasurementPartnerWrAppingDataMeasurementPartner where
    toJSON = toJSONText

-- | Field by which to sort the list.
data SubAccountsListSortField
    = SALSFID
      -- ^ @ID@
    | SALSFName
      -- ^ @NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubAccountsListSortField

instance FromHttpApiData SubAccountsListSortField where
    parseQueryParam = \case
        "ID" -> Right SALSFID
        "NAME" -> Right SALSFName
        x -> Left ("Unable to parse SubAccountsListSortField from: " <> x)

instance ToHttpApiData SubAccountsListSortField where
    toQueryParam = \case
        SALSFID -> "ID"
        SALSFName -> "NAME"

instance FromJSON SubAccountsListSortField where
    parseJSON = parseJSONText "SubAccountsListSortField"

instance ToJSON SubAccountsListSortField where
    toJSON = toJSONText

-- | File type of the video format.
data VideoFormatFileType
    = Flv
      -- ^ @FLV@
    | Threegpp
      -- ^ @THREEGPP@
    | MP4
      -- ^ @MP4@
    | Webm
      -- ^ @WEBM@
    | M3U8
      -- ^ @M3U8@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoFormatFileType

instance FromHttpApiData VideoFormatFileType where
    parseQueryParam = \case
        "FLV" -> Right Flv
        "THREEGPP" -> Right Threegpp
        "MP4" -> Right MP4
        "WEBM" -> Right Webm
        "M3U8" -> Right M3U8
        x -> Left ("Unable to parse VideoFormatFileType from: " <> x)

instance ToHttpApiData VideoFormatFileType where
    toQueryParam = \case
        Flv -> "FLV"
        Threegpp -> "THREEGPP"
        MP4 -> "MP4"
        Webm -> "WEBM"
        M3U8 -> "M3U8"

instance FromJSON VideoFormatFileType where
    parseJSON = parseJSONText "VideoFormatFileType"

instance ToJSON VideoFormatFileType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AdsListSortField
    = ALSFID
      -- ^ @ID@
    | ALSFName
      -- ^ @NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdsListSortField

instance FromHttpApiData AdsListSortField where
    parseQueryParam = \case
        "ID" -> Right ALSFID
        "NAME" -> Right ALSFName
        x -> Left ("Unable to parse AdsListSortField from: " <> x)

instance ToHttpApiData AdsListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsListSortField

instance FromHttpApiData ProjectsListSortField where
    parseQueryParam = \case
        "ID" -> Right PID
        "NAME" -> Right PName
        x -> Left ("Unable to parse ProjectsListSortField from: " <> x)

instance ToHttpApiData ProjectsListSortField where
    toQueryParam = \case
        PID -> "ID"
        PName -> "NAME"

instance FromJSON ProjectsListSortField where
    parseJSON = parseJSONText "ProjectsListSortField"

instance ToJSON ProjectsListSortField where
    toJSON = toJSONText

-- | Select only ads with these types.
data AdsListType
    = AdServingStandardAd
      -- ^ @AD_SERVING_STANDARD_AD@
    | AdServingDefaultAd
      -- ^ @AD_SERVING_DEFAULT_AD@
    | AdServingClickTracker
      -- ^ @AD_SERVING_CLICK_TRACKER@
    | AdServingTracking
      -- ^ @AD_SERVING_TRACKING@
    | AdServingBrandSafeAd
      -- ^ @AD_SERVING_BRAND_SAFE_AD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdsListType

instance FromHttpApiData AdsListType where
    parseQueryParam = \case
        "AD_SERVING_STANDARD_AD" -> Right AdServingStandardAd
        "AD_SERVING_DEFAULT_AD" -> Right AdServingDefaultAd
        "AD_SERVING_CLICK_TRACKER" -> Right AdServingClickTracker
        "AD_SERVING_TRACKING" -> Right AdServingTracking
        "AD_SERVING_BRAND_SAFE_AD" -> Right AdServingBrandSafeAd
        x -> Left ("Unable to parse AdsListType from: " <> x)

instance ToHttpApiData AdsListType where
    toQueryParam = \case
        AdServingStandardAd -> "AD_SERVING_STANDARD_AD"
        AdServingDefaultAd -> "AD_SERVING_DEFAULT_AD"
        AdServingClickTracker -> "AD_SERVING_CLICK_TRACKER"
        AdServingTracking -> "AD_SERVING_TRACKING"
        AdServingBrandSafeAd -> "AD_SERVING_BRAND_SAFE_AD"

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
    | PostImpression
      -- ^ @POST_IMPRESSION@
    | PostClickAndImpression
      -- ^ @POST_CLICK_AND_IMPRESSION@
    | VideoCompletion
      -- ^ @VIDEO_COMPLETION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeOptimizationConfigurationOptimizationModel

instance FromHttpApiData CreativeOptimizationConfigurationOptimizationModel where
    parseQueryParam = \case
        "CLICK" -> Right Click
        "POST_CLICK" -> Right PostClick
        "POST_IMPRESSION" -> Right PostImpression
        "POST_CLICK_AND_IMPRESSION" -> Right PostClickAndImpression
        "VIDEO_COMPLETION" -> Right VideoCompletion
        x -> Left ("Unable to parse CreativeOptimizationConfigurationOptimizationModel from: " <> x)

instance ToHttpApiData CreativeOptimizationConfigurationOptimizationModel where
    toQueryParam = \case
        Click -> "CLICK"
        PostClick -> "POST_CLICK"
        PostImpression -> "POST_IMPRESSION"
        PostClickAndImpression -> "POST_CLICK_AND_IMPRESSION"
        VideoCompletion -> "VIDEO_COMPLETION"

instance FromJSON CreativeOptimizationConfigurationOptimizationModel where
    parseJSON = parseJSONText "CreativeOptimizationConfigurationOptimizationModel"

instance ToJSON CreativeOptimizationConfigurationOptimizationModel where
    toJSON = toJSONText

-- | Administrative level required to enable this account permission.
data AccountPermissionLevel
    = User
      -- ^ @USER@
    | Administrator
      -- ^ @ADMINISTRATOR@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountPermissionLevel

instance FromHttpApiData AccountPermissionLevel where
    parseQueryParam = \case
        "USER" -> Right User
        "ADMINISTRATOR" -> Right Administrator
        x -> Left ("Unable to parse AccountPermissionLevel from: " <> x)

instance ToHttpApiData AccountPermissionLevel where
    toQueryParam = \case
        User -> "USER"
        Administrator -> "ADMINISTRATOR"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListPopulationTermType

instance FromHttpApiData ListPopulationTermType where
    parseQueryParam = \case
        "CUSTOM_VARIABLE_TERM" -> Right CustomVariableTerm
        "LIST_MEMBERSHIP_TERM" -> Right ListMembershipTerm
        "REFERRER_TERM" -> Right ReferrerTerm
        x -> Left ("Unable to parse ListPopulationTermType from: " <> x)

instance ToHttpApiData ListPopulationTermType where
    toQueryParam = \case
        CustomVariableTerm -> "CUSTOM_VARIABLE_TERM"
        ListMembershipTerm -> "LIST_MEMBERSHIP_TERM"
        ReferrerTerm -> "REFERRER_TERM"

instance FromJSON ListPopulationTermType where
    parseJSON = parseJSONText "ListPopulationTermType"

instance ToJSON ListPopulationTermType where
    toJSON = toJSONText

-- | Order of sorted results.
data AdvertiserGroupsListSortOrder
    = AGLSOAscending
      -- ^ @ASCENDING@
    | AGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertiserGroupsListSortOrder

instance FromHttpApiData AdvertiserGroupsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right AGLSOAscending
        "DESCENDING" -> Right AGLSODescending
        x -> Left ("Unable to parse AdvertiserGroupsListSortOrder from: " <> x)

instance ToHttpApiData AdvertiserGroupsListSortOrder where
    toQueryParam = \case
        AGLSOAscending -> "ASCENDING"
        AGLSODescending -> "DESCENDING"

instance FromJSON AdvertiserGroupsListSortOrder where
    parseJSON = parseJSONText "AdvertiserGroupsListSortOrder"

instance ToJSON AdvertiserGroupsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results.
data CreativeFieldValuesListSortOrder
    = CFVLSOAscending
      -- ^ @ASCENDING@
    | CFVLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeFieldValuesListSortOrder

instance FromHttpApiData CreativeFieldValuesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right CFVLSOAscending
        "DESCENDING" -> Right CFVLSODescending
        x -> Left ("Unable to parse CreativeFieldValuesListSortOrder from: " <> x)

instance ToHttpApiData CreativeFieldValuesListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SortedDimensionSortOrder

instance FromHttpApiData SortedDimensionSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right SDSOAscending
        "DESCENDING" -> Right SDSODescending
        x -> Left ("Unable to parse SortedDimensionSortOrder from: " <> x)

instance ToHttpApiData SortedDimensionSortOrder where
    toQueryParam = \case
        SDSOAscending -> "ASCENDING"
        SDSODescending -> "DESCENDING"

instance FromJSON SortedDimensionSortOrder where
    parseJSON = parseJSONText "SortedDimensionSortOrder"

instance ToJSON SortedDimensionSortOrder where
    toJSON = toJSONText

-- | Select only apps from these directories.
data MobileAppsListDirectories
    = Unknown
      -- ^ @UNKNOWN@
    | AppleAppStore
      -- ^ @APPLE_APP_STORE@
    | GooglePlayStore
      -- ^ @GOOGLE_PLAY_STORE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MobileAppsListDirectories

instance FromHttpApiData MobileAppsListDirectories where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "APPLE_APP_STORE" -> Right AppleAppStore
        "GOOGLE_PLAY_STORE" -> Right GooglePlayStore
        x -> Left ("Unable to parse MobileAppsListDirectories from: " <> x)

instance ToHttpApiData MobileAppsListDirectories where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        AppleAppStore -> "APPLE_APP_STORE"
        GooglePlayStore -> "GOOGLE_PLAY_STORE"

instance FromJSON MobileAppsListDirectories where
    parseJSON = parseJSONText "MobileAppsListDirectories"

instance ToJSON MobileAppsListDirectories where
    toJSON = toJSONText

-- | The field by which to sort the list.
data FilesListSortField
    = FLSFID
      -- ^ @ID@
      -- Sort by file ID.
    | FLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastmodifiedAt\' field.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilesListSortField

instance FromHttpApiData FilesListSortField where
    parseQueryParam = \case
        "ID" -> Right FLSFID
        "LAST_MODIFIED_TIME" -> Right FLSFLastModifiedTime
        x -> Left ("Unable to parse FilesListSortField from: " <> x)

instance ToHttpApiData FilesListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DirectorySiteInterstitialTagFormatsItem

instance FromHttpApiData DirectorySiteInterstitialTagFormatsItem where
    parseQueryParam = \case
        "IFRAME_JAVASCRIPT_INTERSTITIAL" -> Right IframeJavascriptInterstitial
        "INTERNAL_REDIRECT_INTERSTITIAL" -> Right InternalRedirectInterstitial
        "JAVASCRIPT_INTERSTITIAL" -> Right JavascriptInterstitial
        x -> Left ("Unable to parse DirectorySiteInterstitialTagFormatsItem from: " <> x)

instance ToHttpApiData DirectorySiteInterstitialTagFormatsItem where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventTagsListSortField

instance FromHttpApiData EventTagsListSortField where
    parseQueryParam = \case
        "ID" -> Right ETLSFID
        "NAME" -> Right ETLSFName
        x -> Left ("Unable to parse EventTagsListSortField from: " <> x)

instance ToHttpApiData EventTagsListSortField where
    toQueryParam = \case
        ETLSFID -> "ID"
        ETLSFName -> "NAME"

instance FromJSON EventTagsListSortField where
    parseJSON = parseJSONText "EventTagsListSortField"

instance ToJSON EventTagsListSortField where
    toJSON = toJSONText

-- | Type of inventory item.
data InventoryItemType
    = IITPlanningPlacementTypeRegular
      -- ^ @PLANNING_PLACEMENT_TYPE_REGULAR@
    | IITPlanningPlacementTypeCredit
      -- ^ @PLANNING_PLACEMENT_TYPE_CREDIT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InventoryItemType

instance FromHttpApiData InventoryItemType where
    parseQueryParam = \case
        "PLANNING_PLACEMENT_TYPE_REGULAR" -> Right IITPlanningPlacementTypeRegular
        "PLANNING_PLACEMENT_TYPE_CREDIT" -> Right IITPlanningPlacementTypeCredit
        x -> Left ("Unable to parse InventoryItemType from: " <> x)

instance ToHttpApiData InventoryItemType where
    toQueryParam = \case
        IITPlanningPlacementTypeRegular -> "PLANNING_PLACEMENT_TYPE_REGULAR"
        IITPlanningPlacementTypeCredit -> "PLANNING_PLACEMENT_TYPE_CREDIT"

instance FromJSON InventoryItemType where
    parseJSON = parseJSONText "InventoryItemType"

instance ToJSON InventoryItemType where
    toJSON = toJSONText

-- | Offset top unit for an asset. This is a read-only field if the asset
-- displayType is ASSET_DISPLAY_TYPE_OVERLAY. Applicable to the following
-- creative types: all RICH_MEDIA.
data CreativeAssetPositionTopUnit
    = CAPTUOffSetUnitPixel
      -- ^ @OFFSET_UNIT_PIXEL@
    | CAPTUOffSetUnitPercent
      -- ^ @OFFSET_UNIT_PERCENT@
    | CAPTUOffSetUnitPixelFromCenter
      -- ^ @OFFSET_UNIT_PIXEL_FROM_CENTER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetPositionTopUnit

instance FromHttpApiData CreativeAssetPositionTopUnit where
    parseQueryParam = \case
        "OFFSET_UNIT_PIXEL" -> Right CAPTUOffSetUnitPixel
        "OFFSET_UNIT_PERCENT" -> Right CAPTUOffSetUnitPercent
        "OFFSET_UNIT_PIXEL_FROM_CENTER" -> Right CAPTUOffSetUnitPixelFromCenter
        x -> Left ("Unable to parse CreativeAssetPositionTopUnit from: " <> x)

instance ToHttpApiData CreativeAssetPositionTopUnit where
    toQueryParam = \case
        CAPTUOffSetUnitPixel -> "OFFSET_UNIT_PIXEL"
        CAPTUOffSetUnitPercent -> "OFFSET_UNIT_PERCENT"
        CAPTUOffSetUnitPixelFromCenter -> "OFFSET_UNIT_PIXEL_FROM_CENTER"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityFloodlightActivityGroupType

instance FromHttpApiData FloodlightActivityFloodlightActivityGroupType where
    parseQueryParam = \case
        "COUNTER" -> Right FAFAGTCounter
        "SALE" -> Right FAFAGTSale
        x -> Left ("Unable to parse FloodlightActivityFloodlightActivityGroupType from: " <> x)

instance ToHttpApiData FloodlightActivityFloodlightActivityGroupType where
    toQueryParam = \case
        FAFAGTCounter -> "COUNTER"
        FAFAGTSale -> "SALE"

instance FromJSON FloodlightActivityFloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivityFloodlightActivityGroupType"

instance ToJSON FloodlightActivityFloodlightActivityGroupType where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PricingGroupType

instance FromHttpApiData PricingGroupType where
    parseQueryParam = \case
        "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE" -> Right PlanningPlacementGroupTypePackage
        "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK" -> Right PlanningPlacementGroupTypeRoadblock
        x -> Left ("Unable to parse PricingGroupType from: " <> x)

instance ToHttpApiData PricingGroupType where
    toQueryParam = \case
        PlanningPlacementGroupTypePackage -> "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE"
        PlanningPlacementGroupTypeRoadblock -> "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK"

instance FromJSON PricingGroupType where
    parseJSON = parseJSONText "PricingGroupType"

instance ToJSON PricingGroupType where
    toJSON = toJSONText

-- | The type of Floodlight tag this activity will generate. This is a
-- required field.
data FloodlightActivityFloodlightTagType
    = Iframe
      -- ^ @IFRAME@
    | Image
      -- ^ @IMAGE@
    | GlobalSiteTag
      -- ^ @GLOBAL_SITE_TAG@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityFloodlightTagType

instance FromHttpApiData FloodlightActivityFloodlightTagType where
    parseQueryParam = \case
        "IFRAME" -> Right Iframe
        "IMAGE" -> Right Image
        "GLOBAL_SITE_TAG" -> Right GlobalSiteTag
        x -> Left ("Unable to parse FloodlightActivityFloodlightTagType from: " <> x)

instance ToHttpApiData FloodlightActivityFloodlightTagType where
    toQueryParam = \case
        Iframe -> "IFRAME"
        Image -> "IMAGE"
        GlobalSiteTag -> "GLOBAL_SITE_TAG"

instance FromJSON FloodlightActivityFloodlightTagType where
    parseJSON = parseJSONText "FloodlightActivityFloodlightTagType"

instance ToJSON FloodlightActivityFloodlightTagType where
    toJSON = toJSONText

-- | Order of sorted results.
data FloodlightActivityGroupsListSortOrder
    = FAGLSOAscending
      -- ^ @ASCENDING@
    | FAGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityGroupsListSortOrder

instance FromHttpApiData FloodlightActivityGroupsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right FAGLSOAscending
        "DESCENDING" -> Right FAGLSODescending
        x -> Left ("Unable to parse FloodlightActivityGroupsListSortOrder from: " <> x)

instance ToHttpApiData FloodlightActivityGroupsListSortOrder where
    toQueryParam = \case
        FAGLSOAscending -> "ASCENDING"
        FAGLSODescending -> "DESCENDING"

instance FromJSON FloodlightActivityGroupsListSortOrder where
    parseJSON = parseJSONText "FloodlightActivityGroupsListSortOrder"

instance ToJSON FloodlightActivityGroupsListSortOrder where
    toJSON = toJSONText

-- | Type of creative rotation. Can be used to specify whether to use
-- sequential or random rotation.
data CreativeRotationType
    = CreativeRotationTypeSequential
      -- ^ @CREATIVE_ROTATION_TYPE_SEQUENTIAL@
    | CreativeRotationTypeRandom
      -- ^ @CREATIVE_ROTATION_TYPE_RANDOM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeRotationType

instance FromHttpApiData CreativeRotationType where
    parseQueryParam = \case
        "CREATIVE_ROTATION_TYPE_SEQUENTIAL" -> Right CreativeRotationTypeSequential
        "CREATIVE_ROTATION_TYPE_RANDOM" -> Right CreativeRotationTypeRandom
        x -> Left ("Unable to parse CreativeRotationType from: " <> x)

instance ToHttpApiData CreativeRotationType where
    toQueryParam = \case
        CreativeRotationTypeSequential -> "CREATIVE_ROTATION_TYPE_SEQUENTIAL"
        CreativeRotationTypeRandom -> "CREATIVE_ROTATION_TYPE_RANDOM"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersListSortField

instance FromHttpApiData OrdersListSortField where
    parseQueryParam = \case
        "ID" -> Right OLSFID
        "NAME" -> Right OLSFName
        x -> Left ("Unable to parse OrdersListSortField from: " <> x)

instance ToHttpApiData OrdersListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementGroupsListSortField

instance FromHttpApiData PlacementGroupsListSortField where
    parseQueryParam = \case
        "ID" -> Right PGLSFID
        "NAME" -> Right PGLSFName
        x -> Left ("Unable to parse PlacementGroupsListSortField from: " <> x)

instance ToHttpApiData PlacementGroupsListSortField where
    toQueryParam = \case
        PGLSFID -> "ID"
        PGLSFName -> "NAME"

instance FromJSON PlacementGroupsListSortField where
    parseJSON = parseJSONText "PlacementGroupsListSortField"

instance ToJSON PlacementGroupsListSortField where
    toJSON = toJSONText

-- | Order of sorted results.
data DirectorySitesListSortOrder
    = DSLSOAscending
      -- ^ @ASCENDING@
    | DSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DirectorySitesListSortOrder

instance FromHttpApiData DirectorySitesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right DSLSOAscending
        "DESCENDING" -> Right DSLSODescending
        x -> Left ("Unable to parse DirectorySitesListSortOrder from: " <> x)

instance ToHttpApiData DirectorySitesListSortOrder where
    toQueryParam = \case
        DSLSOAscending -> "ASCENDING"
        DSLSODescending -> "DESCENDING"

instance FromJSON DirectorySitesListSortOrder where
    parseJSON = parseJSONText "DirectorySitesListSortOrder"

instance ToJSON DirectorySitesListSortOrder where
    toJSON = toJSONText

data CreativeAssetDetectedFeaturesItem
    = CADFICssFontFace
      -- ^ @CSS_FONT_FACE@
    | CADFICssBackgRoundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CADFICssBOrderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CADFICssBOrderRadius
      -- ^ @CSS_BORDER_RADIUS@
    | CADFICssBoxShadow
      -- ^ @CSS_BOX_SHADOW@
    | CADFICssFlexBox
      -- ^ @CSS_FLEX_BOX@
    | CADFICssHsla
      -- ^ @CSS_HSLA@
    | CADFICssMultipleBgs
      -- ^ @CSS_MULTIPLE_BGS@
    | CADFICssOpacity
      -- ^ @CSS_OPACITY@
    | CADFICssRgba
      -- ^ @CSS_RGBA@
    | CADFICssTextShadow
      -- ^ @CSS_TEXT_SHADOW@
    | CADFICssAnimations
      -- ^ @CSS_ANIMATIONS@
    | CADFICssColumns
      -- ^ @CSS_COLUMNS@
    | CADFICssGeneratedContent
      -- ^ @CSS_GENERATED_CONTENT@
    | CADFICssGradients
      -- ^ @CSS_GRADIENTS@
    | CADFICssReflections
      -- ^ @CSS_REFLECTIONS@
    | CADFICssTransforms
      -- ^ @CSS_TRANSFORMS@
    | CADFICssTRANSFORMS3D
      -- ^ @CSS_TRANSFORMS3D@
    | CADFICssTransitions
      -- ^ @CSS_TRANSITIONS@
    | CADFIApplicationCache
      -- ^ @APPLICATION_CACHE@
    | CADFICanvas
      -- ^ @CANVAS@
    | CADFICanvasText
      -- ^ @CANVAS_TEXT@
    | CADFIDragAndDrop
      -- ^ @DRAG_AND_DROP@
    | CADFIHashChange
      -- ^ @HASH_CHANGE@
    | CADFIHistory
      -- ^ @HISTORY@
    | CADFIAudio
      -- ^ @AUDIO@
    | CADFIVideo
      -- ^ @VIDEO@
    | CADFIIndexedDB
      -- ^ @INDEXED_DB@
    | CADFIInputAttrAutocomplete
      -- ^ @INPUT_ATTR_AUTOCOMPLETE@
    | CADFIInputAttrAutofocus
      -- ^ @INPUT_ATTR_AUTOFOCUS@
    | CADFIInputAttrList
      -- ^ @INPUT_ATTR_LIST@
    | CADFIInputAttrPlaceholder
      -- ^ @INPUT_ATTR_PLACEHOLDER@
    | CADFIInputAttrMax
      -- ^ @INPUT_ATTR_MAX@
    | CADFIInputAttrMin
      -- ^ @INPUT_ATTR_MIN@
    | CADFIInputAttrMultiple
      -- ^ @INPUT_ATTR_MULTIPLE@
    | CADFIInputAttrPattern
      -- ^ @INPUT_ATTR_PATTERN@
    | CADFIInputAttrRequired
      -- ^ @INPUT_ATTR_REQUIRED@
    | CADFIInputAttrStep
      -- ^ @INPUT_ATTR_STEP@
    | CADFIInputTypeSearch
      -- ^ @INPUT_TYPE_SEARCH@
    | CADFIInputTypeTel
      -- ^ @INPUT_TYPE_TEL@
    | CADFIInputTypeURL
      -- ^ @INPUT_TYPE_URL@
    | CADFIInputTypeEmail
      -- ^ @INPUT_TYPE_EMAIL@
    | CADFIInputTypeDatetime
      -- ^ @INPUT_TYPE_DATETIME@
    | CADFIInputTypeDate
      -- ^ @INPUT_TYPE_DATE@
    | CADFIInputTypeMonth
      -- ^ @INPUT_TYPE_MONTH@
    | CADFIInputTypeWeek
      -- ^ @INPUT_TYPE_WEEK@
    | CADFIInputTypeTime
      -- ^ @INPUT_TYPE_TIME@
    | CADFIInputTypeDatetimeLocal
      -- ^ @INPUT_TYPE_DATETIME_LOCAL@
    | CADFIInputTypeNumber
      -- ^ @INPUT_TYPE_NUMBER@
    | CADFIInputTypeRange
      -- ^ @INPUT_TYPE_RANGE@
    | CADFIInputTypeColor
      -- ^ @INPUT_TYPE_COLOR@
    | CADFILocalStorage
      -- ^ @LOCAL_STORAGE@
    | CADFIPostMessage
      -- ^ @POST_MESSAGE@
    | CADFISessionStorage
      -- ^ @SESSION_STORAGE@
    | CADFIWebSockets
      -- ^ @WEB_SOCKETS@
    | CADFIWebSQLDatabase
      -- ^ @WEB_SQL_DATABASE@
    | CADFIWebWorkers
      -- ^ @WEB_WORKERS@
    | CADFIGeoLocation
      -- ^ @GEO_LOCATION@
    | CADFIInlineSvg
      -- ^ @INLINE_SVG@
    | CADFISmil
      -- ^ @SMIL@
    | CADFISvgHref
      -- ^ @SVG_HREF@
    | CADFISvgClipPaths
      -- ^ @SVG_CLIP_PATHS@
    | CADFITouch
      -- ^ @TOUCH@
    | CADFIWebgl
      -- ^ @WEBGL@
    | CADFISvgFilters
      -- ^ @SVG_FILTERS@
    | CADFISvgFeImage
      -- ^ @SVG_FE_IMAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetDetectedFeaturesItem

instance FromHttpApiData CreativeAssetDetectedFeaturesItem where
    parseQueryParam = \case
        "CSS_FONT_FACE" -> Right CADFICssFontFace
        "CSS_BACKGROUND_SIZE" -> Right CADFICssBackgRoundSize
        "CSS_BORDER_IMAGE" -> Right CADFICssBOrderImage
        "CSS_BORDER_RADIUS" -> Right CADFICssBOrderRadius
        "CSS_BOX_SHADOW" -> Right CADFICssBoxShadow
        "CSS_FLEX_BOX" -> Right CADFICssFlexBox
        "CSS_HSLA" -> Right CADFICssHsla
        "CSS_MULTIPLE_BGS" -> Right CADFICssMultipleBgs
        "CSS_OPACITY" -> Right CADFICssOpacity
        "CSS_RGBA" -> Right CADFICssRgba
        "CSS_TEXT_SHADOW" -> Right CADFICssTextShadow
        "CSS_ANIMATIONS" -> Right CADFICssAnimations
        "CSS_COLUMNS" -> Right CADFICssColumns
        "CSS_GENERATED_CONTENT" -> Right CADFICssGeneratedContent
        "CSS_GRADIENTS" -> Right CADFICssGradients
        "CSS_REFLECTIONS" -> Right CADFICssReflections
        "CSS_TRANSFORMS" -> Right CADFICssTransforms
        "CSS_TRANSFORMS3D" -> Right CADFICssTRANSFORMS3D
        "CSS_TRANSITIONS" -> Right CADFICssTransitions
        "APPLICATION_CACHE" -> Right CADFIApplicationCache
        "CANVAS" -> Right CADFICanvas
        "CANVAS_TEXT" -> Right CADFICanvasText
        "DRAG_AND_DROP" -> Right CADFIDragAndDrop
        "HASH_CHANGE" -> Right CADFIHashChange
        "HISTORY" -> Right CADFIHistory
        "AUDIO" -> Right CADFIAudio
        "VIDEO" -> Right CADFIVideo
        "INDEXED_DB" -> Right CADFIIndexedDB
        "INPUT_ATTR_AUTOCOMPLETE" -> Right CADFIInputAttrAutocomplete
        "INPUT_ATTR_AUTOFOCUS" -> Right CADFIInputAttrAutofocus
        "INPUT_ATTR_LIST" -> Right CADFIInputAttrList
        "INPUT_ATTR_PLACEHOLDER" -> Right CADFIInputAttrPlaceholder
        "INPUT_ATTR_MAX" -> Right CADFIInputAttrMax
        "INPUT_ATTR_MIN" -> Right CADFIInputAttrMin
        "INPUT_ATTR_MULTIPLE" -> Right CADFIInputAttrMultiple
        "INPUT_ATTR_PATTERN" -> Right CADFIInputAttrPattern
        "INPUT_ATTR_REQUIRED" -> Right CADFIInputAttrRequired
        "INPUT_ATTR_STEP" -> Right CADFIInputAttrStep
        "INPUT_TYPE_SEARCH" -> Right CADFIInputTypeSearch
        "INPUT_TYPE_TEL" -> Right CADFIInputTypeTel
        "INPUT_TYPE_URL" -> Right CADFIInputTypeURL
        "INPUT_TYPE_EMAIL" -> Right CADFIInputTypeEmail
        "INPUT_TYPE_DATETIME" -> Right CADFIInputTypeDatetime
        "INPUT_TYPE_DATE" -> Right CADFIInputTypeDate
        "INPUT_TYPE_MONTH" -> Right CADFIInputTypeMonth
        "INPUT_TYPE_WEEK" -> Right CADFIInputTypeWeek
        "INPUT_TYPE_TIME" -> Right CADFIInputTypeTime
        "INPUT_TYPE_DATETIME_LOCAL" -> Right CADFIInputTypeDatetimeLocal
        "INPUT_TYPE_NUMBER" -> Right CADFIInputTypeNumber
        "INPUT_TYPE_RANGE" -> Right CADFIInputTypeRange
        "INPUT_TYPE_COLOR" -> Right CADFIInputTypeColor
        "LOCAL_STORAGE" -> Right CADFILocalStorage
        "POST_MESSAGE" -> Right CADFIPostMessage
        "SESSION_STORAGE" -> Right CADFISessionStorage
        "WEB_SOCKETS" -> Right CADFIWebSockets
        "WEB_SQL_DATABASE" -> Right CADFIWebSQLDatabase
        "WEB_WORKERS" -> Right CADFIWebWorkers
        "GEO_LOCATION" -> Right CADFIGeoLocation
        "INLINE_SVG" -> Right CADFIInlineSvg
        "SMIL" -> Right CADFISmil
        "SVG_HREF" -> Right CADFISvgHref
        "SVG_CLIP_PATHS" -> Right CADFISvgClipPaths
        "TOUCH" -> Right CADFITouch
        "WEBGL" -> Right CADFIWebgl
        "SVG_FILTERS" -> Right CADFISvgFilters
        "SVG_FE_IMAGE" -> Right CADFISvgFeImage
        x -> Left ("Unable to parse CreativeAssetDetectedFeaturesItem from: " <> x)

instance ToHttpApiData CreativeAssetDetectedFeaturesItem where
    toQueryParam = \case
        CADFICssFontFace -> "CSS_FONT_FACE"
        CADFICssBackgRoundSize -> "CSS_BACKGROUND_SIZE"
        CADFICssBOrderImage -> "CSS_BORDER_IMAGE"
        CADFICssBOrderRadius -> "CSS_BORDER_RADIUS"
        CADFICssBoxShadow -> "CSS_BOX_SHADOW"
        CADFICssFlexBox -> "CSS_FLEX_BOX"
        CADFICssHsla -> "CSS_HSLA"
        CADFICssMultipleBgs -> "CSS_MULTIPLE_BGS"
        CADFICssOpacity -> "CSS_OPACITY"
        CADFICssRgba -> "CSS_RGBA"
        CADFICssTextShadow -> "CSS_TEXT_SHADOW"
        CADFICssAnimations -> "CSS_ANIMATIONS"
        CADFICssColumns -> "CSS_COLUMNS"
        CADFICssGeneratedContent -> "CSS_GENERATED_CONTENT"
        CADFICssGradients -> "CSS_GRADIENTS"
        CADFICssReflections -> "CSS_REFLECTIONS"
        CADFICssTransforms -> "CSS_TRANSFORMS"
        CADFICssTRANSFORMS3D -> "CSS_TRANSFORMS3D"
        CADFICssTransitions -> "CSS_TRANSITIONS"
        CADFIApplicationCache -> "APPLICATION_CACHE"
        CADFICanvas -> "CANVAS"
        CADFICanvasText -> "CANVAS_TEXT"
        CADFIDragAndDrop -> "DRAG_AND_DROP"
        CADFIHashChange -> "HASH_CHANGE"
        CADFIHistory -> "HISTORY"
        CADFIAudio -> "AUDIO"
        CADFIVideo -> "VIDEO"
        CADFIIndexedDB -> "INDEXED_DB"
        CADFIInputAttrAutocomplete -> "INPUT_ATTR_AUTOCOMPLETE"
        CADFIInputAttrAutofocus -> "INPUT_ATTR_AUTOFOCUS"
        CADFIInputAttrList -> "INPUT_ATTR_LIST"
        CADFIInputAttrPlaceholder -> "INPUT_ATTR_PLACEHOLDER"
        CADFIInputAttrMax -> "INPUT_ATTR_MAX"
        CADFIInputAttrMin -> "INPUT_ATTR_MIN"
        CADFIInputAttrMultiple -> "INPUT_ATTR_MULTIPLE"
        CADFIInputAttrPattern -> "INPUT_ATTR_PATTERN"
        CADFIInputAttrRequired -> "INPUT_ATTR_REQUIRED"
        CADFIInputAttrStep -> "INPUT_ATTR_STEP"
        CADFIInputTypeSearch -> "INPUT_TYPE_SEARCH"
        CADFIInputTypeTel -> "INPUT_TYPE_TEL"
        CADFIInputTypeURL -> "INPUT_TYPE_URL"
        CADFIInputTypeEmail -> "INPUT_TYPE_EMAIL"
        CADFIInputTypeDatetime -> "INPUT_TYPE_DATETIME"
        CADFIInputTypeDate -> "INPUT_TYPE_DATE"
        CADFIInputTypeMonth -> "INPUT_TYPE_MONTH"
        CADFIInputTypeWeek -> "INPUT_TYPE_WEEK"
        CADFIInputTypeTime -> "INPUT_TYPE_TIME"
        CADFIInputTypeDatetimeLocal -> "INPUT_TYPE_DATETIME_LOCAL"
        CADFIInputTypeNumber -> "INPUT_TYPE_NUMBER"
        CADFIInputTypeRange -> "INPUT_TYPE_RANGE"
        CADFIInputTypeColor -> "INPUT_TYPE_COLOR"
        CADFILocalStorage -> "LOCAL_STORAGE"
        CADFIPostMessage -> "POST_MESSAGE"
        CADFISessionStorage -> "SESSION_STORAGE"
        CADFIWebSockets -> "WEB_SOCKETS"
        CADFIWebSQLDatabase -> "WEB_SQL_DATABASE"
        CADFIWebWorkers -> "WEB_WORKERS"
        CADFIGeoLocation -> "GEO_LOCATION"
        CADFIInlineSvg -> "INLINE_SVG"
        CADFISmil -> "SMIL"
        CADFISvgHref -> "SVG_HREF"
        CADFISvgClipPaths -> "SVG_CLIP_PATHS"
        CADFITouch -> "TOUCH"
        CADFIWebgl -> "WEBGL"
        CADFISvgFilters -> "SVG_FILTERS"
        CADFISvgFeImage -> "SVG_FE_IMAGE"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityGroupType

instance FromHttpApiData FloodlightActivityGroupType where
    parseQueryParam = \case
        "COUNTER" -> Right FAGTCounter
        "SALE" -> Right FAGTSale
        x -> Left ("Unable to parse FloodlightActivityGroupType from: " <> x)

instance ToHttpApiData FloodlightActivityGroupType where
    toQueryParam = \case
        FAGTCounter -> "COUNTER"
        FAGTSale -> "SALE"

instance FromJSON FloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivityGroupType"

instance ToJSON FloodlightActivityGroupType where
    toJSON = toJSONText

-- | Tag formats to generate for these placements. *Note:*
-- PLACEMENT_TAG_STANDARD can only be generated for 1x1 placements.
data PlacementsGeneratetagsTagFormats
    = PGTFPlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | PGTFPlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | PGTFPlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | PGTFPlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | PGTFPlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | PGTFPlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | PGTFPlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | PGTFPlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | PGTFPlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | PGTFPlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | PGTFPlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | PGTFPlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | PGTFPlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
    | PGTFPlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | PGTFPlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | PGTFPlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | PGTFPlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | PGTFPlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | PGTFPlacementTagInstreamVideoPrefetchVast4
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementsGeneratetagsTagFormats

instance FromHttpApiData PlacementsGeneratetagsTagFormats where
    parseQueryParam = \case
        "PLACEMENT_TAG_STANDARD" -> Right PGTFPlacementTagStandard
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Right PGTFPlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Right PGTFPlacementTagIframeIlayer
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Right PGTFPlacementTagInternalRedirect
        "PLACEMENT_TAG_JAVASCRIPT" -> Right PGTFPlacementTagJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Right PGTFPlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Right PGTFPlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Right PGTFPlacementTagInterstitialJavascript
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Right PGTFPlacementTagClickCommands
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Right PGTFPlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_TRACKING" -> Right PGTFPlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Right PGTFPlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Right PGTFPlacementTagTrackingJavascript
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Right PGTFPlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Right PGTFPlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Right PGTFPlacementTagJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Right PGTFPlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Right PGTFPlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4" -> Right PGTFPlacementTagInstreamVideoPrefetchVast4
        x -> Left ("Unable to parse PlacementsGeneratetagsTagFormats from: " <> x)

instance ToHttpApiData PlacementsGeneratetagsTagFormats where
    toQueryParam = \case
        PGTFPlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        PGTFPlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        PGTFPlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        PGTFPlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        PGTFPlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        PGTFPlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        PGTFPlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        PGTFPlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        PGTFPlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        PGTFPlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        PGTFPlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        PGTFPlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        PGTFPlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"
        PGTFPlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        PGTFPlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        PGTFPlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        PGTFPlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        PGTFPlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        PGTFPlacementTagInstreamVideoPrefetchVast4 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountUserProFilesListSortField

instance FromHttpApiData AccountUserProFilesListSortField where
    parseQueryParam = \case
        "ID" -> Right AUPFLSFID
        "NAME" -> Right AUPFLSFName
        x -> Left ("Unable to parse AccountUserProFilesListSortField from: " <> x)

instance ToHttpApiData AccountUserProFilesListSortField where
    toQueryParam = \case
        AUPFLSFID -> "ID"
        AUPFLSFName -> "NAME"

instance FromJSON AccountUserProFilesListSortField where
    parseJSON = parseJSONText "AccountUserProFilesListSortField"

instance ToJSON AccountUserProFilesListSortField where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Determines how the \'value\' field is matched when filtering. If not
-- specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'*\' is
-- allowed as a placeholder for variable length character sequences, and it
-- can be escaped with a backslash. Note, only paid search dimensions
-- (\'dfa:paidSearch*\') allow a matchType other than EXACT.
data PathFilterPathMatchPosition
    = PFPMPPathMatchPositionUnspecified
      -- ^ @PATH_MATCH_POSITION_UNSPECIFIED@
    | PFPMPAny
      -- ^ @ANY@
    | PFPMPFirst
      -- ^ @FIRST@
    | PFPMPLast
      -- ^ @LAST@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PathFilterPathMatchPosition

instance FromHttpApiData PathFilterPathMatchPosition where
    parseQueryParam = \case
        "PATH_MATCH_POSITION_UNSPECIFIED" -> Right PFPMPPathMatchPositionUnspecified
        "ANY" -> Right PFPMPAny
        "FIRST" -> Right PFPMPFirst
        "LAST" -> Right PFPMPLast
        x -> Left ("Unable to parse PathFilterPathMatchPosition from: " <> x)

instance ToHttpApiData PathFilterPathMatchPosition where
    toQueryParam = \case
        PFPMPPathMatchPositionUnspecified -> "PATH_MATCH_POSITION_UNSPECIFIED"
        PFPMPAny -> "ANY"
        PFPMPFirst -> "FIRST"
        PFPMPLast -> "LAST"

instance FromJSON PathFilterPathMatchPosition where
    parseJSON = parseJSONText "PathFilterPathMatchPosition"

instance ToJSON PathFilterPathMatchPosition where
    toJSON = toJSONText

-- | Order of sorted results.
data InventoryItemsListSortOrder
    = IILSOAscending
      -- ^ @ASCENDING@
    | IILSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InventoryItemsListSortOrder

instance FromHttpApiData InventoryItemsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right IILSOAscending
        "DESCENDING" -> Right IILSODescending
        x -> Left ("Unable to parse InventoryItemsListSortOrder from: " <> x)

instance ToHttpApiData InventoryItemsListSortOrder where
    toQueryParam = \case
        IILSOAscending -> "ASCENDING"
        IILSODescending -> "DESCENDING"

instance FromJSON InventoryItemsListSortOrder where
    parseJSON = parseJSONText "InventoryItemsListSortOrder"

instance ToJSON InventoryItemsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results.
data PlacementStrategiesListSortOrder
    = PSLSOAscending
      -- ^ @ASCENDING@
    | PSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementStrategiesListSortOrder

instance FromHttpApiData PlacementStrategiesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right PSLSOAscending
        "DESCENDING" -> Right PSLSODescending
        x -> Left ("Unable to parse PlacementStrategiesListSortOrder from: " <> x)

instance ToHttpApiData PlacementStrategiesListSortOrder where
    toQueryParam = \case
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
    | RFLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportsFilesListSortField

instance FromHttpApiData ReportsFilesListSortField where
    parseQueryParam = \case
        "ID" -> Right RFLSFID
        "LAST_MODIFIED_TIME" -> Right RFLSFLastModifiedTime
        x -> Left ("Unable to parse ReportsFilesListSortField from: " <> x)

instance ToHttpApiData ReportsFilesListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativesListSortField

instance FromHttpApiData CreativesListSortField where
    parseQueryParam = \case
        "ID" -> Right CID
        "NAME" -> Right CName
        x -> Left ("Unable to parse CreativesListSortField from: " <> x)

instance ToHttpApiData CreativesListSortField where
    toQueryParam = \case
        CID -> "ID"
        CName -> "NAME"

instance FromJSON CreativesListSortField where
    parseJSON = parseJSONText "CreativesListSortField"

instance ToJSON CreativesListSortField where
    toJSON = toJSONText

data DayPartTargetingDaysOfWeekItem
    = DPTDOWIMonday
      -- ^ @MONDAY@
    | DPTDOWITuesday
      -- ^ @TUESDAY@
    | DPTDOWIWednesday
      -- ^ @WEDNESDAY@
    | DPTDOWIThursday
      -- ^ @THURSDAY@
    | DPTDOWIFriday
      -- ^ @FRIDAY@
    | DPTDOWISaturday
      -- ^ @SATURDAY@
    | DPTDOWISunday
      -- ^ @SUNDAY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DayPartTargetingDaysOfWeekItem

instance FromHttpApiData DayPartTargetingDaysOfWeekItem where
    parseQueryParam = \case
        "MONDAY" -> Right DPTDOWIMonday
        "TUESDAY" -> Right DPTDOWITuesday
        "WEDNESDAY" -> Right DPTDOWIWednesday
        "THURSDAY" -> Right DPTDOWIThursday
        "FRIDAY" -> Right DPTDOWIFriday
        "SATURDAY" -> Right DPTDOWISaturday
        "SUNDAY" -> Right DPTDOWISunday
        x -> Left ("Unable to parse DayPartTargetingDaysOfWeekItem from: " <> x)

instance ToHttpApiData DayPartTargetingDaysOfWeekItem where
    toQueryParam = \case
        DPTDOWIMonday -> "MONDAY"
        DPTDOWITuesday -> "TUESDAY"
        DPTDOWIWednesday -> "WEDNESDAY"
        DPTDOWIThursday -> "THURSDAY"
        DPTDOWIFriday -> "FRIDAY"
        DPTDOWISaturday -> "SATURDAY"
        DPTDOWISunday -> "SUNDAY"

instance FromJSON DayPartTargetingDaysOfWeekItem where
    parseJSON = parseJSONText "DayPartTargetingDaysOfWeekItem"

instance ToJSON DayPartTargetingDaysOfWeekItem where
    toJSON = toJSONText

-- | Strategy for calculating weights. Used with
-- CREATIVE_ROTATION_TYPE_RANDOM.
data CreativeRotationWeightCalculationStrategy
    = WeightStrategyEqual
      -- ^ @WEIGHT_STRATEGY_EQUAL@
    | WeightStrategyCustom
      -- ^ @WEIGHT_STRATEGY_CUSTOM@
    | WeightStrategyHighestCtr
      -- ^ @WEIGHT_STRATEGY_HIGHEST_CTR@
    | WeightStrategyOptimized
      -- ^ @WEIGHT_STRATEGY_OPTIMIZED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeRotationWeightCalculationStrategy

instance FromHttpApiData CreativeRotationWeightCalculationStrategy where
    parseQueryParam = \case
        "WEIGHT_STRATEGY_EQUAL" -> Right WeightStrategyEqual
        "WEIGHT_STRATEGY_CUSTOM" -> Right WeightStrategyCustom
        "WEIGHT_STRATEGY_HIGHEST_CTR" -> Right WeightStrategyHighestCtr
        "WEIGHT_STRATEGY_OPTIMIZED" -> Right WeightStrategyOptimized
        x -> Left ("Unable to parse CreativeRotationWeightCalculationStrategy from: " <> x)

instance ToHttpApiData CreativeRotationWeightCalculationStrategy where
    toQueryParam = \case
        WeightStrategyEqual -> "WEIGHT_STRATEGY_EQUAL"
        WeightStrategyCustom -> "WEIGHT_STRATEGY_CUSTOM"
        WeightStrategyHighestCtr -> "WEIGHT_STRATEGY_HIGHEST_CTR"
        WeightStrategyOptimized -> "WEIGHT_STRATEGY_OPTIMIZED"

instance FromJSON CreativeRotationWeightCalculationStrategy where
    parseJSON = parseJSONText "CreativeRotationWeightCalculationStrategy"

instance ToJSON CreativeRotationWeightCalculationStrategy where
    toJSON = toJSONText

-- | The scope that defines which results are returned.
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilesListScope

instance FromHttpApiData FilesListScope where
    parseQueryParam = \case
        "ALL" -> Right FLSAll
        "MINE" -> Right FLSMine
        "SHARED_WITH_ME" -> Right FLSSharedWithMe
        x -> Left ("Unable to parse FilesListScope from: " <> x)

instance ToHttpApiData FilesListScope where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentCategoriesListSortField

instance FromHttpApiData ContentCategoriesListSortField where
    parseQueryParam = \case
        "ID" -> Right CCLSFID
        "NAME" -> Right CCLSFName
        x -> Left ("Unable to parse ContentCategoriesListSortField from: " <> x)

instance ToHttpApiData ContentCategoriesListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectAudienceAgeGroup

instance FromHttpApiData ProjectAudienceAgeGroup where
    parseQueryParam = \case
        "PLANNING_AUDIENCE_AGE_18_24" -> Right PlanningAudienceAge1824
        "PLANNING_AUDIENCE_AGE_25_34" -> Right PlanningAudienceAge2534
        "PLANNING_AUDIENCE_AGE_35_44" -> Right PlanningAudienceAge3544
        "PLANNING_AUDIENCE_AGE_45_54" -> Right PlanningAudienceAge4554
        "PLANNING_AUDIENCE_AGE_55_64" -> Right PlanningAudienceAge5564
        "PLANNING_AUDIENCE_AGE_65_OR_MORE" -> Right PlanningAudienceAge65OrMore
        "PLANNING_AUDIENCE_AGE_UNKNOWN" -> Right PlanningAudienceAgeUnknown
        x -> Left ("Unable to parse ProjectAudienceAgeGroup from: " <> x)

instance ToHttpApiData ProjectAudienceAgeGroup where
    toQueryParam = \case
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
-- ( AD_SERVING_DEFAULT_AD) cannot be created directly (see Creative
-- resource).
data AdType
    = ATAdServingStandardAd
      -- ^ @AD_SERVING_STANDARD_AD@
    | ATAdServingDefaultAd
      -- ^ @AD_SERVING_DEFAULT_AD@
    | ATAdServingClickTracker
      -- ^ @AD_SERVING_CLICK_TRACKER@
    | ATAdServingTracking
      -- ^ @AD_SERVING_TRACKING@
    | ATAdServingBrandSafeAd
      -- ^ @AD_SERVING_BRAND_SAFE_AD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdType

instance FromHttpApiData AdType where
    parseQueryParam = \case
        "AD_SERVING_STANDARD_AD" -> Right ATAdServingStandardAd
        "AD_SERVING_DEFAULT_AD" -> Right ATAdServingDefaultAd
        "AD_SERVING_CLICK_TRACKER" -> Right ATAdServingClickTracker
        "AD_SERVING_TRACKING" -> Right ATAdServingTracking
        "AD_SERVING_BRAND_SAFE_AD" -> Right ATAdServingBrandSafeAd
        x -> Left ("Unable to parse AdType from: " <> x)

instance ToHttpApiData AdType where
    toQueryParam = \case
        ATAdServingStandardAd -> "AD_SERVING_STANDARD_AD"
        ATAdServingDefaultAd -> "AD_SERVING_DEFAULT_AD"
        ATAdServingClickTracker -> "AD_SERVING_CLICK_TRACKER"
        ATAdServingTracking -> "AD_SERVING_TRACKING"
        ATAdServingBrandSafeAd -> "AD_SERVING_BRAND_SAFE_AD"

instance FromJSON AdType where
    parseJSON = parseJSONText "AdType"

instance ToJSON AdType where
    toJSON = toJSONText

-- | .
data MeasurementPartnerAdvertiserLinkLinkStatus
    = MPALLSMeasurementPartnerUnlinked
      -- ^ @MEASUREMENT_PARTNER_UNLINKED@
    | MPALLSMeasurementPartnerLinked
      -- ^ @MEASUREMENT_PARTNER_LINKED@
    | MPALLSMeasurementPartnerLinkPending
      -- ^ @MEASUREMENT_PARTNER_LINK_PENDING@
    | MPALLSMeasurementPartnerLinkFailure
      -- ^ @MEASUREMENT_PARTNER_LINK_FAILURE@
    | MPALLSMeasurementPartnerLinkOptOut
      -- ^ @MEASUREMENT_PARTNER_LINK_OPT_OUT@
    | MPALLSMeasurementPartnerLinkOptOutPending
      -- ^ @MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING@
    | MPALLSMeasurementPartnerLinkWrAppingPending
      -- ^ @MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING@
    | MPALLSMeasurementPartnerModeChangePending
      -- ^ @MEASUREMENT_PARTNER_MODE_CHANGE_PENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MeasurementPartnerAdvertiserLinkLinkStatus

instance FromHttpApiData MeasurementPartnerAdvertiserLinkLinkStatus where
    parseQueryParam = \case
        "MEASUREMENT_PARTNER_UNLINKED" -> Right MPALLSMeasurementPartnerUnlinked
        "MEASUREMENT_PARTNER_LINKED" -> Right MPALLSMeasurementPartnerLinked
        "MEASUREMENT_PARTNER_LINK_PENDING" -> Right MPALLSMeasurementPartnerLinkPending
        "MEASUREMENT_PARTNER_LINK_FAILURE" -> Right MPALLSMeasurementPartnerLinkFailure
        "MEASUREMENT_PARTNER_LINK_OPT_OUT" -> Right MPALLSMeasurementPartnerLinkOptOut
        "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING" -> Right MPALLSMeasurementPartnerLinkOptOutPending
        "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING" -> Right MPALLSMeasurementPartnerLinkWrAppingPending
        "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING" -> Right MPALLSMeasurementPartnerModeChangePending
        x -> Left ("Unable to parse MeasurementPartnerAdvertiserLinkLinkStatus from: " <> x)

instance ToHttpApiData MeasurementPartnerAdvertiserLinkLinkStatus where
    toQueryParam = \case
        MPALLSMeasurementPartnerUnlinked -> "MEASUREMENT_PARTNER_UNLINKED"
        MPALLSMeasurementPartnerLinked -> "MEASUREMENT_PARTNER_LINKED"
        MPALLSMeasurementPartnerLinkPending -> "MEASUREMENT_PARTNER_LINK_PENDING"
        MPALLSMeasurementPartnerLinkFailure -> "MEASUREMENT_PARTNER_LINK_FAILURE"
        MPALLSMeasurementPartnerLinkOptOut -> "MEASUREMENT_PARTNER_LINK_OPT_OUT"
        MPALLSMeasurementPartnerLinkOptOutPending -> "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING"
        MPALLSMeasurementPartnerLinkWrAppingPending -> "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING"
        MPALLSMeasurementPartnerModeChangePending -> "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING"

instance FromJSON MeasurementPartnerAdvertiserLinkLinkStatus where
    parseJSON = parseJSONText "MeasurementPartnerAdvertiserLinkLinkStatus"

instance ToJSON MeasurementPartnerAdvertiserLinkLinkStatus where
    toJSON = toJSONText

-- | Select only change logs with the specified action.
data ChangeLogsListAction
    = ActionCreate
      -- ^ @ACTION_CREATE@
    | ActionUpdate
      -- ^ @ACTION_UPDATE@
    | ActionDelete
      -- ^ @ACTION_DELETE@
    | ActionEnable
      -- ^ @ACTION_ENABLE@
    | ActionDisable
      -- ^ @ACTION_DISABLE@
    | ActionAdd
      -- ^ @ACTION_ADD@
    | ActionRemove
      -- ^ @ACTION_REMOVE@
    | ActionMarkAsDefault
      -- ^ @ACTION_MARK_AS_DEFAULT@
    | ActionAssociate
      -- ^ @ACTION_ASSOCIATE@
    | ActionAssign
      -- ^ @ACTION_ASSIGN@
    | ActionUnassign
      -- ^ @ACTION_UNASSIGN@
    | ActionSend
      -- ^ @ACTION_SEND@
    | ActionLink
      -- ^ @ACTION_LINK@
    | ActionUnlink
      -- ^ @ACTION_UNLINK@
    | ActionPush
      -- ^ @ACTION_PUSH@
    | ActionEmailTags
      -- ^ @ACTION_EMAIL_TAGS@
    | ActionShare
      -- ^ @ACTION_SHARE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChangeLogsListAction

instance FromHttpApiData ChangeLogsListAction where
    parseQueryParam = \case
        "ACTION_CREATE" -> Right ActionCreate
        "ACTION_UPDATE" -> Right ActionUpdate
        "ACTION_DELETE" -> Right ActionDelete
        "ACTION_ENABLE" -> Right ActionEnable
        "ACTION_DISABLE" -> Right ActionDisable
        "ACTION_ADD" -> Right ActionAdd
        "ACTION_REMOVE" -> Right ActionRemove
        "ACTION_MARK_AS_DEFAULT" -> Right ActionMarkAsDefault
        "ACTION_ASSOCIATE" -> Right ActionAssociate
        "ACTION_ASSIGN" -> Right ActionAssign
        "ACTION_UNASSIGN" -> Right ActionUnassign
        "ACTION_SEND" -> Right ActionSend
        "ACTION_LINK" -> Right ActionLink
        "ACTION_UNLINK" -> Right ActionUnlink
        "ACTION_PUSH" -> Right ActionPush
        "ACTION_EMAIL_TAGS" -> Right ActionEmailTags
        "ACTION_SHARE" -> Right ActionShare
        x -> Left ("Unable to parse ChangeLogsListAction from: " <> x)

instance ToHttpApiData ChangeLogsListAction where
    toQueryParam = \case
        ActionCreate -> "ACTION_CREATE"
        ActionUpdate -> "ACTION_UPDATE"
        ActionDelete -> "ACTION_DELETE"
        ActionEnable -> "ACTION_ENABLE"
        ActionDisable -> "ACTION_DISABLE"
        ActionAdd -> "ACTION_ADD"
        ActionRemove -> "ACTION_REMOVE"
        ActionMarkAsDefault -> "ACTION_MARK_AS_DEFAULT"
        ActionAssociate -> "ACTION_ASSOCIATE"
        ActionAssign -> "ACTION_ASSIGN"
        ActionUnassign -> "ACTION_UNASSIGN"
        ActionSend -> "ACTION_SEND"
        ActionLink -> "ACTION_LINK"
        ActionUnlink -> "ACTION_UNLINK"
        ActionPush -> "ACTION_PUSH"
        ActionEmailTags -> "ACTION_EMAIL_TAGS"
        ActionShare -> "ACTION_SHARE"

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
    | CATArtworkTypeImage
      -- ^ @ARTWORK_TYPE_IMAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeArtworkType

instance FromHttpApiData CreativeArtworkType where
    parseQueryParam = \case
        "ARTWORK_TYPE_FLASH" -> Right CATArtworkTypeFlash
        "ARTWORK_TYPE_HTML5" -> Right CATArtworkTypeHTML5
        "ARTWORK_TYPE_MIXED" -> Right CATArtworkTypeMixed
        "ARTWORK_TYPE_IMAGE" -> Right CATArtworkTypeImage
        x -> Left ("Unable to parse CreativeArtworkType from: " <> x)

instance ToHttpApiData CreativeArtworkType where
    toQueryParam = \case
        CATArtworkTypeFlash -> "ARTWORK_TYPE_FLASH"
        CATArtworkTypeHTML5 -> "ARTWORK_TYPE_HTML5"
        CATArtworkTypeMixed -> "ARTWORK_TYPE_MIXED"
        CATArtworkTypeImage -> "ARTWORK_TYPE_IMAGE"

instance FromJSON CreativeArtworkType where
    parseJSON = parseJSONText "CreativeArtworkType"

instance ToJSON CreativeArtworkType where
    toJSON = toJSONText

-- | Third-party placement status.
data PlacementStatus
    = PendingReview
      -- ^ @PENDING_REVIEW@
    | PaymentAccepted
      -- ^ @PAYMENT_ACCEPTED@
    | PaymentRejected
      -- ^ @PAYMENT_REJECTED@
    | AcknowledgeRejection
      -- ^ @ACKNOWLEDGE_REJECTION@
    | AcknowledgeAcceptance
      -- ^ @ACKNOWLEDGE_ACCEPTANCE@
    | Draft
      -- ^ @DRAFT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementStatus

instance FromHttpApiData PlacementStatus where
    parseQueryParam = \case
        "PENDING_REVIEW" -> Right PendingReview
        "PAYMENT_ACCEPTED" -> Right PaymentAccepted
        "PAYMENT_REJECTED" -> Right PaymentRejected
        "ACKNOWLEDGE_REJECTION" -> Right AcknowledgeRejection
        "ACKNOWLEDGE_ACCEPTANCE" -> Right AcknowledgeAcceptance
        "DRAFT" -> Right Draft
        x -> Left ("Unable to parse PlacementStatus from: " <> x)

instance ToHttpApiData PlacementStatus where
    toQueryParam = \case
        PendingReview -> "PENDING_REVIEW"
        PaymentAccepted -> "PAYMENT_ACCEPTED"
        PaymentRejected -> "PAYMENT_REJECTED"
        AcknowledgeRejection -> "ACKNOWLEDGE_REJECTION"
        AcknowledgeAcceptance -> "ACKNOWLEDGE_ACCEPTANCE"
        Draft -> "DRAFT"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportScheduleRunsOnDayOfMonth

instance FromHttpApiData ReportScheduleRunsOnDayOfMonth where
    parseQueryParam = \case
        "DAY_OF_MONTH" -> Right DayOfMonth
        "WEEK_OF_MONTH" -> Right WeekOfMonth
        x -> Left ("Unable to parse ReportScheduleRunsOnDayOfMonth from: " <> x)

instance ToHttpApiData ReportScheduleRunsOnDayOfMonth where
    toQueryParam = \case
        DayOfMonth -> "DAY_OF_MONTH"
        WeekOfMonth -> "WEEK_OF_MONTH"

instance FromJSON ReportScheduleRunsOnDayOfMonth where
    parseJSON = parseJSONText "ReportScheduleRunsOnDayOfMonth"

instance ToJSON ReportScheduleRunsOnDayOfMonth where
    toJSON = toJSONText

-- | Measurement partner used for tag wrapping.
data MeasurementPartnerAdvertiserLinkMeasurementPartner
    = MPALMPNone
      -- ^ @NONE@
    | MPALMPIntegralAdScience
      -- ^ @INTEGRAL_AD_SCIENCE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MeasurementPartnerAdvertiserLinkMeasurementPartner

instance FromHttpApiData MeasurementPartnerAdvertiserLinkMeasurementPartner where
    parseQueryParam = \case
        "NONE" -> Right MPALMPNone
        "INTEGRAL_AD_SCIENCE" -> Right MPALMPIntegralAdScience
        x -> Left ("Unable to parse MeasurementPartnerAdvertiserLinkMeasurementPartner from: " <> x)

instance ToHttpApiData MeasurementPartnerAdvertiserLinkMeasurementPartner where
    toQueryParam = \case
        MPALMPNone -> "NONE"
        MPALMPIntegralAdScience -> "INTEGRAL_AD_SCIENCE"

instance FromJSON MeasurementPartnerAdvertiserLinkMeasurementPartner where
    parseJSON = parseJSONText "MeasurementPartnerAdvertiserLinkMeasurementPartner"

instance ToJSON MeasurementPartnerAdvertiserLinkMeasurementPartner where
    toJSON = toJSONText

data FloodlightActivityUserDefinedVariableTypesItem
    = FAUDVTIU1
      -- ^ @U1@
    | FAUDVTIU2
      -- ^ @U2@
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
    | FAUDVTIU20
      -- ^ @U20@
    | FAUDVTIU21
      -- ^ @U21@
    | FAUDVTIU22
      -- ^ @U22@
    | FAUDVTIU23
      -- ^ @U23@
    | FAUDVTIU24
      -- ^ @U24@
    | FAUDVTIU25
      -- ^ @U25@
    | FAUDVTIU26
      -- ^ @U26@
    | FAUDVTIU27
      -- ^ @U27@
    | FAUDVTIU28
      -- ^ @U28@
    | FAUDVTIU29
      -- ^ @U29@
    | FAUDVTIU30
      -- ^ @U30@
    | FAUDVTIU31
      -- ^ @U31@
    | FAUDVTIU32
      -- ^ @U32@
    | FAUDVTIU33
      -- ^ @U33@
    | FAUDVTIU34
      -- ^ @U34@
    | FAUDVTIU35
      -- ^ @U35@
    | FAUDVTIU36
      -- ^ @U36@
    | FAUDVTIU37
      -- ^ @U37@
    | FAUDVTIU38
      -- ^ @U38@
    | FAUDVTIU39
      -- ^ @U39@
    | FAUDVTIU40
      -- ^ @U40@
    | FAUDVTIU41
      -- ^ @U41@
    | FAUDVTIU42
      -- ^ @U42@
    | FAUDVTIU43
      -- ^ @U43@
    | FAUDVTIU44
      -- ^ @U44@
    | FAUDVTIU45
      -- ^ @U45@
    | FAUDVTIU46
      -- ^ @U46@
    | FAUDVTIU47
      -- ^ @U47@
    | FAUDVTIU48
      -- ^ @U48@
    | FAUDVTIU49
      -- ^ @U49@
    | FAUDVTIU50
      -- ^ @U50@
    | FAUDVTIU51
      -- ^ @U51@
    | FAUDVTIU52
      -- ^ @U52@
    | FAUDVTIU53
      -- ^ @U53@
    | FAUDVTIU54
      -- ^ @U54@
    | FAUDVTIU55
      -- ^ @U55@
    | FAUDVTIU56
      -- ^ @U56@
    | FAUDVTIU57
      -- ^ @U57@
    | FAUDVTIU58
      -- ^ @U58@
    | FAUDVTIU59
      -- ^ @U59@
    | FAUDVTIU60
      -- ^ @U60@
    | FAUDVTIU61
      -- ^ @U61@
    | FAUDVTIU62
      -- ^ @U62@
    | FAUDVTIU63
      -- ^ @U63@
    | FAUDVTIU64
      -- ^ @U64@
    | FAUDVTIU65
      -- ^ @U65@
    | FAUDVTIU66
      -- ^ @U66@
    | FAUDVTIU67
      -- ^ @U67@
    | FAUDVTIU68
      -- ^ @U68@
    | FAUDVTIU69
      -- ^ @U69@
    | FAUDVTIU70
      -- ^ @U70@
    | FAUDVTIU71
      -- ^ @U71@
    | FAUDVTIU72
      -- ^ @U72@
    | FAUDVTIU73
      -- ^ @U73@
    | FAUDVTIU74
      -- ^ @U74@
    | FAUDVTIU75
      -- ^ @U75@
    | FAUDVTIU76
      -- ^ @U76@
    | FAUDVTIU77
      -- ^ @U77@
    | FAUDVTIU78
      -- ^ @U78@
    | FAUDVTIU79
      -- ^ @U79@
    | FAUDVTIU80
      -- ^ @U80@
    | FAUDVTIU81
      -- ^ @U81@
    | FAUDVTIU82
      -- ^ @U82@
    | FAUDVTIU83
      -- ^ @U83@
    | FAUDVTIU84
      -- ^ @U84@
    | FAUDVTIU85
      -- ^ @U85@
    | FAUDVTIU86
      -- ^ @U86@
    | FAUDVTIU87
      -- ^ @U87@
    | FAUDVTIU88
      -- ^ @U88@
    | FAUDVTIU89
      -- ^ @U89@
    | FAUDVTIU90
      -- ^ @U90@
    | FAUDVTIU91
      -- ^ @U91@
    | FAUDVTIU92
      -- ^ @U92@
    | FAUDVTIU93
      -- ^ @U93@
    | FAUDVTIU94
      -- ^ @U94@
    | FAUDVTIU95
      -- ^ @U95@
    | FAUDVTIU96
      -- ^ @U96@
    | FAUDVTIU97
      -- ^ @U97@
    | FAUDVTIU98
      -- ^ @U98@
    | FAUDVTIU99
      -- ^ @U99@
    | FAUDVTIU100
      -- ^ @U100@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityUserDefinedVariableTypesItem

instance FromHttpApiData FloodlightActivityUserDefinedVariableTypesItem where
    parseQueryParam = \case
        "U1" -> Right FAUDVTIU1
        "U2" -> Right FAUDVTIU2
        "U3" -> Right FAUDVTIU3
        "U4" -> Right FAUDVTIU4
        "U5" -> Right FAUDVTIU5
        "U6" -> Right FAUDVTIU6
        "U7" -> Right FAUDVTIU7
        "U8" -> Right FAUDVTIU8
        "U9" -> Right FAUDVTIU9
        "U10" -> Right FAUDVTIU10
        "U11" -> Right FAUDVTIU11
        "U12" -> Right FAUDVTIU12
        "U13" -> Right FAUDVTIU13
        "U14" -> Right FAUDVTIU14
        "U15" -> Right FAUDVTIU15
        "U16" -> Right FAUDVTIU16
        "U17" -> Right FAUDVTIU17
        "U18" -> Right FAUDVTIU18
        "U19" -> Right FAUDVTIU19
        "U20" -> Right FAUDVTIU20
        "U21" -> Right FAUDVTIU21
        "U22" -> Right FAUDVTIU22
        "U23" -> Right FAUDVTIU23
        "U24" -> Right FAUDVTIU24
        "U25" -> Right FAUDVTIU25
        "U26" -> Right FAUDVTIU26
        "U27" -> Right FAUDVTIU27
        "U28" -> Right FAUDVTIU28
        "U29" -> Right FAUDVTIU29
        "U30" -> Right FAUDVTIU30
        "U31" -> Right FAUDVTIU31
        "U32" -> Right FAUDVTIU32
        "U33" -> Right FAUDVTIU33
        "U34" -> Right FAUDVTIU34
        "U35" -> Right FAUDVTIU35
        "U36" -> Right FAUDVTIU36
        "U37" -> Right FAUDVTIU37
        "U38" -> Right FAUDVTIU38
        "U39" -> Right FAUDVTIU39
        "U40" -> Right FAUDVTIU40
        "U41" -> Right FAUDVTIU41
        "U42" -> Right FAUDVTIU42
        "U43" -> Right FAUDVTIU43
        "U44" -> Right FAUDVTIU44
        "U45" -> Right FAUDVTIU45
        "U46" -> Right FAUDVTIU46
        "U47" -> Right FAUDVTIU47
        "U48" -> Right FAUDVTIU48
        "U49" -> Right FAUDVTIU49
        "U50" -> Right FAUDVTIU50
        "U51" -> Right FAUDVTIU51
        "U52" -> Right FAUDVTIU52
        "U53" -> Right FAUDVTIU53
        "U54" -> Right FAUDVTIU54
        "U55" -> Right FAUDVTIU55
        "U56" -> Right FAUDVTIU56
        "U57" -> Right FAUDVTIU57
        "U58" -> Right FAUDVTIU58
        "U59" -> Right FAUDVTIU59
        "U60" -> Right FAUDVTIU60
        "U61" -> Right FAUDVTIU61
        "U62" -> Right FAUDVTIU62
        "U63" -> Right FAUDVTIU63
        "U64" -> Right FAUDVTIU64
        "U65" -> Right FAUDVTIU65
        "U66" -> Right FAUDVTIU66
        "U67" -> Right FAUDVTIU67
        "U68" -> Right FAUDVTIU68
        "U69" -> Right FAUDVTIU69
        "U70" -> Right FAUDVTIU70
        "U71" -> Right FAUDVTIU71
        "U72" -> Right FAUDVTIU72
        "U73" -> Right FAUDVTIU73
        "U74" -> Right FAUDVTIU74
        "U75" -> Right FAUDVTIU75
        "U76" -> Right FAUDVTIU76
        "U77" -> Right FAUDVTIU77
        "U78" -> Right FAUDVTIU78
        "U79" -> Right FAUDVTIU79
        "U80" -> Right FAUDVTIU80
        "U81" -> Right FAUDVTIU81
        "U82" -> Right FAUDVTIU82
        "U83" -> Right FAUDVTIU83
        "U84" -> Right FAUDVTIU84
        "U85" -> Right FAUDVTIU85
        "U86" -> Right FAUDVTIU86
        "U87" -> Right FAUDVTIU87
        "U88" -> Right FAUDVTIU88
        "U89" -> Right FAUDVTIU89
        "U90" -> Right FAUDVTIU90
        "U91" -> Right FAUDVTIU91
        "U92" -> Right FAUDVTIU92
        "U93" -> Right FAUDVTIU93
        "U94" -> Right FAUDVTIU94
        "U95" -> Right FAUDVTIU95
        "U96" -> Right FAUDVTIU96
        "U97" -> Right FAUDVTIU97
        "U98" -> Right FAUDVTIU98
        "U99" -> Right FAUDVTIU99
        "U100" -> Right FAUDVTIU100
        x -> Left ("Unable to parse FloodlightActivityUserDefinedVariableTypesItem from: " <> x)

instance ToHttpApiData FloodlightActivityUserDefinedVariableTypesItem where
    toQueryParam = \case
        FAUDVTIU1 -> "U1"
        FAUDVTIU2 -> "U2"
        FAUDVTIU3 -> "U3"
        FAUDVTIU4 -> "U4"
        FAUDVTIU5 -> "U5"
        FAUDVTIU6 -> "U6"
        FAUDVTIU7 -> "U7"
        FAUDVTIU8 -> "U8"
        FAUDVTIU9 -> "U9"
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
        FAUDVTIU20 -> "U20"
        FAUDVTIU21 -> "U21"
        FAUDVTIU22 -> "U22"
        FAUDVTIU23 -> "U23"
        FAUDVTIU24 -> "U24"
        FAUDVTIU25 -> "U25"
        FAUDVTIU26 -> "U26"
        FAUDVTIU27 -> "U27"
        FAUDVTIU28 -> "U28"
        FAUDVTIU29 -> "U29"
        FAUDVTIU30 -> "U30"
        FAUDVTIU31 -> "U31"
        FAUDVTIU32 -> "U32"
        FAUDVTIU33 -> "U33"
        FAUDVTIU34 -> "U34"
        FAUDVTIU35 -> "U35"
        FAUDVTIU36 -> "U36"
        FAUDVTIU37 -> "U37"
        FAUDVTIU38 -> "U38"
        FAUDVTIU39 -> "U39"
        FAUDVTIU40 -> "U40"
        FAUDVTIU41 -> "U41"
        FAUDVTIU42 -> "U42"
        FAUDVTIU43 -> "U43"
        FAUDVTIU44 -> "U44"
        FAUDVTIU45 -> "U45"
        FAUDVTIU46 -> "U46"
        FAUDVTIU47 -> "U47"
        FAUDVTIU48 -> "U48"
        FAUDVTIU49 -> "U49"
        FAUDVTIU50 -> "U50"
        FAUDVTIU51 -> "U51"
        FAUDVTIU52 -> "U52"
        FAUDVTIU53 -> "U53"
        FAUDVTIU54 -> "U54"
        FAUDVTIU55 -> "U55"
        FAUDVTIU56 -> "U56"
        FAUDVTIU57 -> "U57"
        FAUDVTIU58 -> "U58"
        FAUDVTIU59 -> "U59"
        FAUDVTIU60 -> "U60"
        FAUDVTIU61 -> "U61"
        FAUDVTIU62 -> "U62"
        FAUDVTIU63 -> "U63"
        FAUDVTIU64 -> "U64"
        FAUDVTIU65 -> "U65"
        FAUDVTIU66 -> "U66"
        FAUDVTIU67 -> "U67"
        FAUDVTIU68 -> "U68"
        FAUDVTIU69 -> "U69"
        FAUDVTIU70 -> "U70"
        FAUDVTIU71 -> "U71"
        FAUDVTIU72 -> "U72"
        FAUDVTIU73 -> "U73"
        FAUDVTIU74 -> "U74"
        FAUDVTIU75 -> "U75"
        FAUDVTIU76 -> "U76"
        FAUDVTIU77 -> "U77"
        FAUDVTIU78 -> "U78"
        FAUDVTIU79 -> "U79"
        FAUDVTIU80 -> "U80"
        FAUDVTIU81 -> "U81"
        FAUDVTIU82 -> "U82"
        FAUDVTIU83 -> "U83"
        FAUDVTIU84 -> "U84"
        FAUDVTIU85 -> "U85"
        FAUDVTIU86 -> "U86"
        FAUDVTIU87 -> "U87"
        FAUDVTIU88 -> "U88"
        FAUDVTIU89 -> "U89"
        FAUDVTIU90 -> "U90"
        FAUDVTIU91 -> "U91"
        FAUDVTIU92 -> "U92"
        FAUDVTIU93 -> "U93"
        FAUDVTIU94 -> "U94"
        FAUDVTIU95 -> "U95"
        FAUDVTIU96 -> "U96"
        FAUDVTIU97 -> "U97"
        FAUDVTIU98 -> "U98"
        FAUDVTIU99 -> "U99"
        FAUDVTIU100 -> "U100"

instance FromJSON FloodlightActivityUserDefinedVariableTypesItem where
    parseJSON = parseJSONText "FloodlightActivityUserDefinedVariableTypesItem"

instance ToJSON FloodlightActivityUserDefinedVariableTypesItem where
    toJSON = toJSONText

-- | Site filter type for this event tag. If no type is specified then the
-- event tag will be applied to all sites.
data EventTagSiteFilterType
    = AllowList
      -- ^ @ALLOWLIST@
    | BlockList
      -- ^ @BLOCKLIST@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventTagSiteFilterType

instance FromHttpApiData EventTagSiteFilterType where
    parseQueryParam = \case
        "ALLOWLIST" -> Right AllowList
        "BLOCKLIST" -> Right BlockList
        x -> Left ("Unable to parse EventTagSiteFilterType from: " <> x)

instance ToHttpApiData EventTagSiteFilterType where
    toQueryParam = \case
        AllowList -> "ALLOWLIST"
        BlockList -> "BLOCKLIST"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportFormat

instance FromHttpApiData ReportFormat where
    parseQueryParam = \case
        "CSV" -> Right RFCSV
        "EXCEL" -> Right RFExcel
        x -> Left ("Unable to parse ReportFormat from: " <> x)

instance ToHttpApiData ReportFormat where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementGroupPlacementGroupType

instance FromHttpApiData PlacementGroupPlacementGroupType where
    parseQueryParam = \case
        "PLACEMENT_PACKAGE" -> Right PGPGTPlacementPackage
        "PLACEMENT_ROADBLOCK" -> Right PGPGTPlacementRoadblock
        x -> Left ("Unable to parse PlacementGroupPlacementGroupType from: " <> x)

instance ToHttpApiData PlacementGroupPlacementGroupType where
    toQueryParam = \case
        PGPGTPlacementPackage -> "PLACEMENT_PACKAGE"
        PGPGTPlacementRoadblock -> "PLACEMENT_ROADBLOCK"

instance FromJSON PlacementGroupPlacementGroupType where
    parseJSON = parseJSONText "PlacementGroupPlacementGroupType"

instance ToJSON PlacementGroupPlacementGroupType where
    toJSON = toJSONText

-- | Pricing type of this inventory item.
data PricingPricingType
    = PlanningPlacementPricingTypeImpressions
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS@
    | PlanningPlacementPricingTypeCpm
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPM@
    | PlanningPlacementPricingTypeClicks
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CLICKS@
    | PlanningPlacementPricingTypeCpc
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPC@
    | PlanningPlacementPricingTypeCpa
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPA@
    | PlanningPlacementPricingTypeFlatRateImpressions
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
    | PlanningPlacementPricingTypeFlatRateClicks
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS@
    | PlanningPlacementPricingTypeCpmActiveview
      -- ^ @PLANNING_PLACEMENT_PRICING_TYPE_CPM_ACTIVEVIEW@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PricingPricingType

instance FromHttpApiData PricingPricingType where
    parseQueryParam = \case
        "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS" -> Right PlanningPlacementPricingTypeImpressions
        "PLANNING_PLACEMENT_PRICING_TYPE_CPM" -> Right PlanningPlacementPricingTypeCpm
        "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS" -> Right PlanningPlacementPricingTypeClicks
        "PLANNING_PLACEMENT_PRICING_TYPE_CPC" -> Right PlanningPlacementPricingTypeCpc
        "PLANNING_PLACEMENT_PRICING_TYPE_CPA" -> Right PlanningPlacementPricingTypeCpa
        "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Right PlanningPlacementPricingTypeFlatRateImpressions
        "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS" -> Right PlanningPlacementPricingTypeFlatRateClicks
        "PLANNING_PLACEMENT_PRICING_TYPE_CPM_ACTIVEVIEW" -> Right PlanningPlacementPricingTypeCpmActiveview
        x -> Left ("Unable to parse PricingPricingType from: " <> x)

instance ToHttpApiData PricingPricingType where
    toQueryParam = \case
        PlanningPlacementPricingTypeImpressions -> "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS"
        PlanningPlacementPricingTypeCpm -> "PLANNING_PLACEMENT_PRICING_TYPE_CPM"
        PlanningPlacementPricingTypeClicks -> "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS"
        PlanningPlacementPricingTypeCpc -> "PLANNING_PLACEMENT_PRICING_TYPE_CPC"
        PlanningPlacementPricingTypeCpa -> "PLANNING_PLACEMENT_PRICING_TYPE_CPA"
        PlanningPlacementPricingTypeFlatRateImpressions -> "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS"
        PlanningPlacementPricingTypeFlatRateClicks -> "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS"
        PlanningPlacementPricingTypeCpmActiveview -> "PLANNING_PLACEMENT_PRICING_TYPE_CPM_ACTIVEVIEW"

instance FromJSON PricingPricingType where
    parseJSON = parseJSONText "PricingPricingType"

instance ToJSON PricingPricingType where
    toJSON = toJSONText

-- | Order of sorted results.
data SubAccountsListSortOrder
    = SALSOAscending
      -- ^ @ASCENDING@
    | SALSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubAccountsListSortOrder

instance FromHttpApiData SubAccountsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right SALSOAscending
        "DESCENDING" -> Right SALSODescending
        x -> Left ("Unable to parse SubAccountsListSortOrder from: " <> x)

instance ToHttpApiData SubAccountsListSortOrder where
    toQueryParam = \case
        SALSOAscending -> "ASCENDING"
        SALSODescending -> "DESCENDING"

instance FromJSON SubAccountsListSortOrder where
    parseJSON = parseJSONText "SubAccountsListSortOrder"

instance ToJSON SubAccountsListSortOrder where
    toJSON = toJSONText

-- | Registry used for the Ad ID value.
data UniversalAdIdRegistry
    = UAIROther
      -- ^ @OTHER@
    | UAIRAdIdOfficial
      -- ^ @AD_ID_OFFICIAL@
    | UAIRClearcast
      -- ^ @CLEARCAST@
    | UAIRDcm
      -- ^ @DCM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UniversalAdIdRegistry

instance FromHttpApiData UniversalAdIdRegistry where
    parseQueryParam = \case
        "OTHER" -> Right UAIROther
        "AD_ID_OFFICIAL" -> Right UAIRAdIdOfficial
        "CLEARCAST" -> Right UAIRClearcast
        "DCM" -> Right UAIRDcm
        x -> Left ("Unable to parse UniversalAdIdRegistry from: " <> x)

instance ToHttpApiData UniversalAdIdRegistry where
    toQueryParam = \case
        UAIROther -> "OTHER"
        UAIRAdIdOfficial -> "AD_ID_OFFICIAL"
        UAIRClearcast -> "CLEARCAST"
        UAIRDcm -> "DCM"

instance FromJSON UniversalAdIdRegistry where
    parseJSON = parseJSONText "UniversalAdIdRegistry"

instance ToJSON UniversalAdIdRegistry where
    toJSON = toJSONText

-- | Order of sorted results.
data AdsListSortOrder
    = ADSAscending
      -- ^ @ASCENDING@
    | ADSDescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdsListSortOrder

instance FromHttpApiData AdsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right ADSAscending
        "DESCENDING" -> Right ADSDescending
        x -> Left ("Unable to parse AdsListSortOrder from: " <> x)

instance ToHttpApiData AdsListSortOrder where
    toQueryParam = \case
        ADSAscending -> "ASCENDING"
        ADSDescending -> "DESCENDING"

instance FromJSON AdsListSortOrder where
    parseJSON = parseJSONText "AdsListSortOrder"

instance ToJSON AdsListSortOrder where
    toJSON = toJSONText

-- | Order of sorted results.
data ProjectsListSortOrder
    = PLSOAscending
      -- ^ @ASCENDING@
    | PLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsListSortOrder

instance FromHttpApiData ProjectsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right PLSOAscending
        "DESCENDING" -> Right PLSODescending
        x -> Left ("Unable to parse ProjectsListSortOrder from: " <> x)

instance ToHttpApiData ProjectsListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RemarketingListsListSortField

instance FromHttpApiData RemarketingListsListSortField where
    parseQueryParam = \case
        "ID" -> Right RLLSFID
        "NAME" -> Right RLLSFName
        x -> Left ("Unable to parse RemarketingListsListSortField from: " <> x)

instance ToHttpApiData RemarketingListsListSortField where
    toQueryParam = \case
        RLLSFID -> "ID"
        RLLSFName -> "NAME"

instance FromJSON RemarketingListsListSortField where
    parseJSON = parseJSONText "RemarketingListsListSortField"

instance ToJSON RemarketingListsListSortField where
    toJSON = toJSONText

-- | Mobile app directory.
data MobileAppDirectory
    = MADUnknown
      -- ^ @UNKNOWN@
    | MADAppleAppStore
      -- ^ @APPLE_APP_STORE@
    | MADGooglePlayStore
      -- ^ @GOOGLE_PLAY_STORE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MobileAppDirectory

instance FromHttpApiData MobileAppDirectory where
    parseQueryParam = \case
        "UNKNOWN" -> Right MADUnknown
        "APPLE_APP_STORE" -> Right MADAppleAppStore
        "GOOGLE_PLAY_STORE" -> Right MADGooglePlayStore
        x -> Left ("Unable to parse MobileAppDirectory from: " <> x)

instance ToHttpApiData MobileAppDirectory where
    toQueryParam = \case
        MADUnknown -> "UNKNOWN"
        MADAppleAppStore -> "APPLE_APP_STORE"
        MADGooglePlayStore -> "GOOGLE_PLAY_STORE"

instance FromJSON MobileAppDirectory where
    parseJSON = parseJSONText "MobileAppDirectory"

instance ToJSON MobileAppDirectory where
    toJSON = toJSONText

data ReportScheduleRepeatsOnWeekDaysItem
    = RSROWDISunday
      -- ^ @SUNDAY@
    | RSROWDIMonday
      -- ^ @MONDAY@
    | RSROWDITuesday
      -- ^ @TUESDAY@
    | RSROWDIWednesday
      -- ^ @WEDNESDAY@
    | RSROWDIThursday
      -- ^ @THURSDAY@
    | RSROWDIFriday
      -- ^ @FRIDAY@
    | RSROWDISaturday
      -- ^ @SATURDAY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportScheduleRepeatsOnWeekDaysItem

instance FromHttpApiData ReportScheduleRepeatsOnWeekDaysItem where
    parseQueryParam = \case
        "SUNDAY" -> Right RSROWDISunday
        "MONDAY" -> Right RSROWDIMonday
        "TUESDAY" -> Right RSROWDITuesday
        "WEDNESDAY" -> Right RSROWDIWednesday
        "THURSDAY" -> Right RSROWDIThursday
        "FRIDAY" -> Right RSROWDIFriday
        "SATURDAY" -> Right RSROWDISaturday
        x -> Left ("Unable to parse ReportScheduleRepeatsOnWeekDaysItem from: " <> x)

instance ToHttpApiData ReportScheduleRepeatsOnWeekDaysItem where
    toQueryParam = \case
        RSROWDISunday -> "SUNDAY"
        RSROWDIMonday -> "MONDAY"
        RSROWDITuesday -> "TUESDAY"
        RSROWDIWednesday -> "WEDNESDAY"
        RSROWDIThursday -> "THURSDAY"
        RSROWDIFriday -> "FRIDAY"
        RSROWDISaturday -> "SATURDAY"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeGroupAssignmentCreativeGroupNumber

instance FromHttpApiData CreativeGroupAssignmentCreativeGroupNumber where
    parseQueryParam = \case
        "CREATIVE_GROUP_ONE" -> Right CreativeGroupOne
        "CREATIVE_GROUP_TWO" -> Right CreativeGroupTwo
        x -> Left ("Unable to parse CreativeGroupAssignmentCreativeGroupNumber from: " <> x)

instance ToHttpApiData CreativeGroupAssignmentCreativeGroupNumber where
    toQueryParam = \case
        CreativeGroupOne -> "CREATIVE_GROUP_ONE"
        CreativeGroupTwo -> "CREATIVE_GROUP_TWO"

instance FromJSON CreativeGroupAssignmentCreativeGroupNumber where
    parseJSON = parseJSONText "CreativeGroupAssignmentCreativeGroupNumber"

instance ToJSON CreativeGroupAssignmentCreativeGroupNumber where
    toJSON = toJSONText

-- | Default VPAID adapter setting for new placements created under this
-- site. This value will be used to populate the
-- placements.vpaidAdapterChoice field, when no value is specified for the
-- new placement. Controls which VPAID format the measurement adapter will
-- use for in-stream video creatives assigned to the placement. The
-- publisher\'s specifications will typically determine this setting. For
-- VPAID creatives, the adapter format will match the VPAID format (HTML5
-- VPAID creatives use the HTML5 adapter). *Note:* Flash is no longer
-- supported. This field now defaults to HTML5 when the following values
-- are provided: FLASH, BOTH.
data SiteSettingsVpaidAdapterChoiceTemplate
    = SSVACTDefault
      -- ^ @DEFAULT@
    | SSVACTFlash
      -- ^ @FLASH@
    | SSVACTHTML5
      -- ^ @HTML5@
    | SSVACTBoth
      -- ^ @BOTH@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SiteSettingsVpaidAdapterChoiceTemplate

instance FromHttpApiData SiteSettingsVpaidAdapterChoiceTemplate where
    parseQueryParam = \case
        "DEFAULT" -> Right SSVACTDefault
        "FLASH" -> Right SSVACTFlash
        "HTML5" -> Right SSVACTHTML5
        "BOTH" -> Right SSVACTBoth
        x -> Left ("Unable to parse SiteSettingsVpaidAdapterChoiceTemplate from: " <> x)

instance ToHttpApiData SiteSettingsVpaidAdapterChoiceTemplate where
    toQueryParam = \case
        SSVACTDefault -> "DEFAULT"
        SSVACTFlash -> "FLASH"
        SSVACTHTML5 -> "HTML5"
        SSVACTBoth -> "BOTH"

instance FromJSON SiteSettingsVpaidAdapterChoiceTemplate where
    parseJSON = parseJSONText "SiteSettingsVpaidAdapterChoiceTemplate"

instance ToJSON SiteSettingsVpaidAdapterChoiceTemplate where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AccountsListSortField
    = AID
      -- ^ @ID@
    | AName
      -- ^ @NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsListSortField

instance FromHttpApiData AccountsListSortField where
    parseQueryParam = \case
        "ID" -> Right AID
        "NAME" -> Right AName
        x -> Left ("Unable to parse AccountsListSortField from: " <> x)

instance ToHttpApiData AccountsListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertisersListStatus

instance FromHttpApiData AdvertisersListStatus where
    parseQueryParam = \case
        "APPROVED" -> Right Approved
        "ON_HOLD" -> Right OnHold
        x -> Left ("Unable to parse AdvertisersListStatus from: " <> x)

instance ToHttpApiData AdvertisersListStatus where
    toQueryParam = \case
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
    = Exact
      -- ^ @EXACT@
    | BeginsWith
      -- ^ @BEGINS_WITH@
    | Contains
      -- ^ @CONTAINS@
    | WildcardExpression
      -- ^ @WILDCARD_EXPRESSION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DimensionValueMatchType

instance FromHttpApiData DimensionValueMatchType where
    parseQueryParam = \case
        "EXACT" -> Right Exact
        "BEGINS_WITH" -> Right BeginsWith
        "CONTAINS" -> Right Contains
        "WILDCARD_EXPRESSION" -> Right WildcardExpression
        x -> Left ("Unable to parse DimensionValueMatchType from: " <> x)

instance ToHttpApiData DimensionValueMatchType where
    toQueryParam = \case
        Exact -> "EXACT"
        BeginsWith -> "BEGINS_WITH"
        Contains -> "CONTAINS"
        WildcardExpression -> "WILDCARD_EXPRESSION"

instance FromJSON DimensionValueMatchType where
    parseJSON = parseJSONText "DimensionValueMatchType"

instance ToJSON DimensionValueMatchType where
    toJSON = toJSONText

-- | Determines how the \'value\' field is matched when filtering. If not
-- specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, \'*\' is
-- allowed as a placeholder for variable length character sequences, and it
-- can be escaped with a backslash. Note, only paid search dimensions
-- (\'dfa:paidSearch*\') allow a matchType other than EXACT.
data PathReportDimensionValueMatchType
    = PRDVMTExact
      -- ^ @EXACT@
    | PRDVMTBeginsWith
      -- ^ @BEGINS_WITH@
    | PRDVMTContains
      -- ^ @CONTAINS@
    | PRDVMTWildcardExpression
      -- ^ @WILDCARD_EXPRESSION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PathReportDimensionValueMatchType

instance FromHttpApiData PathReportDimensionValueMatchType where
    parseQueryParam = \case
        "EXACT" -> Right PRDVMTExact
        "BEGINS_WITH" -> Right PRDVMTBeginsWith
        "CONTAINS" -> Right PRDVMTContains
        "WILDCARD_EXPRESSION" -> Right PRDVMTWildcardExpression
        x -> Left ("Unable to parse PathReportDimensionValueMatchType from: " <> x)

instance ToHttpApiData PathReportDimensionValueMatchType where
    toQueryParam = \case
        PRDVMTExact -> "EXACT"
        PRDVMTBeginsWith -> "BEGINS_WITH"
        PRDVMTContains -> "CONTAINS"
        PRDVMTWildcardExpression -> "WILDCARD_EXPRESSION"

instance FromJSON PathReportDimensionValueMatchType where
    parseJSON = parseJSONText "PathReportDimensionValueMatchType"

instance ToJSON PathReportDimensionValueMatchType where
    toJSON = toJSONText

-- | Order of sorted results.
data PlacementGroupsListSortOrder
    = PGLSOAscending
      -- ^ @ASCENDING@
    | PGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementGroupsListSortOrder

instance FromHttpApiData PlacementGroupsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right PGLSOAscending
        "DESCENDING" -> Right PGLSODescending
        x -> Left ("Unable to parse PlacementGroupsListSortOrder from: " <> x)

instance ToHttpApiData PlacementGroupsListSortOrder where
    toQueryParam = \case
        PGLSOAscending -> "ASCENDING"
        PGLSODescending -> "DESCENDING"

instance FromJSON PlacementGroupsListSortOrder where
    parseJSON = parseJSONText "PlacementGroupsListSortOrder"

instance ToJSON PlacementGroupsListSortOrder where
    toJSON = toJSONText

-- | Compatibility of this ad. Applicable when type is AD_SERVING_DEFAULT_AD.
-- DISPLAY and DISPLAY_INTERSTITIAL refer to either rendering on desktop or
-- on mobile devices or in mobile apps for regular or interstitial ads,
-- respectively. APP and APP_INTERSTITIAL are only used for existing
-- default ads. New mobile placements must be assigned DISPLAY or
-- DISPLAY_INTERSTITIAL and default ads created for those placements will
-- be limited to those compatibility types. IN_STREAM_VIDEO refers to
-- rendering in-stream video ads developed with the VAST standard.
data AdCompatibility
    = ACDisplay
      -- ^ @DISPLAY@
    | ACDisplayInterstitial
      -- ^ @DISPLAY_INTERSTITIAL@
    | ACApp
      -- ^ @APP@
    | ACAppInterstitial
      -- ^ @APP_INTERSTITIAL@
    | ACInStreamVideo
      -- ^ @IN_STREAM_VIDEO@
    | ACInStreamAudio
      -- ^ @IN_STREAM_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdCompatibility

instance FromHttpApiData AdCompatibility where
    parseQueryParam = \case
        "DISPLAY" -> Right ACDisplay
        "DISPLAY_INTERSTITIAL" -> Right ACDisplayInterstitial
        "APP" -> Right ACApp
        "APP_INTERSTITIAL" -> Right ACAppInterstitial
        "IN_STREAM_VIDEO" -> Right ACInStreamVideo
        "IN_STREAM_AUDIO" -> Right ACInStreamAudio
        x -> Left ("Unable to parse AdCompatibility from: " <> x)

instance ToHttpApiData AdCompatibility where
    toQueryParam = \case
        ACDisplay -> "DISPLAY"
        ACDisplayInterstitial -> "DISPLAY_INTERSTITIAL"
        ACApp -> "APP"
        ACAppInterstitial -> "APP_INTERSTITIAL"
        ACInStreamVideo -> "IN_STREAM_VIDEO"
        ACInStreamAudio -> "IN_STREAM_AUDIO"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeFieldValuesListSortField

instance FromHttpApiData CreativeFieldValuesListSortField where
    parseQueryParam = \case
        "ID" -> Right CFVLSFID
        "VALUE" -> Right CFVLSFValue
        x -> Left ("Unable to parse CreativeFieldValuesListSortField from: " <> x)

instance ToHttpApiData CreativeFieldValuesListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityGroupsListSortField

instance FromHttpApiData FloodlightActivityGroupsListSortField where
    parseQueryParam = \case
        "ID" -> Right FAGLSFID
        "NAME" -> Right FAGLSFName
        x -> Left ("Unable to parse FloodlightActivityGroupsListSortField from: " <> x)

instance ToHttpApiData FloodlightActivityGroupsListSortField where
    toQueryParam = \case
        FAGLSFID -> "ID"
        FAGLSFName -> "NAME"

instance FromJSON FloodlightActivityGroupsListSortField where
    parseJSON = parseJSONText "FloodlightActivityGroupsListSortField"

instance ToJSON FloodlightActivityGroupsListSortField where
    toJSON = toJSONText

-- | Order of sorted results.
data OrdersListSortOrder
    = OLSOAscending
      -- ^ @ASCENDING@
    | OLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersListSortOrder

instance FromHttpApiData OrdersListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right OLSOAscending
        "DESCENDING" -> Right OLSODescending
        x -> Left ("Unable to parse OrdersListSortOrder from: " <> x)

instance ToHttpApiData OrdersListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountAccountProFile

instance FromHttpApiData AccountAccountProFile where
    parseQueryParam = \case
        "ACCOUNT_PROFILE_BASIC" -> Right AccountProFileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Right AccountProFileStandard
        x -> Left ("Unable to parse AccountAccountProFile from: " <> x)

instance ToHttpApiData AccountAccountProFile where
    toQueryParam = \case
        AccountProFileBasic -> "ACCOUNT_PROFILE_BASIC"
        AccountProFileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountAccountProFile where
    parseJSON = parseJSONText "AccountAccountProFile"

instance ToJSON AccountAccountProFile where
    toJSON = toJSONText

-- | Type of this creative. This is a required field. Applicable to all
-- creative types. *Note:* FLASH_INPAGE, HTML5_BANNER, and IMAGE are only
-- used for existing creatives. New creatives should use DISPLAY as a
-- replacement for these types.
data CreativeType
    = CTImage
      -- ^ @IMAGE@
    | CTDisplayRedirect
      -- ^ @DISPLAY_REDIRECT@
    | CTCustomDisplay
      -- ^ @CUSTOM_DISPLAY@
    | CTInternalRedirect
      -- ^ @INTERNAL_REDIRECT@
    | CTCustomDisplayInterstitial
      -- ^ @CUSTOM_DISPLAY_INTERSTITIAL@
    | CTInterstitialInternalRedirect
      -- ^ @INTERSTITIAL_INTERNAL_REDIRECT@
    | CTTrackingText
      -- ^ @TRACKING_TEXT@
    | CTRichMediaDisplayBanner
      -- ^ @RICH_MEDIA_DISPLAY_BANNER@
    | CTRichMediaInpageFloating
      -- ^ @RICH_MEDIA_INPAGE_FLOATING@
    | CTRichMediaImExpand
      -- ^ @RICH_MEDIA_IM_EXPAND@
    | CTRichMediaDisplayExpanding
      -- ^ @RICH_MEDIA_DISPLAY_EXPANDING@
    | CTRichMediaDisplayInterstitial
      -- ^ @RICH_MEDIA_DISPLAY_INTERSTITIAL@
    | CTRichMediaDisplayMultiFloatingInterstitial
      -- ^ @RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL@
    | CTRichMediaMobileInApp
      -- ^ @RICH_MEDIA_MOBILE_IN_APP@
    | CTFlashInpage
      -- ^ @FLASH_INPAGE@
    | CTInstreamVideo
      -- ^ @INSTREAM_VIDEO@
    | CTVpaidLinearVideo
      -- ^ @VPAID_LINEAR_VIDEO@
    | CTVpaidNonLinearVideo
      -- ^ @VPAID_NON_LINEAR_VIDEO@
    | CTInstreamVideoRedirect
      -- ^ @INSTREAM_VIDEO_REDIRECT@
    | CTRichMediaPeelDown
      -- ^ @RICH_MEDIA_PEEL_DOWN@
    | CTHTML5Banner
      -- ^ @HTML5_BANNER@
    | CTDisplay
      -- ^ @DISPLAY@
    | CTDisplayImageGallery
      -- ^ @DISPLAY_IMAGE_GALLERY@
    | CTBrandSafeDefaultInstreamVideo
      -- ^ @BRAND_SAFE_DEFAULT_INSTREAM_VIDEO@
    | CTInstreamAudio
      -- ^ @INSTREAM_AUDIO@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeType

instance FromHttpApiData CreativeType where
    parseQueryParam = \case
        "IMAGE" -> Right CTImage
        "DISPLAY_REDIRECT" -> Right CTDisplayRedirect
        "CUSTOM_DISPLAY" -> Right CTCustomDisplay
        "INTERNAL_REDIRECT" -> Right CTInternalRedirect
        "CUSTOM_DISPLAY_INTERSTITIAL" -> Right CTCustomDisplayInterstitial
        "INTERSTITIAL_INTERNAL_REDIRECT" -> Right CTInterstitialInternalRedirect
        "TRACKING_TEXT" -> Right CTTrackingText
        "RICH_MEDIA_DISPLAY_BANNER" -> Right CTRichMediaDisplayBanner
        "RICH_MEDIA_INPAGE_FLOATING" -> Right CTRichMediaInpageFloating
        "RICH_MEDIA_IM_EXPAND" -> Right CTRichMediaImExpand
        "RICH_MEDIA_DISPLAY_EXPANDING" -> Right CTRichMediaDisplayExpanding
        "RICH_MEDIA_DISPLAY_INTERSTITIAL" -> Right CTRichMediaDisplayInterstitial
        "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL" -> Right CTRichMediaDisplayMultiFloatingInterstitial
        "RICH_MEDIA_MOBILE_IN_APP" -> Right CTRichMediaMobileInApp
        "FLASH_INPAGE" -> Right CTFlashInpage
        "INSTREAM_VIDEO" -> Right CTInstreamVideo
        "VPAID_LINEAR_VIDEO" -> Right CTVpaidLinearVideo
        "VPAID_NON_LINEAR_VIDEO" -> Right CTVpaidNonLinearVideo
        "INSTREAM_VIDEO_REDIRECT" -> Right CTInstreamVideoRedirect
        "RICH_MEDIA_PEEL_DOWN" -> Right CTRichMediaPeelDown
        "HTML5_BANNER" -> Right CTHTML5Banner
        "DISPLAY" -> Right CTDisplay
        "DISPLAY_IMAGE_GALLERY" -> Right CTDisplayImageGallery
        "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO" -> Right CTBrandSafeDefaultInstreamVideo
        "INSTREAM_AUDIO" -> Right CTInstreamAudio
        x -> Left ("Unable to parse CreativeType from: " <> x)

instance ToHttpApiData CreativeType where
    toQueryParam = \case
        CTImage -> "IMAGE"
        CTDisplayRedirect -> "DISPLAY_REDIRECT"
        CTCustomDisplay -> "CUSTOM_DISPLAY"
        CTInternalRedirect -> "INTERNAL_REDIRECT"
        CTCustomDisplayInterstitial -> "CUSTOM_DISPLAY_INTERSTITIAL"
        CTInterstitialInternalRedirect -> "INTERSTITIAL_INTERNAL_REDIRECT"
        CTTrackingText -> "TRACKING_TEXT"
        CTRichMediaDisplayBanner -> "RICH_MEDIA_DISPLAY_BANNER"
        CTRichMediaInpageFloating -> "RICH_MEDIA_INPAGE_FLOATING"
        CTRichMediaImExpand -> "RICH_MEDIA_IM_EXPAND"
        CTRichMediaDisplayExpanding -> "RICH_MEDIA_DISPLAY_EXPANDING"
        CTRichMediaDisplayInterstitial -> "RICH_MEDIA_DISPLAY_INTERSTITIAL"
        CTRichMediaDisplayMultiFloatingInterstitial -> "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL"
        CTRichMediaMobileInApp -> "RICH_MEDIA_MOBILE_IN_APP"
        CTFlashInpage -> "FLASH_INPAGE"
        CTInstreamVideo -> "INSTREAM_VIDEO"
        CTVpaidLinearVideo -> "VPAID_LINEAR_VIDEO"
        CTVpaidNonLinearVideo -> "VPAID_NON_LINEAR_VIDEO"
        CTInstreamVideoRedirect -> "INSTREAM_VIDEO_REDIRECT"
        CTRichMediaPeelDown -> "RICH_MEDIA_PEEL_DOWN"
        CTHTML5Banner -> "HTML5_BANNER"
        CTDisplay -> "DISPLAY"
        CTDisplayImageGallery -> "DISPLAY_IMAGE_GALLERY"
        CTBrandSafeDefaultInstreamVideo -> "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
        CTInstreamAudio -> "INSTREAM_AUDIO"

instance FromJSON CreativeType where
    parseJSON = parseJSONText "CreativeType"

instance ToJSON CreativeType where
    toJSON = toJSONText

-- | Order of sorted results.
data FilesListSortOrder
    = FLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | FLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilesListSortOrder

instance FromHttpApiData FilesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right FLSOAscending
        "DESCENDING" -> Right FLSODescending
        x -> Left ("Unable to parse FilesListSortOrder from: " <> x)

instance ToHttpApiData FilesListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertiserGroupsListSortField

instance FromHttpApiData AdvertiserGroupsListSortField where
    parseQueryParam = \case
        "ID" -> Right AGLSFID
        "NAME" -> Right AGLSFName
        x -> Left ("Unable to parse AdvertiserGroupsListSortField from: " <> x)

instance ToHttpApiData AdvertiserGroupsListSortField where
    toQueryParam = \case
        AGLSFID -> "ID"
        AGLSFName -> "NAME"

instance FromJSON AdvertiserGroupsListSortField where
    parseJSON = parseJSONText "AdvertiserGroupsListSortField"

instance ToJSON AdvertiserGroupsListSortField where
    toJSON = toJSONText

-- | Type of browser window for which the backup image of the flash creative
-- can be displayed.
data TargetWindowTargetWindowOption
    = NewWindow
      -- ^ @NEW_WINDOW@
    | CurrentWindow
      -- ^ @CURRENT_WINDOW@
    | Custom
      -- ^ @CUSTOM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetWindowTargetWindowOption

instance FromHttpApiData TargetWindowTargetWindowOption where
    parseQueryParam = \case
        "NEW_WINDOW" -> Right NewWindow
        "CURRENT_WINDOW" -> Right CurrentWindow
        "CUSTOM" -> Right Custom
        x -> Left ("Unable to parse TargetWindowTargetWindowOption from: " <> x)

instance ToHttpApiData TargetWindowTargetWindowOption where
    toQueryParam = \case
        NewWindow -> "NEW_WINDOW"
        CurrentWindow -> "CURRENT_WINDOW"
        Custom -> "CUSTOM"

instance FromJSON TargetWindowTargetWindowOption where
    parseJSON = parseJSONText "TargetWindowTargetWindowOption"

instance ToJSON TargetWindowTargetWindowOption where
    toJSON = toJSONText

-- | Select only placements with these pricing types.
data PlacementsListPricingTypes
    = PLPTPricingTypeCpm
      -- ^ @PRICING_TYPE_CPM@
    | PLPTPricingTypeCpc
      -- ^ @PRICING_TYPE_CPC@
    | PLPTPricingTypeCpa
      -- ^ @PRICING_TYPE_CPA@
    | PLPTPricingTypeFlatRateImpressions
      -- ^ @PRICING_TYPE_FLAT_RATE_IMPRESSIONS@
    | PLPTPricingTypeFlatRateClicks
      -- ^ @PRICING_TYPE_FLAT_RATE_CLICKS@
    | PLPTPricingTypeCpmActiveview
      -- ^ @PRICING_TYPE_CPM_ACTIVEVIEW@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementsListPricingTypes

instance FromHttpApiData PlacementsListPricingTypes where
    parseQueryParam = \case
        "PRICING_TYPE_CPM" -> Right PLPTPricingTypeCpm
        "PRICING_TYPE_CPC" -> Right PLPTPricingTypeCpc
        "PRICING_TYPE_CPA" -> Right PLPTPricingTypeCpa
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Right PLPTPricingTypeFlatRateImpressions
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Right PLPTPricingTypeFlatRateClicks
        "PRICING_TYPE_CPM_ACTIVEVIEW" -> Right PLPTPricingTypeCpmActiveview
        x -> Left ("Unable to parse PlacementsListPricingTypes from: " <> x)

instance ToHttpApiData PlacementsListPricingTypes where
    toQueryParam = \case
        PLPTPricingTypeCpm -> "PRICING_TYPE_CPM"
        PLPTPricingTypeCpc -> "PRICING_TYPE_CPC"
        PLPTPricingTypeCpa -> "PRICING_TYPE_CPA"
        PLPTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"
        PLPTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PLPTPricingTypeCpmActiveview -> "PRICING_TYPE_CPM_ACTIVEVIEW"

instance FromJSON PlacementsListPricingTypes where
    parseJSON = parseJSONText "PlacementsListPricingTypes"

instance ToJSON PlacementsListPricingTypes where
    toJSON = toJSONText

-- | Order of sorted results.
data EventTagsListSortOrder
    = ETLSOAscending
      -- ^ @ASCENDING@
    | ETLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventTagsListSortOrder

instance FromHttpApiData EventTagsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right ETLSOAscending
        "DESCENDING" -> Right ETLSODescending
        x -> Left ("Unable to parse EventTagsListSortOrder from: " <> x)

instance ToHttpApiData EventTagsListSortOrder where
    toQueryParam = \case
        ETLSOAscending -> "ASCENDING"
        ETLSODescending -> "DESCENDING"

instance FromJSON EventTagsListSortOrder where
    parseJSON = parseJSONText "EventTagsListSortOrder"

instance ToJSON EventTagsListSortOrder where
    toJSON = toJSONText

-- | Describes whether the encrypted cookie was received from ad serving (the
-- %m macro) or from Data Transfer.
data EncryptionInfoEncryptionSource
    = EncryptionScopeUnknown
      -- ^ @ENCRYPTION_SCOPE_UNKNOWN@
    | AdServing
      -- ^ @AD_SERVING@
    | DataTransfer
      -- ^ @DATA_TRANSFER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EncryptionInfoEncryptionSource

instance FromHttpApiData EncryptionInfoEncryptionSource where
    parseQueryParam = \case
        "ENCRYPTION_SCOPE_UNKNOWN" -> Right EncryptionScopeUnknown
        "AD_SERVING" -> Right AdServing
        "DATA_TRANSFER" -> Right DataTransfer
        x -> Left ("Unable to parse EncryptionInfoEncryptionSource from: " <> x)

instance ToHttpApiData EncryptionInfoEncryptionSource where
    toQueryParam = \case
        EncryptionScopeUnknown -> "ENCRYPTION_SCOPE_UNKNOWN"
        AdServing -> "AD_SERVING"
        DataTransfer -> "DATA_TRANSFER"

instance FromJSON EncryptionInfoEncryptionSource where
    parseJSON = parseJSONText "EncryptionInfoEncryptionSource"

instance ToJSON EncryptionInfoEncryptionSource where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DirectorySitesListSortField
    = DSLSFID
      -- ^ @ID@
    | DSLSFName
      -- ^ @NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DirectorySitesListSortField

instance FromHttpApiData DirectorySitesListSortField where
    parseQueryParam = \case
        "ID" -> Right DSLSFID
        "NAME" -> Right DSLSFName
        x -> Left ("Unable to parse DirectorySitesListSortField from: " <> x)

instance ToHttpApiData DirectorySitesListSortField where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportCrossDimensionReachCriteriaDimension

instance FromHttpApiData ReportCrossDimensionReachCriteriaDimension where
    parseQueryParam = \case
        "ADVERTISER" -> Right RCDRCDAdvertiser
        "CAMPAIGN" -> Right RCDRCDCampaign
        "SITE_BY_ADVERTISER" -> Right RCDRCDSiteByAdvertiser
        "SITE_BY_CAMPAIGN" -> Right RCDRCDSiteByCampaign
        x -> Left ("Unable to parse ReportCrossDimensionReachCriteriaDimension from: " <> x)

instance ToHttpApiData ReportCrossDimensionReachCriteriaDimension where
    toQueryParam = \case
        RCDRCDAdvertiser -> "ADVERTISER"
        RCDRCDCampaign -> "CAMPAIGN"
        RCDRCDSiteByAdvertiser -> "SITE_BY_ADVERTISER"
        RCDRCDSiteByCampaign -> "SITE_BY_CAMPAIGN"

instance FromJSON ReportCrossDimensionReachCriteriaDimension where
    parseJSON = parseJSONText "ReportCrossDimensionReachCriteriaDimension"

instance ToJSON ReportCrossDimensionReachCriteriaDimension where
    toJSON = toJSONText

-- | Order of sorted results.
data SitesListSortOrder
    = SLSOAscending
      -- ^ @ASCENDING@
    | SLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SitesListSortOrder

instance FromHttpApiData SitesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right SLSOAscending
        "DESCENDING" -> Right SLSODescending
        x -> Left ("Unable to parse SitesListSortOrder from: " <> x)

instance ToHttpApiData SitesListSortOrder where
    toQueryParam = \case
        SLSOAscending -> "ASCENDING"
        SLSODescending -> "DESCENDING"

instance FromJSON SitesListSortOrder where
    parseJSON = parseJSONText "SitesListSortOrder"

instance ToJSON SitesListSortOrder where
    toJSON = toJSONText

data PlacementTagFormatsItem
    = PTFIPlacementTagStandard
      -- ^ @PLACEMENT_TAG_STANDARD@
    | PTFIPlacementTagIframeJavascript
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT@
    | PTFIPlacementTagIframeIlayer
      -- ^ @PLACEMENT_TAG_IFRAME_ILAYER@
    | PTFIPlacementTagInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERNAL_REDIRECT@
    | PTFIPlacementTagJavascript
      -- ^ @PLACEMENT_TAG_JAVASCRIPT@
    | PTFIPlacementTagInterstitialIframeJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT@
    | PTFIPlacementTagInterstitialInternalRedirect
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT@
    | PTFIPlacementTagInterstitialJavascript
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT@
    | PTFIPlacementTagClickCommands
      -- ^ @PLACEMENT_TAG_CLICK_COMMANDS@
    | PTFIPlacementTagInstreamVideoPrefetch
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH@
    | PTFIPlacementTagTracking
      -- ^ @PLACEMENT_TAG_TRACKING@
    | PTFIPlacementTagTrackingIframe
      -- ^ @PLACEMENT_TAG_TRACKING_IFRAME@
    | PTFIPlacementTagTrackingJavascript
      -- ^ @PLACEMENT_TAG_TRACKING_JAVASCRIPT@
    | PTFIPlacementTagInstreamVideoPrefetchVast3
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3@
    | PTFIPlacementTagIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY@
    | PTFIPlacementTagJavascriptLegacy
      -- ^ @PLACEMENT_TAG_JAVASCRIPT_LEGACY@
    | PTFIPlacementTagInterstitialIframeJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY@
    | PTFIPlacementTagInterstitialJavascriptLegacy
      -- ^ @PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY@
    | PTFIPlacementTagInstreamVideoPrefetchVast4
      -- ^ @PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlacementTagFormatsItem

instance FromHttpApiData PlacementTagFormatsItem where
    parseQueryParam = \case
        "PLACEMENT_TAG_STANDARD" -> Right PTFIPlacementTagStandard
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -> Right PTFIPlacementTagIframeJavascript
        "PLACEMENT_TAG_IFRAME_ILAYER" -> Right PTFIPlacementTagIframeIlayer
        "PLACEMENT_TAG_INTERNAL_REDIRECT" -> Right PTFIPlacementTagInternalRedirect
        "PLACEMENT_TAG_JAVASCRIPT" -> Right PTFIPlacementTagJavascript
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -> Right PTFIPlacementTagInterstitialIframeJavascript
        "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -> Right PTFIPlacementTagInterstitialInternalRedirect
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" -> Right PTFIPlacementTagInterstitialJavascript
        "PLACEMENT_TAG_CLICK_COMMANDS" -> Right PTFIPlacementTagClickCommands
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -> Right PTFIPlacementTagInstreamVideoPrefetch
        "PLACEMENT_TAG_TRACKING" -> Right PTFIPlacementTagTracking
        "PLACEMENT_TAG_TRACKING_IFRAME" -> Right PTFIPlacementTagTrackingIframe
        "PLACEMENT_TAG_TRACKING_JAVASCRIPT" -> Right PTFIPlacementTagTrackingJavascript
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -> Right PTFIPlacementTagInstreamVideoPrefetchVast3
        "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY" -> Right PTFIPlacementTagIframeJavascriptLegacy
        "PLACEMENT_TAG_JAVASCRIPT_LEGACY" -> Right PTFIPlacementTagJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY" -> Right PTFIPlacementTagInterstitialIframeJavascriptLegacy
        "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY" -> Right PTFIPlacementTagInterstitialJavascriptLegacy
        "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4" -> Right PTFIPlacementTagInstreamVideoPrefetchVast4
        x -> Left ("Unable to parse PlacementTagFormatsItem from: " <> x)

instance ToHttpApiData PlacementTagFormatsItem where
    toQueryParam = \case
        PTFIPlacementTagStandard -> "PLACEMENT_TAG_STANDARD"
        PTFIPlacementTagIframeJavascript -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        PTFIPlacementTagIframeIlayer -> "PLACEMENT_TAG_IFRAME_ILAYER"
        PTFIPlacementTagInternalRedirect -> "PLACEMENT_TAG_INTERNAL_REDIRECT"
        PTFIPlacementTagJavascript -> "PLACEMENT_TAG_JAVASCRIPT"
        PTFIPlacementTagInterstitialIframeJavascript -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        PTFIPlacementTagInterstitialInternalRedirect -> "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        PTFIPlacementTagInterstitialJavascript -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        PTFIPlacementTagClickCommands -> "PLACEMENT_TAG_CLICK_COMMANDS"
        PTFIPlacementTagInstreamVideoPrefetch -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        PTFIPlacementTagTracking -> "PLACEMENT_TAG_TRACKING"
        PTFIPlacementTagTrackingIframe -> "PLACEMENT_TAG_TRACKING_IFRAME"
        PTFIPlacementTagTrackingJavascript -> "PLACEMENT_TAG_TRACKING_JAVASCRIPT"
        PTFIPlacementTagInstreamVideoPrefetchVast3 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
        PTFIPlacementTagIframeJavascriptLegacy -> "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
        PTFIPlacementTagJavascriptLegacy -> "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
        PTFIPlacementTagInterstitialIframeJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
        PTFIPlacementTagInterstitialJavascriptLegacy -> "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
        PTFIPlacementTagInstreamVideoPrefetchVast4 -> "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4"

instance FromJSON PlacementTagFormatsItem where
    parseJSON = parseJSONText "PlacementTagFormatsItem"

instance ToJSON PlacementTagFormatsItem where
    toJSON = toJSONText

-- | Type of the object of this dynamic targeting key. This is a required
-- field.
data DynamicTargetingKeyObjectType
    = DTKOTObjectAdvertiser
      -- ^ @OBJECT_ADVERTISER@
    | DTKOTObjectAd
      -- ^ @OBJECT_AD@
    | DTKOTObjectCreative
      -- ^ @OBJECT_CREATIVE@
    | DTKOTObjectPlacement
      -- ^ @OBJECT_PLACEMENT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DynamicTargetingKeyObjectType

instance FromHttpApiData DynamicTargetingKeyObjectType where
    parseQueryParam = \case
        "OBJECT_ADVERTISER" -> Right DTKOTObjectAdvertiser
        "OBJECT_AD" -> Right DTKOTObjectAd
        "OBJECT_CREATIVE" -> Right DTKOTObjectCreative
        "OBJECT_PLACEMENT" -> Right DTKOTObjectPlacement
        x -> Left ("Unable to parse DynamicTargetingKeyObjectType from: " <> x)

instance ToHttpApiData DynamicTargetingKeyObjectType where
    toQueryParam = \case
        DTKOTObjectAdvertiser -> "OBJECT_ADVERTISER"
        DTKOTObjectAd -> "OBJECT_AD"
        DTKOTObjectCreative -> "OBJECT_CREATIVE"
        DTKOTObjectPlacement -> "OBJECT_PLACEMENT"

instance FromJSON DynamicTargetingKeyObjectType where
    parseJSON = parseJSONText "DynamicTargetingKeyObjectType"

instance ToJSON DynamicTargetingKeyObjectType where
    toJSON = toJSONText

-- | The type of the report.
data ReportType
    = RTStandard
      -- ^ @STANDARD@
    | RTReach
      -- ^ @REACH@
    | RTPathToConversion
      -- ^ @PATH_TO_CONVERSION@
    | RTCrossDimensionReach
      -- ^ @CROSS_DIMENSION_REACH@
    | RTFloodlight
      -- ^ @FLOODLIGHT@
    | RTPath
      -- ^ @PATH@
    | RTPathAttribution
      -- ^ @PATH_ATTRIBUTION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportType

instance FromHttpApiData ReportType where
    parseQueryParam = \case
        "STANDARD" -> Right RTStandard
        "REACH" -> Right RTReach
        "PATH_TO_CONVERSION" -> Right RTPathToConversion
        "CROSS_DIMENSION_REACH" -> Right RTCrossDimensionReach
        "FLOODLIGHT" -> Right RTFloodlight
        "PATH" -> Right RTPath
        "PATH_ATTRIBUTION" -> Right RTPathAttribution
        x -> Left ("Unable to parse ReportType from: " <> x)

instance ToHttpApiData ReportType where
    toQueryParam = \case
        RTStandard -> "STANDARD"
        RTReach -> "REACH"
        RTPathToConversion -> "PATH_TO_CONVERSION"
        RTCrossDimensionReach -> "CROSS_DIMENSION_REACH"
        RTFloodlight -> "FLOODLIGHT"
        RTPath -> "PATH"
        RTPathAttribution -> "PATH_ATTRIBUTION"

instance FromJSON ReportType where
    parseJSON = parseJSONText "ReportType"

instance ToJSON ReportType where
    toJSON = toJSONText

data CreativeAssetMetadataWarnedValidationRulesItem
    = ClickTagNonTopLevel
      -- ^ @CLICK_TAG_NON_TOP_LEVEL@
    | ClickTagMissing
      -- ^ @CLICK_TAG_MISSING@
    | ClickTagMoreThanOne
      -- ^ @CLICK_TAG_MORE_THAN_ONE@
    | ClickTagInvalid
      -- ^ @CLICK_TAG_INVALID@
    | OrphanedAsset
      -- ^ @ORPHANED_ASSET@
    | PrimaryHTMLMissing
      -- ^ @PRIMARY_HTML_MISSING@
    | ExternalFileReferenced
      -- ^ @EXTERNAL_FILE_REFERENCED@
    | MraidReferenced
      -- ^ @MRAID_REFERENCED@
    | ADMobReferenced
      -- ^ @ADMOB_REFERENCED@
    | FileTypeInvalid
      -- ^ @FILE_TYPE_INVALID@
    | ZipInvalid
      -- ^ @ZIP_INVALID@
    | LinkedFileNotFound
      -- ^ @LINKED_FILE_NOT_FOUND@
    | MaxFlashVersion11
      -- ^ @MAX_FLASH_VERSION_11@
    | NotSSLCompliant
      -- ^ @NOT_SSL_COMPLIANT@
    | FileDetailEmpty
      -- ^ @FILE_DETAIL_EMPTY@
    | AssetInvalid
      -- ^ @ASSET_INVALID@
    | GwdPropertiesInvalid
      -- ^ @GWD_PROPERTIES_INVALID@
    | EnablerUnsupportedMethodDcm
      -- ^ @ENABLER_UNSUPPORTED_METHOD_DCM@
    | AssetFormatUnsupportedDcm
      -- ^ @ASSET_FORMAT_UNSUPPORTED_DCM@
    | ComponentUnsupportedDcm
      -- ^ @COMPONENT_UNSUPPORTED_DCM@
    | HTML5FeatureUnsupported
      -- ^ @HTML5_FEATURE_UNSUPPORTED@
    | ClickTagInGwd
      -- ^ @CLICK_TAG_IN_GWD@
    | ClickTagHardCoded
      -- ^ @CLICK_TAG_HARD_CODED@
    | SvgInvalid
      -- ^ @SVG_INVALID@
    | ClickTagInRichMedia
      -- ^ @CLICK_TAG_IN_RICH_MEDIA@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetMetadataWarnedValidationRulesItem

instance FromHttpApiData CreativeAssetMetadataWarnedValidationRulesItem where
    parseQueryParam = \case
        "CLICK_TAG_NON_TOP_LEVEL" -> Right ClickTagNonTopLevel
        "CLICK_TAG_MISSING" -> Right ClickTagMissing
        "CLICK_TAG_MORE_THAN_ONE" -> Right ClickTagMoreThanOne
        "CLICK_TAG_INVALID" -> Right ClickTagInvalid
        "ORPHANED_ASSET" -> Right OrphanedAsset
        "PRIMARY_HTML_MISSING" -> Right PrimaryHTMLMissing
        "EXTERNAL_FILE_REFERENCED" -> Right ExternalFileReferenced
        "MRAID_REFERENCED" -> Right MraidReferenced
        "ADMOB_REFERENCED" -> Right ADMobReferenced
        "FILE_TYPE_INVALID" -> Right FileTypeInvalid
        "ZIP_INVALID" -> Right ZipInvalid
        "LINKED_FILE_NOT_FOUND" -> Right LinkedFileNotFound
        "MAX_FLASH_VERSION_11" -> Right MaxFlashVersion11
        "NOT_SSL_COMPLIANT" -> Right NotSSLCompliant
        "FILE_DETAIL_EMPTY" -> Right FileDetailEmpty
        "ASSET_INVALID" -> Right AssetInvalid
        "GWD_PROPERTIES_INVALID" -> Right GwdPropertiesInvalid
        "ENABLER_UNSUPPORTED_METHOD_DCM" -> Right EnablerUnsupportedMethodDcm
        "ASSET_FORMAT_UNSUPPORTED_DCM" -> Right AssetFormatUnsupportedDcm
        "COMPONENT_UNSUPPORTED_DCM" -> Right ComponentUnsupportedDcm
        "HTML5_FEATURE_UNSUPPORTED" -> Right HTML5FeatureUnsupported
        "CLICK_TAG_IN_GWD" -> Right ClickTagInGwd
        "CLICK_TAG_HARD_CODED" -> Right ClickTagHardCoded
        "SVG_INVALID" -> Right SvgInvalid
        "CLICK_TAG_IN_RICH_MEDIA" -> Right ClickTagInRichMedia
        x -> Left ("Unable to parse CreativeAssetMetadataWarnedValidationRulesItem from: " <> x)

instance ToHttpApiData CreativeAssetMetadataWarnedValidationRulesItem where
    toQueryParam = \case
        ClickTagNonTopLevel -> "CLICK_TAG_NON_TOP_LEVEL"
        ClickTagMissing -> "CLICK_TAG_MISSING"
        ClickTagMoreThanOne -> "CLICK_TAG_MORE_THAN_ONE"
        ClickTagInvalid -> "CLICK_TAG_INVALID"
        OrphanedAsset -> "ORPHANED_ASSET"
        PrimaryHTMLMissing -> "PRIMARY_HTML_MISSING"
        ExternalFileReferenced -> "EXTERNAL_FILE_REFERENCED"
        MraidReferenced -> "MRAID_REFERENCED"
        ADMobReferenced -> "ADMOB_REFERENCED"
        FileTypeInvalid -> "FILE_TYPE_INVALID"
        ZipInvalid -> "ZIP_INVALID"
        LinkedFileNotFound -> "LINKED_FILE_NOT_FOUND"
        MaxFlashVersion11 -> "MAX_FLASH_VERSION_11"
        NotSSLCompliant -> "NOT_SSL_COMPLIANT"
        FileDetailEmpty -> "FILE_DETAIL_EMPTY"
        AssetInvalid -> "ASSET_INVALID"
        GwdPropertiesInvalid -> "GWD_PROPERTIES_INVALID"
        EnablerUnsupportedMethodDcm -> "ENABLER_UNSUPPORTED_METHOD_DCM"
        AssetFormatUnsupportedDcm -> "ASSET_FORMAT_UNSUPPORTED_DCM"
        ComponentUnsupportedDcm -> "COMPONENT_UNSUPPORTED_DCM"
        HTML5FeatureUnsupported -> "HTML5_FEATURE_UNSUPPORTED"
        ClickTagInGwd -> "CLICK_TAG_IN_GWD"
        ClickTagHardCoded -> "CLICK_TAG_HARD_CODED"
        SvgInvalid -> "SVG_INVALID"
        ClickTagInRichMedia -> "CLICK_TAG_IN_RICH_MEDIA"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdSlotPaymentSourceType

instance FromHttpApiData AdSlotPaymentSourceType where
    parseQueryParam = \case
        "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID" -> Right PlanningPaymentSourceTypeAgencyPaid
        "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID" -> Right PlanningPaymentSourceTypePublisherPaid
        x -> Left ("Unable to parse AdSlotPaymentSourceType from: " <> x)

instance ToHttpApiData AdSlotPaymentSourceType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountPermissionAccountProFilesItem

instance FromHttpApiData AccountPermissionAccountProFilesItem where
    parseQueryParam = \case
        "ACCOUNT_PROFILE_BASIC" -> Right APAPFIAccountProFileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Right APAPFIAccountProFileStandard
        x -> Left ("Unable to parse AccountPermissionAccountProFilesItem from: " <> x)

instance ToHttpApiData AccountPermissionAccountProFilesItem where
    toQueryParam = \case
        APAPFIAccountProFileBasic -> "ACCOUNT_PROFILE_BASIC"
        APAPFIAccountProFileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountPermissionAccountProFilesItem where
    parseJSON = parseJSONText "AccountPermissionAccountProFilesItem"

instance ToJSON AccountPermissionAccountProFilesItem where
    toJSON = toJSONText

-- | Type of the event. This is a read-only field.
data CreativeCustomEventAdvertiserCustomEventType
    = AdvertiserEventTimer
      -- ^ @ADVERTISER_EVENT_TIMER@
    | AdvertiserEventExit
      -- ^ @ADVERTISER_EVENT_EXIT@
    | AdvertiserEventCounter
      -- ^ @ADVERTISER_EVENT_COUNTER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeCustomEventAdvertiserCustomEventType

instance FromHttpApiData CreativeCustomEventAdvertiserCustomEventType where
    parseQueryParam = \case
        "ADVERTISER_EVENT_TIMER" -> Right AdvertiserEventTimer
        "ADVERTISER_EVENT_EXIT" -> Right AdvertiserEventExit
        "ADVERTISER_EVENT_COUNTER" -> Right AdvertiserEventCounter
        x -> Left ("Unable to parse CreativeCustomEventAdvertiserCustomEventType from: " <> x)

instance ToHttpApiData CreativeCustomEventAdvertiserCustomEventType where
    toQueryParam = \case
        AdvertiserEventTimer -> "ADVERTISER_EVENT_TIMER"
        AdvertiserEventExit -> "ADVERTISER_EVENT_EXIT"
        AdvertiserEventCounter -> "ADVERTISER_EVENT_COUNTER"

instance FromJSON CreativeCustomEventAdvertiserCustomEventType where
    parseJSON = parseJSONText "CreativeCustomEventAdvertiserCustomEventType"

instance ToJSON CreativeCustomEventAdvertiserCustomEventType where
    toJSON = toJSONText

-- | Select only change logs with the specified object type.
data ChangeLogsListObjectType
    = CLLOTObjectAdvertiser
      -- ^ @OBJECT_ADVERTISER@
    | CLLOTObjectFloodlightConfiguration
      -- ^ @OBJECT_FLOODLIGHT_CONFIGURATION@
    | CLLOTObjectAd
      -- ^ @OBJECT_AD@
    | CLLOTObjectFloodlightActvity
      -- ^ @OBJECT_FLOODLIGHT_ACTVITY@
    | CLLOTObjectCampaign
      -- ^ @OBJECT_CAMPAIGN@
    | CLLOTObjectFloodlightActivityGroup
      -- ^ @OBJECT_FLOODLIGHT_ACTIVITY_GROUP@
    | CLLOTObjectCreative
      -- ^ @OBJECT_CREATIVE@
    | CLLOTObjectPlacement
      -- ^ @OBJECT_PLACEMENT@
    | CLLOTObjectDfaSite
      -- ^ @OBJECT_DFA_SITE@
    | CLLOTObjectUserRole
      -- ^ @OBJECT_USER_ROLE@
    | CLLOTObjectUserProFile
      -- ^ @OBJECT_USER_PROFILE@
    | CLLOTObjectAdvertiserGroup
      -- ^ @OBJECT_ADVERTISER_GROUP@
    | CLLOTObjectAccount
      -- ^ @OBJECT_ACCOUNT@
    | CLLOTObjectSubAccount
      -- ^ @OBJECT_SUBACCOUNT@
    | CLLOTObjectRichmediaCreative
      -- ^ @OBJECT_RICHMEDIA_CREATIVE@
    | CLLOTObjectInstreamCreative
      -- ^ @OBJECT_INSTREAM_CREATIVE@
    | CLLOTObjectMediaOrder
      -- ^ @OBJECT_MEDIA_ORDER@
    | CLLOTObjectContentCategory
      -- ^ @OBJECT_CONTENT_CATEGORY@
    | CLLOTObjectPlacementStrategy
      -- ^ @OBJECT_PLACEMENT_STRATEGY@
    | CLLOTObjectSdSite
      -- ^ @OBJECT_SD_SITE@
    | CLLOTObjectSize
      -- ^ @OBJECT_SIZE@
    | CLLOTObjectCreativeGroup
      -- ^ @OBJECT_CREATIVE_GROUP@
    | CLLOTObjectCreativeAsset
      -- ^ @OBJECT_CREATIVE_ASSET@
    | CLLOTObjectUserProFileFilter
      -- ^ @OBJECT_USER_PROFILE_FILTER@
    | CLLOTObjectLandingPage
      -- ^ @OBJECT_LANDING_PAGE@
    | CLLOTObjectCreativeField
      -- ^ @OBJECT_CREATIVE_FIELD@
    | CLLOTObjectRemarketingList
      -- ^ @OBJECT_REMARKETING_LIST@
    | CLLOTObjectProvidedListClient
      -- ^ @OBJECT_PROVIDED_LIST_CLIENT@
    | CLLOTObjectEventTag
      -- ^ @OBJECT_EVENT_TAG@
    | CLLOTObjectCreativeBundle
      -- ^ @OBJECT_CREATIVE_BUNDLE@
    | CLLOTObjectBillingAccountGroup
      -- ^ @OBJECT_BILLING_ACCOUNT_GROUP@
    | CLLOTObjectBillingFeature
      -- ^ @OBJECT_BILLING_FEATURE@
    | CLLOTObjectRateCard
      -- ^ @OBJECT_RATE_CARD@
    | CLLOTObjectAccountBillingFeature
      -- ^ @OBJECT_ACCOUNT_BILLING_FEATURE@
    | CLLOTObjectBillingMinimumFee
      -- ^ @OBJECT_BILLING_MINIMUM_FEE@
    | CLLOTObjectBillingProFile
      -- ^ @OBJECT_BILLING_PROFILE@
    | CLLOTObjectPlaystoreLink
      -- ^ @OBJECT_PLAYSTORE_LINK@
    | CLLOTObjectTargetingTemplate
      -- ^ @OBJECT_TARGETING_TEMPLATE@
    | CLLOTObjectSearchLiftStudy
      -- ^ @OBJECT_SEARCH_LIFT_STUDY@
    | CLLOTObjectFloodlightDV360Link
      -- ^ @OBJECT_FLOODLIGHT_DV360_LINK@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChangeLogsListObjectType

instance FromHttpApiData ChangeLogsListObjectType where
    parseQueryParam = \case
        "OBJECT_ADVERTISER" -> Right CLLOTObjectAdvertiser
        "OBJECT_FLOODLIGHT_CONFIGURATION" -> Right CLLOTObjectFloodlightConfiguration
        "OBJECT_AD" -> Right CLLOTObjectAd
        "OBJECT_FLOODLIGHT_ACTVITY" -> Right CLLOTObjectFloodlightActvity
        "OBJECT_CAMPAIGN" -> Right CLLOTObjectCampaign
        "OBJECT_FLOODLIGHT_ACTIVITY_GROUP" -> Right CLLOTObjectFloodlightActivityGroup
        "OBJECT_CREATIVE" -> Right CLLOTObjectCreative
        "OBJECT_PLACEMENT" -> Right CLLOTObjectPlacement
        "OBJECT_DFA_SITE" -> Right CLLOTObjectDfaSite
        "OBJECT_USER_ROLE" -> Right CLLOTObjectUserRole
        "OBJECT_USER_PROFILE" -> Right CLLOTObjectUserProFile
        "OBJECT_ADVERTISER_GROUP" -> Right CLLOTObjectAdvertiserGroup
        "OBJECT_ACCOUNT" -> Right CLLOTObjectAccount
        "OBJECT_SUBACCOUNT" -> Right CLLOTObjectSubAccount
        "OBJECT_RICHMEDIA_CREATIVE" -> Right CLLOTObjectRichmediaCreative
        "OBJECT_INSTREAM_CREATIVE" -> Right CLLOTObjectInstreamCreative
        "OBJECT_MEDIA_ORDER" -> Right CLLOTObjectMediaOrder
        "OBJECT_CONTENT_CATEGORY" -> Right CLLOTObjectContentCategory
        "OBJECT_PLACEMENT_STRATEGY" -> Right CLLOTObjectPlacementStrategy
        "OBJECT_SD_SITE" -> Right CLLOTObjectSdSite
        "OBJECT_SIZE" -> Right CLLOTObjectSize
        "OBJECT_CREATIVE_GROUP" -> Right CLLOTObjectCreativeGroup
        "OBJECT_CREATIVE_ASSET" -> Right CLLOTObjectCreativeAsset
        "OBJECT_USER_PROFILE_FILTER" -> Right CLLOTObjectUserProFileFilter
        "OBJECT_LANDING_PAGE" -> Right CLLOTObjectLandingPage
        "OBJECT_CREATIVE_FIELD" -> Right CLLOTObjectCreativeField
        "OBJECT_REMARKETING_LIST" -> Right CLLOTObjectRemarketingList
        "OBJECT_PROVIDED_LIST_CLIENT" -> Right CLLOTObjectProvidedListClient
        "OBJECT_EVENT_TAG" -> Right CLLOTObjectEventTag
        "OBJECT_CREATIVE_BUNDLE" -> Right CLLOTObjectCreativeBundle
        "OBJECT_BILLING_ACCOUNT_GROUP" -> Right CLLOTObjectBillingAccountGroup
        "OBJECT_BILLING_FEATURE" -> Right CLLOTObjectBillingFeature
        "OBJECT_RATE_CARD" -> Right CLLOTObjectRateCard
        "OBJECT_ACCOUNT_BILLING_FEATURE" -> Right CLLOTObjectAccountBillingFeature
        "OBJECT_BILLING_MINIMUM_FEE" -> Right CLLOTObjectBillingMinimumFee
        "OBJECT_BILLING_PROFILE" -> Right CLLOTObjectBillingProFile
        "OBJECT_PLAYSTORE_LINK" -> Right CLLOTObjectPlaystoreLink
        "OBJECT_TARGETING_TEMPLATE" -> Right CLLOTObjectTargetingTemplate
        "OBJECT_SEARCH_LIFT_STUDY" -> Right CLLOTObjectSearchLiftStudy
        "OBJECT_FLOODLIGHT_DV360_LINK" -> Right CLLOTObjectFloodlightDV360Link
        x -> Left ("Unable to parse ChangeLogsListObjectType from: " <> x)

instance ToHttpApiData ChangeLogsListObjectType where
    toQueryParam = \case
        CLLOTObjectAdvertiser -> "OBJECT_ADVERTISER"
        CLLOTObjectFloodlightConfiguration -> "OBJECT_FLOODLIGHT_CONFIGURATION"
        CLLOTObjectAd -> "OBJECT_AD"
        CLLOTObjectFloodlightActvity -> "OBJECT_FLOODLIGHT_ACTVITY"
        CLLOTObjectCampaign -> "OBJECT_CAMPAIGN"
        CLLOTObjectFloodlightActivityGroup -> "OBJECT_FLOODLIGHT_ACTIVITY_GROUP"
        CLLOTObjectCreative -> "OBJECT_CREATIVE"
        CLLOTObjectPlacement -> "OBJECT_PLACEMENT"
        CLLOTObjectDfaSite -> "OBJECT_DFA_SITE"
        CLLOTObjectUserRole -> "OBJECT_USER_ROLE"
        CLLOTObjectUserProFile -> "OBJECT_USER_PROFILE"
        CLLOTObjectAdvertiserGroup -> "OBJECT_ADVERTISER_GROUP"
        CLLOTObjectAccount -> "OBJECT_ACCOUNT"
        CLLOTObjectSubAccount -> "OBJECT_SUBACCOUNT"
        CLLOTObjectRichmediaCreative -> "OBJECT_RICHMEDIA_CREATIVE"
        CLLOTObjectInstreamCreative -> "OBJECT_INSTREAM_CREATIVE"
        CLLOTObjectMediaOrder -> "OBJECT_MEDIA_ORDER"
        CLLOTObjectContentCategory -> "OBJECT_CONTENT_CATEGORY"
        CLLOTObjectPlacementStrategy -> "OBJECT_PLACEMENT_STRATEGY"
        CLLOTObjectSdSite -> "OBJECT_SD_SITE"
        CLLOTObjectSize -> "OBJECT_SIZE"
        CLLOTObjectCreativeGroup -> "OBJECT_CREATIVE_GROUP"
        CLLOTObjectCreativeAsset -> "OBJECT_CREATIVE_ASSET"
        CLLOTObjectUserProFileFilter -> "OBJECT_USER_PROFILE_FILTER"
        CLLOTObjectLandingPage -> "OBJECT_LANDING_PAGE"
        CLLOTObjectCreativeField -> "OBJECT_CREATIVE_FIELD"
        CLLOTObjectRemarketingList -> "OBJECT_REMARKETING_LIST"
        CLLOTObjectProvidedListClient -> "OBJECT_PROVIDED_LIST_CLIENT"
        CLLOTObjectEventTag -> "OBJECT_EVENT_TAG"
        CLLOTObjectCreativeBundle -> "OBJECT_CREATIVE_BUNDLE"
        CLLOTObjectBillingAccountGroup -> "OBJECT_BILLING_ACCOUNT_GROUP"
        CLLOTObjectBillingFeature -> "OBJECT_BILLING_FEATURE"
        CLLOTObjectRateCard -> "OBJECT_RATE_CARD"
        CLLOTObjectAccountBillingFeature -> "OBJECT_ACCOUNT_BILLING_FEATURE"
        CLLOTObjectBillingMinimumFee -> "OBJECT_BILLING_MINIMUM_FEE"
        CLLOTObjectBillingProFile -> "OBJECT_BILLING_PROFILE"
        CLLOTObjectPlaystoreLink -> "OBJECT_PLAYSTORE_LINK"
        CLLOTObjectTargetingTemplate -> "OBJECT_TARGETING_TEMPLATE"
        CLLOTObjectSearchLiftStudy -> "OBJECT_SEARCH_LIFT_STUDY"
        CLLOTObjectFloodlightDV360Link -> "OBJECT_FLOODLIGHT_DV360_LINK"

instance FromJSON ChangeLogsListObjectType where
    parseJSON = parseJSONText "ChangeLogsListObjectType"

instance ToJSON ChangeLogsListObjectType where
    toJSON = toJSONText

-- | The status of the activity. This can only be set to ACTIVE or
-- ARCHIVED_AND_DISABLED. The ARCHIVED status is no longer supported and
-- cannot be set for Floodlight activities. The DISABLED_POLICY status
-- indicates that a Floodlight activity is violating Google policy. Contact
-- your account manager for more information.
data FloodlightActivityStatus
    = Active
      -- ^ @ACTIVE@
    | ArchivedAndDisabled
      -- ^ @ARCHIVED_AND_DISABLED@
    | Archived
      -- ^ @ARCHIVED@
    | DisabledPolicy
      -- ^ @DISABLED_POLICY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityStatus

instance FromHttpApiData FloodlightActivityStatus where
    parseQueryParam = \case
        "ACTIVE" -> Right Active
        "ARCHIVED_AND_DISABLED" -> Right ArchivedAndDisabled
        "ARCHIVED" -> Right Archived
        "DISABLED_POLICY" -> Right DisabledPolicy
        x -> Left ("Unable to parse FloodlightActivityStatus from: " <> x)

instance ToHttpApiData FloodlightActivityStatus where
    toQueryParam = \case
        Active -> "ACTIVE"
        ArchivedAndDisabled -> "ARCHIVED_AND_DISABLED"
        Archived -> "ARCHIVED"
        DisabledPolicy -> "DISABLED_POLICY"

instance FromJSON FloodlightActivityStatus where
    parseJSON = parseJSONText "FloodlightActivityStatus"

instance ToJSON FloodlightActivityStatus where
    toJSON = toJSONText

-- | Orientation of a site template used for video. This will act as default
-- for new placements created under this site.
data SiteVideoSettingsOrientation
    = SVSOAny
      -- ^ @ANY@
    | SVSOLandscape
      -- ^ @LANDSCAPE@
    | SVSOPortrait
      -- ^ @PORTRAIT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SiteVideoSettingsOrientation

instance FromHttpApiData SiteVideoSettingsOrientation where
    parseQueryParam = \case
        "ANY" -> Right SVSOAny
        "LANDSCAPE" -> Right SVSOLandscape
        "PORTRAIT" -> Right SVSOPortrait
        x -> Left ("Unable to parse SiteVideoSettingsOrientation from: " <> x)

instance ToHttpApiData SiteVideoSettingsOrientation where
    toQueryParam = \case
        SVSOAny -> "ANY"
        SVSOLandscape -> "LANDSCAPE"
        SVSOPortrait -> "PORTRAIT"

instance FromJSON SiteVideoSettingsOrientation where
    parseJSON = parseJSONText "SiteVideoSettingsOrientation"

instance ToJSON SiteVideoSettingsOrientation where
    toJSON = toJSONText

-- | Cap cost type of this inventory item.
data PricingCapCostType
    = PlanningPlacementCapCostTypeNone
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_NONE@
    | PlanningPlacementCapCostTypeMonthly
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY@
    | PlanningPlacementCapCostTypeCumulative
      -- ^ @PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PricingCapCostType

instance FromHttpApiData PricingCapCostType where
    parseQueryParam = \case
        "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE" -> Right PlanningPlacementCapCostTypeNone
        "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY" -> Right PlanningPlacementCapCostTypeMonthly
        "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE" -> Right PlanningPlacementCapCostTypeCumulative
        x -> Left ("Unable to parse PricingCapCostType from: " <> x)

instance ToHttpApiData PricingCapCostType where
    toQueryParam = \case
        PlanningPlacementCapCostTypeNone -> "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE"
        PlanningPlacementCapCostTypeMonthly -> "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY"
        PlanningPlacementCapCostTypeCumulative -> "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE"

instance FromJSON PricingCapCostType where
    parseJSON = parseJSONText "PricingCapCostType"

instance ToJSON PricingCapCostType where
    toJSON = toJSONText

-- | Type of rich media asset. This is a read-only field. Applicable to the
-- following creative types: all RICH_MEDIA.
data CreativeAssetDisplayType
    = AssetDisplayTypeInpage
      -- ^ @ASSET_DISPLAY_TYPE_INPAGE@
    | AssetDisplayTypeFloating
      -- ^ @ASSET_DISPLAY_TYPE_FLOATING@
    | AssetDisplayTypeOverlay
      -- ^ @ASSET_DISPLAY_TYPE_OVERLAY@
    | AssetDisplayTypeExpanding
      -- ^ @ASSET_DISPLAY_TYPE_EXPANDING@
    | AssetDisplayTypeFlashInFlash
      -- ^ @ASSET_DISPLAY_TYPE_FLASH_IN_FLASH@
    | AssetDisplayTypeFlashInFlashExpanding
      -- ^ @ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING@
    | AssetDisplayTypePeelDown
      -- ^ @ASSET_DISPLAY_TYPE_PEEL_DOWN@
    | AssetDisplayTypeVpaidLinear
      -- ^ @ASSET_DISPLAY_TYPE_VPAID_LINEAR@
    | AssetDisplayTypeVpaidNonLinear
      -- ^ @ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR@
    | AssetDisplayTypeBackdrop
      -- ^ @ASSET_DISPLAY_TYPE_BACKDROP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativeAssetDisplayType

instance FromHttpApiData CreativeAssetDisplayType where
    parseQueryParam = \case
        "ASSET_DISPLAY_TYPE_INPAGE" -> Right AssetDisplayTypeInpage
        "ASSET_DISPLAY_TYPE_FLOATING" -> Right AssetDisplayTypeFloating
        "ASSET_DISPLAY_TYPE_OVERLAY" -> Right AssetDisplayTypeOverlay
        "ASSET_DISPLAY_TYPE_EXPANDING" -> Right AssetDisplayTypeExpanding
        "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH" -> Right AssetDisplayTypeFlashInFlash
        "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING" -> Right AssetDisplayTypeFlashInFlashExpanding
        "ASSET_DISPLAY_TYPE_PEEL_DOWN" -> Right AssetDisplayTypePeelDown
        "ASSET_DISPLAY_TYPE_VPAID_LINEAR" -> Right AssetDisplayTypeVpaidLinear
        "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR" -> Right AssetDisplayTypeVpaidNonLinear
        "ASSET_DISPLAY_TYPE_BACKDROP" -> Right AssetDisplayTypeBackdrop
        x -> Left ("Unable to parse CreativeAssetDisplayType from: " <> x)

instance ToHttpApiData CreativeAssetDisplayType where
    toQueryParam = \case
        AssetDisplayTypeInpage -> "ASSET_DISPLAY_TYPE_INPAGE"
        AssetDisplayTypeFloating -> "ASSET_DISPLAY_TYPE_FLOATING"
        AssetDisplayTypeOverlay -> "ASSET_DISPLAY_TYPE_OVERLAY"
        AssetDisplayTypeExpanding -> "ASSET_DISPLAY_TYPE_EXPANDING"
        AssetDisplayTypeFlashInFlash -> "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH"
        AssetDisplayTypeFlashInFlashExpanding -> "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING"
        AssetDisplayTypePeelDown -> "ASSET_DISPLAY_TYPE_PEEL_DOWN"
        AssetDisplayTypeVpaidLinear -> "ASSET_DISPLAY_TYPE_VPAID_LINEAR"
        AssetDisplayTypeVpaidNonLinear -> "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR"
        AssetDisplayTypeBackdrop -> "ASSET_DISPLAY_TYPE_BACKDROP"

instance FromJSON CreativeAssetDisplayType where
    parseJSON = parseJSONText "CreativeAssetDisplayType"

instance ToJSON CreativeAssetDisplayType where
    toJSON = toJSONText

-- | Counting method for conversions for this floodlight activity. This is a
-- required field.
data FloodlightActivityCountingMethod
    = StandardCounting
      -- ^ @STANDARD_COUNTING@
    | UniqueCounting
      -- ^ @UNIQUE_COUNTING@
    | SessionCounting
      -- ^ @SESSION_COUNTING@
    | TransactionsCounting
      -- ^ @TRANSACTIONS_COUNTING@
    | ItemsSoldCounting
      -- ^ @ITEMS_SOLD_COUNTING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FloodlightActivityCountingMethod

instance FromHttpApiData FloodlightActivityCountingMethod where
    parseQueryParam = \case
        "STANDARD_COUNTING" -> Right StandardCounting
        "UNIQUE_COUNTING" -> Right UniqueCounting
        "SESSION_COUNTING" -> Right SessionCounting
        "TRANSACTIONS_COUNTING" -> Right TransactionsCounting
        "ITEMS_SOLD_COUNTING" -> Right ItemsSoldCounting
        x -> Left ("Unable to parse FloodlightActivityCountingMethod from: " <> x)

instance ToHttpApiData FloodlightActivityCountingMethod where
    toQueryParam = \case
        StandardCounting -> "STANDARD_COUNTING"
        UniqueCounting -> "UNIQUE_COUNTING"
        SessionCounting -> "SESSION_COUNTING"
        TransactionsCounting -> "TRANSACTIONS_COUNTING"
        ItemsSoldCounting -> "ITEMS_SOLD_COUNTING"

instance FromJSON FloodlightActivityCountingMethod where
    parseJSON = parseJSONText "FloodlightActivityCountingMethod"

instance ToJSON FloodlightActivityCountingMethod where
    toJSON = toJSONText

-- | Order of sorted results.
data ContentCategoriesListSortOrder
    = CCLSOAscending
      -- ^ @ASCENDING@
    | CCLSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentCategoriesListSortOrder

instance FromHttpApiData ContentCategoriesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right CCLSOAscending
        "DESCENDING" -> Right CCLSODescending
        x -> Left ("Unable to parse ContentCategoriesListSortOrder from: " <> x)

instance ToHttpApiData ContentCategoriesListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdvertiserStatus

instance FromHttpApiData AdvertiserStatus where
    parseQueryParam = \case
        "APPROVED" -> Right ASApproved
        "ON_HOLD" -> Right ASOnHold
        x -> Left ("Unable to parse AdvertiserStatus from: " <> x)

instance ToHttpApiData AdvertiserStatus where
    toQueryParam = \case
        ASApproved -> "APPROVED"
        ASOnHold -> "ON_HOLD"

instance FromJSON AdvertiserStatus where
    parseJSON = parseJSONText "AdvertiserStatus"

instance ToJSON AdvertiserStatus where
    toJSON = toJSONText
