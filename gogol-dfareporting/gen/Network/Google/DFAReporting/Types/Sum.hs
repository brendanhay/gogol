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

-- | Select only placements that are associated with these compatibilities.
-- WEB and WEB_INTERSTITIAL refer to rendering either on desktop or on
-- mobile devices for regular or interstitial ads respectively. APP and
-- APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO refers
-- to rendering in in-stream video ads developed with the VAST standard.
data PlacementsList'Compatibilities
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

instance Hashable PlacementsList'Compatibilities

instance FromText PlacementsList'Compatibilities where
    fromText = \case
        "APP" -> Just App
        "APP_INTERSTITIAL" -> Just AppInterstitial
        "IN_STREAM_VIDEO" -> Just InStreamVideo
        "WEB" -> Just Web
        "WEB_INTERSTITIAL" -> Just WebInterstitial
        _ -> Nothing

instance ToText PlacementsList'Compatibilities where
    toText = \case
        App -> "APP"
        AppInterstitial -> "APP_INTERSTITIAL"
        InStreamVideo -> "IN_STREAM_VIDEO"
        Web -> "WEB"
        WebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON PlacementsList'Compatibilities where
    parseJSON = parseJSONText "PlacementsList'Compatibilities"

instance ToJSON PlacementsList'Compatibilities where
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
data AdsList'SortOrder
    = Ascending
      -- ^ @ASCENDING@
    | Descending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdsList'SortOrder

instance FromText AdsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText AdsList'SortOrder where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON AdsList'SortOrder where
    parseJSON = parseJSONText "AdsList'SortOrder"

instance ToJSON AdsList'SortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data CreativeFieldsList'SortField
    = ID
      -- ^ @ID@
    | Name
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeFieldsList'SortField

instance FromText CreativeFieldsList'SortField where
    fromText = \case
        "ID" -> Just ID
        "NAME" -> Just Name
        _ -> Nothing

instance ToText CreativeFieldsList'SortField where
    toText = \case
        ID -> "ID"
        Name -> "NAME"

instance FromJSON CreativeFieldsList'SortField where
    parseJSON = parseJSONText "CreativeFieldsList'SortField"

instance ToJSON CreativeFieldsList'SortField where
    toJSON = toJSONText

-- | Offset top unit for an asset. This is a read-only field if the asset
-- displayType is ASSET_DISPLAY_TYPE_OVERLAY. Applicable to the following
-- creative types: all RICH_MEDIA.
data CreativeAssetPositionTopUnit
    = OffsetUnitPercent
      -- ^ @OFFSET_UNIT_PERCENT@
    | OffsetUnitPixel
      -- ^ @OFFSET_UNIT_PIXEL@
    | OffsetUnitPixelFromCenter
      -- ^ @OFFSET_UNIT_PIXEL_FROM_CENTER@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetPositionTopUnit

instance FromText CreativeAssetPositionTopUnit where
    fromText = \case
        "OFFSET_UNIT_PERCENT" -> Just OffsetUnitPercent
        "OFFSET_UNIT_PIXEL" -> Just OffsetUnitPixel
        "OFFSET_UNIT_PIXEL_FROM_CENTER" -> Just OffsetUnitPixelFromCenter
        _ -> Nothing

instance ToText CreativeAssetPositionTopUnit where
    toText = \case
        OffsetUnitPercent -> "OFFSET_UNIT_PERCENT"
        OffsetUnitPixel -> "OFFSET_UNIT_PIXEL"
        OffsetUnitPixelFromCenter -> "OFFSET_UNIT_PIXEL_FROM_CENTER"

instance FromJSON CreativeAssetPositionTopUnit where
    parseJSON = parseJSONText "CreativeAssetPositionTopUnit"

instance ToJSON CreativeAssetPositionTopUnit where
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

-- | Select only advertisers with the specified status.
data AdvertisersList'Status
    = Approved
      -- ^ @APPROVED@
    | OnHold
      -- ^ @ON_HOLD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersList'Status

instance FromText AdvertisersList'Status where
    fromText = \case
        "APPROVED" -> Just Approved
        "ON_HOLD" -> Just OnHold
        _ -> Nothing

instance ToText AdvertisersList'Status where
    toText = \case
        Approved -> "APPROVED"
        OnHold -> "ON_HOLD"

instance FromJSON AdvertisersList'Status where
    parseJSON = parseJSONText "AdvertisersList'Status"

instance ToJSON AdvertisersList'Status where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data SubaccountsList'SortOrder
    = SLSOAscending
      -- ^ @ASCENDING@
    | SLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubaccountsList'SortOrder

instance FromText SubaccountsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just SLSOAscending
        "DESCENDING" -> Just SLSODescending
        _ -> Nothing

instance ToText SubaccountsList'SortOrder where
    toText = \case
        SLSOAscending -> "ASCENDING"
        SLSODescending -> "DESCENDING"

instance FromJSON SubaccountsList'SortOrder where
    parseJSON = parseJSONText "SubaccountsList'SortOrder"

instance ToJSON SubaccountsList'SortOrder where
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
data OrderDocumentsList'SortField
    = ODLSFID
      -- ^ @ID@
    | ODLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderDocumentsList'SortField

instance FromText OrderDocumentsList'SortField where
    fromText = \case
        "ID" -> Just ODLSFID
        "NAME" -> Just ODLSFName
        _ -> Nothing

instance ToText OrderDocumentsList'SortField where
    toText = \case
        ODLSFID -> "ID"
        ODLSFName -> "NAME"

instance FromJSON OrderDocumentsList'SortField where
    parseJSON = parseJSONText "OrderDocumentsList'SortField"

instance ToJSON OrderDocumentsList'SortField where
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

-- | Field by which to sort the list.
data PlacementsList'SortField
    = PLSFID
      -- ^ @ID@
    | PLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsList'SortField

instance FromText PlacementsList'SortField where
    fromText = \case
        "ID" -> Just PLSFID
        "NAME" -> Just PLSFName
        _ -> Nothing

instance ToText PlacementsList'SortField where
    toText = \case
        PLSFID -> "ID"
        PLSFName -> "NAME"

instance FromJSON PlacementsList'SortField where
    parseJSON = parseJSONText "PlacementsList'SortField"

instance ToJSON PlacementsList'SortField where
    toJSON = toJSONText

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

instance FromJSON CreativeAssetPositionLeftUnit where
    parseJSON = parseJSONText "CreativeAssetPositionLeftUnit"

instance ToJSON CreativeAssetPositionLeftUnit where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AdvertiserGroupsList'SortField
    = AGLSFID
      -- ^ @ID@
    | AGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertiserGroupsList'SortField

instance FromText AdvertiserGroupsList'SortField where
    fromText = \case
        "ID" -> Just AGLSFID
        "NAME" -> Just AGLSFName
        _ -> Nothing

instance ToText AdvertiserGroupsList'SortField where
    toText = \case
        AGLSFID -> "ID"
        AGLSFName -> "NAME"

instance FromJSON AdvertiserGroupsList'SortField where
    parseJSON = parseJSONText "AdvertiserGroupsList'SortField"

instance ToJSON AdvertiserGroupsList'SortField where
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

-- | Field by which to sort the list.
data DirectorySitesList'SortField
    = DSLSFID
      -- ^ @ID@
    | DSLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySitesList'SortField

instance FromText DirectorySitesList'SortField where
    fromText = \case
        "ID" -> Just DSLSFID
        "NAME" -> Just DSLSFName
        _ -> Nothing

instance ToText DirectorySitesList'SortField where
    toText = \case
        DSLSFID -> "ID"
        DSLSFName -> "NAME"

instance FromJSON DirectorySitesList'SortField where
    parseJSON = parseJSONText "DirectorySitesList'SortField"

instance ToJSON DirectorySitesList'SortField where
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

-- | Field by which to sort the list.
data FloodlightActivityGroupsList'SortField
    = FAGLSFID
      -- ^ @ID@
    | FAGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupsList'SortField

instance FromText FloodlightActivityGroupsList'SortField where
    fromText = \case
        "ID" -> Just FAGLSFID
        "NAME" -> Just FAGLSFName
        _ -> Nothing

instance ToText FloodlightActivityGroupsList'SortField where
    toText = \case
        FAGLSFID -> "ID"
        FAGLSFName -> "NAME"

instance FromJSON FloodlightActivityGroupsList'SortField where
    parseJSON = parseJSONText "FloodlightActivityGroupsList'SortField"

instance ToJSON FloodlightActivityGroupsList'SortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data CampaignsList'SortOrder
    = CLSOAscending
      -- ^ @ASCENDING@
    | CLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CampaignsList'SortOrder

instance FromText CampaignsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just CLSOAscending
        "DESCENDING" -> Just CLSODescending
        _ -> Nothing

instance ToText CampaignsList'SortOrder where
    toText = \case
        CLSOAscending -> "ASCENDING"
        CLSODescending -> "DESCENDING"

instance FromJSON CampaignsList'SortOrder where
    parseJSON = parseJSONText "CampaignsList'SortOrder"

instance ToJSON CampaignsList'SortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data OrdersList'SortOrder
    = OLSOAscending
      -- ^ @ASCENDING@
    | OLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrdersList'SortOrder

instance FromText OrdersList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just OLSOAscending
        "DESCENDING" -> Just OLSODescending
        _ -> Nothing

instance ToText OrdersList'SortOrder where
    toText = \case
        OLSOAscending -> "ASCENDING"
        OLSODescending -> "DESCENDING"

instance FromJSON OrdersList'SortOrder where
    parseJSON = parseJSONText "OrdersList'SortOrder"

instance ToJSON OrdersList'SortOrder where
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

-- | Order of sorted results, default is ASCENDING.
data SitesList'SortOrder
    = SAscending
      -- ^ @ASCENDING@
    | SDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SitesList'SortOrder

instance FromText SitesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just SAscending
        "DESCENDING" -> Just SDescending
        _ -> Nothing

instance ToText SitesList'SortOrder where
    toText = \case
        SAscending -> "ASCENDING"
        SDescending -> "DESCENDING"

instance FromJSON SitesList'SortOrder where
    parseJSON = parseJSONText "SitesList'SortOrder"

instance ToJSON SitesList'SortOrder where
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
data InventoryItemsList'SortField
    = IILSFID
      -- ^ @ID@
    | IILSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InventoryItemsList'SortField

