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
-- Module      : Gogol.DFAReporting.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DFAReporting.Types
  ( -- * Configuration
    dFAReportingService,

    -- * OAuth Scopes
    Ddmconversions'FullControl,
    Dfareporting'FullControl,
    Dfatrafficking'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Account
    Account (..),
    newAccount,

    -- ** Account_AccountProfile
    Account_AccountProfile (..),

    -- ** Account_ActiveAdsLimitTier
    Account_ActiveAdsLimitTier (..),

    -- ** AccountActiveAdSummary
    AccountActiveAdSummary (..),
    newAccountActiveAdSummary,

    -- ** AccountActiveAdSummary_ActiveAdsLimitTier
    AccountActiveAdSummary_ActiveAdsLimitTier (..),

    -- ** AccountPermission
    AccountPermission (..),
    newAccountPermission,

    -- ** AccountPermission_AccountProfilesItem
    AccountPermission_AccountProfilesItem (..),

    -- ** AccountPermission_Level
    AccountPermission_Level (..),

    -- ** AccountPermissionGroup
    AccountPermissionGroup (..),
    newAccountPermissionGroup,

    -- ** AccountPermissionGroupsListResponse
    AccountPermissionGroupsListResponse (..),
    newAccountPermissionGroupsListResponse,

    -- ** AccountPermissionsListResponse
    AccountPermissionsListResponse (..),
    newAccountPermissionsListResponse,

    -- ** AccountUserProfile
    AccountUserProfile (..),
    newAccountUserProfile,

    -- ** AccountUserProfile_TraffickerType
    AccountUserProfile_TraffickerType (..),

    -- ** AccountUserProfile_UserAccessType
    AccountUserProfile_UserAccessType (..),

    -- ** AccountUserProfilesListResponse
    AccountUserProfilesListResponse (..),
    newAccountUserProfilesListResponse,

    -- ** AccountsListResponse
    AccountsListResponse (..),
    newAccountsListResponse,

    -- ** Activities
    Activities (..),
    newActivities,

    -- ** Ad
    Ad (..),
    newAd,

    -- ** Ad_Compatibility
    Ad_Compatibility (..),

    -- ** Ad_Type
    Ad_Type (..),

    -- ** AdBlockingConfiguration
    AdBlockingConfiguration (..),
    newAdBlockingConfiguration,

    -- ** AdSlot
    AdSlot (..),
    newAdSlot,

    -- ** AdSlot_Compatibility
    AdSlot_Compatibility (..),

    -- ** AdSlot_PaymentSourceType
    AdSlot_PaymentSourceType (..),

    -- ** AdsListResponse
    AdsListResponse (..),
    newAdsListResponse,

    -- ** Advertiser
    Advertiser (..),
    newAdvertiser,

    -- ** Advertiser_Status
    Advertiser_Status (..),

    -- ** AdvertiserGroup
    AdvertiserGroup (..),
    newAdvertiserGroup,

    -- ** AdvertiserGroupsListResponse
    AdvertiserGroupsListResponse (..),
    newAdvertiserGroupsListResponse,

    -- ** AdvertiserInvoicesListResponse
    AdvertiserInvoicesListResponse (..),
    newAdvertiserInvoicesListResponse,

    -- ** AdvertiserLandingPagesListResponse
    AdvertiserLandingPagesListResponse (..),
    newAdvertiserLandingPagesListResponse,

    -- ** AdvertisersListResponse
    AdvertisersListResponse (..),
    newAdvertisersListResponse,

    -- ** AudienceSegment
    AudienceSegment (..),
    newAudienceSegment,

    -- ** AudienceSegmentGroup
    AudienceSegmentGroup (..),
    newAudienceSegmentGroup,

    -- ** BillingAssignment
    BillingAssignment (..),
    newBillingAssignment,

    -- ** BillingAssignmentsListResponse
    BillingAssignmentsListResponse (..),
    newBillingAssignmentsListResponse,

    -- ** BillingProfile
    BillingProfile (..),
    newBillingProfile,

    -- ** BillingProfile_InvoiceLevel
    BillingProfile_InvoiceLevel (..),

    -- ** BillingProfile_Status
    BillingProfile_Status (..),

    -- ** BillingProfilesListResponse
    BillingProfilesListResponse (..),
    newBillingProfilesListResponse,

    -- ** BillingRate
    BillingRate (..),
    newBillingRate,

    -- ** BillingRate_Type
    BillingRate_Type (..),

    -- ** BillingRate_UnitOfMeasure
    BillingRate_UnitOfMeasure (..),

    -- ** BillingRateTieredRate
    BillingRateTieredRate (..),
    newBillingRateTieredRate,

    -- ** BillingRatesListResponse
    BillingRatesListResponse (..),
    newBillingRatesListResponse,

    -- ** Browser
    Browser (..),
    newBrowser,

    -- ** BrowsersListResponse
    BrowsersListResponse (..),
    newBrowsersListResponse,

    -- ** Campaign
    Campaign (..),
    newCampaign,

    -- ** CampaignCreativeAssociation
    CampaignCreativeAssociation (..),
    newCampaignCreativeAssociation,

    -- ** CampaignCreativeAssociationsListResponse
    CampaignCreativeAssociationsListResponse (..),
    newCampaignCreativeAssociationsListResponse,

    -- ** CampaignSummary
    CampaignSummary (..),
    newCampaignSummary,

    -- ** CampaignsListResponse
    CampaignsListResponse (..),
    newCampaignsListResponse,

    -- ** ChangeLog
    ChangeLog (..),
    newChangeLog,

    -- ** ChangeLogsListResponse
    ChangeLogsListResponse (..),
    newChangeLogsListResponse,

    -- ** ChannelGrouping
    ChannelGrouping (..),
    newChannelGrouping,

    -- ** ChannelGroupingRule
    ChannelGroupingRule (..),
    newChannelGroupingRule,

    -- ** CitiesListResponse
    CitiesListResponse (..),
    newCitiesListResponse,

    -- ** City
    City (..),
    newCity,

    -- ** ClickTag
    ClickTag (..),
    newClickTag,

    -- ** ClickThroughUrl
    ClickThroughUrl (..),
    newClickThroughUrl,

    -- ** ClickThroughUrlSuffixProperties
    ClickThroughUrlSuffixProperties (..),
    newClickThroughUrlSuffixProperties,

    -- ** CompanionClickThroughOverride
    CompanionClickThroughOverride (..),
    newCompanionClickThroughOverride,

    -- ** CompanionSetting
    CompanionSetting (..),
    newCompanionSetting,

    -- ** CompatibleFields
    CompatibleFields (..),
    newCompatibleFields,

    -- ** ConnectionType
    ConnectionType (..),
    newConnectionType,

    -- ** ConnectionTypesListResponse
    ConnectionTypesListResponse (..),
    newConnectionTypesListResponse,

    -- ** ContentCategoriesListResponse
    ContentCategoriesListResponse (..),
    newContentCategoriesListResponse,

    -- ** ContentCategory
    ContentCategory (..),
    newContentCategory,

    -- ** Conversion
    Conversion (..),
    newConversion,

    -- ** ConversionError
    ConversionError (..),
    newConversionError,

    -- ** ConversionError_Code
    ConversionError_Code (..),

    -- ** ConversionStatus
    ConversionStatus (..),
    newConversionStatus,

    -- ** ConversionsBatchInsertRequest
    ConversionsBatchInsertRequest (..),
    newConversionsBatchInsertRequest,

    -- ** ConversionsBatchInsertResponse
    ConversionsBatchInsertResponse (..),
    newConversionsBatchInsertResponse,

    -- ** ConversionsBatchUpdateRequest
    ConversionsBatchUpdateRequest (..),
    newConversionsBatchUpdateRequest,

    -- ** ConversionsBatchUpdateResponse
    ConversionsBatchUpdateResponse (..),
    newConversionsBatchUpdateResponse,

    -- ** CountriesListResponse
    CountriesListResponse (..),
    newCountriesListResponse,

    -- ** Country
    Country (..),
    newCountry,

    -- ** Creative
    Creative (..),
    newCreative,

    -- ** Creative_ArtworkType
    Creative_ArtworkType (..),

    -- ** Creative_AuthoringSource
    Creative_AuthoringSource (..),

    -- ** Creative_AuthoringTool
    Creative_AuthoringTool (..),

    -- ** Creative_BackupImageFeaturesItem
    Creative_BackupImageFeaturesItem (..),

    -- ** Creative_CompatibilityItem
    Creative_CompatibilityItem (..),

    -- ** Creative_Type
    Creative_Type (..),

    -- ** CreativeAsset
    CreativeAsset (..),
    newCreativeAsset,

    -- ** CreativeAsset_Alignment
    CreativeAsset_Alignment (..),

    -- ** CreativeAsset_ArtworkType
    CreativeAsset_ArtworkType (..),

    -- ** CreativeAsset_ChildAssetType
    CreativeAsset_ChildAssetType (..),

    -- ** CreativeAsset_DetectedFeaturesItem
    CreativeAsset_DetectedFeaturesItem (..),

    -- ** CreativeAsset_DisplayType
    CreativeAsset_DisplayType (..),

    -- ** CreativeAsset_DurationType
    CreativeAsset_DurationType (..),

    -- ** CreativeAsset_Orientation
    CreativeAsset_Orientation (..),

    -- ** CreativeAsset_PositionLeftUnit
    CreativeAsset_PositionLeftUnit (..),

    -- ** CreativeAsset_PositionTopUnit
    CreativeAsset_PositionTopUnit (..),

    -- ** CreativeAsset_Role
    CreativeAsset_Role (..),

    -- ** CreativeAsset_StartTimeType
    CreativeAsset_StartTimeType (..),

    -- ** CreativeAsset_WindowMode
    CreativeAsset_WindowMode (..),

    -- ** CreativeAssetId
    CreativeAssetId (..),
    newCreativeAssetId,

    -- ** CreativeAssetId_Type
    CreativeAssetId_Type (..),

    -- ** CreativeAssetMetadata
    CreativeAssetMetadata (..),
    newCreativeAssetMetadata,

    -- ** CreativeAssetMetadata_DetectedFeaturesItem
    CreativeAssetMetadata_DetectedFeaturesItem (..),

    -- ** CreativeAssetMetadata_WarnedValidationRulesItem
    CreativeAssetMetadata_WarnedValidationRulesItem (..),

    -- ** CreativeAssetSelection
    CreativeAssetSelection (..),
    newCreativeAssetSelection,

    -- ** CreativeAssignment
    CreativeAssignment (..),
    newCreativeAssignment,

    -- ** CreativeClickThroughUrl
    CreativeClickThroughUrl (..),
    newCreativeClickThroughUrl,

    -- ** CreativeCustomEvent
    CreativeCustomEvent (..),
    newCreativeCustomEvent,

    -- ** CreativeCustomEvent_AdvertiserCustomEventType
    CreativeCustomEvent_AdvertiserCustomEventType (..),

    -- ** CreativeCustomEvent_ArtworkType
    CreativeCustomEvent_ArtworkType (..),

    -- ** CreativeCustomEvent_TargetType
    CreativeCustomEvent_TargetType (..),

    -- ** CreativeField
    CreativeField (..),
    newCreativeField,

    -- ** CreativeFieldAssignment
    CreativeFieldAssignment (..),
    newCreativeFieldAssignment,

    -- ** CreativeFieldValue
    CreativeFieldValue (..),
    newCreativeFieldValue,

    -- ** CreativeFieldValuesListResponse
    CreativeFieldValuesListResponse (..),
    newCreativeFieldValuesListResponse,

    -- ** CreativeFieldsListResponse
    CreativeFieldsListResponse (..),
    newCreativeFieldsListResponse,

    -- ** CreativeGroup
    CreativeGroup (..),
    newCreativeGroup,

    -- ** CreativeGroupAssignment
    CreativeGroupAssignment (..),
    newCreativeGroupAssignment,

    -- ** CreativeGroupAssignment_CreativeGroupNumber
    CreativeGroupAssignment_CreativeGroupNumber (..),

    -- ** CreativeGroupsListResponse
    CreativeGroupsListResponse (..),
    newCreativeGroupsListResponse,

    -- ** CreativeOptimizationConfiguration
    CreativeOptimizationConfiguration (..),
    newCreativeOptimizationConfiguration,

    -- ** CreativeOptimizationConfiguration_OptimizationModel
    CreativeOptimizationConfiguration_OptimizationModel (..),

    -- ** CreativeRotation
    CreativeRotation (..),
    newCreativeRotation,

    -- ** CreativeRotation_Type
    CreativeRotation_Type (..),

    -- ** CreativeRotation_WeightCalculationStrategy
    CreativeRotation_WeightCalculationStrategy (..),

    -- ** CreativesListResponse
    CreativesListResponse (..),
    newCreativesListResponse,

    -- ** CrossDimensionReachReportCompatibleFields
    CrossDimensionReachReportCompatibleFields (..),
    newCrossDimensionReachReportCompatibleFields,

    -- ** CustomFloodlightVariable
    CustomFloodlightVariable (..),
    newCustomFloodlightVariable,

    -- ** CustomFloodlightVariable_Type
    CustomFloodlightVariable_Type (..),

    -- ** CustomRichMediaEvents
    CustomRichMediaEvents (..),
    newCustomRichMediaEvents,

    -- ** CustomViewabilityMetric
    CustomViewabilityMetric (..),
    newCustomViewabilityMetric,

    -- ** CustomViewabilityMetricConfiguration
    CustomViewabilityMetricConfiguration (..),
    newCustomViewabilityMetricConfiguration,

    -- ** DateRange
    DateRange (..),
    newDateRange,

    -- ** DateRange_RelativeDateRange
    DateRange_RelativeDateRange (..),

    -- ** DayPartTargeting
    DayPartTargeting (..),
    newDayPartTargeting,

    -- ** DayPartTargeting_DaysOfWeekItem
    DayPartTargeting_DaysOfWeekItem (..),

    -- ** DeepLink
    DeepLink (..),
    newDeepLink,

    -- ** DefaultClickThroughEventTagProperties
    DefaultClickThroughEventTagProperties (..),
    newDefaultClickThroughEventTagProperties,

    -- ** DeliverySchedule
    DeliverySchedule (..),
    newDeliverySchedule,

    -- ** DeliverySchedule_Priority
    DeliverySchedule_Priority (..),

    -- ** DfpSettings
    DfpSettings (..),
    newDfpSettings,

    -- ** Dimension
    Dimension (..),
    newDimension,

    -- ** DimensionFilter
    DimensionFilter (..),
    newDimensionFilter,

    -- ** DimensionValue
    DimensionValue (..),
    newDimensionValue,

    -- ** DimensionValue_MatchType
    DimensionValue_MatchType (..),

    -- ** DimensionValueList
    DimensionValueList (..),
    newDimensionValueList,

    -- ** DimensionValueRequest
    DimensionValueRequest (..),
    newDimensionValueRequest,

    -- ** DirectorySite
    DirectorySite (..),
    newDirectorySite,

    -- ** DirectorySite_InpageTagFormatsItem
    DirectorySite_InpageTagFormatsItem (..),

    -- ** DirectorySite_InterstitialTagFormatsItem
    DirectorySite_InterstitialTagFormatsItem (..),

    -- ** DirectorySiteSettings
    DirectorySiteSettings (..),
    newDirectorySiteSettings,

    -- ** DirectorySitesListResponse
    DirectorySitesListResponse (..),
    newDirectorySitesListResponse,

    -- ** DisjunctiveMatchStatement
    DisjunctiveMatchStatement (..),
    newDisjunctiveMatchStatement,

    -- ** DynamicTargetingKey
    DynamicTargetingKey (..),
    newDynamicTargetingKey,

    -- ** DynamicTargetingKey_ObjectType
    DynamicTargetingKey_ObjectType (..),

    -- ** DynamicTargetingKeysListResponse
    DynamicTargetingKeysListResponse (..),
    newDynamicTargetingKeysListResponse,

    -- ** EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- ** EncryptionInfo_EncryptionEntityType
    EncryptionInfo_EncryptionEntityType (..),

    -- ** EncryptionInfo_EncryptionSource
    EncryptionInfo_EncryptionSource (..),

    -- ** EventFilter
    EventFilter (..),
    newEventFilter,

    -- ** EventTag
    EventTag (..),
    newEventTag,

    -- ** EventTag_SiteFilterType
    EventTag_SiteFilterType (..),

    -- ** EventTag_Status
    EventTag_Status (..),

    -- ** EventTag_Type
    EventTag_Type (..),

    -- ** EventTagOverride
    EventTagOverride (..),
    newEventTagOverride,

    -- ** EventTagsListResponse
    EventTagsListResponse (..),
    newEventTagsListResponse,

    -- ** File
    File (..),
    newFile,

    -- ** File_Format
    File_Format (..),

    -- ** File_Status
    File_Status (..),

    -- ** File_Urls
    File_Urls (..),
    newFile_Urls,

    -- ** FileList
    FileList (..),
    newFileList,

    -- ** Flight
    Flight (..),
    newFlight,

    -- ** FloodlightActivitiesGenerateTagResponse
    FloodlightActivitiesGenerateTagResponse (..),
    newFloodlightActivitiesGenerateTagResponse,

    -- ** FloodlightActivitiesListResponse
    FloodlightActivitiesListResponse (..),
    newFloodlightActivitiesListResponse,

    -- ** FloodlightActivity
    FloodlightActivity (..),
    newFloodlightActivity,

    -- ** FloodlightActivity_CacheBustingType
    FloodlightActivity_CacheBustingType (..),

    -- ** FloodlightActivity_CountingMethod
    FloodlightActivity_CountingMethod (..),

    -- ** FloodlightActivity_FloodlightActivityGroupType
    FloodlightActivity_FloodlightActivityGroupType (..),

    -- ** FloodlightActivity_FloodlightTagType
    FloodlightActivity_FloodlightTagType (..),

    -- ** FloodlightActivity_Status
    FloodlightActivity_Status (..),

    -- ** FloodlightActivity_TagFormat
    FloodlightActivity_TagFormat (..),

    -- ** FloodlightActivity_UserDefinedVariableTypesItem
    FloodlightActivity_UserDefinedVariableTypesItem (..),

    -- ** FloodlightActivityDynamicTag
    FloodlightActivityDynamicTag (..),
    newFloodlightActivityDynamicTag,

    -- ** FloodlightActivityGroup
    FloodlightActivityGroup (..),
    newFloodlightActivityGroup,

    -- ** FloodlightActivityGroup_Type
    FloodlightActivityGroup_Type (..),

    -- ** FloodlightActivityGroupsListResponse
    FloodlightActivityGroupsListResponse (..),
    newFloodlightActivityGroupsListResponse,

    -- ** FloodlightActivityPublisherDynamicTag
    FloodlightActivityPublisherDynamicTag (..),
    newFloodlightActivityPublisherDynamicTag,

    -- ** FloodlightConfiguration
    FloodlightConfiguration (..),
    newFloodlightConfiguration,

    -- ** FloodlightConfiguration_FirstDayOfWeek
    FloodlightConfiguration_FirstDayOfWeek (..),

    -- ** FloodlightConfiguration_NaturalSearchConversionAttributionOption
    FloodlightConfiguration_NaturalSearchConversionAttributionOption (..),

    -- ** FloodlightConfigurationsListResponse
    FloodlightConfigurationsListResponse (..),
    newFloodlightConfigurationsListResponse,

    -- ** FloodlightReportCompatibleFields
    FloodlightReportCompatibleFields (..),
    newFloodlightReportCompatibleFields,

    -- ** FrequencyCap
    FrequencyCap (..),
    newFrequencyCap,

    -- ** FsCommand
    FsCommand (..),
    newFsCommand,

    -- ** FsCommand_PositionOption
    FsCommand_PositionOption (..),

    -- ** GeoTargeting
    GeoTargeting (..),
    newGeoTargeting,

    -- ** InventoryItem
    InventoryItem (..),
    newInventoryItem,

    -- ** InventoryItem_Type
    InventoryItem_Type (..),

    -- ** InventoryItemsListResponse
    InventoryItemsListResponse (..),
    newInventoryItemsListResponse,

    -- ** Invoice
    Invoice (..),
    newInvoice,

    -- ** Invoice_InvoiceType
    Invoice_InvoiceType (..),

    -- ** KeyValueTargetingExpression
    KeyValueTargetingExpression (..),
    newKeyValueTargetingExpression,

    -- ** LandingPage
    LandingPage (..),
    newLandingPage,

    -- ** Language
    Language (..),
    newLanguage,

    -- ** LanguageTargeting
    LanguageTargeting (..),
    newLanguageTargeting,

    -- ** LanguagesListResponse
    LanguagesListResponse (..),
    newLanguagesListResponse,

    -- ** LastModifiedInfo
    LastModifiedInfo (..),
    newLastModifiedInfo,

    -- ** ListPopulationClause
    ListPopulationClause (..),
    newListPopulationClause,

    -- ** ListPopulationRule
    ListPopulationRule (..),
    newListPopulationRule,

    -- ** ListPopulationTerm
    ListPopulationTerm (..),
    newListPopulationTerm,

    -- ** ListPopulationTerm_Operator
    ListPopulationTerm_Operator (..),

    -- ** ListPopulationTerm_Type
    ListPopulationTerm_Type (..),

    -- ** ListTargetingExpression
    ListTargetingExpression (..),
    newListTargetingExpression,

    -- ** LookbackConfiguration
    LookbackConfiguration (..),
    newLookbackConfiguration,

    -- ** MeasurementPartnerAdvertiserLink
    MeasurementPartnerAdvertiserLink (..),
    newMeasurementPartnerAdvertiserLink,

    -- ** MeasurementPartnerAdvertiserLink_LinkStatus
    MeasurementPartnerAdvertiserLink_LinkStatus (..),

    -- ** MeasurementPartnerAdvertiserLink_MeasurementPartner
    MeasurementPartnerAdvertiserLink_MeasurementPartner (..),

    -- ** MeasurementPartnerCampaignLink
    MeasurementPartnerCampaignLink (..),
    newMeasurementPartnerCampaignLink,

    -- ** MeasurementPartnerCampaignLink_LinkStatus
    MeasurementPartnerCampaignLink_LinkStatus (..),

    -- ** MeasurementPartnerCampaignLink_MeasurementPartner
    MeasurementPartnerCampaignLink_MeasurementPartner (..),

    -- ** MeasurementPartnerWrappingData
    MeasurementPartnerWrappingData (..),
    newMeasurementPartnerWrappingData,

    -- ** MeasurementPartnerWrappingData_LinkStatus
    MeasurementPartnerWrappingData_LinkStatus (..),

    -- ** MeasurementPartnerWrappingData_MeasurementPartner
    MeasurementPartnerWrappingData_MeasurementPartner (..),

    -- ** MeasurementPartnerWrappingData_TagWrappingMode
    MeasurementPartnerWrappingData_TagWrappingMode (..),

    -- ** Metric
    Metric (..),
    newMetric,

    -- ** Metro
    Metro (..),
    newMetro,

    -- ** MetrosListResponse
    MetrosListResponse (..),
    newMetrosListResponse,

    -- ** MobileApp
    MobileApp (..),
    newMobileApp,

    -- ** MobileApp_Directory
    MobileApp_Directory (..),

    -- ** MobileAppsListResponse
    MobileAppsListResponse (..),
    newMobileAppsListResponse,

    -- ** MobileCarrier
    MobileCarrier (..),
    newMobileCarrier,

    -- ** MobileCarriersListResponse
    MobileCarriersListResponse (..),
    newMobileCarriersListResponse,

    -- ** ObaIcon
    ObaIcon (..),
    newObaIcon,

    -- ** ObjectFilter
    ObjectFilter (..),
    newObjectFilter,

    -- ** ObjectFilter_Status
    ObjectFilter_Status (..),

    -- ** OffsetPosition
    OffsetPosition (..),
    newOffsetPosition,

    -- ** OmnitureSettings
    OmnitureSettings (..),
    newOmnitureSettings,

    -- ** OperatingSystem
    OperatingSystem (..),
    newOperatingSystem,

    -- ** OperatingSystemVersion
    OperatingSystemVersion (..),
    newOperatingSystemVersion,

    -- ** OperatingSystemVersionsListResponse
    OperatingSystemVersionsListResponse (..),
    newOperatingSystemVersionsListResponse,

    -- ** OperatingSystemsListResponse
    OperatingSystemsListResponse (..),
    newOperatingSystemsListResponse,

    -- ** OptimizationActivity
    OptimizationActivity (..),
    newOptimizationActivity,

    -- ** Order
    Order (..),
    newOrder,

    -- ** OrderContact
    OrderContact (..),
    newOrderContact,

    -- ** OrderContact_ContactType
    OrderContact_ContactType (..),

    -- ** OrderDocument
    OrderDocument (..),
    newOrderDocument,

    -- ** OrderDocument_Type
    OrderDocument_Type (..),

    -- ** OrderDocumentsListResponse
    OrderDocumentsListResponse (..),
    newOrderDocumentsListResponse,

    -- ** OrdersListResponse
    OrdersListResponse (..),
    newOrdersListResponse,

    -- ** PathFilter
    PathFilter (..),
    newPathFilter,

    -- ** PathFilter_PathMatchPosition
    PathFilter_PathMatchPosition (..),

    -- ** PathReportCompatibleFields
    PathReportCompatibleFields (..),
    newPathReportCompatibleFields,

    -- ** PathReportDimensionValue
    PathReportDimensionValue (..),
    newPathReportDimensionValue,

    -- ** PathReportDimensionValue_MatchType
    PathReportDimensionValue_MatchType (..),

    -- ** PathToConversionReportCompatibleFields
    PathToConversionReportCompatibleFields (..),
    newPathToConversionReportCompatibleFields,

    -- ** Placement
    Placement (..),
    newPlacement,

    -- ** Placement_ActiveStatus
    Placement_ActiveStatus (..),

    -- ** Placement_Compatibility
    Placement_Compatibility (..),

    -- ** Placement_PaymentSource
    Placement_PaymentSource (..),

    -- ** Placement_Status
    Placement_Status (..),

    -- ** Placement_TagFormatsItem
    Placement_TagFormatsItem (..),

    -- ** Placement_VpaidAdapterChoice
    Placement_VpaidAdapterChoice (..),

    -- ** PlacementAssignment
    PlacementAssignment (..),
    newPlacementAssignment,

    -- ** PlacementGroup
    PlacementGroup (..),
    newPlacementGroup,

    -- ** PlacementGroup_ActiveStatus
    PlacementGroup_ActiveStatus (..),

    -- ** PlacementGroup_PlacementGroupType
    PlacementGroup_PlacementGroupType (..),

    -- ** PlacementGroupsListResponse
    PlacementGroupsListResponse (..),
    newPlacementGroupsListResponse,

    -- ** PlacementStrategiesListResponse
    PlacementStrategiesListResponse (..),
    newPlacementStrategiesListResponse,

    -- ** PlacementStrategy
    PlacementStrategy (..),
    newPlacementStrategy,

    -- ** PlacementTag
    PlacementTag (..),
    newPlacementTag,

    -- ** PlacementsGenerateTagsResponse
    PlacementsGenerateTagsResponse (..),
    newPlacementsGenerateTagsResponse,

    -- ** PlacementsListResponse
    PlacementsListResponse (..),
    newPlacementsListResponse,

    -- ** PlatformType
    PlatformType (..),
    newPlatformType,

    -- ** PlatformTypesListResponse
    PlatformTypesListResponse (..),
    newPlatformTypesListResponse,

    -- ** PopupWindowProperties
    PopupWindowProperties (..),
    newPopupWindowProperties,

    -- ** PopupWindowProperties_PositionType
    PopupWindowProperties_PositionType (..),

    -- ** PostalCode
    PostalCode (..),
    newPostalCode,

    -- ** PostalCodesListResponse
    PostalCodesListResponse (..),
    newPostalCodesListResponse,

    -- ** Pricing
    Pricing (..),
    newPricing,

    -- ** Pricing_CapCostType
    Pricing_CapCostType (..),

    -- ** Pricing_GroupType
    Pricing_GroupType (..),

    -- ** Pricing_PricingType
    Pricing_PricingType (..),

    -- ** PricingSchedule
    PricingSchedule (..),
    newPricingSchedule,

    -- ** PricingSchedule_CapCostOption
    PricingSchedule_CapCostOption (..),

    -- ** PricingSchedule_PricingType
    PricingSchedule_PricingType (..),

    -- ** PricingSchedulePricingPeriod
    PricingSchedulePricingPeriod (..),
    newPricingSchedulePricingPeriod,

    -- ** Project
    Project (..),
    newProject,

    -- ** Project_AudienceAgeGroup
    Project_AudienceAgeGroup (..),

    -- ** Project_AudienceGender
    Project_AudienceGender (..),

    -- ** ProjectsListResponse
    ProjectsListResponse (..),
    newProjectsListResponse,

    -- ** ReachReportCompatibleFields
    ReachReportCompatibleFields (..),
    newReachReportCompatibleFields,

    -- ** Recipient
    Recipient (..),
    newRecipient,

    -- ** Recipient_DeliveryType
    Recipient_DeliveryType (..),

    -- ** Region
    Region (..),
    newRegion,

    -- ** RegionsListResponse
    RegionsListResponse (..),
    newRegionsListResponse,

    -- ** RemarketingList
    RemarketingList (..),
    newRemarketingList,

    -- ** RemarketingList_ListSource
    RemarketingList_ListSource (..),

    -- ** RemarketingListShare
    RemarketingListShare (..),
    newRemarketingListShare,

    -- ** RemarketingListsListResponse
    RemarketingListsListResponse (..),
    newRemarketingListsListResponse,

    -- ** Report
    Report (..),
    newReport,

    -- ** Report_Criteria
    Report_Criteria (..),
    newReport_Criteria,

    -- ** Report_CrossDimensionReachCriteria
    Report_CrossDimensionReachCriteria (..),
    newReport_CrossDimensionReachCriteria,

    -- ** Report_CrossDimensionReachCriteria_Dimension
    Report_CrossDimensionReachCriteria_Dimension (..),

    -- ** Report_Delivery
    Report_Delivery (..),
    newReport_Delivery,

    -- ** Report_Delivery_EmailOwnerDeliveryType
    Report_Delivery_EmailOwnerDeliveryType (..),

    -- ** Report_FloodlightCriteria
    Report_FloodlightCriteria (..),
    newReport_FloodlightCriteria,

    -- ** Report_FloodlightCriteria_ReportProperties
    Report_FloodlightCriteria_ReportProperties (..),
    newReport_FloodlightCriteria_ReportProperties,

    -- ** Report_Format
    Report_Format (..),

    -- ** Report_PathAttributionCriteria
    Report_PathAttributionCriteria (..),
    newReport_PathAttributionCriteria,

    -- ** Report_PathCriteria
    Report_PathCriteria (..),
    newReport_PathCriteria,

    -- ** Report_PathToConversionCriteria
    Report_PathToConversionCriteria (..),
    newReport_PathToConversionCriteria,

    -- ** Report_PathToConversionCriteria_ReportProperties
    Report_PathToConversionCriteria_ReportProperties (..),
    newReport_PathToConversionCriteria_ReportProperties,

    -- ** Report_ReachCriteria
    Report_ReachCriteria (..),
    newReport_ReachCriteria,

    -- ** Report_Schedule
    Report_Schedule (..),
    newReport_Schedule,

    -- ** Report_Schedule_RepeatsOnWeekDaysItem
    Report_Schedule_RepeatsOnWeekDaysItem (..),

    -- ** Report_Schedule_RunsOnDayOfMonth
    Report_Schedule_RunsOnDayOfMonth (..),

    -- ** Report_Type
    Report_Type (..),

    -- ** ReportCompatibleFields
    ReportCompatibleFields (..),
    newReportCompatibleFields,

    -- ** ReportList
    ReportList (..),
    newReportList,

    -- ** ReportsConfiguration
    ReportsConfiguration (..),
    newReportsConfiguration,

    -- ** RichMediaExitOverride
    RichMediaExitOverride (..),
    newRichMediaExitOverride,

    -- ** Rule
    Rule (..),
    newRule,

    -- ** Site
    Site (..),
    newSite,

    -- ** SiteCompanionSetting
    SiteCompanionSetting (..),
    newSiteCompanionSetting,

    -- ** SiteContact
    SiteContact (..),
    newSiteContact,

    -- ** SiteContact_ContactType
    SiteContact_ContactType (..),

    -- ** SiteSettings
    SiteSettings (..),
    newSiteSettings,

    -- ** SiteSettings_VpaidAdapterChoiceTemplate
    SiteSettings_VpaidAdapterChoiceTemplate (..),

    -- ** SiteSkippableSetting
    SiteSkippableSetting (..),
    newSiteSkippableSetting,

    -- ** SiteTranscodeSetting
    SiteTranscodeSetting (..),
    newSiteTranscodeSetting,

    -- ** SiteVideoSettings
    SiteVideoSettings (..),
    newSiteVideoSettings,

    -- ** SiteVideoSettings_Orientation
    SiteVideoSettings_Orientation (..),

    -- ** SitesListResponse
    SitesListResponse (..),
    newSitesListResponse,

    -- ** Size
    Size (..),
    newSize,

    -- ** SizesListResponse
    SizesListResponse (..),
    newSizesListResponse,

    -- ** SkippableSetting
    SkippableSetting (..),
    newSkippableSetting,

    -- ** SortedDimension
    SortedDimension (..),
    newSortedDimension,

    -- ** SortedDimension_SortOrder
    SortedDimension_SortOrder (..),

    -- ** Subaccount
    Subaccount (..),
    newSubaccount,

    -- ** SubaccountsListResponse
    SubaccountsListResponse (..),
    newSubaccountsListResponse,

    -- ** TagData
    TagData (..),
    newTagData,

    -- ** TagData_Format
    TagData_Format (..),

    -- ** TagSetting
    TagSetting (..),
    newTagSetting,

    -- ** TagSetting_KeywordOption
    TagSetting_KeywordOption (..),

    -- ** TagSettings
    TagSettings (..),
    newTagSettings,

    -- ** TargetWindow
    TargetWindow (..),
    newTargetWindow,

    -- ** TargetWindow_TargetWindowOption
    TargetWindow_TargetWindowOption (..),

    -- ** TargetableRemarketingList
    TargetableRemarketingList (..),
    newTargetableRemarketingList,

    -- ** TargetableRemarketingList_ListSource
    TargetableRemarketingList_ListSource (..),

    -- ** TargetableRemarketingListsListResponse
    TargetableRemarketingListsListResponse (..),
    newTargetableRemarketingListsListResponse,

    -- ** TargetingTemplate
    TargetingTemplate (..),
    newTargetingTemplate,

    -- ** TargetingTemplatesListResponse
    TargetingTemplatesListResponse (..),
    newTargetingTemplatesListResponse,

    -- ** TechnologyTargeting
    TechnologyTargeting (..),
    newTechnologyTargeting,

    -- ** ThirdPartyAuthenticationToken
    ThirdPartyAuthenticationToken (..),
    newThirdPartyAuthenticationToken,

    -- ** ThirdPartyTrackingUrl
    ThirdPartyTrackingUrl (..),
    newThirdPartyTrackingUrl,

    -- ** ThirdPartyTrackingUrl_ThirdPartyUrlType
    ThirdPartyTrackingUrl_ThirdPartyUrlType (..),

    -- ** TranscodeSetting
    TranscodeSetting (..),
    newTranscodeSetting,

    -- ** UniversalAdId
    UniversalAdId (..),
    newUniversalAdId,

    -- ** UniversalAdId_Registry
    UniversalAdId_Registry (..),

    -- ** UserDefinedVariableConfiguration
    UserDefinedVariableConfiguration (..),
    newUserDefinedVariableConfiguration,

    -- ** UserDefinedVariableConfiguration_DataType
    UserDefinedVariableConfiguration_DataType (..),

    -- ** UserDefinedVariableConfiguration_VariableType
    UserDefinedVariableConfiguration_VariableType (..),

    -- ** UserProfile
    UserProfile (..),
    newUserProfile,

    -- ** UserProfileList
    UserProfileList (..),
    newUserProfileList,

    -- ** UserRole
    UserRole (..),
    newUserRole,

    -- ** UserRolePermission
    UserRolePermission (..),
    newUserRolePermission,

    -- ** UserRolePermission_Availability
    UserRolePermission_Availability (..),

    -- ** UserRolePermissionGroup
    UserRolePermissionGroup (..),
    newUserRolePermissionGroup,

    -- ** UserRolePermissionGroupsListResponse
    UserRolePermissionGroupsListResponse (..),
    newUserRolePermissionGroupsListResponse,

    -- ** UserRolePermissionsListResponse
    UserRolePermissionsListResponse (..),
    newUserRolePermissionsListResponse,

    -- ** UserRolesListResponse
    UserRolesListResponse (..),
    newUserRolesListResponse,

    -- ** UvarFilter
    UvarFilter (..),
    newUvarFilter,

    -- ** UvarFilter_Match
    UvarFilter_Match (..),

    -- ** VideoFormat
    VideoFormat (..),
    newVideoFormat,

    -- ** VideoFormat_FileType
    VideoFormat_FileType (..),

    -- ** VideoFormatsListResponse
    VideoFormatsListResponse (..),
    newVideoFormatsListResponse,

    -- ** VideoOffset
    VideoOffset (..),
    newVideoOffset,

    -- ** VideoSettings
    VideoSettings (..),
    newVideoSettings,

    -- ** VideoSettings_Orientation
    VideoSettings_Orientation (..),

    -- ** AccountUserProfilesListSortField
    AccountUserProfilesListSortField (..),

    -- ** AccountUserProfilesListSortOrder
    AccountUserProfilesListSortOrder (..),

    -- ** AccountsListSortField
    AccountsListSortField (..),

    -- ** AccountsListSortOrder
    AccountsListSortOrder (..),

    -- ** AdsListCompatibility
    AdsListCompatibility (..),

    -- ** AdsListSortField
    AdsListSortField (..),

    -- ** AdsListSortOrder
    AdsListSortOrder (..),

    -- ** AdsListType
    AdsListType (..),

    -- ** AdvertiserGroupsListSortField
    AdvertiserGroupsListSortField (..),

    -- ** AdvertiserGroupsListSortOrder
    AdvertiserGroupsListSortOrder (..),

    -- ** AdvertiserLandingPagesListSortField
    AdvertiserLandingPagesListSortField (..),

    -- ** AdvertiserLandingPagesListSortOrder
    AdvertiserLandingPagesListSortOrder (..),

    -- ** AdvertisersListSortField
    AdvertisersListSortField (..),

    -- ** AdvertisersListSortOrder
    AdvertisersListSortOrder (..),

    -- ** AdvertisersListStatus
    AdvertisersListStatus (..),

    -- ** BillingProfilesListSortField
    BillingProfilesListSortField (..),

    -- ** BillingProfilesListSortOrder
    BillingProfilesListSortOrder (..),

    -- ** BillingProfilesListStatus
    BillingProfilesListStatus (..),

    -- ** CampaignCreativeAssociationsListSortOrder
    CampaignCreativeAssociationsListSortOrder (..),

    -- ** CampaignsListSortField
    CampaignsListSortField (..),

    -- ** CampaignsListSortOrder
    CampaignsListSortOrder (..),

    -- ** ChangeLogsListAction
    ChangeLogsListAction (..),

    -- ** ChangeLogsListObjectType
    ChangeLogsListObjectType (..),

    -- ** ContentCategoriesListSortField
    ContentCategoriesListSortField (..),

    -- ** ContentCategoriesListSortOrder
    ContentCategoriesListSortOrder (..),

    -- ** CreativeFieldValuesListSortField
    CreativeFieldValuesListSortField (..),

    -- ** CreativeFieldValuesListSortOrder
    CreativeFieldValuesListSortOrder (..),

    -- ** CreativeFieldsListSortField
    CreativeFieldsListSortField (..),

    -- ** CreativeFieldsListSortOrder
    CreativeFieldsListSortOrder (..),

    -- ** CreativeGroupsListSortField
    CreativeGroupsListSortField (..),

    -- ** CreativeGroupsListSortOrder
    CreativeGroupsListSortOrder (..),

    -- ** CreativesListSortField
    CreativesListSortField (..),

    -- ** CreativesListSortOrder
    CreativesListSortOrder (..),

    -- ** CreativesListTypes
    CreativesListTypes (..),

    -- ** DirectorySitesListSortField
    DirectorySitesListSortField (..),

    -- ** DirectorySitesListSortOrder
    DirectorySitesListSortOrder (..),

    -- ** DynamicTargetingKeysDeleteObjectType
    DynamicTargetingKeysDeleteObjectType (..),

    -- ** DynamicTargetingKeysListObjectType
    DynamicTargetingKeysListObjectType (..),

    -- ** EventTagsListEventTagTypes
    EventTagsListEventTagTypes (..),

    -- ** EventTagsListSortField
    EventTagsListSortField (..),

    -- ** EventTagsListSortOrder
    EventTagsListSortOrder (..),

    -- ** FilesListScope
    FilesListScope (..),

    -- ** FilesListSortField
    FilesListSortField (..),

    -- ** FilesListSortOrder
    FilesListSortOrder (..),

    -- ** FloodlightActivitiesListFloodlightActivityGroupType
    FloodlightActivitiesListFloodlightActivityGroupType (..),

    -- ** FloodlightActivitiesListSortField
    FloodlightActivitiesListSortField (..),

    -- ** FloodlightActivitiesListSortOrder
    FloodlightActivitiesListSortOrder (..),

    -- ** FloodlightActivityGroupsListSortField
    FloodlightActivityGroupsListSortField (..),

    -- ** FloodlightActivityGroupsListSortOrder
    FloodlightActivityGroupsListSortOrder (..),

    -- ** FloodlightActivityGroupsListType
    FloodlightActivityGroupsListType (..),

    -- ** InventoryItemsListSortField
    InventoryItemsListSortField (..),

    -- ** InventoryItemsListSortOrder
    InventoryItemsListSortOrder (..),

    -- ** InventoryItemsListType
    InventoryItemsListType (..),

    -- ** MobileAppsListDirectories
    MobileAppsListDirectories (..),

    -- ** OrderDocumentsListSortField
    OrderDocumentsListSortField (..),

    -- ** OrderDocumentsListSortOrder
    OrderDocumentsListSortOrder (..),

    -- ** OrdersListSortField
    OrdersListSortField (..),

    -- ** OrdersListSortOrder
    OrdersListSortOrder (..),

    -- ** PlacementGroupsListActiveStatus
    PlacementGroupsListActiveStatus (..),

    -- ** PlacementGroupsListPlacementGroupType
    PlacementGroupsListPlacementGroupType (..),

    -- ** PlacementGroupsListPricingTypes
    PlacementGroupsListPricingTypes (..),

    -- ** PlacementGroupsListSortField
    PlacementGroupsListSortField (..),

    -- ** PlacementGroupsListSortOrder
    PlacementGroupsListSortOrder (..),

    -- ** PlacementStrategiesListSortField
    PlacementStrategiesListSortField (..),

    -- ** PlacementStrategiesListSortOrder
    PlacementStrategiesListSortOrder (..),

    -- ** PlacementsGeneratetagsTagFormats
    PlacementsGeneratetagsTagFormats (..),

    -- ** PlacementsListActiveStatus
    PlacementsListActiveStatus (..),

    -- ** PlacementsListCompatibilities
    PlacementsListCompatibilities (..),

    -- ** PlacementsListPaymentSource
    PlacementsListPaymentSource (..),

    -- ** PlacementsListPricingTypes
    PlacementsListPricingTypes (..),

    -- ** PlacementsListSortField
    PlacementsListSortField (..),

    -- ** PlacementsListSortOrder
    PlacementsListSortOrder (..),

    -- ** ProjectsListSortField
    ProjectsListSortField (..),

    -- ** ProjectsListSortOrder
    ProjectsListSortOrder (..),

    -- ** RemarketingListsListSortField
    RemarketingListsListSortField (..),

    -- ** RemarketingListsListSortOrder
    RemarketingListsListSortOrder (..),

    -- ** ReportsFilesListSortField
    ReportsFilesListSortField (..),

    -- ** ReportsFilesListSortOrder
    ReportsFilesListSortOrder (..),

    -- ** ReportsListScope
    ReportsListScope (..),

    -- ** ReportsListSortField
    ReportsListSortField (..),

    -- ** ReportsListSortOrder
    ReportsListSortOrder (..),

    -- ** SitesListSortField
    SitesListSortField (..),

    -- ** SitesListSortOrder
    SitesListSortOrder (..),

    -- ** SubaccountsListSortField
    SubaccountsListSortField (..),

    -- ** SubaccountsListSortOrder
    SubaccountsListSortOrder (..),

    -- ** TargetableRemarketingListsListSortField
    TargetableRemarketingListsListSortField (..),

    -- ** TargetableRemarketingListsListSortOrder
    TargetableRemarketingListsListSortOrder (..),

    -- ** TargetingTemplatesListSortField
    TargetingTemplatesListSortField (..),

    -- ** TargetingTemplatesListSortOrder
    TargetingTemplatesListSortOrder (..),

    -- ** UserRolesListSortField
    UserRolesListSortField (..),

    -- ** UserRolesListSortOrder
    UserRolesListSortOrder (..),
  )
where

import Gogol.DFAReporting.Internal.Product
import Gogol.DFAReporting.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v4@ of the Campaign Manager 360 API. This contains the host and root path used as a starting point for constructing service requests.
dFAReportingService :: Core.ServiceConfig
dFAReportingService =
  Core.defaultService
    (Core.ServiceId "dfareporting:v4")
    "dfareporting.googleapis.com"

-- | Manage DoubleClick Digital Marketing conversions
type Ddmconversions'FullControl = "https://www.googleapis.com/auth/ddmconversions"

-- | View and manage DoubleClick for Advertisers reports
type Dfareporting'FullControl = "https://www.googleapis.com/auth/dfareporting"

-- | View and manage your DoubleClick Campaign Manager\'s (DCM) display ad campaigns
type Dfatrafficking'FullControl = "https://www.googleapis.com/auth/dfatrafficking"