instance FromText InventoryItemsList'SortField where
    fromText = \case
        "ID" -> Just IILSFID
        "NAME" -> Just IILSFName
        _ -> Nothing

instance ToText InventoryItemsList'SortField where
    toText = \case
        IILSFID -> "ID"
        IILSFName -> "NAME"

instance FromJSON InventoryItemsList'SortField where
    parseJSON = parseJSONText "InventoryItemsList'SortField"

instance ToJSON InventoryItemsList'SortField where
    toJSON = toJSONText

-- | Order of sorted results, default is \'DESCENDING\'.
data ReportsFilesList'SortOrder
    = RFLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | RFLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsFilesList'SortOrder

instance FromText ReportsFilesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just RFLSOAscending
        "DESCENDING" -> Just RFLSODescending
        _ -> Nothing

instance ToText ReportsFilesList'SortOrder where
    toText = \case
        RFLSOAscending -> "ASCENDING"
        RFLSODescending -> "DESCENDING"

instance FromJSON ReportsFilesList'SortOrder where
    parseJSON = parseJSONText "ReportsFilesList'SortOrder"

instance ToJSON ReportsFilesList'SortOrder where
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

-- | Status of the filter. NONE means the user has access to none of the
-- objects. ALL means the user has access to all objects. ASSIGNED means
-- the user has access to the objects with IDs in the objectIds list.
data ObjectFilterStatus
    = All
      -- ^ @ALL@
    | Assigned
      -- ^ @ASSIGNED@
    | None
      -- ^ @NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ObjectFilterStatus

instance FromText ObjectFilterStatus where
    fromText = \case
        "ALL" -> Just All
        "ASSIGNED" -> Just Assigned
        "NONE" -> Just None
        _ -> Nothing

instance ToText ObjectFilterStatus where
    toText = \case
        All -> "ALL"
        Assigned -> "ASSIGNED"
        None -> "NONE"

instance FromJSON ObjectFilterStatus where
    parseJSON = parseJSONText "ObjectFilterStatus"

instance ToJSON ObjectFilterStatus where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Select only change logs with the specified object type.
data ChangeLogsList'ObjectType
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
    | ObjectSubaccount
      -- ^ @OBJECT_SUBACCOUNT@
    | ObjectUserProfile
      -- ^ @OBJECT_USER_PROFILE@
    | ObjectUserProfileFilter
      -- ^ @OBJECT_USER_PROFILE_FILTER@
    | ObjectUserRole
      -- ^ @OBJECT_USER_ROLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChangeLogsList'ObjectType

instance FromText ChangeLogsList'ObjectType where
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
        "OBJECT_SUBACCOUNT" -> Just ObjectSubaccount
        "OBJECT_USER_PROFILE" -> Just ObjectUserProfile
        "OBJECT_USER_PROFILE_FILTER" -> Just ObjectUserProfileFilter
        "OBJECT_USER_ROLE" -> Just ObjectUserRole
        _ -> Nothing

instance ToText ChangeLogsList'ObjectType where
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
        ObjectSubaccount -> "OBJECT_SUBACCOUNT"
        ObjectUserProfile -> "OBJECT_USER_PROFILE"
        ObjectUserProfileFilter -> "OBJECT_USER_PROFILE_FILTER"
        ObjectUserRole -> "OBJECT_USER_ROLE"

instance FromJSON ChangeLogsList'ObjectType where
    parseJSON = parseJSONText "ChangeLogsList'ObjectType"

instance ToJSON ChangeLogsList'ObjectType where
    toJSON = toJSONText

data PlacementItemTagFormats
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

instance Hashable PlacementItemTagFormats

instance FromText PlacementItemTagFormats where
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

instance ToText PlacementItemTagFormats where
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

instance FromJSON PlacementItemTagFormats where
    parseJSON = parseJSONText "PlacementItemTagFormats"

instance ToJSON PlacementItemTagFormats where
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

data AccountPermissionItemAccountProfiles
    = AccountProfileBasic
      -- ^ @ACCOUNT_PROFILE_BASIC@
    | AccountProfileStandard
      -- ^ @ACCOUNT_PROFILE_STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountPermissionItemAccountProfiles

instance FromText AccountPermissionItemAccountProfiles where
    fromText = \case
        "ACCOUNT_PROFILE_BASIC" -> Just AccountProfileBasic
        "ACCOUNT_PROFILE_STANDARD" -> Just AccountProfileStandard
        _ -> Nothing

instance ToText AccountPermissionItemAccountProfiles where
    toText = \case
        AccountProfileBasic -> "ACCOUNT_PROFILE_BASIC"
        AccountProfileStandard -> "ACCOUNT_PROFILE_STANDARD"

instance FromJSON AccountPermissionItemAccountProfiles where
    parseJSON = parseJSONText "AccountPermissionItemAccountProfiles"

instance ToJSON AccountPermissionItemAccountProfiles where
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

data CreativeAssetMetadataItemWarnedValidationRules
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

instance Hashable CreativeAssetMetadataItemWarnedValidationRules

instance FromText CreativeAssetMetadataItemWarnedValidationRules where
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

instance ToText CreativeAssetMetadataItemWarnedValidationRules where
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

instance FromJSON CreativeAssetMetadataItemWarnedValidationRules where
    parseJSON = parseJSONText "CreativeAssetMetadataItemWarnedValidationRules"

instance ToJSON CreativeAssetMetadataItemWarnedValidationRules where
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

-- | Select only placement groups belonging with this group type. A package
-- is a simple group of placements that acts as a single pricing point for
-- a group of tags. A roadblock is a group of placements that not only acts
-- as a single pricing point but also assumes that all the tags in it will
-- be served at the same time. A roadblock requires one of its assigned
-- placements to be marked as primary for reporting.
data PlacementGroupsList'PlacementGroupType
    = PlacementPackage
      -- ^ @PLACEMENT_PACKAGE@
    | PlacementRoadblock
      -- ^ @PLACEMENT_ROADBLOCK@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupsList'PlacementGroupType

instance FromText PlacementGroupsList'PlacementGroupType where
    fromText = \case
        "PLACEMENT_PACKAGE" -> Just PlacementPackage
        "PLACEMENT_ROADBLOCK" -> Just PlacementRoadblock
        _ -> Nothing

instance ToText PlacementGroupsList'PlacementGroupType where
    toText = \case
        PlacementPackage -> "PLACEMENT_PACKAGE"
        PlacementRoadblock -> "PLACEMENT_ROADBLOCK"

instance FromJSON PlacementGroupsList'PlacementGroupType where
    parseJSON = parseJSONText "PlacementGroupsList'PlacementGroupType"

instance ToJSON PlacementGroupsList'PlacementGroupType where
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

data FloodlightConfigurationItemStandardVariableTypes
    = Num
      -- ^ @NUM@
    | Ord
      -- ^ @ORD@
    | Tran
      -- ^ @TRAN@
    | U
      -- ^ @U@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationItemStandardVariableTypes

instance FromText FloodlightConfigurationItemStandardVariableTypes where
    fromText = \case
        "NUM" -> Just Num
        "ORD" -> Just Ord
        "TRAN" -> Just Tran
        "U" -> Just U
        _ -> Nothing

instance ToText FloodlightConfigurationItemStandardVariableTypes where
    toText = \case
        Num -> "NUM"
        Ord -> "ORD"
        Tran -> "TRAN"
        U -> "U"

instance FromJSON FloodlightConfigurationItemStandardVariableTypes where
    parseJSON = parseJSONText "FloodlightConfigurationItemStandardVariableTypes"

instance ToJSON FloodlightConfigurationItemStandardVariableTypes where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data OrderDocumentsList'SortOrder
    = ODLSOAscending
      -- ^ @ASCENDING@
    | ODLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderDocumentsList'SortOrder

instance FromText OrderDocumentsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just ODLSOAscending
        "DESCENDING" -> Just ODLSODescending
        _ -> Nothing

instance ToText OrderDocumentsList'SortOrder where
    toText = \case
        ODLSOAscending -> "ASCENDING"
        ODLSODescending -> "DESCENDING"

instance FromJSON OrderDocumentsList'SortOrder where
    parseJSON = parseJSONText "OrderDocumentsList'SortOrder"

instance ToJSON OrderDocumentsList'SortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data PlacementsList'SortOrder
    = PLSOAscending
      -- ^ @ASCENDING@
    | PLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsList'SortOrder

instance FromText PlacementsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just PLSOAscending
        "DESCENDING" -> Just PLSODescending
        _ -> Nothing

instance ToText PlacementsList'SortOrder where
    toText = \case
        PLSOAscending -> "ASCENDING"
        PLSODescending -> "DESCENDING"

instance FromJSON PlacementsList'SortOrder where
    parseJSON = parseJSONText "PlacementsList'SortOrder"

instance ToJSON PlacementsList'SortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data SubaccountsList'SortField
    = SLSFID
      -- ^ @ID@
    | SLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubaccountsList'SortField

instance FromText SubaccountsList'SortField where
    fromText = \case
        "ID" -> Just SLSFID
        "NAME" -> Just SLSFName
        _ -> Nothing

instance ToText SubaccountsList'SortField where
    toText = \case
        SLSFID -> "ID"
        SLSFName -> "NAME"

instance FromJSON SubaccountsList'SortField where
    parseJSON = parseJSONText "SubaccountsList'SortField"

instance ToJSON SubaccountsList'SortField where
    toJSON = toJSONText

-- | Select only ads with these types.
data AdsList'Type
    = AdServingClickTracker
      -- ^ @AD_SERVING_CLICK_TRACKER@
    | AdServingDefaultAd
      -- ^ @AD_SERVING_DEFAULT_AD@
    | AdServingStandardAd
      -- ^ @AD_SERVING_STANDARD_AD@
    | AdServingTracking
      -- ^ @AD_SERVING_TRACKING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdsList'Type

instance FromText AdsList'Type where
    fromText = \case
        "AD_SERVING_CLICK_TRACKER" -> Just AdServingClickTracker
        "AD_SERVING_DEFAULT_AD" -> Just AdServingDefaultAd
        "AD_SERVING_STANDARD_AD" -> Just AdServingStandardAd
        "AD_SERVING_TRACKING" -> Just AdServingTracking
        _ -> Nothing

instance ToText AdsList'Type where
    toText = \case
        AdServingClickTracker -> "AD_SERVING_CLICK_TRACKER"
        AdServingDefaultAd -> "AD_SERVING_DEFAULT_AD"
        AdServingStandardAd -> "AD_SERVING_STANDARD_AD"
        AdServingTracking -> "AD_SERVING_TRACKING"

instance FromJSON AdsList'Type where
    parseJSON = parseJSONText "AdsList'Type"

instance ToJSON AdsList'Type where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data CreativeFieldsList'SortOrder
    = CFLSOAscending
      -- ^ @ASCENDING@
    | CFLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeFieldsList'SortOrder

instance FromText CreativeFieldsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just CFLSOAscending
        "DESCENDING" -> Just CFLSODescending
        _ -> Nothing

instance ToText CreativeFieldsList'SortOrder where
    toText = \case
        CFLSOAscending -> "ASCENDING"
        CFLSODescending -> "DESCENDING"

instance FromJSON CreativeFieldsList'SortOrder where
    parseJSON = parseJSONText "CreativeFieldsList'SortOrder"

instance ToJSON CreativeFieldsList'SortOrder where
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

-- | Type of this creative.This is a required field. Applicable to all
-- creative types.
data CreativeType
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

instance Hashable CreativeType

instance FromText CreativeType where
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

instance ToText CreativeType where
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

instance FromJSON CreativeType where
    parseJSON = parseJSONText "CreativeType"

instance ToJSON CreativeType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AdsList'SortField
    = ALSFID
      -- ^ @ID@
    | ALSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdsList'SortField

instance FromText AdsList'SortField where
    fromText = \case
        "ID" -> Just ALSFID
        "NAME" -> Just ALSFName
        _ -> Nothing

instance ToText AdsList'SortField where
    toText = \case
        ALSFID -> "ID"
        ALSFName -> "NAME"

instance FromJSON AdsList'SortField where
    parseJSON = parseJSONText "AdsList'SortField"

instance ToJSON AdsList'SortField where
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

-- | Select only placements with this payment source.
data PlacementsList'PaymentSource
    = PLPSPlacementAgencyPaid
      -- ^ @PLACEMENT_AGENCY_PAID@
    | PLPSPlacementPublisherPaid
      -- ^ @PLACEMENT_PUBLISHER_PAID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementsList'PaymentSource

instance FromText PlacementsList'PaymentSource where
    fromText = \case
        "PLACEMENT_AGENCY_PAID" -> Just PLPSPlacementAgencyPaid
        "PLACEMENT_PUBLISHER_PAID" -> Just PLPSPlacementPublisherPaid
        _ -> Nothing

instance ToText PlacementsList'PaymentSource where
    toText = \case
        PLPSPlacementAgencyPaid -> "PLACEMENT_AGENCY_PAID"
        PLPSPlacementPublisherPaid -> "PLACEMENT_PUBLISHER_PAID"

instance FromJSON PlacementsList'PaymentSource where
    parseJSON = parseJSONText "PlacementsList'PaymentSource"

instance ToJSON PlacementsList'PaymentSource where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data FloodlightActivityGroupsList'SortOrder
    = FAGLSOAscending
      -- ^ @ASCENDING@
    | FAGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupsList'SortOrder

instance FromText FloodlightActivityGroupsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just FAGLSOAscending
        "DESCENDING" -> Just FAGLSODescending
        _ -> Nothing

instance ToText FloodlightActivityGroupsList'SortOrder where
    toText = \case
        FAGLSOAscending -> "ASCENDING"
        FAGLSODescending -> "DESCENDING"

instance FromJSON FloodlightActivityGroupsList'SortOrder where
    parseJSON = parseJSONText "FloodlightActivityGroupsList'SortOrder"

instance ToJSON FloodlightActivityGroupsList'SortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data AdvertiserGroupsList'SortOrder
    = AGLSOAscending
      -- ^ @ASCENDING@
    | AGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertiserGroupsList'SortOrder

instance FromText AdvertiserGroupsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just AGLSOAscending
        "DESCENDING" -> Just AGLSODescending
        _ -> Nothing

instance ToText AdvertiserGroupsList'SortOrder where
    toText = \case
        AGLSOAscending -> "ASCENDING"
        AGLSODescending -> "DESCENDING"

instance FromJSON AdvertiserGroupsList'SortOrder where
    parseJSON = parseJSONText "AdvertiserGroupsList'SortOrder"

instance ToJSON AdvertiserGroupsList'SortOrder where
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

-- | Order of sorted results, default is ASCENDING.
data DirectorySitesList'SortOrder
    = DSLSOAscending
      -- ^ @ASCENDING@
    | DSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySitesList'SortOrder

instance FromText DirectorySitesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just DSLSOAscending
        "DESCENDING" -> Just DSLSODescending
        _ -> Nothing

instance ToText DirectorySitesList'SortOrder where
    toText = \case
        DSLSOAscending -> "ASCENDING"
        DSLSODescending -> "DESCENDING"

instance FromJSON DirectorySitesList'SortOrder where
    parseJSON = parseJSONText "DirectorySitesList'SortOrder"

instance ToJSON DirectorySitesList'SortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data CampaignsList'SortField
    = CLSFID
      -- ^ @ID@
    | CLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CampaignsList'SortField

instance FromText CampaignsList'SortField where
    fromText = \case
        "ID" -> Just CLSFID
        "NAME" -> Just CLSFName
        _ -> Nothing

instance ToText CampaignsList'SortField where
    toText = \case
        CLSFID -> "ID"
        CLSFName -> "NAME"

instance FromJSON CampaignsList'SortField where
    parseJSON = parseJSONText "CampaignsList'SortField"

instance ToJSON CampaignsList'SortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data OrdersList'SortField
    = OLSFID
      -- ^ @ID@
    | OLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrdersList'SortField

instance FromText OrdersList'SortField where
    fromText = \case
        "ID" -> Just OLSFID
        "NAME" -> Just OLSFName
        _ -> Nothing

instance ToText OrdersList'SortField where
    toText = \case
        OLSFID -> "ID"
        OLSFName -> "NAME"

instance FromJSON OrdersList'SortField where
    parseJSON = parseJSONText "OrdersList'SortField"

instance ToJSON OrdersList'SortField where
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

-- | Select only ads with the specified creativeType.
data AdsList'CreativeType
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

instance Hashable AdsList'CreativeType

instance FromText AdsList'CreativeType where
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

instance ToText AdsList'CreativeType where
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

instance FromJSON AdsList'CreativeType where
    parseJSON = parseJSONText "AdsList'CreativeType"

instance ToJSON AdsList'CreativeType where
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

data FloodlightActivityItemUserDefinedVariableTypes
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

instance Hashable FloodlightActivityItemUserDefinedVariableTypes

instance FromText FloodlightActivityItemUserDefinedVariableTypes where
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

instance ToText FloodlightActivityItemUserDefinedVariableTypes where
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

instance FromJSON FloodlightActivityItemUserDefinedVariableTypes where
    parseJSON = parseJSONText "FloodlightActivityItemUserDefinedVariableTypes"

instance ToJSON FloodlightActivityItemUserDefinedVariableTypes where
    toJSON = toJSONText

-- | Field by which to sort the list.
data CreativesList'SortField
    = CID
      -- ^ @ID@
    | CName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesList'SortField

instance FromText CreativesList'SortField where
    fromText = \case
        "ID" -> Just CID
        "NAME" -> Just CName
        _ -> Nothing

instance ToText CreativesList'SortField where
    toText = \case
        CID -> "ID"
        CName -> "NAME"

instance FromJSON CreativesList'SortField where
    parseJSON = parseJSONText "CreativesList'SortField"

instance ToJSON CreativesList'SortField where
    toJSON = toJSONText

-- | Enum to define for \"MONTHLY\" scheduled reports whether reports should
-- be repeated on the same day of the month as \"startDate\" or the same
-- day of the week of the month. Example: If \'startDate\' is Monday, April
-- 2nd 2012 (2012-04-02), \"DAY_OF_MONTH\" would run subsequent reports on
-- the 2nd of every Month, and \"WEEK_OF_MONTH\" would run subsequent
-- reports on the first Monday of the month.
data ReportRunsOnDayOfMonthSchedule
    = DayOfMonth
      -- ^ @DAY_OF_MONTH@
    | WeekOfMonth
      -- ^ @WEEK_OF_MONTH@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportRunsOnDayOfMonthSchedule

instance FromText ReportRunsOnDayOfMonthSchedule where
    fromText = \case
        "DAY_OF_MONTH" -> Just DayOfMonth
        "WEEK_OF_MONTH" -> Just WeekOfMonth
        _ -> Nothing

instance ToText ReportRunsOnDayOfMonthSchedule where
    toText = \case
        DayOfMonth -> "DAY_OF_MONTH"
        WeekOfMonth -> "WEEK_OF_MONTH"

instance FromJSON ReportRunsOnDayOfMonthSchedule where
    parseJSON = parseJSONText "ReportRunsOnDayOfMonthSchedule"

instance ToJSON ReportRunsOnDayOfMonthSchedule where
    toJSON = toJSONText

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

instance FromJSON DayPartTargetingItemDaysOfWeek where
    parseJSON = parseJSONText "DayPartTargetingItemDaysOfWeek"

instance ToJSON DayPartTargetingItemDaysOfWeek where
    toJSON = toJSONText

-- | Types of attribution options for natural search conversions.
data FloodlightConfigurationNaturalSearchConversionAttributionOption
    = ExcludeNATuralSearchConversionAttribution
      -- ^ @EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION@
    | IncludeNATuralSearchConversionAttribution
      -- ^ @INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION@
    | IncludeNATuralSearchTieredConversionAttribution
      -- ^ @INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightConfigurationNaturalSearchConversionAttributionOption

instance FromText FloodlightConfigurationNaturalSearchConversionAttributionOption where
    fromText = \case
        "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Just ExcludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION" -> Just IncludeNATuralSearchConversionAttribution
        "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION" -> Just IncludeNATuralSearchTieredConversionAttribution
        _ -> Nothing

instance ToText FloodlightConfigurationNaturalSearchConversionAttributionOption where
    toText = \case
        ExcludeNATuralSearchConversionAttribution -> "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        IncludeNATuralSearchConversionAttribution -> "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
        IncludeNATuralSearchTieredConversionAttribution -> "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION"

instance FromJSON FloodlightConfigurationNaturalSearchConversionAttributionOption where
    parseJSON = parseJSONText "FloodlightConfigurationNaturalSearchConversionAttributionOption"

instance ToJSON FloodlightConfigurationNaturalSearchConversionAttributionOption where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data PlacementStrategiesList'SortOrder
    = PSLSOAscending
      -- ^ @ASCENDING@
    | PSLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementStrategiesList'SortOrder

instance FromText PlacementStrategiesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just PSLSOAscending
        "DESCENDING" -> Just PSLSODescending
        _ -> Nothing

instance ToText PlacementStrategiesList'SortOrder where
    toText = \case
        PSLSOAscending -> "ASCENDING"
        PSLSODescending -> "DESCENDING"

instance FromJSON PlacementStrategiesList'SortOrder where
    parseJSON = parseJSONText "PlacementStrategiesList'SortOrder"

instance ToJSON PlacementStrategiesList'SortOrder where
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

-- | Field by which to sort the list.
data AccountUserProfilesList'SortField
    = AUPLSFID
      -- ^ @ID@
    | AUPLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProfilesList'SortField

instance FromText AccountUserProfilesList'SortField where
    fromText = \case
        "ID" -> Just AUPLSFID
        "NAME" -> Just AUPLSFName
        _ -> Nothing

instance ToText AccountUserProfilesList'SortField where
    toText = \case
        AUPLSFID -> "ID"
        AUPLSFName -> "NAME"

instance FromJSON AccountUserProfilesList'SortField where
    parseJSON = parseJSONText "AccountUserProfilesList'SortField"

instance ToJSON AccountUserProfilesList'SortField where
    toJSON = toJSONText

-- | Site filter type for this event tag. If no type is specified then the
-- event tag will be applied to all sites.
data EventTagSiteFilterType
    = Blacklist
      -- ^ @BLACKLIST@
    | Whitelist
      -- ^ @WHITELIST@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagSiteFilterType

instance FromText EventTagSiteFilterType where
    fromText = \case
        "BLACKLIST" -> Just Blacklist
        "WHITELIST" -> Just Whitelist
        _ -> Nothing

instance ToText EventTagSiteFilterType where
    toText = \case
        Blacklist -> "BLACKLIST"
        Whitelist -> "WHITELIST"

instance FromJSON EventTagSiteFilterType where
    parseJSON = parseJSONText "EventTagSiteFilterType"

instance ToJSON EventTagSiteFilterType where
    toJSON = toJSONText

-- | The output format of the report. If not specified, default format is
-- \"CSV\". Note that the actual format in the completed report file might
-- differ if for instance the report\'s size exceeds the format\'s
-- capabilities. \"CSV\" will then be the fallback format.
data ReportFormat
    = CSV
      -- ^ @CSV@
    | Excel
      -- ^ @EXCEL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportFormat

instance FromText ReportFormat where
    fromText = \case
        "CSV" -> Just CSV
        "EXCEL" -> Just Excel
        _ -> Nothing

instance ToText ReportFormat where
    toText = \case
        CSV -> "CSV"
        Excel -> "EXCEL"

instance FromJSON ReportFormat where
    parseJSON = parseJSONText "ReportFormat"

instance ToJSON ReportFormat where
    toJSON = toJSONText

-- | Select only event tags with the specified event tag types. Event tag
-- types can be used to specify whether to use a third-party pixel, a
-- third-party JavaScript URL, or a third-party click-through URL for
-- either impression or click tracking.
data EventTagsList'EventTagTypes
    = ETLETTClickThroughEventTag
      -- ^ @CLICK_THROUGH_EVENT_TAG@
    | ETLETTImpressionImageEventTag
      -- ^ @IMPRESSION_IMAGE_EVENT_TAG@
    | ETLETTImpressionJavascriptEventTag
      -- ^ @IMPRESSION_JAVASCRIPT_EVENT_TAG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagsList'EventTagTypes

instance FromText EventTagsList'EventTagTypes where
    fromText = \case
        "CLICK_THROUGH_EVENT_TAG" -> Just ETLETTClickThroughEventTag
        "IMPRESSION_IMAGE_EVENT_TAG" -> Just ETLETTImpressionImageEventTag
        "IMPRESSION_JAVASCRIPT_EVENT_TAG" -> Just ETLETTImpressionJavascriptEventTag
        _ -> Nothing

instance ToText EventTagsList'EventTagTypes where
    toText = \case
        ETLETTClickThroughEventTag -> "CLICK_THROUGH_EVENT_TAG"
        ETLETTImpressionImageEventTag -> "IMPRESSION_IMAGE_EVENT_TAG"
        ETLETTImpressionJavascriptEventTag -> "IMPRESSION_JAVASCRIPT_EVENT_TAG"

instance FromJSON EventTagsList'EventTagTypes where
    parseJSON = parseJSONText "EventTagsList'EventTagTypes"

instance ToJSON EventTagsList'EventTagTypes where
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

data CreativeAssetMetadataItemDetectedFeatures
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
    | CssBackgroundSize
      -- ^ @CSS_BACKGROUND_SIZE@
    | CssBorderImage
      -- ^ @CSS_BORDER_IMAGE@
    | CssBorderRadius
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
    | WebSqlDatabase
      -- ^ @WEB_SQL_DATABASE@
    | WebWorkers
      -- ^ @WEB_WORKERS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeAssetMetadataItemDetectedFeatures

instance FromText CreativeAssetMetadataItemDetectedFeatures where
    fromText = \case
        "APPLICATION_CACHE" -> Just ApplicationCache
        "AUDIO" -> Just Audio
        "CANVAS" -> Just Canvas
        "CANVAS_TEXT" -> Just CanvasText
        "CSS_ANIMATIONS" -> Just CssAnimations
        "CSS_BACKGROUND_SIZE" -> Just CssBackgroundSize
        "CSS_BORDER_IMAGE" -> Just CssBorderImage
        "CSS_BORDER_RADIUS" -> Just CssBorderRadius
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
        "WEB_SQL_DATABASE" -> Just WebSqlDatabase
        "WEB_WORKERS" -> Just WebWorkers
        _ -> Nothing

instance ToText CreativeAssetMetadataItemDetectedFeatures where
    toText = \case
        ApplicationCache -> "APPLICATION_CACHE"
        Audio -> "AUDIO"
        Canvas -> "CANVAS"
        CanvasText -> "CANVAS_TEXT"
        CssAnimations -> "CSS_ANIMATIONS"
        CssBackgroundSize -> "CSS_BACKGROUND_SIZE"
        CssBorderImage -> "CSS_BORDER_IMAGE"
        CssBorderRadius -> "CSS_BORDER_RADIUS"
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
        WebSqlDatabase -> "WEB_SQL_DATABASE"
        WebWorkers -> "WEB_WORKERS"

instance FromJSON CreativeAssetMetadataItemDetectedFeatures where
    parseJSON = parseJSONText "CreativeAssetMetadataItemDetectedFeatures"

instance ToJSON CreativeAssetMetadataItemDetectedFeatures where
    toJSON = toJSONText

-- | Select only change logs with the specified action.
data ChangeLogsList'Action
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

instance Hashable ChangeLogsList'Action

instance FromText ChangeLogsList'Action where
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

instance ToText ChangeLogsList'Action where
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

instance FromJSON ChangeLogsList'Action where
    parseJSON = parseJSONText "ChangeLogsList'Action"

instance ToJSON ChangeLogsList'Action where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data ProjectsList'SortOrder
    = PAscending
      -- ^ @ASCENDING@
    | PDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProjectsList'SortOrder

instance FromText ProjectsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just PAscending
        "DESCENDING" -> Just PDescending
        _ -> Nothing

instance ToText ProjectsList'SortOrder where
    toText = \case
        PAscending -> "ASCENDING"
        PDescending -> "DESCENDING"

instance FromJSON ProjectsList'SortOrder where
    parseJSON = parseJSONText "ProjectsList'SortOrder"

instance ToJSON ProjectsList'SortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data AdvertisersList'SortOrder
    = ALSOAscending
      -- ^ @ASCENDING@
    | ALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersList'SortOrder

instance FromText AdvertisersList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just ALSOAscending
        "DESCENDING" -> Just ALSODescending
        _ -> Nothing

instance ToText AdvertisersList'SortOrder where
    toText = \case
        ALSOAscending -> "ASCENDING"
        ALSODescending -> "DESCENDING"

instance FromJSON AdvertisersList'SortOrder where
    parseJSON = parseJSONText "AdvertisersList'SortOrder"

instance ToJSON AdvertisersList'SortOrder where
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

data DirectorySiteItemInterstitialTagFormats
    = IframeJavascriptInterstitial
      -- ^ @IFRAME_JAVASCRIPT_INTERSTITIAL@
    | InternalRedirectInterstitial
      -- ^ @INTERNAL_REDIRECT_INTERSTITIAL@
    | JavascriptInterstitial
      -- ^ @JAVASCRIPT_INTERSTITIAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteItemInterstitialTagFormats

instance FromText DirectorySiteItemInterstitialTagFormats where
    fromText = \case
        "IFRAME_JAVASCRIPT_INTERSTITIAL" -> Just IframeJavascriptInterstitial
        "INTERNAL_REDIRECT_INTERSTITIAL" -> Just InternalRedirectInterstitial
        "JAVASCRIPT_INTERSTITIAL" -> Just JavascriptInterstitial
        _ -> Nothing

instance ToText DirectorySiteItemInterstitialTagFormats where
    toText = \case
        IframeJavascriptInterstitial -> "IFRAME_JAVASCRIPT_INTERSTITIAL"
        InternalRedirectInterstitial -> "INTERNAL_REDIRECT_INTERSTITIAL"
        JavascriptInterstitial -> "JAVASCRIPT_INTERSTITIAL"

instance FromJSON DirectorySiteItemInterstitialTagFormats where
    parseJSON = parseJSONText "DirectorySiteItemInterstitialTagFormats"

instance ToJSON DirectorySiteItemInterstitialTagFormats where
    toJSON = toJSONText

-- | Field by which to sort the list.
data AccountsList'SortField
    = AID
      -- ^ @ID@
    | AName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountsList'SortField

instance FromText AccountsList'SortField where
    fromText = \case
        "ID" -> Just AID
        "NAME" -> Just AName
        _ -> Nothing

instance ToText AccountsList'SortField where
    toText = \case
        AID -> "ID"
        AName -> "NAME"

instance FromJSON AccountsList'SortField where
    parseJSON = parseJSONText "AccountsList'SortField"

instance ToJSON AccountsList'SortField where
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

-- | Field by which to sort the list.
data RemarketingListsList'SortField
    = RLLSFID
      -- ^ @ID@
    | RLLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RemarketingListsList'SortField

instance FromText RemarketingListsList'SortField where
    fromText = \case
        "ID" -> Just RLLSFID
        "NAME" -> Just RLLSFName
        _ -> Nothing

instance ToText RemarketingListsList'SortField where
    toText = \case
        RLLSFID -> "ID"
        RLLSFName -> "NAME"

instance FromJSON RemarketingListsList'SortField where
    parseJSON = parseJSONText "RemarketingListsList'SortField"

instance ToJSON RemarketingListsList'SortField where
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

-- | Order of sorted results, default is ASCENDING.
data UserRolesList'SortOrder
    = URLSOAscending
      -- ^ @ASCENDING@
    | URLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserRolesList'SortOrder

instance FromText UserRolesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just URLSOAscending
        "DESCENDING" -> Just URLSODescending
        _ -> Nothing

instance ToText UserRolesList'SortOrder where
    toText = \case
        URLSOAscending -> "ASCENDING"
        URLSODescending -> "DESCENDING"

instance FromJSON UserRolesList'SortOrder where
    parseJSON = parseJSONText "UserRolesList'SortOrder"

instance ToJSON UserRolesList'SortOrder where
    toJSON = toJSONText

-- | Type of the associated floodlight activity group. This is a read-only
-- field.
data FloodlightActivityFloodlightActivityGroupType
    = Counter
      -- ^ @COUNTER@
    | Sale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityFloodlightActivityGroupType

instance FromText FloodlightActivityFloodlightActivityGroupType where
    fromText = \case
        "COUNTER" -> Just Counter
        "SALE" -> Just Sale
        _ -> Nothing

instance ToText FloodlightActivityFloodlightActivityGroupType where
    toText = \case
        Counter -> "COUNTER"
        Sale -> "SALE"

instance FromJSON FloodlightActivityFloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivityFloodlightActivityGroupType"

instance ToJSON FloodlightActivityFloodlightActivityGroupType where
    toJSON = toJSONText

-- | Levels of availability for a user role permission.
data UserRolePermissionAvailability
    = AccountAlways
      -- ^ @ACCOUNT_ALWAYS@
    | AccountByDefault
      -- ^ @ACCOUNT_BY_DEFAULT@
    | NotAvailableByDefault
      -- ^ @NOT_AVAILABLE_BY_DEFAULT@
    | SubaccountAndAccountAlways
      -- ^ @SUBACCOUNT_AND_ACCOUNT_ALWAYS@
    | SubaccountAndAccountByDefault
      -- ^ @SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserRolePermissionAvailability

instance FromText UserRolePermissionAvailability where
    fromText = \case
        "ACCOUNT_ALWAYS" -> Just AccountAlways
        "ACCOUNT_BY_DEFAULT" -> Just AccountByDefault
        "NOT_AVAILABLE_BY_DEFAULT" -> Just NotAvailableByDefault
        "SUBACCOUNT_AND_ACCOUNT_ALWAYS" -> Just SubaccountAndAccountAlways
        "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT" -> Just SubaccountAndAccountByDefault
        _ -> Nothing

instance ToText UserRolePermissionAvailability where
    toText = \case
        AccountAlways -> "ACCOUNT_ALWAYS"
        AccountByDefault -> "ACCOUNT_BY_DEFAULT"
        NotAvailableByDefault -> "NOT_AVAILABLE_BY_DEFAULT"
        SubaccountAndAccountAlways -> "SUBACCOUNT_AND_ACCOUNT_ALWAYS"
        SubaccountAndAccountByDefault -> "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT"

instance FromJSON UserRolePermissionAvailability where
    parseJSON = parseJSONText "UserRolePermissionAvailability"

instance ToJSON UserRolePermissionAvailability where
    toJSON = toJSONText

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

instance FromJSON PlacementCompatibility where
    parseJSON = parseJSONText "PlacementCompatibility"

instance ToJSON PlacementCompatibility where
    toJSON = toJSONText

-- | Third-party URL type for in-stream video creatives.
data ThirdPartyTrackingUrlThirdPartyUrlType
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

instance Hashable ThirdPartyTrackingUrlThirdPartyUrlType

instance FromText ThirdPartyTrackingUrlThirdPartyUrlType where
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

instance ToText ThirdPartyTrackingUrlThirdPartyUrlType where
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

instance FromJSON ThirdPartyTrackingUrlThirdPartyUrlType where
    parseJSON = parseJSONText "ThirdPartyTrackingUrlThirdPartyUrlType"

instance ToJSON ThirdPartyTrackingUrlThirdPartyUrlType where
    toJSON = toJSONText

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

instance FromJSON CreativeAssetItemDetectedFeatures where
    parseJSON = parseJSONText "CreativeAssetItemDetectedFeatures"

instance ToJSON CreativeAssetItemDetectedFeatures where
    toJSON = toJSONText

-- | Order of sorted results, default is \'DESCENDING\'.
data FilesList'SortOrder
    = FLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | FLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesList'SortOrder

instance FromText FilesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just FLSOAscending
        "DESCENDING" -> Just FLSODescending
        _ -> Nothing

instance ToText FilesList'SortOrder where
    toText = \case
        FLSOAscending -> "ASCENDING"
        FLSODescending -> "DESCENDING"

instance FromJSON FilesList'SortOrder where
    parseJSON = parseJSONText "FilesList'SortOrder"

instance ToJSON FilesList'SortOrder where
    toJSON = toJSONText

-- | Select only floodlight activity groups with the specified floodlight
-- activity group type.
data FloodlightActivityGroupsList'Type
    = FAGLTCounter
      -- ^ @COUNTER@
    | FAGLTSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivityGroupsList'Type

instance FromText FloodlightActivityGroupsList'Type where
    fromText = \case
        "COUNTER" -> Just FAGLTCounter
        "SALE" -> Just FAGLTSale
        _ -> Nothing

instance ToText FloodlightActivityGroupsList'Type where
    toText = \case
        FAGLTCounter -> "COUNTER"
        FAGLTSale -> "SALE"

instance FromJSON FloodlightActivityGroupsList'Type where
    parseJSON = parseJSONText "FloodlightActivityGroupsList'Type"

instance ToJSON FloodlightActivityGroupsList'Type where
    toJSON = toJSONText

-- | Field by which to sort the list.
data DirectorySiteContactsList'SortField
    = DSCLSFID
      -- ^ @ID@
    | DSCLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactsList'SortField

instance FromText DirectorySiteContactsList'SortField where
    fromText = \case
        "ID" -> Just DSCLSFID
        "NAME" -> Just DSCLSFName
        _ -> Nothing

instance ToText DirectorySiteContactsList'SortField where
    toText = \case
        DSCLSFID -> "ID"
        DSCLSFName -> "NAME"

instance FromJSON DirectorySiteContactsList'SortField where
    parseJSON = parseJSONText "DirectorySiteContactsList'SortField"

instance ToJSON DirectorySiteContactsList'SortField where
    toJSON = toJSONText

-- | Field by which to sort the list.
data CreativeFieldValuesList'SortField
    = CFVLSFID
      -- ^ @ID@
    | CFVLSFValue
      -- ^ @VALUE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeFieldValuesList'SortField

instance FromText CreativeFieldValuesList'SortField where
    fromText = \case
        "ID" -> Just CFVLSFID
        "VALUE" -> Just CFVLSFValue
        _ -> Nothing

instance ToText CreativeFieldValuesList'SortField where
    toText = \case
        CFVLSFID -> "ID"
        CFVLSFValue -> "VALUE"

instance FromJSON CreativeFieldValuesList'SortField where
    parseJSON = parseJSONText "CreativeFieldValuesList'SortField"

instance ToJSON CreativeFieldValuesList'SortField where
    toJSON = toJSONText

-- | Select only floodlight activities with the specified floodlight activity
-- group type.
data FloodlightActivitiesList'FloodlightActivityGroupType
    = FALFAGTCounter
      -- ^ @COUNTER@
    | FALFAGTSale
      -- ^ @SALE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivitiesList'FloodlightActivityGroupType

instance FromText FloodlightActivitiesList'FloodlightActivityGroupType where
    fromText = \case
        "COUNTER" -> Just FALFAGTCounter
        "SALE" -> Just FALFAGTSale
        _ -> Nothing

instance ToText FloodlightActivitiesList'FloodlightActivityGroupType where
    toText = \case
        FALFAGTCounter -> "COUNTER"
        FALFAGTSale -> "SALE"

instance FromJSON FloodlightActivitiesList'FloodlightActivityGroupType where
    parseJSON = parseJSONText "FloodlightActivitiesList'FloodlightActivityGroupType"

instance ToJSON FloodlightActivitiesList'FloodlightActivityGroupType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data TargetableRemarketingListsList'SortField
    = TRLLSFID
      -- ^ @ID@
    | TRLLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetableRemarketingListsList'SortField

instance FromText TargetableRemarketingListsList'SortField where
    fromText = \case
        "ID" -> Just TRLLSFID
        "NAME" -> Just TRLLSFName
        _ -> Nothing

instance ToText TargetableRemarketingListsList'SortField where
    toText = \case
        TRLLSFID -> "ID"
        TRLLSFName -> "NAME"

instance FromJSON TargetableRemarketingListsList'SortField where
    parseJSON = parseJSONText "TargetableRemarketingListsList'SortField"

instance ToJSON TargetableRemarketingListsList'SortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data PlacementGroupsList'SortOrder
    = PGLSOAscending
      -- ^ @ASCENDING@
    | PGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupsList'SortOrder

instance FromText PlacementGroupsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just PGLSOAscending
        "DESCENDING" -> Just PGLSODescending
        _ -> Nothing

instance ToText PlacementGroupsList'SortOrder where
    toText = \case
        PGLSOAscending -> "ASCENDING"
        PGLSODescending -> "DESCENDING"

instance FromJSON PlacementGroupsList'SortOrder where
    parseJSON = parseJSONText "PlacementGroupsList'SortOrder"

instance ToJSON PlacementGroupsList'SortOrder where
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

-- | Select only placements with these pricing types.
data PlacementsList'PricingTypes
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

instance Hashable PlacementsList'PricingTypes

instance FromText PlacementsList'PricingTypes where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just PricingTypeCpa
        "PRICING_TYPE_CPC" -> Just PricingTypeCpc
        "PRICING_TYPE_CPM" -> Just PricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText PlacementsList'PricingTypes where
    toText = \case
        PricingTypeCpa -> "PRICING_TYPE_CPA"
        PricingTypeCpc -> "PRICING_TYPE_CPC"
        PricingTypeCpm -> "PRICING_TYPE_CPM"
        PricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON PlacementsList'PricingTypes where
    parseJSON = parseJSONText "PlacementsList'PricingTypes"

instance ToJSON PlacementsList'PricingTypes where
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

-- | Order of sorted results, default is ASCENDING.
data EventTagsList'SortOrder
    = ETLSOAscending
      -- ^ @ASCENDING@
    | ETLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagsList'SortOrder

instance FromText EventTagsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just ETLSOAscending
        "DESCENDING" -> Just ETLSODescending
        _ -> Nothing

instance ToText EventTagsList'SortOrder where
    toText = \case
        ETLSOAscending -> "ASCENDING"
        ETLSODescending -> "DESCENDING"

instance FromJSON EventTagsList'SortOrder where
    parseJSON = parseJSONText "EventTagsList'SortOrder"

instance ToJSON EventTagsList'SortOrder where
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

-- | Field by which to sort the list.
data PlacementStrategiesList'SortField
    = PSLSFID
      -- ^ @ID@
    | PSLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementStrategiesList'SortField

instance FromText PlacementStrategiesList'SortField where
    fromText = \case
        "ID" -> Just PSLSFID
        "NAME" -> Just PSLSFName
        _ -> Nothing

instance ToText PlacementStrategiesList'SortField where
    toText = \case
        PSLSFID -> "ID"
        PSLSFName -> "NAME"

instance FromJSON PlacementStrategiesList'SortField where
    parseJSON = parseJSONText "PlacementStrategiesList'SortField"

instance ToJSON PlacementStrategiesList'SortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data AccountUserProfilesList'SortOrder
    = AUPLSOAscending
      -- ^ @ASCENDING@
    | AUPLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountUserProfilesList'SortOrder

instance FromText AccountUserProfilesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just AUPLSOAscending
        "DESCENDING" -> Just AUPLSODescending
        _ -> Nothing

instance ToText AccountUserProfilesList'SortOrder where
    toText = \case
        AUPLSOAscending -> "ASCENDING"
        AUPLSODescending -> "DESCENDING"

instance FromJSON AccountUserProfilesList'SortOrder where
    parseJSON = parseJSONText "AccountUserProfilesList'SortOrder"

instance ToJSON AccountUserProfilesList'SortOrder where
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

data DirectorySiteItemInpageTagFormats
    = IframeJavascriptInpage
      -- ^ @IFRAME_JAVASCRIPT_INPAGE@
    | InternalRedirectInpage
      -- ^ @INTERNAL_REDIRECT_INPAGE@
    | JavascriptInpage
      -- ^ @JAVASCRIPT_INPAGE@
    | Standard
      -- ^ @STANDARD@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteItemInpageTagFormats

instance FromText DirectorySiteItemInpageTagFormats where
    fromText = \case
        "IFRAME_JAVASCRIPT_INPAGE" -> Just IframeJavascriptInpage
        "INTERNAL_REDIRECT_INPAGE" -> Just InternalRedirectInpage
        "JAVASCRIPT_INPAGE" -> Just JavascriptInpage
        "STANDARD" -> Just Standard
        _ -> Nothing

instance ToText DirectorySiteItemInpageTagFormats where
    toText = \case
        IframeJavascriptInpage -> "IFRAME_JAVASCRIPT_INPAGE"
        InternalRedirectInpage -> "INTERNAL_REDIRECT_INPAGE"
        JavascriptInpage -> "JAVASCRIPT_INPAGE"
        Standard -> "STANDARD"

instance FromJSON DirectorySiteItemInpageTagFormats where
    parseJSON = parseJSONText "DirectorySiteItemInpageTagFormats"

instance ToJSON DirectorySiteItemInpageTagFormats where
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

-- | Order of sorted results, default is ASCENDING.
data CreativesList'SortOrder
    = CAscending
      -- ^ @ASCENDING@
    | CDescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesList'SortOrder

instance FromText CreativesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just CAscending
        "DESCENDING" -> Just CDescending
        _ -> Nothing

instance ToText CreativesList'SortOrder where
    toText = \case
        CAscending -> "ASCENDING"
        CDescending -> "DESCENDING"

instance FromJSON CreativesList'SortOrder where
    parseJSON = parseJSONText "CreativesList'SortOrder"

instance ToJSON CreativesList'SortOrder where
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

instance FromJSON ReportDimensionCrossDimensionReachCriteria where
    parseJSON = parseJSONText "ReportDimensionCrossDimensionReachCriteria"

instance ToJSON ReportDimensionCrossDimensionReachCriteria where
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

-- | Order of sorted results, default is ASCENDING.
data CreativeGroupsList'SortOrder
    = CGLSOAscending
      -- ^ @ASCENDING@
    | CGLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeGroupsList'SortOrder

instance FromText CreativeGroupsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just CGLSOAscending
        "DESCENDING" -> Just CGLSODescending
        _ -> Nothing

instance ToText CreativeGroupsList'SortOrder where
    toText = \case
        CGLSOAscending -> "ASCENDING"
        CGLSODescending -> "DESCENDING"

instance FromJSON CreativeGroupsList'SortOrder where
    parseJSON = parseJSONText "CreativeGroupsList'SortOrder"

instance ToJSON CreativeGroupsList'SortOrder where
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

-- | Order of sorted results, default is ASCENDING.
data ContentCategoriesList'SortOrder
    = CCLSOAscending
      -- ^ @ASCENDING@
    | CCLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentCategoriesList'SortOrder

instance FromText ContentCategoriesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just CCLSOAscending
        "DESCENDING" -> Just CCLSODescending
        _ -> Nothing

instance ToText ContentCategoriesList'SortOrder where
    toText = \case
        CCLSOAscending -> "ASCENDING"
        CCLSODescending -> "DESCENDING"

instance FromJSON ContentCategoriesList'SortOrder where
    parseJSON = parseJSONText "ContentCategoriesList'SortOrder"

instance ToJSON ContentCategoriesList'SortOrder where
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

-- | Field by which to sort the list.
data FloodlightActivitiesList'SortField
    = FALSFID
      -- ^ @ID@
    | FALSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivitiesList'SortField

instance FromText FloodlightActivitiesList'SortField where
    fromText = \case
        "ID" -> Just FALSFID
        "NAME" -> Just FALSFName
        _ -> Nothing

instance ToText FloodlightActivitiesList'SortField where
    toText = \case
        FALSFID -> "ID"
        FALSFName -> "NAME"

instance FromJSON FloodlightActivitiesList'SortField where
    parseJSON = parseJSONText "FloodlightActivitiesList'SortField"

instance ToJSON FloodlightActivitiesList'SortField where
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

-- | Select only creatives with these creative types.
data CreativesList'Types
    = CLTBrandSafeDefaultInstreamVideo
      -- ^ @BRAND_SAFE_DEFAULT_INSTREAM_VIDEO@
    | CLTCustomInpage
      -- ^ @CUSTOM_INPAGE@
    | CLTCustomInterstitial
      -- ^ @CUSTOM_INTERSTITIAL@
    | CLTEnhancedBanner
      -- ^ @ENHANCED_BANNER@
    | CLTEnhancedImage
      -- ^ @ENHANCED_IMAGE@
    | CLTFlashInpage
      -- ^ @FLASH_INPAGE@
    | CLTHTML5Banner
      -- ^ @HTML5_BANNER@
    | CLTImage
      -- ^ @IMAGE@
    | CLTInstreamVideo
      -- ^ @INSTREAM_VIDEO@
    | CLTInternalRedirect
      -- ^ @INTERNAL_REDIRECT@
    | CLTInterstitialInternalRedirect
      -- ^ @INTERSTITIAL_INTERNAL_REDIRECT@
    | CLTRedirect
      -- ^ @REDIRECT@
    | CLTRichMediaExpanding
      -- ^ @RICH_MEDIA_EXPANDING@
    | CLTRichMediaImExpand
      -- ^ @RICH_MEDIA_IM_EXPAND@
    | CLTRichMediaInpage
      -- ^ @RICH_MEDIA_INPAGE@
    | CLTRichMediaInpageFloating
      -- ^ @RICH_MEDIA_INPAGE_FLOATING@
    | CLTRichMediaInterstitialFloat
      -- ^ @RICH_MEDIA_INTERSTITIAL_FLOAT@
    | CLTRichMediaMobileInApp
      -- ^ @RICH_MEDIA_MOBILE_IN_APP@
    | CLTRichMediaMultiFloating
      -- ^ @RICH_MEDIA_MULTI_FLOATING@
    | CLTRichMediaPeelDown
      -- ^ @RICH_MEDIA_PEEL_DOWN@
    | CLTTrackingText
      -- ^ @TRACKING_TEXT@
    | CLTVastRedirect
      -- ^ @VAST_REDIRECT@
    | CLTVpaidLinear
      -- ^ @VPAID_LINEAR@
    | CLTVpaidNonLinear
      -- ^ @VPAID_NON_LINEAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesList'Types

instance FromText CreativesList'Types where
    fromText = \case
        "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO" -> Just CLTBrandSafeDefaultInstreamVideo
        "CUSTOM_INPAGE" -> Just CLTCustomInpage
        "CUSTOM_INTERSTITIAL" -> Just CLTCustomInterstitial
        "ENHANCED_BANNER" -> Just CLTEnhancedBanner
        "ENHANCED_IMAGE" -> Just CLTEnhancedImage
        "FLASH_INPAGE" -> Just CLTFlashInpage
        "HTML5_BANNER" -> Just CLTHTML5Banner
        "IMAGE" -> Just CLTImage
        "INSTREAM_VIDEO" -> Just CLTInstreamVideo
        "INTERNAL_REDIRECT" -> Just CLTInternalRedirect
        "INTERSTITIAL_INTERNAL_REDIRECT" -> Just CLTInterstitialInternalRedirect
        "REDIRECT" -> Just CLTRedirect
        "RICH_MEDIA_EXPANDING" -> Just CLTRichMediaExpanding
        "RICH_MEDIA_IM_EXPAND" -> Just CLTRichMediaImExpand
        "RICH_MEDIA_INPAGE" -> Just CLTRichMediaInpage
        "RICH_MEDIA_INPAGE_FLOATING" -> Just CLTRichMediaInpageFloating
        "RICH_MEDIA_INTERSTITIAL_FLOAT" -> Just CLTRichMediaInterstitialFloat
        "RICH_MEDIA_MOBILE_IN_APP" -> Just CLTRichMediaMobileInApp
        "RICH_MEDIA_MULTI_FLOATING" -> Just CLTRichMediaMultiFloating
        "RICH_MEDIA_PEEL_DOWN" -> Just CLTRichMediaPeelDown
        "TRACKING_TEXT" -> Just CLTTrackingText
        "VAST_REDIRECT" -> Just CLTVastRedirect
        "VPAID_LINEAR" -> Just CLTVpaidLinear
        "VPAID_NON_LINEAR" -> Just CLTVpaidNonLinear
        _ -> Nothing

instance ToText CreativesList'Types where
    toText = \case
        CLTBrandSafeDefaultInstreamVideo -> "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
        CLTCustomInpage -> "CUSTOM_INPAGE"
        CLTCustomInterstitial -> "CUSTOM_INTERSTITIAL"
        CLTEnhancedBanner -> "ENHANCED_BANNER"
        CLTEnhancedImage -> "ENHANCED_IMAGE"
        CLTFlashInpage -> "FLASH_INPAGE"
        CLTHTML5Banner -> "HTML5_BANNER"
        CLTImage -> "IMAGE"
        CLTInstreamVideo -> "INSTREAM_VIDEO"
        CLTInternalRedirect -> "INTERNAL_REDIRECT"
        CLTInterstitialInternalRedirect -> "INTERSTITIAL_INTERNAL_REDIRECT"
        CLTRedirect -> "REDIRECT"
        CLTRichMediaExpanding -> "RICH_MEDIA_EXPANDING"
        CLTRichMediaImExpand -> "RICH_MEDIA_IM_EXPAND"
        CLTRichMediaInpage -> "RICH_MEDIA_INPAGE"
        CLTRichMediaInpageFloating -> "RICH_MEDIA_INPAGE_FLOATING"
        CLTRichMediaInterstitialFloat -> "RICH_MEDIA_INTERSTITIAL_FLOAT"
        CLTRichMediaMobileInApp -> "RICH_MEDIA_MOBILE_IN_APP"
        CLTRichMediaMultiFloating -> "RICH_MEDIA_MULTI_FLOATING"
        CLTRichMediaPeelDown -> "RICH_MEDIA_PEEL_DOWN"
        CLTTrackingText -> "TRACKING_TEXT"
        CLTVastRedirect -> "VAST_REDIRECT"
        CLTVpaidLinear -> "VPAID_LINEAR"
        CLTVpaidNonLinear -> "VPAID_NON_LINEAR"

instance FromJSON CreativesList'Types where
    parseJSON = parseJSONText "CreativesList'Types"

instance ToJSON CreativesList'Types where
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

-- | Order of sorted results, default is ASCENDING.
data CampaignCreativeAssociationsList'SortOrder
    = CCALSOAscending
      -- ^ @ASCENDING@
    | CCALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CampaignCreativeAssociationsList'SortOrder

instance FromText CampaignCreativeAssociationsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just CCALSOAscending
        "DESCENDING" -> Just CCALSODescending
        _ -> Nothing

instance ToText CampaignCreativeAssociationsList'SortOrder where
    toText = \case
        CCALSOAscending -> "ASCENDING"
        CCALSODescending -> "DESCENDING"

instance FromJSON CampaignCreativeAssociationsList'SortOrder where
    parseJSON = parseJSONText "CampaignCreativeAssociationsList'SortOrder"

instance ToJSON CampaignCreativeAssociationsList'SortOrder where
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
data UserRolesList'SortField
    = URLSFID
      -- ^ @ID@
    | URLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UserRolesList'SortField

instance FromText UserRolesList'SortField where
    fromText = \case
        "ID" -> Just URLSFID
        "NAME" -> Just URLSFName
        _ -> Nothing

instance ToText UserRolesList'SortField where
    toText = \case
        URLSFID -> "ID"
        URLSFName -> "NAME"

instance FromJSON UserRolesList'SortField where
    parseJSON = parseJSONText "UserRolesList'SortField"

instance ToJSON UserRolesList'SortField where
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

-- | Field by which to sort the list.
data AdvertisersList'SortField
    = ADVID
      -- ^ @ID@
    | ADVName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdvertisersList'SortField

instance FromText AdvertisersList'SortField where
    fromText = \case
        "ID" -> Just ADVID
        "NAME" -> Just ADVName
        _ -> Nothing

instance ToText AdvertisersList'SortField where
    toText = \case
        ADVID -> "ID"
        ADVName -> "NAME"

instance FromJSON AdvertisersList'SortField where
    parseJSON = parseJSONText "AdvertisersList'SortField"

instance ToJSON AdvertisersList'SortField where
    toJSON = toJSONText

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

instance FromJSON ReportEmailOwnerDeliveryTypeDelivery where
    parseJSON = parseJSONText "ReportEmailOwnerDeliveryTypeDelivery"

instance ToJSON ReportEmailOwnerDeliveryTypeDelivery where
    toJSON = toJSONText

-- | Field by which to sort the list.
data ProjectsList'SortField
    = PID
      -- ^ @ID@
    | PName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProjectsList'SortField

instance FromText ProjectsList'SortField where
    fromText = \case
        "ID" -> Just PID
        "NAME" -> Just PName
        _ -> Nothing

instance ToText ProjectsList'SortField where
    toText = \case
        PID -> "ID"
        PName -> "NAME"

instance FromJSON ProjectsList'SortField where
    parseJSON = parseJSONText "ProjectsList'SortField"

instance ToJSON ProjectsList'SortField where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data AccountsList'SortOrder
    = AAscending
      -- ^ @ASCENDING@
    | ADescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccountsList'SortOrder

instance FromText AccountsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just AAscending
        "DESCENDING" -> Just ADescending
        _ -> Nothing

instance ToText AccountsList'SortOrder where
    toText = \case
        AAscending -> "ASCENDING"
        ADescending -> "DESCENDING"

instance FromJSON AccountsList'SortOrder where
    parseJSON = parseJSONText "AccountsList'SortOrder"

instance ToJSON AccountsList'SortOrder where
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

-- | Order of sorted results, default is ASCENDING.
data RemarketingListsList'SortOrder
    = RLLSOAscending
      -- ^ @ASCENDING@
    | RLLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RemarketingListsList'SortOrder

instance FromText RemarketingListsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just RLLSOAscending
        "DESCENDING" -> Just RLLSODescending
        _ -> Nothing

instance ToText RemarketingListsList'SortOrder where
    toText = \case
        RLLSOAscending -> "ASCENDING"
        RLLSODescending -> "DESCENDING"

instance FromJSON RemarketingListsList'SortOrder where
    parseJSON = parseJSONText "RemarketingListsList'SortOrder"

instance ToJSON RemarketingListsList'SortOrder where
    toJSON = toJSONText

-- | Select only placement groups with these pricing types.
data PlacementGroupsList'PricingTypes
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

instance Hashable PlacementGroupsList'PricingTypes

instance FromText PlacementGroupsList'PricingTypes where
    fromText = \case
        "PRICING_TYPE_CPA" -> Just PGLPTPricingTypeCpa
        "PRICING_TYPE_CPC" -> Just PGLPTPricingTypeCpc
        "PRICING_TYPE_CPM" -> Just PGLPTPricingTypeCpm
        "PRICING_TYPE_FLAT_RATE_CLICKS" -> Just PGLPTPricingTypeFlatRateClicks
        "PRICING_TYPE_FLAT_RATE_IMPRESSIONS" -> Just PGLPTPricingTypeFlatRateImpressions
        _ -> Nothing

instance ToText PlacementGroupsList'PricingTypes where
    toText = \case
        PGLPTPricingTypeCpa -> "PRICING_TYPE_CPA"
        PGLPTPricingTypeCpc -> "PRICING_TYPE_CPC"
        PGLPTPricingTypeCpm -> "PRICING_TYPE_CPM"
        PGLPTPricingTypeFlatRateClicks -> "PRICING_TYPE_FLAT_RATE_CLICKS"
        PGLPTPricingTypeFlatRateImpressions -> "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"

instance FromJSON PlacementGroupsList'PricingTypes where
    parseJSON = parseJSONText "PlacementGroupsList'PricingTypes"

instance ToJSON PlacementGroupsList'PricingTypes where
    toJSON = toJSONText

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

instance FromJSON AccountAccountProfile where
    parseJSON = parseJSONText "AccountAccountProfile"

instance ToJSON AccountAccountProfile where
    toJSON = toJSONText

-- | Field by which to sort the list.
data PlacementGroupsList'SortField
    = PGLSFID
      -- ^ @ID@
    | PGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlacementGroupsList'SortField

instance FromText PlacementGroupsList'SortField where
    fromText = \case
        "ID" -> Just PGLSFID
        "NAME" -> Just PGLSFName
        _ -> Nothing

instance ToText PlacementGroupsList'SortField where
    toText = \case
        PGLSFID -> "ID"
        PGLSFName -> "NAME"

instance FromJSON PlacementGroupsList'SortField where
    parseJSON = parseJSONText "PlacementGroupsList'SortField"

instance ToJSON PlacementGroupsList'SortField where
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

-- | Field by which to sort the list.
data EventTagsList'SortField
    = ETLSFID
      -- ^ @ID@
    | ETLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventTagsList'SortField

instance FromText EventTagsList'SortField where
    fromText = \case
        "ID" -> Just ETLSFID
        "NAME" -> Just ETLSFName
        _ -> Nothing

instance ToText EventTagsList'SortField where
    toText = \case
        ETLSFID -> "ID"
        ETLSFName -> "NAME"

instance FromJSON EventTagsList'SortField where
    parseJSON = parseJSONText "EventTagsList'SortField"

instance ToJSON EventTagsList'SortField where
    toJSON = toJSONText

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

instance FromJSON ReportItemRepeatsOnWeekDaysSchedule where
    parseJSON = parseJSONText "ReportItemRepeatsOnWeekDaysSchedule"

instance ToJSON ReportItemRepeatsOnWeekDaysSchedule where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data DirectorySiteContactsList'SortOrder
    = DSCLSOAscending
      -- ^ @ASCENDING@
    | DSCLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectorySiteContactsList'SortOrder

instance FromText DirectorySiteContactsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just DSCLSOAscending
        "DESCENDING" -> Just DSCLSODescending
        _ -> Nothing

instance ToText DirectorySiteContactsList'SortOrder where
    toText = \case
        DSCLSOAscending -> "ASCENDING"
        DSCLSODescending -> "DESCENDING"

instance FromJSON DirectorySiteContactsList'SortOrder where
    parseJSON = parseJSONText "DirectorySiteContactsList'SortOrder"

instance ToJSON DirectorySiteContactsList'SortOrder where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data CreativeFieldValuesList'SortOrder
    = CFVLSOAscending
      -- ^ @ASCENDING@
    | CFVLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeFieldValuesList'SortOrder

instance FromText CreativeFieldValuesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just CFVLSOAscending
        "DESCENDING" -> Just CFVLSODescending
        _ -> Nothing

instance ToText CreativeFieldValuesList'SortOrder where
    toText = \case
        CFVLSOAscending -> "ASCENDING"
        CFVLSODescending -> "DESCENDING"

instance FromJSON CreativeFieldValuesList'SortOrder where
    parseJSON = parseJSONText "CreativeFieldValuesList'SortOrder"

instance ToJSON CreativeFieldValuesList'SortOrder where
    toJSON = toJSONText

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

instance FromJSON UserDefinedVariableConfigurationVariableType where
    parseJSON = parseJSONText "UserDefinedVariableConfigurationVariableType"

instance ToJSON UserDefinedVariableConfigurationVariableType where
    toJSON = toJSONText

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

instance FromJSON CreativeItemBackupImageFeatures where
    parseJSON = parseJSONText "CreativeItemBackupImageFeatures"

instance ToJSON CreativeItemBackupImageFeatures where
    toJSON = toJSONText

-- | The field by which to sort the list.
data FilesList'SortField
    = FLSFID
      -- ^ @ID@
      -- Sort by file ID.
    | FLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastmodifiedAt\' field.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilesList'SortField

instance FromText FilesList'SortField where
    fromText = \case
        "ID" -> Just FLSFID
        "LAST_MODIFIED_TIME" -> Just FLSFLastModifiedTime
        _ -> Nothing

instance ToText FilesList'SortField where
    toText = \case
        FLSFID -> "ID"
        FLSFLastModifiedTime -> "LAST_MODIFIED_TIME"

instance FromJSON FilesList'SortField where
    parseJSON = parseJSONText "FilesList'SortField"

instance ToJSON FilesList'SortField where
    toJSON = toJSONText

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

instance FromJSON CreativeItemCompatibility where
    parseJSON = parseJSONText "CreativeItemCompatibility"

instance ToJSON CreativeItemCompatibility where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data TargetableRemarketingListsList'SortOrder
    = TRLLSOAscending
      -- ^ @ASCENDING@
    | TRLLSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetableRemarketingListsList'SortOrder

instance FromText TargetableRemarketingListsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just TRLLSOAscending
        "DESCENDING" -> Just TRLLSODescending
        _ -> Nothing

instance ToText TargetableRemarketingListsList'SortOrder where
    toText = \case
        TRLLSOAscending -> "ASCENDING"
        TRLLSODescending -> "DESCENDING"

instance FromJSON TargetableRemarketingListsList'SortOrder where
    parseJSON = parseJSONText "TargetableRemarketingListsList'SortOrder"

instance ToJSON TargetableRemarketingListsList'SortOrder where
    toJSON = toJSONText

-- | Field by which to sort the list.
data SitesList'SortField
    = SID
      -- ^ @ID@
    | SName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SitesList'SortField

instance FromText SitesList'SortField where
    fromText = \case
        "ID" -> Just SID
        "NAME" -> Just SName
        _ -> Nothing

instance ToText SitesList'SortField where
    toText = \case
        SID -> "ID"
        SName -> "NAME"

instance FromJSON SitesList'SortField where
    parseJSON = parseJSONText "SitesList'SortField"

instance ToJSON SitesList'SortField where
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

-- | Tag formats to generate for these placements.
data PlacementsGeneratetags'TagFormats
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

instance Hashable PlacementsGeneratetags'TagFormats

instance FromText PlacementsGeneratetags'TagFormats where
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

instance ToText PlacementsGeneratetags'TagFormats where
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

instance FromJSON PlacementsGeneratetags'TagFormats where
    parseJSON = parseJSONText "PlacementsGeneratetags'TagFormats"

instance ToJSON PlacementsGeneratetags'TagFormats where
    toJSON = toJSONText

-- | Order of sorted results, default is ASCENDING.
data InventoryItemsList'SortOrder
    = IILSOAscending
      -- ^ @ASCENDING@
    | IILSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InventoryItemsList'SortOrder

instance FromText InventoryItemsList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just IILSOAscending
        "DESCENDING" -> Just IILSODescending
        _ -> Nothing

instance ToText InventoryItemsList'SortOrder where
    toText = \case
        IILSOAscending -> "ASCENDING"
        IILSODescending -> "DESCENDING"

instance FromJSON InventoryItemsList'SortOrder where
    parseJSON = parseJSONText "InventoryItemsList'SortOrder"

instance ToJSON InventoryItemsList'SortOrder where
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

instance FromJSON FileFormat where
    parseJSON = parseJSONText "FileFormat"

instance ToJSON FileFormat where
    toJSON = toJSONText

-- | The field by which to sort the list.
data ReportsFilesList'SortField
    = RFLSFID
      -- ^ @ID@
      -- Sort by file ID.
    | RFLSFLastModifiedTime
      -- ^ @LAST_MODIFIED_TIME@
      -- Sort by \'lastmodifiedAt\' field.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportsFilesList'SortField

instance FromText ReportsFilesList'SortField where
    fromText = \case
        "ID" -> Just RFLSFID
        "LAST_MODIFIED_TIME" -> Just RFLSFLastModifiedTime
        _ -> Nothing

instance ToText ReportsFilesList'SortField where
    toText = \case
        RFLSFID -> "ID"
        RFLSFLastModifiedTime -> "LAST_MODIFIED_TIME"

instance FromJSON ReportsFilesList'SortField where
    parseJSON = parseJSONText "ReportsFilesList'SortField"

instance ToJSON ReportsFilesList'SortField where
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

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. WEB and WEB_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
data AdsList'Compatibility
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

instance Hashable AdsList'Compatibility

instance FromText AdsList'Compatibility where
    fromText = \case
        "APP" -> Just ALCApp
        "APP_INTERSTITIAL" -> Just ALCAppInterstitial
        "IN_STREAM_VIDEO" -> Just ALCInStreamVideo
        "WEB" -> Just ALCWeb
        "WEB_INTERSTITIAL" -> Just ALCWebInterstitial
        _ -> Nothing

instance ToText AdsList'Compatibility where
    toText = \case
        ALCApp -> "APP"
        ALCAppInterstitial -> "APP_INTERSTITIAL"
        ALCInStreamVideo -> "IN_STREAM_VIDEO"
        ALCWeb -> "WEB"
        ALCWebInterstitial -> "WEB_INTERSTITIAL"

instance FromJSON AdsList'Compatibility where
    parseJSON = parseJSONText "AdsList'Compatibility"

instance ToJSON AdsList'Compatibility where
    toJSON = toJSONText

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

instance FromJSON PricingSchedulePricingType where
    parseJSON = parseJSONText "PricingSchedulePricingType"

instance ToJSON PricingSchedulePricingType where
    toJSON = toJSONText

-- | Field by which to sort the list.
data CreativeGroupsList'SortField
    = CGLSFID
      -- ^ @ID@
    | CGLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativeGroupsList'SortField

instance FromText CreativeGroupsList'SortField where
    fromText = \case
        "ID" -> Just CGLSFID
        "NAME" -> Just CGLSFName
        _ -> Nothing

instance ToText CreativeGroupsList'SortField where
    toText = \case
        CGLSFID -> "ID"
        CGLSFName -> "NAME"

instance FromJSON CreativeGroupsList'SortField where
    parseJSON = parseJSONText "CreativeGroupsList'SortField"

instance ToJSON CreativeGroupsList'SortField where
    toJSON = toJSONText

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

instance FromJSON CreativeCustomEventArtworkType where
    parseJSON = parseJSONText "CreativeCustomEventArtworkType"

instance ToJSON CreativeCustomEventArtworkType where
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

-- | Order of sorted results, default is ASCENDING.
data FloodlightActivitiesList'SortOrder
    = FALSOAscending
      -- ^ @ASCENDING@
    | FALSODescending
      -- ^ @DESCENDING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FloodlightActivitiesList'SortOrder

instance FromText FloodlightActivitiesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just FALSOAscending
        "DESCENDING" -> Just FALSODescending
        _ -> Nothing

instance ToText FloodlightActivitiesList'SortOrder where
    toText = \case
        FALSOAscending -> "ASCENDING"
        FALSODescending -> "DESCENDING"

instance FromJSON FloodlightActivitiesList'SortOrder where
    parseJSON = parseJSONText "FloodlightActivitiesList'SortOrder"

instance ToJSON FloodlightActivitiesList'SortOrder where
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

-- | Field by which to sort the list.
data ContentCategoriesList'SortField
    = CCLSFID
      -- ^ @ID@
    | CCLSFName
      -- ^ @NAME@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentCategoriesList'SortField

instance FromText ContentCategoriesList'SortField where
    fromText = \case
        "ID" -> Just CCLSFID
        "NAME" -> Just CCLSFName
        _ -> Nothing

instance ToText ContentCategoriesList'SortField where
    toText = \case
        CCLSFID -> "ID"
        CCLSFName -> "NAME"

instance FromJSON ContentCategoriesList'SortField where
    parseJSON = parseJSONText "ContentCategoriesList'SortField"

instance ToJSON ContentCategoriesList'SortField where
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

-- | The scope that defines which results are returned, default is \'MINE\'.
data FilesList'Scope
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

instance Hashable FilesList'Scope

instance FromText FilesList'Scope where
    fromText = \case
        "ALL" -> Just FLSAll
        "MINE" -> Just FLSMine
        "SHARED_WITH_ME" -> Just FLSSharedWithMe
        _ -> Nothing

instance ToText FilesList'Scope where
    toText = \case
        FLSAll -> "ALL"
        FLSMine -> "MINE"
        FLSSharedWithMe -> "SHARED_WITH_ME"

instance FromJSON FilesList'Scope where
    parseJSON = parseJSONText "FilesList'Scope"

instance ToJSON FilesList'Scope where
    toJSON = toJSONText
